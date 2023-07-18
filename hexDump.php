<?php

if (empty($argv[1])) {
    echo 'missing argument file for dump' . PHP_EOL;
    echo 'php hexDump.php [file_for_dump]' . PHP_EOL;
}

$data = file_get_contents($argv[1]);
$data = bin2hex($data);
$data = str_split($data, 64);
$i = 0;
foreach ($data as $_data) {
    $_data = str_split($_data, 2);
    if ($i === 0) {
        for ($a = 0; $a < count($_data); $a++) {
            echo $a . ' ';
        }
        echo PHP_EOL;
    }
    echo $i . ') ' . implode(' ', $_data) . PHP_EOL;
    $i++;
}
