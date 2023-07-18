<?php
/**
 * Created by PhpStorm.
 * User: roman
 * Date: 11.06.2023
 * Time: 22:02
 */

require_once 'Libraries/Addresses.php';

class Disassembler
{
    private $instructions = [];
    /** @var \Libraries\Addresses  */
    private $addresses;
    private $printAddresses = true;

    public function __construct()
    {
        $this->instructions = include 'opcodes.php';
        $this->addresses = new \Libraries\Addresses();
    }

    public function disassembly($code)
    {
        $stringCode = bin2hex($code);
        $arrayInstructions = str_split($stringCode, 2);
        $skipKeys = 0;
        $resultString = '.headers ';

        foreach ($arrayInstructions as $_key => $_value) {
            // 16 byte nes header
            if ($_key < 16) {
                $resultString .= ' ' . $arrayInstructions[$_key];
                continue;
            }

            if ($_key == 16) {
                $resultString .= PHP_EOL . '.code ' . PHP_EOL;
            }

//            if ($_key == 16384 + 16) {
//                break;
//            }

            $value = null;
            $capitalKey = strtoupper($_value);

            if ($skipKeys) {
                $skipKeys--;
                continue;
            }

            if ($this->printAddresses) {
                $resultString .= $this->addresses->getAddress() . ' ';
                $this->addresses->increment();
            }

            if (isset($this->instructions[$capitalKey])) {

                if (
                    $this->instructions[$capitalKey][1] == 3
                ) {
                    $value = $arrayInstructions[$_key+2] . $arrayInstructions[$_key+1];
                    $resultString .= '| ' . $capitalKey . ' ' . strtoupper($arrayInstructions[$_key + 1])
                        . ' ' . strtoupper($arrayInstructions[$_key + 2])
                        . ' | ' . str_replace('$argument', '$' . $value, $this->instructions[$capitalKey][0]) . PHP_EOL;
                    $skipKeys = 2;
                } elseif (
                    $this->instructions[$capitalKey][1] = 2
                ) {
                    $value = $arrayInstructions[$_key + 1];
                    $skipKeys = 1;
                    $resultString .= '| ' . $capitalKey . ' ' . strtoupper($value) . ' | ' . str_replace('$argument', '$' . $value, $this->instructions[$capitalKey][0]) . PHP_EOL;
                } else {
                    $resultString .= '| ' . $capitalKey . ' | ' . $this->instructions[$capitalKey][0] . PHP_EOL;
                }
            } else {
                $resultString .= '| ' . $capitalKey . ' | UNDEFINED ' . PHP_EOL;
            }
        }

        file_put_contents('result.asm', $resultString);
    }
}

$binary = file_get_contents('../disDD/dd.nes');
$disasm = new Disassembler();
$disasm->disassembly($binary);