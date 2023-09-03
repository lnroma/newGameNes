.segment "CODE"

.proc firstMapperFunctionsProcedure
    RTS
.endproc

.proc setPrgBank
    LDA #%00000110              ; $8000 Selection Bank = 6 (NOTE: Not HEX)
    STA $8000
    STX $8001           ; Select Bank LOW
;    LDA #7              ; $A000 Selection Bank = 6 (NOTE: Not HEX)
;    STA $8000
;    STY $8001           ; Select Bank HIGH

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
    LDA #$00
    STA $A000

    RTS
.endproc

.proc setHorizontalMirror
    LDA $01
    STA $A000

    RTS
.endproc

.proc writeToMapper
    LDA $00
    STA $8001

    RTS
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

.proc switchChr
    STA $8000
    STX $8001

    RTS
.endproc
