<?php
/**
 * Created by PhpStorm.
 * User: roman
 * Date: 11.06.2023
 * Time: 22:53
 */

class parseInstructionsCode
{
    public function runParse() {
        $pageContent = file_get_contents('test.html');
        $resultArray = explode('---', $pageContent);
        $resultArray = array_map(function ($val) {
            return explode(PHP_EOL, trim($val));
        }, $resultArray);

        $resultString = '';
        $mainTemplate = <<<PHPMAIN
<?php

return [
    {tmp}
];
PHPMAIN;

        $template = <<<PHP
    '{instructionCode}' => [
        '{instruction}',
        {size}
    ],
PHP;

        foreach ($resultArray as $instructionArray) {
            $tmp = str_replace('{instructionCode}', $instructionArray[1], $template);
            $tmp = str_replace('{instruction}', $instructionArray[0], $tmp);
            $tmp = str_replace('{size}', $instructionArray[2], $tmp);

            $resultString .= $tmp;
        }

        $result = str_replace('{tmp}', $resultString, $mainTemplate);
        file_put_contents('opcodes.php', $result);
    }
}

(new parseInstructionsCode())->runParse();