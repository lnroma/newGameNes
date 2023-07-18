.segment "CODE"

stayLeft:
    .byt $00, $01
    .byt $10, $11
    .byt $20, $21
    .byt $30, $31
stayLeftOffsetsX:
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
stayLeftOffsetsY:
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayLeftAttributes:
    .byt %01010110, %01010110
    .byt %01010110, %01010110
    .byt %01010101, %01010101
    .byt %01010101, %01010101

.segment "CODE"

.proc heroStayLeftFirstProc
  RTS
.endproc

.proc drawStayLeft
    JSR drawFrameStayLeft
    RTS
.endproc

.proc drawFrameStayLeft
    LDX #00
    LDY #00
    frameDrawLoop:
        LDA heroYCoordinate
        CLC
        ADC stayLeftOffsetsY, y
        STA $0200, x
        LDA stayLeft, y
        INX
        STA $0200, x
        LDA stayLeftAttributes, y
        INX
        STA $0200, x
        LDA heroXCoordinate
        CLC
        ADC stayLeftOffsetsX, y
        INX
        STA $0200, x
        INX
        INY
;        CPY #09
        CPY #08
        BNE frameDrawLoop
    RTS
.endproc
