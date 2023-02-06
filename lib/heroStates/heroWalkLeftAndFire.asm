.segment "CODE"

.proc firstProcHeroWalkLeftAndFire
  RTS
.endproc

.proc heroLeftWalkFire
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

.proc drawHeroLeftAndFire
    LDA scrollCounter
    AND #8
    CMP #1
    BEQ drawLeftAndFireFrame1Label
    AND #8
    BEQ drawLeftAndFireFrame2Label
    AND #10
    BEQ drawLeftAndFireFrame3Label

  drawLeftAndFireFrame1Label:
    JSR drawLeftAndFireFrame1
    INC frameCountPlayerRightWalk
    RTS
  drawLeftAndFireFrame2Label:
    JSR drawLeftAndFireFrame2
    INC frameCountPlayerRightWalk
    RTS
  drawLeftAndFireFrame3Label:
    JSR drawLeftAndFireFrame3
    INC frameCountPlayerRightWalk
    RTS
.endproc

.proc drawLeftAndFireFrame1
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
    LDA #%00010110
    STA $021A
    LDA heroXCoordinate
    STA $021B
    RTS
.endproc

.proc drawLeftAndFireFrame2
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
    LDA #$13
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
    LDA #%00010110
    STA $021A
    LDA heroXCoordinate
    STA $021B

    RTS
.endproc

.proc drawLeftAndFireFrame3
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
    LDA #$13
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
    LDA #%00010110
    STA $021A
    LDA heroXCoordinate
    STA $021B
    RTS
.endproc