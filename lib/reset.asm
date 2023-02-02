.segment "CODE"

.proc resetProcedure


	sei
	ldx #0
	stx $2000		; обнуляем память
	stx $2001		; выключаем рендер
	stx $4010	; отключаем DMC
	dex 				; X = $FF
	txs					; Стэк равен = $FF
:	bit $2002
	bpl :-

	RTS
.endproc