#!/bin/bash

split -b 4096 t54.chr
rm -rf test_1_1.chr
rm -rf test_1_2.chr
mv xaa test_1_1.chr
mv xab test_1_2.chr
