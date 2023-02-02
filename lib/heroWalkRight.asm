
.segment "ZEROPAGE"

.segment "CODE"
.proc drawHeroRightWalk
  LDX joyState
  CPX #%10000000
  BEQ return

  lda heroYCoordinate
  sta $2004
  lda #05
  sta $2004
  lda #%00010110
  sta $2004
  lda heroXCoordinate
  sta $2004

  lda heroYCoordinate
  sta $2004
  lda #02
  sta $2004
  lda #%00010110
  sta $2004
  lda heroXCoordinate
  sbc #$05
  sta $2004
return:
  RTS
.endproc