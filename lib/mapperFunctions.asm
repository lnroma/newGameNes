.segment "CODE"

.proc firstMapperFunctionsProcedure
    RTS
.endproc

.proc setPrgBank
    STA $E000
    LSR
    STA $E000
    LSR
    STA $E000
    LSR
    STA $E000
    LSR
    STA $E000

    RTS
.endproc

.proc resetMapper
    LDA #$80 ; 1000001
    STA $8000

    RTS
.endproc

.proc resetMapperProcedure
    INC resetMapper

    RTS
.endproc

.proc setVerticalMirror
    JSR resetMapper
    LDA #%00001110    ; 8KB CHR, 16KB PRG, $8000-BFFF swappable, vertical mirroring
    JSR writeToMapper

    RTS
.endproc

.proc setHorizontalMirror
    JSR resetMapper
    LDA #%00001111    ; 8KB CHR, 16KB PRG, $8000-BFFF swappable, vertical mirroring
    JSR writeToMapper

    RTS
.endproc

.proc writeToMapper
    STA $8000         ; first data bit
    LSR A             ; shift to next bit
    STA $8000         ; second data bit
    LSR A             ; etc
    STA $8000
    LSR A
    STA $8000
    LSR A
    STA $8000         ; config bits written here, takes effect immediately

    RTS
.endproc

.proc changeChrZerro
    STA $A000         ; first data bit
    LSR A             ; shift to next bit
    STA $A000         ; second data bit
    LSR A             ; etc
    STA $A000
    LSR A
    STA $A000
    LSR A
    STA $A000         ; config bits written here, takes effect immediately

    RTS
.endproc

.proc changeChrFirst
    STA $C000         ; first data bit
    LSR A             ; shift to next bit
    STA $C000         ; second data bit
    LSR A             ; etc
    STA $C000
    LSR A
    STA $C000
    LSR A
    STA $C000         ; config bits written here, takes effect immediately

    RTS
.endproc

.proc changePrgBank
    STA $C000         ; first data bit
    LSR A             ; shift to next bit
    STA $C000         ; second data bit
    LSR A             ; etc
    STA $C000
    LSR A
    STA $C000
    LSR A
    STA $C000

    RTS
.endproc

