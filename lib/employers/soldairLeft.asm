.segment "ZEROPAGE"
    soldairX: .res 1
    soldairY: .res 1

    soldairDirection: .res 1

    soldairLB: .res 1
    soldairHB: .res 1

    tmpX: .res 1
    tmpY: .res 1
    frameCounterEmp: .res 1

.segment "RODATA"

empFrame0Left:
    .byt $71, $70
    .byt $81, $80
    .byt $91, $90
    .byt $A1, $A0

empFrame1Left:
    .byt $71, $70
    .byt $81, $80
    .byt $73, $72
    .byt $83, $82

empFrame2Left:
    .byt $71, $70
    .byt $81, $80
    .byt $75, $74
    .byt $85, $84

leftFrameOffsetSoldX:
      .byt $00, $08
      .byt $00, $08
      .byt $00, $08
      .byt $00, $08

leftFrameOffsetSoldY:
      .byt $08, $08
      .byt $10, $10
      .byt $18, $18
      .byt $20, $20

.segment "CODE"

.proc showSoldier
    LDA soldairX
    CLC
    JSR distEnemy

    STA tmpX

    LDA soldairY
    STA tmpY

    LDA soldairDirection
    BEQ soldairWalkRight
    BNE soldairWalkLeft

    soldairWalkRight:
        JSR drawSoldairWalkRight
    soldairWalkLeft:
        JSR drawSoldairWalkLeft

    JSR frameCounterProcEmp
    JSR frameCounterResetEmp

    RTS
.endproc

.proc distEnemy
    LDX soldairDirection
    CPX #00
    BEQ sbcX
sbcX:
    ADC #20
    RTS
adcX:
    SBC #20
    RTS
.endproc

.proc drawSoldairWalkLeft
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
    JSR drawFrame0Proc
    RTS
drawFrame1:
    JSR drawFrame1Proc
    RTS
drawFrame2:
    JSR drawFrame2Proc
    RTS
.endproc

.proc drawFrame0Proc
    LDA #<empFrame0Left
    STA soldairLB
    LDA #>empFrame0Left
    STA soldairHB

    JSR drawFrameSoldair

    RTS
.endproc

.proc drawFrame1Proc
    LDA #<empFrame1Left
    STA soldairLB
    LDA #>empFrame1Left
    STA soldairHB

    JSR drawFrameSoldair

    RTS
.endproc

.proc drawFrame2Proc
    LDA #<empFrame2Left
    STA soldairLB
    LDA #>empFrame2Left
    STA soldairHB

    JSR drawFrameSoldair

    RTS
.endproc

.proc drawSoldierAtak
    JSR drawSoldierStay
    RTS
.endproc

.proc drawSoldierStay
    LDA #<empFrame0Left
    STA soldairLB
    LDA #>empFrame0Left
    STA soldairHB

    JSR drawFrameSoldair

    RTS
.endproc

.proc destroySoldier
    LDX #00
    clearLoop:
        LDA #00
        STA $0224, x
        INX
        CPY #09
        BNE clearLoop
    RTS
.endproc

.proc drawFrameSoldair
    TXA
    PHA
    TYA
    PHA

    LDX #00
    LDY #00
    frameDrawLoop:
        LDA tmpY
        CLC
        ADC leftFrameOffsetSoldY, y
        STA $0224, x
        LDA (soldairLB), y
        INX
        STA $0224, x
        LDA #%01000000
        INX
        STA $0224, x
        LDA tmpX
        CLC
        ADC leftFrameOffsetSoldX, y
        INX
        STA $0224, x
        INX
        INY
        CPY #08
        BNE frameDrawLoop
    PLA
    TAY
    PLA
    TAX

    RTS
.endproc

.proc frameCounterProcEmp
    LDA nmiCounter
    BEQ incrementFrameCounter
    BNE return
incrementFrameCounter:
    INC frameCounterEmp
return:
    RTS
.endproc

.proc frameCounterResetEmp
    LDA frameCounterEmp
    CMP #04
    BEQ resetToZero
    RTS
resetToZero:
    LDA #00
    STA frameCounterEmp
    RTS
.endproc