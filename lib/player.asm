.segment "ZEROPAGE"

.segment "RODATA"
  lifesBytes: 
	.byt $00, $08, $10, $17

.segment "CODE"

.proc firstProcPlayer
    RTS
.endproc

.proc setHeroVar
  lda #100
  sta heroXCoordinate
  lda #$00
  sta buttons
  sta offsetColumn
  lda #200
  sta heroYCoordinate
  sta lastPositionY
  lda #04
  sta lifes
  lda #01
  sta isGravity
  lda #00
  sta frameCountPlayerRightWalk
  lda #00
  sta jumpHeight

  rts
.endproc

.proc playerHundler
   JSR checkCollide
   RTS
.endproc

.proc fixScroll
   lda #00
   sta screenCount
   lda #$00
   sta nameTable
   lda #00
   sta scrollPosition

   RTS
.endproc

.proc scrolling
  LDA scrollPosition
  STA $2005
  LDA #$00
  STA $2005
  RTS
.endproc

.proc drawLifes
  LDX lifes
  lifeLoop:
    LDA #10
    STA $2004
    LDA #06
    STA $2004
    LDA #%00010111
    STA $2004
    LDA lifesBytes, x
    ADC #10
    STA $2004
    DEX
    BNE lifeLoop

  RTS
.endproc

.proc playerGravity
RTS
    JSR collisionOnMap
    LDA collideFlag
    CMP #%00000011
    BNE incy
    BEQ return
incy:
    INC heroYCoordinate
    INC heroYCoordinate
return:
    RTS
.endproc

.proc checkCollide
    LDA lastPositionY
    CMP heroYCoordinate
    BNE incrementY
    BEQ continue
    incrementY:
      ;JSR playerGravity
;      INC heroYCoordinate
      RTS
    continue:
      LDA #00
      STA isGravity
      STA jumpHeight
      STA isJump
      RTS
.endproc

.proc readJoyState
   JSR unsetHeroFire
   JSR unsetHeroStay
   JSR unsetHeroWalk

   LDX joyState
   JSR handleDirections
   RTS
.endproc

.proc handleFireAndJump
   CPX #%00000010
   BEQ heroJump
   CPX #%10000010
   BEQ walkAndJumpRight
   CPX #%10000001
   BEQ walkAndFireRight
   CPX #%01000001
   BEQ walkAndFireLeft
   CPX #%01000010
   BEQ walkAndJumpLeft

   JSR setHeroStay
   RTS

   heroJump:
        JSR setIsJump
        RTS

   walkAndJumpRight:
        JSR setIsJump
        JSR heroRightWalk
        JSR setHeroRight
        RTS
   walkAndJumpLeft:
        JSR setIsJump
        JSR heroLeftWalk
        JSR setHeroLeft
        RTS
   walkAndFireRight:
        JSR walkAndFireRightProc
        RTS
   walkAndFireLeft:
        JSR setIsFire
        JSR heroLeftWalk
        JSR setHeroLeft
        RTS
   walkAndJumpAndFireRight:
        JSR jumpAndFire
        RTS
   walkAndJumpAndFireLeft:
        JSR walkAndFireProc
        RTS
   heroFire:
        JSR setIsFire
        RTS
.endproc

.proc handleDirections
    CPX #%01000000
    BEQ heroWalkLeft
    CPX #%01100000
    BEQ heroWalkLeftAndDown
    CPX #%10100000
    BEQ heroWalkRightAndDown
    CPX #%01010000
    BEQ heroWalkLeftAndUp
    CPX #%10010000
    BEQ heroWalkRightAndUp
    CPX #%10000000
    BEQ heroWalkRight
    CPX #%00100000
    BEQ walkDown
    CPX #%00010000
    BEQ walkUp

    JSR handleFireAndJump
    RTS

    heroWalkLeftAndUp:
        JSR heroWalkLeftAndUpProcedure
        RTS
    heroWalkLeftAndDown:
        JSR heroWalkLeftAndDownProcedure
        RTS
    heroWalkRightAndDown:
        JSR heroWalkRightAndDownProcedure
        RTS
    heroWalkRightAndUp:
        JSR heroWalkRightAndUpProcedure
        RTS
    heroWalkRight:
        JSR heroWalkRightProc
        RTS
    heroWalkLeft:
        JSR heroWalkLeftProc
        RTS
    walkDown:
        JSR walkDownProcedure
        RTS
    walkUp:
        JSR walkUpProcedure
        RTS
.endproc

.proc heroWalkLeftProc
    JSR setHeroLeft
    JSR setHeroWalk
    JSR heroLeftWalk

    RTS
.endproc

.proc walkAndFireRightProc
    JSR setIsFire
    JSR heroRightWalk
    JSR setHeroRight

    RTS
.endproc

.proc heroWalkRightProc
    JSR heroRightWalk
    JSR setHeroRight
    JSR setHeroWalk

    RTS
.endproc

.proc jumpAndFire
    JSR setIsFire
    JSR heroRightWalk
    JSR setHeroRight
    JSR setIsJump

    RTS
.endproc

.proc walkAndFireProc
    JSR setIsFire
    JSR heroLeftWalk
    JSR setHeroLeft
    JSR setIsJump

    RTS
.endproc

