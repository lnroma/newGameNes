.segment "ZEROPAGE"
    heroDirection: .res 1 ; 01 left 02 right
    isHeroWalk: .res 1
    isHeroFire: .res 1
    isHeroStay: .res 1
    lastPositionY: .res 1

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
  lda #50
  sta heroYCoordinate
  lda #250
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
    LDA collideFlag
    CMP #00
    BNE return

    LDA #01
    STA isGravity
    inc heroYCoordinate
    INC heroYCoordinate
    LDA #00
    STA collideDetection
return:
    RTS
.endproc

.proc checkCollide
    LDA lastPositionY
    CMP heroYCoordinate
    BNE incrementY
    BEQ continue
    incrementY:
      JSR playerGravity
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

   LDX joyState
   CPX #%01000000
   BEQ heroWalkLeft
   CPX #%10000000
   BEQ heroWalkRight
   CPX #%00100000
   BEQ walkDown
   CPX #%00010000
   BEQ walkUp
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
   BNE heroStay

   heroJump:
        JSR setIsJump
        JMP return
   heroWalkRight:
        JSR heroRightWalk
        JSR setHeroRight
        JSR setHeroWalk
        JMP return
   heroWalkLeft:
        JSR setHeroLeft
        JSR heroLeftWalk
        JSR setHeroWalk
        JMP return
   walkDown:
        JSR walkDownProcedure
        JMP return
   walkUp:
        JSR walkUpProcedure
        JMP return
   walkAndJumpRight:
        JSR setIsJump
        JSR heroRightWalk
        JSR setHeroRight
        JMP return
   walkAndJumpLeft:
        JSR setIsJump
        JSR heroLeftWalk
        JSR setHeroLeft
        JMP return
   walkAndFireRight:
        JSR setIsFire
        JSR heroRightWalk
        JSR setHeroRight
        JMP return
   walkAndFireLeft:
        JSR setIsFire
        JSR heroLeftWalk
        JSR setHeroLeft
        JMP return
   walkAndJumpAndFireRight:
        JSR setIsFire
        JSR heroRightWalk
        JSR setHeroRight
        JSR setIsJump
        JMP return
   walkAndJumpAndFireLeft:
        JSR setIsFire
        JSR heroLeftWalk
        JSR setHeroLeft
        JSR setIsJump
        JMP return
   heroFire:
        JSR setIsFire
        JMP return
   heroStay:
        JSR setHeroStay
        JMP return

   return:
     RTS
.endproc

.proc heroDownWalk
    LDA collideFlag
    CMP #3
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
    LDA collideDetection
    CMP #01
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
    JSR setHeroLeft
    JSR heroDownWalk
    JSR setHeroWalk

    RTS
.endproc

.proc walkUpProcedure
    JSR setHeroLeft
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