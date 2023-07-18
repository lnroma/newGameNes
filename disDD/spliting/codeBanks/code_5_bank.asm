; da65 V2.18 - N/A
; Created:    2023-07-17 12:53:33
; Input file: code_bank_5.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0030           := $0030
L00DD           := $00DD
L00E0           := $00E0
L00E9           := $00E9
L00F0           := $00F0
L010C           := $010C
L016D           := $016D
L03E3           := $03E3
L0401           := $0401
L0880           := $0880
L1321           := $1321
L1800           := $1800
L2000           := $2000
L2008           := $2008
L2018           := $2018
L20EC           := $20EC
L20F0           := $20F0
L20F8           := $20F8
L20FC           := $20FC
L2100           := $2100
L2723           := $2723
L280C           := $280C
L2810           := $2810
L2818           := $2818
L2820           := $2820
L3001           := $3001
L3800           := $3800
L40EF           := $40EF
L4810           := $4810
L6C6E           := $6C6E
L6D02           := $6D02
L7568           := $7568
L7C68           := $7C68
L7E66           := $7E66
L802F           := $802F
L80C7           := $80C7
L817C           := $817C
L826C           := $826C
L83EC           := $83EC
L83EE           := $83EE
        inc     $95
        .byte   $A5
LC003:  sta     $4A,x
        bcs     LC01C
        ldx     #$00
        stx     $96
LC00B:  lda     $04D0,x
        bpl     LC013
        jsr     L802F
LC013:  inc     $96
        ldx     $96
        cpx     #$10
        bne     LC00B
        rts

LC01C:  ldx     #$0F
        stx     $96
LC020:  lda     $04D0,x
        bpl     LC028
        jsr     L802F
LC028:  dec     $96
        ldx     $96
        bpl     LC020
        rts

        lda     $0400,x
        and     #$10
        bne     LC039
        jmp     L80C7

LC039:  lda     $04F0,x
        sec
        sbc     $FC
        sta     $0450,x
        lda     $0500,x
        sbc     $FD
        bne     LC096
        lda     $0510,x
        sec
        sbc     $FA
        bcs     LC054
        sbc     #$0F
        clc
LC054:  sta     $0440,x
        lda     $0520,x
        sbc     $FB
        beq     LC0D3
        cpx     #$01
        bcs     LC07A
        pha
        lda     $0400,x
        and     #$7F
        sta     $0400,x
        pla
        cmp     #$01
        bne     LC0E1
        lda     #$00
        sta     $7C
        lda     #$07
        sta     $50
        bne     LC07A
LC07A:  lda     #$00
        sta     $04D0,x
        sta     $04C0,x
        sta     $0570,x
        lda     #$FF
        sta     $0590,x
        rts

        lda     #$00
        sta     $04D0
        lda     #$FF
        sta     $0590
        rts

LC096:  lda     $0450,x
        bcs     LC09F
        eor     #$FF
        adc     #$01
LC09F:  cmp     #$10
        bcs     LC07A
        lda     $0420,x
        cmp     #$13
        beq     LC07A
        cmp     #$14
        beq     LC07A
        cmp     #$17
        beq     LC07A
        cmp     #$18
        beq     LC07A
        cmp     #$19
        beq     LC07A
        cmp     #$29
        beq     LC07A
        lda     $0400,x
        and     #$7F
        sta     $0400,x
        rts

        lda     $04F0,x
        sta     $0450,x
        lda     $0510,x
        sta     $0440,x
LC0D3:  lda     $0400,x
        ora     #$80
        sta     $0400,x
        lda     $0420,x
        bne     LC0E1
        rts

LC0E1:  cpx     #$00
        bne     LC0F2
        lda     $7C
        beq     LC0F2
        dec     $7C
        lda     $95
        and     #$04
        bne     LC0F2
        rts

LC0F2:  ldy     #$00
        lda     $0400,x
        and     #$40
        sta     $10
        beq     LC0FE
        iny
LC0FE:  sty     $11
        ldy     $0420,x
        lda     $B429,y
        sta     L0000
        lda     $B4F0,y
        .byte   $85
LC10C:  ora     ($BD,x)
        bmi     $C114
        bmi     LC136
        and     #$7F
        inc     $0430,x
        ldy     #$01
        cmp     (L0000),y
        bne     LC136
        lda     #$00
        sta     $0430,x
        dey
        lda     (L0000),y
        and     #$7F
        cmp     $0410,x
        php
        inc     $0410,x
        plp
        bne     LC136
        lda     #$00
        sta     $0410,x
LC136:  lda     $0400,x
        and     #$08
        bne     LC142
        lda     $0400,x
        bmi     LC143
LC142:  rts

LC143:  lda     $0410,x
        and     #$7F
        clc
        adc     #$02
        tay
        lda     (L0000),y
LC14E:  sta     $02
        bne     LC15B
        sta     $04D0,x
        lda     #$FF
        sta     $0590,x
        rts

LC15B:  ldy     #$00
        lda     (L0000),y
        bpl     LC170
        ldy     $02
        lda     $9C0B,y
        sta     $02
        lda     $9D45,y
        sta     $03
        jmp     L817C

LC170:  ldy     $02
        lda     $9B0B,y
        sta     $02
        lda     $9C45,y
        sta     $03
        lda     $0450,x
        sta     $13
        lda     $0440,x
        sta     $12
        ldy     #$00
        lda     ($02),y
        sta     $04
        iny
        lda     ($02),y
        clc
        adc     $11
        pha
        lda     $0400,x
        and     #$20
        sta     $11
        pla
        tax
        lda     $AE53,x
        sec
        sbc     #$02
        sta     $05
        lda     $AF23,x
        sbc     #$00
        sta     $06
        ldx     $97
        beq     LC1EF
LC1AF:  iny
        lda     ($02),y
        sta     $0201,x
        lda     $12
        clc
        adc     ($05),y
        sta     $0200,x
        lda     ($05),y
        bmi     LC1C5
        bcc     LC1C7
        bcs     LC1F0
LC1C5:  bcc     LC1F0
LC1C7:  iny
        lda     ($02),y
        eor     $10
        ora     $11
        sta     $0202,x
        lda     $13
        clc
        adc     ($05),y
        sta     $0203,x
        lda     ($05),y
        bmi     LC1E1
        bcc     LC1E3
        bcs     LC1F1
LC1E1:  bcc     LC1F1
LC1E3:  inx
        inx
        inx
        inx
        stx     $97
        beq     LC1EF
LC1EB:  dec     $04
        bpl     LC1AF
LC1EF:  rts

LC1F0:  iny
LC1F1:  lda     #$F8
        sta     $0200,x
        bne     LC1EB
        brk
        brk
        brk
        brk
        .byte   $0B
        brk
        .byte   $0C
        ora     ($0B,x)
        brk
        ora     (L0000,x)
        .byte   $02
        ora     ($03,x)
        brk
        .byte   $04
        brk
        ora     $01
        asl     $01
        .byte   $07
        ora     ($08,x)
        ora     ($09,x)
        ora     ($0A,x)
        brk
        .byte   $0B
        .byte   $02
        .byte   $0C
        ora     ($0B,x)
        brk
        ora     (L0000,x)
        .byte   $02
        ora     ($4C,x)
        brk
        .byte   $04
        brk
        ora     $01
        asl     $01
        ora     $0E01
        ora     ($0F,x)
        ora     ($10,x)
        ora     ($0A,x)
        .byte   $04
        .byte   $0C
        ora     ($01,x)
        brk
        ora     ($01),y
        .byte   $12
        ora     ($03,x)
        brk
        .byte   $04
        brk
        .byte   $13
        brk
        .byte   $14
        ora     ($15,x)
        ora     ($16,x)
        brk
        .byte   $17
        ora     ($0C,x)
        asl     $0C
        ora     ($01,x)
        brk
        clc
        ora     ($19,x)
        ora     ($03,x)
        brk
        .byte   $04
        brk
        .byte   $1A
        brk
        .byte   $1B
        ora     ($15,x)
        ora     ($16,x)
        brk
        .byte   $1C
        ora     ($1D,x)
        ora     ($1E,x)
        ora     ($0C,x)
        asl     $0C
        ora     ($01,x)
        brk
        .byte   $1F
        ora     ($12,x)
        ora     ($03,x)
        brk
LC270:  .byte   $04
        brk
        jsr     L2100
        ora     ($15,x)
        ora     ($16,x)
        brk
LC27A:  .byte   $22
        ora     ($23,x)
        ora     ($6D,x)
        ora     ($0C,x)
        php
        bmi     LC285
        .byte   $24
LC285:  brk
        and     L0000
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        rol     a
        ora     ($2B,x)
        ora     ($2C,x)
        ora     ($2D,x)
        ora     ($2E,x)
        ora     ($2F,x)
LC29B:  ora     ($0B,x)
        php
        bmi     LC2A1
        .byte   $24
LC2A1:  brk
        and     L0000
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        and     ($01),y
        .byte   $32
        ora     ($2C,x)
        ora     ($2D,x)
        ora     ($33,x)
        ora     ($0C,x)
        asl     a
        .byte   $0C
        ora     ($0B,x)
        brk
        .byte   $6B
        brk
        ora     (L0000,x)
        .byte   $02
        ora     ($03,x)
        brk
        .byte   $04
        brk
        ora     $01
        asl     $01
        .byte   $34
        ora     ($08,x)
        ora     ($09,x)
        ora     ($35,x)
        ora     ($09,x)
        .byte   $0C
        .byte   $0C
        ora     ($0B,x)
        .byte   $80
        ora     (L0000,x)
        .byte   $37
        ora     ($4C,x)
        brk
        .byte   $04
        brk
        and     $3A01,y
        ora     ($3B,x)
        brk
        sec
        ora     ($07,x)
        asl     LC10C
        .byte   $3C
        ora     ($3D,x)
        ora     ($3E,x)
        brk
        .byte   $3F
        brk
        rti

        ora     ($41,x)
        brk
        .byte   $42
        brk
        ora     #$12
        .byte   $0C
        ora     ($0B,x)
        .byte   $80
        .byte   $6B
        brk
        ora     (L0000,x)
        .byte   $43
        ora     ($4C,x)
        brk
        .byte   $04
        brk
        rti

        ora     ($3A,x)
        ora     ($44,x)
        ora     ($09,x)
        asl     LC10C
        .byte   $3C
        ora     ($3D,x)
        ora     ($3E,x)
        brk
        .byte   $3F
        brk
        rti

        ora     ($41,x)
        brk
        .byte   $42
        brk
        .byte   $47
        brk
        .byte   $47
        brk
        asl     a
        bpl     LC335
        cmp     ($3C,x)
        ora     ($45,x)
        brk
        lsr     L0000
        eor     $40
        and     $3E01,x
LC335:  brk
        .byte   $3F
        brk
        rti

        ora     ($41,x)
        brk
        .byte   $42
        brk
        .byte   $0C
        .byte   $14
        .byte   $0C
        ora     (L0000,x)
        brk
        bit     L0000
        eor     #$00
        lsr     a
        brk
        .byte   $4B
        brk
        pha
        brk
LC34E:  .byte   $52
        ora     ($4D,x)
        ora     ($4E,x)
        ora     ($4F,x)
        ora     ($50,x)
        ora     ($51,x)
        ora     ($02,x)
        asl     $45,x
        brk
        lsr     L0000
        eor     $40
        ora     ($18,x)
        .byte   $47
        brk
        .byte   $47
        rti

        .byte   $0B
        asl     L010C,x
        .byte   $0B
        brk
        .byte   $53
        brk
        .byte   $54
        brk
        .byte   $03
        brk
        .byte   $04
        brk
        eor     $01,x
        lsr     $01,x
        .byte   $57
        ora     ($58,x)
        ora     ($59,x)
        ora     ($5A,x)
        ora     ($0B,x)
        asl     L010C,x
        brk
        brk
        .byte   $53
        brk
        .byte   $54
        brk
        .byte   $03
        brk
        .byte   $04
        brk
        .byte   $5B
        ora     ($56,x)
        ora     ($5C,x)
        ora     ($58,x)
        ora     ($59,x)
LC399:  ora     ($5A,x)
        ora     ($0B,x)
        jsr     L010C
        rol     L0000,x
        .byte   $53
        brk
        .byte   $54
        brk
        .byte   $03
        brk
        .byte   $04
LC3A9:  brk
        eor     $5E01,x
        ora     ($5F,x)
        ora     ($58,x)
        ora     ($59,x)
LC3B3:  ora     ($5A,x)
        ora     ($0C,x)
        asl     L010C,x
        plp
        brk
        ora     (L0000,x)
        .byte   $54
        brk
LC3C0:  .byte   $03
        brk
        .byte   $04
        brk
        adc     ($01,x)
        lsr     $01,x
        .byte   $62
        ora     ($58,x)
        ora     ($59,x)
        ora     ($5A,x)
        ora     ($60,x)
        ora     ($0C,x)
        rol     L0030
        ora     ($6E,x)
        ora     ($24,x)
        brk
        .byte   $63
        brk
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        .byte   $64
        ora     ($28,x)
        rti

        adc     $01
        eor     ($01),y
        ror     $01
        .byte   $0C
        plp
        jmp     (L3001)

        ora     ($24,x)
        brk
        .byte   $63
        brk
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        .byte   $64
        ora     ($28,x)
        rti

        adc     $01
        eor     ($01),y
        ror     $01
        .byte   $0C
        .byte   $22
        bmi     LC40F
        .byte   $24
LC40F:  brk
        and     L0000
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        and     ($01),y
        .byte   $32
        ora     ($67,x)
        ora     ($68,x)
        ora     ($66,x)
        ora     ($69,x)
        ora     ($0C,x)
        .byte   $22
        bmi     LC42B
        .byte   $24
LC42B:  brk
        and     L0000
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        and     ($01),y
        .byte   $32
        ora     ($65,x)
        ora     ($33,x)
        ora     ($66,x)
        ora     ($69,x)
        ora     ($0C,x)
        rol     L0030
        ora     ($6E,x)
        ora     ($24,x)
        brk
        .byte   $63
        brk
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        ror     a
        ora     ($6B,x)
        brk
        adc     $01
        eor     ($01),y
        ror     $01
        .byte   $0C
        plp
        jmp     (L3001)

        ora     ($24,x)
        brk
        .byte   $63
        brk
        rol     L0000
        .byte   $27
        brk
        plp
        brk
        and     #$01
        ror     a
        ora     ($6B,x)
        brk
        adc     $01
        eor     ($01),y
        ror     $01
        brk
        .byte   $1A
        sta     L0000
        .byte   $03
        .byte   $1C
        sty     L0000
        sty     $40
        sty     $80
        sty     $C0
        brk
        .byte   $1A
        sta     L0000
        .byte   $03
        .byte   $1C
        stx     L0000
        .byte   $87
        brk
        .byte   $87
        cpy     #$86
        cpy     #$03
        .byte   $1C
        dey
        brk
        .byte   $89
        brk
        .byte   $89
        cpy     #$88
        cpy     #$03
        .byte   $1C
        txa
        brk
        txa
        rti

        txa
        .byte   $80
        txa
        cpy     #$02
        rol     a:$8B
        sty     $8D00
        brk
        sta     $01
        brk
        .byte   $1A
        stx     a:$80
        .byte   $1A
        stx     a:$81
        .byte   $1A
        .byte   $8E
        brk
LC4C0:  brk
        .byte   $1A
        stx     $0301
        .byte   $1C
        sta     $9900,y
        rti

        txs
        brk
        txs
        rti

        .byte   $03
        .byte   $1C
        .byte   $9B
        brk
        .byte   $9B
        rti

        .byte   $9C
        brk
        .byte   $9C
        rti

        .byte   $03
        .byte   $1C
        .byte   $6F
        brk
        .byte   $6F
        rti

        .byte   $7F
        ora     ($7F,x)
        eor     ($01,x)
        .byte   $1A
        adc     (L0000),y
        .byte   $9E
        brk
        ora     ($1A,x)
        adc     L0000,x
        .byte   $9E
        brk
        ora     ($1A,x)
        adc     (L0000),y
        sta     $0300,x
        .byte   $1C
        bcc     LC4F8
LC4F8:  bcc     LC53A
        sta     (L0000),y
        sta     ($40),y
        ora     ($2A,x)
LC500:  .byte   $92
        brk
        .byte   $93
        brk
        .byte   $03
        .byte   $1C
        sty     L0000,x
        sty     $40,x
        sta     L0000,x
        stx     L0000,y
        ora     ($2A,x)
        .byte   $97
        brk
        tya
        brk
        ora     $1C
        .byte   $8B
        brk
        sta     $9F00
        .byte   $80
        .byte   $9F
        cpy     #$9F
        brk
        .byte   $9F
        rti

        ora     $1C
        .byte   $8B
        ora     ($8D,x)
        ora     ($9F,x)
        sta     ($9F,x)
        cmp     ($9F,x)
        ora     ($9F,x)
        eor     ($04,x)
        bit     a:$9F
        .byte   $9F
        rti

        sta     L0000
        .byte   $9F
        .byte   $80
LC53A:  .byte   $9F
        cpy     #$04
        bit     $019F
        .byte   $9F
        eor     ($85,x)
        ora     ($9F,x)
        sta     ($9F,x)
        cmp     ($04,x)
        bit     a:$9F
        .byte   $9F
        rti

        stx     $9F00
        .byte   $80
        .byte   $9F
        cpy     #$04
        bit     $019F
        .byte   $9F
        eor     ($8E,x)
        ora     ($9F,x)
        sta     ($9F,x)
        cmp     ($02,x)
        rol     $018B
        sty     $8D01
        ora     ($08,x)
        tsx
        .byte   $E3
        .byte   $02
        cpx     #$02
        sbc     ($02,x)
        cpx     #$42
        .byte   $E2
        .byte   $02
        .byte   $E2
        .byte   $42
        cpx     #$82
        sbc     ($82,x)
        cpx     #$C2
        .byte   $07
        tsx
        .byte   $EF
        .byte   $02
        .byte   $EB
        brk
        cpx     LED02
        .byte   $02
        inc     LF002
        brk
        sbc     ($02),y
        .byte   $F2
        .byte   $02
        ora     #$BA
        lda     $03
        lda     ($03,x)
        ldx     #$03
        .byte   $A3
        .byte   $03
        ldy     $03
        ldx     $03
        .byte   $A7
        .byte   $03
        tay
        .byte   $03
        lda     #$03
        ldy     #$03
        ora     #$BC
        lda     ($03,x)
        ldx     #$03
        .byte   $A3
        .byte   $03
        ldy     $03
        lda     $03
        ldx     $03
        tax
        .byte   $03
        .byte   $AB
        .byte   $03
        ldy     $A003
        .byte   $03
        ora     #$BC
        lda     ($03,x)
        ldx     #$03
        .byte   $A3
        .byte   $03
LC5C2:  ldy     $03
        lda     $03
        ldx     $03
        lda     $AE03
        .byte   $03
        .byte   $AF
        .byte   $03
        ldy     #$03
        ora     $BE
        bcs     LC5D7
        lda     ($03),y
        .byte   $B0
LC5D7:  .byte   $43
        .byte   $B2
        .byte   $03
        .byte   $B3
        .byte   $03
        .byte   $B2
        .byte   $43
        ora     $BE
        ldy     $03,x
        lda     $03,x
        ldy     $43,x
        ldx     $03,y
        .byte   $B7
        .byte   $03
        ldx     $43,y
        asl     a
        tsx
        .byte   $A7
        .byte   $02
        ldx     #$00
        .byte   $A3
        brk
        ldy     L0000
        ldx     $02
        tay
        .byte   $02
        lda     #$02
        tax
        .byte   $02
        .byte   $AB
        .byte   $02
        lda     (L0000,x)
        lda     L0000
        asl     a
        tsx
        .byte   $A7
        .byte   $02
        ldx     #$00
        .byte   $A3
        brk
        ldy     L0000
        ldx     $02
        tay
        .byte   $02
        brk
        .byte   $02
        clv
        .byte   $02
        lda     $A102,y
        brk
        lda     L0000
        asl     a
        ldy     a:$A2,x
        tsx
        brk
        .byte   $BB
        .byte   $02
        ldx     $02
        .byte   $A7
        .byte   $02
        ldy     $BD02,x
        .byte   $02
        ldx     $BF02,y
        .byte   $02
        lda     (L0000,x)
        lda     L0000
        asl     a
        ldy     a:$A2,x
        .byte   $A3
        brk
        cpy     #$00
        ldx     $02
        .byte   $A7
        .byte   $02
        cmp     ($02,x)
        .byte   $C2
        .byte   $02
        .byte   $C3
        .byte   $02
        cpy     $02
        lda     (L0000,x)
        lda     L0000
        .byte   $0B
        cpy     $B1
        .byte   $02
        .byte   $B2
        .byte   $02
        ldy     $02,x
        lda     $02,x
        lda     $AE00
        brk
        brk
        brk
        .byte   $B7
        .byte   $02
        ldy     $AF02
        .byte   $02
        bcs     LC666
        .byte   $B3
        .byte   $02
LC666:  asl     a
        tsx
        cmp     #$02
        cmp     L0000
        dec     L0000
        .byte   $C7
        brk
        iny
        .byte   $02
        dex
        .byte   $02
        lda     #$02
        tax
        .byte   $02
        .byte   $AB
        .byte   $02
        ldx     L0000,y
        lda     L0000
        brk
        tsx
        ror     $0702,x
        .byte   $1C
        bne     LC687
        .byte   $D0
LC687:  eor     ($D1,x)
        ora     ($D1,x)
        eor     (L0000,x)
        brk
        brk
        brk
        .byte   $D2
        ora     ($D2,x)
        eor     ($07,x)
        ldx     $01D4,y
        cmp     $01,x
        dec     $01,x
        .byte   $D7
        ora     ($D8,x)
        ora     ($D9,x)
        ora     (L0000,x)
        brk
        .byte   $D3
        ora     ($05,x)
        ldx     $01DA,y
        .byte   $DB
        ora     ($DC,x)
        ora     (L00DD,x)
        ora     ($DE,x)
        ora     ($DF,x)
        ora     ($0B,x)
        ldy     $03BA,x
        .byte   $BB
        .byte   $03
        .byte   $A3
        .byte   $03
        ldy     $03
        ldy     $A603,x
        .byte   $03
        lda     $AE03
        .byte   $03
        ldy     $B903
        .byte   $03
        brk
        brk
        clv
        .byte   $03
        .byte   $0C
        dec     $C1
        .byte   $03
        .byte   $C2
        .byte   $03
        ldx     $BB03,y
        .byte   $03
        .byte   $C3
        .byte   $03
        cmp     $03
        dec     $03
        .byte   $C7
        .byte   $03
        brk
        .byte   $03
        cpy     $03
        cpy     #$03
        clv
        .byte   $03
        lda     $0503,y
        ldx     $03D1,y
        .byte   $D2
        .byte   $03
        .byte   $D3
        .byte   $03
        cmp     $03,x
        dec     $03,x
        .byte   $D7
        .byte   $03
        ora     #$BA
        .byte   $CB
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        brk
        .byte   $03
        dex
        .byte   $03
        brk
        .byte   $03
        cpy     LCD03
        .byte   $03
        dec     $A003
        .byte   $03
        ora     #$BC
        iny
        .byte   $03
        cmp     #$03
        brk
        .byte   $03
        dex
        .byte   $03
        .byte   $CB
        .byte   $03
        brk
        .byte   $03
        lda     LCF03,x
        .byte   $03
        bne     LC725
        ldy     #$03
        asl     a
LC725:  dec     $A5
        .byte   $02
        ldx     $02
        ldx     #$02
        .byte   $A3
        .byte   $02
        .byte   $A7
        .byte   $02
        lda     #$02
        tax
        .byte   $02
        .byte   $AB
        .byte   $02
        brk
        brk
        tay
        .byte   $02
        ldy     $02
        ora     $A5C6
        .byte   $02
        ldx     $02
        ldx     #$02
        .byte   $A3
        .byte   $02
        brk
        brk
        lda     #$02
        tax
        .byte   $02
        brk
        brk
        brk
        brk
        tay
        .byte   $02
        lda     a:$02
        brk
        brk
        brk
        ldy     $0A02
        tsx
        lda     ($02),y
        .byte   $B2
        .byte   $02
        ldx     a:$02
        brk
        bcs     LC768
        brk
        brk
