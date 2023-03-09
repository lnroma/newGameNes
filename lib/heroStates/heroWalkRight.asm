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

.segment "RODATA"
   frame1_sprites:
      .byt $33
      .byt $02, $03
      .byt $12, $13
      .byt $22, $23

   frame2_sprites:
      .byt $33
      .byt $02, $03
      .byt $14, $15
      .byt $24, $25

   frame3_sprites:
      .byt $33
      .byt $02, $03
      .byt $16, $17
      .byt $26, $27

   frame_attributes:
      .byt %00010110
      .byt %00010111, %00010111
      .byt %00010111, %00010111
      .byt %00010111, %00010111

   frame_offset_x:
      .byt $06
      .byt $00, $08
      .byt $00, $08
      .byt $00, $08

   frame_offset_y:
      .byt $00
      .byt $00, $00
      .byt $08, $08
      .byt $10, $10

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

.proc drawHeroRightWalk
    JSR commonInitFrame
    LDA scrollCounter
    AND #8
    CMP #1
    BEQ drawFrame1Label
    CMP #8
    BEQ drawFrame2Label
    CMP #10
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

.proc drawFrame
    LDX #00
    LDY #00
    frameDrawLoop:
        LDA heroYCoordinate
        CLC
        ADC (frameOffsetsYLB), y
        STA $0200, x
        LDA (frameSpritesLB), y
        INX
        STA $0200, x
        LDA (frameAttributesLB), y
        INX
        STA $0200, x
        LDA heroXCoordinate
        CLC
        ADC (frameOffsetsXLB), y
        INX
        STA $0200, x
        INX
        INY
        CPY #07
        BNE frameDrawLoop

    RTS
.endproc

.proc commonInitFrame
    LDA #<frame_attributes
    STA frameAttributesLB
    LDA #>frame_attributes
    STA frameAttributesHB

    LDA #<frame_offset_x
    STA frameOffsetsXLB
    LDA #>frame_offset_x
    STA frameOffsetsXHB

    LDA #<frame_offset_y
    STA frameOffsetsYLB
    LDA #>frame_offset_y
    STA frameOffsetsYHB

    RTS
.endproc

.proc drawFrame1
    LDA #<frame1_sprites
    STA frameSpritesLB
    LDA #>frame1_sprites
    STA frameSpritesHB

    JSR drawFrame
    RTS
.endproc

.proc drawFrame2
    LDA #<frame2_sprites
    STA frameSpritesLB
    LDA #>frame2_sprites
    STA frameSpritesHB

    JSR drawFrame
    RTS
.endproc

.proc drawFrame3
    LDA #<frame3_sprites
    STA frameSpritesLB
    LDA #>frame3_sprites
    STA frameSpritesHB

    JSR drawFrame
    RTS
.endproc