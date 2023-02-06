.segment "CODE"

.proc firstProcRightWalkFire
    RTS
.endproc

.proc heroRightWalkFire
  LDA heroXCoordinate
  CMP #122
  BCS incrementScreen
  BNE incrementX
  incrementScreen:
    JSR incrementScrollPosition
;    INC scrollPosition
    RTS
  incrementX:
    INC heroXCoordinate
    RTS
.endproc

.proc drawHeroRightWalkFire
    LDA scrollCounter
    AND #8
    CMP #1
    BEQ drawFrameAndFire1Label
    AND #8
    BEQ drawFrameAndFire2Label
    AND #10
    BEQ drawFrameAndFire3Label

  drawFrameAndFire1Label:
    JSR drawFrameAndFire1
    INC frameCountPlayerRightWalk
    
    RTS
  drawFrameAndFire2Label:
    JSR drawFrameAndFire2
    INC frameCountPlayerRightWalk
    
    RTS
  drawFrameAndFire3Label:
    JSR drawFrameAndFire3
    INC frameCountPlayerRightWalk
    
    RTS
.endproc

.proc drawFrameAndFire1
    LDA heroYCoordinate
    STA $0200
    LDA #$02
    STA $0201
    LDA #%00010111
    STA $0202
    LDA heroXCoordinate
    STA $0203

    LDA heroYCoordinate
    ADC #7
    STA $0204
    LDA #$12
    STA $0205
    LDA #%00010111
    STA $0206
    LDA heroXCoordinate
    STA $0207

    LDA heroYCoordinate
    ADC #16
    STA $0208
    LDA #$22
    STA $0209
    LDA #%00010111
    STA $020A
    LDA heroXCoordinate
    STA $020B

    LDA heroYCoordinate
    STA $020C
    LDA #$03
    STA $020D
    LDA #%00010111
    STA $020E
    LDA heroXCoordinate
    ADC #8
    STA $020F

    LDA heroYCoordinate
    ADC #8
    STA $0210
    LDA #$13
    STA $0211
    LDA #%00010111
    STA $0212
    LDA heroXCoordinate
    ADC #8
    STA $0213

    LDA heroYCoordinate
    ADC #16
    STA $0214
    LDA #$23
    STA $0215
    LDA #%00010111
    STA $0216
    LDA heroXCoordinate
    ADC #8
    STA $0217

    LDA heroYCoordinate
    STA $0218
    LDA #$04
    STA $0219
    LDA #%00010110
    STA $021A
    LDA heroXCoordinate
    ADC #6
    STA $021B

    RTS
.endproc

.proc drawFrameAndFire2
    LDA heroYCoordinate
    STA $0200
    LDA #$02
    STA $0201
    LDA #%00010111
    STA $0202
    LDA heroXCoordinate
    STA $0203

    LDA heroYCoordinate
    ADC #7
    STA $0204
    LDA #$14
    STA $0205
    LDA #%00010111
    STA $0206
    LDA heroXCoordinate
    STA $0207

    LDA heroYCoordinate
    ADC #16
    STA $0208
    LDA #$24
    STA $0209
    LDA #%00010111
    STA $020A
    LDA heroXCoordinate
    STA $020B

    LDA heroYCoordinate
    STA $020C
    LDA #$03
    STA $020D
    LDA #%00010111
    STA $020E
    LDA heroXCoordinate
    ADC #8
    STA $020F

    LDA heroYCoordinate
    ADC #8
    STA $0210
    LDA #$13
    STA $0211
    LDA #%00010111
    STA $0212
    LDA heroXCoordinate
    ADC #8
    STA $0213

    LDA heroYCoordinate
    ADC #16
    STA $0214
    LDA #$25
    STA $0215
    LDA #%00010111
    STA $0216
    LDA heroXCoordinate
    ADC #8
    STA $0217

    LDA heroYCoordinate
    STA $0218
    LDA #$04
    STA $0219
    LDA #%00010110
    STA $021A
    LDA heroXCoordinate
    ADC #6
    STA $021B
    RTS
.endproc

.proc drawFrameAndFire3
    LDA heroYCoordinate
    STA $0200
    LDA #$02
    STA $0201
    LDA #%00010111
    STA $0202
    LDA heroXCoordinate
    STA $0203

    LDA heroYCoordinate
    ADC #7
    STA $0204
    LDA #$16
    STA $0205
    LDA #%00010111
    STA $0206
    LDA heroXCoordinate
    STA $0207

    LDA heroYCoordinate
    ADC #16
    STA $0208
    LDA #$26
    STA $0209
    LDA #%00010111
    STA $020A
    LDA heroXCoordinate
    STA $020B

    LDA heroYCoordinate
    STA $020C
    LDA #$03
    STA $020D
    LDA #%00010111
    STA $020E
    LDA heroXCoordinate
    ADC #8
    STA $020F

    LDA heroYCoordinate
    ADC #8
    STA $0210
    LDA #$13
    STA $0211
    LDA #%00010111
    STA $0212
    LDA heroXCoordinate
    ADC #8
    STA $0213

    LDA heroYCoordinate
    ADC #16
    STA $0214
    LDA #$27
    STA $0215
    LDA #%00010111
    STA $0216
    LDA heroXCoordinate
    ADC #8
    STA $0217

    LDA heroYCoordinate
    STA $0218
    LDA #$04
    STA $0219
    LDA #%00010110
    STA $021A
    LDA heroXCoordinate
    ADC #6
    STA $021B
    
    RTS
.endproc