LC768:  .byte   $B3
        .byte   $02
        ldy     $02,x
        lda     $02,x
        brk
        brk
        .byte   $AF
        .byte   $02
        asl     a
        tsx
        ldx     $02,y
        .byte   $B2
        .byte   $02
        ldx     a:$02
        brk
        bcs     LC780
        brk
        brk
LC780:  .byte   $B7
        .byte   $02
        clv
        .byte   $02
        .byte   $BF
        .byte   $02
        brk
        brk
        .byte   $AF
        .byte   $02
        asl     a
        dec     $BA
        .byte   $02
        .byte   $BB
        .byte   $02
        ldx     #$02
        .byte   $A3
        .byte   $02
        .byte   $A7
        .byte   $02
        lda     $BE02,x
        .byte   $02
        .byte   $AB
        .byte   $02
        lda     $BC02,y
        .byte   $02
        ldy     $02
        ora     ($C6,x)
        ldy     #$02
        lda     ($02,x)
        asl     a
        iny
        lda     ($02,x)
        ldx     #$00
        ldy     $02
        lda     L0000
        brk
        brk
        .byte   $A7
        .byte   $02
        tay
        .byte   $02
        lda     #$02
        ldy     #$02
        .byte   $A3
        .byte   $02
        ldx     $02
        php
        tay
        ldy     #$02
        lda     ($02,x)
        tax
        brk
        .byte   $AB
        .byte   $02
        ldy     $AD02
        brk
        ldx     $AF02
        .byte   $02
        bcs     LC7D6
        ora     #$C8
LC7D6:  lda     ($02,x)
        lda     (L0000),y
        .byte   $B2
        .byte   $02
        .byte   $B3
        brk
        ldy     $02,x
        lda     $02,x
        ldx     $02,y
        .byte   $B7
        .byte   $02
        ldy     #$02
        .byte   $A3
        .byte   $02
        .byte   $0C
        tay
        ldy     #$02
        lda     ($02,x)
        lda     (L0000),y
        .byte   $AB
        .byte   $02
        ldy     $B302
        brk
        clv
        .byte   $02
        lda     $BA02,y
        .byte   $02
        ldy     $02,x
        .byte   $BB
        .byte   $02
        .byte   $BC
LC803:  .byte   $02
        lda     $0902,x
        ldx     a:$C2,y
        .byte   $C3
        brk
        cpy     L0000
        cmp     L0000
        dec     L0000
        .byte   $C7
        brk
        cmp     (L0000,x)
        brk
        brk
        cpy     #$00
        iny
        .byte   $03
        ora     #$CC
        cpy     #$00
        .byte   $DC
        brk
        dex
        brk
        .byte   $CB
        brk
        cpy     LCD03
        .byte   $03
        dec     LD000
        brk
        cmp     (L0000),y
        .byte   $D2
        brk
        ora     #$CC
        cpy     #$00
        cmp     LCA00,x
        brk
        .byte   $CB
        brk
        cpy     LCD03
        .byte   $03
        dec     LD000
        brk
        cmp     (L0000),y
        .byte   $D2
        brk
        ora     #$CC
        cpy     #$00
        cmp     #$00
        dex
        brk
        .byte   $CB
        brk
        cpy     LCD03
        .byte   $03
        dec     LD000
        brk
        cmp     (L0000),y
        .byte   $D2
        brk
        asl     a
        .byte   $64
        cpy     #$00
        cmp     (L0000,x)
        .byte   $C2
        brk
        cmp     L0000,x
        brk
        brk
        dec     L0000,x
        .byte   $D7
        .byte   $03
        cld
        .byte   $03
        cmp     LDA00,y
        brk
        .byte   $DB
        brk
        brk
        tsx
        .byte   $D3
        brk
        brk
        tsx
        .byte   $D4
        brk
        ora     $7F
        .byte   $D4
        .byte   $02
        cmp     $02,x
        dec     $02,x
        .byte   $D7
        .byte   $02
        cld
        .byte   $02
        cmp     $0302,y
        .byte   $1C
        .byte   $CB
        brk
        .byte   $CB
        rti

        cpy     LCC00
        rti

        .byte   $03
        .byte   $1C
        cmp     LCD00
        rti

        dec     LCE00
        rti

        ora     ($18,x)
        .byte   $CF
        rti

        .byte   $CF
        brk
        .byte   $07
        .byte   $1C
        .byte   $F7
        .byte   $02
        .byte   $F7
        .byte   $42
        .byte   $F7
        .byte   $02
        .byte   $F7
        .byte   $42
        inc     $02,x
        inc     $42,x
        inc     $82,x
        inc     $C2,x
        ora     $BE
        cpx     #$02
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        brk
        cpx     $02
        sbc     $02
        .byte   $05
LC8C7:  ldx     $02E0,y
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        inc     $02
        .byte   $E7
        .byte   $02
        sbc     $02
        ora     $BE
        inx
        .byte   $02
        sbc     #$02
        nop
        .byte   $02
        .byte   $EB
        brk
        cpx     LED00
        brk
        ora     #$BE
        .byte   $FA
        brk
        .byte   $FB
        .byte   $02
        .byte   $FC
        .byte   $02
        sbc     LFE00,x
        brk
        .byte   $FF
        brk
        sed
        .byte   $02
        sbc     $02,y
        brk
        ldy     #$00
LC8F8:  ora     $BE
        inx
        .byte   $02
        sbc     #$02
        nop
        .byte   $02
LC900:  .byte   $EB
        brk
        inc     LEF00
        brk
        ora     #$C6
        ldy     L0000
        lda     $02
        ldy     #$02
        lda     ($02,x)
        brk
        brk
        .byte   $A7
        brk
        tay
        brk
        lda     #$00
        .byte   $A3
        brk
        ldx     L0000
        asl     a
        iny
        ldy     #$02
        lda     ($02,x)
        ldy     L0000
        lda     $02
        brk
        brk
        ldy     $AD00
        brk
        ldx     a:L0000
        brk
        .byte   $A3
        brk
        ldx     L0000
        php
        dex
        ldy     #$02
        ldy     L0000
        lda     $02
        bcs     LC93E
LC93E:  lda     (L0000),y
        lda     ($02,x)
        .byte   $A3
        brk
        ldx     L0000
        lda     #$00
        php
        .byte   $C2
        ldy     #$02
        ldx     #$02
        .byte   $A3
        .byte   $02
        ldx     L0000
        .byte   $A7
        brk
        brk
        .byte   $02
        ldy     $02
        lda     L0000
        tay
        brk
        php
        .byte   $C2
        lda     #$02
        .byte   $AB
        .byte   $02
        ldy     $AE02
        brk
        .byte   $AF
        brk
        brk
        .byte   $02
        lda     $A102
        brk
        tax
        brk
        php
        .byte   $C2
        lda     #$02
        lda     ($02),y
        .byte   $B2
        .byte   $02
        ldy     $02,x
        lda     L0000,x
        bcs     LC97E
LC97E:  ror     $B300,x
        brk
        ldx     L0000,y
        asl     a
        ror     L00E0
        brk
        sbc     ($02,x)
        .byte   $E2
        brk
        .byte   $E3
        brk
        cpx     $02
        sbc     $02
        inc     $02
        .byte   $E7
        .byte   $02
        inx
        .byte   $02
        sbc     #$02
        nop
        .byte   $02
        asl     a
        pla
        .byte   $EB
        brk
        sbc     ($02,x)
        .byte   $E2
        brk
        .byte   $E3
        brk
        cpx     $02
        cpx     LE602
        .byte   $02
        sbc     LEE02
        .byte   $02
        .byte   $EF
        .byte   $02
        beq     LC9B6
        asl     a
        ror     a
LC9B6:  cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        brk
        .byte   $E3
        brk
        cpx     $02
        sbc     $02
        inc     $02
        .byte   $E7
        .byte   $02
        inx
        .byte   $02
        sbc     #$02
        nop
        .byte   $02
        asl     a
        jmp     (L00E0)

        .byte   $E2
        brk
        .byte   $E3
        brk
        sbc     ($02,x)
        cpx     $02
        sbc     $02
        inc     $02
        .byte   $E7
        .byte   $02
        inx
        .byte   $02
        sbc     #$02
        nop
        .byte   $02
        ora     #$AE
        brk
        brk
        inc     $02,x
        .byte   $F7
        .byte   $02
        sed
        .byte   $02
        .byte   $F3
        .byte   $02
        .byte   $F4
        brk
        sbc     $02,x
        .byte   $F2
        .byte   $02
        cpx     #$00
        sbc     ($02),y
        brk
        tsx
        ror     $0302,x
        .byte   $C4
LCA00:  cpy     #$02
        brk
        brk
        cmp     ($02,x)
        .byte   $C2
        .byte   $02
        .byte   $04
        cpy     $C4
        .byte   $02
        brk
        brk
        cmp     $02
        dec     $02
        .byte   $C3
        .byte   $02
        .byte   $03
        cpy     $C1
        .byte   $82
        .byte   $C2
        .byte   $82
        cpy     #$82
        brk
        brk
        .byte   $04
        rol     a
        dec     $82
        brk
        brk
        cmp     $82
        cpy     $82
        .byte   $C3
        .byte   $82
        asl     LDC60
        brk
        cmp     LDE00,x
        brk
        .byte   $DF
        brk
        cpx     #$00
        sbc     (L0000,x)
        .byte   $E2
        brk
        .byte   $E3
        brk
        cpx     L0000
        sbc     L0000
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        .byte   $FA
        brk
        .byte   $FB
        brk
        ora     #$6E
        .byte   $DC
        brk
        sbc     (L0000),y
        .byte   $DF
        brk
        cpx     #$00
        .byte   $F2
        brk
        .byte   $E3
LCA57:  brk
        inc     $40
        .byte   $F3
        brk
        .byte   $FA
        brk
        .byte   $FB
        brk
        .byte   $03
        bvs     LCA57
        brk
        sbc     L0000,x
        .byte   $FA
        brk
        .byte   $FB
        brk
        asl     LDC72
        brk
        cmp     LE900,x
        brk
        nop
        brk
        .byte   $EB
        brk
        sbc     (L0000,x)
        cpx     LED00
        brk
        inc     LE500
        brk
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        .byte   $FA
        brk
        .byte   $FB
        brk
        asl     LDC72
        brk
        cmp     LE900,x
        brk
        nop
        brk
        .byte   $EF
        brk
        beq     LCA98
LCA98:  cpx     LED00
        brk
        inc     LE500
        brk
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        .byte   $FA
        brk
        .byte   $FB
        brk
        .byte   $03
        cpy     $F6
        .byte   $03
        inc     $43,x
        .byte   $F7
        .byte   $03
        .byte   $F7
        .byte   $43
        .byte   $03
        cpy     $F8
        .byte   $03
        sed
        .byte   $43
        sbc     LF903,y
        .byte   $43
        ora     ($C6,x)
        .byte   $FA
        brk
        .byte   $FB
        brk
        asl     $BAC0
        brk
        .byte   $BB
        brk
        ldy     a:L0000,x
        brk
        lda     $BE00,x
        brk
        cpy     #$01
        cmp     ($01,x)
        .byte   $C2
        ora     ($B7,x)
        .byte   $03
        clv
        brk
        lda     $BF00,y
        brk
        .byte   $C3
        brk
        .byte   $DB
        .byte   $03
        asl     $BAC0
        brk
        .byte   $BB
        brk
        ldy     a:L0000,x
        brk
        lda     $BE00,x
        brk
        cmp     L0000
        dec     L0000
        .byte   $C7
        ora     ($C4,x)
        .byte   $03
        clv
        brk
        lda     $BF00,y
        brk
        iny
        brk
        .byte   $DB
LCB03:  .byte   $03
        asl     $BAC0
        brk
        .byte   $BB
        brk
        ldy     a:L0000,x
        brk
        lda     $BE00,x
        brk
        dex
        brk
        .byte   $CF
        brk
        bne     LCB19
        .byte   $C9
LCB19:  .byte   $03
        clv
        brk
        lda     $BF00,y
        brk
        cmp     (L0000),y
        .byte   $DB
        .byte   $03
        .byte   $0F
        cpy     #$D2
        brk
        .byte   $D7
        brk
        cld
        brk
        brk
        brk
        cmp     LDA00,y
        brk
        cpy     #$01
        cmp     ($01,x)
        .byte   $C2
        ora     (L0000,x)
        brk
        clv
        brk
        lda     $BF00,y
        brk
        .byte   $C3
        brk
        .byte   $DB
        .byte   $03
        dec     $03,x
        asl     LD2C0
        brk
        .byte   $D3
        brk
        ldy     LD400,x
        brk
        cmp     L0000,x
        ldx     LC500,y
        brk
        dec     L0000
        .byte   $C7
        ora     (L0000,x)
        brk
        clv
        brk
        lda     $BF00,y
        brk
        iny
        brk
        .byte   $DB
        .byte   $03
        .byte   $0F
        cpy     #$D2
        brk
        .byte   $D3
        brk
        ldy     LD400,x
        brk
        cmp     L0000,x
        ldx     LCA00,y
        brk
        .byte   $CF
        brk
        bne     LCB7B
        brk
LCB7B:  brk
        clv
        brk
        lda     $BF00,y
        brk
        cmp     (L0000),y
        .byte   $DB
        .byte   $03
        brk
        tsx
        .byte   $B7
        .byte   $03
        brk
        tsx
        cpy     $03
        brk
        tsx
        cmp     #$03
        .byte   $0B
        cpy     $02E0
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        .byte   $02
        cpx     #$82
        sbc     ($82,x)
        cpx     #$C2
        sbc     #$00
        nop
        brk
        brk
        brk
        cpx     #$42
        .byte   $E2
        .byte   $42
        ora     ($CC),y
        cpx     #$82
        sbc     ($82,x)
        cpx     L0000
        sbc     $02
        .byte   $E7
        .byte   $02
        inx
        .byte   $02
        brk
        brk
        sbc     #$00
        nop
        brk
        brk
        brk
        cpx     #$C2
        inc     $02
        .byte   $E2
        .byte   $02
        .byte   $E3
        .byte   $02
        .byte   $E2
        .byte   $42
        cpx     #$02
        sbc     ($02,x)
        cpx     #$42
        asl     $C6
        .byte   $E7
        .byte   $02
        .byte   $F4
        .byte   $02
        cpx     L0000
        .byte   $F3
        .byte   $02
        sbc     $02,x
        inc     L0000,x
        .byte   $F7
        brk
        .byte   $07
        iny
        cpx     L0000
        .byte   $F3
        .byte   $02
        .byte   $E7
        .byte   $02
        .byte   $F4
        .byte   $02
        sbc     $02,x
        sed
        brk
        sbc     LFA00,y
        brk
        .byte   $07
        iny
        cpx     L0000
        .byte   $F3
        .byte   $02
        .byte   $E7
        .byte   $02
        .byte   $F4
        .byte   $02
        sbc     $02,x
LCC00:  .byte   $FB
        brk
        .byte   $FC
        brk
        sbc     $0B00,x
        tsx
        ldy     $03
        lda     (L0000,x)
        ldx     #$00
        brk
        brk
        .byte   $A3
        brk
        lda     $03
        ldx     L0000
        .byte   $A7
        brk
        tay
        brk
        clv
        brk
        brk
        brk
        ldy     #$00
        .byte   $0B
        ldy     a:$A1,x
        ldx     #$00
        brk
        brk
        .byte   $A3
        brk
        ldy     $03
        lda     $03
        lda     #$00
        tax
        brk
        .byte   $AB
        brk
        clv
        brk
        brk
        brk
        ldy     #$00
        ora     #$BA
        cld
        .byte   $02
        cmp     $02,x
        dec     $02,x
        cmp     $42,x
        .byte   $D7
        .byte   $02
        .byte   $D7
        .byte   $42
        cmp     LD802,y
        .byte   $42
        cmp     LD442,y
        .byte   $02
        ora     #$C6
        .byte   $DC
        .byte   $02
        .byte   $DC
        .byte   $42
        .byte   $DA
        .byte   $02
        .byte   $DA
        .byte   $42
        .byte   $DB
        .byte   $42
        cld
        .byte   $02
        cld
        .byte   $82
        cmp     LDB42,x
        .byte   $02
        cmp     $0802,x
        tsx
        ldy     $03
        ldy     $AD00
        .byte   $03
        brk
        brk
        .byte   $A3
        brk
        lda     $03
LCC74:  ldx     L0000
        .byte   $A7
        brk
        tay
        brk
        php
        tsx
        .byte   $AF
        .byte   $03
        ldy     $AD00
        .byte   $03
        brk
        brk
        ldx     $B000
        .byte   $03
        lda     ($03),y
        .byte   $B2
        .byte   $03
        .byte   $B3
        .byte   $03
        php
        tsx
        ldx     $03,y
        ldy     $B400
        .byte   $03
        brk
        brk
        lda     L0000,x
        .byte   $D2
        .byte   $03
        brk
        .byte   $03
        lda     $BA03,y
        .byte   $03
        php
        ldy     a:$AC,x
        .byte   $BB
        .byte   $03
        ldy     $BD03,x
        brk
        ldx     $BF03,y
        .byte   $03
        cpy     #$03
        cmp     ($03,x)
        .byte   $C2
        .byte   $03
        php
        ldy     a:$AC,x
        ldy     $03,x
        brk
        brk
        .byte   $C3
        brk
        .byte   $D3
        .byte   $03
        cmp     $03
        dec     $03
        .byte   $C7
        .byte   $03
        iny
        .byte   $03
        ora     $BA
        cpy     LDE03
        brk
        dex
        .byte   $03
        brk
        brk
        .byte   $CB
        brk
        cmp     $0703
        tsx
        .byte   $CF
        .byte   $03
        ldy     $AD00
        .byte   $03
        brk
        brk
        dec     LD000
        .byte   $03
        brk
        brk
        cmp     (L0000),y
        bpl     LCC74
        ldy     #$02
        lda     ($02,x)
        ldx     #$02
        .byte   $A3
        .byte   $02
        ldy     $02
        lda     $02
        ldx     $02
        .byte   $A7
        .byte   $02
        tay
        .byte   $02
        lda     #$02
LCD00:  tax
        .byte   $02
LCD02:  .byte   $AB
LCD03:  .byte   $02
        ldy     $AD02
        .byte   $02
        ldx     $AF02
        .byte   $02
        cpx     $0F00
        txa
        ldy     #$02
        lda     ($02,x)
        bcs     LCD18
        lda     ($02),y
LCD18:  .byte   $B2
        .byte   $02
        .byte   $B3
        .byte   $02
        ldy     $02,x
        lda     $02,x
        ldx     $02,y
        .byte   $B7
        .byte   $02
        clv
        .byte   $02
        lda     $BA02,y
        .byte   $02
        .byte   $BB
        .byte   $02
        ldy     LEC02,x
        brk
        .byte   $0F
        txa
        ldy     #$02
        lda     ($02,x)
        bcs     LCD3A
        .byte   $BD
        .byte   $02
LCD3A:  ldx     $BF02,y
        .byte   $02
        cpy     #$02
        cmp     ($02,x)
        .byte   $C2
        .byte   $02
        .byte   $C3
        .byte   $02
        cpy     $02
        lda     $BA02,y
        .byte   $02
        cmp     $02
        dec     $02
        cpx     $0F00
        sty     $02A0
        lda     ($02,x)
        bcs     LCD9C
        .byte   $C7
        .byte   $02
        iny
        .byte   $02
        .byte   $C9
LCD5F:  .byte   $02
        dex
        .byte   $02
        brk
        .byte   $02
        .byte   $CB
        .byte   $02
        cpy     LCD02
        .byte   $02
        ldy     $AD02
        .byte   $02
        ldx     $AF02
        .byte   $02
        cpx     $0300
        stx     $02CE
        dec     $BB42
        .byte   $02
        ldy     a:$02,x
        bcc     LCD5F
        brk
        .byte   $02
        .byte   $92
        .byte   $DF
        brk
        cpx     #$00
        dec     $0300,x
        .byte   $92
        cpx     #$40
        .byte   $DF
        rti

        brk
        brk
        dec     $0940,x
        sty     $E1,x
        .byte   $03
        .byte   $E2
        .byte   $03
        .byte   $E3
        .byte   $03
LCD9C:  cpx     $03
        sbc     L0000
        inc     $03
        .byte   $E7
        brk
        sbc     #$00
        inx
        brk
        sbc     #$80
        .byte   $0B
        stx     $E1,y
        .byte   $03
        nop
        brk
        nop
        rti

        .byte   $E2
        .byte   $03
        .byte   $E3
        .byte   $03
        .byte   $EB
        brk
        cpx     LED00
        brk
        inc     LEF00
        .byte   $03
        beq     LCDC5
        sbc     (L0000),y
        php
LCDC5:  tya
        .byte   $F2
        .byte   $03
        .byte   $F3
        brk
        .byte   $F4
        brk
        sbc     $03,x
        inc     L0000,x
        .byte   $F7
        .byte   $03
        sed
        .byte   $03
        dec     LF900,x
        .byte   $03
        brk
        tsx
        .byte   $FA
        brk
        brk
        tsx
        .byte   $FA
        rti

        ora     #$32
        .byte   $D2
        .byte   $03
        .byte   $D3
        .byte   $03
        .byte   $D4
        .byte   $03
        cmp     $03,x
        brk
        brk
        dec     $03,x
        .byte   $D7
        .byte   $03
        cld
        .byte   $03
        bne     LCDF7
        cmp     ($03),y
        .byte   $09
LCDF7:  .byte   $32
        .byte   $DB
        .byte   $03
        .byte   $DC
        .byte   $03
        cmp     LDE03,x
        .byte   $03
LCE00:  .byte   $DF
        .byte   $03
        cpx     #$03
        sbc     ($03,x)
        .byte   $E2
        .byte   $03
        cmp     LDA03,y
        .byte   $03
        ora     #$32
        .byte   $DB
        .byte   $03
        .byte   $DC
        .byte   $03
        cmp     LE303,x
        .byte   $03
        cpx     $03
        sbc     $03
        sbc     ($03,x)
        .byte   $E2
        .byte   $03
        cmp     LDA03,y
        .byte   $03
        .byte   $07
        .byte   $32
        bne     LCE29
        inc     $03
        .byte   $E7
LCE29:  .byte   $03
        inx
        .byte   $03
        .byte   $D2
        .byte   $03
        sbc     #$03
        nop
        .byte   $03
        .byte   $EB
        .byte   $03
        asl     LF09F
        eor     ($F1,x)
        rti

        .byte   $F2
        rti

        .byte   $F3
        rti

        .byte   $F4
        eor     ($F5,x)
        eor     ($F6,x)
        rti

        .byte   $F7
        eor     ($F8,x)
        eor     ($F9,x)
        eor     ($FA,x)
        eor     ($F8,x)
        ora     ($FB,x)
        eor     ($FC,x)
        eor     (L0030,x)
        ora     ($0E,x)
        .byte   $9F
        beq     LCE99
        sbc     ($40),y
        .byte   $F2
        rti

        .byte   $F3
        rti

        sbc     LF541,x
        eor     ($F6,x)
        rti

        .byte   $FF
        eor     ($FE,x)
        eor     ($F9,x)
        eor     ($FA,x)
        eor     ($FE,x)
        ora     ($FB,x)
        eor     ($FC,x)
        eor     (L0030,x)
        ora     ($0B,x)
        ldy     #$A0
        rti

        lda     ($40,x)
        ldx     #$40
        .byte   $A3
        rti

        ldy     $40
        lda     $41
        ldx     $41
        .byte   $A7
        eor     ($A8,x)
        rti

        lda     #$41
        tax
        eor     ($AB,x)
        eor     ($05,x)
        clc
        .byte   $C2
        brk
        cmp     (L0000,x)
        cpy     #$00
        .byte   $BF
        brk
        .byte   $C3
LCE99:  rti

        .byte   $C3
        brk
        asl     a
        .byte   $34
        .byte   $C7
        brk
        iny
        brk
        cmp     #$00
        dex
        brk
        .byte   $CB
        brk
        .byte   $CC
        brk
LCEAA:  cmp     LC500
        brk
        brk
        brk
        dec     L0000
        cpy     L0000
        ora     #$34
        brk
        brk
        bne     LCEBA
