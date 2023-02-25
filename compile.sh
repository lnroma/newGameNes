#!/bin/bash
ca65 newGame.asm -g -o newGame.o -l newgame.lbl && ld65 newGame.o -C nesfile.ini -o newGame.nes

