.segment "ZEROPAGE"
    objectLB: .res 1
    objectHB: .res 1
    offsetXLB: .res 1
    offsetXHB: .res 1
    offsetYLB: .res 1
    offsetYHB: .res 1
    attributeLB: .res 1
    attributeHB: .res 1
    tempX: .res 1
    tempY: .res 1
    loopCount: .res 1

.segment "CODE"

.proc drawFramePPU
    PHA
    TXA
    PHA
    TYA
    PHA

    LDY #$00
    LDX counterFrames
    frameDrawLoop:
        LDA tempY
        CLC
        ADC (offsetYLB), y
        STA $0200, x

        INX
        LDA (objectLB), y
        STA $0200, x

        INX
        LDA (attributeLB), y
        STA $0200, x

        INX
        LDA tempX
        CLC
        ADC (offsetXLB), y
        STA $0200, x

        INX
        INY
        CPY loopCount
        BNE frameDrawLoop
    STX counterFrames

    PLA
    TAY
    PLA
    TAX
    PLA

    RTS
.endproc