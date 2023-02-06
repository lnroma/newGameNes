.segment "CODE"

.proc heroStayFirstProc
  RTS
.endproc

.proc drawStayRight
  LDA heroYCoordinate
  STA $0200
  LDA #$04
  STA $0201
  LDA #%00010110
  STA $0202
  LDA heroXCoordinate
  ADC #6
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
  LDA #$01
  STA $0211
  LDA #%00010111
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
    STA $0200
    STA $0201
    STA $0202
    STA $0203
    STA $0204
    STA $0205
    STA $0206
    STA $0207
    STA $0208
    STA $0209
    STA $020A
    STA $020B
    STA $020C
    STA $020D
    STA $020E
    STA $020F
    STA $0210
    STA $0211
    STA $0212
    STA $0213
    STA $0214
    STA $0215
    STA $0216
    STA $0217
    STA $0218
    STA $0219
    STA $021A
    STA $021B
.endproc