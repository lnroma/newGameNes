#!/bin/bash
ca65 test_background.asm -o test.o && ld65 test.o -C nesfile.ini -o test_background.nes

