.segment "CODE"

stayRightFire:
    .byt $17 ; pistol
    .byt $00, $01
    .byt $10, $11
    .byt $06, $07
    .byt $30, $31
stayRightFireOffsetsX:
    .byt $07
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
stayRightFireOffsetsY:
    .byt $0C
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayRightFireAttributes:
    .byt %00010111
    .byt %00010110, %00010110
    .byt %00010110, %00010110
    .byt %00010101, %00010101
    .byt %00010101, %00010101

.segment "CODE"

.proc heroFireRightFirstProc
  RTS
.endproc

.proc drawFireRight
    JSR drawFrameFireRight
    RTS
.endproc

.proc drawFrameFireRight
    LDX #00
    LDY #00
    frameDrawLoop:
        LDA heroYCoordinate
        CLC
        ADC stayRightFireOffsetsY, y
        STA $0200, x
        LDA stayRightFire, y
        INX
        STA $0200, x
        LDA stayRightFireAttributes, y
        INX
        STA $0200, x
        LDA heroXCoordinate
        CLC
        ADC stayRightFireOffsetsX, y
        INX
        STA $0200, x
        INX
        INY
        CPY #09
        BNE frameDrawLoop
    RTS
.endproc