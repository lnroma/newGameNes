
.segment "ZEROPAGE"
  frameCountPlayerRightWalk: .res 1
  scrollCounter: .res 1
.segment "CODE"

.proc heroRightWalk
  LDA heroXCoordinate
  CMP #122
  BCC incrementScreen
  INC heroXCoordinate
  incrementScreen:
    JSR incrementScrollPosition
  return:
    RTS
.endproc

.proc incrementScrollPosition
    LDA scrollCounter
    AND #2
    BEQ scrollPositionIncrement
    BNE return
    scrollPositionIncrement:
        INC scrollPosition
        JMP return
    return:
        RTS
.endproc

.proc drawHeroRightWalk
    LDA scrollCounter
    AND #8
    CMP #1
    BEQ drawFrame1Label
    AND #8
    BEQ drawFrame2Label
    AND #10
    BEQ drawFrame3Label

  drawFrame1Label:
    JSR drawFrame1
    INC frameCountPlayerRightWalk
    RTS
  drawFrame2Label:
    JSR drawFrame2
    INC frameCountPlayerRightWalk
    RTS
  drawFrame3Label:
    JSR drawFrame3
    INC frameCountPlayerRightWalk
    RTS
.endproc

.proc drawFrame1
    lda heroYCoordinate
    sta $0200
    lda #$02
    sta $0201
    lda #%00010111
    sta $0202
    lda heroXCoordinate
    sta $0203

    lda heroYCoordinate
    adc #8
    sta $0204
    lda #$12
    sta $0205
    lda #%00010111
    sta $0206
    lda heroXCoordinate
    sta $0207

    lda heroYCoordinate
    adc #16
    sta $0208
    lda #$22
    sta $0209
    lda #%00010111
    sta $020A
    lda heroXCoordinate
    sta $020B

    lda heroYCoordinate
    sta $020C
    lda #$03
    sta $020D
    lda #%00010111
    sta $020E
    lda heroXCoordinate
    adc #8
    sta $020F

    lda heroYCoordinate
    adc #8
    sta $0210
    lda #$13
    sta $0211
    lda #%00010111
    sta $0212
    lda heroXCoordinate
    adc #8
    sta $0213

    lda heroYCoordinate
    adc #16
    sta $0214
    lda #$23
    sta $0215
    lda #%00010111
    sta $0216
    lda heroXCoordinate
    adc #8
    sta $0217

    rts
.endproc

.proc drawFrame2
    lda heroYCoordinate
        sta $0200
        lda #$02
        sta $0201
        lda #%00010111
        sta $0202
        lda heroXCoordinate
        sta $0203

        lda heroYCoordinate
        adc #8
        sta $0204
        lda #$14
        sta $0205
        lda #%00010111
        sta $0206
        lda heroXCoordinate
        sta $0207

        lda heroYCoordinate
        adc #16
        sta $0208
        lda #$24
        sta $0209
        lda #%00010111
        sta $020A
        lda heroXCoordinate
        sta $020B

        lda heroYCoordinate
        sta $020C
        lda #$03
        sta $020D
        lda #%00010111
        sta $020E
        lda heroXCoordinate
        adc #8
        sta $020F

        lda heroYCoordinate
        adc #8
        sta $0210
        lda #$15
        sta $0211
        lda #%00010111
        sta $0212
        lda heroXCoordinate
        adc #8
        sta $0213

        lda heroYCoordinate
        adc #16
        sta $0214
        lda #$25
        sta $0215
        lda #%00010111
        sta $0216
        lda heroXCoordinate
        adc #8
        sta $0217

        rts
.endproc

.proc drawFrame3
lda heroYCoordinate
        sta $0200
        lda #$02
        sta $0201
        lda #%00010111
        sta $0202
        lda heroXCoordinate
        sta $0203

        lda heroYCoordinate
        adc #8
        sta $0204
        lda #$16
        sta $0205
        lda #%00010111
        sta $0206
        lda heroXCoordinate
        sta $0207

        lda heroYCoordinate
        adc #16
        sta $0208
        lda #$26
        sta $0209
        lda #%00010111
        sta $020A
        lda heroXCoordinate
        sta $020B

        lda heroYCoordinate
        sta $020C
        lda #$03
        sta $020D
        lda #%00010111
        sta $020E
        lda heroXCoordinate
        adc #8
        sta $020F

        lda heroYCoordinate
        adc #8
        sta $0210
        lda #$17
        sta $0211
        lda #%00010111
        sta $0212
        lda heroXCoordinate
        adc #8
        sta $0213

        lda heroYCoordinate
        adc #16
        sta $0214
        lda #$27
        sta $0215
        lda #%00010111
        sta $0216
        lda heroXCoordinate
        adc #8
        sta $0217

    rts
.endproc

.proc clearWalkRight

.endproc