LCEBA:  cmp     (L0000),y
        .byte   $D2
        brk
        .byte   $D3
        brk
        .byte   $D4
        brk
        .byte   $D3
        rti

        .byte   $BF
        brk
        dec     LCF00
        brk
        asl     $34
        cmp     L0000,x
        dec     L0000,x
        .byte   $D7
        brk
        cld
        brk
        cmp     LDA00,y
        brk
        .byte   $DB
        brk
        .byte   $0C
        .byte   $54
        .byte   $AF
        .byte   $02
        bcs     LCEE2
        lda     ($02),y
LCEE2:  .byte   $B2
        .byte   $02
        .byte   $AF
        .byte   $82
        .byte   $B3
        .byte   $02
        ldy     $03,x
        lda     $03,x
        lda     $C3,x
        lda     $03,x
        lda     $C3,x
        ldy     $C3,x
        ldx     $03,y
        php
        lsr     $BB,x
        .byte   $02
        ldy     $BD02,x
        .byte   $02
        .byte   $BE
        .byte   $02
LCF00:  .byte   $BB
        .byte   $82
        .byte   $B7
LCF03:  .byte   $02
        clv
        .byte   $03
        clv
        .byte   $C3
        lda     $0303,y
        cpy     $B9
        .byte   $C3
        clv
        .byte   $03
        clv
        .byte   $C3
        lda     $0303,y
        cpy     $BA
        .byte   $02
        clv
        .byte   $03
        clv
        .byte   $C3
        lda     $0503,y
        cpy     $B1
        .byte   $02
        .byte   $B2
        .byte   $02
        .byte   $AF
        .byte   $82
        bcs     LCEAA
        .byte   $AF
        .byte   $02
        bcs     LCF2E
        asl     $36
LCF2E:  ldy     #$00
        lda     (L0000,x)
        ldx     #$00
        lda     ($40,x)
        .byte   $A3
        brk
        ldy     L0000
        lda     ($C0,x)
        asl     $36
        ldy     #$00
        lda     (L0000,x)
        ldy     L0000
        lda     ($40,x)
        .byte   $A3
        brk
        ldy     L0000
        lda     ($C0,x)
        .byte   $0C
        rol     $A7,x
        brk
        tax
        brk
        .byte   $AB
        brk
        ldy     $AD00
        brk
        ldx     $AF00
        brk
        bcs     LCF5E
LCF5E:  brk
        brk
        lda     #$00
        lda     L0000
        ldx     L0000
        tay
        brk
        php
        rol     L0000,x
        brk
        lda     (L0000),y
        .byte   $B2
        brk
        .byte   $B3
        brk
        ldy     L0000,x
        ldy     L0000
        lda     L0000,x
        ldx     L0000,y
        .byte   $B7
        brk
        ora     #$36
        brk
        brk
        lda     $BA00,y
        brk
        .byte   $BB
        brk
        ldy     $BD00,x
        brk
        ldx     $BF00,y
        brk
        brk
        brk
        clv
        brk
        ora     $BE9A
        .byte   $03
        .byte   $BF
        .byte   $03
        .byte   $CF
        .byte   $03
        nop
        brk
        nop
        rti

        .byte   $E2
        .byte   $03
        .byte   $E3
        .byte   $03
        .byte   $EB
        brk
        cpx     LED00
        brk
        inc     LEF00
        .byte   $03
        beq     LCFB1
        sbc     (L0000),y
        .byte   $0E
LCFB1:  .byte   $3A
        .byte   $DC
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        brk
        cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        brk
        cpx     L0000
        sbc     L0000
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        sbc     #$00
        nop
        brk
LCFD0:  asl     LDC3A
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        brk
        cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        brk
        cpx     L0000
        .byte   $EB
        brk
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        sbc     #$00
        nop
        brk
        asl     LDC3C
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        brk
        cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
LD000:  .byte   $E3
        brk
        cpx     L0000
        cpx     LED00
        brk
        .byte   $E7
        brk
        inx
        brk
        inc     LEF00
        brk
        bpl     LD050
        .byte   $DC
        .byte   $02
        cmp     LE002,x
        brk
        sbc     ($02,x)
        cpx     L0000
        beq     LD01E
LD01E:  .byte   $F3
        brk
        .byte   $F4
        brk
        .byte   $DF
        brk
        .byte   $E3
        brk
        .byte   $E7
        brk
        dec     LE202,x
        .byte   $02
        sbc     (L0000),y
        sbc     L0000,x
        inc     L0000,x
        .byte   $F2
        brk
        bpl     LD074
        .byte   $DC
        .byte   $02
        cmp     LE002,x
        brk
        sbc     ($02,x)
        cpx     L0000
        .byte   $F7
        brk
        sed
        brk
        sbc     LDF00,y
        brk
        .byte   $E3
        brk
        .byte   $E7
        brk
        dec     LE202,x
        .byte   $02
LD050:  sbc     (L0000),y
        .byte   $FA
        brk
        inc     L0000,x
        .byte   $F2
        brk
        .byte   $0F
        .byte   $3C
        .byte   $DC
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        brk
        cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        brk
        cpx     L0000
        cpx     LFB00
        brk
        .byte   $E7
        brk
        ldx     L0000
LD074:  .byte   $A7
        brk
        ldy     #$00
        lda     (L0000,x)
        .byte   $0F
        .byte   $3C
        .byte   $DC
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        brk
        cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        brk
        cpx     L0000
        cpx     LFB00
        brk
        .byte   $E7
        brk
        ldx     #$00
        .byte   $A3
        brk
        ldy     L0000
        lda     (L0000,x)
        asl     LDC3C
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        brk
        cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        brk
        cpx     L0000
        cpx     $A500
        brk
        .byte   $E7
        brk
        ldx     L0000
        .byte   $A7
        brk
        tay
        brk
        asl     LDC3C
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        brk
        cpx     #$00
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        brk
        cpx     L0000
        cpx     $A900
        brk
        .byte   $E7
        brk
        ldx     L0000
        .byte   $A7
        brk
        tax
        brk
        asl     LDC3E
        .byte   $02
        cmp     LE002,x
        brk
        sbc     ($02,x)
        cpx     L0000
        .byte   $AB
        brk
        inx
        brk
        lda     LDF00
        brk
        .byte   $E3
        brk
        .byte   $E7
        brk
        dec     LE202,x
        .byte   $02
        ldy     $AE00
        brk
        .byte   $0F
        dey
        .byte   $B2
        brk
        .byte   $B3
        brk
        ldy     L0000,x
        lda     L0000,x
        ldx     L0000,y
        .byte   $B7
        brk
        clv
        brk
        lda     $BA00,y
        brk
        clv
        brk
        clv
        brk
        .byte   $BB
        brk
        ldy     $BD00,x
        brk
        ldx     $BF00,y
        brk
        .byte   $0F
        dey
        .byte   $B2
        brk
        .byte   $B3
        brk
        cpy     #$00
        cmp     (L0000,x)
        ldx     L0000,y
        .byte   $B7
        brk
        .byte   $C2
        brk
        .byte   $C3
        brk
        tsx
        brk
        clv
        brk
        clv
        brk
        .byte   $BB
        brk
        ldy     $BD00,x
        brk
        ldx     $BF00,y
        brk
        .byte   $0F
        dey
        brk
        brk
        cpy     L0000
        cmp     L0000
        brk
        brk
        dec     L0000
        .byte   $C7
        brk
        iny
        brk
        cmp     #$00
        dex
        brk
        .byte   $CB
        brk
        cpy     LCD00
        brk
        brk
        brk
        dec     $AF00
        brk
        bne     LD162
LD162:  .byte   $0F
        dey
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cmp     (L0000),y
        .byte   $D2
        brk
        .byte   $D3
        brk
        brk
        brk
        .byte   $D4
        brk
        cmp     L0000,x
        dec     L0000,x
        brk
        brk
        .byte   $D7
        brk
        ldx     #$00
        tax
        brk
        .byte   $0C
        .byte   $42
        cld
        .byte   $02
        cmp     LDA02,y
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DC
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        .byte   $02
        cpx     #$02
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        .byte   $02
        cpx     $02
        .byte   $0C
        .byte   $42
        cld
        .byte   $02
        cmp     LDA02,y
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DC
        .byte   $02
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        .byte   $02
        cpx     #$02
        sbc     ($02,x)
        sbc     $02
        inc     $02
        .byte   $E7
        .byte   $02
        .byte   $0C
        .byte   $44
        cld
        .byte   $02
        cmp     LE802,y
        .byte   $02
        sbc     #$02
        nop
        .byte   $02
        .byte   $EB
        .byte   $02
        cpx     LED02
        .byte   $02
        inc     LEF02
        .byte   $02
        beq     LD1D6
        sbc     ($02),y
LD1D6:  .byte   $F2
        .byte   $02
        .byte   $0C
        .byte   $42
        .byte   $F3
        .byte   $03
        .byte   $F4
        .byte   $03
        .byte   $DA
        .byte   $02
        sbc     $03,x
        inc     $03,x
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        .byte   $02
        cpx     #$02
        sbc     ($02,x)
        .byte   $E2
        .byte   $02
        .byte   $E3
        .byte   $02
        cpx     $02
        .byte   $0C
        .byte   $42
        .byte   $F3
        .byte   $03
        .byte   $F4
        .byte   $03
        .byte   $DA
        .byte   $02
        sbc     $03,x
        inc     $03,x
        cmp     LDE02,x
        .byte   $02
        .byte   $DF
        .byte   $02
        cpx     #$02
        sbc     ($02,x)
        sbc     $02
        inc     $02
        .byte   $E7
        .byte   $02
        .byte   $0C
        .byte   $44
        .byte   $F3
        .byte   $03
        .byte   $F4
        .byte   $03
        inx
        .byte   $02
        .byte   $F7
        .byte   $03
        sed
        .byte   $03
        .byte   $EB
        .byte   $02
        cpx     LED02
        .byte   $02
        inc     LEF02
        .byte   $02
        beq     LD22A
        sbc     ($02),y
LD22A:  .byte   $F2
        .byte   $02
        .byte   $03
        cpy     $F9
        .byte   $02
        .byte   $FA
        .byte   $02
        .byte   $FB
        .byte   $02
        .byte   $AB
        .byte   $02
        php
        tsx
        .byte   $F7
        brk
        .byte   $F3
        brk
        .byte   $F4
        brk
        sbc     L0000,x
        inc     L0000,x
        inc     $40,x
        sbc     $C0,x
        sed
        brk
        .byte   $F3
        cpy     #$08
        tsx
        .byte   $F7
        .byte   $80
        sbc     LF800,y
        .byte   $80
        sbc     L0000,x
        inc     $80,x
        inc     $C0,x
        sbc     $C0,x
        .byte   $F4
        .byte   $80
        sbc     $03C0,y
        cpy     $FA
        brk
        .byte   $FA
        rti

        .byte   $FB
        brk
        .byte   $FB
        rti

        ora     ($C6,x)
        .byte   $FC
        brk
        sbc     $0100,x
        dec     $BF
        brk
        .byte   $BF
        rti

        .byte   $02
        cpy     L0000
        brk
        brk
        brk
        .byte   $D4
        .byte   $03
        .byte   $03
        cpy     $D8
        .byte   $03
        cmp     LD903,y
        .byte   $C3
        cmp     $0883,y
        lsr     $DA
        .byte   $03
        .byte   $DB
        .byte   $03
        .byte   $DF
        .byte   $C3
        .byte   $DC
        .byte   $03
        cmp     LDE03,x
        .byte   $03
        .byte   $DF
        .byte   $03
        .byte   $DB
        .byte   $83
        .byte   $DF
        .byte   $43
        ora     #$48
        .byte   $DA
        .byte   $03
        .byte   $DB
        .byte   $03
        .byte   $DF
        .byte   $C3
        .byte   $DC
        .byte   $03
        cmp     LDE03,x
        .byte   $03
        .byte   $DF
        .byte   $03
        .byte   $DB
        .byte   $83
        .byte   $DF
        .byte   $43
        .byte   $FF
        .byte   $03
        brk
        .byte   $1A
        .byte   $8F
        brk
        ora     ($59),y
        .byte   $7A
        brk
        bvs     LD2BA
LD2BA:  txa
        brk
        sty     $7C00
        brk
LD2C0:  .byte   $8F
        brk
        adc     $7B00,x
        brk
        .byte   $8F
        brk
        adc     $7B00,x
        brk
        .byte   $8F
        brk
        ldy     #$00
        sty     $A000
        brk
        iny
        brk
        adc     LC900,x
        brk
        ora     #$79
        .byte   $7A
        brk
        iny
        brk
        ldy     #$00
        .byte   $8F
        brk
        .byte   $8F
        brk
        .byte   $8F
        brk
        .byte   $7C
        brk
        .byte   $7B
        brk
        iny
        brk
        .byte   $7C
        brk
        asl     $4A,x
        cpx     #$02
        sbc     ($02,x)
        .byte   $FA
        .byte   $02
        .byte   $FB
        .byte   $02
        cpx     $02
        sbc     $02
        inc     $02
        .byte   $E7
        .byte   $02
        inx
        .byte   $02
        sbc     #$02
        nop
        .byte   $02
        .byte   $EB
        .byte   $02
        cpx     LED02
        .byte   $02
        inc     LEF02
        .byte   $02
        .byte   $92
        .byte   $03
        sty     $03,x
        .byte   $93
        .byte   $03
        sed
        ora     ($95,x)
        ora     ($FC,x)
        .byte   $03
        sbc     $1603,y
        .byte   $4B
        cpx     #$02
        sbc     ($02,x)
        .byte   $FA
        .byte   $02
        .byte   $FB
        .byte   $02
        cpx     $02
        sbc     $02
        beq     LD332
        sbc     ($02),y
LD332:  inx
        .byte   $02
        sbc     #$02
        inc     $02,x
        .byte   $F2
        .byte   $02
        .byte   $F3
        .byte   $02
        .byte   $F4
        .byte   $02
        sbc     $02,x
        .byte   $F7
        .byte   $02
        .byte   $92
        .byte   $03
        sty     $03,x
        .byte   $93
        .byte   $03
        sed
        ora     ($95,x)
        ora     ($FC,x)
        .byte   $03
        sbc     $0F03,y
        cmp     $B0
        eor     ($B1,x)
        eor     ($AD,x)
        rti

        ldy     $B240
        eor     ($B3,x)
        eor     ($A9,x)
        eor     ($AA,x)
        eor     (L0000,x)
        brk
        brk
        brk
        .byte   $AF
        rti

        ldy     #$40
        ldx     $A240,y
        rti

        lda     $B841,y
        rti

        .byte   $0F
        cmp     $B0
        eor     ($B1,x)
        eor     ($AD,x)
        rti

        ldx     $B240
        eor     ($B3,x)
        eor     ($A9,x)
        eor     ($AA,x)
        eor     (L0000,x)
        brk
        brk
        brk
        .byte   $AF
        rti

        ldy     #$40
        ldx     $A240,y
        rti

        lda     $B841,y
        rti

        brk
        .byte   $1A
        dex
        .byte   $03
        brk
        .byte   $1A
        .byte   $CB
        .byte   $03
        asl     $AE
        .byte   $F2
        .byte   $02
        .byte   $FC
        .byte   $02
        sbc     LFE00,x
        .byte   $02
        sbc     LFA02,y
        brk
        .byte   $FB
        .byte   $02
        .byte   $0B
        lsr     $02C1
        cpy     L0000
        cmp     L0000
        dec     L0000
        .byte   $C7
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        dex
        .byte   $03
        .byte   $CB
        .byte   $03
        cpy     LC003
        .byte   $02
        .byte   $C2
        .byte   $02
        ora     #$4E
        .byte   $C3
        .byte   $02
        cpy     L0000
        cmp     L0000
        dec     L0000
        .byte   $C7
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        dex
        .byte   $03
        .byte   $CB
        .byte   $03
        cpy     $0B03
        lsr     $02C1
        cpy     L0000
        cmp     L0000
        dec     L0000
        cmp     LC803
        .byte   $03
        cmp     #$03
        dec     LCB03
        .byte   $03
        cpy     LC003
        .byte   $02
        .byte   $C2
        .byte   $02
        ora     $C4
        lda     $BE02,x
        .byte   $02
        .byte   $BB
        .byte   $82
        .byte   $BC
        .byte   $82
LD400:  .byte   $BB
        .byte   $02
        ldy     $0302,x
        jmp     L83EC

        sbc     LEC83
        .byte   $03
        sbc     $0303
        jmp     L83EE

        .byte   $EF
        .byte   $83
        inc     LEF03
        .byte   $03
        asl     a
        iny
        .byte   $E3
        brk
        cpx     L0000
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        nop
        brk
        .byte   $EB
        brk
        cpx     LE200
        brk
        sbc     L0000
        sbc     #$00
        .byte   $0B
        iny
        inc     LEF00
        brk
        .byte   $F2
        brk
        .byte   $F3
        brk
        .byte   $F4
        brk
        inc     L0000,x
        .byte   $F7
        brk
        sed
        brk
LD442:  sbc     LF100
        brk
        sbc     L0000,x
        beq     LD44A
LD44A:  .byte   $03
        cpy     $F9
        brk
        .byte   $FA
        brk
        .byte   $FA
        cpy     #$FA
        .byte   $80
        ora     LC14E
        .byte   $02
        bne     LD45A
LD45A:  cmp     L0000
        dec     L0000
        .byte   $D2
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        dec     LCB03
        .byte   $03
        cpy     LC003
        .byte   $02
        .byte   $C2
        .byte   $02
        cmp     ($03),y
        .byte   $CF
        .byte   $03
        asl     LC14E
        .byte   $02
        cpy     L0000
        cmp     L0000
        dec     L0000
        .byte   $D4
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        dec     $03,x
        .byte   $CB
        .byte   $03
        cpy     LC003
        .byte   $02
        .byte   $C2
        .byte   $02
        .byte   $D3
        .byte   $03
        brk
        brk
        cmp     $03,x
        ora     #$4E
        .byte   $C3
        .byte   $02
        cpy     L0000
        cmp     L0000
        dec     L0000
        cmp     LC803
        .byte   $03
        cmp     #$03
        dec     LCB03
        .byte   $03
        cpy     $0D03
        lsr     $02C3
        bne     LD4AE
LD4AE:  cmp     L0000
        dec     L0000
        .byte   $D2
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        dec     LCB03
        .byte   $03
        cpy     a:$03
        brk
        brk
        brk
        cmp     ($03),y
        .byte   $CF
        .byte   $03
        asl     LC34E
        .byte   $02
        cpy     L0000
        cmp     L0000
        dec     L0000
        .byte   $D4
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        dec     $03,x
        .byte   $CB
        .byte   $03
        cpy     a:$03
        brk
        brk
        brk
        .byte   $D3
        .byte   $03
        brk
        brk
        cmp     $03,x
        asl     a
        jmp     L03E3

        cpx     $03
        cpx     #$00
        sbc     ($03,x)
        .byte   $E2
        .byte   $03
        .byte   $DA
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DF
        brk
        sbc     $03
        inc     $03
        .byte   $E7
        .byte   $03
        brk
        tsx
        .byte   $D7
        asl     $B3AC
        .byte   $02
        ldy     $02,x
        lda     $02,x
        ldx     $02,y
        .byte   $B7
LD50C:  .byte   $02
        clv
        .byte   $02
        lda     $BA02,y
        .byte   $02
        .byte   $BB
        .byte   $02
        ldy     $BD02,x
        .byte   $02
        ldx     $BF02,y
        .byte   $02
        cpy     #$02
        cmp     ($02,x)
        ora     ($AD),y
        lda     ($01,x)
        ldx     #$01
        .byte   $A3
        ora     ($A4,x)
        ora     ($A5,x)
        ora     ($A6,x)
        ora     ($A7,x)
        ora     ($A8,x)
        ora     ($A9,x)
        ora     ($AA,x)
        ora     ($AB,x)
        ora     ($AC,x)
        ora     ($AD,x)
        ora     ($AE,x)
        ora     ($AF,x)
        ora     ($B0,x)
        ora     ($B1,x)
        ora     ($B2,x)
        ora     ($25,x)
        dec     $02BA
        tsx
        .byte   $02
        tsx
        .byte   $82
        tsx
        .byte   $82
        tsx
        .byte   $02
        tsx
        .byte   $02
        tsx
        .byte   $82
        tsx
        .byte   $82
        .byte   $BB
        .byte   $02
        .byte   $BB
        .byte   $02
        .byte   $BB
        .byte   $02
        .byte   $BB
        .byte   $02
        .byte   $BB
        .byte   $02
        ldy     $BC02,x
        .byte   $02
        ldy     $BC02,x
        .byte   $02
        ldy     $BD02,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     $BD42,x
        .byte   $02
        lda     a:$42,x
        .byte   $1A
        .byte   $8F
        rti

        brk
        .byte   $1A
        cpy     $0703
        .byte   $7A
        eor     L0000
        lsr     L0000
        eor     $40
        adc     $7000,x
        brk
        eor     $80
        lsr     $80
        eor     $C0
        ora     $7C
        .byte   $47
        brk
        .byte   $47
        rti

        adc     $7001,x
        ora     ($47,x)
        .byte   $80
        .byte   $47
        cpy     #$00
        brk
        brk
        brk
        .byte   $04
        jmp     L00DD

        dec     LDA03,x
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DC
        brk
        .byte   $04
        jmp     L00F0

        dec     LDA03,x
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DC
        brk
        .byte   $07
        jmp     L03E3

        cpx     $03
        cpx     #$00
        sbc     ($03,x)
        .byte   $E2
        .byte   $03
        .byte   $DA
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DF
        brk
        asl     LE34C
        .byte   $03
        cpx     $03
        cpx     #$00
        sbc     ($03,x)
        .byte   $E2
        .byte   $03
        .byte   $DA
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        inx
        .byte   $03
        sbc     #$03
        nop
        .byte   $03
        .byte   $EB
        .byte   $03
        brk
        .byte   $1A
        brk
        brk
        .byte   $07
        .byte   $32
        .byte   $FC
        .byte   $02
        sbc     LFD02,x
        .byte   $42
        .byte   $FC
        .byte   $42
        inc     LFF02,x
        .byte   $02
        .byte   $FF
        .byte   $42
        inc     $0B42,x
        cli
        sbc     LF902,y
        .byte   $02
        sbc     LF902,y
        .byte   $02
        sbc     LF902,y
        .byte   $02
        sbc     LF902,y
        .byte   $02
        .byte   $FA
        .byte   $02
        .byte   $FA
        .byte   $42
        .byte   $FB
        .byte   $02
        .byte   $FB
        .byte   $42
        .byte   $2B
        .byte   $5A
        ora     ($01,x)
        .byte   $02
        brk
        .byte   $03
        brk
        .byte   $04
        brk
        ora     L0000
        asl     L0000
        .byte   $07
        brk
        php
        .byte   $02
        ora     #$02
        asl     a
        .byte   $02
        .byte   $0B
        ora     ($0C,x)
        ora     ($0D,x)
        ora     ($0E,x)
        .byte   $02
        .byte   $0F
        .byte   $02
        bpl     LD65F
        ora     ($02),y
LD65F:  .byte   $12
        ora     ($13,x)
        ora     ($14,x)
        ora     ($15,x)
        .byte   $02
        asl     $02,x
        .byte   $17
        .byte   $02
        clc
        ora     ($19,x)
        ora     ($1A,x)
        brk
        .byte   $1B
        brk
        .byte   $1C
        ora     ($1D,x)
        ora     ($1E,x)
        brk
        .byte   $1F
        brk
        jsr     L2100
        brk
        .byte   $22
        .byte   $03
        .byte   $23
        .byte   $03
        bit     $01
        and     $01
        rol     $01
        .byte   $27
        ora     ($28,x)
        .byte   $02
        and     #$00
        rol     a
        brk
        .byte   $2B
        brk
        bit     $2D02
        .byte   $5A
        ora     ($01,x)
        .byte   $02
        brk
        .byte   $03
        brk
        .byte   $04
        brk
        ora     L0000
        asl     L0000
        .byte   $07
        brk
        php
        .byte   $02
        ora     #$02
        .byte   $3C
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $0F02
        .byte   $02
        bpl     LD6B9
        .byte   $3D
        .byte   $02
