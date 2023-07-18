<?php
/**
 * Created by PhpStorm.
 * User: roman
 * Date: 12.06.2023
 * Time: 00:10
 */

$t = file_get_contents('result.asm');
$tArray = explode(PHP_EOL, $t);
var_dump(count($tArray));