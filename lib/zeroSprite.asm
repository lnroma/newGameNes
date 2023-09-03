.segment "ZEROPAGE"
.segment "CODE"

spriteZeroFrame:
    .byt $00
spriteZeroXOffset:
    .byt $00
spriteZeroYOffset:
    .byt $00
spriteZeroAttribute:
    .byt %01010111

.proc drawSpriteZero
    LDA #<spriteZeroFrame
    STA objectLB
    LDA #>spriteZeroFrame
    STA objectHB

    LDA #<spriteZeroXOffset
    STA offsetXLB
    LDA #>spriteZeroXOffset
    STA offsetXHB

    LDA #<spriteZeroYOffset
    STA offsetYLB
    LDA #>spriteZeroYOffset
    STA offsetYHB

    LDA #<spriteZeroAttribute
    STA attributeLB
    LDA #>spriteZeroAttribute
    STA attributeHB

    LDA #$20
    STA tempX
    LDA #$1F
    STA tempY

    JSR drawFramePPU

    RTS
.endproc

