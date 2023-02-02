
.segment "RODATA"
  lifesBytes: 
	.byt $00, $08, $10, $17

.segment "CODE"


.proc setHeroVar
  lda #100
  sta heroXCoordinate
  lda #$00
  sta buttons
  sta offsetColumn
  lda #10
  sta heroYCoordinate
  lda #04
  sta lifes
  lda #00
  sta scroolX
  lda #01
  sta isGravity

  rts
.endproc

.proc fixScroll
   lda #00
   sta screenCount
   lda #$00
   sta nameTable
   lda #00
   sta scrollPosition

   RTS
.endproc

.proc scrolling
  LDA scrollPosition
  STA $2005
  LDA #$00
  STA $2005
  RTS
.endproc


.proc drawLifes
  ldx lifes
  lifeLoop:
    lda #10
    sta $2004
    lda #06
    sta $2004
    lda #%00010111
    sta $2004
    lda lifesBytes, x
    adc #10
    sta $2004
    dex
    bne lifeLoop

  RTS
.endproc

.proc readJoyState
   RTS
.endproc