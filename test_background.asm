; таймер
.macro nmi_delay frames
        lda #frames
        sta nmi_counter         ; Store the desired frame count.
:       lda nmi_counter         ; In a loop, keep checking the frame count.
        bne :-                          ; Loop until it's decremented to 0.
.endmacro

.include "./lib/player.asm"
.include "./lib/heroWalkRight.asm"
.include "./lib/heroStayRight.asm"
.include "./lib/collisionOnMap.asm"
.include "./lib/joypad.asm"
.include "./lib/apu.asm"
.include "./lib/stageOne.asm"
.include "./lib/palete.asm"
.include "./lib/backgroundFunctions.asm"
.include "./lib/reset.asm"
.include "./lib/stageFunctions.asm"

.segment "INESHDR"
	.byt "NES",$1A
	.byt 1 				; 1 x 16kB PRG block.
	.byt 1 				; 1 x 8kB CHR block.
	.byt 1
	.byt 1

.segment "VECTORS"
	.addr nmi_isr, reset, irq_isr

.segment "ZEROPAGE"
    nmi_counter: .res 1 ; выделить 1 байт памяти в zero page для счетчика
    timer: .res 1
    mapLoByte: .res 1
    mapHiByte: .res 1
    heroDirection: .res 1 ; 00 left 01 right
    loopLoadBackOutside: .res 1;
    loopLoadBackInside: .res 1;
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

    collisionY: .res 1;
    collisionX: .res 1;

    isRightCollision: .res 1;

    tScroll: .res 1;
    currentStage: .res 1;

    lAB: .res 1;
    hAB: .res 1;

    zacumulator: .res 1;

.segment "BSS"

.segment "RODATA"

.segment "CODE"

.proc nmi_isr
        dec nmi_counter
        rti
.endproc

.proc irq_isr
        rti
.endproc

.proc reset

  JSR resetProcedure
  JSR init_apu
  JSR setHeroVar
  JSR loadPalete
  JSR setStageVar
  JSR enableNMI
  JSR loadBackground
  JSR loadAttributePages
  JSR enableRender
  JSR fixScroll

mainLoop:
   nmi_delay 2

   JSR screenFactory
   JSR swapNametable
   JSR drawNewAttribute
   JSR drawNewCollumn
   JSR collisionOnMap
   JSR readJoyPad

   JSR drawHeroRightWalk
   JSR drawStayRight


   JSR drawLifes
   JSR scrolling
   JMP mainLoop

handleJoyState:
    LDX joyState
    CPX #%10000000 ; right
    BEQ walkHeroRight
    CPX #%01000000 ; left
    BEQ walkHeroLeft
    CPX #%00100000 ;down
    BEQ walkHeroDown
    CPX #%00010000
    BEQ walkHeroUp
    CPX #%00001000
    BEQ startButton
    CPX #%00000100
    BEQ selectButton
    CPX #%00000010
    BEQ heroFire
    CPX #%00000001
    BEQ heroJump
    CPX #%10100000 ; down and right
    BEQ walkHeroDownAndRight
    CPX #%01100000 ; down and left
    BEQ walkHeroDownAndLeft
    CPX #%00000011
    BEQ walkHeroRightAndUp
    BNE drawHeroStay

heroStay:
    JMP drawHeroStay

walkHeroRight:
  lda isRightCollision
  beq walkHeroRightDone
  lda #01
  sta heroDirection
  lda heroXCoordinate
  cmp #128
  bcs incScrollPosition
  inc heroXCoordinate
  jsr drawHeroRightWalk
incScrollPosition:
  inc scrollPosition
  jsr drawHeroRightWalk

walkHeroRightDone:

walkHeroLeft:
  lda #00
  sta heroDirection
  dec heroXCoordinate
  jmp drawHeroLeft

walkHeroUp:
  dec heroYCoordinate
  jmp drawHeroUp

walkHeroDown:
  inc heroYCoordinate
  jmp drawHeroDown

walkHeroRightAndUp:
  inc heroXCoordinate
  dec heroYCoordinate
  jmp drawHeroWalkRightAndUp

walkHeroDownAndLeft:
  lda #00
  sta heroDirection
  dec heroXCoordinate
  inc heroYCoordinate
  jmp drawHeroDownLeft

walkHeroDownAndRight:
  lda #01
  sta heroDirection
  inc heroXCoordinate
  inc heroYCoordinate
  jmp drawHeroDownRight

heroFire:
  jmp drawHeroFire

heroJump:
  jmp drawHeroJump

selectButton:
  jmp selectButtonState

startButton:
  jmp startButtonState

drawHeroRight:
drawHeroLeft:
drawHeroUp:
drawHeroDown:
drawHeroFire:
drawHeroJump:
selectButtonState:
startButtonState:
drawHeroWalkRightAndUp:
drawHeroDownLeft:
drawHeroDownRight:
drawHeroStay:
  JSR drawStayRight


.endproc



; =====	CHR-ROM Pattern Tables =================================================

; ----- Pattern Table 0 --------------------------------------------------------

.segment "PATTERN0"

	.incbin "kinaman.chr"

.segment "PATTERN1"

