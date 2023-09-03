#!/bin/bash

split -b 2048 test_1_1.chr
#rm -rf test_1_1.chr
#rm -rf test_1_2.chr
mv xaa test_1_1_2k.chr
mv xab test_1_2_2k.chr