LD6B9:  rol     $3F01,x
        ora     ($40,x)
        ora     ($15,x)
        .byte   $02
        asl     $02,x
        eor     ($01,x)
        .byte   $42
        ora     ($43,x)
        ora     ($45,x)
        brk
        lsr     L0000
        .byte   $47
        ora     ($48,x)
        ora     ($1E,x)
        brk
        .byte   $1F
        brk
        jsr     L2100
        brk
        .byte   $22
        .byte   $03
        .byte   $23
        .byte   $03
        bit     $01
        and     $01
        rol     $01
        .byte   $27
        ora     ($28,x)
        .byte   $02
        and     #$00
        rol     a
        brk
        .byte   $2B
        brk
        eor     #$02
        lsr     a
        .byte   $02
        .byte   $44
        ora     ($2D,x)
        .byte   $5A
        ora     ($01,x)
        .byte   $02
        brk
        .byte   $03
        brk
        .byte   $04
        brk
        ora     L0000
        asl     L0000
        .byte   $07
        brk
        php
        .byte   $02
        ora     #$02
        and     $2E02
        ora     ($2F,x)
        ora     (L0000,x)
        .byte   $02
        asl     $0F02
        .byte   $02
        bpl     LD717
        bmi     LD719
LD717:  and     ($01),y
LD719:  .byte   $32
        ora     ($33,x)
        ora     ($15,x)
        .byte   $02
        asl     $02,x
        .byte   $34
        ora     ($35,x)
        ora     ($36,x)
        ora     ($38,x)
        brk
        .byte   $1B
        brk
        and     $3A01,y
        ora     ($1E,x)
        brk
        .byte   $1F
        brk
        jsr     L2100
        brk
        .byte   $22
        .byte   $03
        .byte   $23
        .byte   $03
        bit     $01
        and     $01
        rol     $01
        .byte   $27
        ora     ($28,x)
        .byte   $02
        and     #$00
        rol     a
        brk
        .byte   $2B
        brk
        .byte   $3B
        .byte   $02
        brk
        brk
        .byte   $37
        ora     ($0F,x)
        .byte   $5C
        brk
        brk
        .byte   $4B
        ora     ($4C,x)
        ora     ($4E,x)
        ora     ($4F,x)
        ora     ($50,x)
        ora     ($51,x)
        ora     ($52,x)
        ora     ($53,x)
        ora     ($54,x)
        ora     (L0000,x)
        brk
        brk
        brk
        eor     $01,x
        lsr     $01,x
        .byte   $57
        .byte   $03
        eor     $0501
        ldx     a:L0000,y
        cli
        ora     (L0000,x)
        brk
        eor     $5A01,y
        ora     ($5B,x)
        ora     ($01,x)
        dec     $5C
        ora     ($5D,x)
        ora     (L0000,x)
        tsx
        lsr     $0801,x
        ldx     $03C5,y
        dec     $03
        .byte   $C7
        .byte   $03
        .byte   $C2
        .byte   $83
        sta     ($03),y
        .byte   $C2
        .byte   $C3
        .byte   $C3
        .byte   $03
        .byte   $C2
        .byte   $43
        .byte   $C2
        .byte   $03
        asl     $5F5B
        .byte   $02
        rts

        .byte   $02
        adc     ($02,x)
        .byte   $62
        .byte   $02
        .byte   $63
        .byte   $02
        .byte   $64
        .byte   $02
        adc     $02
        ror     $02
        .byte   $67
        .byte   $02
        pla
        .byte   $02
        adc     #$02
        ror     a
        .byte   $02
        .byte   $6B
        .byte   $02
        jmp     (L6D02)

        .byte   $03
        ora     ($2A,x)
        .byte   $D2
        brk
        cmp     L0000,x
        ora     ($31,x)
        .byte   $D3
        .byte   $03
        .byte   $EF
        .byte   $83
        asl     $6E5C
        brk
        .byte   $6F
        brk
        stx     L0000,y
        .byte   $97
        brk
        tya
        brk
        sta     $9A00,y
        brk
        .byte   $9B
        brk
        .byte   $9C
        brk
        sta     $7E00,x
        brk
        .byte   $7F
        brk
        .byte   $80
        brk
        sta     (L0000,x)
        .byte   $82
        .byte   $03
        asl     $6E5C
        brk
        .byte   $6F
        brk
        stx     L0000,y
        .byte   $83
        brk
        sty     L0000
        sta     $9A00,y
        brk
        .byte   $9E
        brk
        stx     L0000
        sta     $7E00,x
LD802:  brk
        .byte   $7F
        brk
        .byte   $80
        brk
        sta     (L0000,x)
        .byte   $82
        .byte   $03
        asl     $6E5C
        brk
        .byte   $6F
        brk
        stx     L0000,y
        .byte   $87
        brk
        sty     L0000
        sta     $9A00,y
        brk
        dey
        brk
        .byte   $89
        brk
        sta     $7E00,x
        brk
        .byte   $7F
        brk
        .byte   $80
        brk
        sta     (L0000,x)
        .byte   $82
        .byte   $03
        .byte   $0F
        lsr     $0290,x
        sta     ($02),y
        .byte   $92
        .byte   $02
        .byte   $93
        .byte   $02
        sty     $02,x
        sta     $02,x
        stx     $02,y
        .byte   $97
        .byte   $02
        tya
        .byte   $02
        sta     $9A02,y
        .byte   $03
        .byte   $9B
        .byte   $03
        .byte   $9C
        .byte   $02
        sta     $9E02,x
        .byte   $02
        .byte   $9F
        brk
        bpl     LD8B1
        bcc     LD853
        sta     ($02),y
LD853:  .byte   $92
        .byte   $02
        ldy     #$02
        lda     ($02,x)
        ldx     #$02
        .byte   $A3
        .byte   $02
        ldy     $02
        lda     $02
        ldx     $02
        .byte   $A7
        .byte   $02
        tay
        .byte   $02
        lda     #$03
        tax
        .byte   $03
        .byte   $AB
        .byte   $02
        ldy     $9F02
        brk
        .byte   $0F
        .byte   $74
        bcc     LD877
        sta     ($02),y
LD877:  .byte   $92
        .byte   $02
        .byte   $93
        .byte   $02
        sty     $02,x
        sta     $02,x
        stx     $02,y
        lda     $AE02
        .byte   $02
        .byte   $AF
        .byte   $02
        bcs     LD88C
        lda     ($03),y
        .byte   $B2
LD88C:  .byte   $03
        .byte   $B3
LD88E:  .byte   $02
        ldy     $02,x
        .byte   $9F
        brk
        bpl     LD90B
        bcc     LD899
        sta     ($02),y
LD899:  .byte   $92
        .byte   $02
        lda     $02,x
        ldx     $02,y
        sta     $02,x
        stx     $02,y
        .byte   $B7
        .byte   $02
        clv
        .byte   $02
        lda     $BA02,y
        .byte   $02
        .byte   $BB
        .byte   $02
        ldy     $BD03,x
        .byte   $03
LD8B1:  ldx     $BF02,y
        .byte   $02
        .byte   $CF
        brk
        ora     $52
        .byte   $C2
        brk
        .byte   $C3
        ora     ($C4,x)
        ora     ($C5,x)
        ora     ($C0,x)
        brk
        cmp     (L0000,x)
        ora     $C4
        .byte   $C2
        brk
        .byte   $C3
        ora     ($C6,x)
        ora     ($C7,x)
        ora     ($C0,x)
        brk
        cmp     (L0000,x)
        ora     $C4
        iny
        brk
        cmp     #$01
        dex
        ora     ($CB,x)
        .byte   $01
LD8DD:  cpy     #$00
        cmp     (L0000,x)
        .byte   $02
        dec     $CD
        brk
        dec     LCC00
        brk
        .byte   $07
        sec
        beq     LD8EF
        sbc     ($02),y
LD8EF:  .byte   $F2
        .byte   $02
        .byte   $F3
        .byte   $02
        .byte   $F4
        .byte   $02
        brk
        brk
        sbc     $02,x
        inc     $02,x
        ora     ($2A,x)
        .byte   $F7
        .byte   $03
        sed
        .byte   $03
        .byte   $07
        .byte   $32
LD903:  .byte   $FC
        brk
        sbc     LFD00,x
        rti

        .byte   $FC
        rti

LD90B:  .byte   $FE
LD90C:  brk
        .byte   $FF
        brk
        .byte   $FF
        rti

        inc     $1140,x
        eor     a:$A2,x
        .byte   $A3
        brk
        ldy     L0000
        lda     L0000
        ldx     L0000
        .byte   $A7
        brk
        tay
        brk
        lda     #$00
        tax
        brk
        .byte   $AB
        brk
        ldy     $AD00
        brk
        ldx     $AF00
        brk
        .byte   $6F
        ora     ($B0,x)
        ora     ($7E,x)
        ora     ($7F,x)
        ora     ($03,x)
        bvc     LD90C
        brk
        bne     LD97F
        cmp     (L0000),y
        .byte   $D2
        brk
        .byte   $03
        .byte   $52
        bne     LD947
LD947:  bne     LD989
        .byte   $D3
        brk
        .byte   $D4
        brk
        ora     $50
        dec     L0000,x
        .byte   $D7
        brk
        dec     LCF00
        brk
        cmp     L0000,x
        cmp     $40,x
        ora     $52
        dec     L0000,x
        .byte   $D7
        brk
        cpx     #$00
        sbc     (L0000,x)
        cmp     L0000,x
        cmp     $40,x
        .byte   $0B
        tax
        cld
        .byte   $02
        cld
        .byte   $42
        cmp     LDA02,y
        .byte   $02
        .byte   $DA
        .byte   $42
        cmp     LDB42,y
        .byte   $02
        .byte   $DB
        .byte   $42
        .byte   $DC
        brk
        .byte   $DD
        brk
LD97F:  dec     LDF00,x
        brk
        .byte   $0B
        tax
        cld
        .byte   $02
        cld
        .byte   $42
LD989:  cmp     LDA02,y
        .byte   $02
        .byte   $DA
        .byte   $42
        cmp     LDB42,y
        .byte   $02
LD993:  .byte   $DB
        .byte   $42
        sbc     LFE00,x
        brk
        .byte   $FB
        brk
        .byte   $FC
        brk
        .byte   $0B
        tax
        cld
        .byte   $02
        cld
        .byte   $42
        cmp     LDA02,y
        .byte   $02
        .byte   $DA
        .byte   $42
        cmp     LDB42,y
        .byte   $02
        .byte   $DB
        .byte   $42
        inc     LFD40,x
        rti

        .byte   $FC
        rti

        .byte   $FB
        rti

        ora     ($4C,x)
        cld
        .byte   $02
LD9BB:  cmp     $1202,y
        bcs     LD993
        .byte   $02
        .byte   $D4
        .byte   $03
        cmp     L0000,x
        dec     L0000,x
        .byte   $D7
        brk
        cld
        brk
        .byte   $D9
        .byte   $03
LD9CD:  .byte   $DA
        .byte   $02
        .byte   $DB
        .byte   $03
        .byte   $DC
        .byte   $03
        cmp     LDE03,x
        brk
        .byte   $DF
        brk
        cpx     #$00
        sbc     (L0000,x)
        .byte   $E2
        brk
        .byte   $E3
        brk
        cpx     L0000
        sbc     L0000
        .byte   $12
        bcs     LD9BB
        .byte   $02
        inc     $03
        .byte   $B7
        brk
        .byte   $BF
        brk
        .byte   $D7
        brk
        cld
        brk
        cmp     LDA03,y
        .byte   $02
        .byte   $DB
        .byte   $03
        .byte   $DC
        .byte   $03
        cmp     LDE03,x
        brk
        .byte   $DF
LDA00:  brk
        .byte   $E0
LDA02:  brk
LDA03:  sbc     (L0000,x)
        .byte   $E2
        brk
        .byte   $E3
        brk
        cpx     L0000
        sbc     L0000
        .byte   $03
        jmp     L00E9

        nop
        brk
        .byte   $E7
        brk
        inx
        brk
        .byte   $03
        jmp     L40EF

        .byte   $EF
        brk
        sbc     LEE00
        brk
        .byte   $0C
        rts

        .byte   $DC
        brk
        cmp     LDE00,x
        brk
        .byte   $DF
        brk
        cpx     #$00
        sbc     (L0000,x)
        .byte   $E2
        brk
        .byte   $E3
        brk
        cpx     L0000
        sbc     L0000
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        php
        ldx     $01C5,y
        dec     $01
        .byte   $C7
        ora     ($C2,x)
        sta     ($91,x)
        ora     ($C2,x)
        cmp     ($C3,x)
        ora     ($C2,x)
        eor     ($C2,x)
        ora     ($08,x)
        ldx     $03D9,y
        .byte   $DA
        .byte   $03
        .byte   $DB
        .byte   $03
        .byte   $C2
        .byte   $83
        sta     ($03),y
        .byte   $C2
        .byte   $C3
        .byte   $C3
        .byte   $03
        .byte   $C2
        .byte   $43
        .byte   $C2
        .byte   $03
        php
        ldx     $01D9,y
        .byte   $DA
        ora     ($DB,x)
        ora     ($C2,x)
        sta     ($91,x)
        ora     ($C2,x)
        cmp     ($C3,x)
        ora     ($C2,x)
        eor     ($C2,x)
        ora     ($0B,x)
        sei
        dec     L0000,x
        .byte   $D7
        brk
        cld
        brk
        cld
        brk
        cmp     LDF00,x
        brk
        .byte   $DC
        brk
        .byte   $D7
        .byte   $80
        cld
        .byte   $80
        cld
        .byte   $80
        dec     LDF00,x
        .byte   $80
        .byte   $0F
        .byte   $5C
        brk
        brk
        .byte   $4B
        ora     ($4C,x)
        ora     ($4E,x)
        ora     ($4F,x)
        ora     ($50,x)
        ora     ($51,x)
        ora     ($52,x)
        ora     ($53,x)
        ora     ($54,x)
        ora     (L0000,x)
        brk
        brk
        brk
        eor     $01,x
        lsr     $01,x
        bcc     LDAB6
        eor     $0F01
LDAB6:  .byte   $5C
        brk
        brk
        .byte   $4B
        ora     ($4C,x)
        ora     ($4E,x)
        ora     ($4F,x)
        ora     ($50,x)
        ora     ($51,x)
        ora     ($52,x)
        ora     ($53,x)
        ora     ($54,x)
        ora     (L0000,x)
        brk
        brk
        brk
        eor     $01,x
        lsr     $01,x
        cpy     $03
        eor     $0F01
        .byte   $5C
        brk
        brk
        .byte   $4B
        ora     ($4C,x)
        ora     ($4E,x)
        ora     ($4F,x)
        ora     ($50,x)
        ora     ($51,x)
        ora     ($52,x)
        ora     ($53,x)
        ora     ($54,x)
        ora     (L0000,x)
        brk
        brk
        brk
        eor     $01,x
        lsr     $01,x
        .byte   $D4
        .byte   $03
        eor     $0101
        rol     a
        .byte   $D2
        .byte   $03
        cmp     $03,x
        brk
        .byte   $1A
LDB01:  .byte   $8F
        ora     (L0000,x)
        .byte   $1A
        sta     $01
        brk
        .byte   $1A
        .byte   $8F
        eor     ($F8,x)
        .byte   $FC
        asl     L0030,x
        pha
        .byte   $64
        .byte   $80
        .byte   $9C
        ldx     $D2,y
        inx
        .byte   $FA
        bpl     LDB3F
        rol     $625A,x
        pla
        .byte   $82
        .byte   $9C
        ldx     $D2,y
        inc     $260A
        .byte   $42
        lsr     $7E7A,x
        dey
LDB29:  sty     $96B0
        ldy     #$AA
        .byte   $B2
        ldy     $B8,x
        ldy     LC4C0,x
        dec     LE2D8
        inx
        inc     LFEF4
        .byte   $04
        asl     $2214
LDB3F:  bmi     LDB7D
        pha
LDB42:  .byte   $54
        rts

        pla
        .byte   $7C
        stx     $BAA4
        bne     LDB29
        cpx     $1C04
        .byte   $34
        jmp     L7E66

        .byte   $82
        sty     $A6,x
        ldy     $CE,x
        nop
        sed
        asl     $3C24
        .byte   $5A
        .byte   $72
        txa
        ldx     #$A8
        cpy     #$D4
        nop
        asl     $1C
        .byte   $32
        pha
        lsr     $7A76,x
        ror     $8C8C,x
        stx     $A0,y
        ldx     $B8
        dec     $D4
        .byte   $E2
        sed
        asl     $1C
        .byte   $34
        pha
        .byte   $5C
        bvs     LDB01
LDB7D:  .byte   $9C
        ldy     $CC,x
        cpx     $FA
        inc     $1408,x
        asl     $4A2A,x
        rts

        ror     a
        txa
        tax
        ldy     $BE,x
        cpy     $E4
        .byte   $04
        bit     $46
        ror     $86
        txa
        stx     $AC92
        .byte   $D2
        .byte   $E2
        .byte   $F4
        .byte   $06
LDB9D:  .byte   $20
        .byte   $3A
LDB9F:  bvc     LDC07
        .byte   $7A
        stx     $B6A2
        dex
        cld
        .byte   $C2
        nop
        asl     $5230
        .byte   $74
        ror     $8A82,x
        sty     $AA,x
        cpy     $D8
        .byte   $DC
        cpx     #$F6
        .byte   $0C
        .byte   $22
        .byte   $34
        .byte   $54
        .byte   $74
        stx     $B49C
        dex
        .byte   $DA
        inc     $0A,x
        .byte   $14
        asl     $3C2C,x
        jmp     L7C68

        .byte   $92
        bcs     LDB9D
        beq     LDBDF
        .byte   $34
        cli
        .byte   $7A
        .byte   $9C
        ldy     LFCDC,x
        asl     $6240,x
        sty     $A0
        .byte   $BC
        cld
LDBDD:  .byte   $F4
        .byte   $10
LDBDF:  bit     $4A36
        lsr     $6E68,x
        .byte   $74
        .byte   $7C
        stx     $9A
        bcs     LDB9F
        .byte   $DA
        beq     LDC0E
        bvc     LDC62
        sty     $98,x
        .byte   $9C
        ldy     LDCC6
        inc     $04,x
        asl     $3018
        lsr     a
        .byte   $54
        .byte   $72
        .byte   $92
        tay
        dec     $E6
        inc     $2101,x
        .byte   $47
        inx
LDC07:  sta     $99,x
        sta     $BDAF,x
        cmp     ($CD,x)
LDC0E:  cmp     $0BEB,y
        .byte   $0F
        and     ($3B,x)
        sta     $F3,x
        eor     ($73),y
        sta     ($87,x)
        .byte   $8B
        .byte   $9F
        .byte   $BF
        cmp     $CB
        .byte   $EB
        .byte   $0B
        .byte   $2B
        eor     $9371
        .byte   $B7
        cmp     $D3
        sbc     (L00E9,x)
        .byte   $FB
        ora     ($13,x)
        and     $4D43,y
        .byte   $5B
        adc     #$83
        sta     $BDB7,x
        sbc     $0D
        .byte   $17
        .byte   $21
LDC3A:  .byte   $3D
        .byte   $51
LDC3C:  adc     $79
LDC3E:  .byte   $93
        lda     $D7,x
        sbc     $03FF,y
        .byte   $07
        sta     ($81,x)
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        .byte   $83
        sty     $84
        sty     $84
LDC60:  sty     $84
LDC62:  sty     $84
        ora     $84
        sty     $84
        sty     $84
        sty     $84
        sty     $84
        sty     $84
        sty     $84
LDC72:  sty     $84
        sty     $85
        sta     $85
        sta     $85
        sta     $85
        sta     $85
        sta     $85
        sta     $85
        sta     $85
        sta     $85
        stx     $86
        stx     $86
        stx     $86
        stx     $86
        stx     $86
        stx     $86
        stx     $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
LDC9A:  .byte   $87
        .byte   $87
LDC9C:  .byte   $87
        .byte   $87
LDC9E:  dey
        dey
LDCA0:  dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        dey
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        .byte   $89
        txa
        txa
        txa
        txa
        txa
        txa
        txa
        txa
        txa
LDCC6:  txa
        txa
        txa
        txa
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        sty     $8C8C
        sty     $8C8C
        sty     $8C8C
        sty     $058C
        sty     $8D8D
        sta     $8D8D
        sta     $8D8D
        sta     $8D8D
        sta     $8D8D
        stx     $8E8E
        stx     $8E8E
        stx     $8E8E
        stx     $8F8E
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        bcc     LDC9A
        bcc     LDC9C
        bcc     LDC9E
        bcc     LDCA0
LDD10:  sta     ($91),y
        sta     ($91),y
        sta     ($91),y
        sta     ($91),y
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
LDD20:  .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $93
        .byte   $93
        .byte   $93
        .byte   $93
        .byte   $93
        .byte   $93
        .byte   $93
        .byte   $93
        .byte   $93
        .byte   $93
        sty     $94,x
        sty     $94,x
        sty     $94,x
        sty     $94,x
        sty     $94,x
        sty     $94,x
        sta     $95,x
        sta     $05,x
        sta     $95,x
        sta     $95,x
        sta     $95,x
        sta     $95,x
        sta     $96,x
        stx     $96,y
        stx     $96,y
        stx     $97,y
        .byte   $97
        .byte   $97
        .byte   $97
        .byte   $97
        .byte   $97
        .byte   $97
        .byte   $97
        .byte   $97
        .byte   $97
        tya
        tya
        tya
        tya
        tya
        tya
        tya
        tya
        tya
        tya
        tya
        sta     $9999,y
        sta     $9999,y
        sta     $9999,y
        sta     $9999,y
        txs
        txs
        txs
        txs
        txs
        txs
        txs
        txs
        txs
        txs
        txs
        txs
        .byte   $9B
        .byte   $9B
        .byte   $F4
        .byte   $FC
        .byte   $FC
        brk
        cpx     LF4FA
        ora     ($F4,x)
        sbc     LF1F4,y
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $FC
        sed
        cpx     LF4FE
        .byte   $F7
        .byte   $F4
        .byte   $FF
        .byte   $F4
        .byte   $07
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
        .byte   $FA
        .byte   $FC
        inc     LF8EC,x
        .byte   $F4
        .byte   $FF
        .byte   $F4
        .byte   $F7
        .byte   $F4
        .byte   $EF
        .byte   $FC
        .byte   $02
        .byte   $FC
        .byte   $FA
        .byte   $FC
        .byte   $F2
        .byte   $04
        .byte   $02
        .byte   $04
        .byte   $FA
        .byte   $04
        .byte   $F2
        .byte   $F4
        inc     LFAFC,x
        cpx     LF400
        sbc     $01F4,y
        .byte   $F4
        ora     #$FC
        inc     $FC,x
        inc     $06FC,x
        .byte   $04
        inc     $04,x
        inc     $0604,x
        .byte   $F6
LDDE0:  .byte   $F7
        inc     LF6F4
        .byte   $04
        inc     $FC,x
        inc     $F4,x
        inc     $EC,x
        inc     LFE04,x
        .byte   $FC
        inc     LFEF4,x
        cpx     LFF06
        inc     $01,x
        inc     LF604
        .byte   $F4
        inc     $FC,x
        inc     $04,x
        .byte   $F6
LDE00:  .byte   $0C
        .byte   $FE
LDE02:  .byte   $F4
LDE03:  inc     LFEFC,x
        .byte   $04
        inc     $060C,x
        sbc     LF7F8,y
        beq     LDE03
        sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        sed
        cpx     $0400
        brk
        .byte   $FC
        brk
        .byte   $F4
        brk
        .byte   $EC
LDE1F:  php
        .byte   $04
        php
        .byte   $FC
        php
        .byte   $F4
        sed
        ora     (L00F0,x)
        .byte   $04
        sed
        .byte   $F4
        sed
        .byte   $FC
        sed
        .byte   $04
        sed
        .byte   $0C
        brk
        .byte   $F4
        brk
        .byte   $FC
        brk
        .byte   $04
        brk
        .byte   $0C
        php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        .byte   $F4
        .byte   $F4
        cpx     LF4F4
        .byte   $FC
        .byte   $F4
        .byte   $F4
        .byte   $F4
        cpx     $04FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        sbc     $04EC,x
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        .byte   $04
        cpx     $04F4
        cpx     LF404
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $0C
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        sbc     $040C,x
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $0C
        .byte   $F4
        .byte   $FC
        .byte   $FC
        brk
        sbc     LECED,y
        .byte   $FA
        .byte   $F4
        ora     ($F4,x)
        sbc     LF1F4,y
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $FC
        sed
        sbc     LEC0B,y
        inc     LF7F4,x
        .byte   $F4
        .byte   $FF
        .byte   $F4
        .byte   $07
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $FB
        ora     #$F6
        .byte   $F4
        sbc     $FC,y
        .byte   $FC
        sed
        .byte   $FC
        beq     LDEB8
        brk
        .byte   $04
        sed
        .byte   $04
