.segment "ZEROPAGE"
  LeftFrameCountPlayerRightWalk: .res 1;

.segment "RODATA"
   leftFrameSprites:
      .byt $33
      .byt $02, $03
      .byt $12, $13
      .byt $22, $23

   leftFrame2Sprites:
      .byt $33
      .byt $02, $03
      .byt $14, $15
      .byt $24, $25

   leftFrame3Sprites:
      .byt $33
      .byt $02, $03
      .byt $16, $17
      .byt $26, $27

   leftFrameAttributes:
      .byt %01000110
      .byt %01000111, %01000111
      .byt %01000111, %01000111
      .byt %01000111, %01000111

   leftFrameOffsetX:
      .byt $02
      .byt $08, $00
      .byt $08, $00
      .byt $08, $00

   leftFrameOffsetY:
      .byt $00
      .byt $00, $00
      .byt $08, $08
      .byt $10, $10

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

    LDA #<leftFrame2Sprites
    STA frameSpritesLB
    LDA #>leftFrame2Sprites
    STA frameSpritesHB

    JSR drawFrame

    RTS
.endproc