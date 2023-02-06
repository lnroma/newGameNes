
.segment "RODATA"


.segment "CODE"
	
	BUTTON_A      = 1 << 7
	BUTTON_B      = 1 << 6
	BUTTON_SELECT = 1 << 5
	BUTTON_START  = 1 << 4
	BUTTON_UP     = 1 << 3
	BUTTON_DOWN   = 1 << 2
	BUTTON_LEFT   = 1 << 1
	BUTTON_RIGHT  = 1 << 0

.proc readJoyPad
  readJoyPad:
    LDX  #$00
    LDA  #$01
    STA  $4016
    LDA  #$00
    STA  $4016

    LDY #$08 ; счетчик для цикла
  readJoyCycle:
    LDA $4016,x
    LSR
    ROR joyState,x
    DEY
    BNE readJoyCycle

    RTS
.endproc