LDEB8:  beq     LDEBE
        php
        .byte   $FC
        .byte   $FD
        .byte   $09
LDEBE:  .byte   $02
        .byte   $F4
        .byte   $FF
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $04
LDECE:  beq     LDECE
        sbc     LF806
        .byte   $FC
LDED4:  brk
        .byte   $FC
        sed
        .byte   $FC
        .byte   $F0
LDED9:  .byte   $04
        brk
        .byte   $04
        sed
        .byte   $04
LDEDE:  beq     LDED4
        .byte   $FC
        .byte   $F4
        .byte   $F4
        inc     $060B,x
        brk
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        inc     $06ED,x
        sed
        .byte   $F4
        brk
        .byte   $F4
LDEFE:  sed
        .byte   $F4
LDF00:  beq     LDEFE
        brk
        .byte   $FC
        sed
        .byte   $FC
        beq     LDF0C
        brk
        .byte   $04
        sed
        .byte   $04
LDF0C:  beq     LDF0C
        .byte   $0B
        asl     L0000
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $F4
        php
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $FC
        .byte   $FB
        ora     #$F6
        .byte   $04
        cpx     LF9F4
        .byte   $FC
        brk
        .byte   $FC
        sed
        .byte   $FC
        beq     LDF36
        brk
        .byte   $04
        sed
        .byte   $04
LDF36:  beq     LDF3C
        php
        .byte   $FC
        .byte   $FD
        .byte   $09
LDF3C:  .byte   $02
        .byte   $04
        .byte   $0C
        .byte   $F4
        .byte   $FF
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
LDF46:  php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $04
        beq     LDF46
        .byte   $03
        cpx     LECFC
        .byte   $F4
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $F4
        .byte   $F4
        cpx     $04FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        inc     $F5,x
        cpx     LECFC
        .byte   $04
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $0C
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        sed
        .byte   $F4
        sed
        .byte   $FC
        sed
        .byte   $04
        .byte   $FC
        brk
        .byte   $FC
        sed
        .byte   $F4
        brk
        .byte   $F4
        sed
        .byte   $04
        brk
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $04
        sed
        sed
LDFB5:  sed
        brk
        brk
        sed
        brk
        brk
        beq     LDFB5
        beq     LDFBF
LDFBF:  php
        sed
        php
        brk
        sed
        brk
        sed
        sed
LDFC7:  brk
        brk
        brk
        sed
        beq     LDFCD
LDFCD:  beq     LDFC7
        php
        brk
        php
        sed
        .byte   $F4
        inc     $01FF,x
        cpx     LF4FC
        .byte   $03
        .byte   $F4
        .byte   $FB
        .byte   $F4
        .byte   $F3
        .byte   $FC
        ora     ($FC,x)
        sbc     $0104,y
        .byte   $04
        sbc     L010C,y
        .byte   $0C
        sbc     $09FC,y
        .byte   $F4
        .byte   $FC
        .byte   $FF
        sbc     LFEEC,y
        .byte   $F4
        .byte   $F7
        .byte   $F4
        .byte   $FF
        .byte   $F4
        .byte   $07
        .byte   $FC
        sbc     $01FC,y
        .byte   $04
        sbc     $0104,y
        .byte   $0C
LE002:  sbc     L010C,y
        .byte   $FC
        sbc     ($F4),y
        inc     LF1F9,x
        cpx     LF4FC
        .byte   $03
        .byte   $F4
        .byte   $FB
        .byte   $F4
        .byte   $F3
        .byte   $FC
        ora     ($FC,x)
        sbc     $0104,y
        .byte   $04
        sbc     L010C,y
        .byte   $0C
        sbc     LFCF4,y
        sbc     LEC09,y
        inc     LF7F4,x
        .byte   $F4
        .byte   $FF
        .byte   $F4
        .byte   $07
        .byte   $FC
        sbc     $01FC,y
        .byte   $04
        sbc     $0104,y
        .byte   $0C
        sbc     L010C,y
        .byte   $F4
        sed
        cpx     LF4F8
        brk
        .byte   $F4
LE03E:  sed
        .byte   $F4
        beq     LE03E
        php
        .byte   $FC
        brk
        .byte   $FC
        sed
        sbc     $04F0,x
        brk
        .byte   $04
        sed
        .byte   $0C
        brk
        .byte   $0C
        sed
        .byte   $F4
        brk
        cpx     LF400
        sed
        .byte   $F4
        brk
        .byte   $F4
LE05A:  php
        .byte   $FC
        beq     LE05A
        sed
        .byte   $FC
        brk
        sbc     $0408,x
        sed
        .byte   $04
        brk
        .byte   $0C
        sed
        .byte   $0C
        brk
        sed
        sed
LE06D:  sed
        brk
        brk
        sed
        brk
        brk
        bpl     LE06D
        bpl     LE077
LE077:  clc
        sed
        clc
        brk
        cpx     #$18
        cpx     #$20
        cpx     #$28
        cpx     #$30
        cpx     #$38
        cpx     #$40
        cpx     #$48
        clc
        brk
        clc
        php
        clc
        bpl     LE0A8
        clc
        clc
        .byte   $20
        clc
LE094:  plp
        clc
        bmi     LE0D0
        brk
        sec
        php
        .byte   $74
        plp
        .byte   $74
        bmi     LE094
        sed
        brk
        .byte   $07
        cpx     LF4F8
        brk
        .byte   $F4
LE0A8:  sed
        .byte   $F4
        beq     LE0A8
        php
        .byte   $FC
        brk
        .byte   $FC
        sed
        sbc     $04F0,x
        brk
        .byte   $04
        sed
        .byte   $0C
        brk
        .byte   $F4
        brk
        brk
        sbc     ($EC),y
        brk
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $F4
LE0C4:  php
        .byte   $FC
        beq     LE0C4
        sed
        .byte   $FC
        brk
        sbc     $0408,x
        sed
        .byte   $04
LE0D0:  brk
        .byte   $0C
        sed
        .byte   $F3
        .byte   $04
        .byte   $F4
        sed
        cpx     LF4F8
        brk
        .byte   $F4
LE0DC:  sed
        .byte   $F4
        beq     LE0DC
        php
        .byte   $FC
        brk
        .byte   $FC
        sed
        sbc     $04F0,x
        brk
        .byte   $04
        sed
        .byte   $0C
        brk
        .byte   $F3
        .byte   $F4
        .byte   $F4
        brk
        cpx     LF400
        sed
        .byte   $F4
        brk
        .byte   $F4
LE0F8:  php
        .byte   $FC
        beq     LE0F8
        sed
        .byte   $FC
        brk
        .byte   $FD
LE100:  php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $0C
        sed
        sed
        brk
        brk
        brk
        sed
        sed
        brk
        sed
        php
        sed
        sed
        sed
        brk
        sed
        sed
        brk
        brk
        brk
        php
        brk
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $FC
        .byte   $FC
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $F4
        brk
        .byte   $F4
        sed
        .byte   $FC
        .byte   $FC
        .byte   $04
        brk
        .byte   $04
        sed
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $FC
LE136:  .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        sed
        beq     LE136
        sed
        sed
        brk
        sed
        php
        brk
        beq     LE146
LE146:  sed
        brk
        brk
        brk
        php
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
LE150:  .byte   $04
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $14
        sed
        .byte   $F0
LE157:  sed
        sed
        sed
        brk
        sed
        php
        brk
        beq     LE160
LE160:  sed
LE161:  brk
        brk
        brk
        php
        beq     LE157
        beq     LE161
        sed
LE16A:  php
        sed
        brk
        sed
        sed
        sed
        beq     LE172
LE172:  php
        brk
        brk
        brk
        sed
        brk
        beq     LE16A
        php
        beq     LE17D
LE17D:  sed
        .byte   $EC
LE17F:  sed
        .byte   $F4
LE181:  sed
        .byte   $FC
        sed
        .byte   $04
        brk
        .byte   $F4
        brk
        .byte   $FC
        brk
        .byte   $04
LE18B:  beq     LE181
        beq     LE18B
        beq     LE195
        beq     LE17F
        sed
        .byte   $0C
LE195:  sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
LE19B:  brk
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
LE1A1:  beq     LE1A7
        beq     LE1A1
        beq     LE19B
LE1A7:  beq     LE1B5
        beq     LE1A7
        sed
        .byte   $F4
        sed
        .byte   $FC
        sed
        .byte   $04
        brk
        .byte   $F4
        brk
        .byte   $FC
LE1B5:  brk
        .byte   $04
        php
        .byte   $F4
        php
        .byte   $FC
        sed
        cpx     LECF0
        beq     LE1B5
LE1C1:  beq     LE1C7
        beq     LE1C1
        sed
        .byte   $04
LE1C7:  sed
        .byte   $FC
        sed
        .byte   $F4
        brk
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
LE1D1:  php
        .byte   $04
        php
        .byte   $FC
        sed
        .byte   $0C
        beq     LE1E5
        beq     LE1DF
LE1DB:  beq     LE1D1
        beq     LE1DB
LE1DF:  sed
        sed
        sed
        brk
        brk
        sed
LE1E5:  brk
LE1E6:  brk
        inx
        .byte   $FC
        php
        sed
LE1EB:  php
        brk
        beq     LE1EB
        sed
        brk
        sed
        sed
        brk
        brk
        brk
        sed
        inx
        .byte   $FC
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $F4
LE1FE:  php
        .byte   $FC
LE200:  beq     LE1FE
LE202:  sed
        .byte   $FC
        brk
        .byte   $FC
        php
        .byte   $04
        beq     LE20E
        sed
        .byte   $04
        brk
        .byte   $04
LE20E:  php
        .byte   $0C
        beq     LE21E
        sed
        .byte   $0C
        brk
        .byte   $0C
        php
        .byte   $F4
        brk
        .byte   $F4
LE21A:  sed
        .byte   $F4
        beq     LE21A
LE21E:  php
        .byte   $FC
        brk
        .byte   $FC
        sed
        .byte   $FC
        beq     LE22A
        php
        .byte   $04
LE228:  brk
        .byte   $04
LE22A:  sed
        .byte   $04
        beq     LE23A
        php
        .byte   $0C
        brk
        .byte   $0C
        sed
        .byte   $0C
        beq     LE228
        sed
        .byte   $F2
LE238:  brk
        .byte   $F2
LE23A:  php
        .byte   $FA
        beq     LE238
        sed
        .byte   $FA
        brk
        .byte   $FA
        php
        .byte   $02
        beq     LE248
        sed
        .byte   $02
LE248:  brk
        .byte   $02
        php
        asl     a
        beq     LE258
        sed
        asl     a
        brk
        asl     a
        php
        asl     a
        bpl     LE248
LE256:  brk
        .byte   $F2
LE258:  sed
        .byte   $F2
        beq     LE256
        php
        .byte   $FA
        brk
        .byte   $FA
        sed
        .byte   $FA
        beq     LE266
        php
        .byte   $02
LE266:  brk
        .byte   $02
        sed
        .byte   $02
        beq     LE276
        php
        asl     a
        brk
        asl     a
        sed
        asl     a
        beq     LE27E
        inx
        .byte   $F0
LE276:  sed
        beq     LE279
LE279:  sed
        sed
        sed
LE27C:  brk
        brk
LE27E:  sed
        brk
        brk
        php
        sed
        php
        brk
        sed
        beq     LE288
LE288:  beq     LE292
        beq     LE27C
        php
        sed
        php
        brk
        php
        php
LE292:  php
LE293:  php
        bpl     LE296
LE296:  bpl     LE288
        brk
        beq     LE293
        sed
        brk
        sed
        sed
LE29F:  brk
        brk
        brk
        sed
        php
        brk
        php
        sed
        sed
        php
        brk
        php
        php
        php
        beq     LE29F
        sed
        beq     LE2B2
LE2B2:  beq     LE2BC
LE2B4:  beq     LE2BE
        inx
        brk
        inx
        sed
        beq     LE2B4
LE2BC:  sed
        sed
LE2BE:  brk
        sed
        php
        brk
        beq     LE2C4
LE2C4:  sed
        brk
        brk
        brk
        php
        sed
        .byte   $FD
LE2CB:  sed
        ora     $F8
        .byte   $FB
        sed
LE2D0:  .byte   $03
        beq     LE2CB
        beq     LE2D5
LE2D5:  sed
        php
        sed
LE2D8:  brk
        sed
        sed
        sed
        beq     LE2DE
LE2DE:  php
        brk
        brk
        brk
        sed
        brk
        beq     LE2DE
        .byte   $FB
LE2E7:  sed
        .byte   $F3
LE2E9:  sed
        sbc     LF5F8,x
        beq     LE2EF
LE2EF:  beq     LE2E9
LE2F1:  beq     LE2E7
        beq     LE2F1
        sed
        cpx     LF4F8
        sed
        .byte   $FC
        sed
        .byte   $04
        brk
        cpx     LF400
        brk
        .byte   $FC
LE303:  brk
        .byte   $04
        php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
LE30B:  beq     LE311
        beq     LE30B
        sed
        .byte   $0C
LE311:  sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        brk
        .byte   $0C
        brk
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
        php
        .byte   $04
        php
        .byte   $FC
        php
        .byte   $F4
        sbc     ($F4),y
        sbc     ($FC),y
        sbc     LF9EC,y
        .byte   $F4
        sbc     LF9FC,y
        .byte   $04
        ora     ($EC,x)
        ora     ($F4,x)
        ora     ($FC,x)
        ora     ($04,x)
        ora     #$F4
        ora     #$FC
        ora     #$04
        sbc     ($04),y
        sbc     ($FC),y
        sbc     LF90C,y
        .byte   $04
        sbc     LF9FC,y
        .byte   $F4
        .byte   $01
LE34C:  .byte   $0C
        ora     ($04,x)
        ora     ($FC,x)
        ora     ($F4,x)
LE353:  ora     #$04
        ora     #$FC
        ora     #$F4
        beq     LE353
        beq     LE35D
LE35D:  beq     LE367
        sed
        sed
LE361:  sed
LE362:  brk
        sed
        php
        brk
        sed
LE367:  brk
        brk
        brk
        php
        beq     LE36D
LE36D:  beq     LE367
        beq     LE361
        sed
        brk
        sed
        sed
        sed
        beq     LE378
LE378:  brk
        brk
        sed
        brk
        beq     LE362
        .byte   $F4
        cpx     $FC
        cpx     $04
        cpx     LECF4
        .byte   $FC
        cpx     LF404
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $FC
        cpx     $04
        cpx     $FC
        cpx     $F4
        cpx     LEC04
        .byte   $FC
        cpx     LF4F4
        .byte   $04
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $F4
        cpx     LF4F4
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $0C
        .byte   $F4
        .byte   $14
        .byte   $FC
        cpx     LF4FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $0C
        .byte   $04
        cpx     LF404
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $0C
        cpx     $FD
        cpx     LECF4
        .byte   $FC
        cpx     LEC04
        .byte   $FF
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        sbc     $EC,x
        sbc     $F4,x
        sbc     $FC,x
        sbc     $04,x
        sbc     $0C,x
        sbc     $14,x
        sbc     LFDEC,x
        .byte   $F4
        sbc     LFDFC,x
        .byte   $04
        sbc     $050C,x
        cpx     LF405
        ora     $FC
        ora     $04
        ora     $0C
        sbc     $FD
        sbc     LEDF4
        .byte   $FC
        sbc     LED04
LE3FC:  .byte   $FF
        sbc     $FC,x
        sbc     $04,x
        brk
        sed
        brk
        brk
        sed
        sed
        sed
        brk
        brk
        beq     LE3FC
        sed
        beq     LE40F
LE40F:  sed
        beq     LE41A
        beq     LE41C
        sed
        php
        brk
        sed
        cpx     #$F8
LE41A:  inx
        brk
LE41C:  cpx     #$00
        inx
        brk
        brk
        brk
        sed
        sed
        brk
LE425:  sed
        sed
        brk
        php
        beq     LE42B
LE42B:  beq     LE425
        sed
LE42E:  php
        php
        php
        php
        brk
        php
        sed
        sed
        clc
        sed
        bpl     LE43A
LE43A:  clc
        brk
        bpl     LE42E
        .byte   $FC
        sed
        .byte   $F4
        sed
        .byte   $FC
        sed
        .byte   $04
        brk
        .byte   $F4
LE447:  brk
        .byte   $FC
        brk
        .byte   $04
        php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        beq     LE447
        beq     LE459
        brk
        cpx     LECF8
LE459:  php
        cpx     LFCF0
        sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        brk
        .byte   $04
        brk
        .byte   $FC
LE467:  brk
        .byte   $F4
        php
        .byte   $04
        php
        .byte   $FC
        php
        .byte   $F4
        beq     LE475
        beq     LE467
        brk
        .byte   $0C
LE475:  sed
        .byte   $0C
        php
        .byte   $0C
        sed
        .byte   $F9
        sed
LE47C:  ora     (L0000,x)
        sed
        brk
        brk
        beq     LE47C
        beq     LE486
        sed
LE486:  .byte   $FF
        sed
LE488:  .byte   $F7
        brk
        brk
        brk
        sed
        .byte   $F0
LE48E:  .byte   $FF
        beq     LE488
        sed
LE492:  .byte   $F7
        sed
        .byte   $FF
        brk
        sed
        brk
LE498:  brk
        beq     LE492
        .byte   $F0
LE49C:  .byte   $FF
        sed
        ora     ($F8,x)
        sbc     L0000,y
LE4A3:  brk
        sed
        beq     LE4A8
        .byte   $F0
LE4A8:  sbc     LF0E0,y
        cpx     #$F8
LE4AD:  inx
        beq     LE498
        sed
        beq     LE4A3
        beq     LE4AD
        beq     LE4B7
LE4B7:  sed
        sed
        sed
        brk
        brk
        sed
        brk
        brk
        php
        sed
        php
        brk
        cpx     #$08
        cpx     #$00
        inx
LE4C8:  php
LE4C9:  inx
        brk
        beq     LE4D5
        beq     LE4CF
LE4CF:  beq     LE4C9
        sed
        brk
LE4D3:  sed
        sed
LE4D5:  brk
        brk
        brk
        sed
        php
        brk
        php
        sed
LE4DD:  inx
        beq     LE4C8
LE4E0:  sed
        beq     LE4D3
        beq     LE4DD
        sed
        beq     LE4E0
        sed
        sed
        brk
        brk
        sed
        brk
        brk
        inx
        php
        inx
        brk
LE4F3:  beq     LE4FD
        beq     LE4F7
LE4F7:  sed
LE4F8:  php
        sed
        brk
        sed
        sed
LE4FD:  brk
        brk
        brk
LE500:  sed
        clv
        .byte   $FC
        cpy     #$FC
LE505:  iny
        .byte   $FC
        bne     LE505
        cld
        .byte   $FC
        cpx     #$FC
LE50D:  inx
        .byte   $FC
        beq     LE50D
        sed
        sed
        sed
        brk
        brk
        sed
        brk
        brk
        cld
        cpx     #$D8
        inx
        cld
        beq     LE4F8
        sed
        cld
        brk
        cld
        php
        jsr     L2000
        php
        jsr     L4810
        brk
        pha
        php
        pha
        bpl     LE582
        brk
        bvc     LE53D
        bvc     LE547
        bvc     LE551
        bvc     LE55B
        bvc     LE565
LE53D:  brk
        brk
        brk
        php
        brk
        bpl     LE54C
        brk
        php
        php
LE547:  php
        bpl     LE552
        clc
        .byte   $10
LE54C:  php
        bpl     LE55F
        bpl     LE569
LE551:  .byte   $10
LE552:  jsr     L2810
        bpl     LE587
        clc
        brk
        clc
        php
LE55B:  clc
        bpl     LE576
        clc
LE55F:  clc
        jsr     L2818
        clc
        .byte   $30
LE565:  jsr     L2008
        .byte   $10
LE569:  jsr     L2018
        jsr     L2820
        plp
        php
        plp
        bpl     LE59C
        clc
        plp
LE576:  jsr     L0030
        bmi     LE583
        bmi     LE58D
        bmi     LE597
        bpl     LE58D
        .byte   $10
LE582:  .byte   $14
LE583:  brk
        asl     a
        php
        php
LE587:  php
        bpl     LE592
        clc
        php
        .byte   $0C
LE58D:  clc
        bpl     LE5B0
        .byte   $0B
        .byte   $20
LE592:  .byte   $13
        plp
        asl     a
        plp
        .byte   $12
LE597:  jsr     L0030
        brk
        brk
LE59C:  php
        brk
        bpl     LE5A0
LE5A0:  clc
        php
        brk
        php
        php
        php
        bpl     LE5B0
        clc
        bpl     LE5B3
        bpl     LE5BD
        bpl     LE5C7
        clc
LE5B0:  php
        clc
        .byte   $10
LE5B3:  clc
        clc
        bpl     LE5C3
        brk
        php
        brk
        bpl     LE5BC
LE5BC:  clc
LE5BD:  php
        php
        php
        bpl     LE5CA
        clc
LE5C3:  bpl     LE5C5
LE5C5:  bpl     LE5CF
LE5C7:  bpl     LE5D9
        .byte   $10
LE5CA:  clc
        clc
        brk
        clc
        php
LE5CF:  clc
        bpl     LE5EA
        clc
        php
        asl     a:$08
        sed
        .byte   $E0
LE5D9:  brk
        bne     LE5DC
LE5DC:  cld
        brk
        cpx     #$00
        inx
LE5E1:  php
        bne     LE5EC
        cld
        php
        cpx     #$08
        inx
        .byte   $F3
LE5EA:  sed
        .byte   $FB
LE5EC:  sed
        .byte   $03
        beq     LE5F3
LE5F0:  sed
        .byte   $0B
        .byte   $F0
LE5F3:  .byte   $33
        sed
        .byte   $3B
        inx
        .byte   $3B
        beq     LE635
        sed
        inx
        sed
        inx
        brk
        inx
        php
        .byte   $F0
LE602:  sed
        beq     LE605
LE605:  beq     LE60F
        beq     LE619
        sed
        sed
        sed
        brk
        sed
        php
LE60F:  brk
        sed
LE611:  brk
LE612:  brk
        php
        sed
        php
        brk
LE617:  php
        php
LE619:  inc     $FA,x
        inx
        brk
LE61D:  inx
        sed
        inx
        beq     LE612
        brk
        beq     LE61D
        beq     LE617
        beq     LE611
        sed
        brk
        sed
        sed
        sed
        beq     LE630
LE630:  brk
        brk
        sed
        php
        brk
LE635:  php
        sed
        php
        beq     LE630
        inc     LD8DD,x
        cmp     LDDE0,x
        inx
        cmp     LE5F0,x
        cld
        sbc     L00E0
        sbc     $E8
        sbc     L00F0
        sbc     LEDE0
        inx
        sbc     LF5F0
        cpx     $F5
        cpx     LF8FC
        .byte   $FC
        brk
        .byte   $DD
        .byte   $20
LE65B:  cmp     $DD18,x
        bpl     $E63D
        php
        sbc     $20
        sbc     $18
        sbc     $10
        sbc     $08
        sbc     LED18
        bpl     LE65B
        php
        sbc     $14,x
        sbc     $0C,x
        .byte   $FC
        brk
        .byte   $FC
        sed
        .byte   $E7
        sed
        .byte   $E7
        brk
        .byte   $E7
        php
        .byte   $EF
        .byte   $F4
LE67F:  .byte   $EF
        .byte   $FC
        .byte   $EF
        .byte   $04
        .byte   $EF
        .byte   $0C
        .byte   $F7
        beq     LE67F
        sed
        .byte   $F7
        brk
        .byte   $F7
        php
        .byte   $FF
        .byte   $F0
LE68F:  .byte   $FF
        sed
        .byte   $FF
        brk
        .byte   $FF
        php
        .byte   $07
        php
        sbc     $FA,x
        .byte   $E7
        brk
        .byte   $E7
        sed
        .byte   $E7
        beq     LE68F
        .byte   $04
        .byte   $EF
        .byte   $FC
        .byte   $EF
        .byte   $F4
        .byte   $EF
        cpx     $08F7
        .byte   $F7
        brk
        .byte   $F7
        sed
        .byte   $F7
        .byte   $F0
