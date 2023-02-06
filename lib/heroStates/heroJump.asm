.segment "ZEROPAGE"
    isJump: .res 1;
    jumpHeight: .res 1;

.segment "CODE"

.proc firstJumpProcedure
    RTS
.endproc

.proc setIsJump
    LDA #01
    STA isJump
    RTS
.endproc

.proc unsetIsJump
    LDA #00
    STA isJump
    RTS
.endproc

.proc caclulateJump
    LDA isJump
    CMP #01
    BNE return
    BEQ continue

    continue:
    LDA jumpHeight
    CMP #$20
    BEQ return
    BNE decrementY

    decrementY:
        DEC heroYCoordinate
        DEC heroYCoordinate
        DEC heroYCoordinate
        DEC heroYCoordinate
        INC jumpHeight
        RTS

    return:
        RTS
.endproc

.proc drawJumpRight
    lda heroYCoordinate
      sta $0200
      lda #$04
      sta $0201
      lda #%00010110
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
      lda #$18
      sta $0209
      lda #%00010111
      sta $020A
      lda heroXCoordinate
      sta $020B

      lda heroYCoordinate
      adc #16
      sta $020C
      lda #$28
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
      lda #$19
      sta $0215
      lda #%00010111
      sta $0216
      lda heroXCoordinate
      adc #8
      sta $0217

      lda heroYCoordinate
      adc #16
      sta $0218
      lda #$29
      sta $0219
      lda #%00010111
      sta $021A
      lda heroXCoordinate
      adc #8
      sta $021B

      RTS
.endproc

.proc drawJumpLeft
    lda heroYCoordinate
      sta $0200
      lda #$04
      sta $0201
      lda #%01010110
      sta $0202
      lda heroXCoordinate
      sta $0203

      lda heroYCoordinate
      sta $0204
      lda #00
      sta $0205
      lda #%01010111
      sta $0206
      lda heroXCoordinate
      adc #7
      sta $0207

      lda heroYCoordinate
      adc #8
      sta $0208
      lda #$18
      sta $0209
      lda #%01010111
      sta $020A
      lda heroXCoordinate
      adc #8
      sta $020B

      lda heroYCoordinate
      adc #16
      sta $020C
      lda #$28
      sta $020D
      lda #%01010111
      sta $020E
      lda heroXCoordinate
      adc #8
      sta $020F

      lda heroYCoordinate
      sta $0210
      lda #$01
      sta $0211
      lda #%01010111
      sta $0212
      lda heroXCoordinate
      sta $0213

      lda heroYCoordinate
      adc #8
      sta $0214
      lda #$19
      sta $0215
      lda #%01010111
      sta $0216
      lda heroXCoordinate
      sta $0217

      lda heroYCoordinate
      adc #16
      sta $0218
      lda #$29
      sta $0219
      lda #%01010111
      sta $021A
      lda heroXCoordinate
      sta $021B

      RTS
.endproc