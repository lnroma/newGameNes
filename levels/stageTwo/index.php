<?php

$fileName = $_GET['f'];
$file = file_get_contents($fileName);

$dataHex = bin2hex($file);

$hex = str_split($dataHex, 64);
$hexColumn = array_map(function ($value) {
    return str_split($value, 2);
}, $hex);

echo '<form method=POST action="/post.php">';
echo '<table>';
echo '<input type="hidden" value="'. $fileName .'" name="file">';
for ($x = 0; $x < 32; $x++) {
    echo '<tr>';
    for ($y = 0; $y < 32; $y++) {
        $hexCollor = strtoupper(dechex(hexdec($hexColumn[$x][$y]) + 40));
        $hexCollorOne = hexdec('FF') - hexdec($hexColumn[$x][$y]);
        echo '<td>';
        echo '<input type="text" style="width:50px; background:#'. dechex($hexCollorOne) . $hexCollor . strtoupper($hexColumn[$x][$y]) .'" value="' . $hexColumn[$x][$y] . '" name="hex['. $x .']['. $y .']"';
        echo '</td>';
    }
    echo '<tr/>';
}
echo '</table>';
echo '<input type="submit" name="ok"/>';
echo '</form>';
// var_dump($hex);die;