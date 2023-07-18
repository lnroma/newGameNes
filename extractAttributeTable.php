<?php

$data = file_get_contents('s24.nam');
$dataHex = bin2hex($data);
$newData = '';
$dataHexAttribute =  substr($dataHex, -128);
$splitData = str_split($dataHexAttribute,16);
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
file_put_contents('attribute24.atr', hex2bin($tmp));
var_dump($tmp);die;
