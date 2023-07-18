; da65 V2.18 - N/A
; Created:    2023-07-17 12:44:09
; Input file: code_bank_0.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L000B           := $000B
L0100           := $0100
L0137           := $0137
L0505           := $0505
L0808           := $0808
L0871           := $0871
L0F6E           := $0F6E
L186D           := $186D
L1A24           := $1A24
L1F1F           := $1F1F
L1F20           := $1F20
L1F21           := $1F21
L1F24           := $1F24
L1F3D           := $1F3D
L201F           := $201F
L2020           := $2020
L2024           := $2024
L211F           := $211F
L2200           := $2200
L2420           := $2420
L2726           := $2726
L2B1F           := $2B1F
L2B24           := $2B24
L2B2B           := $2B2B
L2D2C           := $2D2C
L3724           := $3724
L3748           := $3748
L3921           := $3921
L3A20           := $3A20
L444D           := $444D
L4520           := $4520
L4545           := $4545
L4A4D           := $4A4D
L4C4B           := $4C4B
L4C50           := $4C50
L4E4D           := $4E4D
L504B           := $504B
L504C           := $504C
L5050           := $5050
L5150           := $5150
L5B5A           := $5B5A
L66E7           := $66E7
L6B6B           := $6B6B
L6D6D           := $6D6D
L6F05           := $6F05
L7586           := $7586
L7A11           := $7A11
LAA20           := $AA20
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $05
        ora     $01
        asl     $02
        .byte   $07
        php
        ora     #$0A
        ora     $06
        asl     $02
        .byte   $0B
        .byte   $0B
        .byte   $03
        ora     #$0C
        ora     $0E0D
        .byte   $0F
        .byte   $0F
        .byte   $0F
        bpl     LC031
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $14
        ora     $16,x
        .byte   $17
        clc
        ora     $1B1A,y
        .byte   $1C
LC031:  ora     $1F1E,x
        jsr     L1F21
        .byte   $1C
        .byte   $22
        .byte   $23
        bit     $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        and     $0C
        rol     $27
        plp
        and     #$05
        ora     $0C
        rol     L000B
        rol     a
        .byte   $2B
        plp
        and     #$2C
        rol     L000B
        .byte   $0B
        and     $0525
        plp
        and     #$0F
        rol     $2F0F
        ora     $05
        ora     $30
        .byte   $12
        and     ($32),y
        .byte   $33
        ora     $34
        and     $31,x
        ora     $36,x
        .byte   $37
        sec
        ora     $39,x
        .byte   $17
        rol     $3A,x
        rol     $3B,x
        .byte   $3C
        and     $3F3E,x
        rti

        .byte   $22
        rol     $41,x
        eor     ($42,x)
        .byte   $42
        .byte   $43
        .byte   $42
        ora     $05
        ora     $44
        eor     $02
        lsr     $09
        ora     $25
        brk
        .byte   $47
        ora     $02
        and     $46
        ora     L0000
        eor     $48
        ora     $49
        lsr     a
        lsr     a
        .byte   $4B
        jmp     L4E4D

        ora     $02
        ora     $05
        .byte   $32
        ora     $4F
        bvc     LC0D1
        .byte   $02
        ora     $35
        .byte   $3B
        eor     ($52),y
        .byte   $14
        ora     $16,x
        ora     $411A,y
        .byte   $43
        .byte   $53
        .byte   $54
        .byte   $3C
        rol     $3C54,x
        eor     ($43,x)
        .byte   $42
        .byte   $42
        eor     ($42,x)
        .byte   $42
        eor     ($05,x)
        ora     $05
        and     $55
        lsr     $57,x
        cli
        ora     #$2C
        ora     $0C
        eor     $575A,y
        .byte   $5B
        .byte   $5C
LC0D1:  ora     #$0C
        rol     $5B
        ora     $57
        and     $05
        eor     $055E,x
        and     $5F,x
        .byte   $57
        ora     $60
        ora     $34
        ora     $4F
        adc     ($33,x)
        ora     $1B
        ora     $39,x
        .byte   $62
        .byte   $17
        .byte   $63
        .byte   $32
        .byte   $64
        adc     $3F
        .byte   $3C
        ror     $1F
        rol     $3B,x
        rol     $4342,x
        eor     ($67,x)
        .byte   $22
        rol     $41,x
        .byte   $42
        and     #$68
        ora     $68
        pha
        and     L0000
        eor     $28
        adc     #$25
        pla
        pha
        brk
        ror     a
        ora     $05
        .byte   $6B
        and     #$6C
        adc     $6E45
        ora     $05
        ora     $30
        .byte   $4B
        jmp     L6F05

        ora     $35
        .byte   $5F
        ora     $70
        adc     ($05),y
        .byte   $6F
        ora     $17
        clc
        ora     $1B1A,y
        ora     $39,x
        ora     $3C65,y
        ror     $1F
        .byte   $72
        .byte   $3C
        .byte   $3F
        and     $4142,x
        .byte   $67
        .byte   $22
        .byte   $73
        eor     ($43,x)
        .byte   $42
        .byte   $74
        adc     $76,x
        .byte   $77
        sei
        adc     $7B7A,y
        .byte   $74
        adc     $76,x
        .byte   $77
        sei
        adc     $7B7C,y
        .byte   $74
        adc     $76,x
        adc     $797E,x
        adc     $7B,x
        .byte   $74
        adc     $76,x
        ora     $2C
        adc     $7B7F,y
        .byte   $80
        adc     $76,x
        and     $5F,x
        adc     $7B75,y
        sta     ($75,x)
        ror     $17,x
        clc
        .byte   $82
        adc     $83,x
        ror     $75
        sty     $85
        jsr     L7586
        .byte   $87
        .byte   $67
        .byte   $22
        .byte   $73
        .byte   $67
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $74
        adc     $88,x
        .byte   $89
        sei
        adc     $7B75,y
        .byte   $74
        adc     $76,x
        .byte   $77
        sei
        adc     $7B75,y
        .byte   $74
        .byte   $7F
        ror     $77,x
        sei
        adc     $7B75,y
        .byte   $74
        adc     $76,x
        .byte   $77
        sei
        adc     $7B75,y
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        adc     $7B75,y
        txa
        .byte   $7C
        .byte   $8B
        sty     $828D
        adc     $7B,x
        .byte   $74
        adc     $76,x
        .byte   $77
        sei
        stx     $75
        .byte   $7B
        .byte   $74
        adc     $76,x
        .byte   $77
        sei
        adc     $7B75,y
        stx     $908F
        sta     ($92),y
        ora     $8E
        sta     ($93),y
        .byte   $8F
        sta     ($05),y
        .byte   $93
        ora     $91
        .byte   $92
        .byte   $92
        sty     $95,x
        .byte   $92
        .byte   $93
        sta     ($05),y
        ora     $96
        .byte   $97
        tya
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        adc     $76,x
        sty     $868D
        .byte   $7C
        sta     $9A8A,y
        .byte   $9B
        .byte   $77
        sei
        adc     $7B75,y
        .byte   $74
        .byte   $7C
        .byte   $8B
        .byte   $77
        sei
        adc     $7B75,y
        .byte   $74
        adc     $76,x
        .byte   $77
        sei
        adc     $7B75,y
        stx     $0592
        pla
        pha
LC205:  ora     $68
        .byte   $9C
        .byte   $93
        ora     $91
        .byte   $9C
        pha
        .byte   $92
        pla
        pla
        sta     $92,x
        stx     $9D68
        stx     $6C9C
        .byte   $12
        .byte   $13
        ora     $6C
        pha
        .byte   $05
LC21E:  jmp     ($9005)

        stx     $0592
        .byte   $9E
        ora     $8E
        sta     ($93),y
        sta     ($93),y
        ora     $05
        ora     $95
        .byte   $92
        sta     $92,x
        stx     $9591
        sta     ($05),y
        ora     $05
        ora     $05
        sta     $92,x
        stx     L0505
        sta     $6805,x
        pla
        sta     $4848,x
        ora     $48
        stx     $6868
        pha
        pha
        sta     $5A05,x
        ora     $9C
        pla
        sta     $5A9E,x
        ora     $93
        .byte   $92
        pla
LC25B:  .byte   $9C
        pha
        stx     $0593
        sta     $93,x
        pla
        .byte   $5B
        .byte   $5A
        ora     $05
        stx     $058E
        jmp     (L0505)

        ora     $90
        .byte   $93
        ora     $05
        bcc     LC205
        .byte   $92
        ora     $8E
        sta     ($05),y
        ora     $05
        sta     $05,x
LC27D:  ora     $05
        ora     $68
        ora     $8E
        ora     $90
        stx     $9105
        pla
        bcc     LC21E
        .byte   $92
        stx     $0591
        .byte   $8E
LC290:  .byte   $5B
        .byte   $93
        ora     $95
        ora     $90
        stx     $0591
        .byte   $9F
        .byte   $3C
        ldy     #$A1
        ldy     #$A2
        .byte   $A1
LC2A0:  sta     $A3,x
        .byte   $A4
LC2A3:  lda     $A6
        ldx     $A7
        tay
        .byte   $92
        lda     #$A8
        tax
        .byte   $AB
        rol     $AC2E
        ora     $9F
        .byte   $3F
        adc     $3E
        .byte   $3C
        lda     $05AE
        rol     $43,x
        .byte   $42
        .byte   $42
        eor     ($42,x)
        .byte   $AF
        ora     $B0
        stx     $B192
        sta     ($05),y
        bcs     LC25B
        bcs     LC27D
        .byte   $B3
        .byte   $B2
        .byte   $B3
        .byte   $B2
        bcs     LC2D6
        ora     $93
        ora     $05
        .byte   $91
LC2D6:  ora     $05
        rol     $B4A1,x
        sta     $92,x
        stx     $9105
        lda     $B2,x
        .byte   $B3
        .byte   $B2
        .byte   $B2
        .byte   $B2
        bcs     LC27D
        ldx     $93,y
        sta     ($95),y
        sta     ($05),y
        bcs     LC2A3
        .byte   $B7
        clv
        sta     $91,x
        ora     $91
        bcs     LC2FD
        lda     $05BA,y
        sta     $92,x
LC2FD:  stx     $05B0
        bcc     LC290
        bcs     LC309
        ora     $B0
        ora     $05
        .byte   $91
LC309:  ora     $B0
        sta     $91,x
        bcs     LC2A0
        sta     $95,x
        sta     ($B0),y
        .byte   $92
        stx     $95B0
        sta     ($05),y
        sta     $B0,x
        stx     $BB05
        .byte   $B2
        .byte   $B3
        sta     $92,x
        .byte   $BB
        .byte   $B2
        .byte   $B3
        .byte   $B2
        .byte   $B2
        sta     ($B2),y
        .byte   $B2
        .byte   $B3
        .byte   $B2
        sta     ($95),y
        sta     ($05),y
        sta     ($95),y
        sta     ($05),y
        sta     $92,x
        stx     $95BC
        .byte   $92
        stx     L0505
        ora     $05
        lda     $8E05,x
        ora     $92
        ora     $05
        ora     $36
        sta     ($93),y
        ora     $91
        ora     $91
        stx     $0536
        .byte   $92
        stx     $3405
        ora     $BC
        rol     $B2,x
        ora     $05
        ora     $39
        ora     $BE
        .byte   $42
        sta     $91,x
        .byte   $34
        stx     $8E61
        sta     ($36),y
        .byte   $92
        ora     $39
        sta     $BF,x
        cpy     #$8E
        rol     $BC,x
        ldy     $3C9F,x
        cmp     ($C2,x)
        .byte   $C3
        rol     $C4,x
        cpy     $42
        eor     ($42,x)
        .byte   $67
        .byte   $AB
        rol     $42,x
        cmp     $C5
        dec     $C5
        .byte   $C7
        .byte   $AB
        rol     $67,x
        ldx     $A6
        .byte   $A7
        tay
        iny
        .byte   $AB
        rol     $67,x
        .byte   $AB
        .byte   $AB
        rol     LC9AC
        .byte   $AB
        rol     $67,x
        .byte   $AB
        dex
        ldx     #$A1
        ldy     #$A1
        .byte   $CB
        .byte   $67
        .byte   $AB
        ldx     $A7
        tay
        iny
        ldx     $CC
        .byte   $67
        .byte   $AB
        .byte   $AB
        cmp     LC92E
        .byte   $AB
        dec     $5453
        .byte   $3F
        .byte   $3F
        adc     $3E
        .byte   $54
        .byte   $3C
        .byte   $42
        .byte   $42
        .byte   $43
        .byte   $43
        .byte   $42
        .byte   $42
        .byte   $42
        eor     ($37,x)
        .byte   $02
        .byte   $46
LC3C3:  .byte   $CF
        ora     $05
        ora     $25
        .byte   $37
        .byte   $02
        bit     $09D0
        and     $05
        .byte   $0C
        .byte   $3B
        .byte   $3C
        cmp     ($94),y
        .byte   $03
        ora     #$0C
        rol     $C6
        ldy     $05
        ora     $0F
        bpl     LC3F0
        .byte   $0F
        ora     $02
        and     $5F,x
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        ora     $1716,y
        .byte   $9F
        .byte   $32
        .byte   $D2
        .byte   $19
        .byte   $1A
LC3F0:  rol     $543D,x
        rti

        .byte   $37
        .byte   $D3
        and     ($1F,x)
        .byte   $42
        .byte   $42
        .byte   $42
        .byte   $42
        .byte   $37
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $0C
        rol     $27
        .byte   $D4
        and     #$25
        .byte   $8F
        ora     $26
        .byte   $0B
        .byte   $27
        asl     $D4
        and     #$8F
        bit     $0B0B
        .byte   $27
        asl     $06
        .byte   $D4
        cmp     $05,x
        .byte   $0F
        .byte   $0F
        dec     $0D,x
        ora     $300D
        .byte   $4B
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        bvs     LC499
        .byte   $1B
        ora     $D7,x
        .byte   $17
        clc
        ora     $1B1A,y
        .byte   $1C
        .byte   $3A
        cld
        cmp     $2120,y
        .byte   $1F
        .byte   $1C
        .byte   $22
        .byte   $22
        .byte   $DA
        .byte   $DB
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $8F
        ora     L0000
        eor     $DC
        lsr     $DD
        .byte   $05
LC448:  .byte   $8F
        brk
        ror     a
        ora     $DC
        ora     $DE
        .byte   $04
        .byte   $DF
        eor     $E0
        ora     $DC
        ora     $E0
        lsr     $E1
        bit     $056F
        .byte   $E2
        ora     $6F
        ora     $94
        ora     $6F
        bvs     LC448
        ora     $6F
        cpx     $15
        adc     ($39),y
        .byte   $1A
        sbc     $15
        and     $3AE6,y
        jsr     L66E7
        inx
        .byte   $E7
        adc     $3E
        .byte   $22
        .byte   $22
        sbc     #$67
        bit     $E9
        .byte   $42
        .byte   $42
        ora     $25
        ora     $DD
        rol     $57
        plp
        rol     $EA,x
        ora     $0C
        dec     $5705,x
        ora     $36
        cpx     #$0C
        rol     $6F
        and     $57
        ora     $36
        .byte   $6F
LC499:  lsr     LEB05,x
        ora     $EC
        sbc     $6F36
        and     $5F,x
        .byte   $6F
        ora     $EE
        clc
        .byte   $EF
        and     $182E,y
        and     $2E19,y
        .byte   $1B
        beq     LC4F0
        and     $3E54,x
        .byte   $3F
        .byte   $3C
        and     $43F1,x
        .byte   $42
        .byte   $42
        .byte   $42
        .byte   $43
        eor     ($42,x)
        .byte   $42
        ora     $EA
        .byte   $05
