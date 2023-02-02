.segment "RODATA"
	palette_data:
  		.byt $09,$0A,$0C,$0D,  $21,$0C,$08,$28,  $21,$1C,$29,$07,  $31,$3F,$3c,$02   ;;background
  		.byt $32,$29,$1A,$0F,  $32,$36,$17,$0F,  $32,$30,$21,$0F,  $32,$27,$17,$0F   ;;sprite palette

.segment "CODE"

.proc loadPalete
  LoadPalettes:
    LDA $2002
    LDA #$3F
    STA $2006             ; говорим ppu что нам необходим адрес 3F00 здесь храниться палитра
    LDA #$00
    STA $2006             ; Сначала старший байт записываем 3F потом младший 00 при записи этот адрес будет автоматически увеличиваться

    LDX #$00              ; X = 0
  LoadPalettesLoop:
    LDA palette_data, x
    STA $2007             ; записываем в ppu по факту в адрес 3F00
    INX                   ; X = X + 1
    CPX #$20
    BNE LoadPalettesLoop
    RTS
.endproc