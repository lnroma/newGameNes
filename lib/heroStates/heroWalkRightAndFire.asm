.segment "CODE"

rightAndFireFrameSprites:
    .byt $17 ; pistol
    .byt $02, $03
    .byt $12, $13
    .byt $18, $19
    .byt $32, $33

rightAndFireFrame2Sprites:
    .byt $17 ; pistol
    .byt $02, $03
    .byt $12, $13
    .byt $18, $19
    .byt $14, $15

rightAndFireFrame3Sprites:
    .byt $17 ; pistol
    .byt $02, $03
    .byt $12, $13
    .byt $18, $19
    .byt $32, $33

rightFireWalkOffsetX:
    .byt $0C
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08

rightFireWalkOffsetY:
    .byt $0C
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18

rightFireWalkOffsetYFrame2:
    .byt $0C
    .byt $01, $01
    .byt $09, $09
    .byt $10, $10
    .byt $18, $18

rightFireWalkAttributes:
    .byt %00010111
    .byt %00010110, %00010110
    .byt %00010110, %00010110
    .byt %00010101, %00010101
    .byt %00010101, %00010101

.segment "CODE"

.proc firstProcHeroWalkRightAndFire
  RTS
.endproc

.proc drawHeroRightAndFire
    LDX #$09
    JSR setPrgBank

    LDA scrollCounter
    AND #8
    CMP #1
    BEQ drawRightAndFireFrame1Label
    AND #8
    BEQ drawRightAndFireFrame2Label
    AND #10
    BEQ drawRightAndFireFrame3Label

  drawRightAndFireFrame1Label:
    JSR drawRightAndFireFrame1
    INC frameCountPlayerRightWalk
    RTS
  drawRightAndFireFrame2Label:
    JSR drawRightAndFireFrame2
    INC frameCountPlayerRightWalk
    RTS
  drawRightAndFireFrame3Label:
    JSR drawRightAndFireFrame3
    INC frameCountPlayerRightWalk
    RTS
.endproc

.proc commonInitFrameRightFire
    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<rightFireWalkOffsetX
    STA offsetXLB
    LDA #>rightFireWalkOffsetX
    STA offsetXHB

    LDA #<rightFireWalkOffsetY
    STA offsetYLB
    LDA #>rightFireWalkOffsetY
    STA offsetYHB

    LDA #<rightFireWalkAttributes
    STA attributeLB
    LDA #>rightFireWalkAttributes
    STA attributeHB


    RTS
.endproc

.proc drawRightAndFireFrame1
    JSR commonInitFrameRightFire

    LDA #<rightAndFireFrameSprites
    STA objectLB
    LDA #>rightAndFireFrameSprites
    STA objectHB

    LDA #$09
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc

.proc drawRightAndFireFrame2
     JSR commonInitFrameRightFire

     LDA #<rightFireWalkOffsetYFrame2
     STA offsetYLB
     LDA #>rightFireWalkOffsetYFrame2
     STA offsetYHB

     LDA #<rightAndFireFrame2Sprites
     STA objectLB
     LDA #>rightAndFireFrame2Sprites
     STA objectHB

     LDA #$09
     STA loopCount

     JSR drawFramePPU

     RTS
.endproc

.proc drawRightAndFireFrame3
    JSR commonInitFrameRightFire

    LDA #<rightAndFireFrame3Sprites
    STA objectLB
    LDA #>rightAndFireFrame3Sprites
    STA objectHB

    LDA #$09
    STA loopCount

    JSR drawFramePPU

    RTS
.endproc