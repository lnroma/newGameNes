<?php


class Spliting
{
    public function __construct()
    {
        $data = file_get_contents('dd.nes');
        $data = bin2hex($data);

        // unheadering
        $headerLength = 16*2;
        $header = substr($data,0, $headerLength);
        file_put_contents('header.bin', hex2bin($header));
        $codeBanks = [];
        for ($i = 0; $i < 8; $i++) {
            $lengthCode = 16 * 1024 * 2;
            $offsetCode = $headerLength + $lengthCode * $i;
            $codeBanks[$i] = substr($data, $offsetCode, $lengthCode);
            file_put_contents('code_bank_' . $i . '.bin', hex2bin($codeBanks[$i]));
        }

        $offsetCode = $offsetCode + $lengthCode;

        $chrBanks = [];
        for ($chrBank = 0; $chrBank < 16; $chrBank++) {
            $lengthChr = 8 * 1024 * 2;
            $offsetChr = $offsetCode + $lengthChr * $chrBank;
            $chrBanks[$chrBank] = substr($data, $offsetChr, $lengthChr);
            file_put_contents('chr_bank_' . $chrBank . '.chr', hex2bin($chrBanks[$chrBank]));
        }

        for ($chrSplit = 1; $chrSplit < 16; $chrSplit = $chrSplit+2) {
            $newChr = $chrBanks[$chrSplit - 1] . $chrBanks[$chrSplit];
            file_put_contents('chr_bank_8_' . $chrSplit . '.chr', hex2bin($newChr));
        }
    }
}

new Spliting();