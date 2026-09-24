.segment "ZEROPAGE"
    isFireStay: .res 1
    tmpA: .res 1
    flagButtonBPress: .res 1
    tileIndex: .res 1

.segment "CODE"

.proc firstProcPlayer
    RTS
.endproc

.proc initBullet
    ldx #$00
    stx bulletFlag
    stx bulletCounter

    ldx #00
    ldy #00
    resetIsBullet:
        sty isBullet, x
        inx
        cpx #$03
        bne resetIsBullet

    rts
.endproc

.proc setHeroVar
  LDA #$00
  STA flagButtonBPress

  lda #100
  sta heroXCoordinate
  lda #$00
  sta buttons
  sta offsetColumn
  lda #140
  sta heroYCoordinate
  JSR initBullet
  sta lastPositionY
  lda #04
  sta lifes
  lda #01
  sta isGravity
  lda #00
  sta frameCountPlayerRightWalk
  lda #00
  sta jumpHeight
  LDA #00
  STA collisionPart
  STA isStageEnd
  STA stageStates
  STA isLoadedFlags
  STA isBullet
  STA counterFrames
  STA isFireStay

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
   sta yScrollPosition

   RTS
.endproc

.proc resetScroll
    LDA #$00
    STA $2005
    STA $2005

    RTS
.endproc

.proc scrolling
    LDA scrollPosition
    STA $2005
    LDA #$00
    STA $2005
    RTS
.endproc

.proc playerGravity
RTS
;    JSR collisionOnMap
;    LDA collideFlag
;    CMP #%00000011
    BNE incy
    BEQ return
incy:
    INC heroYCoordinate
    INC heroYCoordinate
return:
    RTS
.endproc

.proc checkCollide
    LDA #%10000100
    EOR nameTable
    STA $2000

    LDA $2002
    LDA #$20
    STA $2006
    LDA #$00
    STA $2006

    STA $2005
    STA $2005

    LDA #%10010000
    EOR nameTable ; 01 00
    STA $2000



        RTS

    LDA $2007
    STA tileIndex

    JSR scrolling
    LDA #%00001010
    STA $2001

    RTS
.endproc

.proc readJoyState
   JSR unsetHeroFire
   JSR unsetHeroStay
   JSR unsetHeroWalk
   JSR unsetStayFire

   LDX joyState
   JSR handleDirections
   RTS
.endproc

.proc handleFireAndJump
   CPX #%00000001
   BEQ heroJump
  ; CPX #%10000010
  ; BEQ walkAndJumpRight
   CPX #%00000010
   BEQ fireLabel
   CPX #%01000010
   BEQ walkAndFireLeft
   CPX #%10000010
   BEQ walkAndFireRight
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
   fireLabel:
        LDA #01
        STA isFireStay
        LDA #00
        STA isHeroStay
        STA isHeroWalk

        JSR setIsFire

        LDA #$01
        STA flagButtonBPress

        RTS
   walkAndFireLeft:
        JSR setIsFire
        JSR setHeroWalk
        JSR heroLeftWalk
        JSR setHeroLeft

        LDA #$01
        STA flagButtonBPress

        RTS
   walkAndFireRight:
        JSR setIsFire
        JSR setHeroWalk
        JSR heroRightWalk
        JSR setHeroRight

        LDA #$01
        STA flagButtonBPress

        RTS
   walkAndJumpAndFireRight:
        JSR jumpAndFire
        RTS
   walkAndJumpAndFireLeft:
        JSR walkAndFireProc
        RTS
   heroFire:
        JSR setIsFire

        LDA #$01
        STA flagButtonBPress

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
    JSR heroLeftWalk
    JSR setHeroLeft
    JSR setHeroWalk

    RTS
.endproc

.proc heroWalkRightProc
    JSR heroRightWalk
    JSR setHeroRight
    JSR setHeroWalk

    RTS
.endproc

.proc initBulletCoordinate
    RTS
    LDA isBullet
    BEQ bulletInit
    RTS
bulletInit:
    LDX bulletCounter
    CPX #04
    BNE  return
    BEQ continue

continue:
    LDX #$01
    LDA heroXCoordinate
    STA bulletX
    LDA heroYCoordinate
    CLC
    ADC #$0C
    STA bulletY

return:
    RTS
.endproc

.proc resetBullet
    LDA #00
    STA isBullet
    RTS
.endproc

.proc incBulletCounter
    LDA flagButtonBPress
    BNE return
    LDA frameCounter
    LDA bulletCounter
    CMP #$03
    BEQ return
    BNE increment
increment:
    INC bulletCounter
return:
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
    JSR collisionOnMapDown
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
    JSR collisionOnMapUp
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
    JSR heroFireAnimation
    JSR drawAndAnimatedBullet
    JSR checkCollideBulletScreen
   ; JSR checkCollideBulletEnemy

    RTS
.endproc

.proc drawAndAnimatedBullet
    LDX #$00
    loopIncrementBulletX:
        LDA isBullet, x
        BEQ skipIncrement
        BNE increment

        increment:
            INC bulletX, x
            INC bulletX, x
            INC bulletX, x

        skipIncrement:
            INX
            CPX #$03
            BNE loopIncrementBulletX

    JSR drawBullet

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
        JSR drawHeroRightAndFire
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
        ;JSR drawFireRight
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

.proc heroFireAnimation
    LDA isFireStay
    BEQ return
    BNE checkDirection
    checkDirection:
        LDA heroDirection
        CMP #01
        BEQ drawStayFireLeftLabel
        BNE drawStayFireRightLabel
        drawStayFireLeftLabel:
            JSR drawFireLeft
            RTS
        drawStayFireRightLabel:
            JSR drawFireRight
            RTS
    return:
        RTS
.endproc

.proc setIsBullet
    LDA flagButtonBPress
    BNE return

    LDX bulletCounter
    CPX #$03
    BEQ return

    LDA heroXCoordinate
    CLC
    ADC #$0F
    STA bulletX, x
    LDA heroYCoordinate
    CLC
    ADC #$0D
    STA bulletY, x

    LDA #$01
    STA isBullet, x
return:
    RTS
.endproc

.proc checkCollideBulletScreen
    LDX #$00
    loopCounter:
        LDY bulletX, x
        CPY #$FC
        BCS unsetBullet
        BNE skip
        unsetBullet:
            LDY #$00
            STY isBullet, x
            STY bulletX, x
            STY bulletY, x

            LDA bulletCounter
            BEQ skip
            DEC bulletCounter
        skip:
        INX
        CPX #$03
        BNE loopCounter

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
;    JSR clearStayRight

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

    JSR setIsBullet
    JSR incBulletCounter

    RTS
.endproc

.proc unsetHeroFire
    LDA #00
    STA isHeroFire

    RTS
.endproc

.proc unsetStayFire
    LDA #$00
    STA isFireStay

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