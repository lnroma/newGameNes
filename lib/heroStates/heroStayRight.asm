.segment "RODATA"

stayRight:
    .byt $00, $01
    .byt $10, $11
    .byt $20, $21
    .byt $30, $31

stayRightOffsetsX:
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
stayRightOffsetsY:
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayRightAttributes:
    .byt %00010110, %00010110
    .byt %00010110, %00010110
    .byt %00010101, %00010101
    .byt %00010101, %00010101

.segment "CODE"

.proc heroStayFirstProc
  RTS
.endproc

.proc drawStayRight
    JSR drawFrameStay
    RTS
.endproc

.proc drawFrameStay
    LDX #00
    LDY #00
    frameDrawLoop:
        LDA heroYCoordinate
        CLC
        ADC stayRightOffsetsY, y
        STA $0200, x
        LDA stayRight, y
        INX
        STA $0200, x
        LDA stayRightAttributes, y
        INX
        STA $0200, x
        LDA heroXCoordinate
        CLC
        ADC stayRightOffsetsX, y
        INX
        STA $0200, x
        INX
        INY
        CPY #08
        BNE frameDrawLoop
    RTS
.endproc