LC4C3:  ora     $EA
        ora     $05
        nop
        .byte   $F2
        .byte   $F3
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F2
        .byte   $F2
        .byte   $F3
        and     $6F
        bit     L6F05
        ora     $2C
        .byte   $6F
        .byte   $F4
        sbc     $F6,x
        .byte   $F4
        sbc     $F6,x
        .byte   $F4
        sbc     $05,x
        .byte   $6F
        ora     $71
        .byte   $6F
        bit     L6F05
        .byte   $F7
        sbc     $F8,x
        sbc     LF8F5,y
        .byte   $FA
        .byte   $F5
LC4F0:  .byte   $FB
        and     LFDFC,y
        and     $1B1A,y
        and     $3E3E,y
        rol     $3E3E,x
        rol     $3E3E,x
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
LC604:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
LC646:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
LC7CD:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        brk
        ora     ($01,x)
        .byte   $02
        .byte   $03
        ora     ($04,x)
        ora     $06
        ora     ($02,x)
        .byte   $03
        ora     ($01,x)
        ora     ($07,x)
        brk
        ora     ($01,x)
        .byte   $02
        php
        ora     #$0A
        .byte   $0B
        brk
        .byte   $0C
        ora     ($01,x)
        ora     $0F0E
        bpl     LC827
        ora     ($01),y
        .byte   $12
        .byte   $13
        .byte   $14
        .byte   $15
LC827:  .byte   $07
        asl     $17,x
        .byte   $17
        clc
        ora     $1B1A,y
        .byte   $1C
        ora     $1D1D,x
        ora     $1D1D,x
        ora     $1E1D,x
        asl     $1E1E,x
        asl     $1E1E,x
        asl     L201F,x
        and     ($01,x)
        ora     ($04,x)
        .byte   $22
        .byte   $23
        jsr     L211F
        .byte   $02
        ora     ($04,x)
        .byte   $22
        .byte   $23
        bit     $1F
        and     ($01,x)
        php
        asl     a
        and     $23
        rol     $27
        and     ($01,x)
        plp
        and     #$2A
        .byte   $23
        .byte   $2B
        .byte   $2B
        and     ($2C,x)
        and     $222E
        .byte   $2F
        bmi     LC89A
        and     ($17),y
        .byte   $32
        .byte   $33
        .byte   $34
        and     $1D,x
        ora     $1D1D,x
        ora     $1D36,x
        rol     $1E,x
        asl     $1E1E,x
        asl     $1E1E,x
        asl     L0137,x
        sec
        jsr     L1F20
        jsr     L3724
        ora     ($38,x)
        .byte   $1F
        jsr     L2726
        jsr     L0137
        sec
        jsr     L2B24
        .byte   $2B
        bit     $37
        .byte   $2C
LC89A:  sec
        bit     $20
        jsr     L1F24
        .byte   $2F
        and     $1F3A,y
        .byte   $1F
        jsr     L201F
        and     $35,x
        .byte   $3B
        .byte   $3C
        and     $3D3C,x
        .byte   $3C
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        asl     $1E1E,x
        asl     $1E1E,x
        asl     $201E,x
        .byte   $1F
        bit     $21
        ora     ($01,x)
        ora     ($38,x)
        .byte   $1F
        jsr     L211F
        ora     ($02,x)
        .byte   $03
        sec
        rol     L2024,x
        and     ($02,x)
        ora     ($01,x)
        sec
        .byte   $2B
        jsr     L211F
        ora     ($12,x)
        .byte   $3B
        sec
        bit     $24
        jsr     L3921
        .byte   $2F
        .byte   $3F
        .byte   $3A
        .byte   $3C
        and     $3B3C,x
        and     $3F,x
        and     $40,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $1D,x
        asl     $1E1E,x
        asl     $1E1E,x
        asl     $201E,x
        .byte   $1F
        jsr     L201F
        eor     ($42,x)
        .byte   $42
        bit     $20
        .byte   $1F
        .byte   $43
        jsr     L2B2B
        .byte   $2B
        jsr     L2024
        .byte   $1F
        .byte   $1F
        .byte   $44
        eor     $1F
        jsr     L1F1F
        jsr     L201F
        bit     $24
        lsr     $44
        .byte   $44
        .byte   $44
        .byte   $47
        .byte   $47
        pha
        .byte   $47
        bmi     LC95D
        eor     #$4A
        and     $35,x
LC92E:  and     $3F,x
        ora     $1D36,x
        ora     $3636,x
        rol     $36,x
        asl     $1E1E,x
        asl     $1E1E,x
        asl     $4B1E,x
        jmp     L4E4D

        .byte   $4F
        jmp     L504B

        jmp     L5150

        .byte   $52
        .byte   $53
        eor     L504C
        jmp     L5050

        .byte   $54
        eor     $51,x
        .byte   $4B
        bvc     LC9A9
        jmp     L5050

        .byte   $4C
LC95D:  bvc     LC9AF
        .byte   $4B
        lsr     $56,x
        lsr     $56,x
        lsr     $56,x
        lsr     $56,x
        jmp     L504C

        .byte   $4B
        jmp     L4C50

        .byte   $4B
        .byte   $57
        bvc     LC9BE
        cli
        eor     $5057,y
        jmp     L4C4B

        bvc     LC9C8
        bvc     LC9CA
        bvc     LC9D0
        bit     $20
        .byte   $1F
        jsr     L2420
        .byte   $1F
        jsr     L1F20
        jsr     L5B5A
        .byte   $5C
        bit     $1F
        eor     $5E5D,x
        .byte   $5F
        rts

        adc     ($62,x)
        .byte   $63
        .byte   $2B
        .byte   $2B
LC99A:  .byte   $2B
        jsr     L201F
        .byte   $2B
        .byte   $2B
        eor     $5D5D,x
        lsr     $241F,x
        jsr     L2B1F
LC9A9:  .byte   $2B
        .byte   $2B
        .byte   $2B
LC9AC:  bit     $20
        .byte   $1F
LC9AF:  bit     $5D
        eor     $5E5D,x
        jsr     L1F1F
        .byte   $1F
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $1F
        .byte   $1F
LC9BE:  .byte   $1F
        bit     $21
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $01
LC9C8:  and     ($01,x)
LC9CA:  ora     ($01,x)
        .byte   $02
        .byte   $03
        ora     ($01,x)
LC9D0:  and     ($01,x)
        .byte   $02
        ora     ($01,x)
        .byte   $02
        .byte   $03
        ora     ($21,x)
        ora     ($01,x)
        ora     ($64,x)
        .byte   $64
        ora     ($01,x)
        and     ($64,x)
        .byte   $64
        ora     ($65,x)
        ror     $01
        ora     ($21,x)
        adc     $66
        ora     ($67,x)
        pla
LC9EE:  ora     ($64,x)
        .byte   $21
