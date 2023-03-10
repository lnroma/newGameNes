
.segment "RODATA"
regs:
        .byt $30,$08,$00,$00
        .byt $30,$08,$00,$00
        .byt $80,$00,$00,$00
        .byt $30,$00,$00,$00
        .byt $00,$00,$00,$00

periodTableLo:
  .byt $f1,$7f,$13,$ad,$4d,$f3,$9d,$4c,$00,$b8,$74,$34
  .byt $f8,$bf,$89,$56,$26,$f9,$ce,$a6,$80,$5c,$3a,$1a
  .byt $fb,$df,$c4,$ab,$93,$7c,$67,$52,$3f,$2d,$1c,$0c
  .byt $fd,$ef,$e1,$d5,$c9,$bd,$b3,$a9,$9f,$96,$8e,$86
  .byt $7e,$77,$70,$6a,$64,$5e,$59,$54,$4f,$4b,$46,$42
  .byt $3f,$3b,$38,$34,$31,$2f,$2c,$29,$27,$25,$23,$21
  .byt $1f,$1d,$1b,$1a,$18,$17,$15,$14

periodTableHi:
  .byt $07,$07,$07,$06,$06,$05,$05,$05,$05,$04,$04,$04
  .byt $03,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$02
  .byt $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
  .byt $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byt $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byt $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byt $00,$00,$00,$00,$00,$00,$00,$00

.segment "CODE"

.proc init_apu
        ; Init $4000-4013
        ldy #$13
  loop:  
        lda regs,y
        sta $4000,y
        dey
        bpl loop
 
        ; We have to skip over $4014 (OAMDMA)
        lda #$0f
        sta $4015
        lda #$40
        sta $4017
   
        rts
  .endproc

.proc playMusic
   pla
   tax
   lda periodTableHi,x
   lsr a
   sta $400B

   lda periodTableLo,x
   ror a
   sta $400A
   inx
   txa
   cmp #20
   beq resetX
   bne resetDone
   resetX:
   ldx #00
   txa
   resetDone:
   pha

   rts
.endproc