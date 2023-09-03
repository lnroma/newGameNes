.segment "ZEROPAGE"

.segment "CODE"

empFrame0:
    .byt $70, $71
    .byt $80, $81
    .byt $90, $91
    .byt $A0, $A1

empFrame1:
    .byt $70, $71
    .byt $80, $81
    .byt $72, $73
    .byt $82, $83

empFrame2:
    .byt $70, $71
    .byt $80, $81
    .byt $74, $75
    .byt $84, $85

rightFrameOffsetSoldX:
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08

rightFrameOffsetSoldY:
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
    .byt $20, $20

soldairMaskRight:
    .byt %00000000, %00000000
    .byt %00000000, %00000000
    .byt %00000000, %00000000
    .byt %00000000, %00000000

.proc drawSoldairWalkRight
    LDA frameCounterEmp
    BEQ drawFrame0
    CMP #01
    BEQ drawFrame1
    CMP #02
    BEQ drawFrame0
    CMP #03
    BEQ drawFrame2

drawFrame0:
    JSR drawFrame0ProcRight
    RTS
drawFrame1:
    JSR drawFrame1ProcRight
    RTS
drawFrame2:
    JSR drawFrame2ProcRight
    RTS
.endproc

.proc commonSettingSoldairRight
    LDA #<rightFrameOffsetSoldX
    STA offsetXLB
    LDA #>rightFrameOffsetSoldX
    STA offsetXHB

    LDA #<rightFrameOffsetSoldY
    STA offsetYLB
    LDA #>rightFrameOffsetSoldY
    STA offsetYHB

    LDA #<soldairMaskRight
    STA attributeLB
    LDA #>soldairMaskRight
    STA attributeHB

    LDA #$08
    STA loopCount

    RTS
.endproc

.proc drawFrame0ProcRight
    LDA #<empFrame0
    STA objectLB
    LDA #>empFrame0
    STA objectHB

    JSR commonSettingSoldairRight
    JSR drawFramePPU

    RTS
.endproc

.proc drawFrame1ProcRight
    LDA #<empFrame1
    STA objectLB
    LDA #>empFrame1
    STA objectHB

    JSR commonSettingSoldairRight
    JSR drawFramePPU

    RTS
.endproc

.proc drawFrame2ProcRight
    LDA #<empFrame2
    STA objectLB
    LDA #>empFrame2
    STA objectHB

    JSR commonSettingSoldairRight
    JSR drawFramePPU

    RTS
.endproc

.proc drawSoldierAtakRight
    JSR drawSoldierStayRight
    RTS
.endproc

.proc drawSoldierStayRight
    LDA #<empFrame0
    STA objectLB
    LDA #>empFrame0
    STA objectHB

    JSR commonSettingSoldairRight
    JSR drawFramePPU

    RTS
.endproc
