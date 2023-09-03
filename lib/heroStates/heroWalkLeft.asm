.segment "ZEROPAGE"
  LeftFrameCountPlayerRightWalk: .res 1;
  animateCounter: .res 1;

.segment "CODE"
   leftFrameSprites:
      .byt $03, $02
      .byt $13, $12
      .byt $23, $22
      .byt $33, $32

   leftFrame2Sprites:
      .byt $03, $02
      .byt $13, $12
      .byt $05, $04
      .byt $15, $14

   leftFrame3Sprites:
      .byt $03, $02
      .byt $13, $12
      .byt $25, $24
      .byt $15, $14

   leftFrameAttributes:
    .byt %01010110, %01010110
    .byt %01010110, %01010110
    .byt %01010101, %01010101
    .byt %01010101, %01010101

   leftFrameOffsetX:
      .byt $08, $10
      .byt $08, $10
      .byt $08, $10
      .byt $08, $10

   leftFrameOffsetY:
      .byt $00, $00
      .byt $08, $08
      .byt $10, $10
      .byt $18, $18

.segment "CODE"

.proc firstProcHeroWalkLeft
  RTS
.endproc

.proc heroLeftWalk
    LDX #$09
    JSR setPrgBank

    DEC heroXCoordinate
    RTS

    JSR collisionOnMapLeft
    LDA collideFlag
    CMP #%00000011
    BEQ decrementXCoordinate
    BNE return
    decrementXCoordinate:
        DEC heroXCoordinate
    return:
        RTS
  ; todo check left screen border
.endproc

.proc drawHeroLeft
    JSR frameCounterProc
    JSR resetFrameCounterProc

    LDA frameCounter
    BEQ drawLeftFrame1Label
    CMP #01
    BEQ drawLeftFrame2Label
    CMP #02
    BEQ drawLeftFrame1Label
    CMP #03
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

.proc commonInitFrameLeft
    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<leftFrameOffsetX
    STA offsetXLB
    LDA #>leftFrameOffsetX
    STA offsetXHB

    LDA #<leftFrameOffsetY
    STA offsetYLB
    LDA #>leftFrameOffsetY
    STA offsetYHB

    LDA #<leftFrameAttributes
    STA attributeLB
    LDA #>leftFrameAttributes
    STA attributeHB


    RTS
.endproc

.proc drawLeftFrame1
    JSR commonInitFrameLeft

    LDA #<leftFrameSprites
    STA objectLB
    LDA #>leftFrameSprites
    STA objectHB

    LDA #$08
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc

.proc drawLeftFrame2
    JSR commonInitFrameLeft

    LDA #<leftFrame2Sprites
    STA objectLB
    LDA #>leftFrame2Sprites
    STA objectHB

    LDA #$08
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc

.proc drawLeftFrame3
    JSR commonInitFrameLeft

    LDA #<leftFrame3Sprites
    STA objectLB
    LDA #>leftFrame3Sprites
    STA objectHB

    LDA #$08
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc