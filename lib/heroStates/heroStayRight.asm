.segment "CODE"

.proc drawStayRight
  lda heroYCoordinate
  sta $0200
  lda #$04
  sta $0201
  lda #%00010111
  sta $0202
  lda heroXCoordinate
  adc #6
  sta $0203

  lda heroYCoordinate
  sta $0204
  lda #00
  sta $0205
  lda #%00010111
  sta $0206
  lda heroXCoordinate
  sta $0207

  lda heroYCoordinate
  adc #8
  sta $0208
  lda #$10
  sta $0209
  lda #%00010111
  sta $020A
  lda heroXCoordinate
  sta $020B

  lda heroYCoordinate
  adc #16
  sta $020C
  lda #$20
  sta $020D
  lda #%00010111
  sta $020E
  lda heroXCoordinate
  sta $020F

  lda heroYCoordinate
  sta $0210
  lda #$01
  sta $0211
  lda #%00010111
  sta $0212
  lda heroXCoordinate
  adc #8
  sta $0213

  lda heroYCoordinate
  adc #8
  sta $0214
  lda #$10
  sta $0215
  lda #%01010111
  sta $0216
  lda heroXCoordinate
  adc #8
  sta $0217

  lda heroYCoordinate
  adc #16
  sta $0218
  lda #$20
  sta $0219
  lda #%01010111
  sta $021A
  lda heroXCoordinate
  adc #8
  sta $021B

  RTS
.endproc

.proc clearStayRight
      lda #$00
      sta $0200
      sta $0201
      sta $0202
      sta $0203
      sta $0204
      sta $0205
      sta $0206
      sta $0207
      sta $0208
      sta $0209
      sta $020A
      sta $020B
      sta $020C
      sta $020D
      sta $020E
      sta $020F
      sta $0210
      sta $0211
      sta $0212
      sta $0213
      sta $0214
      sta $0215
      sta $0216
      sta $0217
      sta $0218
      sta $0219
      sta $021A
      sta $021B
.endproc