LC9F1:  .byte   $67
        pla
        bit     $6A69
        .byte   $12
        .byte   $6B
        and     ($69,x)
        ror     a
        .byte   $17
        jmp     (L186D)

        ror     $0101
        ora     ($01,x)
        ora     ($01,x)
        ora     ($6F,x)
        ora     ($02,x)
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        .byte   $6F
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($6F,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($70,x)
        ora     ($01,x)
        adc     ($72),y
        .byte   $73
        .byte   $74
        ora     ($75,x)
        .byte   $64
        .byte   $64
        ror     $77,x
        .byte   $77
        sei
LCA2E:  adc     $7B7A,y
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7C
        adc     $7F7E,x
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $80
        sta     ($82,x)
        .byte   $83
        sty     $84
        sty     $84
        sta     $86
        .byte   $87
        .byte   $80
        dey
        dey
        dey
        dey
        dey
        .byte   $89
        .byte   $82
        sei
        txa
        .byte   $8B
        txa
        txa
        txa
        txa
        .byte   $7A
        sty     $8E8D
        .byte   $8F
        bcc     LC9EE
        bcc     LC9F1
        .byte   $80
        adc     $9392,x
        .byte   $93
        sty     $94,x
        .byte   $93
        sei
        sta     $96,x
        sta     ($97,x)
        tya
        tya
        sta     ($99,x)
        .byte   $7B
        .byte   $7B
        .byte   $7B
        txs
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $9B
        ora     ($02,x)
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        .byte   $9C
        sta     $0101,x
        ora     ($02,x)
        .byte   $03
        ora     ($9E,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($9F,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($A0,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($A1,x)
        ora     ($01,x)
        ora     ($65,x)
        ldx     #$A2
        ldx     #$7B
        .byte   $7B
        .byte   $A3
        .byte   $12
        .byte   $67
        ldy     $A4
        ldy     $7F
        .byte   $7F
        .byte   $9C
        clc
        adc     #$A5
        lda     $A5
        .byte   $02
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($A6,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ldx     #$A2
        ror     $01
        .byte   $A7
        tay
        ora     ($A7,x)
        ldy     $A4
        pla
        bit     $AAA9
        .byte   $0C
        lda     #$A5
        lda     $6A
        .byte   $17
        .byte   $AB
        ldy     $AB11
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($02,x)
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        lda     $0101
        ldx     $12
        adc     $A2
        ldx     #$A2
        ldx     #$A2
        ldx     #$18
        .byte   $67
        ldy     $A4
        ldy     $A4
        ldy     $A4
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($02,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($A7,x)
        ora     ($0C,x)
        ora     ($A8,x)
        ora     ($66,x)
        bit     $AEA9
        ora     ($AF),y
        tax
        .byte   $12
        pla
        .byte   $17
        .byte   $AB
        ldy     $AB17
        ldy     $0118
        ora     ($B0,x)
        .byte   $93
        .byte   $93
        lda     ($01),y
        ora     ($01,x)
        ora     ($B2,x)
        .byte   $B3
        .byte   $B3
        ldy     $01,x
        ora     ($01,x)
        ora     ($B5,x)
        .byte   $93
        .byte   $93
        ldx     $01,y
        ora     ($01,x)
        ora     ($B7,x)
        clv
        clv
        lda     $0101,y
        ora     ($01,x)
        tsx
        .byte   $BB
        adc     $01A0,x
        .byte   $0C
        .byte   $AF
        .byte   $6B
        .byte   $7C
        tya
        sta     $A1,x
        .byte   $12
        ora     ($BC),y
        .byte   $6B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $AB
        ror     $7F7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        ora     ($01,x)
        ora     ($02,x)
        .byte   $03
        ora     ($01,x)
        ora     ($02,x)
        .byte   $03
        ora     ($01,x)
        .byte   $01
LCBCD:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $03
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
        .byte   $6B
        .byte   $7B
        .byte   $A3
        ora     ($01,x)
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($02,x)
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ldx     $AF01
        ora     ($01,x)
        ora     ($01,x)
        ora     ($AA,x)
        .byte   $0C
        ldy     $BEBD,x
        .byte   $BF
        .byte   $12
        .byte   $A3
        tax
        ora     ($A9),y
        cpy     #$C1
        .byte   $C2
        ldx     #$9C
        ldy     $AB17
        jmp     (LC4C3)

        ldy     $01
        ora     ($C5,x)
        dec     $C6
        dec     $C7
        iny
        ora     ($01,x)
        cmp     $C7
        .byte   $C7
        dec     $C6
        cmp     #$01
        ora     ($CA,x)
        .byte   $CB
        cpy     LC7CD
        dec     LD0CF
        dex
        .byte   $C7
        dec     $C7
        dec     $C7
        cmp     ($D2),y
        dex
        dec     $C7
        dec     $C7
        .byte   $C7
        and     LCA2E
        adc     $A2
        ror     $C7
        dec     $A2
        ldx     #$A2
        .byte   $D3
        ldy     $68
        dec     $C7
        ldy     $A4
        ldy     $D4
        lda     $6A
        .byte   $C7
        .byte   $C7
        cmp     $01,x
        .byte   $02
        .byte   $03
        ora     ($01,x)
        dec     $D7,x
        cmp     $02,x
        ora     ($01,x)
        ora     ($01,x)
        cld
        .byte   $7F
        cmp     $01,x
        ora     ($01,x)
        .byte   $02
        .byte   $03
        cmp     $ADDA,y
        ora     ($01,x)
        lda     $0101
        ora     ($D6,x)
        adc     $A2
        ldx     #$DB
        ora     ($01,x)
LCCA6:  ora     ($D8,x)
        .byte   $67
        ldy     $A4
        pla
        ora     ($0C,x)
        ora     ($DC,x)
        adc     #$A5
        lda     $6A
        .byte   $12
        ora     ($6B),y
        .byte   $7B
        jmp     (LC3C3)

        adc     $1718
        cld
        .byte   $7F
        cmp     LDDDD,x
        cmp     LDDDE,x
        cmp     LDDDD,x
        .byte   $DF
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LE0DD,x
        sbc     ($DD,x)
        cmp     LDDDD,x
        dec     LE2E0,x
        cmp     LE0E0,x
        cmp     LE2DD,x
        cmp     LDDDD,x
        sbc     ($DD,x)
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     $7B7B,x
        .byte   $E3
        cmp     LE4DD,x
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        sbc     $DD
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LE7E6,x
        cmp     LDDDD,x
        inx
        sbc     #$EA
        .byte   $EB
        cpx     LEDEA
        inc     LDDEF
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
LCD34:  .byte   $DD
        .byte   $DD
LCD36:  .byte   $DD
        .byte   $DD
LCD38:  .byte   $DD
        .byte   $DD
LCD3A:  .byte   $DD
        .byte   $DD
LCD3C:  .byte   $DD
        .byte   $DD
LCD3E:  .byte   $DD
        .byte   $DD
LCD40:  beq     $CD32
LCD42:  beq     LCD34
LCD44:  beq     LCD36
LCD46:  beq     LCD38
LCD48:  beq     LCD3A
LCD4A:  beq     LCD3C
LCD4C:  beq     LCD3E
LCD4E:  beq     LCD40
LCD50:  beq     LCD42
LCD52:  beq     LCD44
LCD54:  beq     LCD46
LCD56:  beq     LCD48
LCD58:  beq     LCD4A
LCD5A:  beq     LCD4C
LCD5C:  beq     LCD4E
LCD5E:  beq     LCD50
LCD60:  beq     LCD52
LCD62:  beq     LCD54
LCD64:  beq     LCD56
LCD66:  beq     LCD58
LCD68:  beq     LCD5A
LCD6A:  beq     LCD5C
LCD6C:  beq     LCD5E
LCD6E:  beq     LCD60
LCD70:  beq     LCD62
LCD72:  beq     LCD64
        .byte   $F0
LCD75:  beq     $CD67
LCD77:  beq     $CD69
LCD79:  beq     $CD6B
LCD7B:  beq     $CD6D
LCD7D:  beq     $CD6F
LCD7F:  beq     $CD71
LCD81:  beq     $CD73
LCD83:  sbc     ($F2),y
LCD85:  beq     LCD77
LCD87:  beq     LCD79
LCD89:  beq     LCD7B
LCD8B:  beq     LCD7D
LCD8D:  beq     LCD7F
LCD8F:  beq     LCD81
LCD91:  beq     LCD83
LCD93:  beq     LCD85
LCD95:  beq     LCD87
LCD97:  beq     LCD89
LCD99:  beq     LCD8B
LCD9B:  beq     LCD8D
LCD9D:  .byte   $F0
LCD9E:  .byte   $F0
LCD9F:  beq     LCD91
LCDA1:  beq     LCD93
LCDA3:  beq     LCD95
LCDA5:  beq     LCD97
LCDA7:  beq     LCD99
LCDA9:  beq     LCD9B
LCDAB:  beq     LCD9D
LCDAD:  beq     LCD9F
LCDAF:  beq     LCDA1
        beq     LCDA3
        beq     LCDA5
        beq     LCDA7
        beq     LCDA9
        beq     LCDAB
        beq     LCDAD
        beq     LCDAF
        beq     LCD9E
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
LCE11:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
LCECD:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
LCF04:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
LCF0F:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
LCFCC:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     L0100,x
        .byte   $02
        brk
        ora     (L0000,x)
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        ora     $06
        .byte   $07
        asl     $06
        .byte   $07
        .byte   $04
        .byte   $04
        php
        .byte   $03
        ora     #$0A
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $0B
        .byte   $04
        .byte   $0C
        ora     $0B04
        asl     $0F0E
        asl     $100E
        asl     a:$0F
        brk
        ora     (L0000),y
        brk
        brk
        brk
        .byte   $12
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $14
        ora     $13,x
        asl     L0000,x
        brk
        brk
        .byte   $17
        ora     (L0000,x)
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        asl     $18
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     $0504,y
        clc
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $1A
        .byte   $1B
        .byte   $04
        .byte   $04
        .byte   $04
        asl     $0E1C
        ora     $0E0F,x
        .byte   $1C
        asl     $1F1E
        jsr     L0000
        and     ($1F,x)
        jsr     L2200
        brk
        brk
        brk
        .byte   $23
        .byte   $22
        brk
        brk
        brk
        brk
        brk
        .byte   $12
        bit     $25
        brk
        .byte   $03
        rol     $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $27
        .byte   $04
        plp
        asl     $2904
        .byte   $04
        asl     $0400
        bpl     LD0BB
        asl     $0404
        rol     a
        brk
        asl     a:$2A
        brk
        asl     $2704
        brk
        .byte   $2B
        brk
        ora     (L0000,x)
        brk
        .byte   $04
        .byte   $27
        brk
        bit     a:L0000
        brk
        rol     a
        .byte   $04
        .byte   $27
        brk
        brk
        brk
        brk
LD0BB:  brk
        .byte   $23
        ora     a:$27
        brk
        brk
        brk
        brk
        and     $2E28
        brk
        .byte   $2F
        .byte   $03
        bmi     LD0FC
        bmi     LD0DE
        .byte   $31
LD0CF:  brk
        and     ($0D,x)
        .byte   $32
        and     L0000
        brk
        bit     $25
        .byte   $33
        plp
        .byte   $03
        bmi     LD10D
        .byte   $30
LD0DE:  bmi     LD110
        and     $0428
        .byte   $34
        and     a:L0000
        brk
        and     $0E28
        bmi     LD114
        brk
        brk
        brk
        and     ($28,x)
        and     L0000,x
        and     $1315
        .byte   $13
        and     ($28,x)
        .byte   $36
LD0FB:  brk
LD0FC:  brk
        brk
        ora     $13,x
        brk
        brk
        brk
        and     ($37,x)
        sec
        and     $04,y
        brk
        brk
        and     ($0D,x)
LD10D:  .byte   $3A
        .byte   $3B
        .byte   $0E
LD110:  .byte   $27
        brk
        brk
        .byte   $21
LD114:  plp
        .byte   $3C
        brk
        and     $3030,x
        .byte   $03
        ora     ($28,x)
        rol     a:$3F,x
        and     $0E40
        bmi     LD14D
        .byte   $27
        eor     ($03,x)
        brk
        brk
        brk
        asl     $3010,x
        bmi     LD13E
        .byte   $14
        .byte   $42
        asl     $2D,x
        .byte   $43
        brk
        .byte   $12
        and     $1313,x
        .byte   $44
        .byte   $13
        .byte   $14
        .byte   $42
LD13E:  asl     L0000,x
        .byte   $04
        .byte   $04
        brk
        bit     $45
        lsr     $04
        .byte   $27
        .byte   $04
        .byte   $04
        .byte   $47
        .byte   $03
        .byte   $30
LD14D:  bmi     LD153
        .byte   $27
        .byte   $04
        .byte   $04
        pha
LD153:  .byte   $04
        .byte   $27
        eor     #$4A
        .byte   $4B
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $27
        and     ($04,x)
        .byte   $27
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        jmp     L4A4D

        lsr     $0404
        .byte   $04
        .byte   $04
        .byte   $47
        .byte   $03
        .byte   $04
        .byte   $4F
        asl     $0E0E
        asl     $0E50
        asl     $2227
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $27
        and     ($28,x)
        .byte   $27
        brk
        brk
        brk
        ora     (L0000,x)
        and     ($28,x)
        .byte   $27
        brk
        .byte   $12
        and     ($09,x)
        .byte   $03
        and     ($28,x)
        .byte   $27
        and     ($03,x)
        .byte   $03
        eor     (L000B),y
        and     ($28,x)
        .byte   $03
        .byte   $03
        .byte   $04
        asl     $0F1D
        rol     $0E10,x
        asl     $2B0E
        .byte   $3F
        brk
        brk
        brk
        .byte   $3F
        brk
        .byte   $52
        .byte   $53
        brk
        brk
        brk
        rol     a:L0000,x
        .byte   $54
        brk
        brk
        eor     L0000,x
        brk
        lsr     $57,x
        cli
        brk
        eor     $58,y
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        .byte   $03
        .byte   $5A
        .byte   $03
        .byte   $03
        ora     #$0A
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $0C
        ora     $0404
        asl     $040E
        .byte   $04
        .byte   $04
        plp
        .byte   $04
        .byte   $04
        .byte   $3F
        and     $0404,x
        .byte   $0B
        plp
        .byte   $04
        .byte   $5B
        .byte   $5C
        eor     $04,x
        asl     $100F
        asl     $5E5D
        .byte   $57
        .byte   $1F
        .byte   $5F
        brk
        .byte   $3F
        brk
        .byte   $53
        cli
        cli
        .byte   $22
        rts

        brk
        brk
        brk
        brk
        brk
        brk
        adc     (L0000,x)
        brk
        brk
        brk
        brk
        .byte   $5A
        ora     #$0A
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $62
        .byte   $04
        .byte   $0C
        ora     $0605
        clc
        .byte   $04
        .byte   $03
        asl     $2804
        php
        .byte   $03
        ora     $0404,y
        and     $2804,x
        .byte   $0B
        .byte   $04
        .byte   $04
        asl     $2D0E
        .byte   $04
        bpl     LD23B
        asl     $3C0E
        brk
        .byte   $63
        .byte   $1F
        .byte   $64
        brk
        brk
        brk
        brk
        brk
        adc     $22
        .byte   $66
LD23B:  brk
        brk
        brk
        brk
        eor     $6700,y
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        ora     ($26,x)
        .byte   $5A
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $5A
        .byte   $03
        pla
        adc     #$69
        adc     #$6A
        ror     a
        .byte   $04
        .byte   $04
        asl     $0404
        asl     $0135
        asl     $3D04
        asl     $2B04
        brk
        brk
        brk
        .byte   $6B
        jmp     (L1F3D)

        .byte   $53
        brk
        brk
        eor     $6D,x
        ror     $226F
        brk
        brk
        bvs     LD2D1
        cli
        cli
        cli
        .byte   $22
        brk
        brk
        adc     ($12),y
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        .byte   $03
        .byte   $03
        .byte   $03
        rol     $0303
        bmi     LD2B7
        ror     a
        adc     #$0D
        .byte   $5A
        .byte   $04
        .byte   $04
        .byte   $72
        brk
        and     $280E,x
        .byte   $04
        asl     $030E
        .byte   $73
        .byte   $74
        .byte   $27
        adc     $0E,x
        brk
        bvs     LD2AB
        ror     $77,x
        brk
        .byte   $01
LD2AB:  brk
        brk
        sei
        .byte   $04
        adc     $7A78,y
        brk
        brk
        .byte   $7B
        .byte   $7C
        .byte   $04
LD2B7:  adc     $667E,x
        brk
        brk
        .byte   $7F
LD2BD:  .byte   $80
        .byte   $04
        brk
        brk
        brk
        ora     ($81,x)
        .byte   $82
        .byte   $83
        .byte   $04
        sty     L0000
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        sta     $04
        ora     (L0000,x)
LD2D1:  ror     a
        ora     $0E0E
        bmi     LD2E5
        brk
        brk
        stx     $28
        and     $01,x
        brk
        brk
        brk
        brk
        and     $8728
        .byte   $21
LD2E5:  .byte   $03
        .byte   $03
        .byte   $03
        dey
        bmi     LD2FB
        bmi     LD31D
        asl     $0E0E
        brk
        .byte   $87
        brk
        brk
        brk
        and     L0000,x
        .byte   $89
        brk
        brk
        brk
LD2FB:  brk
        brk
        brk
        brk
        brk
        .byte   $42
        .byte   $13
        asl     $84,x
        dey
        brk
LD306:  .byte   $12
        ora     (L0000,x)
        brk
        txa
        .byte   $8B
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        ora     ($82,x)
        sty     $040D
        ora     $06
        dey
        sta     $8E8D
        plp
LD31D:  .byte   $04
        php
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        plp
        plp
        asl     $0B04
        asl     $040E
        bpl     LD33D
        .byte   $2B
        asl     a:$0F
        .byte   $8F
        bcc     LD2BD
        ora     ($2C),y
        brk
        brk
        brk
        and     ($91,x)
        dey
        brk
LD33D:  bit     a:L0000
        brk
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        asl     $06
        clc
        .byte   $04
        .byte   $04
        .byte   $04
        asl     $030E
        .byte   $03
        ora     $0E04,y
        .byte   $04
        .byte   $3C
        brk
        .byte   $04
        .byte   $04
        asl     $2B04
        asl     $3030
        asl     $9204
        asl     $882C
        ora     ($81),y
        .byte   $89
        bcc     LD306
        sty     $53,x
        brk
        brk
        brk
        and     ($91,x)
        sta     L0000,x
        brk
        .byte   $42
        .byte   $13
        .byte   $42
        brk
        and     $9796
        tya
        .byte   $97
        tya
        .byte   $97
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     $040E
        .byte   $04
        .byte   $04
        .byte   $04
        asl     $1104
        sta     $9B9A,y
        .byte   $9C
        .byte   $9B
        sta     $8896,x
        asl     $0428
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $04
        brk
        and     ($28,x)
        and     #$29
        .byte   $04
        asl     a:$04
        and     ($9E,x)
        .byte   $9F
        .byte   $9F
        .byte   $9F
        ldy     #$9F
        asl     $21,x
        sta     ($91),y
        sta     ($91),y
        lda     ($91,x)
        tya
LD3C1:  .byte   $97
        tya
        .byte   $97
        tya
        .byte   $97
        tya
        tya
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ldx     #$04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
LD3D4:  .byte   $04
        .byte   $A3
        .byte   $04
LD3D7:  .byte   $04
        tya
        stx     $98,y
        stx     $98,y
        ldy     $98
        .byte   $97
        .byte   $04
        .byte   $04
        lda     $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ldx     $A6
        .byte   $04
        asl     $9F90
        .byte   $9F
        .byte   $A7
        tay
        tay
        .byte   $9F
        lda     #$91
        sta     ($91),y
        sta     ($91),y
        sta     ($91),y
        lda     ($AA,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9B
        ldy     $9896
        ldy     $0E
        .byte   $04
        .byte   $04
LD413:  .byte   $04
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        .byte   $04
        .byte   $04
        ldx     #$04
        .byte   $04
        lda     $ABAE
        .byte   $AF
        .byte   $9C
        bcs     LD3C1
        .byte   $9C
        lda     ($AB),y
        bmi     LD438
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        pha
        .byte   $03
        .byte   $B2
        .byte   $B3
        .byte   $9F
        bcc     LD3D4
        .byte   $9F
        bcc     LD3D7
LD438:  lda     ($A1,x)
        sta     ($91),y
        sta     ($91),y
        sta     ($91),y
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        tya
        tya
        tya
        tya
        ldy     $B5,x
        ldx     $B7,y
        .byte   $04
        clv
        lda     $0404,y
        .byte   $04
        lda     $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ldx     #$04
        .byte   $04
        .byte   $04
        .byte   $AF
        .byte   $9C
        .byte   $9C
        .byte   $9B
        .byte   $B7
        .byte   $AF
        .byte   $9C
        .byte   $9C
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        stx     $98,y
        tya
        .byte   $9F
        .byte   $9F
        bcc     LD413
LD474:  tsx
        .byte   $9F
        .byte   $A7
        .byte   $9F
        sta     ($91),y
        sta     ($91),y
        lda     ($91,x)
        sta     ($91),y
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        stx     $98,y
        .byte   $97
        sta     $A4
        tya
        tya
        tya
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        lda     $04AE
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $BB
        ldy     $9DBD,x
        .byte   $AF
        tya
        tya
        tya
        ldx     $48BF,y
        .byte   $AB
        .byte   $04
        .byte   $9F
        .byte   $9F
        bcc     LD474
        tsx
        .byte   $9F
        tsx
        .byte   $A7
        sta     ($91),y
        sta     ($91),y
        lda     ($91,x)
        lda     ($91,x)
        .byte   $04
        .byte   $04
        .byte   $AB
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        tya
        ldy     $C1
        .byte   $C2
        .byte   $C3
        stx     $C4,y
        tya
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        cmp     $04
        .byte   $04
        asl     $0E0E
        .byte   $04
        asl     LC604
        .byte   $9B
        .byte   $C7
        and     $1E
        .byte   $04
        and     $04,x
        iny
        .byte   $04
        .byte   $27
        brk
        .byte   $AB
        .byte   $04
        .byte   $AB
        .byte   $04
        iny
        .byte   $9F
        cmp     #$C9
        cmp     #$9F
        tsx
        .byte   $9F
        dex
        sta     ($A1),y
        lda     ($A1,x)
LD4FC:  sta     ($A1),y
        sta     ($CB),y
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $27
        tya
        tya
        tya
        tya
        tya
        tya
        .byte   $97
LD50F:  .byte   $27
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     $04CC
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        and     L0000,x
        .byte   $04
        cmp     $04CE
        dec     LCF04
        brk
        .byte   $04
        bne     LD4FC
        .byte   $04
        cmp     ($04),y
        .byte   $27
        brk
        .byte   $9F
        dex
        .byte   $D2
        .byte   $9F
        .byte   $D2
        .byte   $9F
        cmp     #$C9
        sta     ($CB),y
        .byte   $D3
        sta     ($D3),y
        sta     ($A1),y
        lda     ($28,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $D4
        and     $39D4,y
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $0C
        adc     #$51
        cmp     $04,x
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        eor     ($D5),y
        ora     $06
        .byte   $07
        clc
        .byte   $04
        .byte   $04
        dec     $D7,x
        cld
        cld
        cld
        cld
        cmp     LDA1F,y
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DC
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $DF
        cpx     #$E1
        .byte   $E2
        .byte   $E3
        .byte   $22
        .byte   $22
        cpx     $E5
        inc     $E7
        inx
        sbc     #$EA
        .byte   $EB
        cpx     LEEED
        .byte   $EF
        beq     LD5C2
        .byte   $22
        sbc     ($F2),y
        .byte   $F3
        .byte   $F4
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        sbc     $F6,x
        .byte   $F7
        sed
        sbc     LFBFA,y
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
LD5C2:  dec     LDEDE,x
        dec     LDEDE,x
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     $2222,x
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        brk
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $06
        brk
        .byte   $07
        ora     ($08,x)
        ora     #$0A
        ora     L000B
        brk
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $07
        .byte   $0C
        brk
        ora     $0F0E
        bpl     LD830
        brk
        brk
        brk
        .byte   $12
        .byte   $13
        .byte   $03
        .byte   $14
        ora     L0000,x
        asl     $16,x
        .byte   $17
        clc
        ora     $1B1A,y
        .byte   $16
LD830:  .byte   $1C
        .byte   $1C
        ora     $1E1E,x
        asl     $1C1F,x
        jsr     L2020
        and     ($21,x)
        and     ($20,x)
        jsr     L000B
        .byte   $22
        .byte   $23
        bit     $25
        brk
        rol     $0C
        brk
        .byte   $22
        .byte   $27
        plp
        and     L0000
        and     #$00
        brk
        rol     a
        .byte   $2B
        bit     a:$2D
        rol     a:L0000
        .byte   $22
        .byte   $2F
        bmi     LD88F
        .byte   $32
        .byte   $33
        .byte   $07
        brk
        .byte   $22
        .byte   $34
        bmi     LD897
        and     $36,x
        asl     $16,x
        .byte   $37
        sec
        bmi     LD8A7
        and     $36,x
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        jsr     L2020
        jsr     L2020
        jsr     L3A20
        .byte   $3A
        .byte   $3A
        .byte   $3A
        .byte   $3A
        .byte   $3B
        .byte   $3C
        and     $3C,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3B
        .byte   $3D
LD88F:  and     $3E,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3B
        .byte   $3C
LD897:  and     $3F,x
        brk
        brk
        brk
        brk
        rti

        eor     ($42,x)
        .byte   $43
        rol     $0700,x
        asl     L0000
        brk
LD8A7:  and     $36,x
        .byte   $44
        asl     $16,x
        asl     $16,x
        asl     $35,x
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        jsr     L2020
        jsr     L2020
        jsr     L4520
        lsr     $47
        pha
        .byte   $47
        pha
        eor     #$45
        eor     $45
        eor     $45
        eor     $45
        eor     $45
        eor     $4A
        .byte   $4B
        .byte   $4B
        .byte   $4B
        .byte   $4B
        jmp     L4545

        eor     $4D4D
        eor     $4D4D
        eor     $45
        eor     $45
        eor     $45
        eor     $45
        eor     $4E
        lsr     $4E4E
        lsr     $454F
        bvc     LD942
        .byte   $52
        eor     ($51),y
        .byte   $52
        .byte   $53
        .byte   $47
        .byte   $54
        eor     $55,x
        eor     $55,x
        eor     $53,x
        eor     $54
        .byte   $3A
        .byte   $3A
        .byte   $3A
        .byte   $3C
        .byte   $3C
        .byte   $3A
        .byte   $3A
        .byte   $3A
        .byte   $3C
        .byte   $3C
        .byte   $3C
        lsr     $57,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        cli
        eor     $3C3C,y
        .byte   $3C
        .byte   $3C
        .byte   $5A
        cli
        .byte   $3A
        .byte   $3A
        .byte   $3C
        .byte   $5B
        .byte   $5C
        .byte   $3C
        .byte   $3A
        .byte   $3A
        .byte   $3C
        .byte   $3C
        eor     $3A3A,x
        lsr     $3C3C,x
        .byte   $3C
        .byte   $3C
        .byte   $5F
        .byte   $3C
        .byte   $3C
        rts

        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $4B
        .byte   $4B
LD942:  .byte   $4B
        and     $44,x
        eor     $61
        eor     $4D
        eor     $424D
        .byte   $3F
        eor     $4D
        eor     $45
        eor     $45
        .byte   $62
        .byte   $63
        eor     $45
        eor     $45
        .byte   $64
        eor     $4D
        eor     $6445
        eor     $65
        ror     $65
        adc     $66
        adc     $65
        adc     $67
        .byte   $67
        pla
        brk
        .byte   $0C
        .byte   $32
        .byte   $67
        .byte   $67
        eor     ($51),y
        adc     #$47
        pha
        .byte   $54
        eor     ($51),y
        eor     $55,x
        ror     a
        eor     $45
        .byte   $6B
        eor     $55,x
        .byte   $44
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        and     $44,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        and     $3F,x
        brk
        brk
        brk
        brk
        brk
        .byte   $0B
        and     $44,x
        brk
        jmp     (L6D6D)

        ror     $350B
        .byte   $63
        .byte   $6F
        .byte   $62
        eor     ($51),y
        .byte   $63
        .byte   $6F
        .byte   $62
        brk
        .byte   $07
        brk
        .byte   $54
        adc     #$00
        .byte   $0B
        brk
        and     $3D70,x
        .byte   $54
        adc     #$3D
        bvs     LD9F5
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $54
        adc     #$3C
        .byte   $3C
        .byte   $3C
        adc     #$00
        asl     $71
        brk
        .byte   $0B
        brk
        brk
        adc     #$00
        .byte   $07
        brk
        .byte   $07
        brk
        .byte   $07
        asl     $69
        .byte   $07
        brk
        brk
        bvc     LDA25
        .byte   $0C
        brk
        adc     #$00
        brk
        bvc     LDA4F
        .byte   $72
        .byte   $73
        lsr     $4769
        pha
        rti

        eor     $4D4D
        .byte   $54
        adc     #$45
        eor     $4D
        eor     $45
        eor     $54
        adc     #$45
        eor     $45
        .byte   $45
LD9F5:  eor     $45
        .byte   $54
        adc     #$45
        eor     $45
        eor     $45
        eor     $54
        brk
        .byte   $07
        .byte   $74
        adc     $76,x
        adc     $77,x
        .byte   $3C
        brk
        brk
        sei
        bmi     LDA86
        bmi     LDA86
        .byte   $3C
        .byte   $07
        .byte   $0B
        sei
        bmi     LDA8F
        bmi     LDA8E
        .byte   $5A
        .byte   $4F
        brk
        .byte   $7B
        bmi     LDA99
        bmi     LDA96
LDA1F:  .byte   $3A
        adc     #$00
        adc     $7C30,x
LDA25:  bmi     LDA9E
        .byte   $3C
        eor     ($4F),y
        adc     $7C30,x
        bmi     LDAA6
        .byte   $3C
        eor     ($69),y
        ror     $7E7E,x
        ror     $7E7F,x
        eor     ($69),y
        adc     $7C30,x
        bmi     LDA7A
        .byte   $3C
        .byte   $3B
        .byte   $3C
        .byte   $80
        .byte   $07
        .byte   $22
        sta     ($25,x)
        ora     ($3B,x)
        .byte   $3C
        .byte   $80
        .byte   $0C
        rol     a
        .byte   $2C
        .byte   $2D
LDA4F:  ora     ($82,x)
        .byte   $59
LDA52:  .byte   $80
        brk
LDA54:  .byte   $22
        bmi     LDA88
LDA57:  ora     ($3A,x)
        .byte   $3A
        .byte   $80
        .byte   $83
        .byte   $22
        bmi     LDA90
        sty     $3C
        .byte   $3C
        .byte   $80
        adc     $3022,x
        and     ($85),y
        .byte   $3C
        .byte   $3C
        .byte   $7F
        adc     $8622,x
        and     ($87),y
        ror     $442E,x
        ror     $7E7E,x
        ror     $3C88,x
        .byte   $35
LDA7A:  .byte   $44
        adc     $3022,x
        and     ($87),y
        .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        .byte   $03
        .byte   $04
LDA86:  .byte   $03
        .byte   $89
LDA88:  php
        ora     #$0A
        php
        ora     #$0A
LDA8E:  .byte   $09
LDA8F:  .byte   $87
LDA90:  .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        .byte   $03
        .byte   $04
LDA96:  .byte   $03
        .byte   $89
        txa
LDA99:  ora     #$0A
        php
        ora     #$8B
LDA9E:  ora     #$87
        sty     $0403
        .byte   $02
        .byte   $89
        .byte   $8D
LDAA6:  .byte   $03
        .byte   $89
        stx     $0A09
        .byte   $87
        .byte   $8F
        stx     $8709
        dey
        dey
        dey
        dey
        dey
        sty     $8903
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        stx     $8709
        bcc     LDA52
        bcc     LDA54
        bcc     LDA57
        ora     #$92
        .byte   $93
        sty     $95,x
        .byte   $93
        sty     $95,x
        sty     $96,x
        php
        ora     #$0A
        php
        ora     #$0A
        ora     #$92
        .byte   $97
        sty     $96,x
        tya
        tya
        tya
        tya
        tya
        php
        ora     #$99
        txs
        ora     #$99
        ora     #$99
        .byte   $97
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        sty     $9B,x
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        sta     $9D9D,x
        sta     $9D9D,x
        .byte   $9D
        .byte   $9D
LDB00:  .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        tya
        .byte   $9E
        sty     $95,x
        sty     $95,x
        sty     $96,x
        .byte   $9F
        ldy     #$09
        lda     ($0F,x)
        ldx     #$09
        .byte   $92
        .byte   $9E
        .byte   $A3
        sty     $95,x
        sty     $95,x
        sty     $96,x
        ora     #$A4
        ora     #$0A
        ora     #$0A
        ora     #$99
        sty     $9B,x
        lda     $A3
        sty     $A5,x
        sty     $9B,x
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9F
        ldx     $08
        ora     #$0A
        .byte   $A7
        tay
        tya
        .byte   $9E
        .byte   $A3
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$9C
        .byte   $9F
        ldx     $08
        ora     #$AA
        .byte   $AB
        ldy     $9E98
        .byte   $A3
        .byte   $97
        sty     $9B,x
        .byte   $93
        lda     $099A
        ldy     $AE
        ora     #$AF
        php
        bcs     LDB00
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$9C
        .byte   $9C
        .byte   $9F
        lda     ($B2),y
        .byte   $B3
        lda     ($B1),y
LDB78:  sta     $9D9D,x
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $02
        .byte   $03
        .byte   $B4
LDB83:  lda     $B6,x
        .byte   $B7
        .byte   $02
        clv
LDB88:  php
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     LDB93
        .byte   $03
        .byte   $A1
LDB93:  lda     $A20F,y
        .byte   $02
        clv
        php
        ora     #$99
        txs
        ora     #$99
        php
        bcs     LDBA3
        .byte   $03
        .byte   $04
LDBA3:  .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        clv
        sta     $A68A,x
        tsx
        .byte   $BB
        ldy     $B008,x
        lda     $BE8D,x
        .byte   $13
        .byte   $03
        .byte   $BF
        .byte   $02
        clv
        cpy     #$C1
        ldx     $08
        ora     #$0A
        php
        bcs     LDB83
        .byte   $C3
        cpy     $C5
LDBC4:  dec     $C7
        .byte   $C2
        iny
        txs
        ora     #$99
LDBCB:  txs
        ora     #$99
        txs
        cmp     #$C5
        dex
        .byte   $CB
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$9A
LDBD9:  .byte   $09
LDBDA:  ldy     $08
        ora     #$0A
        php
        bcs     LDB78
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$08
LDBE9:  ora     #$CC
LDBEB:  tay
        cmp     $08CE
        bcs     LDB88
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$08
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     LDC09
        ora     #$CF
        php
        ora     #$0A
        php
        bcs     LDBD9
LDC09:  .byte   $03
        cmp     ($02),y
        .byte   $03
        .byte   $04
        .byte   $02
        clv
        .byte   $D2
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     LDBC4
        .byte   $D3
        .byte   $D4
LDC1B:  lda     LD50F,y
        .byte   $AB
        ldy     $099A
        sta     $099A,y
        sta     LC99A,y
        .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        .byte   $03
        dec     $02,x
        clv
        php
        ora     #$0A
        php
        ora     #$0A
        php
        .byte   $D7
        php
        ora     #$0A
        php
        ora     #$0A
        php
LDC3F:  bcs     LDBCB
        cld
        ldy     $09A5,x
        asl     a
        ldx     $91B0
        sty     $D9,x
        .byte   $93
        sty     $9B,x
        .byte   $DA
        lda     #$8A
        ora     #$0A
        lda     $09
        asl     a
        .byte   $D2
        .byte   $B0
LDC58:  bcc     $DBEA
        bcc     $DBED
        sty     $9B,x
        .byte   $97
        .byte   $A9
LDC60:  txs
        ora     #$99
        txs
        ora     #$CC
        tay
        .byte   $DB
        .byte   $97
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$AB
        .byte   $D3
        .byte   $D4
        lda     LD50F,y
        .byte   $AB
        ldy     $9493
        sta     $93,x
        sty     $95,x
        .byte   $93
        lda     $0302
        .byte   $04
        .byte   $DC
        .byte   $03
        .byte   $04
        .byte   $02
        clv
LDC88:  php
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     LDC1B
        .byte   $03
        .byte   $04
        lda     $03
        .byte   $04
        .byte   $02
        clv
        sty     LDDCD
        dec     LDDCD,x
        .byte   $DB
        tay
        stx     $0403
        .byte   $8B
        .byte   $03
        .byte   $04
        bne     LDC60
        sty     LD50F
        dec     $0A09,x
        .byte   $D2
        bcs     LDC3F
        .byte   $03
LDCB2:  .byte   $14
        .byte   $8B
        .byte   $03
        .byte   $04
        .byte   $DF
        clv
        sty     $0A09
        dec     $0A09,x
        php
        bcs     LDC58
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$E0
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     LDCB2
        sty     $96,x
        tya
        tya
        tya
        tya
        tya
        ldx     $9909
        txs
        ora     #$99
        txs
        cmp     #$97
        .byte   $E2
        .byte   $E3
        .byte   $97
        sty     $9B,x
        .byte   $97
LDCE7:  lda     #$08
        ora     #$E4
        php
        sbc     $0A
        php
        bcs     LDC88
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$08
        ora     #$0A
        ldx     $0A09
        php
        bcs     LDCE7
        .byte   $E7
        brk
        .byte   $0B
        brk
        brk
        ora     ($84,x)
        inc     L000B
        brk
        brk
        brk
        brk
        ora     ($92,x)
        tya
        inx
        brk
        stx     $98,y
        tya
        tya
        tya
        inc     L0000
        .byte   $0B
        brk
        .byte   $0B
        brk
        .byte   $12
        .byte   $92
        inc     L000B
        .byte   $E7
        brk
        brk
        brk
        ora     ($84,x)
        inc     L0000
        sbc     #$06
        brk
        brk
        ora     ($EA,x)
        inc     $07
        .byte   $EB
        brk
        cpx     $8400
        sta     a:$E6,x
        .byte   $EB
        brk
        ora     (L0000,x)
        .byte   $92
        .byte   $9C
        ora     #$0A
        php
        sbc     $0AEE
        php
        ora     #$09
        .byte   $EF
        php
        sbc     $0AEE
        beq     LDD59
        dec     $F1
        .byte   $C2
        .byte   $F2
        .byte   $F3
        .byte   $C7
        .byte   $F4
        .byte   $C3
        .byte   $09
LDD59:  sta     LF59A,y
        inc     $99,x
        txs
        ora     #$94
        .byte   $F7
        .byte   $97
        sed
        sbc     LFA9B,y
        sty     $09,x
        asl     a
LDD6A:  php
        .byte   $FB
        .byte   $FC
        asl     a
        php
        ora     #$9D
        sta     $9D9D,x
        sta     $9D9D,x
        sta     $9C9C,x
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
LDDC8:  sbc     LFDFD,x
        .byte   $FD
        .byte   $FD
LDDCD:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
LDDDC:  .byte   $FD
LDDDD:  .byte   $FD
LDDDE:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        .byte   $FD
        .byte   $FD
LDDEF:  sbc     LFDFD,x
LDDF2:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     $97FD,x
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$E0
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     LDDF2
        sty     $96,x
        tya
        tya
        tya
        tya
        tya
        ldx     $9909
        txs
        ora     #$99
        txs
        cmp     #$97
        .byte   $E2
        .byte   $E3
        .byte   $97
        sty     $9B,x
        .byte   $97
LDE27:  lda     #$08
        ora     #$E4
        php
        sbc     $0A
        php
        bcs     LDDC8
        sty     $9B,x
        .byte   $97
        sty     $9B,x
        .byte   $97
        lda     #$08
        ora     #$0A
        ldx     $0A09
        php
        bcs     LDE27
        .byte   $E7
        brk
        .byte   $0B
        brk
        brk
        ora     ($84,x)
        inc     L000B
        brk
        brk
        brk
        brk
        ora     ($92,x)
        tya
        inx
        brk
        stx     $98,y
        tya
        tya
        tya
        inc     L0000
        .byte   $0B
        brk
        .byte   $0B
        brk
        .byte   $12
        .byte   $92
        inc     L000B
        .byte   $E7
        brk
        brk
        brk
        ora     ($84,x)
        inc     L0000
LDE6A:  sbc     #$06
        brk
        brk
        ora     ($EA,x)
        inc     $07
        .byte   $EB
        brk
        cpx     $8400
        sta     a:$E6,x
        .byte   $EB
        brk
        ora     (L0000,x)
        .byte   $92
        .byte   $9C
        ora     #$0A
        php
        sbc     $0AEE
        php
        ora     #$09
        .byte   $EF
        php
        sbc     $0AEE
        beq     LDE99
        dec     $F1
        .byte   $C2
        .byte   $F2
        .byte   $F3
        .byte   $C7
        .byte   $F4
        .byte   $C3
        .byte   $09
LDE99:  sta     LF59A,y
        inc     $99,x
        txs
        ora     #$94
        .byte   $F7
        .byte   $97
        sed
        sbc     LFA9B,y
        sty     $09,x
        asl     a
        php
        .byte   $FB
        .byte   $FC
        asl     a
        php
        ora     #$9D
        sta     $9D9D,x
        sta     $9D9D,x
        sta     $9C9C,x
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
LDEDE:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     a:$FD,x
        ora     (L0000,x)
        .byte   $02
        brk
        brk
        ora     (L0000,x)
        ora     ($03,x)
        .byte   $04
        .byte   $02
        .byte   $03
        .byte   $02
        ora     $06
        .byte   $07
        .byte   $07
        php
        .byte   $07
        .byte   $07
        .byte   $03
        ora     #$07
        asl     a
        .byte   $0B
        .byte   $0C
        .byte   $0B
        asl     a
        ora     $0B0E
        .byte   $0F
        bpl     LE034
        bpl     LE034
        .byte   $12
        .byte   $13
        bpl     LE03D
        ora     $16,x
        ora     $17,x
        clc
        ora     $1A15,y
        .byte   $1A
        .byte   $1A
        .byte   $1A
LE034:  .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
LE03D:  .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $03
        ora     (L0000,x)
        .byte   $04
        brk
        .byte   $03
        asl     $03
        asl     $05
        .byte   $03
        php
        asl     $05
        .byte   $07
        .byte   $02
        .byte   $03
        ora     #$07
        .byte   $0C
        ora     $0A1C
        .byte   $12
        ora     $0A1C,x
        ora     ($1E),y
        .byte   $1F
        .byte   $0F
        jsr     L1F21
        .byte   $0F
        asl     $22,x
        .byte   $23
        .byte   $17
        bit     $22
        ora     $2418,y
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $02
        brk
        brk
        ora     ($04,x)
        brk
        ora     #$00
        ora     $0203,x
        ora     $08
        asl     $09
        and     $21
        ora     $0903
        rol     $0D
        .byte   $27
        plp
        .byte   $22
        .byte   $23
        clc
        ora     $1E26,y
        ora     #$29
        .byte   $1A
        .byte   $1A
        rol     a
        .byte   $17
        asl     $23,x
        ora     $1B23,y
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1A
        .byte   $1A
        rol     a
        .byte   $23
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $2B
        bit     $1B1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $2B
        and     $0301
        .byte   $02
        ora     ($2E,x)
        brk
        ora     L0000
        asl     $02
        .byte   $03
        .byte   $03
        php
        asl     $09
        asl     $2F
        bmi     LE104
        bmi     LE107
        .byte   $03
        .byte   $1C
        ora     $0D0D
        ora     $0803,x
LE0DD:  clc
        .byte   $1F
LE0DF:  .byte   $12
LE0E0:  asl     $2112,x
        .byte   $14
        asl     $14,x
        ora     $1814,y
        .byte   $14
        .byte   $17
        .byte   $23
        bit     $1A
        rol     a
        clc
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $34
        and     $1B,x
        .byte   $1B
        .byte   $1A
        rol     $37,x
        rol     $38,x
        and     $1B,x
        .byte   $1B
        .byte   $1B
        .byte   $03
        asl     $09
        brk
LE104:  ora     (L0000,x)
        .byte   $01
LE107:  .byte   $03
        ora     $07
        and     $06,y
        ora     $06
        ora     $1C
        asl     a
        .byte   $3A
        .byte   $3B
        .byte   $3B
        .byte   $3C
        .byte   $3B
        .byte   $3C
        .byte   $1F
        .byte   $0F
        .byte   $27
        bmi     LE14C
        and     $3D2F,x
        ora     $0923,y
        .byte   $17
        and     ($0E,x)
        .byte   $14
        asl     $2223
        ora     $1823,y
        ora     $1917,y
        .byte   $1A
        .byte   $1A
        rol     a
        bit     $3E33
        .byte   $33
        .byte   $33
        .byte   $1B
        .byte   $1B
        .byte   $2B
        and     $3F37
        rol     $37,x
        ora     (L0000,x)
        ora     ($06,x)
        ora     ($2E,x)
        brk
        .byte   $03
        .byte   $02
        asl     $06
        brk
LE14C:  .byte   $03
        php
        .byte   $02
        rti

        .byte   $3B
        .byte   $3B
        .byte   $3B
        .byte   $3B
        .byte   $3B
        eor     ($07,x)
        .byte   $03
        bmi     LE19C
        bmi     LE18B
        bmi     LE190
        asl     a
        ora     $0902
        .byte   $43
        .byte   $03
        asl     $0F08,x
        asl     $1918,x
        .byte   $22
        .byte   $14
        .byte   $14
        asl     $22,x
        .byte   $22
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $34
        bit     $1A
        .byte   $1A
        .byte   $1A
        rol     $36,x
        .byte   $37
        sec
        and     $1B,x
        .byte   $1B
        .byte   $1B
        .byte   $03
        ora     $01
        .byte   $44
        brk
        ora     ($2E,x)
        brk
        .byte   $03
        ora     #$06
LE18B:  .byte   $02
        ora     ($03,x)
        php
        .byte   $06
LE190:  asl     $39
        .byte   $02
        ora     $06
        ora     $08
        eor     $0D
        lsr     $3B
        .byte   $47
LE19C:  .byte   $3B
        .byte   $47
        eor     ($1E,x)
        asl     $1213,x
        .byte   $13
        .byte   $12
        pha
        asl     $14,x
        .byte   $17
        ora     $1918,y
        .byte   $17
        ora     L1A24,y
        rol     a
        bit     $3E33
        rol     $3534,x
        .byte   $1B
        .byte   $2B
        and     $3F37
        .byte   $3F
        sec
        and     $1B,x
        .byte   $03
        .byte   $04
        brk
        ora     (L0000,x)
        .byte   $03
        brk
        brk
        asl     $08
        .byte   $02
        .byte   $03
        asl     $02
        .byte   $03
        .byte   $02
        eor     #$0C
        .byte   $02
        .byte   $07
        asl     $03
        .byte   $07
        .byte   $03
        lsr     a
        .byte   $4B
        jmp     L4E4D

        jmp     L1A24

        clc
        asl     $4C,x
        .byte   $22
        .byte   $4F
        .byte   $23
        and     $1B,x
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        ora     (L0000,x)
        .byte   $03
        .byte   $02
        ora     #$06
        ora     #$07
        ora     $06
        .byte   $02
        ora     $070E,x
        asl     $090B
        .byte   $07
        .byte   $12
        and     ($13,x)
        .byte   $0B
        .byte   $13
        bvc     LE233
        rol     a
        clc
        .byte   $23
        ora     $2A24,y
        clc
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
LE233:  .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        eor     ($09),y
        .byte   $04
        php
        ora     (L0000,x)
        .byte   $52
        .byte   $53
        ora     $081C,x
        .byte   $0C
        brk
        ora     ($52,x)
        .byte   $53
        and     ($1F,x)
        .byte   $0C
        .byte   $0C
        asl     $02
        .byte   $52
        .byte   $53
        .byte   $23
        .byte   $23
        asl     $11,x
        .byte   $03
        ora     $54
        eor     $1A,x
        rol     a
        clc
        .byte   $4B
        asl     $0609,x
        lsr     $1B,x
        .byte   $2B
        .byte   $23
        asl     $23,x
        .byte   $23
        .byte   $17
        .byte   $57
        .byte   $1B
        .byte   $2B
        cli
        eor     L5B5A,y
        .byte   $5C
        .byte   $5A
        .byte   $1B
        .byte   $2B
        eor     $5352,x
        .byte   $53
        .byte   $53
        .byte   $53
        lsr     $5E5F,x
        .byte   $5F
        lsr     $5E5F,x
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        rts

        .byte   $5F
        adc     ($5F,x)
        rts

        .byte   $5F
        eor     $60,x
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $63
        .byte   $64
        .byte   $63
        adc     $66
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $63
        .byte   $64
        .byte   $63
        adc     $57
        lsr     $5B5F,x
        .byte   $5F
        lsr     $5E5F,x
        .byte   $5B
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        .byte   $67
        asl     $03
        eor     $6802,x
        .byte   $02
        .byte   $03
        .byte   $67
        adc     #$69
        adc     #$69
        adc     #$69
        adc     #$6A
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        jmp     (L6B6B)

        .byte   $6B
        .byte   $6B
LE2DD:  .byte   $6B
        .byte   $6B
        .byte   $6B
LE2E0:  lsr     $6D,x
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        ror     $576B
        .byte   $6F
        ror     L6B6B
        bvs     LE360
        adc     $5E5A
        .byte   $72
        adc     L6B6B
        .byte   $73
        .byte   $6B
        .byte   $53
        .byte   $53
        .byte   $67
        adc     L6B6B
        .byte   $6B
        .byte   $6B
        eor     $0602,x
        .byte   $03
        eor     $0602,x
        .byte   $03
        adc     #$69
        adc     #$69
        adc     #$69
        .byte   $74
        adc     #$6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        bvs     LE388
        adc     L6B6B
        ror     L6B6B
        .byte   $6B
        .byte   $73
        .byte   $6B
        .byte   $6B
        bvs     LE394
        adc     L6B6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $73
        .byte   $6B
        .byte   $6B
        .byte   $6B
        ror     L6B6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        bvs     LE3A8
        adc     L6B6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $73
        .byte   $6B
        eor     $0602,x
        asl     $57
        .byte   $62
        .byte   $63
        .byte   $64
        adc     #$69
        .byte   $74
        .byte   $74
        adc     $62,x
        .byte   $63
        .byte   $64
        .byte   $6B
        bvs     LE3C4
        eor     $7676,y
        .byte   $5F
        ror     $6B,x
        .byte   $6B
        .byte   $73
        .byte   $77
        sei
        adc     $7963,y
LE360:  .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $57
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $6B
        .byte   $6B
        ror     $577A
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $6B
        bvs     LE3CC
        .byte   $7B
        .byte   $7B
        lsr     $7C5F,x
        .byte   $6B
        bvs     LE3CD
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $63
        .byte   $64
        .byte   $63
        adc     $7D
        .byte   $57
        .byte   $7E
        .byte   $7F
LE388:  .byte   $63
        .byte   $64
        .byte   $63
        adc     $57
        ror     $5F57,x
        .byte   $5F
        ror     $63,x
        .byte   $76
LE394:  ror     $80,x
        sta     ($5F,x)
        .byte   $63
        adc     $7963,y
        sei
        .byte   $82
        .byte   $83
        .byte   $5F
        .byte   $63
        .byte   $64
        .byte   $63
        adc     $57
        .byte   $57
        .byte   $7D
        .byte   $5F
LE3A8:  .byte   $63
        .byte   $64
        .byte   $63
        adc     $57
        ror     $5F57,x
        .byte   $5F
        lsr     $7C5F,x
        .byte   $80
        sta     ($7E,x)
        .byte   $5F
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $67
        .byte   $83
        .byte   $57
        .byte   $5F
        sty     $85
        sty     $85
LE3C4:  stx     $81
        .byte   $87
        sty     $84
        adc     ($84,x)
        .byte   $55
LE3CC:  dey
LE3CD:  .byte   $83
        ror     $8984,x
        .byte   $64
        .byte   $89
        adc     $66
        ror     $87
        sty     $89
        .byte   $64
        .byte   $89
        adc     $8A
        .byte   $8B
        sty     $8984
        .byte   $64
        .byte   $89
        adc     $66
        ror     $62
        .byte   $89
        .byte   $89
        .byte   $64
        .byte   $89
        adc     $87
        .byte   $57
        adc     $84,x
        sty     $8D
        .byte   $89
        sta     $8D8D
        sta     $8484
        .byte   $53
        .byte   $89
        sta     $85
        sta     $85
        sty     $84
        sty     $84
        ror     $8E8E,x
        ror     $848E,x
        sty     $84
        .byte   $57
        .byte   $8F
        .byte   $57
        .byte   $57
        .byte   $8F
        sty     $84
        sty     $90
        .byte   $57
        .byte   $57
        .byte   $57
        sta     ($84),y
        sty     $84
        adc     $57
        .byte   $92
        .byte   $93
        sty     $89,x
        .byte   $89
        .byte   $89
        adc     $8F
        sta     $66,x
        .byte   $87
        sty     $84
        sty     $72
        stx     $8757
        .byte   $57
        sty     $84
        sty     $67
        .byte   $8F
        stx     $97,y
        tya
        sty     $84
        sty     $67
        eor     $5D5D,x
        sta     $878E,y
        .byte   $87
        ror     $8F57,x
        .byte   $57
        .byte   $52
        .byte   $57
        ror     $667E,x
        .byte   $87
        sta     ($66),y
        .byte   $52
        .byte   $8F
        .byte   $57
        txs
        .byte   $87
        .byte   $9B
        sta     ($57),y
        .byte   $52
        .byte   $57
        .byte   $92
        .byte   $9C
        ror     $8F57,x
        .byte   $87
        .byte   $52
        .byte   $57
        sta     $5794,x
        .byte   $9E
        .byte   $8F
        ror     $5752,x
        .byte   $57
        .byte   $57
        .byte   $87
        ror     $9F
        .byte   $57
        .byte   $52
        .byte   $97
        stx     $97,y
        .byte   $8F
        .byte   $97
        stx     $59,y
        .byte   $53
        eor     $5D5D,x
        eor     $5D5D,x
        .byte   $52
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $63
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $5F
        .byte   $53
        .byte   $63
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $5F
        rts

        .byte   $63
        adc     ($55,x)
        rts

        eor     $5F,x
        .byte   $63
        .byte   $64
        .byte   $63
        adc     $66
        ldy     #$62
        .byte   $63
        .byte   $63
        .byte   $64
        .byte   $63
        adc     $75
        lda     ($62,x)
        .byte   $63
        .byte   $63
        .byte   $64
        .byte   $63
        adc     $57
        adc     $62,x
        .byte   $63
        .byte   $5F
        lsr     $5E5F,x
        lsr     $5E5E,x
        .byte   $5F
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $67
        brk
        ora     (L0000,x)
        .byte   $02
        brk
        brk
        ora     ($67,x)
        ora     ($03,x)
        asl     $02
        .byte   $03
        .byte   $02
        .byte   $02
        rts

        ldx     #$A3
        ldy     $3B
LE4D5:  .byte   $A3
        .byte   $3B
        .byte   $3B
        lda     $A6
        .byte   $0B
        asl     $A7
LE4DD:  .byte   $0B
        asl     $02
        adc     $A8
        bpl     LE502
        .byte   $43
        lda     #$23
        eor     $ABAA,y
        ora     $23,x
        clc
        eor     $535E,y
        lsr     $5E5E,x
        lsr     $535E,x
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        brk
        .byte   $03
LE502:  ora     (L0000,x)
        asl     $01
        brk
        .byte   $03
        asl     $06
        ora     $03
        ora     $03
        .byte   $03
        .byte   $02
        .byte   $A3
        .byte   $3B
        .byte   $3A
        .byte   $3B
        .byte   $3C
        ldy     $3B3B
        lda     $AE06
        ora     $AE0E
        asl     $02
        .byte   $72
        .byte   $AF
        bcs     LE4D5
        .byte   $B2
        .byte   $B3
        lda     ($98),y
        .byte   $67
        .byte   $22
        ora     $B5B4,y
        ldx     $B4,y
        sta     $5E53,y
        .byte   $72
        .byte   $B7
        .byte   $33
        clv
        lda     $5399,y
        .byte   $53
        .byte   $67
        and     $3637
        sec
        sta     L0000,y
        brk
        brk
        .byte   $52
        .byte   $53
        .byte   $53
        .byte   $53
        brk
        .byte   $03
        ora     $03
        .byte   $52
LE54D:  .byte   $53
        .byte   $53
        .byte   $53
        .byte   $3B
        .byte   $A3
        .byte   $3C
        .byte   $3B
        .byte   $54
        eor     $55,x
        tsx
        .byte   $03
        lda     $0609
        .byte   $03
        ora     $520D
        asl     $0910,x
        .byte   $44
        asl     $1E12,x
        .byte   $54
        .byte   $17
        ora     $19,x
        .byte   $BB
        .byte   $14
        .byte   $14
        .byte   $17
        ldy     $33B7,x
        clv
        lda     $59BE,x
        lsr     $2D5E,x
        rol     $36,x
        .byte   $37
        sec
        .byte   $52
        .byte   $53
        .byte   $53
        rol     L0100
        .byte   $03
        asl     L0000
        ora     ($05,x)
        .byte   $BF
        bmi     LE5BB
        bmi     LE54D
        bmi     LE5BF
        cmp     ($08,x)
        .byte   $03
        asl     $02
        ora     #$06
        .byte   $02
        ora     #$08
        .byte   $C2
        ora     $0906
        .byte   $C3
        ora     $4109
        cpy     $B1
LE5A3:  cpy     $B2
        lda     ($C4),y
        lsr     $16
        cmp     $B4
        cmp     $B5
        ldy     $C5,x
        ora     $5E5E,y
        lsr     $5E5E,x
        lsr     $5E5E,x
        .byte   $53
        .byte   $53
        .byte   $53
LE5BB:  .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
LE5BF:  .byte   $53
        dec     $C7
        iny
        dec     $C7
        iny
        cmp     #$CA
        .byte   $CB
        cpy     LCBCD
        cpy     LCECD
        .byte   $CF
        bne     LE5A3
        .byte   $D2
        .byte   $D3
        cmp     ($D4),y
        cmp     $D6,x
        .byte   $D7
        cld
        cmp     LDBDA,y
        cmp     LDDDC,y
        dec     LE0DF,x
        sbc     ($DF,x)
        cpx     #$E1
        .byte   $E2
        .byte   $E3
        cpx     $E5
        .byte   $E3
        cpx     $E5
        .byte   $E3
        cpx     $E6
        inc     $E6
        inc     $E6
        inc     $E6
        inc     $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        inx
        inx
LE602:  inx
        inx
        inx
        inx
        inx
        inx
        sbc     #$EA
        .byte   $EB
        cpx     LEEED
        .byte   $EF
        beq     LE602
        sbc     ($F1),y
        sbc     ($F1),y
        sbc     ($F1),y
        sbc     ($F2),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        eor     LF55D,x
        inc     $F7,x
        eor     $5D5D,x
        sbc     ($F1),y
        sed
        sbc     LF1FA,y
        sbc     ($F1),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        .byte   $FB
        .byte   $FC
        eor     $5D5D,x
        eor     LF15D,x
        sbc     ($F1),y
        sbc     ($F1),y
        sbc     ($F1),y
        sbc     ($F2),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        eor     $5D5D,x
        eor     $5D5D,x
        eor     LF15D,x
        sbc     ($F1),y
        sbc     ($F1),y
        sbc     ($F1),y
        sbc     ($F2),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        .byte   $5D
        .byte   $5D
LE7E6:  eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     $5D5D,x
        eor     a:$5D,x
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $04
        ora     $06
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $07
        php
        ora     #$0A
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0B
        .byte   $0C
        asl     a
        .byte   $02
        ora     $020E
        .byte   $02
        .byte   $0B
        .byte   $0F
        asl     a
        .byte   $02
        bpl     LE836
        .byte   $12
        .byte   $13
        .byte   $0B
        .byte   $14
        ora     $14,x
        ora     $14,x
        asl     $17,x
        clc
        ora     $1919,y
        ora     $1A19,y
LE836:  .byte   $1B
        .byte   $1C
        ora     $1D1D,x
        ora     $1E1D,x
        .byte   $1F
        jsr     L0100
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        ora     $06
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     #$0A
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0F
        asl     a
        .byte   $02
        .byte   $02
        ora     $1221
        .byte   $13
        ora     $16,x
        .byte   $02
        and     ($10,x)
        .byte   $22
        .byte   $23
        and     ($19,x)
        .byte   $1A
        bit     $25
        .byte   $1B
        and     $1B
        and     $1D
        asl     $261F,x
        .byte   $1F
        .byte   $27
        .byte   $1F
        rol     $02
        plp
        and     #$29
        and     #$29
        rol     a
        rol     a
        .byte   $02
        .byte   $02
        .byte   $03
        brk
        ora     ($02,x)
        .byte   $2B
        .byte   $2B
        .byte   $02
        .byte   $02
        bit     $2D04
        .byte   $02
        rol     $022B
        .byte   $02
        .byte   $0B
        ora     #$0A
        .byte   $02
        .byte   $02
        .byte   $2F
        .byte   $02
        .byte   $02
        .byte   $0B
        .byte   $0C
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bmi     LE8C0
        .byte   $14
        ora     $16,x
        and     ($32),y
        bit     $33
        ora     $1919,y
        .byte   $1A
        .byte   $34
        and     $1F,x
        rol     $1D,x
        ora     $1E1D,x
        .byte   $1F
        .byte   $1F
LE8C0:  and     #$37
        sec
        and     $393A,y
        and     $023A,y
        .byte   $3B
        .byte   $3C
        and     $3D3C,x
        and     $023E,x
        .byte   $3F
        rti

        eor     ($42,x)
        eor     ($41,x)
        .byte   $37
        .byte   $02
        .byte   $43
        .byte   $44
        eor     $46
        eor     $47
        pha
        clc
        .byte   $14
        asl     $49,x
        lsr     a
        .byte   $4B
        jmp     L3748

        and     $393A,y
        and     L4E4D,y
        .byte   $37
        .byte   $37
        and     $3939,y
        and     $4E4F,y
        pha
        .byte   $37
        and     $3950,y
        sec
        .byte   $4F
        lsr     $3937
        eor     ($52),y
        .byte   $53
        .byte   $54
        eor     ($4E),y
        pha
        eor     $56,x
        .byte   $44
        .byte   $57
        cli
        .byte   $57
        eor     $553B,y
        lsr     $4746
        lsr     $47
        .byte   $47
        .byte   $3B
        .byte   $3A
        .byte   $5A
        lsr     $5B
        .byte   $5C
        eor     $5E5C,x
        eor     $5F,x
        lsr     $47
        lsr     $47
        lsr     $47
        eor     $464E
        .byte   $47
        rts

        adc     ($46,x)
        .byte   $62
        and     $6463,y
        adc     $66
        .byte   $67
        .byte   $64
        pla
        and     $6A69,y
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        .byte   $54
        .byte   $54
        eor     ($4E),y
        .byte   $3F
        lsr     $4746
        .byte   $52
        .byte   $57
        cli
        eor     $5958,y
        lsr     $47
        .byte   $6B
        .byte   $47
        lsr     $47
        lsr     $47
        lsr     $47
        .byte   $6B
        .byte   $47
        lsr     $47
        lsr     $47
        lsr     $6C
        lsr     $47
        rts

        .byte   $47
        lsr     $47
        lsr     $57
        adc     $6E47
        .byte   $47
        lsr     $47
        lsr     $47
        .byte   $6F
        adc     $64
        adc     $64
        clc
        .byte   $14
        .byte   $14
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        .byte   $37
        and     $4639,y
        .byte   $47
        lsr     $70
        adc     ($71),y
        adc     ($71),y
        lsr     $47
        lsr     $70
        adc     ($71),y
        adc     ($71),y
        lsr     $47
        lsr     $70
        adc     ($71),y
        adc     ($71),y
        .byte   $72
        .byte   $47
        lsr     $70
        adc     ($73),y
        adc     ($71),y
        .byte   $44
        .byte   $74
        adc     $16,x
        ror     $77,x
        sei
        .byte   $73
        lsr     $48
        and     $1439,y
        .byte   $14
        asl     $79,x
        .byte   $14
        and     $393A,y
        and     $393A,y
        .byte   $14
        sec
        and     $3939,y
        and     $3939,y
        and     $7171,y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($7A),y
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7C
        adc     ($71),y
        adc     $7D7D,x
        adc     $7D7D,x
        adc     ($71),y
        .byte   $73
        adc     ($78),y
        ror     $7E,x
        .byte   $7F
        adc     ($76),y
        .byte   $77
        sei
        .byte   $74
        .byte   $14
        .byte   $14
        asl     $80,x
        .byte   $14
        .byte   $14
        adc     $39,x
        and     $3939,y
        .byte   $14
        and     $3939,y
        and     $3939,y
        and     $7139,y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        .byte   $7A
        .byte   $7C
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     $717D,x
        adc     ($81),y
        .byte   $82
        adc     ($71),y
        adc     ($71),y
        adc     ($81),y
        .byte   $83
        .byte   $83
        sty     $71
        adc     ($71),y
        sta     ($85,x)
        stx     $86
        .byte   $87
        dey
        sei
        .byte   $89
        txa
        .byte   $8B
        .byte   $87
        sty     $147F
        .byte   $14
        sta     $8D8D
        sta     $758D
        and     $3939,y
        and     $3839,y
        and     $7139,y
        .byte   $3F
        adc     ($53),y
        .byte   $54
        eor     ($71),y
        adc     ($71),y
        adc     $7D71,x
        adc     $717D,x
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        .byte   $7A
        .byte   $7B
        .byte   $7B
        stx     $718F
        adc     ($71),y
        adc     $7D7D,x
        .byte   $8B
        bcc     LEAD4
        adc     ($71),y
        .byte   $73
        adc     ($71),y
        adc     $7171,y
        adc     ($21),y
        adc     $8880,y
        .byte   $14
        sta     ($92),y
        .byte   $92
        pha
        .byte   $14
        .byte   $14
        adc     $39,x
        adc     #$6A
        ror     a
        pha
        sec
        and     $7139,y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($71),y
        adc     ($7B),y
        .byte   $7B
        .byte   $7B
        .byte   $7C
        adc     ($71),y
        adc     ($71),y
        adc     $7D7D,x
        adc     $7171,x
        adc     ($71),y
        .byte   $73
        adc     ($93),y
        adc     ($71),y
        adc     ($71),y
        sty     $79,x
        sei
        sta     $80,x
        ror     $7E,x
        .byte   $7F
        .byte   $74
        .byte   $14
        .byte   $14
        sta     $1414
        .byte   $14
        .byte   $14
        and     $3996,y
        and     $3939,y
        and     $3939,y
        sty     $97,x
        .byte   $3B
        tya
        tya
        lsr     $47
        lsr     $94
        .byte   $97
        .byte   $3B
        sta     $4699,y
        .byte   $47
        lsr     $94
        .byte   $97
        .byte   $3F
        txs
LEAD4:  .byte   $9B
        .byte   $42
        eor     ($42,x)
        sty     $97,x
        .byte   $57
        eor     $4647,y
        .byte   $9C
        lsr     $74
        .byte   $14
        .byte   $14
        sta     $9E9C,x
        tya
        .byte   $9E
        and     $393A,y
        .byte   $9F
        tya
        ldy     #$98
        ldy     #$3A
        and     $A139,y
        ldx     #$A3
        ldx     #$A3
        and     $3939,y
        adc     #$A4
        ldy     $A4
        ldy     $47
        lsr     $47
        lsr     $47
LEB05:  .byte   $3B
        lsr     $4746
        lsr     $47
        lsr     $47
        .byte   $3B
        lsr     $4146
        .byte   $42
        eor     ($42,x)
LEB14:  eor     ($3F,x)
        lsr     $4746
        lda     $47
        lda     $47
        cli
        eor     $A646,y
        ldy     #$A6
        .byte   $A7
        eor     ($42,x)
        eor     ($42,x)
        tya
        ldy     #$98
        ldy     #$47
        lsr     $47
        lsr     $A2
        .byte   $A3
        ldx     #$A3
        adc     $64
        and     ($A8,x)
        ldy     $A4
        ldy     $A4
        ror     a
        ror     a
        .byte   $3B
        ror     a
        .byte   $3B
        bvs     LEBB4
        sty     $97,x
        .byte   $47
        lsr     $47
        .byte   $3B
        bvs     LEBBC
        sty     $97,x
        .byte   $47
        lsr     $47
        .byte   $3F
        lda     #$AA
        .byte   $AB
        ldy     $AEAD
        .byte   $AF
        cli
        bvs     LEBCC
        sty     $97,x
        .byte   $47
        lsr     $53
        .byte   $42
        bcs     LEB14
        sty     $97,x
        .byte   $47
        lsr     $57
        lsr     $70
        adc     ($B2),y
        asl     $4E,x
        lsr     $47
        .byte   $B3
        asl     $92,x
        ldy     $3A,x
        lda     $B6,x
        .byte   $B7
        clv
        eor     $6A,x
        clv
        and     $3939,y
        and     $4746,y
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $47
        lda     $6B16,y
        .byte   $47
        lsr     $47
        .byte   $74
        adc     $54,x
        .byte   $54
        tsx
        tsx
        tsx
        tsx
        .byte   $BB
        bvc     LEBF9
        .byte   $57
        cli
        .byte   $57
        cli
        .byte   $57
        cli
        eor     $4746,y
        lsr     $47
        lsr     $47
        lsr     $47
        ldy     $BDB7,x
        .byte   $BE
LEBB4:  ldy     $BCB7,x
        .byte   $B7
        and     $3939,y
        sec
LEBBC:  sec
        and     $3939,y
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $47
LEBCC:  lsr     $47
        lsr     $47
        .byte   $BF
        cpy     #$C1
        clc
        .byte   $14
        .byte   $14
        asl     $4E,x
        .byte   $C2
        .byte   $57
        cli
        .byte   $C3
        cpy     $50
        cmp     $BA
        lsr     $C6
        lsr     $47
        lsr     $47
        cli
        .byte   $57
        lsr     $61
        lsr     $47
        lsr     $47
        lsr     $47
        .byte   $C7
        .byte   $67
        .byte   $64
        .byte   $AF
        ldy     $BDB7,x
        .byte   $BE
        .byte   $69
LEBF9:  ror     a
        ror     a
        pha
        and     $3939,y
        and     $4746,y
        lsr     $70
        .byte   $53
        eor     ($C8),y
        .byte   $53
        lsr     $47
        lsr     $70
        adc     $717D,x
LEC0F:  cmp     #$46
        and     ($6B,x)
        bvs     LEC86
        adc     ($71),y
        sty     $BA,x
        dex
        .byte   $6B
        bvs     LEC8E
        adc     ($71),y
        sty     $58,x
        .byte   $57
        .byte   $44
        bvs     LEC96
        adc     ($71),y
        sty     $46,x
        .byte   $47
        lsr     $70
        .byte   $74
        .byte   $CB
        adc     ($B2),y
        ldy     $BCB7,x
        cpy     LCECD
        .byte   $92
        ldy     $39,x
        and     $3939,y
        sec
        adc     #$6A
        clv
        dex
        .byte   $6B
        .byte   $47
        lsr     $47
        lsr     $47
        lsr     $CF
        .byte   $44
        .byte   $47
        lsr     $47
        bne     LEC0F
        cmp     ($97,x)
        lsr     $47
        lsr     $47
        cli
        .byte   $57
        cli
        .byte   $97
        lsr     $47
        lsr     $47
        lsr     $C6
        lsr     $97
        lsr     $47
        lsr     $47
        rts

        .byte   $47
        lsr     $75
        asl     $4E,x
        lsr     $47
        ror     $4647
        and     $1439,y
        asl     $D1,x
        .byte   $64
        adc     $64
        and     $3938,y
        eor     $6A6A
        ror     a
        ror     a
        eor     $46
        eor     $46
        eor     $46
LEC86:  eor     $46
        .byte   $47
        lsr     $47
        lsr     $47
        .byte   $46
LEC8E:  .byte   $47
        lsr     $C0
        cmp     ($C0,x)
        .byte   $74
        tsx
        tsx
LEC96:  tsx
        tsx
        .byte   $D2
        cli
        .byte   $D2
        .byte   $3F
        lsr     $58,x
        .byte   $D2
        cli
        .byte   $47
        lsr     $47
        cli
        eor     $4746,y
        lsr     $16
        .byte   $6B
        .byte   $47
        lsr     $47
        lsr     $47
        lsr     $55
        .byte   $D3
        cpy     #$C1
        cpy     #$C1
        cpy     #$C1
        eor     $52,x
        .byte   $57
        cli
        .byte   $57
        cli
        .byte   $57
        cli
        eor     $46
        eor     $46
        eor     $46
        .byte   $47
        pha
        .byte   $47
        lsr     $47
        .byte   $D4
        .byte   $47
        lsr     $47
        .byte   $37
        adc     $16,x
        lsr     LC646
        lsr     $D5
        and     $5537,y
        lsr     $4546
        lsr     $57
        pha
        dec     $39,x
        asl     $6B,x
        .byte   $47
        lsr     $47
        .byte   $D7
        .byte   $37
        and     $6B4D,y
        .byte   $47
        lsr     $47
        cld
        pha
        sec
        and     $1414,y
        .byte   $14
        .byte   $14
        .byte   $14
        pha
        and     $3939,y
        and     $3939,y
        and     $4746,y
        lsr     $47
        lsr     $47
        lsr     $47
        lsr     $45
        lsr     $45
        lsr     $45
        lsr     $45
        cmp     LDBDA,y
        .byte   $47
        lsr     $DC
        cmp     $46DA,y
        eor     $46
        dec     $D4
        eor     $46
        eor     $D9
        .byte   $DA
        .byte   $DB
        .byte   $47
        lsr     $DC
        cmp     $46DA,y
        .byte   $47
        lsr     $47
        lsr     $47
        lsr     $47
        .byte   $14
        adc     $14,x
        .byte   $14
        .byte   $14
        .byte   $14
        .byte   $14
        .byte   $14
        and     $9639,y
        and     $3939,y
        sec
        and     $6A6A,y
        cmp     $6A6A,x
        ror     a
        ror     a
        dec     $6A6A,x
        ror     a
        cmp     LDE6A,x
        ror     a
        ror     a
        ror     a
        dec     $6A6A,x
        .byte   $DF
        cpx     #$DF
        cpx     #$6A
        ror     a
        ror     a
        ror     a
        sbc     ($E2,x)
        sbc     ($E2,x)
        ror     a
        ror     a
        .byte   $E3
        ror     a
        cpx     $E5
        inc     $E7
        inx
        sbc     #$EA
        .byte   $EB
        cpx     LEEED
        sbc     LF0EF
        sbc     ($F2),y
        .byte   $F3
        .byte   $F4
        sbc     $F6,x
        .byte   $F7
        sed
        sbc     LFBFA,y
        .byte   $FC
        sbc     $6AFE,x
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        cmp     $6A6A,x
        dec     $6A6A,x
        ror     a
        ror     a
        ror     a
        ror     a
        dec     $6A6A,x
        ror     a
        cmp     $6A6A,x
        ror     a
        cmp     $6A6A,x
        dec     LDD6A,x
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        dec     $6ADE,x
        ror     a
        ror     a
        cmp     $6ADE,x
        ror     a
        cmp     $6A6A,x
        cmp     $6A6A,x
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
LEDDD:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
LEDEA:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
LEEED:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
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
LF0DB:  .byte   $FF
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
LF0EF:  brk
LF0F0:  brk
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
LF15D:  .byte   $FF
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
LF1FA:  brk
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
LF55D:  .byte   $FF
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
LF59A:  .byte   $FF
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
        php
        .byte   $67
        .byte   $67
        .byte   $63
        .byte   $63
        bit     $08
        bit     $2E
        php
        rol     $08
        pla
        ror     $24
        rts

        stx     $97,y
        ror     $08
        php
        php
        php
        php
        php
        bit     $08
        bit     $24
        php
        bmi     LF731
        pla
        ror     $31
        .byte   $32
        php
        php
        ror     $08
        .byte   $93
        sty     $9B,x
        .byte   $9C
        bit     $08
        .byte   $24
LF70F:  php
        php
        php
        php
        .byte   $67
        php
        bit     $2D
        bit     $082E
        rol     $2D
        bit     $08
        bit     $692D
        ror     a
        bit     $6B2D
        jmp     (L2D2C)

        .byte   $22
        .byte   $23
        plp
        and     #$20
        and     ($28,x)
        and     #$A2
LF731:  .byte   $A3
        tax
        ldy     $AD
        ldx     $B6A5
        rol     $2608
        ldy     $A9A8
        .byte   $BB
        lda     #$A2
        .byte   $A3
        tax
        .byte   $AB
        lda     $B5AE
        ldx     $A0,y
        lda     ($A8,x)
        lda     #$AA
        .byte   $AB
        tax
        ldy     $B2
        ldx     $B9
        clv
        ldx     $B6,y
        lda     $2E35,y
        ldy     $36,x
        .byte   $37
        bcs     LF70F
        clv
        lda     $B3B2,y
        clv
        lda     $B6BD,y
        tsx
        lda     L0000,y
        brk
        brk
        brk
        and     a:L0000,x
        rol     a:$3F,x
        brk
        php
        php
        stx     $97,y
        .byte   $67
        .byte   $63
        .byte   $63
        php
        bit     $2E
        bit     $26
        php
        rts

        php
        php
        ror     $08
        rts

        ror     $24
        rol     $3130
        php
        php
        and     ($32),y
        stx     $97,y
        php
        php
        bit     $2E
        bit     $2E
        .byte   $04
        ora     $0C
        ora     $2624
        bit     $2E
        php
        adc     ($08,x)
        php
        rti

        eor     ($48,x)
        .byte   $5A
        eor     ($42,x)
        .byte   $4B
        lsr     a
        txs
        rol     $AB
        rol     $33
        .byte   $34
        .byte   $3B
        .byte   $3C
        tya
        sta     $A1A0,y
        .byte   $43
        .byte   $5A
        .byte   $43
        .byte   $5A
        .byte   $5B
        lsr     a
        .byte   $5B
        lsr     a
        .byte   $AB
        rol     $26A4
        ror     $77,x
        ror     $B67F,x
        ldx     $B9,y
        lda     $595B,y
        .byte   $5B
        .byte   $5A
        eor     ($41,x)
        .byte   $4B
        eor     #$41
        eor     ($4F,x)
        eor     #$41
        eor     ($49,x)
        eor     #$41
        eor     ($49,x)
        .byte   $4B
        cli
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        php
        bvs     LF85A
        .byte   $73
        .byte   $63
        php
        php
        php
        rts

        ror     $08
        rts

        .byte   $63
        bvs     LF807
        bvs     LF809
        bvs     LF80B
        bvs     LF833
        php
        .byte   $30
LF807:  and     ($08),y
LF809:  php
        .byte   $31
LF80B:  and     ($6A),y
        .byte   $6B
        php
        php
        jmp     (L0808)

        php
        php
        php
        tya
        sta     $1008,y
        txs
        php
        ldy     #$A1
        ldy     #$A1
        ldx     $BE08,y
        php
        eor     ($41,x)
        .byte   $5A
        .byte   $4B
        eor     ($42,x)
        .byte   $5A
        lsr     a
        .byte   $5A
        eor     $5A5A,y
        eor     ($41,x)
        .byte   $49
LF833:  .byte   $4F
        bvs     LF83E
        bvs     LF89F
        .byte   $67
        .byte   $73
        .byte   $63
        bvs     LF845
        .byte   $2E
LF83E:  php
        rol     $70
        rts

        bvs     LF84C
        .byte   $70
LF845:  .byte   $63
        .byte   $73
        php
        php
        bpl     LF853
        php
LF84C:  bpl     LF856
        php
        php
        rts

        ror     $31
LF853:  .byte   $32
        adc     ($6A,x)
LF856:  php
        php
        .byte   $6B
        .byte   $6C
LF85A:  php
        php
        txs
        php
        ldx     $9A08,y
        php
        ldx     #$A3
        rti

        .byte   $42
        pha
        lsr     a
        php
        php
        php
        ldy     $5943
        .byte   $43
        .byte   $5A
        php
        tay
        php
        .byte   $BB
        eor     ($41,x)
        .byte   $4F
        .byte   $4F
        eor     ($42,x)
        eor     #$4A
        .byte   $5A
        lsr     a
        .byte   $5A
        lsr     a
        bvs     LF88A
        bvs     LF88C
        bvs     LF88E
        .byte   $72
        ror     $63
        php
LF88A:  .byte   $64
        .byte   $65
LF88C:  bpl     LF8EE
LF88E:  php
        php
        bvs     LF89A
        bpl     LF89C
        php
        bpl     LF8FE
        .byte   $63
        .byte   $6E
        .byte   $6F
LF89A:  bmi     LF8CE
LF89C:  ror     $77,x
        .byte   $76
LF89F:  .byte   $77
        php
        php
        tya
        txs
        sta     ($9A),y
        tax
        .byte   $AB
        .byte   $B2
        rti

        clv
        pha
        brk
        .byte   $43
        brk
        .byte   $43
        php
        .byte   $44
        php
        .byte   $44
        eor     $45
        eor     $45
        eor     $46
        eor     $46
        .byte   $54
        eor     $54,x
        eor     $55,x
        eor     $55,x
        eor     $44,x
        eor     $44
        eor     $45
        eor     $30
        .byte   $32
        lsr     $08
LF8CE:  lsr     $08
        eor     $454D
        eor     $56
        .byte   $57
        php
        php
        lsr     $085F,x
        php
        bmi     LF910
        eor     $084D
        .byte   $44
        tya
        .byte   $44
        ldy     #$44
        tay
        .byte   $44
        .byte   $44
        eor     $30
        .byte   $32
        lsr     $AD
LF8EE:  .byte   $46
LF8EF:  lda     $45
        rti

        eor     $48
LF8F4:  .byte   $41
LF8F5:  .byte   $42
        .byte   $4F
        lsr     a
        jmp     L444D

        eor     $46
        .byte   $B6
LF8FE:  lsr     $B9
        bmi     LF933
        eor     $314E
        .byte   $32
        .byte   $5C
        eor     $4C08,x
        php
        .byte   $44
        eor     $454E
        .byte   $46
LF910:  .byte   $5C
        eor     $5554,x
        eor     $555D,x
        eor     $95,x
        php
        php
        .byte   $9E
        php
        adc     ($08),y
        adc     ($95),y
        php
        sta     L0808,x
        php
        php
        sta     $95,x
        php
        sta     $089E,x
        sta     $08,x
        php
        php
        .byte   $79
        php
LF933:  php
        sta     $08,x
        php
        php
        php
        php
        php
        asl     $1708,x
        .byte   $1F
        eor     $16
        .byte   $14
        eor     $46
        lsr     $4608
        php
        eor     $45
        bmi     LF97D
        eor     $46
        and     ($32),y
        bvs     LF8EF
        bvs     LF95C
        php
        bvs     LF8F4
        bvs     LF961
        bvs     LF963
        .byte   $10
LF95C:  rti

        eor     ($48,x)
        eor     #$41
LF961:  eor     ($51,x)
LF963:  eor     ($41),y
        eor     ($53,x)
        eor     ($41),y
        eor     ($51,x)
        .byte   $53
        .byte   $43
        .byte   $5A
        bvc     LF9C1
        .byte   $5B
        lsr     a
        .byte   $53
        .byte   $52
        .byte   $8B
        sty     $8483
        stx     $868E
        stx     $8A
LF97D:  .byte   $8B
        .byte   $82
        .byte   $83
        .byte   $8B
        .byte   $8B
        .byte   $83
        .byte   $83
        php
        txa
        php
        .byte   $82
        .byte   $83
        sty     $83
        sty     $86
        stx     $86
        stx     $83
        .byte   $83
        .byte   $83
        .byte   $83
        eor     ($42,x)
        eor     #$59
        .byte   $83
        .byte   $83
        eor     ($41,x)
        eor     #$4B
        .byte   $5A
        .byte   $5B
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $03
        php
        php
        php
        .byte   $9E
        ora     $15,x
        php
        php
        ora     $15,x
        sta     $4108,x
        .byte   $42
        eor     ($52),y
        .byte   $43
        lsr     a
        bvc     LFA0A
        sty     $8408
        php
        sty     $08
        eor     ($41,x)
        php
LF9C1:  php
        eor     ($42,x)
        .byte   $4B
        eor     #$5B
        .byte   $5A
        eor     #$4A
        .byte   $5A
        lsr     a
        .byte   $02
        .byte   $03
        php
        php
        clc
        clc
        ora     $3819,y
        and     $5A43,y
        sec
        and     L5150,y
        .byte   $43
        lsr     a
        .byte   $43
        lsr     a
        php
        php
        clc
        clc
        cli
        lsr     a
        .byte   $5A
        .byte   $5A
        ora     $3919,y
        .byte   $3A
        sta     ($81,x)
        stx     $86
        and     $5A39,y
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $51
LF9F7:  eor     ($5B),y
        .byte   $5A
        .byte   $53
        eor     ($5A),y
        lsr     a
        eor     ($52),y
        sty     $848E
        stx     $84
        stx     $84
        stx     $40
        .byte   $41
LFA0A:  bvc     LFA5D
        cli
        .byte   $5A
        eor     ($51),y
        stx     $868F
        .byte   $87
        .byte   $82
        .byte   $83
        .byte   $82
        .byte   $83
        stx     $87
        stx     $87
        php
        adc     ($66),y
        adc     ($60),y
        adc     ($08),y
        adc     $42,x
        php
        .byte   $52
        php
        php
        php
        lda     $AC
        ldx     $B4,y
        lda     $08BA,y
        pla
        php
        bit     $66
        adc     $6660,y
        bit     $2E
        bit     $0826
        rol     $26AC
        ldy     $2E,x
        and     $36,x
        bcs     LF9F7
        .byte   $37
        tsx
        and     a:$3E,x
        brk
        .byte   $3F
        brk
        brk
        brk
        rol     $2624
        bit     $08
        php
        .byte   $64
        adc     $6E
        .byte   $6F
        ror     $77,x
        php
LFA5D:  adc     ($67),y
        .byte   $7B
        bmi     LFA94
        ror     $77,x
        jmp     (L0871)

        adc     ($2E),y
        bit     $30
        .byte   $32
LFA6C:  .byte   $26
LFA6D:  php
        rol     $089A
LFA71:  php
        sta     ($9A),y
        rol     $AB
        rol     $AAA4
        .byte   $AB
        tax
        .byte   $AB
        rti

        eor     ($48,x)
        .byte   $4B
        rol     $A6
        rol     $37,x
        .byte   $43
        .byte   $5B
        .byte   $43
        .byte   $5B
        .byte   $64
        adc     $6E
        .byte   $6F
        ror     $77,x
        bmi     LFAC2
        php
        rol     $2698
LFA94:  php
        php
        txs
        php
        ldy     #$2E
        .byte   $A0
LFA9B:  rol     $43
        .byte   $5A
        bvc     LFAFA
        asl     a
        .byte   $5A
        asl     a
        .byte   $5A
        eor     ($58,x)
        eor     #$5A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1A
        ror     $77,x
        and     ($31),y
        php
        php
        and     ($31),y
        ror     $77,x
        .byte   $32
        bmi     LFAC3
        php
        .byte   $32
        bmi     LFA6C
        ldx     $3131
LFAC2:  .byte   $A0
LFAC3:  lda     ($32,x)
        bmi     LFA71
        .byte   $AB
        .byte   $32
        bmi     LFA6D
        .byte   $A3
        lda     $B6
        ldx     $B6,y
        tay
        lda     #$B0
LFAD3:  lda     ($AA),y
        ldy     $B2
        ldx     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0F
        .byte   $04
        asl     $AB
        ldy     $0F0F
        ora     ($0F),y
        .byte   $34
        .byte   $0F
        ldx     $0FAF
        .byte   $0F
        bit     $0F0F
        .byte   $0F
        .byte   $27
        ora     ($36),y
        ora     ($11),y
        .byte   $2E
LFAFA:  rol     $6A
        .byte   $0F
        .byte   $0F
        ora     ($8E),y
        rti

        .byte   $42
        .byte   $42
        .byte   $42
        adc     $B90F,y
        .byte   $0F
        rts

        .byte   $62
        .byte   $0F
        .byte   $0F
        and     ($20,x)
        lda     #$0F
        php
LFB11:  asl     a
        asl     a
        cpy     $C6
        brk
        cmp     #$CB
        cpy     #$C2
        .byte   $C2
        cpx     $E6
        brk
        sbc     #$EB
        cpy     #$C2
        .byte   $C2
        cpx     #$8D
        stx     $0F8E
        cpx     #$10
        bpl     LFB3C
        brk
        brk
        brk
        bpl     LFB11
        bpl     LFB43
        bpl     LFAD3
        .byte   $9F
        .byte   $80
        .byte   $82
        ldy     $10
        bpl     LFB4C
LFB3C:  brk
        brk
        sty     $86
        dey
        dey
        .byte   $0F
LFB43:  txa
        ora     ($11),y
        ora     ($11),y
        sei
        sei
        ora     ($11),y
LFB4C:  txa
        .byte   $0F
        eor     $1C4E
        .byte   $0C
        .byte   $47
        lsr     a
        .byte   $0F
        lsr     $6C,x
        ror     $2A0F
        .byte   $0F
        eor     $0F
        .byte   $0F
        jmp     (L0F6E)

        ora     ($6B),y
        lsr     $115E,x
        eor     $0F6B,x
        .byte   $0F
        .byte   $5B
        and     $1139,y
        sec
        .byte   $6B
        .byte   $0F
        ora     ($0F),y
        .byte   $64
        ror     $11
        ora     ($11),y
        ora     ($11),y
        ora     ($77),y
        pla
        ora     ($11),y
        .byte   $0F
        ora     ($DD),y
        dec     LCE11,x
        dec     $0FCF
        .byte   $DC
        brk
        sbc     LCCA6
        ora     ($11),y
        .byte   $0F
        .byte   $A7
        brk
        ldx     $A6
        .byte   $DF
        ora     ($CF),y
        .byte   $0F
        ldy     #$A2
        .byte   $92
        cpx     a:$0F
        dec     a:$0F,x
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
LFBB3:  brk
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
LFBDF:  brk
        brk
        .byte   $0F
        ora     $07
        ldy     $0FAD
        .byte   $0F
        ora     ($0F),y
        and     $0F,x
        .byte   $AF
        eor     #$0F
        .byte   $0F
        and     $0F0F
        .byte   $0F
        ora     ($11),y
        .byte   $37
        ora     ($11),y
        .byte   $2F
LFBFA:  rol     $6A
        .byte   $0F
        .byte   $0F
        rol     $37,x
        eor     ($42,x)
        eor     ($43,x)
        ora     ($0F),y
        tsx
        .byte   $0F
        adc     ($63,x)
        .byte   $0F
        .byte   $0F
        jsr     LAA20
        .byte   $0F
        ora     #$09
        .byte   $0B
        cmp     $C7
        iny
        dex
        brk
        cmp     ($C1,x)
        .byte   $C3
        sbc     $E7
        inx
        nop
        brk
        cmp     ($C1,x)
        .byte   $C3
        bpl     LFBB3
        stx     $0F8F
        sbc     ($E1,x)
        .byte   $E3
        .byte   $E2
        brk
        brk
LFC2E:  brk
        .byte   $E2
        bpl     LFC42
        .byte   $E3
        .byte   $F2
        .byte   $9F
        .byte   $9F
        sta     ($83,x)
        bpl     LFBDF
        bpl     LFC2E
        brk
        brk
        sta     $87
        .byte   $89
        .byte   $89
LFC42:  .byte   $0F
        .byte   $8B
        ora     ($11),y
        ora     ($11),y
        .byte   $89
        .byte   $89
        ora     ($11),y
        .byte   $8B
        .byte   $0F
        lsr     $1D4F
        ora     $4B1D
        .byte   $0F
        .byte   $44
        adc     $0F6F
        .byte   $2B
        .byte   $0F
        lsr     $0F
        .byte   $0F
        adc     $0F6F
        ora     ($5D),y
        eor     L6B6B,x
        lsr     $0F11,x
        .byte   $0F
        sec
        sec
        .byte   $5B
        .byte   $5B
        and     $0F11,y
        ora     ($0F),y
        adc     $11
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $67
        ora     ($32),y
        .byte   $33
        .byte   $0F
        cmp     a:$DD,x
        ora     ($CE),y
        brk
        .byte   $CF
        .byte   $0F
        .byte   $DC
        clv
        ldx     L0000
        cpy     $1111
        .byte   $0F
        .byte   $A7
        cmp     a:$ED,x
        .byte   $EF
        tay
        brk
        .byte   $0F
        lda     ($A3,x)
        .byte   $93
        .byte   $A7
        .byte   $0F
        .byte   $CF
        brk
        .byte   $0F
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
LFCB2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFCBA:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0F
        .byte   $14
        .byte   $16
LFCE4:  .byte   $BB
        ldy     $0F0F,x
        ora     ($0F),y
        .byte   $34
        .byte   $0F
        ldx     $0FBF,y
        .byte   $0F
        .byte   $3C
        .byte   $0F
        .byte   $0F
        .byte   $0F
        sty     $8C0E
        ora     ($B6),y
        rol     $1157,x
        .byte   $0F
        .byte   $0F
        sta     $508C
        .byte   $52
        bvc     LFD56
        adc     $B90F,y
        .byte   $0F
        bvs     LFD7C
        .byte   $0F
        .byte   $0F
        and     ($30),y
        lda     $180F,y
        .byte   $1A
        .byte   $1A
        .byte   $D4
        dec     L0000,x
        cmp     LF0DB,y
        bpl     LFD2B
        .byte   $F4
        inc     L0000,x
        sbc     LD0FB,y
        .byte   $D2
        .byte   $D2
        beq     LFCB2
        sty     $0F8C
        beq     LFD3A
        .byte   $10
LFD2B:  bpl     LFCBA
        sty     $108C
        bcs     LFCE4
        .byte   $B2
        .byte   $B2
        .byte   $9E
        .byte   $9F
        bcc     LFD49
        ldy     $10,x
LFD3A:  bpl     LFD4C
        sty     $95,x
        ora     ($96),y
        ora     ($11),y
        .byte   $0F
        .byte   $8B
        jmp     L7A11

        ora     ($79),y
LFD49:  adc     $9B99,y
LFD4C:  sta     $5C0F,x
        lsr     $0C1C,x
        .byte   $1C
        .byte   $5A
        .byte   $0F
        .byte   $0C
LFD56:  .byte   $5C
        lsr     $3A0F,x
        .byte   $0F
        eor     $0F,x
        .byte   $0F
        .byte   $7C
        ror     $690F,x
        .byte   $6B
        ror     $116E
        adc     $0F6B
        .byte   $0F
        .byte   $6B
        ror     $116E
        adc     $0F6B
        .byte   $12
        .byte   $0F
        .byte   $74
        ror     $11,x
        .byte   $22
        bit     $11
        .byte   $13
        .byte   $13
        .byte   $11
LFD7C:  ora     ($28),y
        and     #$0F
        ora     ($DD),y
        inc     LCFCC
        .byte   $CF
        tay
        .byte   $0F
        .byte   $A7
        brk
        ldx     $ED
        .byte   $DF
        ora     ($CE),y
        .byte   $0F
        .byte   $FC
        brk
        sbc     LFEFD,x
        ora     ($A8),y
        .byte   $0F
        .byte   $92
        brk
        brk
        cpx     a:$0F
        dec     a:$0F,x
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
LFDB1:  brk
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
        .byte   $0F
        ora     $17,x
        ldy     $0FBD,x
        .byte   $0F
        ora     ($0F),y
        and     $0F,x
        .byte   $BF
        .byte   $59
        .byte   $0F
LFDEF:  .byte   $0F
        and     $0F0F,x
        .byte   $0F
        .byte   $8F
        asl     $368C
        .byte   $B7
        .byte   $3F
        .byte   $57
        .byte   $11
LFDFC:  .byte   $0F
LFDFD:  .byte   $0F
        .byte   $8C
        .byte   $8C
LFE00:  eor     ($53),y
        eor     ($53),y
        ora     ($0F),y
        tsx
        .byte   $0F
        adc     ($73),y
        .byte   $0F
        .byte   $0F
        bmi     LFE3E
        tsx
        .byte   $0F
        ora     $1B19,y
        cmp     $D7,x
        cld
        .byte   $DA
        brk
        bpl     LFE2A
        .byte   $F3
        sbc     $F7,x
        sed
        bpl     LFE20
LFE20:  cmp     ($D1),y
        .byte   $D3
        bpl     LFDB1
        sty     $0F8F
        bpl     LFE3A
LFE2A:  .byte   $F3
        .byte   $F2
        .byte   $8C
        .byte   $8C
LFE2E:  .byte   $8F
        .byte   $FA
        lda     ($B1),y
        .byte   $B3
        sbc     ($9F),y
        .byte   $9F
        sta     ($11),y
        bpl     LFDEF
LFE3A:  bpl     LFE2E
        sta     $95,x
LFE3E:  ora     ($97),y
        dey
        tya
        .byte   $0F
        ora     ($11),y
        .byte   $03
        ora     ($7B),y
        dey
        tya
        txs
        .byte   $9C
        ora     ($0F),y
        eor     $1D5F,x
        ora     $1D58
        .byte   $0F
        .byte   $54
        eor     $0F5F,x
        .byte   $3B
        .byte   $0F
        ora     $0F0F
        adc     $0F7F,x
        adc     #$6D
        adc     L6B6B
        ror     $0F11
        .byte   $0F
        adc     $6B6D
        .byte   $6B
        ror     $0F11
        .byte   $12
        .byte   $0F
        adc     $11,x
        asl     $2523,x
        .byte   $12
        cpy     $1113
        ora     ($11),y
        ora     ($0F),y
        clv
        clv
        brk
        cpy     a:$A8
        .byte   $CF
        .byte   $0F
        cpx     LEDDD
        brk
        .byte   $EF
        dec     $0F00
        .byte   $FC
        brk
        sbc     LFF00,x
        .byte   $CF
        brk
        .byte   $0F
        .byte   $93
        brk
        brk
        cpx     LCF0F
        brk
        .byte   $0F
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
        brk
        bmi     LFF13
        bmi     LFF17
        .byte   $32
        bpl     LFEE8
LFEE8:  ora     ($30,x)
        eor     (L0000),y
        .byte   $32
        .byte   $32
        brk
        brk
        and     ($10,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        and     ($40,x)
        rti

        ora     ($10,x)
LFEFD:  bpl     LFF00
        .byte   $01
LFF00:  bmi     LFF32
        bmi     LFF34
        ora     (L0000,x)
        ora     (L0000,x)
        bmi     LFF3A
        brk
        brk
        ora     ($01,x)
        ora     (L0000,x)
        bpl     LFF22
        .byte   $10
LFF13:  ora     ($01,x)
        ora     ($01,x)
LFF17:  ora     ($32,x)
        .byte   $32
        .byte   $32
        .byte   $03
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $32
        .byte   $32
LFF22:  .byte   $32
        .byte   $32
        ora     ($01,x)
        ora     (L0000,x)
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        ora     ($01,x)
        ora     ($02,x)
        .byte   $32
        .byte   $32
LFF32:  .byte   $32
        .byte   $32
LFF34:  ora     ($01,x)
        ora     ($01,x)
        .byte   $32
        .byte   $32
LFF3A:  .byte   $32
        .byte   $32
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        ora     ($03,x)
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        bpl     LFF57
        .byte   $01
LFF57:  ora     ($10,x)
        and     ($10,x)
        ora     ($10,x)
        bpl     LFF60
        .byte   $01
LFF60:  brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        .byte   $03
        brk
        ora     ($01,x)
        ora     ($03,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($01,x)
        ora     ($03,x)
        brk
        ora     ($01,x)
        ora     ($03,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        ora     ($02,x)
        .byte   $02
        ora     ($01,x)
        ora     (L0000,x)
        brk
        ora     ($02,x)
        .byte   $02
        ora     ($01,x)
        ora     (L0000,x)
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        brk
        ora     ($01,x)
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
        brk
        sei
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
