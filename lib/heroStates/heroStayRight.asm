.segment "CODE"

.proc heroStayFirstProc
  RTS
.endproc

.proc drawStayRight
  LDA heroYCoordinate
  ADC #0
  STA $0200
  LDA #$34
  STA $0201
  LDA #%00010110
  STA $0202
  LDA heroXCoordinate
  ADC #4
  STA $0203

  LDA heroYCoordinate
  STA $0204
  LDA #00
  STA $0205
  LDA #%00010111
  STA $0206
  LDA heroXCoordinate
  STA $0207

  LDA heroYCoordinate
  ADC #8
  STA $0208
  LDA #$10
  STA $0209
  LDA #%00010111
  STA $020A
  LDA heroXCoordinate
  STA $020B

  LDA heroYCoordinate
  ADC #16
  STA $020C
  LDA #$20
  STA $020D
  LDA #%00010111
  STA $020E
  LDA heroXCoordinate
  STA $020F

  LDA heroYCoordinate
  STA $0210
  LDA #$00
  STA $0211
  LDA #%01010111
  STA $0212
  LDA heroXCoordinate
  ADC #8
  STA $0213

  LDA heroYCoordinate
  ADC #8
  STA $0214
  LDA #$10
  STA $0215
  LDA #%01010111
  STA $0216
  LDA heroXCoordinate
  ADC #8
  STA $0217

  LDA heroYCoordinate
  ADC #16
  STA $0218
  LDA #$20
  STA $0219
  LDA #%01010111
  STA $021A
  LDA heroXCoordinate
  ADC #8
  STA $021B

  RTS
.endproc

.proc clearStayRight
    LDA #$00
    LDX #$00
clearLoop:
    STA $0200, x
    INX
    CMP #$23
    BNE clearLoop

    RTS
.endproc