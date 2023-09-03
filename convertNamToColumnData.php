<?php

$data = file_get_contents('l223.nam');
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
file_put_contents('t4.nam', hex2bin($tmp));
