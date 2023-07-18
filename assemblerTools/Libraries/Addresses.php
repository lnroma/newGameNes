<?php
/**
 * Created by PhpStorm.
 * User: roman
 * Date: 12.06.2023
 * Time: 12:31
 */

namespace Libraries;


class Addresses
{
    protected $addressCounter = '0000';

    public function increment()
    {
        $this->addressCounter = dechex(hexdec($this->addressCounter) + 1);
        $this->addressCounter = sprintf('%04s', $this->addressCounter);

        return $this->addressCounter;
    }

    public function getAddress() {
        return $this->addressCounter;
    }
}