LE6AF:  .byte   $FF
        php
        .byte   $FF
        brk
        .byte   $FF
        sed
        .byte   $FF
        beq     LE6BF
        beq     LE6AF
        .byte   $FE
LE6BB:  beq     $E6B1
        beq     LE6BB
LE6BF:  sed
        .byte   $F4
        sed
        .byte   $FC
        sed
        .byte   $04
        brk
        .byte   $F4
        brk
        .byte   $FC
        brk
        .byte   $04
        php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        .byte   $FC
        .byte   $FC
LE6D3:  beq     LE6D9
        beq     LE6D3
        sed
        .byte   $04
LE6D9:  sed
        .byte   $FC
        sed
        .byte   $F4
        brk
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
        php
        .byte   $04
        php
        .byte   $FC
        php
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $EC
        .byte   $FC
LE6ED:  .byte   $F4
        inc     LF6F4
        .byte   $F4
        inc     LECFC,x
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        cpx     LF4FC
        asl     a
        .byte   $F4
        .byte   $02
        .byte   $F4
        .byte   $FA
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        inc     LF6FC
        inc     LF6F6
        inc     $FE,x
        inc     LFEEC,x
        .byte   $F4
        inc     LFEFC,x
        .byte   $04
        asl     $F4
        asl     $FC
        asl     $04
        inc     LF6FC
        asl     a
        inc     $02,x
        inc     $FA,x
        inc     LFE0C,x
        .byte   $04
        inc     LFEFC,x
        .byte   $F4
        asl     $04
        asl     $FC
        asl     $F4
        nop
        .byte   $FC
        .byte   $F2
        inc     LF6F2
        .byte   $F2
        inc     LECFA,x
        .byte   $FA
        .byte   $F4
        .byte   $FA
        .byte   $FC
        .byte   $FA
        .byte   $04
        .byte   $02
        .byte   $F4
        .byte   $02
        .byte   $FC
        .byte   $02
        .byte   $04
        nop
        .byte   $FC
        .byte   $F2
        asl     a
        .byte   $F2
        .byte   $02
        .byte   $F2
        .byte   $FA
        .byte   $FA
        .byte   $0C
        .byte   $FA
        .byte   $04
        .byte   $FA
        .byte   $FC
        .byte   $FA
        .byte   $F4
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $FC
        .byte   $02
        .byte   $F4
        cpx     $FC
        cpx     LECF6
        inc     LEEF4,x
        .byte   $FC
        cpx     LF4FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        cpx     $FC
        cpx     LEC02
        .byte   $FA
        .byte   $F4
        asl     a
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        sbc     L00E0
        sbc     $E8
        sbc     L00F0
        sbc     LEDE0
        inx
        .byte   $ED
        .byte   $F0
LE7A7:  sbc     $E8,x
        sbc     L00F0,x
        .byte   $FC
        sed
        .byte   $FC
        brk
        sbc     $18
        sbc     $10
        sbc     $08
        sbc     LED18
        bpl     LE7A7
        php
        sbc     $10,x
        sbc     $08,x
        .byte   $FC
        brk
        .byte   $FC
        sed
        inc     $EE,x
        inc     $F6,x
        .byte   $FC
        sed
        .byte   $FC
        brk
        inc     $0A,x
        inc     $02,x
        .byte   $FC
        brk
        .byte   $FC
        sed
        dec     LDED9,x
        sbc     ($DC,x)
        sbc     #$DC
        sbc     ($E6),y
        cmp     LE1E6,y
        cpx     L00E9
        cpx     $F1
        inc     LECE1
        sbc     #$EC
        sbc     ($F4),y
        sbc     $F4
        sbc     LF8FC
        .byte   $FC
        brk
        dec     LDE1F,x
        .byte   $17
        .byte   $DC
        .byte   $0F
LE7F7:  .byte   $DC
        .byte   $07
        inc     $1F
        inc     $17
        cpx     $0F
        cpx     $07
        .byte   $EE
LE802:  .byte   $17
        cpx     LEC0F
        .byte   $07
        .byte   $F4
        .byte   $13
        .byte   $F4
        .byte   $0B
        .byte   $FC
        brk
        .byte   $FC
        sed
        sbc     #$F8
        sbc     #$00
        sbc     #$08
        sbc     ($F8),y
        sbc     (L0000),y
        sbc     ($08),y
        sbc     ($10),y
        sbc     LF9F8,y
        brk
        sbc     $0108,y
        sed
        ora     (L0000,x)
        ora     ($08,x)
        ora     #$FC
        ora     #$04
        .byte   $F7
        .byte   $FA
        sbc     #$00
        sbc     #$F8
        sbc     #$F0
        sbc     (L0000),y
        sbc     ($F8),y
        sbc     (L00F0),y
        sbc     ($E8),y
        sbc     LF900,y
        sed
        sbc     $01F0,y
        brk
        ora     ($F8,x)
        ora     (L00F0,x)
        ora     #$FC
        ora     #$F4
        .byte   $F7
        inc     LF8E7,x
        .byte   $E7
        brk
LE853:  .byte   $E7
        php
LE855:  .byte   $EF
        sed
LE857:  .byte   $EF
        brk
        .byte   $EF
        php
        .byte   $EF
        bpl     LE855
        beq     LE857
        sed
        .byte   $F7
        brk
        .byte   $F7
        php
        .byte   $FF
        .byte   $F0
LE867:  .byte   $FF
        sed
        .byte   $FF
        brk
        .byte   $FF
        php
LE86D:  .byte   $07
        php
        sbc     $FA,x
        .byte   $E7
        brk
        .byte   $E7
        sed
        .byte   $E7
        beq     LE867
        brk
        .byte   $EF
        sed
        .byte   $EF
        beq     LE86D
        inx
        .byte   $F7
        php
        .byte   $F7
        brk
        .byte   $F7
        sed
        .byte   $F7
        .byte   $F0
LE887:  .byte   $FF
        php
        .byte   $FF
        brk
        .byte   $FF
        sed
        .byte   $FF
        beq     LE897
        beq     LE887
        inc     LC8F8,x
        sed
LE896:  .byte   $D0
LE897:  sed
        cld
        sed
        inx
        sed
        beq     LE896
        sed
        brk
        iny
        brk
        bne     LE8A4
LE8A4:  cld
        brk
        inx
        brk
        beq     LE8AA
LE8AA:  sed
        sed
LE8AC:  sed
        sed
        brk
        sed
        php
        sed
        bpl     LE8AC
        clc
        brk
        sed
        brk
        brk
        brk
        php
        brk
        bpl     LE8BE
LE8BE:  clc
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $04
        .byte   $F4
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        brk
        .byte   $FC
        sed
        .byte   $04
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $FC
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $F4
        php
        .byte   $F4
        sed
        .byte   $FC
        php
        .byte   $FC
LE8F2:  sed
        .byte   $04
        php
        .byte   $04
        sed
        sed
        beq     LE8F2
        sed
        sed
        brk
        sed
        php
        brk
LE900:  sed
        brk
LE902:  brk
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
LE90C:  .byte   $F4
        .byte   $04
        .byte   $FC
        beq     LE902
        beq     LE90C
        beq     LE916
        .byte   $F0
LE916:  ora     #$F8
        sbc     ($F8),y
        sbc     $01F8,y
        sed
        ora     #$00
        sbc     (L0000),y
        sbc     $0100,y
        brk
        ora     #$08
LE928:  sbc     ($08),y
        sbc     $0108,y
        php
LE92E:  ora     #$F2
        sbc     $07F0,y
        .byte   $F0
LE934:  .byte   $FF
        beq     LE92E
        beq     LE928
        sed
        .byte   $07
        sed
        .byte   $FF
        sed
        .byte   $F7
        sed
        .byte   $EF
        brk
        .byte   $07
        brk
        .byte   $FF
        brk
        .byte   $F7
        brk
        .byte   $EF
        php
        .byte   $07
        php
        .byte   $FF
        php
        .byte   $F7
        php
        .byte   $EF
        .byte   $F2
        .byte   $FF
        sbc     (L00F0),y
        sbc     ($F8),y
        sbc     ($04),y
        sbc     LF9F0,y
        sed
        sbc     LF900,y
        php
        ora     (L00F0,x)
        ora     ($F8,x)
        ora     (L0000,x)
        ora     ($08,x)
        ora     #$F0
        ora     #$F8
        ora     #$00
        ora     #$08
        .byte   $F3
        sed
        sbc     ($08),y
        sbc     (L0000),y
        sbc     ($F4),y
        sbc     LF908,y
        brk
        sbc     LF9F8,y
        beq     LE983
        php
LE983:  ora     (L0000,x)
        ora     ($F8,x)
LE987:  ora     (L00F0,x)
        ora     #$08
        ora     #$00
        ora     #$F8
        ora     #$F0
LE991:  .byte   $F3
        brk
        beq     LE987
        beq     LE991
        beq     LE99F
        sed
        sbc     ($F8),y
        sbc     $01F8,y
LE99F:  sed
        ora     #$00
        sbc     (L0000),y
        sbc     $0100,y
        brk
        ora     #$08
        .byte   $F1
LE9AB:  php
        sbc     $0108,y
        php
        ora     #$F2
        .byte   $FA
        beq     LE9BB
LE9B5:  beq     LE9B5
        beq     LE9AB
        sed
        .byte   $07
LE9BB:  sed
        .byte   $FF
        sed
        .byte   $F7
        sed
        .byte   $EF
        brk
        .byte   $07
        brk
        .byte   $FF
        brk
        .byte   $F7
        brk
        .byte   $EF
        php
        .byte   $07
        php
        .byte   $FF
        php
        .byte   $F7
        php
        .byte   $EF
        .byte   $F2
        inc     LF8F5,x
        sbc     L0000,x
        sbc     LFDF8,x
        brk
        sbc     L0000,x
        sbc     $F8,x
        sbc     LFD00,x
        sed
        brk
        .byte   $FB
        brk
        sbc     LF800,x
        brk
        brk
        php
        .byte   $FB
        php
        sbc     a:L0000,x
        brk
        sed
        php
        sbc     LFB08,x
        sed
        brk
        brk
        sed
LE9FB:  brk
        brk
        php
        sed
        php
        brk
        bpl     LE9FB
        bpl     LEA05
LEA05:  asl     $1808
        brk
        asl     $08,x
        sed
        sed
        brk
        brk
        brk
        sed
LEA11:  php
        brk
        php
        sed
        bpl     LEA17
LEA17:  bpl     LEA11
        asl     $18F0
        sed
        asl     L00F0,x
        sed
        brk
        sed
        php
        sed
        bpl     LEA26
LEA26:  sed
        brk
        brk
        brk
        php
        brk
        bpl     LEA36
        sed
        php
        brk
        php
        php
        php
LEA34:  bpl     LEA46
LEA36:  .byte   $FC
        sed
        sed
        sed
        beq     LEA34
        inx
        brk
        brk
        brk
        sed
        brk
        beq     LEA44
LEA44:  inx
        php
LEA46:  brk
        php
        sed
        php
        .byte   $F0
LEA4B:  php
        inx
        bpl     LEA4B
        sed
        brk
        brk
        cld
        brk
LEA54:  cpx     #$00
        inx
        brk
        beq     LEA5A
LEA5A:  sed
        brk
        brk
        php
        inc     LF808
        sed
        sed
        brk
        .byte   $20
LEA65:  brk
        clc
        brk
        bpl     LEA6A
LEA6A:  php
        brk
        brk
        brk
        sed
LEA6F:  php
        asl     a
        php
        brk
        beq     LEA65
        beq     LEA6F
        beq     LEA79
LEA79:  beq     LEA83
        beq     LEA8D
        sed
        sed
        sed
        brk
LEA81:  sed
        php
LEA83:  sed
        bpl     LEA86
LEA86:  sed
LEA87:  brk
        brk
        brk
        php
        brk
        .byte   $10
LEA8D:  php
        .byte   $FC
        beq     LEA99
        beq     LEA93
LEA93:  beq     LEA8D
        beq     LEA87
        .byte   $F0
LEA98:  inx
LEA99:  sed
        brk
        sed
        sed
        sed
        beq     LEA98
        inx
        brk
        brk
        brk
        sed
        brk
        beq     LEAA8
LEAA8:  inx
        php
        .byte   $FC
        cpx     LECF4
        .byte   $FC
        cpx     LEC04
        .byte   $0C
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $0C
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $0C
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        beq     LEACF
        cpx     LECF8
        brk
        .byte   $EC
        php
LEACF:  .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $F4
        php
        .byte   $FC
        sed
        .byte   $FC
LEAD8:  brk
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $F4
        brk
        .byte   $F4
        beq     LEAD8
        sed
        .byte   $F4
LEAE6:  brk
        .byte   $FC
        beq     LEAE6
        sed
        .byte   $FC
        brk
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $FC
        php
        .byte   $0C
        sed
        .byte   $0C
        brk
        .byte   $0C
        php
        .byte   $F4
        php
        .byte   $F4
LEAFE:  brk
        .byte   $F4
        sed
        .byte   $FC
        php
        .byte   $FC
        brk
        .byte   $FC
        sed
        .byte   $04
        brk
        .byte   $04
LEB0A:  sed
LEB0B:  .byte   $04
        beq     LEB0A
        beq     LEB1C
        brk
        .byte   $0C
        sed
        .byte   $0C
        beq     LEAFE
        sed
        inx
        brk
        beq     LEB0B
        .byte   $F0
LEB1C:  sed
        beq     LEB1F
LEB1F:  beq     LEB29
        sed
        sed
        sed
        brk
        brk
        sed
        brk
        brk
LEB29:  php
        sed
        php
        brk
        inx
        brk
LEB2F:  inx
        sed
        beq     LEB3B
        beq     LEB35
LEB35:  beq     LEB2F
        beq     LEB29
        sed
        brk
LEB3B:  sed
        sed
        brk
        brk
        brk
        sed
        php
        brk
LEB43:  php
        sed
        brk
        brk
        php
        sed
        php
        brk
        bpl     LEB43
LEB4D:  bpl     LEB4D
        bpl     LEB57
        clc
        inc     LF618
        clc
        .byte   $FE
LEB57:  clc
        asl     $20
        inx
        jsr     L20F0
        sed
        plp
        inc     LF628
        brk
        .byte   $F4
LEB65:  brk
        .byte   $FC
        brk
        .byte   $04
        php
        inx
        php
        beq     LEB76
        sed
        php
        brk
        php
        php
        bpl     LEB65
        .byte   $10
LEB76:  sed
        bpl     LEB79
LEB79:  bpl     LEB83
        clc
        beq     LEB96
        sed
        clc
        brk
        .byte   $20
        .byte   $F0
LEB83:  jsr     L20F8
        brk
        .byte   $04
        cpx     LF404
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $FC
LEB96:  cpx     LFCF4
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $0C
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
LEBA9:  .byte   $FC
        .byte   $0C
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $F4
        beq     LEBA9
        beq     LEBB3
LEBB3:  beq     LEBBD
        beq     LEBC7
        sed
        sed
        sed
        brk
        sed
        php
LEBBD:  sed
        bpl     LEBC0
LEBC0:  sed
        brk
        brk
        brk
        php
LEBC5:  brk
        .byte   $10
LEBC7:  php
        sed
        php
        brk
LEBCB:  php
        php
        php
        bpl     LEBD8
        clc
        bpl     LEBE3
        bpl     LEBED
        beq     LEBD7
LEBD7:  .byte   $F0
LEBD8:  sed
        beq     LEBCB
LEBDB:  beq     LEBC5
        sed
        brk
        sed
        sed
        sed
        .byte   $F0
LEBE3:  sed
        inx
        brk
        brk
        brk
        sed
        brk
        beq     LEBEC
LEBEC:  inx
LEBED:  php
        brk
        php
        sed
        php
        beq     LEBFC
        inx
        php
        cpx     #$10
        inx
        bpl     LEBDB
        .byte   $FC
LEBFC:  .byte   $FC
        .byte   $F4
        .byte   $F4
        .byte   $F4
LEC00:  .byte   $FC
        .byte   $F4
LEC02:  .byte   $04
        .byte   $FC
LEC04:  .byte   $F4
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $F4
LEC09:  .byte   $04
        .byte   $FC
LEC0B:  .byte   $04
        .byte   $04
        .byte   $EC
        .byte   $FC
LEC0F:  .byte   $FC
        cpx     LF4EC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $F4
        cpx     LFCFC
        .byte   $0C
        cpx     LF504
        .byte   $F4
        sbc     $FC,x
        sbc     $04,x
        sbc     LFDF4,x
        .byte   $FC
        sbc     $0504,x
        .byte   $F4
        ora     $FC
        ora     $04
        sbc     LFDFC
        cpx     LF4ED
        sbc     $04,x
        sbc     $FC,x
        sbc     $F4,x
        sbc     LFD04,x
        .byte   $FC
        sbc     $05F4,x
        .byte   $04
        ora     $FC
        ora     $F4
        sbc     LFDFC
        .byte   $0C
        sbc     LF804
        .byte   $F4
        sed
        .byte   $FC
        sed
        .byte   $04
LEC61:  brk
        .byte   $F4
        brk
        .byte   $FC
LEC65:  brk
        .byte   $04
        beq     LEC65
        beq     LEC6F
        beq     LEC61
        .byte   $FB
        .byte   $FC
LEC6F:  php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $04
        sed
        .byte   $FC
LEC79:  sed
        .byte   $F4
        brk
        .byte   $04
        brk
        .byte   $FC
LEC7F:  brk
        .byte   $F4
        beq     LEC7F
LEC83:  beq     LEC79
        beq     LEC8B
        .byte   $FB
        .byte   $FC
        php
LEC8A:  .byte   $04
LEC8B:  php
        .byte   $FC
        php
        .byte   $F4
        sed
        beq     LEC8A
        sed
LEC93:  sed
        brk
        brk
        beq     LEC98
LEC98:  sed
        brk
        brk
        php
        .byte   $F0
LEC9D:  php
        sed
        php
        brk
        beq     LEC93
        beq     LEC9D
        .byte   $F0
LECA6:  brk
        brk
        php
        php
        php
        .byte   $F4
        sed
        beq     LECAF
LECAF:  sed
        php
        sed
        brk
        sed
        sed
        brk
        php
        brk
        brk
        brk
        sed
        php
        php
        php
        brk
LECBF:  php
        sed
        beq     LECCB
        beq     LECC5
LECC5:  beq     LECBF
LECC7:  brk
        beq     LECD2
        .byte   $F0
LECCB:  .byte   $F4
        brk
LECCD:  beq     LECC7
        beq     LECCD
        sed
LECD2:  sed
        sed
LECD4:  brk
        brk
        sed
        brk
        brk
        sed
        beq     LECD4
        php
        brk
        .byte   $F0
LECDF:  brk
LECE0:  php
LECE1:  beq     LECDF
        sed
        brk
        sed
        sed
        brk
        brk
        brk
        sed
        sed
LECEC:  php
LECED:  sed
        beq     LECF0
LECF0:  php
        brk
        beq     LECEC
LECF4:  sed
        sed
LECF6:  brk
        brk
LECF8:  sed
        brk
LECFA:  brk
        .byte   $F0
LECFC:  sed
        beq     LECFF
LECFF:  php
LED00:  sed
        php
LED02:  brk
        .byte   $F0
LED04:  beq     LECF6
        php
        sed
        beq     LED02
        php
        sed
        brk
        sed
        sed
LED0F:  brk
        brk
        brk
        sed
        beq     LED15
LED15:  beq     LED0F
        php
LED18:  brk
        php
        sed
        beq     LED25
        beq     LED0F
        sed
LED20:  php
        sed
        beq     LED20
        sed
LED25:  .byte   $FC
        brk
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $FC
LED2C:  php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $FC
        beq     LED3A
        beq     LED2C
        php
        .byte   $EC
LED3A:  sed
        cpx     LEC00
        php
        .byte   $F4
        brk
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
LED46:  sed
        .byte   $F4
        brk
        .byte   $F4
        sed
        .byte   $FC
        beq     LED52
        brk
        .byte   $04
LED50:  sed
        .byte   $04
LED52:  beq     LED50
        php
LED55:  .byte   $04
        php
        .byte   $F4
        beq     LED46
        brk
        cpx     LECF8
        beq     LED55
        sed
        sbc     L0000,x
        sbc     LFDF8,x
        brk
        sbc     $0508,x
        sed
LED6B:  ora     L0000
        ora     $08
        sbc     L00F0,x
        sbc     $05F0,x
        beq     LED6B
        php
        sbc     L0000,x
        sbc     $F8,x
        sbc     LFD00,x
        sed
        sbc     $05F0,x
        brk
        ora     $F8
        ora     L00F0
        sbc     $08,x
        sbc     $0508,x
        php
        sbc     L00F0,x
        inc     $F8,x
        inc     LFEF8,x
        brk
        asl     $F8
        asl     L0000
        inc     L0000,x
        inc     $06F0,x
        beq     LEDA6
        php
        inc     L0000,x
        inc     LFE00,x
LEDA6:  sed
        asl     L0000
        asl     $F8
        inc     $F8,x
        inc     $0608,x
        php
        asl     L00F0
        cpx     LECF8
        brk
        .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        cpx     LF408
        php
        cpx     $F8
        cpx     L0000
        cpx     $08
        .byte   $DC
        sed
LEDD3:  .byte   $DC
        brk
        .byte   $DC
LEDD6:  php
        .byte   $D4
        sed
        .byte   $D4
LEDDA:  brk
        .byte   $D4
        php
        .byte   $EC
LEDDE:  brk
        .byte   $EC
LEDE0:  sed
        .byte   $F4
        brk
        .byte   $F4
        sed
        .byte   $FC
        brk
        .byte   $FC
LEDE8:  sed
        .byte   $FC
        beq     LEDF0
        brk
        .byte   $04
        sed
        .byte   $04
LEDF0:  beq     LEDDE
        beq     LEDE8
LEDF4:  beq     LEDDA
        brk
        cpx     $F8
        cpx     L00F0
        .byte   $DC
        brk
LEDFD:  .byte   $DC
        sed
        .byte   $DC
LEE00:  beq     LEDD6
LEE02:  brk
        .byte   $D4
        sed
        .byte   $D4
        beq     LEE08
LEE08:  cpx     $0C00
        php
        cpx     $0C08
        bpl     LEDFD
        bpl     LEE1F
        clc
        cpx     $0C18
        jsr     L20EC
        .byte   $F4
        jsr     L20FC
        .byte   $04
LEE1F:  jsr     L280C
        cpx     LF428
LEE25:  plp
        .byte   $FC
        plp
        .byte   $04
        plp
        .byte   $0C
        bmi     LEE25
        bmi     LEE2F
LEE2F:  sec
        sed
        sec
        brk
        rti

        sed
LEE35:  rti

        brk
        pha
        sed
        pha
        brk
        bvc     LEE35
        bvc     LEE3F
LEE3F:  cli
        sed
        cli
        brk
        rts

        sed
LEE45:  rts

        brk
        pla
        sed
        pla
        brk
        bvs     LEE45
        bvs     LEE4F
LEE4F:  sei
        sed
        sei
        brk
        .byte   $7F
        .byte   $97
        .byte   $AF
        .byte   $C7
        .byte   $DF
        sbc     $0B,x
        and     $3F
        eor     $8D73,y
        .byte   $A7
        .byte   $BB
        .byte   $CF
        .byte   $E3
        .byte   $F7
        ora     $3923
        .byte   $4F
        adc     #$83
        .byte   $89
        .byte   $8F
        .byte   $9B
        .byte   $A7
        lda     LC3B3
        .byte   $D3
        sbc     $1F07
        .byte   $37
        eor     ($6B),y
        .byte   $7B
        .byte   $9F
        lda     LEDD3,y
        .byte   $07
        ora     ($1B),y
        and     $2F
        and     $3B,x
        .byte   $4B
        eor     $69,x
        adc     $A993,x
        .byte   $C3
        cmp     LF9ED,x
        .byte   $17
        and     $55,x
        adc     $97,x
        lda     LF1D5,y
        .byte   $0B
        and     $3F
        eor     $7D6B,y
        sta     ($A5),y
        .byte   $D3
        ora     ($1F,x)
        and     $795B,x
        sta     $91
        sta     LC3A9,x
        cmp     $01EF,x
        ora     $993D,y
        .byte   $B7
        .byte   $D7
        .byte   $FB
        .byte   $1B
        .byte   $3B
        eor     $9977,y
        .byte   $BB
        .byte   $D3
        .byte   $EB
        ora     ($17,x)
        and     $5943
        .byte   $6F
        sta     $9B
        .byte   $AF
        .byte   $C3
        .byte   $CB
        .byte   $D3
        sbc     ($0F),y
        .byte   $2F
        .byte   $4F
        adc     ($93),y
        .byte   $AB
        .byte   $BF
        .byte   $CF
        .byte   $DF
        .byte   $EB
        .byte   $F7
        .byte   $03
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        and     ($53),y
        .byte   $73
        .byte   $93
        .byte   $B3
        .byte   $D3
        .byte   $DB
        .byte   $E3
        sbc     $E7
        .byte   $EF
        .byte   $F7
        .byte   $0B
        .byte   $1F
        .byte   $37
        .byte   $4F
        .byte   $61
