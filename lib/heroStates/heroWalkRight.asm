.segment "ZEROPAGE"
  frameCountPlayerRightWalk: .res 1
  scrollCounter: .res 1

  frameSpritesLB: .res 1
  frameSpritesHB: .res 1

  frameAttributesLB: .res 1
  frameAttributesHB: .res 1

  frameOffsetsXLB: .res 1
  frameOffsetsXHB: .res 1

  frameOffsetsYLB: .res 1
  frameOffsetsYHB: .res 1
  frameCounter: .res 1

.segment "CODE"
   frame1_sprites:
      .byt $02, $03
      .byt $12, $13
      .byt $22, $23
      .byt $32, $33

   frame2_sprites:
      .byt $02, $03
      .byt $12, $13
      .byt $04, $05
      .byt $14, $15

   frame3_sprites:
      .byt $02, $03
      .byt $12, $13
      .byt $24, $25
      .byt $14, $15

   rightFrameAttributes:
    .byt %00010110, %00010110
    .byt %00010110, %00010110
    .byt %00010101, %00010101
    .byt %00010101, %00010101

   rightFrameOffsetX:
      .byt $00, $08
      .byt $00, $08
      .byt $00, $08
      .byt $00, $08

   rightFrameOffsetY:
      .byt $00, $00
      .byt $08, $08
      .byt $10, $10
      .byt $18, $18

.segment "CODE"

.proc firstProcRightWalk
    RTS
.endproc

.proc heroRightWalk
    LDA isStageEnd
    CMP #01
    BEQ heroRightWalkIncrementX
    BNE heroRightWalk
  heroRightWalkIncrementX:
    JSR heroRightWalkIncrementXCoordinate
    RTS
  heroRightWalk:
    JSR heroRightWalkStandard
    RTS
.endproc

.proc heroRightWalkIncrementXCoordinate
    INC heroXCoordinate
    RTS
.endproc

.proc heroRightWalkStandard
    INC scrollPosition
    RTS
    LDA heroYCoordinate
    STA collideY

    LDA heroXCoordinate
    CLC
    ADC #1
    STA collideX

    JSR collisionOnMapRight
    LDA collideFlag
    CMP #%00000011
    BEQ incXCoord

    RTS

  incXCoord:
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

.proc incrementScrollPosition
    INC scrollPosition
    RTS
.endproc

.proc frameCounterProc
    LDA nmiCounter
    BEQ incrementFrameCounter
    BNE return
incrementFrameCounter:
    INC frameCounter
return:
    RTS
.endproc

.proc resetFrameCounterProc
    LDA frameCounter
    CMP #04
    BEQ reset
    BNE return
reset:
    LDA #$00
    STA frameCounter
return:
    RTS
.endproc

.segment "CODE"

.proc drawHeroRightWalk
    LDX #$09
    JSR setPrgBank

    JSR commonInitFrame
    JSR frameCounterProc
    JSR resetFrameCounterProc

    LDA frameCounter
    BEQ drawFrame1Label
    CMP #01
    BEQ drawFrame2Label
    CMP #02
    BEQ drawFrame1Label
    CMP #03
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

.proc commonInitFrame

    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<rightFrameOffsetX
    STA offsetXLB
    LDA #>rightFrameOffsetX
    STA offsetXHB

    LDA #<rightFrameOffsetY
    STA offsetYLB
    LDA #>rightFrameOffsetY
    STA offsetYHB

    LDA #<rightFrameAttributes
    STA attributeLB
    LDA #>rightFrameAttributes
    STA attributeHB

    RTS
.endproc

.proc drawFrame1
    LDA #<frame1_sprites
    STA objectLB
    LDA #>frame1_sprites
    STA objectHB

    LDA #08
    STA loopCount

    JSR drawFramePPU
    RTS
.endproc

.proc drawFrame2
    LDA #<frame2_sprites
    STA objectLB
    LDA #>frame2_sprites
    STA objectHB

    LDA #08
    STA loopCount

    JSR drawFramePPU
    RTS
.endproc

.proc drawFrame3
    LDA #<frame3_sprites
    STA objectLB
    LDA #>frame3_sprites
    STA objectHB

    LDA #08
    STA loopCount

    JSR drawFramePPU
    RTS
.endproc