.segment "CODE"

.proc firstDebug
    RTS
.endproc

.proc debug
    LDA $2002             ; read PPU status to reset the high/low latch
    LDA #$20
    STA $2006             ; write the high byte of $2000 address
    LDA #$ED
    STA $2006             ; write the low byte of $2000 address

    LDA #$2F
    STA $2007
    RTS
.endproc

.proc unsetDebug
    LDA $2002             ; read PPU status to reset the high/low latch
    LDA #$20
    STA $2006             ; write the high byte of $2000 address
    LDA #$ED
    STA $2006             ; write the low byte of $2000 address

    LDA #$16
    STA $2007
    RTS
.endproc