.proc heroWalkRightAndDownProcedure
    JSR setHeroRight
    JSR heroRightWalk
    JSR setHeroWalk
    JSR walkDownProcedure

    RTS
.endproc

.proc heroWalkLeftAndDownProcedure
    JSR setHeroLeft
    JSR heroLeftWalk
    JSR setHeroWalk
    JSR walkDownProcedure

    RTS
.endproc

.proc heroWalkLeftAndUpProcedure
    JSR heroLeftWalk
    JSR walkUpProcedure

    RTS
.endproc

.proc heroWalkRightAndUpProcedure
    JSR setHeroRight
    JSR heroRightWalk
    JSR setHeroWalk
    JSR walkUpProcedure

    RTS
.endproc

.proc heroDownWalk
    LDA heroYCoordinate
    CLC
    ADC #1
    STA collideY

    LDA heroXCoordinate
    STA collideX

    JSR collisionOnMap
    LDA collideFlag
    CMP #%00000011
    BEQ incrementY
    BNE return
    incrementY:
        INC heroYCoordinate
        LDA heroYCoordinate
        STA lastPositionY
    return:
        RTS
.endproc

.proc heroUpWalk
    LDA heroYCoordinate
    CLC
    SBC #1
    STA collideY

    LDA heroXCoordinate
    STA collideX

    JSR collisionOnMap
    LDA collideFlag
    CMP #%00000011
    BEQ decrementY
    BNE return

    decrementY:
        DEC heroYCoordinate
        LDA heroYCoordinate
        STA lastPositionY
    return:
        RTS
.endproc

.proc walkDownProcedure
    LDA heroDirection
    CMP #01
    BEQ heroLeft
    BNE heroRight

    heroLeft:
        JSR setHeroLeft
        JMP setHero
    heroRight:
        JSR setHeroRight

    setHero:
        JSR heroDownWalk
        JSR setHeroWalk

        RTS
.endproc

.proc walkUpProcedure
    LDA heroDirection
    CMP #01
    BEQ heroLeft
    BNE heroRight

    heroLeft:
        JSR setHeroLeft
        JMP setHero
    heroRight:
        JSR setHeroRight

    setHero:
        JSR heroUpWalk
        JSR setHeroWalk

        RTS
.endproc

.proc heroStateMovement
    JSR caclulateJump
    JSR heroStateAnimations
    RTS
.endproc

.proc heroStateAnimations
    JSR heroJumpAnimation
    JSR heroWalkAnimation
    JSR heroStayAnimation

    RTS
.endproc

.proc heroWalkAnimation
    LDA isHeroWalk
    CMP #01
    BEQ checkFlagJump
;    BEQ walkWithOutFire
    BNE return

    checkFlagJump:
        LDA isJump
        CMP #01
        BEQ return
        BNE checkIsFire

    checkIsFire:
        LDA isHeroFire
        CMP #01
        BEQ walkAndFire
        BNE walkWithOutFire

    walkAndFire:
        LDA heroDirection
        CMP #01
        BEQ drawHeroWalkAndFireLeft
        BNE drawHeroWalkAndFireRight
    drawHeroWalkAndFireRight:
        JSR drawHeroRightWalkFire
        RTS
    drawHeroWalkAndFireLeft:
        JSR drawHeroLeftAndFire
        RTS

    walkWithOutFire:
        LDA heroDirection
        CMP #01
        BEQ drawHeroWalkLeft
        BNE drawHeroWalkRight
    drawHeroWalkRight:
        JSR drawHeroRightWalk
        RTS
    drawHeroWalkLeft:
        JSR drawHeroLeft
        RTS
    return:
        RTS
.endproc

.proc heroStayAnimation
    LDA isHeroStay
    CMP #01
    BNE return
    BEQ checkDirection
    checkDirection:
        LDA heroDirection
        CMP #01
        BEQ drawStayLeftLabel
        BNE drawStayRightLabel
        drawStayRightLabel:
            JSR drawStayRight
            RTS
        drawStayLeftLabel:
            JSR drawStayLeft
            RTS
    return:
        RTS
.endproc

.proc heroJumpAnimation
    LDA isJump
    CMP #01
    BEQ drawJumpAnimation
    BNE return
    drawJumpAnimation:
        LDA heroDirection
        CMP #01
        BEQ drawJumpAnimationLeft
        BNE drawJumpAnimationRight
    drawJumpAnimationLeft:
        JSR drawJumpLeft
        RTS
    drawJumpAnimationRight:
        JSR drawJumpRight
        RTS
    return:
        RTS
.endproc

.proc clearMemory
    JSR clearStayRight

    RTS
.endproc

.proc setHeroLeft
    LDA #01
    STA heroDirection
    RTS
.endproc

.proc setHeroRight
    LDA #02
    STA heroDirection
    RTS
.endproc

.proc setHeroWalk
    LDA #01
    STA isHeroWalk
    RTS
.endproc

.proc unsetHeroWalk
    LDA #00
    STA isHeroWalk
    RTS
.endproc

.proc setIsFire
    LDA #01
    STA isHeroFire
    RTS
.endproc

.proc unsetHeroFire
    LDA #00
    STA isHeroFire
    RTS
.endproc

.proc setHeroStay
    LDA #01
    STA isHeroStay
    RTS
.endproc

.proc unsetHeroStay
    LDA #00
    STA isHeroStay
    RTS
.endproc