LEEED:  .byte   $73
        .byte   $8F
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
LEEF4:  cmp     #$E1
        sbc     ($E1,x)
        sbc     ($E1,x)
        sbc     ($E1,x)
        .byte   $FB
        ora     $2D,x
        .byte   $45
LEF00:  .byte   $63
        .byte   $87
LEF02:  .byte   $9B
LEF03:  .byte   $AF
        cmp     $FB,x
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $13
        .byte   $2B
        .byte   $43
        .byte   $5B
        adc     $8F,x
        .byte   $AF
        .byte   $CF
        sbc     ($F3,x)
        .byte   $0B
        .byte   $23
        .byte   $43
        .byte   $5F
        .byte   $77
        .byte   $8F
        lda     ($B3,x)
        cmp     $5307,x
        sta     $9D9D,x
        sta     $9D9D,x
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        ldy     #$A0
        ldy     #$A0
        ldy     #$A0
        ldy     #$A0
        ldy     #$A0
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A2,x)
        ldx     #$A2
        ldx     #$A2
        ldx     #$A2
        ldx     #$A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        ldy     $A4
        ldy     $A4
        ldy     $A4
        ldy     $A4
        ldy     $A4
        ldy     $A4
        lda     $A5
        lda     $A5
        lda     $A5
        lda     $A6
        ldx     $A6
        ldx     $A6
        ldx     $A6
        ldx     $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        tay
        tay
        tay
        tay
        tay
        tay
        tay
        tay
        tay
        tay
        tay
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        ldy     $ACAC
        ldy     $ACAC
        ldy     $ACAC
        ldy     $ADAD
        lda     $ADAD
        lda     $ADAD
        lda     $AEAE
        brk
        php
        ora     (L0000,x)
        .byte   $04
        .byte   $02
        .byte   $04
        asl     $02
        .byte   $03
        ora     $03
        .byte   $04
        .byte   $02
        .byte   $04
LF002:  .byte   $02
        asl     $07
        .byte   $02
        .byte   $04
        .byte   $02
        php
        php
        ora     ($04,x)
        ora     #$0A
        .byte   $02
        .byte   $04
        .byte   $0B
        .byte   $0B
        .byte   $0B
        ora     ($08,x)
        .byte   $0C
        ora     $0800
        asl     $0402
        bpl     LF02D
        brk
        brk
        php
        ora     ($02),y
        .byte   $04
        .byte   $12
        .byte   $13
        .byte   $13
        .byte   $03
        .byte   $04
        .byte   $14
        .byte   $17
        clc
        .byte   $17
LF02D:  ora     ($04,x)
        ora     $0119,y
        .byte   $04
        .byte   $1A
        .byte   $1A
        brk
        php
        .byte   $14
        brk
        php
        ora     L0000,x
        php
        asl     $02,x
        .byte   $04
        .byte   $1B
        dec     $05FC,x
        .byte   $02
        .byte   $1C
        ora     $201E,x
        and     (L0000,x)
        .byte   $02
        .byte   $04
        .byte   $14
        .byte   $17
        clc
        ora     ($04,x)
        ora     a:$1E,x
        php
        .byte   $22
        .byte   $82
        .byte   $04
        .byte   $37
        sec
        and     L0401,y
        bit     $25
        ora     ($04,x)
        rol     $27
        brk
        php
        .byte   $1F
        brk
        php
        plp
        brk
        php
        and     #$00
        php
        rol     a
        .byte   $02
        .byte   $1C
        .byte   $2B
        .byte   $2B
        brk
        .byte   $02
        .byte   $1C
        bit     a:$2C
        .byte   $02
        .byte   $1C
        and     a:$2D
        brk
        php
        rol     $0800
        .byte   $2F
        brk
        php
        bmi     LF089
LF089:  php
        and     ($01),y
        .byte   $04
        .byte   $32
        .byte   $33
        ora     ($04,x)
        .byte   $34
        and     $01,x
        .byte   $04
        rol     $37,x
        ora     ($06,x)
        .byte   $22
        sec
        brk
        php
        adc     $11
LF09F:  .byte   $04
        ora     #$06
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $02
        ldx     $AFAF
        .byte   $AF
        .byte   $AF
        ora     ($01,x)
        .byte   $02
        bcs     LF0B3
        ora     ($01,x)
LF0B3:  .byte   $04
        .byte   $17
        clc
        .byte   $2B
        .byte   $04
        ora     ($02,x)
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        cpx     $E4
        .byte   $E3
        .byte   $E3
        cpx     $E4
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $01
LF0E0:  ora     ($01,x)
        ora     ($01,x)
        brk
        php
        .byte   $9C
        ora     ($04,x)
        sbc     ($E2,x)
        ora     ($08,x)
        cmp     $D6,x
        brk
        brk
        .byte   $DF
        brk
        php
        cmp     L0880,y
        asl     $80
        php
        .byte   $07
        brk
        php
        cld
        .byte   $80
        php
LF100:  bpl     LF103
        php
LF103:  inc     $80FF,x
        php
        bit     $0684
        .byte   $13
        .byte   $14
        ora     $14,x
        .byte   $13
        .byte   $80
        php
        asl     $86
        ora     $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $33
        .byte   $34
        and     $80,x
        php
        jsr     L0880
        and     $0800
        .byte   $FB
        .byte   $02
        asl     $E5
        inc     $FD
        brk
        php
        lsr     $03
        php
        eor     ($42,x)
        eor     ($43,x)
        brk
        php
        .byte   $44
        ora     ($10,x)
        rti

        eor     L0000
        php
        .byte   $BF
        brk
        php
        .byte   $47
        ora     ($08,x)
        pha
        eor     #$80
        php
        ora     $0803,x
        .byte   $3C
        .byte   $3B
        and     $013B,x
        asl     $3E
        .byte   $3F
        asl     a
        php
        .byte   $3B
        lsr     a
        lsr     a
        .byte   $3B
        .byte   $3B
        lsr     a
        .byte   $3B
        lsr     a
        .byte   $4B
        .byte   $4B
        jmp     L0401

        eor     a:$4E
        php
        .byte   $4F
        .byte   $0B
        .byte   $04
        .byte   $4F
        bvc     LF1B9
        eor     ($52),y
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $53
        brk
        php
        .byte   $54
        .byte   $03
        ora     #$55
        lsr     $57,x
        lsr     L0000,x
        php
        cli
        brk
        php
        eor     $0601,y
        .byte   $5A
        .byte   $5B
        brk
        php
        .byte   $5C
        brk
        php
        eor     $0601,x
        lsr     a:$5F,x
        php
        rts

        ora     ($08,x)
        .byte   $62
        .byte   $63
        brk
        php
        .byte   $64
        brk
        php
        adc     $0A
        .byte   $04
        ror     $66
        ror     $66
        ror     $66
        ror     $66
        ror     $66
        .byte   $67
        ora     ($10,x)
        ror     $68
        .byte   $03
        bpl     LF219
        adc     #$69
        adc     #$01
        asl     $68
        ror     a
        .byte   $02
        php
LF1B9:  .byte   $6B
        jmp     (L016D)

        php
        ror     a:$6F
        php
        bvs     LF1C4
LF1C4:  php
        ror     $01,x
        php
        .byte   $72
        .byte   $73
        .byte   $04
        php
        .byte   $74
        adc     ($75),y
        .byte   $E7
        .byte   $E7
        ora     ($08,x)
        adc     $71,x
LF1D5:  brk
        php
        adc     ($01),y
        bpl     LF252
        sei
        ora     ($10,x)
        adc     $057A,y
        php
        .byte   $82
        adc     $7B7C,x
        .byte   $7B
        ror     $0C01,x
        .byte   $7B
        ror     $1001,x
        .byte   $7B
        .byte   $7F
        ora     ($08,x)
        .byte   $80
        .byte   $81
LF1F4:  .byte   $02
        ora     #$83
        sty     $85
LF1F9:  .byte   $02
LF1FA:  ora     #$86
        .byte   $87
        dey
        .byte   $02
        ora     $89
        txa
        .byte   $8B
        brk
        php
        and     $0402,y
        sty     $3A8D
        ora     $08
        ror     $7B7B,x
        .byte   $7C
        adc     $8082,x
        php
        .byte   $0F
        .byte   $03
        php
        .byte   $8E
LF219:  .byte   $8F
        stx     a:$90
        php
        sta     ($01),y
        .byte   $04
        sta     ($92),y
        asl     $02,x
        sty     $91,x
        sta     ($93),y
        sta     ($91),y
        sty     $95,x
        sta     $93,x
        sta     $95,x
        sty     $95,x
        sta     $93,x
        sta     $95,x
        sty     $96,x
        stx     $93,y
        stx     $05,y
        asl     a
        .byte   $97
        tya
        tya
        .byte   $97
        sta     $99,y
        php
        txs
        ora     ($0C,x)
        sta     $0A9E,x
        .byte   $04
        sta     $9D9D,x
        .byte   $9F
        .byte   $9F
LF252:  .byte   $9F
        .byte   $9F
        ldy     #$A0
        ldy     #$A0
        brk
        bpl     LF1FA
        brk
        php
        lda     ($23,x)
        .byte   $04
        ldx     #$A2
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        ldy     $A4
        ldy     $A3
        .byte   $A3
        .byte   $A3
        ldy     $A4
        ldy     $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        lda     $A5
        ldx     $A6
LF277:  ldx     $A6
        ldx     $A6
        lda     $A7
        .byte   $A7
LF27E:  .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        .byte   $A7
        asl     a
        .byte   $02
        lda     $A5
        lda     $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        ldx     #$A2
        ldx     #$01
        php
        tay
        lda     #$00
        php
        tax
        .byte   $13
        .byte   $04
        tax
        tax
        tax
        tax
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        tax
        tax
        tax
        tax
        .byte   $AB
        .byte   $AB
        .byte   $AB
        .byte   $AB
        ldy     $ABAC
        .byte   $AB
        brk
        php
        lda     $0A03
        .byte   $7B
        .byte   $7C
        adc     a:$82,x
        php
        lda     ($02),y
        php
        .byte   $B2
        .byte   $B3
        ldy     $01,x
        bpl     LF277
        ldx     $01,y
        bpl     LF27E
        clv
        .byte   $02
        php
        .byte   $B7
        clv
        ldx     $01,y
        php
        lda     $0FEB,y
        .byte   $04
        .byte   $BB
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        tsx
        .byte   $BB
        tsx
        .byte   $02
        php
        ldy     $BEBD,x
        brk
        php
        cpy     #$13
        .byte   $02
LF2EC:  cpy     #$C0
        .byte   $C0
LF2EF:  cpy     #$C1
        .byte   $C2
        .byte   $C2
        .byte   $C7
        .byte   $C7
        iny
        .byte   $C3
        .byte   $C3
        .byte   $C5
LF2F9:  cmp     $C5
        cmp     $C5
        cmp     $C5
        cmp     $02
        php
        dec     $C4
        cmp     #$01
        ora     $CA
        .byte   $CB
        ora     ($08,x)
        cpy     $81CD
        asl     a
        .byte   $1A
        .byte   $1B
        .byte   $80
        php
        .byte   $1C
        .byte   $03
        asl     a
        dec     LCFD0
        bne     LF31E
        asl     a
        cmp     ($D3),y
LF31E:  .byte   $D2
        .byte   $D3
        brk
        php
        .byte   $D4
        ora     ($20,x)
        inc     a:$EF
        php
        .byte   $D7
        .byte   $80
        php
        asl     $91,x
        .byte   $02
        clc
        clc
        clc
        clc
        ora     $1919,y
        ora     $1819,y
        clc
        clc
        clc
        .byte   $17
        .byte   $17
        .byte   $17
        .byte   $17
        .byte   $17
        brk
        php
        .byte   $DA
        brk
        php
        .byte   $DB
        brk
        php
        .byte   $DC
        brk
        php
        cmp     $0800,x
        beq     LF2EC
        .byte   $04
        ora     $05
        and     #$01
        ora     ($01,x)
        .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($01,x)
        ora     ($04,x)
        cpx     a:$ED
        php
        inc     $80,x
        php
        php
        .byte   $01
LF379:  .byte   $02
        inx
        sbc     #$15
        .byte   $02
        nop
        .byte   $F3
        nop
        .byte   $F3
        sbc     ($F4),y
        sbc     ($F4),y
        sbc     ($F4),y
        sbc     ($F4),y
        sbc     ($F4),y
        sbc     ($F4),y
        .byte   $F2
        sbc     $F2,x
        sbc     $F2,x
        sbc     L0000,x
        php
        .byte   $F7
        brk
        php
        .byte   $9B
        sta     ($0A,x)
        .byte   $22
        .byte   $23
        sta     ($0A,x)
        bit     $25
        .byte   $83
        php
        .byte   $27
        rol     $28
        rol     $80
        php
        .byte   $17
        .byte   $82
        php
        php
        ora     #$0A
        .byte   $80
        php
        ora     ($80),y
        php
        .byte   $12
        .byte   $80
        php
        asl     L0880,x
        .byte   $1F
        .byte   $83
        rts

        .byte   $0C
        ora     a:$0E
        .byte   $80
        php
        and     (L0000,x)
        php
        sed
        brk
        php
        sbc     $0800,y
        .byte   $FA
        bpl     LF3D8
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        cpx     $E4
        .byte   $E3
LF3D8:  .byte   $E3
        cpx     $E4
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        ora     ($81,x)
        .byte   $02
        rol     a
        .byte   $2B
        .byte   $80
        php
        rol     $1081
        .byte   $2F
        ora     L0000
        php
        cpx     #$80
        php
        .byte   $30
LF3F2:  stx     $58
        .byte   $0C
        .byte   $0C
        ora     $0E0D
        asl     $8900
        bit     $0C0C
        .byte   $0C
LF400:  ora     $0D0D
        .byte   $0E
LF404:  .byte   $0E
LF405:  asl     $8300
LF408:  rol     $0D0C,x
        asl     $8300
        .byte   $3C
        .byte   $0C
        ora     a:$0E
        .byte   $83
        rti

        .byte   $0C
        ora     a:$0E
        .byte   $83
        adc     $0D0C,x
        asl     $8100
        bpl     LF453
        ora     $80
        php
        .byte   $32
        .byte   $80
        php
LF428:  rol     $F3,x
        .byte   $F3
        inc     $F9,x
        brk
        ora     $0A
        asl     $1713
        .byte   $1A
        .byte   $1F
        .byte   $22
        .byte   $27
        and     $3531
        sec
        .byte   $3B
        rol     $4B43,x
        bvc     LF495
        .byte   $57
        .byte   $5C
        rts

        .byte   $64
        .byte   $67
        ror     a
        adc     $7570
        .byte   $7A
        .byte   $7F
        .byte   $82
        sta     $88
        .byte   $8B
        .byte   $8F
        .byte   $93
        .byte   $97
LF453:  .byte   $9B
        .byte   $9E
        .byte   $B2
        ldx     $E4,y
        .byte   $E7
        .byte   $EB
        .byte   $EF
        .byte   $F2
        sbc     $F8,x
        .byte   $FB
        inc     $0501,x
        php
        .byte   $0F
        .byte   $12
        .byte   $1B
        asl     $2421,x
        and     #$2C
        .byte   $32
        and     $39,x
        .byte   $3C
        .byte   $3F
        .byte   $43
        lsr     $4C
        bvc     LF4D2
        adc     ($64,x)
        .byte   $72
        adc     $7B,x
        ror     $8581,x
        dey
        .byte   $8B
        .byte   $8F
        .byte   $92
        .byte   $92
        stx     $99,y
        .byte   $9C
        lda     #$AD
        .byte   $B3
        .byte   $B7
        .byte   $BC
        .byte   $C0
LF48B:  .byte   $C3
        dec     $CA
        cmp     ($D5),y
        cld
        .byte   $DC
        cpx     #$E8
        .byte   $EC
LF495:  beq     LF48B
        sbc     $03FE,y
        asl     $0B
        .byte   $13
        asl     $1C,x
        .byte   $1F
        .byte   $23
        .byte   $3C
        .byte   $44
        .byte   $47
        .byte   $4B
        cli
LF4A6:  .byte   $5B
        .byte   $5E
LF4A8:  sty     $91
LF4AA:  sta     $98,x
LF4AC:  .byte   $AE
        .byte   $B1
LF4AE:  .byte   $B7
        tsx
LF4B0:  .byte   $BF
        .byte   $C3
LF4B2:  .byte   $C7
        .byte   $CC
LF4B4:  bne     $F498
LF4B6:  .byte   $E7
        nop
LF4B8:  brk
        .byte   $05
LF4BA:  ora     #$0D
LF4BC:  ora     ($14),y
LF4BE:  .byte   $1A
        .byte   $20
LF4C0:  .byte   $23
        .byte   $27
LF4C2:  rol     a
        .byte   $2D
LF4C4:  eor     ($44,x)
LF4C6:  .byte   $47
        lsr     a
LF4C8:  .byte   $4D
        .byte   $50
LF4CA:  .byte   $6E
        .byte   $72
LF4CC:  adc     $78,x
LF4CE:  .byte   $7C
        .byte   $94
LF4D0:  .byte   $97
        txs
LF4D2:  .byte   $9E
        .byte   $A2
LF4D4:  tay
        .byte   $AB
LF4D6:  bcs     LF48B
LF4D8:  .byte   $B6
LF4D9:  lda     $C2BC,y
        cmp     $C8
        .byte   $CB
        dec     LE5E1
        sbc     $E5
        inx
        cpx     LF2EF
        .byte   $FB
        .byte   $07
        .byte   $0D
        .byte   $13
LF4EC:  .byte   $19
LF4ED:  .byte   $1F
        .byte   $23
        .byte   $26
LF4F0:  .byte   $AF
        .byte   $AF
        .byte   $AF
        .byte   $AF
LF4F4:  bcs     LF4A6
        bcs     LF4A8
LF4F8:  bcs     LF4AA
LF4FA:  bcs     LF4AC
LF4FC:  bcs     LF4AE
LF4FE:  bcs     LF4B0
        bcs     LF4B2
        bcs     LF4B4
LF504:  bcs     LF4B6
        bcs     LF4B8
        bcs     LF4BA
        bcs     LF4BC
        bcs     LF4BE
        bcs     LF4C0
        bcs     LF4C2
        bcs     LF4C4
        bcs     LF4C6
        bcs     LF4C8
        bcs     LF4CA
        bcs     LF4CC
        bcs     LF4CE
        bcs     LF4D0
        bcs     LF4D2
        bcs     LF4D4
        bcs     LF4D6
        bcs     LF4D9
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        .byte   $B1
LF541:  lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B2),y
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        ldy     $B4,x
        ldy     $B4,x
        ldy     $B4,x
        ldy     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF5F0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF5F8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF604:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF618:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF628:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF6D3:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        cli
        cli
        asl     $15,x
        cli
        cli
        bit     $25
        cli
        cli
        cli
        cli
        cli
        cli
        jsr     L1321
        .byte   $13
LF6F2:  asl     $15,x
LF6F4:  .byte   $13
        .byte   $13
LF6F6:  ora     $1358,y
        .byte   $14
        cli
        cli
LF6FC:  .byte   $12
        .byte   $13
        cli
        cli
        .byte   $13
        .byte   $13
        cli
        clc
        .byte   $22
        .byte   $23
        .byte   $1C
        .byte   $17
        .byte   $1B
        cli
        .byte   $1B
        cli
        cli
        .byte   $1A
        cli
        .byte   $1A
        asl     $15,x
        .byte   $22
        .byte   $23
        cli
        cli
        cli
        ldy     $5858,x
        ldx     $A7
        .byte   $1C
        .byte   $17
        asl     $15,x
        cli
        lda     $BC,x
        lda     $AFBE,x
        ldx     $AEBE,y
        ldx     $BE,y
        .byte   $B7
        cli
        cli
        .byte   $A7
        cli
        sta     ($91),y
        sta     $9199,y
        sta     ($99),y
        lda     ($91,x)
        .byte   $93
        sta     $AF9B,y
        cli
        .byte   $B7
        .byte   $A7
        bcc     LF6D3
        tya
        sta     $B1B1,y
        lda     #$A9
        lda     ($B2),y
        lda     #$AA
        .byte   $03
        .byte   $03
        eor     $B059,y
        lda     ($A8),y
        lda     #$A9
        lda     #$A9
        lda     #$A9
        tax
        lda     #$AA
        eor     $5959,y
        eor     $A9A8,y
        tay
        lda     #$90
        .byte   $93
        tya
        .byte   $9B
        tya
        .byte   $9B
        tya
        .byte   $9B
        ldx     $BEBE,y
        ldx     $B4B3,y
        eor     $B059,y
        .byte   $B2
        tay
        tax
        tay
        tax
        tay
        tax
        tay
LF77D:  tax
        tya
        .byte   $9B
        sty     $9C,x
        cli
        cli
        .byte   $9C
        .byte   $9C
        cli
LF787:  cli
        .byte   $9C
        .byte   $9C
        sec
        cli
        sec
        cli
        sec
        cli
        .byte   $12
        .byte   $13
        cli
        clc
        .byte   $13
        .byte   $14
        ora     $3858,y
        cli
        .byte   $33
        cli
        .byte   $33
        cli
        cli
        cli
        cli
        bcc     LF7FB
        tya
        cli
        cli
        cli
        ora     $58
        cli
        asl     $07
        .byte   $B3
        .byte   $B0
LF7AE:  eor     $B3A8,y
        .byte   $02
        eor     $0259,y
        .byte   $02
LF7B6:  eor     $5959,y
        tay
        eor     $98A8,y
        sta     $9998,y
        txs
        sta     $9999,y
        sta     $9999,y
        sta     $9999,y
        txs
        sta     $A398,y
        ldy     $9B
        lsr     $56,x
        brk
        sei
        lsr     $56,x
        brk
        brk
        sta     $9899,y
        .byte   $99
LF7DC:  ldy     $A3
        sty     $95,x
        txa
        .byte   $82
        adc     $B87A,y
        clv
        bvs     LF858
        clv
        .byte   $82
        bvs     LF866
        cli
        dey
        cli
        .byte   $7B
        adc     $707A,y
        .byte   $7A
LF7F4:  bvs     LF77D
        bvs     LF787
LF7F8:  bvs     LF874
        .byte   $70
LF7FB:  .byte   $7A
        bvs     LF86E
        bvs     LF870
LF800:  ldy     $99
        tya
        .byte   $99
LF804:  .byte   $C2
        tsx
LF806:  .byte   $57
        .byte   $57
LF808:  tsx
        .byte   $BB
        .byte   $57
        .byte   $57
        tsx
        tsx
        .byte   $57
        .byte   $57
        dec     $7970,x
        bvs     LF7AE
        .byte   $9B
        sta     $799B,y
        bvs     LF894
        bvs     LF7B6
        .byte   $9B
        sta     $9CA3,y
        .byte   $9C
        brk
        brk
        sta     $9CA3,y
        sta     L0000,x
        sei
        adc     $A47A,y
        sta     $9C94,y
        sta     $9C99,y
        .byte   $9C
        sta     $99A3,y
        .byte   $9B
        brk
        brk
        adc     $70,y
        brk
        bvs     LF8B0
        brk
        sei
        .byte   $70
LF843:  .byte   $7A
        adc     $7070,y
        bvs     LF7DC
        adc     $7995,y
        bvs     LF8B6
        bvs     LF850
LF850:  adc     #$69
        brk
        sei
        adc     #$69
        brk
        brk
LF858:  .byte   $9C
        sta     L0000,x
        brk
        brk
        adc     $7079,y
        bvs     LF8DC
        .byte   $32
        .byte   $7A
        bvs     LF8D6
