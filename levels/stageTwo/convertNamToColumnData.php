<?php

const INPUT_FILE_NAME = 'i';
const OUTPUT_FILE_NAME = 'o';

$name = $argv;

if (count($argv) < 3) {
    echo 'usage php convertColumnToNamData.php -i=input.nam -o=output.nam' . PHP_EOL;
    echo '-i = input file name' . PHP_EOL;
    echo '-o = output file name' . PHP_EOL;
    exit(1);
}

$arguments = [];
foreach ($argv as $k => $v) {
    if ($k === 0) continue;
    $keyAndValue = explode('=', $v);
    array_map('trim', $keyAndValue);
    $arguments[trim($keyAndValue[0], '-')] = $keyAndValue[1];
}

$data = file_get_contents($arguments[INPUT_FILE_NAME]);
$dataHex = bin2hex($data);
$newData = '';

$splitData = str_split($dataHex, 64);

$tmp = [];
for ($i = 0; $i < count($splitData); $i++) {
    $string = str_split($splitData[$i], 2);
    for ($x = 0; $x < count($string); $x++) {
        $tmp[$x][$i] = $string[$x];
    }
}

foreach ($tmp as &$_tmp) {
    $_tmp = implode($_tmp);
}

$tmp = implode($tmp);
file_put_contents($arguments[OUTPUT_FILE_NAME], hex2bin($tmp));
