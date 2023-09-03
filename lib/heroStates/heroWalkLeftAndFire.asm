.segment "CODE"


leftAndFireFrameSprites:
    .byt $17 ; pistol
    .byt $02, $03
    .byt $12, $13
    .byt $18, $19
    .byt $32, $33

leftAndFireFrame2Sprites:
    .byt $17 ; pistol
    .byt $02, $03
    .byt $12, $13
    .byt $18, $19
    .byt $14, $15

leftAndFireFrame3Sprites:
    .byt $17 ; pistol
    .byt $02, $03
    .byt $12, $13
    .byt $18, $19
    .byt $32, $33

leftFireWalkOffsetX:
    .byt $00
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
leftFireWalkOffsetY:
    .byt $0C
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
leftFireWalkOffsetYFrame2:
    .byt $0C
    .byt $01, $01
    .byt $09, $09
    .byt $10, $10
    .byt $18, $18
leftFireWalkAttributes:
    .byt %01010111
    .byt %01010110, %01010110
    .byt %01010110, %01010110
    .byt %01010101, %01010101
    .byt %01010101, %01010101

.segment "CODE"

.proc firstProcHeroWalkLeftAndFire
  RTS
.endproc

.proc drawHeroLeftAndFire
    LDA scrollCounter
    AND #8
    CMP #1
    BEQ drawLeftAndFireFrame1Label
    AND #8
    BEQ drawLeftAndFireFrame2Label
    AND #10
    BEQ drawLeftAndFireFrame3Label

  drawLeftAndFireFrame1Label:
    JSR drawLeftAndFireFrame1
    INC frameCountPlayerRightWalk
    RTS
  drawLeftAndFireFrame2Label:
    JSR drawLeftAndFireFrame2
    INC frameCountPlayerRightWalk
    RTS
  drawLeftAndFireFrame3Label:
    JSR drawLeftAndFireFrame3
    INC frameCountPlayerRightWalk
    RTS
.endproc

.proc commonInitFrameLeftFire
    LDX #$09
    JSR setPrgBank

    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<leftFireWalkOffsetX
    STA offsetXLB
    LDA #>leftFireWalkOffsetX
    STA offsetXHB

    LDA #<leftFireWalkOffsetY
    STA offsetYLB
    LDA #>leftFireWalkOffsetY
    STA offsetYHB

    LDA #<leftFireWalkAttributes
    STA attributeLB
    LDA #>leftFireWalkAttributes
    STA attributeHB

    RTS
.endproc

.proc drawLeftAndFireFrame1
    JSR commonInitFrameLeftFire

    LDA #<leftAndFireFrameSprites
    STA objectLB
    LDA #>leftAndFireFrameSprites
    STA objectHB

    LDA #$09
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc

.proc drawLeftAndFireFrame2
    JSR commonInitFrameLeftFire

    LDA #<leftFireWalkOffsetYFrame2
    STA offsetYLB
    LDA #>leftFireWalkOffsetYFrame2
    STA offsetYHB

    LDA #<leftAndFireFrame2Sprites
    STA objectLB
    LDA #>leftAndFireFrame2Sprites
    STA objectHB

    LDA #$09
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc

.proc drawLeftAndFireFrame3
    JSR commonInitFrameLeftFire

    LDA #<leftAndFireFrame3Sprites
    STA objectLB
    LDA #>leftAndFireFrame3Sprites
    STA objectHB

    LDA #$09
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc