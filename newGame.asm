; таймер
.macro nmi_delay frames
        lda #frames
        sta nmiCounter         ; Store the desired frame count.
:       lda nmiCounter         ; In a loop, keep checking the frame count.
        bne :-                          ; Loop until it's decremented to 0.
.endmacro

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
.include "./lib/stageOne.asm"
.include "./lib/palete.asm"
.include "./lib/reset.asm"
.include "./lib/stageFunctions.asm"
.include "./lib/backgroundFunctions.asm"

.segment "INESHDR"
	.byt "NES",$1A
	.byt 1 				; 1 x 16kB PRG block.
	.byt 1 				; 1 x 8kB CHR block.
	.byt 1
	.byt 1

.segment "VECTORS"
	.addr nmi_isr, reset, irq_isr

.segment "ZEROPAGE"
;   heroXCoordinate: .res 1
;   buttons: .res 1
;   offsetColumn: .res 1
;   heroYCoordinate: .res 1
;   lifes: .res 1
;   isGravity: .res 1
;   screenCount: .res 1
;   nameTable: .res 1
;   scrollPosition: .res 1
;   joyState: .res 1
;   heroDirection: .res 1
;   zacumulator: .res 1
;   mapHiByte: .res 1
;   mapLoByte: .res 1
;   hAB: .res 1
;   lAB: .res 1
;   highMapByte: .res 1
;   lowMapByte: .res 1
;   sourceLow: .res 1
;   sourceHigh: .res 1
;   colHig: .res 1
;   colLow: .res 1
;   mapByteOffset: .res 1
;   columnNumber: .res 1
;   nmiCounter: .res 1
;   currentStage: .res 1
;   sourceHig: .res 1



    nmiCounter: .res 1 ; выделить 1 байт памяти в zero page для счетчика
    timer: .res 1
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


.segment "BSS"

.segment "RODATA"

.segment "CODE"


.proc changeSpriteBuffer
          LDA #$00
                      STA $2003                     ; set the low byte (00) of the RAM address
                      LDA #$02
                      STA $4014

          rts
.endproc

.proc resetCounter
   lda #10
   sta nmiCounter

   rts
.endproc

;.proc clearRAM
;   RTS
;.endproc
.proc incScrollCounter
    inc scrollCounter
    ;        dec nmiCounter
            BNE resetCounterLabel
            BEQ continue
            resetCounterLabel:
                JSR resetCounter
            continue:
            RTS
.endproc
.proc nmi_isr
;        inc scrollPosition
        JSR incScrollCounter
        JSR clearMemory

;            lda #80
;              adc #1
;              sta $0200
;              lda #$04
;              sta $0201
;              lda #%00010110
;              sta $0202
;              lda #80
;              adc #6
;              sta $0203
;              INC scrollPosition
               ;JSR drawStayRight
;               JSR drawStayRight
               JSR readJoyPad
               JSR readJoyState
               JSR heroStateMovement
;            JSR drawHeroLeft
               ;JSR heroRightWalk
;               JSR heroRightWalk
;               JSR drawHeroRightWalk
;                  INC scrollPosition
                  JSR screenFactory
                  JSR swapNametable
                  JSR drawNewAttribute
                  JSR drawNewCollumn
        JSR collisionOnMap
;        JSR drawLifes
        JSR scrolling
        JSR changeSpriteBuffer

        rti
.endproc

.proc irq_isr
        rti
.endproc

.proc reset
  sei
  ldx #0
  stx $2000   ; обнуляем память
  stx $2001   ; выключаем рендер
  stx $4010 ; отключаем DMC
  dex         ; X = $FF
  txs         ; Стэк равен = $FF
: bit $2002
  bpl :-

  JSR setHeroVar
  JSR loadPalete
  JSR setStageVar
  JSR loadBackground
  JSR loadAttributePages
  JSR fixScroll
  JSR enableNMI
  JSR enableRender
mainLoop:
  JMP mainLoop
  rti
.endproc



; =====	CHR-ROM Pattern Tables =================================================

; ----- Pattern Table 0 --------------------------------------------------------

.segment "PATTERN0"

	.incbin "kinaman2.chr"

.segment "PATTERN1"

