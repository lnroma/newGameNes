.segment "ZEROPAGE"
  LeftFrameCountPlayerRightWalk: .res 1;
.segment "CODE"

.proc firstProcHeroWalkLeft
  RTS
.endproc

.proc heroLeftWalk
    LDA heroYCoordinate
    STA collideY

    LDA heroXCoordinate
    CLC
    SBC #1
    STA collideX

    JSR collisionOnMap
    LDA collideFlag
    CMP #%00000011
    BEQ decrementXCoordinate
    BNE return
; todo dorabotat' esli geroy v levo idet do ekrana
;  LDA scrollPosition
;  CMP heroXCoordinate
;  BCS stopDecrement
;  BNE decrementX
;  stopDecrement:
;    RTS
;  decrementX:
    decrementXCoordinate:
        DEC heroXCoordinate
    return:
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
    LDA heroYCoordinate
    STA $0200
    LDA #$02
    STA $0201
    LDA #%01010111
    STA $0202
    LDA heroXCoordinate
    ADC #7
    STA $0203

    LDA heroYCoordinate
    ADC #7
    STA $0204
    LDA #$12
    STA $0205
    LDA #%01010111
    STA $0206
    LDA heroXCoordinate
    ADC #8
    STA $0207

    LDA heroYCoordinate
    ADC #16
    STA $0208
    LDA #$22
    STA $0209
    LDA #%01010111
    STA $020A
    LDA heroXCoordinate
    ADC #8
    STA $020B

    LDA heroYCoordinate
    STA $020C
    LDA #$03
    STA $020D
    LDA #%01010111
    STA $020E
    LDA heroXCoordinate
    STA $020F

    LDA heroYCoordinate
    ADC #8
    STA $0210
    LDA #$13
    STA $0211
    LDA #%01010111
    STA $0212
    LDA heroXCoordinate
    STA $0213

    LDA heroYCoordinate
    ADC #16
    STA $0214
    LDA #$23
    STA $0215
    LDA #%01010111
    STA $0216
    LDA heroXCoordinate
    STA $0217

    LDA heroYCoordinate
    STA $0218
    LDA #$04
    STA $0219
    LDA #%01010110
    STA $021A
    LDA heroXCoordinate
    STA $021B
    RTS
.endproc

.proc drawLeftFrame2
    LDA heroYCoordinate
    STA $0200
    LDA #$02
    STA $0201
    LDA #%01010111
    STA $0202
    LDA heroXCoordinate
    ADC #7
    STA $0203

    LDA heroYCoordinate
    ADC #8
    STA $0204
    LDA #$14
    STA $0205
    LDA #%01010111
    STA $0206
    LDA heroXCoordinate
    ADC #8
    STA $0207

    LDA heroYCoordinate
    ADC #16
    STA $0208
    LDA #$24
    STA $0209
    LDA #%01010111
    STA $020A
    LDA heroXCoordinate
    ADC #8
    STA $020B

    LDA heroYCoordinate
    STA $020C
    LDA #$03
    STA $020D
    LDA #%01010111
    STA $020E
    LDA heroXCoordinate
    STA $020F

    LDA heroYCoordinate
    ADC #8
    STA $0210
    LDA #$15
    STA $0211
    LDA #%01010111
    STA $0212
    LDA heroXCoordinate
    STA $0213

    LDA heroYCoordinate
    ADC #16
    STA $0214
    LDA #$25
    STA $0215
    LDA #%01010111
    STA $0216
    LDA heroXCoordinate
    STA $0217

    LDA heroYCoordinate
    STA $0218
    LDA #$04
    STA $0219
    LDA #%01010110
    STA $021A
    LDA heroXCoordinate
    STA $021B

    RTS
.endproc

.proc drawLeftFrame3
LDA heroYCoordinate
    STA $0200
    LDA #$02
    STA $0201
    LDA #%01010111
    STA $0202
    LDA heroXCoordinate
    ADC #8
    STA $0203

    LDA heroYCoordinate
    ADC #7
    STA $0204
    LDA #$16
    STA $0205
    LDA #%01010111
    STA $0206
    LDA heroXCoordinate
    ADC #8
    STA $0207

    LDA heroYCoordinate
    ADC #16
    STA $0208
    LDA #$26
    STA $0209
    LDA #%01010111
    STA $020A
    LDA heroXCoordinate
    ADC #8
    STA $020B

    LDA heroYCoordinate
    STA $020C
    LDA #$03
    STA $020D
    LDA #%01010111
    STA $020E
    LDA heroXCoordinate
    STA $020F

    LDA heroYCoordinate
    ADC #8
    STA $0210
    LDA #$17
    STA $0211
    LDA #%01010111
    STA $0212
    LDA heroXCoordinate
    STA $0213

    LDA heroYCoordinate
    ADC #16
    STA $0214
    LDA #$27
    STA $0215
    LDA #%01010111
    STA $0216
    LDA heroXCoordinate
    STA $0217

    LDA heroYCoordinate
    STA $0218
    LDA #$04
    STA $0219
    LDA #%01010110
    STA $021A
    LDA heroXCoordinate
    STA $021B
    RTS
.endproc