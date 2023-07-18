.segment "ZEROPAGE"
  LeftFrameCountPlayerRightWalk: .res 1;
  animateCounter: .res 1;

.segment "RODATA"
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
    JSR collisionOnMapLeft
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
    LDA #<leftFrameAttributes
    STA frameAttributesLB
    LDA #>leftFrameAttributes
    STA frameAttributesHB

    LDA #<leftFrameOffsetX
    STA frameOffsetsXLB
    LDA #>leftFrameOffsetX
    STA frameOffsetsXHB

    LDA #<leftFrameOffsetY
    STA frameOffsetsYLB
    LDA #>leftFrameOffsetY
    STA frameOffsetsYHB

    RTS
.endproc

.proc drawLeftFrame1
    JSR commonInitFrameLeft

    LDA #<leftFrameSprites
    STA frameSpritesLB
    LDA #>leftFrameSprites
    STA frameSpritesHB

    JSR drawFrame

    RTS
.endproc

.proc drawLeftFrame2
    JSR commonInitFrameLeft

    LDA #<leftFrame2Sprites
    STA frameSpritesLB
    LDA #>leftFrame2Sprites
    STA frameSpritesHB

    JSR drawFrame

    RTS
.endproc

.proc drawLeftFrame3
    JSR commonInitFrameLeft

    LDA #<leftFrame3Sprites
    STA frameSpritesLB
    LDA #>leftFrame3Sprites
    STA frameSpritesHB

    JSR drawFrame

    RTS
.endproc