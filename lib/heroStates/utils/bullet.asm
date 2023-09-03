.segment "ZEROPAGE"
    isBullet: .res 3
    bulletX: .res 3
    bulletY: .res 3
    bulletCounter: .res 1
    bulletFlag: .res 1

.segment "CODE"

bulletFrame:
    .byt $16
bulletXOffset:
    .byt $00
bulletYOffset:
    .byt $00
bulletAttribute:
    .byt %01010111

.proc drawBulletFirst
    RTS
.endproc

.proc drawBullet
    LDA #<bulletFrame
    STA objectLB
    LDA #>bulletFrame
    STA objectHB

    LDA #<bulletXOffset
    STA offsetXLB
    LDA #>bulletXOffset
    STA offsetXHB

    LDA #<bulletYOffset
    STA offsetYLB
    LDA #>bulletYOffset
    STA offsetYHB

    LDA #<bulletAttribute
    STA attributeLB
    LDA #>bulletAttribute
    STA attributeHB

    LDX #$00
    loopDrawBullet:
        LDA bulletX, x
        STA tempX
        LDA bulletY, x
        STA tempY

        LDA #$01
        STA loopCount

        JSR drawFramePPU

        INX
        CPX #$03
        BNE loopDrawBullet

    RTS
.endproc

