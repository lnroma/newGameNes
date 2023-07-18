.segment "ZEROPAGE"
    bulletX: .res 3
    bulletY: .res 3
    bulletCounter: .res 1
    changeAttribute: .res 1

.segment "CODE"

stayLeftFire:
    .byt $17 ; pistol
    .byt $00, $01
    .byt $10, $11
    .byt $06, $07
    .byt $30, $31
stayLeftFireOffsetsX:
    .byt $02
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
stayLeftFireOffsetsY:
    .byt $0C
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayLeftFireAttributes:
    .byt %01010111
    .byt %01010110, %01010110
    .byt %01010110, %01010110
    .byt %01010101, %01010101
    .byt %01010101, %01010101

.segment "CODE"

.proc heroFireLeftFirstProc
  RTS
.endproc

.proc drawFireLeft
    JSR drawFrameFireLeft
    RTS
.endproc

.proc drawBullet
    LDX #$01
    LDA bulletY, x
    STA $0230
    LDA #$16
    STA $0231
    LDA #%01010111
    STA $0232
    LDA bulletX, x
    STA $0233

    RTS
.endproc

.proc clearBullet
    LDA #$00
    STA $021D
    STA $021E
    STA $021F
    STA $0220

    RTS
.endproc

.proc animateBullet
    LDA nmiCounter
    BEQ attributeChange
attributeChange:
    LDA changeAttribute
    EOR #$01
    STA changeAttribute
    RTS

    LDA changeAttribute
    BEQ changeOne
    BNE changeTwo

    changeOne:
        LDA #%01010110
        RTS
    changeTwo:
        LDA #%01010111
        RTS
.endproc

.proc drawFrameFireLeft
    LDX #00
    LDY #00
    frameDrawLoop:
        LDA heroYCoordinate
        CLC
        ADC stayLeftFireOffsetsY, y
        STA $0200, x
        LDA stayLeftFire, y
        INX
        STA $0200, x
        LDA stayLeftFireAttributes, y
        INX
        STA $0200, x
        LDA heroXCoordinate
        CLC
        ADC stayLeftFireOffsetsX, y
        INX
        STA $0200, x
        INX
        INY
        CPY #09
        BNE frameDrawLoop
    RTS
.endproc

.proc clearFire
    LDX #00
    LDY #00
    STX bulletCounter
    frameDrawLoop:
        LDA $00
        STA $0200, x
        INX
        STA $0200, x
        INX
        STA $0200, x
        INX
        STA $0200, x
        INX
        CPY #09
        BNE frameDrawLoop
    RTS
.endproc