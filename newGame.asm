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

.segment "HEADER"
	.byt "NES",$1A
	.byt 1 				; 1 x 16kB PRG block.
	.byt 1 				; 1 x 8kB CHR block.
	.byt 1              ; 0 horizontal, 1 vertical mirror
	.byt 1              ; mapper

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
     JSR incScrollCounter
;     JSR clearMemory
     JSR readJoyPad
     JSR readJoyState
     JSR playerHundler
     JSR heroStateMovement
     ;JSR screenFactory
     JSR screenFactoryTwo
     JSR swapNametable
     JSR drawNewAttribute
     JSR drawNewCollumn
     JSR collisionOnMap
     JSR scrolling
     JSR changeSpriteBuffer
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
    JSR setHeroVar
;    JSR loadPalete
    JSR setStageVar
    ; load first stage display
    JSR loadStageTwoBackground
    JSR loadPaleteStageTwo

    JSR loadBackground
    JSR loadAttributePages
    JSR fixScroll
    JSR enableNMI
    JSR enableRender

mainLoop:
  JMP mainLoop

  RTI
.endproc



; =====	CHR-ROM Pattern Tables =================================================

; ----- Pattern Table 0 --------------------------------------------------------

.segment "CHR"

	.incbin "test.chr"

