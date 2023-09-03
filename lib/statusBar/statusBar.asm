.segment "ZEROPAGE"
    reloadStatusBar1: .res 1
    reloadStatusBar2: .res 1
    twiceRedrawCounter1: .res 1
    twiceRedrawCounter2: .res 1

.segment "CODE"

statusBar:
    .byt $6A, $D2, $D3, $D4, $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6C, $6A, $D5, $D6, $D7, $6B, $6B, $6B, $6B, $6C, $6A, $D8, $D9, $DA, $6C
    .byt $6D, $70, $71, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $7D, $6D, $1B, $1B, $1B, $1B, $1B, $1B, $1B, $7D, $6D, $1c, $1c, $1c, $7D
    .byt $7A, $7E, $7F, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7C, $7A, $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7C, $7A, $7B, $7B, $7B, $7C

statusBarAttr:
    .byt $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .byt $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5

.proc drawStatusBarInNameTable
        LDX #$60              ; copy 1E - 30 bytes 18 - 24
        LDY #$00
    DrawStatusBar:
        LDA statusBar, y
        STA $2007
        INY
        DEX
        BNE DrawStatusBar

     RTS
.endproc

.proc drawStatusBar1
    LDY #$27
    JSR updateAttributes

    LDA reloadStatusBar1
    BEQ return

    LDA $2002             ; read PPU status to reset the high/low latch
    LDA #$27
    STA $2006             ; write the high byte of column address
    LDA #$40
    STA $2006             ; write the low byte of column address

    JSR drawStatusBarInNameTable

    DEC reloadStatusBar1

    return:
        RTS
.endproc

.proc drawStatusBar2
    LDY #$23
    JSR updateAttributes
    LDA reloadStatusBar2
    BEQ return

    LDA $2002             ; read PPU status to reset the high/low latch
    LDA #$23
    STA $2006             ; write the high byte of column address
    LDA #$40
    STA $2006             ; write the low byte of column address

    JSR drawStatusBarInNameTable
    DEC reloadStatusBar2

    return:
        RTS
.endproc

.proc updateAttributes
    LDA $2002
;    LDA #$23
    STY $2006
    LDA #$F0
    STA $2006
    LDX #$10
    updateAttrLoop:
        LDA statusBarAttr-1, x
        STA $2007
        DEX
        BNE updateAttrLoop

    RTS
.endproc