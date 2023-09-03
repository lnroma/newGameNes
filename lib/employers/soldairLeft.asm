.segment "ZEROPAGE"
    soldairX: .res 1
    soldairY: .res 1
    isCollide: .res 1

    soldairDirection: .res 1

    tmpX: .res 1
    tmpY: .res 1
    frameCounterEmp: .res 1

.segment "CODE"

empFrame0Left:
    .byt $71, $70
    .byt $81, $80
    .byt $91, $90
    .byt $A1, $A0

empFrame1Left:
    .byt $71, $70
    .byt $81, $80
    .byt $73, $72
    .byt $83, $82

empFrame2Left:
    .byt $71, $70
    .byt $81, $80
    .byt $75, $74
    .byt $85, $84

leftFrameOffsetSoldX:
      .byt $00, $08
      .byt $00, $08
      .byt $00, $08
      .byt $00, $08

leftFrameOffsetSoldY:
      .byt $08, $08
      .byt $10, $10
      .byt $18, $18
      .byt $20, $20

soldairMask:
      .byt %01000000, %01000000
      .byt %01000000, %01000000
      .byt %01000000, %01000000
      .byt %01000000, %01000000

.proc showSoldier
    JSR checkCollideBulletEnemy
    LDA isCollide
    BEQ return
    LDA soldairX
    CLC
    JSR distEnemy

    STA tempX

    LDA soldairY
    STA tempY

    LDA soldairDirection
    BEQ soldairWalkRight
    BNE soldairWalkLeft

    soldairWalkRight:
       JSR drawSoldairWalkRight
       JMP continue
    soldairWalkLeft:
       JSR drawSoldairWalkLeft

    continue:

    JSR frameCounterProcEmp
    JSR frameCounterResetEmp
    return:
    RTS
.endproc

.proc checkCollideBulletEnemy
    LDX #$00
    loopCounter:
        LDY bulletX, x
        CPY soldairX
        BCS checkTwoParams
        BCC skip
        checkTwoParams:
        LDA soldairX
        CLC
        ADC #$0A
        STA tmpA
        CPY tmpA
        BCS skip
        BCC unsetBullet
        unsetBullet:
            LDY #$00
            STY isBullet, x
            STY bulletX, x
            STY bulletY, x
            STY soldairX
            STY soldairY
            STY isCollide


            LDA bulletCounter
            BEQ skip
            DEC bulletCounter
        skip:
            INX
            CPX #$03
            BNE loopCounter

.endproc

.proc distEnemy
    LDX soldairDirection
    CPX #00
    BEQ sbcX
sbcX:
    ADC #20
    RTS
adcX:
    SBC #20
    RTS
.endproc

.proc drawSoldairWalkLeft
    LDA frameCounterEmp
    BEQ drawFrame0
    CMP #01
    BEQ drawFrame1
    CMP #02
    BEQ drawFrame0
    CMP #03
    BEQ drawFrame2

drawFrame0:
    JSR drawFrame0Proc
    RTS
drawFrame1:
    JSR drawFrame1Proc
    RTS
drawFrame2:
    JSR drawFrame2Proc
    RTS
.endproc

.proc commonFrameSettings
    LDA #<leftFrameOffsetSoldX
    STA offsetXLB
    LDA #>leftFrameOffsetSoldX
    STA offsetXHB

    LDA #<leftFrameOffsetSoldY
    STA offsetYLB
    LDA #>leftFrameOffsetSoldY
    STA offsetYHB

    LDA #<soldairMask
    STA attributeLB
    LDA #>soldairMask
    STA attributeHB

    LDA #$08
    STA loopCount

    RTS
.endproc

.proc drawFrame0Proc
    LDA #<empFrame0Left
    STA objectLB
    LDA #>empFrame0Left
    STA objectHB

    JSR commonFrameSettings
    JSR drawFramePPU

    RTS
.endproc

.proc drawFrame1Proc
    LDA #<empFrame1Left
    STA objectLB
    LDA #>empFrame1Left
    STA objectHB

    JSR commonFrameSettings
    JSR drawFramePPU

    RTS
.endproc

.proc drawFrame2Proc
    LDA #<empFrame2Left
    STA objectLB
    LDA #>empFrame2Left
    STA objectHB

    JSR commonFrameSettings
    JSR drawFramePPU

    RTS
.endproc

.proc drawSoldierAtak
    JSR drawSoldierStay
    RTS
.endproc

.proc drawSoldierStay
    LDA #<empFrame0Left
    STA objectLB
    LDA #>empFrame0Left
    STA objectHB

    JSR commonFrameSettings
    JSR drawFramePPU

    RTS
.endproc

.proc frameCounterProcEmp
    LDA nmiCounter
    BEQ incrementFrameCounter
    BNE return
incrementFrameCounter:
    INC frameCounterEmp
return:
    RTS
.endproc

.proc frameCounterResetEmp
    LDA frameCounterEmp
    CMP #04
    BEQ resetToZero
    RTS
resetToZero:
    LDA #00
    STA frameCounterEmp
    RTS
.endproc