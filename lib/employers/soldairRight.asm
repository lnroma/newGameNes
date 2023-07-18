.segment "ZEROPAGE"

.segment "RODATA"

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

.segment "CODE"

.proc drawSoldairWalkRight
    ;JSR drawSoldierStay

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

.proc drawFrame0ProcRight
    LDA #<empFrame0
    STA soldairLB
    LDA #>empFrame0
    STA soldairHB

    JSR drawFrameSoldairRight

    RTS
.endproc

.proc drawFrame1ProcRight
    LDA #<empFrame1
    STA soldairLB
    LDA #>empFrame1
    STA soldairHB

    JSR drawFrameSoldairRight

    RTS
.endproc

.proc drawFrame2ProcRight
    LDA #<empFrame2
    STA soldairLB
    LDA #>empFrame2
    STA soldairHB

    JSR drawFrameSoldairRight

    RTS
.endproc

.proc drawSoldierAtakRight
    JSR drawSoldierStayRight
    RTS
.endproc

.proc drawSoldierStayRight
    LDA #<empFrame0
    STA soldairLB
    LDA #>empFrame0
    STA soldairHB

    JSR drawFrameSoldairRight

    RTS
.endproc

.proc destroySoldierRight
    LDX #00
    clearLoop:
        LDA #00
        STA $0224, x
        INX
        CPY #09
        BNE clearLoop
    RTS
.endproc

.proc drawFrameSoldairRight
    LDX #00
    LDY #00
    frameDrawLoop:
        LDA tmpY
        CLC
        ADC rightFrameOffsetSoldY, y
        STA $0224, x
        LDA (soldairLB), y
        INX
        STA $0224, x
        LDA #%00000000
        INX
        STA $0224, x
        LDA tmpX
        CLC
        ADC rightFrameOffsetSoldX, y
        INX
        STA $0224, x
        INX
        INY
        CPY #08
        BNE frameDrawLoop
    RTS
.endproc