.segment "ZEROPAGE"
  LeftFrameCountPlayerRightWalk: .res 1;
.segment "CODE"

.proc firstProcHeroWalkLeft
  RTS
.endproc

.proc heroLeftWalk
; todo dorabotat' esli geroy v levo idet do ekrana
;  LDA scrollPosition
;  CMP heroXCoordinate
;  BCS stopDecrement
;  BNE decrementX
;  stopDecrement:
;    RTS
;  decrementX:
    DEC heroXCoordinate
    RTS
  ; todo check left screen border
.endproc

.proc drawHeroLeft
    LDA scrollCounter
    AND #8
    CMP #1
    BEQ drawLeftFrame1Label
    AND #8
    BEQ drawLeftFrame2Label
    AND #10
    BEQ drawLeftFrame3Label

  drawLeftFrame1Label:
    JSR drawLeftFrame1
    INC LeftFrameCountPlayerRightWalk
    RTS
  drawLeftFrame2Label:
    JSR drawLeftFrame2
    INC LeftFrameCountPlayerRightWalk
    RTS
  drawLeftFrame3Label:
    JSR drawLeftFrame3
    INC LeftFrameCountPlayerRightWalk
    RTS
.endproc

.proc drawLeftFrame1
    lda heroYCoordinate
    sta $0200
    lda #$02
    sta $0201
    lda #%01010111
    sta $0202
    lda heroXCoordinate
    adc #8
    sta $0203

    lda heroYCoordinate
    adc #7
    sta $0204
    lda #$12
    sta $0205
    lda #%01010111
    sta $0206
    lda heroXCoordinate
    adc #8
    sta $0207

    lda heroYCoordinate
    adc #16
    sta $0208
    lda #$22
    sta $0209
    lda #%01010111
    sta $020A
    lda heroXCoordinate
    adc #8
    sta $020B

    lda heroYCoordinate
    sta $020C
    lda #$03
    sta $020D
    lda #%01010111
    sta $020E
    lda heroXCoordinate
    sta $020F

    lda heroYCoordinate
    adc #8
    sta $0210
    lda #$13
    sta $0211
    lda #%01010111
    sta $0212
    lda heroXCoordinate
    sta $0213

    lda heroYCoordinate
    adc #16
    sta $0214
    lda #$23
    sta $0215
    lda #%01010111
    sta $0216
    lda heroXCoordinate
    sta $0217

    lda heroYCoordinate
            sta $0218
            lda #$04
            sta $0219
            lda #%00010110
            sta $021A
            lda heroXCoordinate
            sta $021B
    rts
.endproc

.proc drawLeftFrame2
    lda heroYCoordinate
        sta $0200
        lda #$02
        sta $0201
        lda #%01010111
        sta $0202
        lda heroXCoordinate
        adc #7
        sta $0203

        lda heroYCoordinate
        adc #8
        sta $0204
        lda #$14
        sta $0205
        lda #%01010111
        sta $0206
        lda heroXCoordinate
        adc #8
        sta $0207

        lda heroYCoordinate
        adc #16
        sta $0208
        lda #$24
        sta $0209
        lda #%01010111
        sta $020A
        lda heroXCoordinate
        adc #8
        sta $020B

        lda heroYCoordinate
        sta $020C
        lda #$03
        sta $020D
        lda #%01010111
        sta $020E
        lda heroXCoordinate
        sta $020F

        lda heroYCoordinate
        adc #8
        sta $0210
        lda #$15
        sta $0211
        lda #%01010111
        sta $0212
        lda heroXCoordinate
        sta $0213

        lda heroYCoordinate
        adc #16
        sta $0214
        lda #$25
        sta $0215
        lda #%01010111
        sta $0216
        lda heroXCoordinate
        sta $0217

        lda heroYCoordinate
                sta $0218
                lda #$04
                sta $0219
                lda #%00010110
                sta $021A
                lda heroXCoordinate
                sta $021B

        rts
.endproc

.proc drawLeftFrame3
lda heroYCoordinate
        sta $0200
        lda #$02
        sta $0201
        lda #%01010111
        sta $0202
        lda heroXCoordinate
        adc #8
        sta $0203

        lda heroYCoordinate
        adc #7
        sta $0204
        lda #$16
        sta $0205
        lda #%01010111
        sta $0206
        lda heroXCoordinate
        adc #8
        sta $0207

        lda heroYCoordinate
        adc #16
        sta $0208
        lda #$26
        sta $0209
        lda #%01010111
        sta $020A
        lda heroXCoordinate
        adc #8
        sta $020B

        lda heroYCoordinate
        sta $020C
        lda #$03
        sta $020D
        lda #%01010111
        sta $020E
        lda heroXCoordinate
        sta $020F

        lda heroYCoordinate
        adc #8
        sta $0210
        lda #$17
        sta $0211
        lda #%01010111
        sta $0212
        lda heroXCoordinate
        sta $0213

        lda heroYCoordinate
        adc #16
        sta $0214
        lda #$27
        sta $0215
        lda #%01010111
        sta $0216
        lda heroXCoordinate
        sta $0217

        lda heroYCoordinate
        sta $0218
        lda #$04
        sta $0219
        lda #%00010110
        sta $021A
        lda heroXCoordinate
        sta $021B
    rts
.endproc