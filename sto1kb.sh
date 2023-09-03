#!/bin/bash

split -b 1024 test_1_1_2k.chr
#rm -rf test_1_1.chr
#rm -rf test_1_2.chr
mv xaa test_1_1_1k.chr
mv xab test_1_2_1k.chr
