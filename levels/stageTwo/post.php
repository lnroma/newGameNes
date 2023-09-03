<?php
$hex = $_POST['hex'];
$result = '';
for ($x = 0; $x < 32; $x++) {
    for ($y = 0; $y < 32; $y++) {
        $result .= $hex[$x][$y];
    }
}

file_put_contents($_POST['file'], hex2bin($result));
header('location: /index.php?f=' . $_POST['file']);