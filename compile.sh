#!/bin/bash
ca65 newGame.asm -o newGame.o && ld65 newGame.o -C nesfile.ini -o newGame.nes

