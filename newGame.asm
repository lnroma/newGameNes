.include "./lib/player.asm"
.include "./lib/heroStates/heroWalkRight.asm"
.include "./lib/heroStates/heroStayRight.asm"
.include "./lib/heroStates/heroStayLeft.asm"
.include "./lib/heroStates/heroWalkLeft.asm"
.include "./lib/heroStates/heroJump.asm"
.include "./lib/heroStates/heroWalkRightAndFire.asm"
.include "./lib/heroStates/heroWalkLeftAndFire.asm"
.include "./lib/collisionOnMap.asm"
.include "./lib/joypad.asm"
.include "./lib/apu.asm"
.include "./lib/stages/stageOne.asm"
.include "./lib/stages/stageTwo.asm"
.include "./lib/palete.asm"
.include "./lib/reset.asm"
.include "./lib/stageFunctions.asm"
.include "./lib/backgroundFunctions.asm"
.include "./lib/heroStates/debugSquired.asm"
.include "./lib/mapperFunctions.asm"
.include "./lib/stages/startDisplay.asm"

.segment "HEADER"
	.byt "NES",$1A
	.byt 8 				; 8 x 16kB PRG block. 128kb
	.byt 16 				; 16 x 8kB CHR block. 128kb
	.byt 17              ; 0 horizontal, 1 vertical mirror
	.byt 02              ; mapper

.segment "VECTORS"
	.addr nmi_isr, reset, irq_isr

.segment "ZEROPAGE"
    heroXCoordinate: .res 1 ; координата x
    heroYCoordinate: .res 1 ; координата y

    buttons: .res 1 ; кнопочки

    lifes: .res 1 ; жизни

    mapLoByte: .res 1
    mapHiByte: .res 1
    scroolX: .res 1
    loopLoadBackOutside: .res 1;
    loopLoadBackInside: .res 1;
    ppuHB: .res 1;
    ppuLB: .res 1;
    flagStopLoad: .res 1;
    tmp: .res 1;

    colLow: .res 1;
    colHig: .res 1;
    sourceLow: .res 1;
    sourceHig: .res 1;
    columnNumber: .res 1;

    scrollPosition: .res 1;
    nameTable: .res 1;
    screenCount: .res 1;

    lowMapByte: .res 1;
    highMapByte: .res 1;

    joyState: .res 1;
    collisionY: .res 1;
    collisionX: .res 1;

    isRightCollision: .res 1;

    tScroll: .res 1;
    currentStage: .res 1;

    lAB: .res 1;
    hAB: .res 1;

    zacumulator: .res 1;
    dinamicalCollisionMap: .res 1;
    offsetColumn: .res 1;

    mapTestLo: .res 1;
    mapTestHig: .res 1;
    mapByteOffset: .res 1;

    scroolCounter: .res 1;

    stageStates: .res 1;

    heroDirection: .res 1 ; 01 left 02 right
    isHeroWalk: .res 1
    isHeroFire: .res 1
    isHeroStay: .res 1
    lastPositionY: .res 1

    isLoadedFlags: .res 1

.segment "BSS"

.segment "RODATA"

.segment "CODE"


.proc changeSpriteBuffer
     LDA #$00
     STA $2003     ; set the low byte (00) of the RAM address
     LDA #$02
     STA $4014

     rts
.endproc

.proc incScrollCounter
    INC scrollCounter
    RTS
.endproc

.proc nmi_isr
    JSR readJoyPad
    LDA stageStates
    BEQ loadStartDisplay
    CMP #01
    BEQ loadStageTwo
loadStartDisplay:
    JSR startDisplayState
    JMP return
loadStageTwo:
    JSR stageTwoState
return:
    RTI
.endproc

.proc irq_isr
    RTI
.endproc

.proc reset
    SEI
    LDX #0
    STX $2000   ; обнуляем память
    STX $2001   ; выключаем рендер
    STX $4010 ; отключаем DMC
    DEX     ; X = $FF
    TXS     ; Стэк равен = $FF
    : BIT $2002
    BPL :-
    ; reset mapper
    JSR resetMapperProcedure
    JSR setHeroVar
    JSR setStageVar
    ; load display start
    JSR loadDisplayStart
;    JSR resetStageTwo
;

    JSR enableNMI
    JSR enableRender

mainLoop:
  JMP mainLoop

  RTI
.endproc

.segment "CODE_1"
.segment "CODE_2"
.segment "CODE_3"
.segment "CODE_4"
.segment "CODE_5"
.segment "CODE_6"
.segment "CODE_7"


; =====	CHR-ROM Pattern Tables =================================================

; ----- Pattern Table 0 --------------------------------------------------------

.segment "CHR0"
	.incbin "test_1_1.chr"
.segment "CHR1"
    .incbin "test_1_2.chr"
.segment "CHR2"
	.incbin "test_2_1.chr"
.segment "CHR3"
    .incbin "test_2_2.chr"
.segment "CHR4"
    .incbin "test_3_1.chr" ; start display chr
.segment "CHR5"
    .incbin "test_3_2.chr" ; start display chr
.segment "CHR_1"