LF866:  bvs     LF89A
        bvs     LF8DA
        .byte   $32
        bvs     LF800
        .byte   $79
LF86E:  .byte   $9B
        .byte   $C2
LF870:  bvs     LF8EC
        tsx
        .byte   $BB
LF874:  bvs     LF8E6
        tsx
        tsx
        ror     $7A,x
        tsx
        .byte   $BB
        bvs     LF8F4
        tsx
        tsx
        ror     $70,x
        tsx
        tsx
        .byte   $9B
        brk
        .byte   $9B
        brk
        brk
        brk
        brk
        brk
        adc     $797A,y
        .byte   $7A
        bvs     LF902
        .byte   $2B
        .byte   $2C
LF894:  bvs     LF910
        bvs     LF8CA
        ror     $7A,x
LF89A:  bvs     LF916
        bvs     LF912
        tsx
        .byte   $BB
        .byte   $7C
        sty     $7C
        sty     $8585
        sta     $708D
        .byte   $7A
        adc     $857A,y
        sta     $8D
        .byte   $0B
LF8B0:  bcc     LF843
        ldy     $99
        sta     ($91),y
LF8B6:  sta     $859A,y
        php
        sta     $0910
        .byte   $04
LF8BE:  ora     ($0A),y
        .byte   $0B
        sta     $3A
        sta     $040B
        asl     a
        asl     a
        sta     $85
LF8CA:  .byte   $2B
        rol     a
        sta     $85
        and     #$2A
        sta     $85
        and     #$2C
        sty     $84
LF8D6:  sta     $858D
        .byte   $85
LF8DA:  .byte   $0D
        .byte   $0D
LF8DC:  ora     #$85
        ora     ($0C),y
        cpy     #$C1
        iny
        cmp     #$85
        .byte   $D0
LF8E6:  .byte   $D0
LF8E7:  .byte   $D2
        cmp     ($C7),y
        .byte   $D4
        .byte   $D5
LF8EC:  .byte   $D3
        .byte   $D3
        .byte   $D3
        .byte   $D3
        .byte   $C3
        cmp     ($D3),y
        .byte   $D3
LF8F4:  .byte   $CB
LF8F5:  .byte   $D3
        cpy     $C5
        .byte   $D4
        .byte   $D3
        dec     $D3
LF8FC:  .byte   $D3
        .byte   $DB
        .byte   $CF
        cld
LF900:  cmp     ($85,x)
LF902:  .byte   $C9
LF903:  cmp     ($D0,x)
        .byte   $C7
        cld
        .byte   $CF
LF908:  cld
        .byte   $D4
        cld
        .byte   $D9
LF90C:  cpy     LD9CD
        .byte   $DB
LF910:  .byte   $D3
        .byte   $D5
LF912:  .byte   $DB
        .byte   $CF
        .byte   $92
        .byte   $92
LF916:  sta     LC399,y
        .byte   $C7
        .byte   $D4
        .byte   $D3
        sta     $85
        .byte   $C7
        sta     $85D5
        .byte   $CF
        sta     $8593
        .byte   $9B
        stx     $8585
        stx     $858E
        sta     $D0
        .byte   $C7
        .byte   $85
LF931:  stx     $8E8D
        cld
        cmp     $D8,x
        .byte   $CF
LF938:  sta     $999A,y
        sta     $7B80,y
LF93E:  .byte   $80
        .byte   $7B
        .byte   $37
        bvs     LF97A
        bvs     LF97C
        bvs     LF975
        bvs     LF957
        clv
        adc     $9670,y
        clv
        bvs     LF9C0
        bvs     LF9C2
        and     $70,x
LF954:  .byte   $93
        .byte   $79
        .byte   $A3
LF957:  adc     $7A35,y
        .byte   $37
        .byte   $7A
        .byte   $9B
        adc     $799B,y
        .byte   $37
        .byte   $7A
        .byte   $37
        .byte   $7A
        .byte   $9B
        adc     LC29B,y
        .byte   $37
LF969:  bvs     LF9A2
        tsx
        .byte   $37
        .byte   $7A
        .byte   $37
        .byte   $BB
        .byte   $37
        brk
        .byte   $37
        brk
        .byte   $70
LF975:  .byte   $7A
        and     $7A,x
        and     $70,x
LF97A:  .byte   $37
        .byte   $70
LF97C:  .byte   $37
        .byte   $82
        .byte   $37
        .byte   $7A
        adc     LC27A,y
        .byte   $BB
        .byte   $7C
        sty     $97
        .byte   $8B
        sta     $85
        .byte   $8B
        .byte   $8B
        sta     $8E
        .byte   $8B
        .byte   $8B
        .byte   $80
        .byte   $7B
        .byte   $9F
        .byte   $83
        bvs     LFA06
        clv
        clv
        bvs     LFA14
        clv
        .byte   $82
        bvs     LFA0E
        bcc     LF931
        .byte   $97
        .byte   $8B
LF9A2:  .byte   $7C
        sty     $858B
        sta     $858D
        bcc     LF938
        tya
        bvs     LF93E
        tsx
        tya
        sta     $98
        stx     $9198
        .byte   $93
        sta     $7999,y
        .byte   $7A
        .byte   $91
LF9BB:  sta     ($70),y
        bvs     $F950
        .byte   $91
LF9C0:  brk
        tya
LF9C2:  brk
        tya
        bcc     LF957
        txs
LF9C7:  sta     $9191,y
        .byte   $9C
        .byte   $9C
        sta     $9C99,y
        sta     $70,x
        .byte   $7A
        sta     ($91),y
        bcc     LF969
        txs
        sta     $7079,y
        sta     ($91),y
        .byte   $93
        adc     $2AA3,x
        bvs     LFA52
        and     #$2A
        bvs     LFA60
        and     #$2A
        sta     $78,x
        brk
        .byte   $7D
LF9EC:  .byte   $94
LF9ED:  .byte   $9C
        brk
        brk
LF9F0:  .byte   $9C
        .byte   $9C
        brk
        sei
LF9F4:  .byte   $99
        .byte   $99
LF9F6:  sty     $9C,x
LF9F8:  bvs     LFA2C
        bvs     LFA72
LF9FC:  bvs     LFA78
        .byte   $93
        dex
LFA00:  .byte   $8D
        .byte   $8D
LFA02:  sta     $848D
        brk
LFA06:  sta     $9A8E
        .byte   $9B
        .byte   $9C
        sta     $93,x
        .byte   $85
LFA0E:  .byte   $9B
        sta     $847C
        sta     ($91),y
LFA14:  ldy     $99
        sta     $9B99,y
        sta     $9B
        stx     $8800
        .byte   $80
        .byte   $7B
        bvs     LFA9C
        .byte   $2B
        rol     a
        adc     LC270,y
        tsx
        brk
        brk
        bvs     LF9BB
LFA2C:  .byte   $79
        .byte   $7A
LFA2E:  and     #$2A
        .byte   $32
        .byte   $7A
        ror     $7A,x
        bcc     LF9C7
        sty     $9C,x
        tya
        txs
        tya
        sta     $99A4,y
        sty     $99,x
        lda     $A4
        ldy     $2A98
        and     #$00
        sei
        rol     a
        and     #$00
        brk
        bit     a:$7D
        adc     $2B70,x
LFA52:  bvs     LFA54
LFA54:  brk
        brk
        brk
        ora     $1E1F,x
        brk
        brk
        ora     a:L0000,x
        rti

LFA60:  brk
        brk
        eor     (L0000,x)
        brk
        pha
        brk
        bvc     LFAB2
        brk
        eor     (L0000),y
        eor     L0000
        eor     a:L0000
        .byte   $E1
LFA72:  brk
        sbc     #$E2
        .byte   $E3
        nop
        .byte   $EB
LFA78:  cpx     $E5
        cpx     LE6ED
        brk
        inc     a:$F4
        rts

        .byte   $47
LFA83:  .byte   $62
        adc     (L0000,x)
        lsr     $555F,x
        brk
        .byte   $55
LFA8B:  .byte   $42
        brk
        brk
        .byte   $43
        .byte   $44
        beq     LFA83
        sed
        sbc     LF3F2,y
        .byte   $F2
        .byte   $FB
        beq     LFA8B
        .byte   $FC
        .byte   $F9
LFA9C:  .byte   $4F
        ror     a
        rol     $72,x
        .byte   $6B
        brk
        .byte   $73
        .byte   $52
        eor     $4A,x
        lsr     $52
        .byte   $4B
        jmp     LE853

        .byte   $FF
        sbc     LF954,y
        .byte   $F2
        .byte   $F5
LFAB2:  .byte   $F2
        sbc     LF9F6,x
        inc     LF2F9,x
        .byte   $64
        .byte   $F2
        .byte   $3F
        rol     a:$62,x
        brk
        .byte   $63
        .byte   $52
LFAC2:  brk
        brk
        lsr     a:$52
        brk
        ror     $65
        brk
        brk
        brk
        sbc     L0000,y
        .byte   $FA
        .byte   $FF
        brk
        brk
        .byte   $3F
        sbc     L0000,y
        .byte   $F2
        .byte   $3F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ldy     #$D2
LFAE3:  ldy     #$9E
        .byte   $E2
        ora     ($01,x)
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $D4
        brk
        sbc     $2C00
        rol     $4240
        .byte   $42
        .byte   $63
        .byte   $62
        .byte   $63
        .byte   $63
        .byte   $64
        .byte   $63
        .byte   $74
LFAFC:  rts

        ror     L0000
        .byte   $67
LFB00:  .byte   $63
        adc     ($97,x)
        ror     $74
        .byte   $63
        brk
        brk
LFB08:  .byte   $89
        txa
        sty     $8C98
        brk
        bcs     LFAC2
        brk
        brk
        tax
        inx
        brk
        bne     LFB50
        .byte   $C2
LFB18:  beq     LFAE3
        rol     $01
        ora     (L0000,x)
        .byte   $7A
        and     a:L0000
        brk
        .byte   $0C
        brk
        php
        pha
        and     $2053,y
        rol     a
        bit     $282D
        pla
        and     $4060,y
        .byte   $3A
        jmp     L3800

        nop
        sty     $11,x
        bpl     LFB41
        ora     $01
        ora     ($5F,x)
        brk
        brk
LFB41:  brk
        eor     a:$5F,x
        adc     ($4C,x)
        brk
        pha
        lsr     a
        adc     a:$7F,x
        .byte   $44
        brk
        .byte   $44
LFB50:  .byte   $44
        brk
        adc     $866F
        .byte   $87
        stx     $87
        brk
        .byte   $0F
        .byte   $44
        .byte   $67
        .byte   $E7
        .byte   $0F
        .byte   $E7
        brk
        .byte   $03
        ora     ($5A,x)
        cpx     $8F00
        .byte   $8F
        .byte   $44
        brk
        .byte   $47
        sbc     a:$ED
        .byte   $8F
        .byte   $9E
        bit     $48
        lsr     a
        lsr     $6849
        jmp     (LEEED)

        pla
        jmp     (L6C6E)

        jmp     (L0000)

        ldy     $6C00
        brk
        jmp     (L7568)

        bcc     LFB99
        pla
        jmp     (L826C)

        sta     $11
        ora     ($91),y
        bmi     LFBC4
        bmi     LFBB4
        .byte   $22
        bcc     LFB18
        ora     ($5A,x)
LFB99:  .byte   $67
        .byte   $44
        .byte   $44
        ora     ($90),y
        ora     ($91,x)
        .byte   $8F
        lda     $0F,x
        .byte   $0B
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $0B
        .byte   $8F
        cmp     $0F
        .byte   $1B
        rol     a
        .byte   $1A
        rol     a
        rol     a
        php
        asl     a
        .byte   $1B
        rol     a
LFBB4:  rol     a
        rol     a
        brk
        brk
        plp
        rol     a
        .byte   $2B
        rol     a
        brk
        brk
        .byte   $44
        .byte   $44
        brk
        .byte   $02
        .byte   $04
        brk
LFBC4:  brk
        .byte   $02
        .byte   $04
        brk
        eor     ($22,x)
        .byte   $14
        rol     $26
        .byte   $27
        .byte   $14
        brk
        brk
        .byte   $42
        .byte   $34
        lsr     L0000
        ora     $2D0F
        .byte   $62
        .byte   $12
        .byte   $34
        brk
        eor     ($78,x)
        and     a:$79
        and     ($D3,x)
        lda     ($0D,x)
        .byte   $E3
        ora     ($01,x)
        brk
        brk
        ora     LD50C
        brk
        sbc     $2D00
        .byte   $2F
        eor     ($41,x)
        .byte   $43
        adc     ($63,x)
        .byte   $72
        .byte   $64
        .byte   $97
        .byte   $74
        .byte   $97
        .byte   $63
        brk
        brk
        brk
        .byte   $63
        .byte   $74
        adc     $63
        .byte   $62
        .byte   $63
        brk
        brk
        .byte   $89
        .byte   $8B
        sta     $998B
        brk
        lda     ($B3),y
        brk
        brk
        .byte   $AB
        sbc     #$00
        cmp     (L0000),y
        .byte   $C3
        sbc     ($CA),y
        .byte   $27
        ora     ($01,x)
        brk
        .byte   $7B
        and     a:L0000
        .byte   $0B
        brk
        brk
        ora     #$39
        brk
        .byte   $54
        and     ($2B,x)
        and     $2978
        eor     #$49
        .byte   $74
        adc     $3B
        brk
        .byte   $7C
        and     $95EB,y
        ora     ($10),y
        .byte   $07
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        brk
        lsr     a:$59,x
        brk
        eor     (L0000,x)
        eor     #$49
        ror     a:$4A,x
        .byte   $67
        brk
        eor     $45
        brk
        ror     $474B
        .byte   $67
        .byte   $87
        eor     L0000
        eor     $67
        eor     $56
        .byte   $67
        lsr     L0000,x
        .byte   $02
        .byte   $02
        cpx     a:$5B
        brk
        brk
        eor     L0000
        brk
        .byte   $5B
        sbc     $8E8E
        brk
        and     $49
        eor     #$4E
        eor     $696D
        sbc     $6DEF
        adc     $696F
        adc     a:L0000
        lda     $6D00
        brk
        eor     a:$6D,x
        sta     ($11,x)
        adc     $696D
        .byte   $83
        brk
        .byte   $80
        bcc     LFCA1
        and     ($33),y
        .byte   $4F
        and     ($23,x)
        ora     ($11,x)
        sta     ($5B),y
        eor     $45
        .byte   $67
        .byte   $11
LFC9D:  ora     ($01,x)
        ora     ($B4),y
LFCA1:  ldx     $45,y
        ora     #$29
        and     #$29
        ldx     $B8B7
        .byte   $67
        and     #$2B
        and     #$29
        .byte   $AF
        ora     #$0B
        and     #$29
        .byte   $2B
        .byte   $AF
        brk
        brk
        and     #$29
        and     #$29
        brk
        brk
        eor     $67
        brk
        .byte   $03
        ora     L0000
        brk
        .byte   $03
        ora     L0000
        adc     ($23,x)
        and     $26
        rol     $23
        adc     L0000,x
        eor     ($43,x)
        and     L0000,x
        brk
        asl     $B047
        adc     ($43,x)
        eor     $46
LFCDC:  adc     ($79,x)
        .byte   $2F
        and     $1000
        bpl     LFCF4
        brk
        .byte   $F2
        cpx     $F4
        .byte   $1C
        brk
        brk
        brk
        dec     $1D,x
        .byte   $FD
        brk
LFCF0:  .byte   $3C
        .byte   $3E
        .byte   $50
LFCF3:  .byte   $52
LFCF4:  .byte   $52
        bvs     LFC9D
        .byte   $63
        .byte   $63
        .byte   $74
        .byte   $63
        .byte   $74
LFCFC:  .byte   $97
        brk
        brk
        brk
LFD00:  .byte   $63
        .byte   $71
LFD02:  stx     $72,y
LFD04:  .byte   $74
        .byte   $73
        brk
        brk
        .byte   $89
        txs
        .byte   $9C
        tay
        .byte   $9C
        brk
        cpy     #$C2
        brk
        brk
LFD12:  tsx
        sed
        brk
        cpx     #$6A
        .byte   $B2
        beq     LFCF3
        rol     $CB,x
        cmp     $7A00
        and     $1024
        .byte   $1A
        .byte   $1C
        asl     $5818,x
        and     $3063,y
        .byte   $3A
        .byte   $3C
        rol     $6838,x
        and     $5070,y
        .byte   $3A
        jmp     L3800

        .byte   $FA
        ldy     $11
        bpl     LFD3F
        .byte   $04
        ora     ($01,x)
        .byte   $6F
LFD3F:  .byte   $5B
LFD40:  eor     $6D4F
        .byte   $6F
        and     $4C71
        brk
        sei
        .byte   $7A
        eor     a:$5F,x
        .byte   $77
        brk
        .byte   $77
        .byte   $54
        brk
        adc     $547F,x
        .byte   $54
        .byte   $54
        .byte   $54
        brk
        asl     $5754,x
        .byte   $F7
        asl     LE7F7,x
        .byte   $03
        ora     ($6A,x)
        .byte   $FC
        brk
        .byte   $9F
        .byte   $9F
        .byte   $14
        .byte   $47
        .byte   $57
        sbc     a:$FD,x
        .byte   $9F
        brk
        .byte   $34
        cli
        .byte   $7C
        .byte   $7C
        .byte   $7C
        sei
        .byte   $7A
        ror     a
        inc     $7C58,x
        ror     $7A7C,x
        brk
        brk
        ldy     $9200,x
        brk
        .byte   $7C
        .byte   $5C
        sta     $01
        sta     ($58,x)
        .byte   $7C
        .byte   $7C
        bpl     LFD12
        ora     ($90),y
        ora     ($58,x)
        .byte   $7C
        .byte   $7C
        bpl     LFDA5
        .byte   $80
        ora     ($01,x)
        ror     a
        .byte   $DB
        .byte   $DC
        .byte   $DC
        ora     ($01),y
        ora     ($01,x)
        .byte   $9F
        cmp     L0000
        and     #$29
LFDA5:  and     #$29
        and     #$9F
        cmp     L0000
        and     #$29
        .byte   $1A
        .byte   $1A
        .byte   $3A
        clc
        .byte   $1A
        .byte   $1A
        and     #$1A
        and     #$00
        brk
        sec
        .byte   $3A
        .byte   $3A
        .byte   $3B
        brk
        brk
        .byte   $DC
        .byte   $DC
        brk
        .byte   $12
        .byte   $14
        asl     $16,x
        .byte   $17
        .byte   $14
        brk
        eor     ($32),y
        .byte   $34
        rol     L0000,x
        .byte   $32
        .byte   $14
        brk
        brk
        .byte   $52
        .byte   $34
        lsr     $36,x
        and     $2D2E
        .byte   $72
        .byte   $12
        .byte   $34
        asl     $0A
        adc     #$2D
        and     $1000,x
        bpl     LFDF4
        ora     LE4F3
        sbc     $9E,x
        .byte   $1F
        .byte   $0E
        .byte   $0D
LFDEC:  .byte   $D7
        ora     a:$6B,x
        and     $513F,x
        .byte   $51
LFDF4:  .byte   $53
        adc     ($73),y
        .byte   $63
LFDF8:  .byte   $74
        .byte   $97
        .byte   $74
        .byte   $97
LFDFC:  .byte   $63
        brk
        ror     $77,x
LFE00:  bvs     LFE76
        adc     ($73),y
LFE04:  ldx     $63
        brk
        brk
        .byte   $89
        .byte   $9B
        .byte   $9D
        .byte   $9B
LFE0C:  lda     #$00
        cmp     ($C3,x)
        brk
        brk
        .byte   $BB
        sbc     LE100,y
        .byte   $6B
        .byte   $B3
        sbc     ($DA),y
        .byte   $37
        cpy     a:$01
        .byte   $7B
        and     $1144
        .byte   $1B
        ora     $191F,x
        and     $6406,y
        and     ($3B),y
        rol     a
        adc     #$39
        eor     $0159,y
        adc     $6C
        brk
        brk
        and     $A5FB,y
        ora     ($10),y
        .byte   $17
        .byte   $04
        .byte   $13
        asl     $5A,x
        .byte   $5C
        lsr     $6E00
        eor     $2D,y
        eor     (L0000),y
        adc     $5E79,y
        .byte   $4B
        brk
        .byte   $57
        brk
        eor     $55,x
        brk
        ror     $5749,x
        .byte   $57
        eor     $55,x
        .byte   $47
        eor     $57,x
        eor     $56,x
        .byte   $57
        inc     $E6,x
        .byte   $12
        .byte   $12
        .byte   $FC
        .byte   $6B
        .byte   $9E
        .byte   $9E
        brk
        ora     L0000,x
        eor     $6B,x
        sbc     $9E9E,x
        brk
        and     $7D,x
        adc     $597D,x
        .byte   $79
        .byte   $7B
LFE76:  .byte   $6B
        .byte   $FF
        adc     $7F7D,x
        eor     $79,y
        brk
        lda     $9300,x
        brk
        eor     $7D,y
        ora     ($11,x)
        adc     $597D,x
        bpl     LFE8D
LFE8D:  bcc     LFE90
        .byte   $81
LFE90:  adc     $597D,x
        bpl     LFEA5
        ora     ($81,x)
        ora     ($6B,x)
        cmp     LDBDD,x
        bcc     LFE9F
        .byte   $01
LFE9F:  sta     ($C4,x)
        dec     L00DD
        .byte   $19
        .byte   $1A
LFEA5:  .byte   $2B
        rol     a
        ldx     LC8C7,y
        .byte   $DB
        rol     a
        rol     a
        rol     a
        rol     a
        .byte   $BF
        ora     $2A2A,y
        rol     a
        rol     a
        ldx     a:L0000,y
        and     $3939,y
        and     L0000,y
        eor     $57,x
        brk
        .byte   $13
        ora     $16,x
        asl     $13,x
        adc     L0000
        adc     ($33),y
        and     L0000,x
        brk
        .byte   $33
        and     L0000,x
        eor     ($43),y
        and     $36,x
        brk
        adc     #$57
        cpy     #$73
        .byte   $43
        eor     $07,x
        .byte   $37
        and     $2D3F,x
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($02,x)
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
LFEEC:  ora     ($01,x)
        .byte   $02
        brk
        ora     ($01,x)
        bpl     LFF04
LFEF4:  bpl     LFEF8
        .byte   $02
        .byte   $02
LFEF8:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LFEFC:  .byte   $02
        brk
        brk
        brk
LFF00:  .byte   $02
        .byte   $02
LFF02:  .byte   $02
        .byte   $02
LFF04:  .byte   $02
        .byte   $02
LFF06:  brk
        brk
        brk
        ora     ($11),y
        ora     ($11),y
        brk
        eor     ($31,x)
        brk
        brk
        and     ($23,x)
        brk
        eor     ($01,x)
        and     ($03),y
        ora     ($01),y
        .byte   $02
        .byte   $02
        brk
        ora     ($01,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        rti

        rti

        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        bmi     LFF7A
        ora     ($01,x)
        brk
        .byte   $02
        brk
        .byte   $02
        .byte   $02
        brk
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($02,x)
        bmi     LFFA2
        bmi     LFFA4
        bmi     LFFA6
        .byte   $02
        .byte   $02
        bmi     LFFAA
LFF7A:  bmi     LFFAC
        bmi     LFF7E
LFF7E:  brk
        .byte   $02
        brk
        bmi     LFF83
LFF83:  bmi     LFFB5
        bvc     LFF8A
        .byte   $03
        .byte   $33
        .byte   $33
LFF8A:  .byte   $33
        .byte   $03
        bvc     LFF91
        .byte   $03
        .byte   $03
        .byte   $33
LFF91:  .byte   $33
        .byte   $33
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        brk
        .byte   $03
        ora     ($01,x)
LFFA2:  .byte   $02
        .byte   $31
LFFA4:  and     ($31),y
LFFA6:  and     ($31),y
        ora     ($01,x)
LFFAA:  .byte   $02
        .byte   $31
LFFAC:  and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        .byte   $31
LFFB5:  and     (L0000),y
        brk
        and     ($31),y
        and     ($31),y
        brk
        brk
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        ora     ($01,x)
        ora     ($78,x)
LFFE1:  inc     LFFE1
        cld
        jmp     LFE00

        brk
        brk
        brk
        brk
        .byte   $33
        .byte   $04
        brk
        brk
        php
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$E0
        .byte   $FF
        cpx     #$FF
