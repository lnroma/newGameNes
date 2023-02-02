.segment "CODE"

.proc drawStayRight
  LDX joyState
  CPX #%00000000
  BEQ return

  LDX heroDirection
  CPX #00
  BEQ return

  lda heroYCoordinate
  adc #1
  sta $2004
  lda #$04
  sta $2004
  lda #%00010110
  sta $2004
  lda heroXCoordinate
  adc #6
  sta $2004

  lda heroYCoordinate
  sta $2004
  lda #00
  sta $2004
  lda #%00010111
  sta $2004
  lda heroXCoordinate
  sta $2004

  lda heroYCoordinate
  adc #8
  sta $2004
  lda #$10
  sta $2004
  lda #%00010111
  sta $2004
  lda heroXCoordinate
  sta $2004

  lda heroYCoordinate
  adc #16
  sta $2004
  lda #$20
  sta $2004
  lda #%00010111
  sta $2004
  lda heroXCoordinate
  sta $2004

  lda heroYCoordinate
  sta $2004
  lda #$01
  sta $2004
  lda #%00010111
  sta $2004
  lda heroXCoordinate
  adc #8
  sta $2004

  lda heroYCoordinate
  adc #8
  sta $2004
  lda #$10
  sta $2004
  lda #%01010111
  sta $2004
  lda heroXCoordinate
  adc #8
  sta $2004

  lda heroYCoordinate
  adc #16
  sta $2004
  lda #$20
  sta $2004
  lda #%01010111
  sta $2004
  lda heroXCoordinate
  adc #8
  sta $2004

return:
  RTS
.endproc