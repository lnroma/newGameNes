<?php

$input = file_get_contents('input.txt');
$input = explode(PHP_EOL, $input);

$result = [];
for($i=0; $i<count($input); $i++) {
    $string = explode(',', $input[$i]);
    $string = array_map('trim', $string);
    for ($y=0; $y<count($string); $y++) {
        $result[$y][$i] = $string[$y];
    }
}

$res2 = [];
foreach ($result as $_res) {
    $res2[] = '.byt ' . implode(', ', $_res);
}

file_put_contents('output.txt', implode(PHP_EOL, $res2));
