; da65 V2.18 - N/A
; Created:    2023-07-17 12:51:27
; Input file: code_bank_1.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0101           := $0101
L0198           := $0198
L154D           := $154D
L1C01           := $1C01
L2020           := $2020
L2048           := $2048
L206C           := $206C
L2320           := $2320
L2E10           := $2E10
L3090           := $3090
L4C80           := $4C80
L5400           := $5400
L5640           := $5640
L686C           := $686C
L6C6B           := $6C6B
L6D6B           := $6D6B
L706A           := $706A
L7469           := $7469
L746A           := $746A
L8000           := $8000
L87DF           := $87DF
L8808           := $8808
L8835           := $8835
L8A5E           := $8A5E
L8AAF           := $8AAF
L8AD1           := $8AD1
L8B00           := $8B00
L8B23           := $8B23
L8BB4           := $8BB4
L8C04           := $8C04
L8C05           := $8C05
L8C96           := $8C96
L8D4A           := $8D4A
L8E56           := $8E56
L8F1F           := $8F1F
L8F3A           := $8F3A
L9039           := $9039
L90AF           := $90AF
L917C           := $917C
L91AA           := $91AA
L9201           := $9201
L921B           := $921B
L92C3           := $92C3
L9369           := $9369
L938D           := $938D
L93D6           := $93D6
L9440           := $9440
L955E           := $955E
L9564           := $9564
L9595           := $9595
L95CD           := $95CD
L95E4           := $95E4
L960E           := $960E
L965B           := $965B
L9681           := $9681
L9785           := $9785
L97B0           := $97B0
L9819           := $9819
L9896           := $9896
L98F6           := $98F6
L9905           := $9905
L9A1D           := $9A1D
L9B38           := $9B38
L9B70           := $9B70
L9B93           := $9B93
L9CEC           := $9CEC
L9E3A           := $9E3A
L9E63           := $9E63
L9F43           := $9F43
L9F8F           := $9F8F
LA03C           := $A03C
LA0EA           := $A0EA
LA0ED           := $A0ED
LA102           := $A102
LA1AC           := $A1AC
LA1F8           := $A1F8
LA227           := $A227
LA320           := $A320
LA3D8           := $A3D8
LA3F5           := $A3F5
LA408           := $A408
LA414           := $A414
LA427           := $A427
LA438           := $A438
LA443           := $A443
LA4C1           := $A4C1
LA51E           := $A51E
LA54E           := $A54E
LA68A           := $A68A
LA793           := $A793
LA7AB           := $A7AB
LA7D2           := $A7D2
LA7FC           := $A7FC
LA80F           := $A80F
LA822           := $A822
LA905           := $A905
LAA1C           := $AA1C
LAA20           := $AA20
LAA69           := $AA69
LAB7A           := $AB7A
LAB9B           := $AB9B
LAC20           := $AC20
LAD66           := $AD66
LAE07           := $AE07
LAE7A           := $AE7A
LAF74           := $AF74
LB119           := $B119
LB12A           := $B12A
LB24C           := $B24C
LB25B           := $B25B
LB27C           := $B27C
LB2A7           := $B2A7
LB2D9           := $B2D9
LB315           := $B315
LB36A           := $B36A
LB39E           := $B39E
LB445           := $B445
LB454           := $B454
LB487           := $B487
LB4BA           := $B4BA
LB507           := $B507
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $04
        asl     $01
        .byte   $07
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     $0802
        asl     $100F
        ora     $1104
        php
        asl     $0307
        asl     a
        .byte   $0B
        .byte   $12
        .byte   $0F
        .byte   $13
        .byte   $14
        php
        ora     $16,x
        .byte   $17
        clc
        .byte   $17
        ora     $1B1A,y
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1C
        ora     $1F1E,x
        jsr     L2020
        jsr     L1C01
        ora     $2121,x
        and     ($21,x)
        and     ($0C,x)
        .byte   $22
        .byte   $04
        .byte   $23
        brk
        ora     ($02,x)
        ora     ($04,x)
        .byte   $04
        asl     a
        bit     $01
        .byte   $07
        ora     ($25,x)
        asl     a
        .byte   $12
        .byte   $07
        rol     $27
        plp
        ora     ($29,x)
        ora     ($02,x)
        ora     ($2A,x)
        .byte   $2B
        bit     $2A2D
        clc
        rol     $2F01
        bmi     LC096
        and     ($32),y
        .byte   $1B
        .byte   $33
        ora     ($34,x)
        and     $36,x
        .byte   $37
        and     $20,x
        sec
        and     $3939,y
        and     $3939,y
        and     ($21,x)
        and     ($21,x)
        and     ($21,x)
        and     ($21,x)
        ora     ($07,x)
        .byte   $23
        brk
        ora     ($07,x)
        brk
        ora     ($01,x)
        brk
        bit     $02
        ora     ($01,x)
        ora     ($25,x)
        .byte   $27
        .byte   $27
        .byte   $3A
        plp
        brk
        .byte   $3B
LC096:  .byte   $27
        .byte   $3C
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     $2A3D
        .byte   $2B
        .byte   $2B
        bmi     LC0D2
        rol     $3130,x
        .byte   $32
        bmi     LC0E6
LC0A8:  rol     $35,x
        .byte   $3F
        rti

        rti

        eor     ($40,x)
        .byte   $42
        and     $4339,y
        .byte   $44
        eor     $46
        eor     $47
        and     ($21,x)
        and     ($21,x)
        and     ($21,x)
        and     ($21,x)
        .byte   $02
        ora     ($01,x)
        brk
        .byte   $07
        pha
        eor     #$49
        ora     (L0000,x)
        .byte   $07
        .byte   $02
        ora     ($4A,x)
        .byte   $4B
        .byte   $4B
        .byte   $27
        .byte   $27
LC0D2:  .byte   $27
        plp
        ora     ($4C,x)
        eor     $2B4D
        .byte   $2B
        .byte   $2B
        bit     $2A2D
        bit     $304E
        bmi     LC113
        bmi     LC116
        .byte   $32
LC0E6:  rol     $504F,x
        rti

        eor     ($40,x)
        eor     ($52),y
        .byte   $53
        .byte   $54
        .byte   $3C
        eor     $46
        eor     $55
        lsr     $57,x
        .byte   $57
        and     ($21,x)
        and     ($21,x)
        and     ($58,x)
        eor     $4959,y
        .byte   $2B
        .byte   $2B
        bit     $5B5A
        .byte   $5A
        cli
        .byte   $5C
        eor     $5D5E,x
        .byte   $5F
        .byte   $4F
        .byte   $5F
        cli
        rts

        adc     ($62,x)
LC113:  adc     ($62,x)
        .byte   $61
LC116:  .byte   $62
        cli
        .byte   $63
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $64
        .byte   $5A
        cli
        .byte   $5F
        .byte   $4F
        .byte   $5F
        rol     $655F
        .byte   $5F
        cli
        ror     $2E
        ror     $64
        ror     $67
        ror     $58
        .byte   $57
        .byte   $57
        .byte   $57
        pla
        .byte   $57
        adc     #$5A
        cli
        ror     a
        .byte   $6B
        jmp     (L6D6B)

        ror     $585F
        .byte   $6F
        lsr     $4E63
        bvs     LC194
        .byte   $5A
        cli
        .byte   $6F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        adc     $71
        .byte   $72
        .byte   $73
        .byte   $6F
        .byte   $54
        ror     $54
        .byte   $74
        .byte   $54
        ror     $70
        .byte   $6F
        .byte   $5B
        adc     $76,x
        .byte   $77
        sei
        adc     $6F7A,y
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $7B
        .byte   $7C
        .byte   $7D
        .byte   $6F
LC169:  adc     ($72),y
        .byte   $64
        ror     $67
        .byte   $63
        lsr     $7E6F
        .byte   $7F
        .byte   $80
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $6F
        sta     ($81,x)
        cli
        eor     $5959,y
        eor     $6F59,y
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $7C
        adc     $8382,x
        .byte   $82
        .byte   $83
        .byte   $82
        .byte   $83
        sty     $85
        .byte   $62
        .byte   $61
LC194:  .byte   $62
        adc     ($62,x)
        adc     ($5A,x)
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        stx     $66
        .byte   $54
        ror     $87
        .byte   $87
        dey
        .byte   $87
        .byte   $89
LC1B0:  .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        eor     $5959,y
        eor     $5959,y
        eor     $5A59,y
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        bvs     LC221
        .byte   $5B
        .byte   $82
        .byte   $83
        .byte   $82
        .byte   $83
        .byte   $82
        bvs     LC22E
        .byte   $4F
        .byte   $62
        adc     ($62,x)
        adc     ($62,x)
        bvs     LC23D
        .byte   $54
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        bvs     LC169
        lsr     $8B,x
        stx     $8B
        .byte   $4F
        sty     $8165
        cli
        sta     $8D89
        .byte   $54
        ror     $81
        sta     ($58,x)
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        stx     $5959
        eor     $5959,y
        eor     $5959,y
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        cli
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        sty     $585F
        ror     $88
        ror     $54
        ror     $54
        ror     $58
        .byte   $57
        adc     #$8A
        .byte   $8F
        txa
        bcc     LC1B0
        .byte   $8E
        .byte   $59
LC221:  .byte   $92
        .byte   $57
        adc     #$81
        sta     ($7B,x)
        .byte   $7C
        eor     $5959,y
        .byte   $6F
        sta     ($81,x)
LC22E:  .byte   $93
        lsr     $5959
        eor     $816F,y
        sta     ($56,x)
        .byte   $57
        eor     $5959,y
        .byte   $6F
        .byte   $81
LC23D:  sta     ($58,x)
        eor     $6F59,y
        sta     ($94,x)
        sta     $96,x
        sta     $58,x
        eor     $816F,y
        sty     $4F,x
        .byte   $5F
        .byte   $4F
        cli
        eor     $816F,y
        sty     $8C,x
        ror     $97
        tya
        sta     $9A7D,y
        .byte   $9B
        txs
        .byte   $9C
        .byte   $7B
        sta     $5E7D,x
        .byte   $9E
        .byte   $62
        .byte   $97
        .byte   $9F
        ldy     #$58
        lsr     $5466
        ror     $70
        sta     ($81,x)
        cli
        .byte   $57
        lda     ($A2,x)
        adc     $A4A3,y
        .byte   $9C
        cli
        eor     $5959,y
        eor     $6F59,y
        .byte   $5F
        cli
        ror     a
        .byte   $6B
        jmp     (L6C6B)

        ror     $585A
        .byte   $6F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        cli
        .byte   $6F
        adc     ($72),y
        adc     ($72),y
        adc     ($72),y
        cli
        .byte   $6F
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        cli
        .byte   $6F
        .byte   $4F
        lda     $A6
        .byte   $A7
        ldx     $A7
        tay
        .byte   $6F
        .byte   $54
        .byte   $74
        lsr     $4E63
        .byte   $63
        lsr     $5792
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        eor     $5959,y
        eor     $5959,y
        eor     $6F59,y
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$6F
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        .byte   $6F
        .byte   $AB
        ldy     $ABAB
        .byte   $AB
        .byte   $AB
        ldy     $526F
        .byte   $53
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $53
        adc     $AEAD,x
        lda     $AD87
        lda     $63AE
        and     $87,x
        and     $87,x
        dey
        .byte   $AF
        bcs     LC35A
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($6F),y
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$AA
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
        ldy     $ABAB
        .byte   $AB
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $53
        .byte   $52
        .byte   $52
        .byte   $52
        lda     $ADAD
        .byte   $B2
        ldx     $ADAD
        lda     $36B3
        and     $B4,x
        .byte   $87
        .byte   $87
        and     $36,x
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$A9
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        tax
        tax
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $AB
        ldy     $B561
        adc     ($62,x)
        adc     ($62,x)
        .byte   $52
        .byte   $53
LC35A:  ldx     $B7,y
        ldx     $87,y
        dey
        .byte   $87
        lda     $4FAE
        .byte   $5F
        .byte   $4F
        stx     $8B
        stx     $35
        .byte   $3F
LC36A:  .byte   $54
        ror     $87
        .byte   $89
        sta     $B189
        lda     ($B1),y
        lda     ($B1),y
        lda     ($B1),y
        lda     ($A9),y
        lda     #$A9
        lda     #$A9
        lda     #$A9
        lda     #$5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        adc     ($62,x)
        adc     ($62,x)
        adc     ($62,x)
        adc     ($B8,x)
        adc     ($62,x)
        adc     ($B5,x)
        .byte   $87
        .byte   $87
        ldx     $B7,y
        ldx     $B7,y
        lda     $8BB7,y
        .byte   $87
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        adc     ($62,x)
        sta     $B0AF
        .byte   $B3
        .byte   $87
        ror     $54
        ror     $B1
        lda     ($B1),y
        lda     ($B1),y
        .byte   $7F
        ror     $A97F,x
        lda     #$A9
        lda     #$A9
        sta     ($81,x)
        sta     ($5B,x)
        .byte   $5A
        .byte   $5B
        tsx
        .byte   $6F
        .byte   $5A
        .byte   $5B
        .byte   $5A
        adc     ($62,x)
        .byte   $9E
        .byte   $BB
        .byte   $6F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        adc     ($B8,x)
        .byte   $54
        ldy     $BD6E,x
        adc     ($62,x)
        ldx     $B7,y
        ldx     $B7,y
        .byte   $5B
        .byte   $5A
        ldx     $619C,y
        .byte   $62
        adc     ($62,x)
        .byte   $BF
        .byte   $62
        .byte   $9E
        .byte   $62
        adc     ($62,x)
        .byte   $9E
        .byte   $62
        adc     ($B5,x)
        adc     ($62,x)
        ror     $7E7F,x
        .byte   $7F
        ror     $7E7F,x
        .byte   $7F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $BF
        .byte   $62
        adc     ($62,x)
        .byte   $9E
        .byte   $62
        adc     ($62,x)
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        lsr     $57,x
        adc     ($62,x)
        adc     ($62,x)
        adc     ($62,x)
        cli
        eor     $6261,y
        adc     ($56,x)
        adc     #$66
        cli
        eor     $647E,y
        ror     $6F58,x
        .byte   $7F
        cli
        eor     $7081,y
        sta     ($58,x)
        .byte   $6F
        sta     ($58,x)
        eor     $5A5B,y
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        adc     ($62,x)
        adc     ($62,x)
        .byte   $9E
        .byte   $62
        adc     ($62,x)
        cpy     #$77
        ror     $C1,x
        .byte   $5B
        .byte   $5A
        .byte   $C2
        .byte   $5A
        .byte   $6F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        adc     $C3
        .byte   $6F
        ror     $54
        ror     $54
        ror     $67
        ror     $92
        .byte   $57
        adc     #$C4
        cmp     $C4
        lsr     $57,x
        eor     $6F59,y
        sta     ($81,x)
        sta     ($58,x)
        eor     $5A5B,y
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $9E
        .byte   $62
        dec     $C3
        .byte   $4F
        .byte   $5F
        dec     $C3
        .byte   $54
        ror     $54
        ror     $54
        ror     $54
        ror     $C2
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $C7
        iny
        .byte   $5B
        .byte   $5A
        bvs     LC501
        .byte   $4F
        .byte   $5F
        cmp     #$5E
        .byte   $4F
        .byte   $5F
        bvs     LC510
        .byte   $54
        ror     $54
        ror     $54
        ror     $CA
        .byte   $7F
        .byte   $CB
        .byte   $CB
        ror     LCB7F,x
        .byte   $CB
        .byte   $6F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($5B,x)
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        cli
        cpy     $4F5F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        cli
        .byte   $54
        ror     $54
        ror     $90
        sta     ($57),y
        stx     LC8C7
        .byte   $C7
        .byte   $5A
        cmp     $7C7B
        .byte   $7C
        cmp     #$5E
        eor     $4F5F,x
        dec     LCF5D
        .byte   $54
        ror     $54
        ror     $54
        bne     LC543
        cmp     ($CB),y
        .byte   $7F
        ror     $B17F,x
        lda     ($B1),y
        lda     ($81),y
        sta     ($81,x)
        sta     ($A9,x)
        lda     #$A9
        lda     #$D2
LC501:  .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D3
        .byte   $D4
LC510:  .byte   $D2
        cmp     $D6,x
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D7
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        cld
        .byte   $D2
        cmp     LD2D2,y
        .byte   $D2
        .byte   $D2
        .byte   $DA
        .byte   $DB
        .byte   $D2
        .byte   $DC
        .byte   $D2
        cmp     LDDDD,x
        cmp     LDFDE,x
        cpx     #$E1
        .byte   $E2
        .byte   $E2
        .byte   $E2
        .byte   $E2
LC53C:  .byte   $E3
        .byte   $D2
LC53E:  cpx     $E5
        inc     $E7
        .byte   $E6
LC543:  .byte   $E7
        inc     $E7
        inc     $E7
        inx
        sbc     #$EA
        sbc     #$EB
        cpx     LEEED
        .byte   $EF
        inc     $E7
        beq     LC53C
        beq     LC53E
        sbc     ($EC),y
        .byte   $EB
        cpx     LF2ED
        nop
        sbc     #$EA
        .byte   $F3
        .byte   $F4
        sbc     $F6,x
        .byte   $F7
        inc     $F5,x
        sed
        sbc     LF9FA,y
        .byte   $FB
        sbc     LF9FB,y
        sbc     LFCFC,y
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     $81FD,x
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
LC59D:  sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        .byte   $81
LC76E:  sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
LC79C:  sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        lda     #$40
        sta     $99
        ldx     #$01
        stx     $4D
        lda     $04D0,x
        bpl     LC827
        ldy     $04E0,x
        cpy     #$47
        bcc     LC827
        lda     $8836,y
        sta     L0000
        lda     $88B6,y
        sta     $01
        lda     #$88
        pha
        lda     #$26
        pha
        jmp     (L0000)

LC827:  inc     $4D
        ldx     $4D
        cpx     #$10
        bne     LC832
        jmp     L8835

LC832:  jmp     L8808

        rts

        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        rol     $36,x
        .byte   $89
        .byte   $F7
        bit     $BD46
        .byte   $BD
        .byte   $B3
LC885:  sed
        rol     $36,x
        inc     $4C
        adc     ($EC),y
        inc     $A7
        dec     $775A,x
        bcc     LC885
        .byte   $E2
        bvc     LC827
        sta     ($D4),y
        .byte   $6F
        and     LE623,x
        .byte   $37
        inc     $7A
        sty     $C5,x
        cmp     $3E
        .byte   $89
        .byte   $89
        .byte   $89
        cmp     #$C9
        cmp     #$C9
        cmp     #$C9
        cmp     #$C9
        cmp     #$C9
        cmp     #$C9
LC8B2:  cmp     #$C9
        .byte   $83
        adc     ($89),y
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
        .byte   $89
LC8C5:  .byte   $89
        .byte   $89
LC8C7:  .byte   $89
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
        .byte   $89
        .byte   $89
        .byte   $89
        lda     $A1
        tay
        ldy     $A4
        ldy     $B3
        .byte   $97
        tya
        .byte   $97
        sta     $9B99,x
        sty     $9F9D
        ldy     #$A9
        ldy     $94AC
        .byte   $93
        .byte   $AF
        .byte   $AF
        lda     ($AD),y
        .byte   $93
        lda     $898C
        sty     $968E
        bcc     LC8B2
        .byte   $92
        .byte   $89
        .byte   $89
        .byte   $89
        stx     $96,y
        stx     $96,y
        stx     $96,y
        stx     $96,y
        stx     $96,y
        stx     $96,y
        stx     $96,y
        bcc     LC8C5
        rts

        lda     $04D0,x
        and     #$0F
        bne     LC94B
        lda     #$1E
        sta     $0480,x
        lda     #$3C
        sta     $0490,x
        inc     $04D0,x
LC94B:  lda     $04D0,x
        and     #$02
        bne     LC97A
        lda     $0480,x
        beq     LC95E
        jsr     LF4FD
        dec     $0480,x
        rts

LC95E:  lda     $0490,x
        bne     LC976
        inc     $04D0,x
        lda     #$80
        sta     $0530,x
        lda     #$00
        sta     $0540,x
        lda     #$3C
        sta     $0480,x
        rts

LC976:  dec     $0490,x
        rts

LC97A:  lda     $0480,x
        beq     LC986
        jsr     LF51B
        dec     $0480,x
        rts

LC986:  jmp     LFA9A

        lda     $04D0,x
        and     #$0F
        bne     LC9A6
        sta     $0560,x
        lda     #$80
        sta     $0550,x
        lda     #$10
        sta     $0490,x
        inc     $04D0,x
        lda     $0510,x
        sta     $04B0,x
LC9A6:  lda     $04E0,x
        cmp     #$48
        beq     LC9C3
        cmp     #$6D
        beq     LC9BA
        cmp     #$6E
        beq     LC9BD
        cmp     #$6F
        beq     LC9C0
        rts

LC9BA:  jmp     L8B23

LC9BD:  jmp     L8C04

LC9C0:  jmp     L8C05

LC9C3:  lda     $50
        cmp     #$07
        beq     LCA02
        lda     $50
        cmp     #$0B
        bne     LC9D2
        jmp     L8A5E

LC9D2:  lda     $0480,x
        bne     LCA20
        .byte   $20
        plp
LC9D9:  sbc     $0CC9,y
        bcs     LCA02
        jsr     LF919
        bcc     LCA02
        cmp     #$14
        bcs     LCA02
        cmp     #$0C
        bcc     LCA02
        lda     $0560
        bmi     LCA03
LC9F0:  lda     $50
        cmp     #$04
        beq     LCA02
        lda     #$04
        sta     $50
        lda     #$12
        jsr     LF850
        inc     $0480,x
LCA02:  rts

LCA03:  lda     $0520
        cmp     $0520,x
        bne     LCA02
        jsr     LF919
        bcc     LCA02
        cmp     #$0F
        bcc     LCA02
        cmp     #$14
        bcs     LCA02
        jsr     LF928
        cmp     #$08
        bcc     LC9F0
        rts

LCA20:  lda     $04D0,x
        and     #$02
        bne     LCA46
        lda     $0490,x
        beq     LCA74
        jsr     LF539
        lda     $0460
        clc
        adc     #$80
        sta     $0460
        lda     $0510
        adc     #$00
        sta     $0510
        cmp     #$F0
        dec     $0490,x
        rts

LCA46:  lda     $50
        beq     LCA63
        lda     $50
        beq     LCA73
        cmp     #$04
        beq     LCA73
        cmp     #$01
        beq     LCA63
        cmp     #$02
        beq     LCA63
        cmp     #$06
        beq     LCA63
        lda     $0560
        bmi     LCA03
LCA63:  lda     $04B0,x
        sta     $0510,x
        lda     #$80
        sta     $04D0,x
        lda     #$00
        sta     $0480,x
LCA73:  rts

LCA74:  inc     $04D0,x
        jsr     L8AD1
        lda     $04A0,x
        bne     LCA73
        jsr     LFA4C
        bcs     LCA73
        sty     $0F
        lda     $04F0,x
        clc
        adc     #$1C
        pha
        lda     $0500,x
        adc     #$00
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     #$78
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        jsr     L8AAF
        lda     #$80
        sta     $0590,y
        rts

        lda     #$33
        jsr     LFA84
        lda     #$F0
        sta     $0400,y
        lda     #$66
        sta     $04E0,y
        lda     #$8E
        sta     $0570,y
        lda     #$00
        sta     $0530,y
        sta     $05A0,y
        lda     #$01
        sta     $0540,y
        rts

        lda     $04E0,x
        cmp     #$48
        beq     LCAE5
        cmp     #$6D
        beq     LCAE9
        cmp     #$6E
        beq     LCAED
        cmp     #$6F
        beq     LCAF1
        rts

LCAE5:  lda     #$80
        bne     LCAF3
LCAE9:  lda     #$81
        bne     LCAF3
LCAED:  lda     #$82
        bne     LCAF3
LCAF1:  lda     #$83
LCAF3:  sta     $01
        lda     #$00
        sta     L0000
        ldy     #$0F
LCAFB:  lda     $04D0,y
        bmi     LCB17
LCB00:  dey
LCB01:  cpy     #$04
        bne     LCAFB
        lda     L0000
        cmp     #$01
        beq     LCB11
        lda     #$00
        sta     $04A0,x
        rts

LCB11:  lda     #$FF
        sta     $04A0,x
        rts

LCB17:  lda     $01
        cmp     $0590,y
        bne     LCB00
        inc     L0000
        jmp     L8B00

        lda     $50
        cmp     #$07
        beq     LCB62
        lda     $50
        cmp     #$0B
        bne     LCB32
        jmp     L8BB4

LCB32:  lda     $0480,x
        bne     LCB78
        jsr     LF928
        cmp     #$0C
        bcs     LCB62
        jsr     LF919
        bcc     LCB62
        cmp     #$14
        bcs     LCB62
        cmp     #$0C
        bcc     LCB62
        lda     $0560
        bmi     LCB63
LCB50:  lda     $50
        cmp     #$04
        beq     LCB62
        lda     #$04
        sta     $50
        lda     #$12
        jsr     LF850
        inc     $0480,x
LCB62:  rts

LCB63:  jsr     LF919
        bcc     LCB62
        cmp     #$0E
        bcc     LCB62
        cmp     #$14
        bcs     LCB62
        jsr     LF928
        cmp     #$08
        bcc     LCB50
        rts

LCB78:  lda     $04D0,x
        and     #$02
        bne     LCB9C
LCB7F:  lda     $0490,x
        beq     LCBCA
        jsr     LF539
        lda     $0460
        clc
        adc     #$80
        sta     $0460
        lda     $0510
        adc     #$00
        sta     $0510
        dec     $0490,x
        rts

LCB9C:  lda     $50
        beq     LCBC9
        lda     $50
        beq     LCBC9
        cmp     #$04
        beq     LCBC9
        cmp     #$01
        beq     LCBB9
        cmp     #$02
        beq     LCBB9
        cmp     #$06
        beq     LCBB9
        lda     $0560
        bmi     LCB63
LCBB9:  lda     $04B0,x
        sta     $0510,x
        lda     #$80
        sta     $04D0,x
        lda     #$00
        sta     $0480,x
LCBC9:  rts

LCBCA:  inc     $04D0,x
        jsr     L8AD1
        lda     $04A0,x
        bne     LCBC9
        jsr     LFA4C
        bcs     LCBC9
        sty     $0F
        lda     $04F0,x
        sec
        sbc     #$44
        pha
        lda     $0500,x
        sec
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     #$C8
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        jsr     L8AAF
        lda     #$81
        sta     $0590,y
        rts

        rts

        lda     $50
        cmp     #$07
        beq     LCC44
        lda     $50
        cmp     #$0B
        bne     LCC14
        jmp     L8C96

LCC14:  lda     $0480,x
        bne     LCC5A
        jsr     LF928
        cmp     #$0C
        bcs     LCC44
        jsr     LF919
        bcc     LCC44
        cmp     #$14
        bcs     LCC44
        cmp     #$0C
        bcc     LCC44
        lda     $0560
        bmi     LCC45
LCC32:  lda     $50
        cmp     #$04
        beq     LCC44
        lda     #$04
        sta     $50
        lda     #$12
        jsr     LF850
        inc     $0480,x
LCC44:  rts

LCC45:  jsr     LF919
        bcc     LCC44
        cmp     #$0E
        bcc     LCC44
        cmp     #$12
        bcs     LCC44
        jsr     LF928
        cmp     #$08
        bcc     LCC32
        rts

LCC5A:  lda     $04D0,x
        and     #$02
        bne     LCC7E
        lda     $0490,x
        beq     LCCAC
        jsr     LF539
        lda     $0460
        clc
        adc     #$80
        sta     $0460
        lda     $0510
        adc     #$00
        sta     $0510
        dec     $0490,x
        rts

LCC7E:  lda     $50
        beq     LCCAB
        lda     $50
        beq     LCCAB
        cmp     #$04
        beq     LCCAB
        cmp     #$01
        beq     LCC9B
        cmp     #$02
        beq     LCC9B
        cmp     #$06
        beq     LCC9B
        lda     $0560
        bmi     LCC45
LCC9B:  lda     $04B0,x
        sta     $0510,x
        lda     #$80
        sta     $04D0,x
        lda     #$00
        sta     $0480,x
LCCAB:  rts

LCCAC:  inc     $04D0,x
        jsr     L8AD1
        lda     $04A0,x
        bne     LCCAB
        jsr     LFA4C
        bcs     LCCAB
        sty     $0F
        lda     $04F0,x
        sec
        sbc     #$08
        pha
        lda     $0500,x
        sec
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     #$A7
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        jsr     L8AAF
        lda     #$83
        sta     $0590,y
        rts

        lda     $04D0,x
        and     #$0F
        tay
        lda     $8E74,y
        sta     L0000
        lda     $8E77,y
        sta     $01
        jmp     (L0000)

        .byte   $A9
LCCFA:  brk
        sta     $0540,x
        sta     $0480,x
        lda     #$80
        sta     $0530,x
        lda     $04E0,x
        cmp     #$56
        beq     LCD11
        lda     #$01
        bne     LCD13
LCD11:  lda     #$02
LCD13:  sta     $0580,x
        inc     $04D0,x
        rts

        lda     $0500,x
        cmp     $0500
        bne     LCD33
        jsr     LF919
        cmp     #$15
        bcs     LCD33
        jsr     LF928
        cmp     #$10
        bcs     LCD33
        inc     $04D0,x
LCD33:  rts

        ldy     #$02
        lda     $0580,x
        cmp     #$02
        beq     LCD45
        lda     #$5C
        jsr     LF200
        jmp     L8D4A

LCD45:  lda     #$5F
        jsr     LF254
        lda     $10
        beq     LCD6D
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        lda     $0480,x
        beq     LCD6D
        lda     $0580,x
        cmp     #$02
        bne     LCD6D
        inc     $04F0
        lda     $04F0
        bne     LCD6D
        inc     $0500
LCD6D:  lda     #$00
        sta     $0480,x
        lda     $0520,x
        cmp     $0520
        bne     LCD33
        jsr     LF919
        cmp     #$15
        bcs     LCD33
        jsr     LF928
        cmp     #$10
        bcs     LCD33
        lda     $50
        cmp     #$0E
        bne     LCDA3
        jsr     LF919
        cmp     #$10
        bcs     LCDA3
        lda     #$01
        sta     $50
        jsr     LF607
        lda     #$00
        sta     $0570,x
        beq     LCDAD
LCDA3:  lda     $0560
        bmi     LCDAD
        lda     #$8E
        sta     $0570,x
LCDAD:  lda     $50
        cmp     #$0E
        beq     LCDC4
        cmp     #$00
        beq     LCDC4
        cmp     #$02
        beq     LCDC4
        cmp     #$03
        beq     LCDC4
        cmp     #$06
        beq     LCDC4
        rts

LCDC4:  lda     #$01
        sta     $0480,x
        lda     $0580,x
        cmp     #$02
        beq     LCE13
        lda     $0470
        clc
        adc     #$80
        sta     $0470
        lda     $04F0
        adc     #$00
        sta     $04F0
        bcc     LCDEB
        lda     $0500
        adc     #$00
        sta     $0500
LCDEB:  stx     $13
        lda     #$00
        sta     $40
        ldy     #$02
        sty     $41
        ldx     #$00
        jsr     LEB52
        lda     $10
        cmp     #$04
        bcc     LCE07
        lda     $7C
        bne     LCE0D
        jsr     L8E56
LCE07:  lda     $10
        cmp     #$03
        bcc     LCE10
LCE0D:  jsr     LED85
LCE10:  ldx     $13
        rts

LCE13:  lda     $0470
        sec
        sbc     #$80
        sta     $0470
        lda     $04F0
        sbc     #$00
        sta     $04F0
        bcs     LCE2E
        lda     $0500
        sbc     #$00
        sta     $0500
LCE2E:  stx     $13
        lda     #$03
        sta     $40
        ldy     #$02
        sty     $41
        ldx     #$00
        jsr     LEB52
        lda     $10
        cmp     #$04
        bcc     LCE4A
        lda     $7C
        bne     LCE50
        jsr     L8E56
LCE4A:  lda     $10
        cmp     #$03
        bcc     LCE53
LCE50:  jsr     LED9D
LCE53:  ldx     $13
        rts

        lda     $7C
        bne     LCE73
        lda     #$06
        sta     $50
        lda     #$0F
        sta     $51
        lda     #$09
        jsr     LFA78
        lda     #$15
        jsr     LF850
        lda     #$3C
        sta     $7C
        jsr     LF9C2
LCE73:  rts

        sbc     $341A,y
        sty     $8D8D
        lda     $04D0,x
        and     #$0F
        bne     LCE94
        sta     $0480,x
        sta     $0560,x
        lda     #$80
        sta     $0550,x
        inc     $04D0,x
        lda     #$1E
        sta     $0490,x
LCE94:  lda     $0480,x
        bne     LCEA5
        lda     $0490,x
        bne     LCEA1
        inc     $0480,x
LCEA1:  dec     $0490,x
        rts

LCEA5:  jsr     LF919
        cmp     #$19
        bcs     LCF1F
        jsr     LF928
        cmp     #$13
        bcs     LCF1F
        lda     #$06
        sta     $40
        ldy     #$02
        sty     $41
        stx     $0F
        ldx     #$00
        jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LCED0
        jsr     LEDD2
        ldx     $0F
        jmp     L8F1F

LCED0:  ldx     $0F
        lda     $50
        cmp     #$03
        bne     LCEFD
        lda     $0460
        clc
        adc     #$80
        sta     $0460
        lda     $0510
        adc     #$00
        sta     $0510
        cmp     #$F0
        bcc     LCF1F
        adc     #$0F
        sta     $0510
        lda     $0520
        adc     #$00
        sta     $0520
        jmp     L8F1F

LCEFD:  lda     $0460
        clc
        adc     #$00
        sta     $0460
        lda     $0510
        adc     #$01
        sta     $0510
        cmp     #$F0
        bcc     LCF1F
        adc     #$0F
        sta     $0510
        lda     $0520
        adc     #$00
        sta     $0520
LCF1F:  jsr     LF539
        lda     $0510,x
        cmp     #$E8
        bcc     LCF39
        lda     $50
        cmp     #$03
        bne     LCF33
        lda     #$00
        sta     $50
LCF33:  jsr     L8F3A
        jsr     LFA9A
LCF39:  rts

        jsr     LFA4C
        bcs     LCF39
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     #$08
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$33
        jsr     LFA84
        lda     #$68
LCF5D:  sta     $04E0,y
        lda     $0590,x
        sta     $0590,y
        lda     #$8E
        sta     $0570,y
        lda     #$00
        sta     $05A0,y
        rts

        lda     $04D0,x
        and     #$0F
        bne     LCFA6
        sta     $0490,x
        sta     $0540,x
        lda     #$62
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        lda     #$92
        sta     $0530,x
        inc     $04D0,x
        lda     #$3C
        sta     $0480,x
        ldy     $22
        lda     ($32),y
        cmp     #$27
        bne     LCFA6
        lda     $2F
        cmp     #$02
        bne     LCFA6
        jmp     LFA9A

LCFA6:  lda     $95
        and     #$03
        bne     LCFB1
        lda     #$2A
        jsr     LF850
LCFB1:  lda     $0420,x
        cmp     #$A5
        beq     LCFC1
        cmp     #$A4
        beq     LCFF5
        lda     #$A5
        jsr     LFA6C
LCFC1:  lda     $0400,x
        cmp     #$50
        beq     LCFF4
        cmp     #$10
        beq     LCFF4
        lda     $0410,x
        cmp     #$10
        bne     LCFEB
        lda     $0430,x
        cmp     #$02
        bne     LCFEB
        lda     $0580,x
        sta     L0000
        jsr     LF81D
        jsr     L9039
        lda     L0000
        sta     $0580,x
        rts

LCFEB:  cmp     #$15
        bne     LCFF4
        lda     #$A4
        jsr     LFA6C
LCFF4:  rts

LCFF5:  lda     $0480,x
        bne     LD00C
        lda     #$3D
        sta     $0480,x
        lda     $0490,x
        eor     #$01
        sta     $0490,x
        lda     #$A5
        jsr     LFA6C
LD00C:  dec     $0480,x
        lda     $0580,x
        and     #$01
        beq     LD029
        jsr     LF4FD
        jsr     LF24B
        lda     $0490,x
        and     #$01
        bne     LD026
        jmp     LF539

LD026:  jmp     LF55E

LD029:  jsr     LF51B
        jsr     LF2A6
        lda     $0490,x
        and     #$01
        bne     LD026
        jmp     LF539

        jsr     LFA4C
        bcs     LD07E
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $907F,y
        pha
        lda     $0500,x
        adc     $9080,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        clc
        adc     #$04
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$A6
        jsr     LFA84
        lda     #$7E
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
LD07E:  rts

        .byte   $0C
        brk
        .byte   $F4
        .byte   $FF
        lda     $04D0,x
        and     #$0F
        bne     LD09F
        sta     $0530,x
        lda     #$6E
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
LD09F:  lda     $0580,x
        and     #$01
        beq     LD0AC
        jsr     LF4FD
        jmp     L90AF

LD0AC:  jsr     LF51B
        lda     #$28
        ldy     #$01
        jsr     LF2D7
        lda     $10
        beq     LD0C4
        lda     #$14
        jsr     LFA6C
        .byte   $A9
LD0C0:  brk
        sta     $04E0,x
LD0C4:  rts

        lda     $04D0,x
        and     #$0F
        bne     LD0E2
        sta     $0560,x
        lda     #$80
        sta     $0550,x
        lda     #$10
        sta     $0490,x
        inc     $04D0,x
        lda     $0510,x
        sta     $04B0,x
LD0E2:  lda     $50
        cmp     #$07
        beq     LD121
        lda     $50
        cmp     #$0B
        bne     LD0F1
        jmp     L917C

LD0F1:  lda     $0480,x
        bne     LD137
        jsr     LF928
        cmp     #$0C
        bcs     LD121
        jsr     LF919
        bcc     LD121
        cmp     #$14
        bcs     LD121
        cmp     #$0C
        bcc     LD121
        lda     $0560
        bmi     LD122
LD10F:  lda     $50
        cmp     #$04
        beq     LD121
        lda     #$04
        sta     $50
        lda     #$12
        jsr     LF850
        inc     $0480,x
LD121:  rts

LD122:  jsr     LF919
        bcc     LD121
        cmp     #$0F
        bcc     LD121
        cmp     #$14
        bcs     LD121
        jsr     LF928
        cmp     #$08
        bcc     LD10F
        rts

LD137:  lda     $04D0,x
        and     #$02
        bne     LD164
        lda     $0490,x
        beq     LD192
        jsr     LF539
        lda     $0460
        clc
        adc     #$80
        sta     $0460
        lda     $0510
        adc     #$00
        sta     $0510
        cmp     #$F0
        bcc     LD160
        adc     #$0F
        sta     $0510
LD160:  dec     $0490,x
        rts

LD164:  lda     $50
        beq     LD181
        cmp     #$04
        beq     LD191
        cmp     #$01
        beq     LD181
        cmp     #$02
        beq     LD181
        cmp     #$03
        beq     LD181
        cmp     #$06
        beq     LD181
        lda     $0560
        bmi     LD122
LD181:  lda     $04B0,x
        sta     $0510,x
        lda     #$80
        sta     $04D0,x
        lda     #$00
        sta     $0480,x
LD191:  rts

LD192:  inc     $04D0,x
        lda     $04E0,x
        cmp     #$6A
        bne     LD1A0
        jsr     L91AA
        rts

LD1A0:  jsr     L9201
        lda     $04A0,x
        bne     LD191
        beq     LD1B2
        jsr     L9201
        lda     $04A0,x
        bne     LD191
LD1B2:  jsr     LFA4C
        bcs     LD191
        sty     $0F
        lda     $04F0,x
        clc
        adc     #$20
        pha
        lda     $0500,x
        adc     #$00
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     #$18
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$34
        jsr     LFA84
        lda     #$B0
        sta     $0400,y
        lda     #$00
        sta     $0570,y
        sta     $05A0,y
        lda     #$6C
        sta     $04E0,y
        lda     $04E0,x
        cmp     #$6A
        bne     LD1FB
        lda     #$90
        bne     LD1FD
LD1FB:  lda     #$91
LD1FD:  sta     $0590,y
        rts

        lda     #$00
        sta     L0000
        lda     $04E0,x
        cmp     #$6A
        bne     LD210
        lda     #$90
        bne     LD212
LD210:  lda     #$91
LD212:  sta     $01
        ldy     #$0F
LD216:  lda     $04D0,y
        bmi     LD232
LD21B:  dey
        cpy     #$04
        bne     LD216
        lda     L0000
        cmp     #$01
        beq     LD22C
        lda     #$00
        sta     $04A0,x
        rts

LD22C:  lda     #$FF
        sta     $04A0,x
        rts

LD232:  lda     $01
        cmp     $0590,y
        bne     LD21B
        inc     L0000
        jmp     L921B

        lda     $04D0,x
        and     #$0F
        tay
        lda     $9337,y
        sta     L0000
        lda     $933A,y
        sta     $01
        jmp     (L0000)

        sta     $0480,x
        sta     $04B0,x
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        inc     $04D0,x
        lda     #$01
        sta     $04A0,x
        lda     #$08
        sta     $0490,x
        rts

        jsr     LF539
        jsr     L92C3
        lda     $0510,x
        cmp     #$50
        bcc     LD287
        inc     $04D0,x
        lda     #$80
        sta     $0550,x
        lda     #$00
        sta     $0560,x
LD287:  dec     $0490,x
        bne     LD296
        lda     #$2E
        jsr     LF850
        lda     #$08
        sta     $0490,x
LD296:  rts

        jsr     LF55E
        jsr     L92C3
        lda     $0510,x
        cmp     #$14
        bne     LD2B3
        lda     $0480,x
        beq     LD2B0
        jsr     LF607
        lda     #$01
        sta     $50
LD2B0:  jmp     LFA9A

LD2B3:  dec     $0490,x
        bne     LD2C2
        lda     #$2E
        jsr     LF850
        lda     #$10
        sta     $0490,x
LD2C2:  rts

        dec     $04A0,x
        bne     LD327
        lda     $0480,x
        beq     LD2DD
        lda     $0560
        bpl     LD322
LD2D2:  lda     #$00
        sta     $0480,x
        lda     $14
        cmp     #$04
        beq     LD328
LD2DD:  lda     $50
        cmp     #$07
        beq     LD322
        lda     $0500,x
        cmp     $0500
        bne     LD322
        jsr     LF928
        cmp     #$08
        bpl     LD322
        lda     $0510
        sta     $04B0,x
        sec
        sbc     #$10
        sta     $0510
        jsr     LF919
        ldy     $04B0,x
        sty     $0510
        cmp     #$11
        bpl     LD322
        lda     #$04
        sta     $50
        lda     $0510,x
        clc
        adc     #$10
        sta     $0510
        lda     #$01
        sta     $0480,x
        lda     #$FF
        sta     $0560
LD322:  lda     #$01
        sta     $04A0,x
LD327:  rts

LD328:  lda     #$1E
        sta     $04A0,x
        lda     #$01
        sta     $50
        lda     #$00
        sta     $0480,x
        rts

        eor     ($6D),y
        .byte   $97
        .byte   $92
        .byte   $92
        .byte   $92
        jsr     LF928
        cmp     #$18
        bcs     LD34F
        jsr     LF919
        cmp     #$10
        bcs     LD34F
        lda     #$FF
        sta     $9E
LD34F:  rts

        lda     $04D0,x
        and     #$0F
        bne     LD374
        sta     $04A0,x
        lda     $31
        cmp     #$02
        bne     LD366
        jsr     LB487
        jmp     L9369

LD366:  jsr     LB454
        lda     #$3C
        sta     $0480,x
        sta     $0490,x
        inc     $04D0,x
LD374:  lda     $0490,x
        bne     LD38D
        lda     #$3C
        sta     $0490,x
        lda     $66
        cmp     #$FF
        bne     LD38A
        jsr     L93D6
        jmp     L938D

LD38A:  jsr     L9440
LD38D:  dec     $0490,x
        lda     $0480,x
        bne     LD3C9
        lda     #$3C
        sta     $0480,x
        lda     $04D0,x
        and     #$02
        bne     LD3BC
        lda     $04A0,x
        bne     LD3CD
        lda     #$79
        sta     $05F4
        dec     $05F2
        lda     $05F2
LD3B1:  cmp     #$70
        bne     LD3B8
        inc     $04A0,x
LD3B8:  inc     $04D0,x
        rts

LD3BC:  dec     $05F4
        lda     $05F4
        cmp     #$70
        bne     LD3C9
        dec     $04D0,x
LD3C9:  .byte   $DE
        .byte   $80
LD3CB:  .byte   $04
        rts

LD3CD:  lda     $9C
        sta     $5B
        lda     #$00
        sta     $66
        rts

        jsr     LFA4C
        bcs     LD41F
        sty     $0F
        lda     #$04
        sta     $0580,y
        lda     $0500
        sta     $0500,y
        lda     $0520
        sta     $0520,y
        lda     #$00
        sta     $0510,y
        .byte   $99
        .byte   $50
LD3F5:  ora     $99
        ldy     #$05
        lda     #$38
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$50
        sta     $0570,y
        lda     #$01
        sta     $0560,y
        lda     $E6
        clc
        adc     $E5
        sta     $E5
        and     #$1F
        tay
        lda     $9420,y
        ldy     $0F
        .byte   $99
LD41D:  beq     $D423
LD41F:  rts

        bpl     LD482
        jsr     L3090
        ldy     #$80
        cpx     #$30
        bpl     LD46B
        cpy     #$50
        ldy     #$E0
        bmi     LD3B1
        bvs     LD443
        ldy     #$40
        cpx     #$80
        rti

        .byte   $80
        bvs     LD3CB
        bpl     LD41D
        rts

        cpy     #$80
        lda     $04AF
LD443:  cmp     #$05
        beq     LD46D
        lda     $E4
        adc     $E5
        eor     $04F0
        sta     $E4
        sta     $E6
        and     #$07
        tay
        lda     $946E,y
        cmp     $049F
        bne     LD464
        iny
        cpy     #$06
        bcc     LD464
        ldy     #$00
LD464:  lda     $946E,y
        sta     $049F
        .byte   $20
LD46B:  ror     $94,x
LD46D:  rts

        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $01
        .byte   $04
        sty     $0F
        jsr     LFA4C
        bcs     LD4D3
        stx     $0E
        ldx     $049F
LD482:  lda     $94D6,x
        sta     $04F0,y
        lda     $94DC,x
        sta     $0510,y
        ldx     $0E
        lda     $050F
        sta     $0500,y
        lda     $052F
        sta     $0520,y
        stx     $08
        tya
        tax
        lda     #$3D
        jsr     LFA6C
        ldx     $08
        lda     #$5D
        sta     $04E0,y
        lda     #$10
        sta     $0570,y
        lda     #$80
        sta     $04D0,y
        inc     $04AF
        lda     #$00
        sta     $0530,y
        lda     #$01
        sta     $0540,y
        lda     $04F0,y
        cmp     #$E8
        beq     LD4CE
        lda     #$01
        bne     LD4D0
LD4CE:  lda     #$02
LD4D0:  sta     $0580,y
LD4D3:  ldy     $0F
        rts

        clc
        clc
        clc
        inx
        inx
        inx
        plp
        cli
        dey
        plp
        cli
        dey
        lda     $04D0,x
        and     #$0F
        bne     LD51E
        sta     $04B0,x
        lda     $0580,x
        and     #$01
        beq     LD4FF
        jsr     LF4FD
        lda     $04F0,x
        cmp     #$F8
        beq     LD55E
        bne     LD509
LD4FF:  jsr     LF51B
        lda     $04F0,x
        cmp     #$08
        beq     LD55E
LD509:  lda     $0580,x
        sta     $0490,x
        lda     #$02
        sta     $0580,x
        lda     $0490,x
        sta     $0580,x
        jsr     L9564
        rts

LD51E:  cmp     #$02
        beq     LD550
        jsr     LF5C9
        lda     $0510,x
        cmp     $04B0,x
        bpl     LD53C
        lda     $0580,x
        and     #$01
        beq     LD538
        jsr     LF4FD
        rts

LD538:  jsr     LF51B
        rts

LD53C:  lda     #$01
        sta     $0560,x
        lda     #$00
        sta     $0530,x
        sta     $0540,x
        sta     $0550,x
        inc     $04D0,x
        rts

LD550:  jsr     LF539
        lda     $0510,x
        cmp     #$E8
        beq     LD55E
        jsr     L9595
        rts

LD55E:  dec     $04AF
        jmp     LFA9A

        lda     $0420
        cmp     #$0D
        bne     LD594
        jsr     LFB7B
        bcs     LD594
        lda     $0510,x
        sta     $04B0,x
        sta     $0530,x
        lda     #$6E
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LD58B:  jsr     L965B
        inc     $04D0,x
        jsr     L960E
LD594:  rts

        lda     $0510
        sta     $0490,x
        lda     $051F
        clc
        adc     #$10
        sta     $0510
        jsr     LF919
        cmp     #$08
        bcs     LD5DD
        lda     $04F0
        sta     $0480,x
        lda     $058F
        and     #$01
        beq     LD5C4
        lda     $04FF
        sec
        sbc     #$0C
        sta     $04F0
        jmp     L95CD

LD5C4:  lda     $04FF
        clc
        adc     #$0C
        sta     $04F0
        jsr     LF928
        cmp     #$18
        bcs     LD5D7
        jmp     L95E4

LD5D7:  lda     $0480,x
        sta     $04F0
LD5DD:  lda     $0490,x
        sta     $0510
        rts

        lda     $0480,x
        sta     $04F0
        lda     $0490,x
        sta     $0510
        dec     $04AF
        lda     $0420,x
        cmp     #$1C
        beq     LD608
        cmp     #$1D
        beq     LD608
        cmp     #$1E
        beq     LD608
        lda     #$31
        sta     $04E0,x
        rts

LD608:  lda     #$3F
        sta     $04E0,x
        rts

        lda     #$00
        sta     $0480,x
        lda     $E4
        adc     $E5
        sbc     $E6
        sta     $E4
        eor     $E7
        sta     $E6
        cmp     #$34
LD621:  bcc     LD649
        inc     $0480,x
        cmp     #$60
        bcc     LD649
        inc     $0480,x
        cmp     #$80
        bcc     LD649
        inc     $0480,x
        cmp     #$9A
        bcc     LD649
        inc     $0480,x
        cmp     #$9E
        bcc     LD649
        inc     $0480,x
        cmp     #$C4
        bcc     LD649
        jmp     L955E

LD649:  lda     $0480,x
        tay
        lda     $9654,y
        sta     $0420,x
        rts

        .byte   $1C
        ora     $2425,x
        asl     a:$23,x
        jsr     LFA4C
        bcs     LD693
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0510,x
        sta     $0510,y
        lda     $0500,x
        sta     $0500,y
        lda     $0520,x
        sta     $0520,y
        lda     #$00
        sta     $0570,y
        sta     $0540,y
        sta     $0530,y
        sta     $0560,y
        sta     $0550,y
        sta     $04E0,y
        lda     #$14
        jsr     LFA84
LD693:  rts

        lda     $04D0,x
        and     #$0F
        bne     LD6A6
        lda     $50
        bne     LD6A5
        sta     $04A0,x
        inc     $04D0,x
LD6A5:  rts

LD6A6:  lda     $14
        and     #$02
        beq     LD6B4
        lda     #$01
        sta     $0580,x
        jsr     LF808
LD6B4:  lda     $14
LD6B6:  and     #$01
        beq     LD6C2
        lda     #$02
        sta     $0580,x
        jsr     LF808
LD6C2:  lda     $04F0
        sta     $04F0,x
        rts

        lda     $04D0,x
        and     #$0F
        bne     LD6E3
        jsr     LFAAE
        bcs     LD6E2
        lda     #$90
        sta     $0400,x
        inc     $04D0,x
        lda     #$1C
        jsr     LF850
LD6E2:  rts

LD6E3:  jsr     LFB7B
        bcs     LD6E2
        lda     #$23
        jsr     LF850
        lda     #$14
        sta     $50
        lda     $04E0,x
LD6F4:  and     #$0F
        tay
        lda     $970C,y
        sta     $5B
        lda     $971A,y
        sta     $9C
        lda     $9728,y
        sta     $66
        jsr     LFC29
        jmp     LFA9A

        .byte   $0F
        ora     ($13),y
        ora     $17,x
        ora     $1D1B,y
        .byte   $1F
        and     ($23,x)
        and     $27
        and     #$10
        .byte   $12
        .byte   $14
        asl     $18,x
        .byte   $1A
        .byte   $1C
        asl     $2220,x
        bit     $26
        plp
        rol     a
        .byte   $FF
        .byte   $F0
LD72A:  .byte   $FF
        .byte   $F0
LD72C:  .byte   $FF
        .byte   $F0
LD72E:  .byte   $FF
        .byte   $F0
LD730:  .byte   $FF
        .byte   $F0
LD732:  .byte   $FF
        .byte   $F0
LD734:  .byte   $FF
        beq     LD6F4
        bne     LD73D
        and     #$0F
        bne     LD752
LD73D:  sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$2D
        sta     $0480,x
        lda     #$78
        sta     $0490,x
        inc     $04D0,x
LD752:  lda     $0490,x
        beq     LD75B
        dec     $0490,x
        rts

LD75B:  lda     $04D0,x
        and     #$02
        bne     LD789
        jsr     LF928
        cmp     #$0C
        bcs     LD775
        lda     #$93
        jsr     LFA6C
        jsr     L97B0
        inc     $04D0,x
        rts

LD775:  lda     $0580,x
        and     #$01
        beq     LD782
        jsr     LF4FD
        jmp     L9785

LD782:  jsr     LF51B
        jsr     LF808
        rts

LD789:  lda     $0420,x
        cmp     #$93
        bne     LD79C
        lda     $0430,x
        cmp     #$08
        bne     LD79C
        lda     #$92
        jsr     LFA6C
LD79C:  lda     $0480,x
        bne     LD7AC
        lda     #$2E
        sta     $0480,x
        dec     $04D0,x
        jsr     LF81D
LD7AC:  dec     $0480,x
        rts

        jsr     LFA4C
        bcs     LD7E5
        lda     $0580,x
        sta     $0580,y
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sec
        sbc     #$0C
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$47
        jsr     LFA84
        lda     #$52
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
LD7E5:  rts

        lda     $04D0,x
        and     #$0F
        bne     LD802
        sta     $0530,x
        lda     #$2E
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
LD802:  lda     $04D0,x
        and     #$02
        bne     LD833
        lda     $0580,x
        and     #$01
        beq     LD816
        jsr     LF4FD
        jmp     L9819

LD816:  jsr     LF51B
        jsr     LF5C9
        lda     $0560,x
        .byte   $10
LD820:  ora     ($C9),y
        .byte   $FC
        bne     LD832
        inc     $04D0,x
        lda     #$00
        sta     $0550,x
        lda     #$02
        sta     $0560,x
LD832:  rts

LD833:  jmp     LF539

        lda     $04D0,x
        and     #$0F
        bne     LD84E
        lda     #$80
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        jsr     LB454
LD84D:  rts

LD84E:  lda     $3B
        beq     LD85B
        jsr     LF880
        dec     $3B
        jsr     LF869
        rts

LD85B:  jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LD84D
        jsr     LB39E
        lda     $04D0,x
        and     #$02
        beq     LD872
        jmp     L98F6

LD872:  lda     $0580,x
        and     #$01
        beq     LD889
        jsr     LF24B
        jsr     LF4FD
        lda     $04F0,x
        cmp     #$E8
        bcc     LD89E
        .byte   $4C
LD887:  stx     $98,y
LD889:  jsr     LF2A6
        jsr     LF51B
        lda     $04F0,x
        cmp     #$18
        bcs     LD89E
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LD89E:  lda     $0510,x
        clc
        adc     #$04
        cmp     $0510
        bne     LD8F5
        inc     $04D0,x
        lda     #$0F
        sta     $04B0,x
        lda     #$99
        jsr     LFA6C
        lda     $0510,x
        cmp     #$D0
        bne     LD8CD
        lda     #$8E
        sta     $0550,x
        lda     #$06
        sta     $0560,x
        lda     #$00
        sta     $0480,x
        rts

LD8CD:  cmp     #$50
        bne     LD8DA
        jsr     LF5FC
        lda     #$FF
        sta     $0480,x
        rts

LD8DA:  lda     $E4
        adc     $E5
        sta     $E5
        and     #$07
        tay
        lda     $9959,y
        sta     $0550,x
        lda     $9961,y
        sta     $0560,x
        lda     $9969,y
        sta     $0480,x
LD8F5:  rts

        lda     $04B0,x
        beq     LD8FF
        dec     $04B0,x
        rts

LD8FF:  .byte   $A9
LD900:  .byte   $AB
        jsr     LFA6C
        lda     $0480,x
        bne     LD92C
        jsr     LF5C9
        lda     $0560,x
        bpl     LD8F5
        lda     #$56
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        beq     LD8F5
        jsr     LEDD2
        lda     #$9A
        jsr     LFA6C
        dec     $04D0,x
        rts

LD92C:  jsr     LF5A4
        jsr     LF5DA
        lda     $0560,x
        cmp     #$FC
        bcs     LD8F5
        lda     #$56
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        beq     LD8F5
        jsr     LEDD2
        lda     #$9A
        jsr     LFA6C
        dec     $04D0,x
        lda     #$00
        sta     $0480,x
        rts

        stx     $8EAB
        .byte   $AB
        stx     $8EAB
        .byte   $AB
        asl     $FF
        asl     $FF
        asl     $FF
        asl     $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        lda     $04D0,x
        and     #$0F
        tay
        lda     $9984,y
        sta     L0000
        lda     $9989,y
        sta     $01
        jmp     (L0000)

        stx     $3FAE
        ldx     #$4C
        sta     $9A99,y
        txs
        .byte   $9B
        lda     #$E6
        sta     $0530,x
        lda     #$03
        sta     $0540,x
        lda     #$8E
        sta     $0550,x
        lda     #$06
        sta     $0560,x
        lda     #$14
        sta     $0480,x
        inc     $04D0,x
        jsr     LB454
        rts

        lda     $3B
        beq     LD9B8
        jsr     LF880
        dec     $3B
        rts

LD9B8:  jsr     LB36A
        jsr     LB4BA
        lda     $04E0,x
        cmp     #$4F
        beq     LD9DD
        lda     $0420,x
        cmp     #$67
        beq     LD9DE
        lda     $04FF
        cmp     #$04
        bcs     LD9DE
        lda     #$67
        jsr     LFA6C
        lda     #$35
        jsr     LF850
LD9DD:  rts

LD9DE:  lda     $0410,x
        cmp     #$08
        bne     LD9EA
        lda     #$8A
        sta     $1A
        rts

LD9EA:  cmp     #$0D
        bne     LD9DD
        lda     $E7
        adc     $E6
        sta     $E6
        and     #$0F
        tay
        lda     $9A1F,y
        sta     $04D0,x
        lda     $9A2F,y
        jsr     LFA6C
        lda     $0420,x
        cmp     #$6C
        bne     LDA1E
        lda     #$E6
        sta     $0530,x
        lda     #$03
        sta     $0540,x
        lda     #$8E
        sta     $0550,x
        lda     #$06
        sta     $0560,x
LDA1E:  rts

        .byte   $82
        .byte   $82
        sty     $84
        .byte   $82
        .byte   $82
        sty     $84
        .byte   $82
        .byte   $82
        sty     $84
        .byte   $82
        .byte   $82
        sty     $84
        pla
        pla
        jmp     (L686C)

        pla
        jmp     (L686C)

        pla
        jmp     (L686C)

        pla
        jmp     (L206C)

        ror     a
        .byte   $B3
        jsr     LB4BA
        lda     $04E0,x
        cmp     #$4F
        beq     LDA7A
        lda     $0420,x
        cmp     #$6B
        beq     LDA7B
        lda     $0410,x
        cmp     #$01
        bne     LDA67
        lda     $0430,x
        cmp     #$02
        bne     LDA67
        jsr     LF81D
        jsr     L9B93
LDA67:  lda     $0410,x
        cmp     #$02
        bne     LDA7A
        lda     $0430,x
        cmp     #$08
        bne     LDA7A
        lda     #$6B
        jsr     LFA6C
LDA7A:  rts

LDA7B:  lda     #$01
        sta     $0410,x
        lda     #$00
        sta     $0430,x
        lda     $0480,x
        bne     LDA9E
        lda     #$15
        sta     $0480,x
        lda     $04FF
        cmp     #$28
        bne     LDAA1
        inc     $04D0,x
        lda     #$67
        jsr     LFA6C
LDA9E:  dec     $0480,x
LDAA1:  rts

        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LDAA1
        jsr     LB39E
        lda     $0420,x
        cmp     #$67
        bne     LDAD4
        lda     $0410,x
        cmp     #$0D
        bne     LDAD3
        lda     #$8B
        sta     $1A
        lda     #$6A
        jsr     LFA6C
        lda     #$80
        sta     $0530,x
        lda     #$02
        sta     $0540,x
        jsr     LF5FC
LDAD3:  rts

LDAD4:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        php
        ldy     #$02
        lda     $0490,x
        and     #$01
        beq     LDB10
        lda     #$00
        jsr     LF200
        lda     $04F0,x
        cmp     #$E8
        bcc     LDB0D
        lda     $0490,x
        eor     #$01
        sta     $0490,x
        jsr     LF2A6
        lda     $04FF
        cmp     #$28
        beq     LDB0D
        lda     #$6B
        jsr     LFA6C
        lda     #$81
        sta     $04D0,x
LDB0D:  jmp     L9B38

LDB10:  lda     #$03
        jsr     LF254
        lda     $04F0,x
        cmp     #$18
        bcs     LDB38
        jsr     LF24B
        lda     $0490,x
        eor     #$01
        sta     $0490,x
        lda     $04FF
        cmp     #$28
        beq     LDB38
        lda     #$6B
        jsr     LFA6C
        lda     #$81
        sta     $04D0,x
LDB38:  plp
        bcc     LDB4B
        lda     $10
        cmp     #$03
        bcc     LDB4B
        lda     #$00
        sta     $0550,x
        lda     #$04
        sta     $0560,x
LDB4B:  rts

        jsr     LB36A
        jsr     LB4BA
        lda     $04E0,x
        cmp     #$4F
        beq     LDB4B
        lda     $0420,x
        cmp     #$68
        beq     LDB92
        lda     $0490,x
        and     #$01
        beq     LDB6D
        jsr     LF4FD
        jmp     L9B70

LDB6D:  jsr     LF51B
        ldy     #$02
        lda     #$56
        jsr     LF2D7
        lda     $10
        cmp     #$03
        bcc     LDB92
        lda     $0490,x
        eor     #$01
        sta     $0490,x
        lda     #$68
        jsr     LFA6C
        jsr     LF81D
        lda     #$82
        sta     $04D0,x
LDB92:  rts

        jsr     LFA4C
        bcs     LDBE7
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $9BE8,y
        pha
        lda     $0500,x
        adc     $9BE9,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     #$C8
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$6E
        jsr     LFA84
        lda     $0400,y
        ora     #$20
        sta     $0400,y
        lda     #$55
        sta     $04E0,y
        lda     #$00
        sta     $0570,y
        sta     $0550,y
        sta     $05A0,y
        lda     #$03
        sta     $0560,y
LDBE7:  rts

        rol     L0000
        .byte   $DA
        .byte   $FF
        lda     $04D0,x
        and     #$0F
        bne     LDC01
        sta     $0480,x
        lda     $0400,x
        and     #$DF
        sta     $0400,x
        inc     $04D0,x
LDC01:  lda     $04D0,x
        and     #$02
        bne     LDC47
        lda     $0510,x
        cmp     #$B8
        bcc     LDC12
        jsr     LF55E
LDC12:  inc     $0480,x
        lda     $0480,x
        cmp     #$07
        bcc     LDC46
        lda     #$36
        jsr     LF850
        jsr     LF93F
        tay
        lda     $A967,y
        sta     $0580,x
        lda     $9CAC,y
        sta     $0530,x
        lda     $9CBC,y
        sta     $0540,x
        lda     $9CCC,y
        sta     $0550,x
        lda     $9CDC,y
        sta     $0560,x
        inc     $04D0,x
LDC46:  rts

LDC47:  lda     $0420,x
        cmp     #$5D
        beq     LDC64
        lda     #$06
        sta     $0570,x
        jsr     LFAAE
        bcs     LDC64
        lda     #$03
        sta     $01
        stx     L0000
        jsr     L9CEC
        jmp     LFA9A

LDC64:  lda     $0580,x
        cmp     #$01
        beq     LDC88
        cmp     #$02
        beq     LDC8B
        cmp     #$08
        beq     LDC8E
        cmp     #$04
        beq     LDC91
        cmp     #$09
        beq     LDC94
        cmp     #$05
        beq     LDC9A
        cmp     #$0A
        beq     LDCA0
        cmp     #$06
        beq     LDCA6
        rts

LDC88:  jmp     LF4FD

LDC8B:  jmp     LF51B

LDC8E:  jmp     LF55E

LDC91:  jmp     LF539

LDC94:  jsr     LF4FD
        jmp     LF55E

LDC9A:  jsr     LF4FD
        jmp     LF539

LDCA0:  jsr     LF51B
        jmp     LF55E

LDCA6:  jsr     LF51B
        jmp     LF539

        brk
        pha
        rol     $8028
        plp
        rol     a:$48
        pha
        rol     $8028
        plp
        rol     a:$48
LDCBD:  ora     ($03,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     (L0000,x)
        ora     ($03,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     ($80,x)
        plp
        rol     a:$48
        pha
        rol     $8028
        plp
        rol     a:$48
        pha
        rol     $0428
        .byte   $04
        .byte   $03
        ora     (L0000,x)
        ora     ($03,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     (L0000,x)
        ora     ($03,x)
        .byte   $04
LDCEC:  jsr     LFA4C
        bcs     LDD3D
        ldx     $01
        lda     $9D40,x
        sta     $0530,y
        sta     $0550,y
        lda     $9D44,x
        sta     $0540,y
        sta     $0560,y
        lda     $9D48,x
        sta     $0580,y
        lda     #$69
        jsr     LFA84
        ldx     L0000
        lda     #$0B
        sta     $04E0,y
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0520,x
        sta     $0520,y
        lda     $0510,x
        sta     $0510,y
        lda     #$00
        sta     $05A0,y
        lda     #$0A
        sta     $0570,y
        dec     $01
        bpl     LDCEC
LDD3D:  ldx     L0000
        rts

        .byte   $E2
        .byte   $E2
        .byte   $E2
        .byte   $E2
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        asl     a
        asl     $09
        ora     $BD
        bne     LDD53
        and     #$0F
        bne     LDD68
LDD53:  sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$B4
        sta     $0480,x
        lda     #$78
        sta     $0490,x
        inc     $04D0,x
LDD68:  lda     $0490,x
        beq     LDD71
        dec     $0490,x
        rts

LDD71:  lda     $04D0,x
        and     #$02
        bne     LDD96
        lda     $0470,x
        sec
        sbc     $0530,x
        sta     $0470,x
        lda     $04F0,x
        sbc     $0540,x
        sta     $04F0,x
        lda     $04F0,x
        cmp     #$28
        bne     LDD95
        inc     $04D0,x
LDD95:  rts

LDD96:  lda     $0480,x
        bne     LDDA3
        lda     #$B5
        sta     $0480,x
        dec     $04D0,x
LDDA3:  dec     $0480,x
        rts

        lda     $04D0,x
        and     #$0F
        tay
        lda     $9DBA,y
        sta     L0000
        lda     $9DBF,y
        sta     $01
        jmp     (L0000)

        cpy     $DA
LDDBC:  ora     $10A0,y
        sta     $9E9D,x
        .byte   $9E
        .byte   $9F
        lda     #$00
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        jsr     LB454
        lda     #$0F
        sta     $0480,x
LDDD9:  rts

        lda     $3B
        .byte   $F0
LDDDD:  ora     #$20
        .byte   $80
        sed
        dec     $3B
        jsr     LF869
        rts

        lda     $0420,x
        cmp     #$43
        beq     LDE02
        lda     $0480,x
        bne     LDDFE
        lda     #$00
        sta     $0480,x
        lda     #$43
        jsr     LFA6C
        rts

LDDFE:  dec     $0480,x
        rts

LDE02:  lda     $0410,x
        cmp     #$02
        bne     LDE18
        lda     $0430,x
        cmp     #$08
        bne     LDE18
        lda     #$41
        jsr     LFA6C
        inc     $04D0,x
LDE18:  rts

        jsr     LB36A
        lda     $0420,x
        cmp     #$41
        bne     LDE30
        jsr     LB4BA
        lda     $04E0,x
        cmp     #$4F
        beq     LDDD9
        jmp     L9E3A

LDE30:  lda     $04E0,x
        cmp     #$4F
        beq     LDDD9
        jsr     LB39E
        lda     $0490,x
        bne     LDE84
        lda     $0580,x
        and     #$01
        beq     LDE56
        jsr     LF24B
        jsr     LF4FD
        lda     $04F0,x
        cmp     #$E8
        bcc     LDE6B
        jmp     L9E63

LDE56:  jsr     LF2A6
        jsr     LF51B
        lda     $04F0,x
        cmp     #$18
        bcs     LDE6B
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LDE6B:  lda     $04F0,x
        cmp     #$C0
        beq     LDE81
        lda     $04F0,x
        cmp     #$80
        beq     LDE81
        lda     $04F0,x
        cmp     #$40
        beq     LDE81
        rts

LDE81:  jmp     L9F43

LDE84:  lda     $0410,x
        cmp     #$02
        bne     LDE9F
        lda     $0430,x
        cmp     #$08
        bne     LDE9F
        lda     #$44
        jsr     LFA6C
        lda     #$06
        sta     $0570,x
        inc     $04D0,x
LDE9F:  rts

        lda     $0410,x
        cmp     #$03
        bne     LDEB3
        lda     $0430,x
        cmp     #$04
        bne     LDEB3
        lda     #$37
        jsr     LF850
LDEB3:  jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LDE9F
        jsr     LB39E
        lda     $04A0,x
        bne     LDEF2
        lda     $0410,x
        cmp     #$05
        beq     LDED6
        cmp     #$08
        beq     LDED6
        cmp     #$0B
        beq     LDED6
        bne     LDEE0
LDED6:  lda     $0430,x
        cmp     #$04
        bne     LDEE0
        jsr     L9F8F
LDEE0:  lda     $0410,x
        cmp     #$0C
        bne     LDEF1
        lda     $0430,x
        cmp     #$04
        bne     LDEF1
        inc     $04A0,x
LDEF1:  rts

LDEF2:  lda     #$00
        sta     $0410,x
        sta     $0430,x
        lda     $0490,x
        bne     LDF0C
        lda     #$43
        jsr     LFA6C
        lda     #$10
        sta     $0570,x
        inc     $04D0,x
LDF0C:  dec     $0490,x
        rts

        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LDF1D
        jsr     LB39E
LDF1D:  lda     $0410,x
        cmp     #$02
        bne     LDF3D
        lda     $0430,x
        cmp     #$08
        bne     LDF3D
        lda     #$41
        jsr     LFA6C
        lda     #$00
        sta     $04A0,x
        sta     $0490,x
        lda     #$82
        sta     $04D0,x
LDF3D:  lda     #$10
        sta     $0570,x
        rts

        .byte   $A5
LDF44:  inc     $65
        .byte   $E7
        sta     $E7
        and     #$0F
        tay
        lda     $9F5F,y
        sta     $0490,x
        lda     $9F6F,y
        jsr     LFA6C
        lda     $9F7F,y
        sta     $0480,x
        rts

        brk
        bmi     LDF62
LDF62:  bmi     LDF64
LDF64:  bmi     LDF66
LDF66:  bmi     LDF98
        brk
        bmi     LDF6B
LDF6B:  bmi     LDF6D
LDF6D:  bmi     LDF6F
LDF6F:  eor     ($42,x)
        eor     ($42,x)
        eor     ($42,x)
        eor     ($42,x)
        .byte   $42
        eor     ($42,x)
        eor     ($42,x)
        eor     ($42,x)
        eor     (L0000,x)
        ora     (L0000,x)
        brk
        brk
        ora     (L0000,x)
        brk
        ora     (L0000,x)
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        jsr     LFA4C
        bcs     LDFDD
        sty     $0F
        .byte   $BD
        .byte   $80
LDF98:  ora     $99
        .byte   $80
        ora     $AD
        beq     LDFA3
        sta     $04F0,y
        .byte   $AD
LDFA3:  brk
        ora     $99
        brk
        ora     $A9
        beq     LDF44
        bpl     LDFB2
        lda     $0520
        .byte   $99
        .byte   $20
LDFB2:  ora     $A9
        .byte   $44
        sta     $0570,y
        lda     $0480,x
        bne     LDFC9
        lda     #$45
        jsr     LFA84
        lda     #$59
        sta     $04E0,y
        bne     LDFD3
LDFC9:  lda     #$46
        jsr     LFA84
        lda     #$58
        sta     $04E0,y
LDFD3:  lda     #$44
        sta     $0570,y
        lda     #$01
        sta     $05A0,y
LDFDD:  rts

LDFDE:  lda     $04D0,x
        and     #$0F
        bne     LE000
        sta     $0480,x
        sta     $04A0,x
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        inc     $04D0,x
        lda     #$01
        sta     $05A0,x
        lda     #$14
        sta     $0490,x
LE000:  lda     $0480,x
        bne     LE018
        jsr     LF55E
        lda     $0510,x
        cmp     #$D0
        bcs     LE017
        lda     #$FF
        sta     $0480,x
        jsr     LA03C
LE017:  rts

LE018:  lda     $0490,x
        bne     LE038
        jsr     LF5C9
LE020:  lda     $04A0,x
        bne     LE017
        lda     $0510,x
        cmp     #$B0
        bcs     LE017
        inc     $04A0,x
        jsr     LA102
        lda     #$38
        jsr     LF850
        rts

LE038:  dec     $0490,x
        rts

        lda     $E4
        adc     $E5
        sta     $E5
        and     #$03
        tay
        lda     $A052,y
        sta     $0550,x
        lda     $A056,y
        sta     $0560,x
        rts

        nop
        nop
        nop
        nop
        .byte   $07
        php
        ora     #$07
        lda     $04D0,x
        and     #$0F
        bne     LE087
        sta     $0480,x
        sta     $0550,x
        sta     $0530,x
        lda     #$01
        sta     $0560,x
        lda     #$03
        sta     $0540,x
        inc     $04D0,x
        lda     #$01
        sta     $05A0,x
        jsr     LA0ED
        sta     $04A0,x
        lda     #$14
        sta     $0490,x
LE087:  lda     $04D0,x
        and     #$02
        bne     LE0D2
        lda     #$00
        sta     $0430,x
        sta     $0410,x
        jsr     LF81D
        jsr     LF55E
        lda     $0480,x
        bne     LE0B3
        lda     $0510,x
        cmp     #$B0
        bcs     LE0B3
        jsr     LA102
        lda     #$38
        jsr     LF850
        inc     $0480,x
LE0B3:  lda     $0510,x
        cmp     $04A0,x
        bcs     LE0D1
        inc     $04D0,x
        jsr     LF81D
        lda     #$D4
        sta     $0550,x
        sta     $0530,x
        lda     #$02
        sta     $0560,x
        sta     $0540,x
LE0D1:  rts

LE0D2:  lda     #$01
        sta     $0410,x
        sta     $0430,x
        lda     $0580,x
        and     #$01
        beq     LE0E7
        jsr     LF4FD
        jmp     LA0EA

LE0E7:  jsr     LF51B
        jmp     LF539

        lda     $E5
        adc     $E4
        sta     $E4
        and     #$07
        tay
        lda     $A0FA,y
        rts

        plp
        pha
        sec
        cli
        sei
        cli
        sec
        pha
        jsr     LFA4C
        bcs     LE0D1
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     #$B0
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$00
        sta     $0570,y
        sta     $04E0,y
        lda     #$47
        jsr     LFA84
        rts

        jsr     LA3F5
        lda     L0000
        cmp     #$FF
        beq     LE165
        lda     $04D0,x
        and     #$0F
        tay
        lda     $A490,y
        sta     L0000
        lda     $A49A,y
        sta     $01
        jmp     (L0000)

        lda     #$00
        sta     $04BD
        jsr     LB487
        inc     $04D0,x
        lda     #$01
        sta     $04BC
        lda     #$0E
        sta     $04BD
        lda     #$08
        sta     $04AC
        jsr     LA414
LE165:  rts

        lda     $3B
        beq     LE170
        jsr     LF880
        dec     $3B
        rts

LE170:  jsr     LA3D8
        lda     $0580,x
        and     #$01
        beq     LE189
        jsr     LF4FD
        lda     $04F0,x
        sec
        cmp     #$F0
        bcs     LE198
        jsr     LA1AC
        rts

LE189:  jsr     LF51B
        lda     $04F0,x
        sec
        cmp     #$18
        bcc     LE198
        jsr     LA1AC
        rts

LE198:  lda     $0580,x
        eor     #$03
        sta     $0580,x
        jsr     LF808
        jsr     LA1AC
        lda     #$00
        sta     $04A0,x
        rts

        lda     $04A0,x
        beq     LE1B2
        rts

LE1B2:  lda     #$02
        sta     $0490,x
        lda     $0510
        cmp     #$44
        beq     LE1C5
        cmp     #$B4
        bne     LE1C8
        dec     $0490,x
LE1C5:  dec     $0490,x
LE1C8:  lda     $0490,x
        cmp     $0480,x
        beq     LE1D1
        rts

LE1D1:  jsr     LF81D
        jsr     LA443
        lda     $0510,x
        cmp     #$80
        bcc     LE1EA
        lda     #$82
        sta     $04D0,x
        jsr     LA427
        lda     #$49
        bne     LE1F4
LE1EA:  lda     #$83
        sta     $04D0,x
        jsr     LF5FC
        lda     #$49
LE1F4:  jsr     LFA6C
        rts

        lda     $0560,x
        bmi     LE201
        jsr     LF5C9
        rts

LE201:  ldy     #$02
        lda     #$06
        jsr     LF2D7
        bcc     LE226
        lda     $04D0,x
        cmp     #$84
        beq     LE270
        inc     $0480,x
        lda     #$81
        sta     $04D0,x
        lda     #$4A
        jsr     LFA6C
        jsr     LA414
        lda     #$01
        sta     $04A0,x
LE226:  rts

        lda     $0550,x
        clc
        adc     #$40
        sta     $0550,x
        lda     $0560,x
        adc     #$00
        sta     $0560,x
        lda     $0510,x
        sec
        sbc     #$80
        bcs     LE244
        jsr     LF539
        rts

LE244:  ldy     #$02
        lda     #$06
        jsr     LF2AF
        lda     $10
        beq     LE26B
        lda     $04D0,x
        cmp     #$85
        beq     LE285
        dec     $0480,x
        lda     #$81
        sta     $04D0,x
        lda     #$4A
        jsr     LFA6C
        jsr     LA414
        lda     #$01
        sta     $04A0,x
LE26B:  rts

        jsr     LA1F8
        rts

LE270:  jsr     LA408
        lda     #$4A
        jsr     LFA6C
        inc     $0480,x
        lda     #$86
        sta     $04D0,x
        rts

        jsr     LA227
        rts

LE285:  lda     #$86
        sta     $04D0,x
        jsr     LA408
        lda     #$4A
        jsr     LFA6C
        dec     $0480,x
        rts

        lda     $04AE
        sec
        sbc     #$0C
        tay
        lda     $A4AD,y
        cmp     $04F0,x
        beq     LE2C9
        bcc     LE2BD
        lda     $A4B0,y
        cmp     $04F0,x
        beq     LE2C9
        bcc     LE2BD
        lda     #$01
        sta     $0580,x
        jsr     LF808
        jsr     LF4FD
        rts

LE2BD:  lda     #$02
        sta     $0580,x
        jsr     LF808
        jsr     LF51B
        rts

LE2C9:  lda     #$78
        sta     $04B0,x
        lda     #$4B
        jsr     LFA6C
        lda     #$87
        sta     $04D0,x
        lda     $04AE
        cmp     #$0E
        bne     LE2E6
        lda     #$01
        sta     $0580,x
        bne     LE2EB
LE2E6:  lda     #$02
        sta     $0580,x
LE2EB:  jsr     LF808
        rts

        dec     $04B0,x
        bne     LE302
        jsr     LA438
        lda     #$89
        sta     $04D0,x
        lda     #$49
        jsr     LFA6C
        rts

LE302:  lda     $04B0,x
        cmp     #$28
        beq     LE312
        cmp     #$50
        beq     LE312
        cmp     #$77
        beq     LE312
        rts

LE312:  lda     #$39
        jsr     LF850
        rts

        lda     #$49
        jsr     LFA6C
        ldy     #$02
        lda     #$06
        jsr     LF2D7
        lda     $10
        beq     LE33E
        lda     #$81
        sta     $04D0,x
        lda     #$4A
        jsr     LFA6C
        jsr     LA414
        lda     #$01
        sta     $04A0,x
        jsr     LF81D
        rts

LE33E:  lda     $0560,x
        bne     LE373
        lda     #$55
        jsr     LFA6C
        stx     $0A
        ldx     $04AE
        lda     $0480,x
        beq     LE371
        lda     #$00
        sta     $0480,x
        lda     #$0D
        sta     $05A0,x
        lda     #$56
        sta     $0420,x
        lda     #$00
        sta     $0430,x
        sta     $0410,x
        dec     $04D0,x
        lda     #$2C
        jsr     LF850
LE371:  ldx     $0A
LE373:  cmp     #$FF
        beq     LE378
        rts

LE378:  lda     #$55
        jsr     LFA6C
        rts

        lda     $04AE
        sec
        sbc     #$0C
        tay
        lda     $A4AA,y
        cmp     $0480,x
        beq     LE3AD
        cmp     #$00
        beq     LE39F
        lda     #$84
        sta     $04D0,x
        jsr     LA427
        lda     #$49
        jsr     LFA6C
        rts

LE39F:  lda     #$85
        sta     $04D0,x
        jsr     LF5FC
        lda     #$49
        jsr     LFA6C
        rts

LE3AD:  lda     $04F0,x
        cmp     $A4AD,y
        beq     LE3C8
        cmp     $A4B0,y
        beq     LE3C8
        lda     #$86
        sta     $04D0,x
        jsr     LA408
        lda     #$4A
        jsr     LFA6C
        rts

LE3C8:  lda     #$78
        sta     $04B0,x
        lda     #$4B
        jsr     LFA6C
        lda     #$87
        sta     $04D0,x
        rts

        sty     $0F
        ldy     #$0C
LE3DC:  lda     $0480,y
        bne     LE3E7
        iny
        cpy     #$0F
        bne     LE3DC
        rts

LE3E7:  sec
        sbc     #$0C
        sty     $04AE
        lda     #$88
        sta     $04D0,x
        ldy     $0F
        rts

        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LE403
        jsr     LB39E
        rts

LE403:  lda     #$FF
        sta     L0000
        rts

        lda     #$00
        sta     $0530,x
        lda     #$02
        sta     $0540,x
        bne     LE41E
        lda     #$80
        sta     $0530,x
        lda     #$01
        sta     $0540,x
LE41E:  lda     #$00
        sta     $0550,x
        sta     $0560,x
        rts

        lda     #$00
        sta     $0550,x
        sta     $0530,x
        sta     $0540,x
        lda     #$08
        sta     $0560,x
        rts

        lda     #$00
        sta     $0550,x
        lda     #$04
        sta     $0560,x
        rts

        jsr     LFA4C
        bcs     LE48F
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $A4A6,y
        pha
        lda     $0500,x
        adc     $A4A7,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$40
        jsr     LFA84
        lda     #$01
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        lda     #$00
        sta     $0530,y
        lda     #$03
        sta     $0540,y
LE48F:  rts

        pha
        ror     $F8
        .byte   $27
        jmp     (L9681)

        .byte   $EF
        ror     $A118,x
        lda     ($A1,x)
        ldx     #$A2
        ldx     #$A2
        ldx     #$A3
        .byte   $A3
        ldy     $44,x
        bpl     LE4A8
LE4A8:  .byte   $F0
LE4A9:  .byte   $FF
        ora     (L0000,x)
        ora     ($E0,x)
        dey
        jsr     L87DF
        .byte   $1F
        lda     $3B
        bne     LE502
        jsr     LA51E
        jmp     LA4C1

        lda     $3B
        bne     LE502
        lda     $04D0,x
        and     #$0F
        tay
        lda     $A5B1,y
        sta     L0000
        lda     $A5B4,y
        sta     $01
        jmp     (L0000)

        cpx     #$0D
        beq     LE4E1
        inc     $04D0,x
        lda     #$0D
        sta     $05A0,x
        rts

LE4E1:  lda     #$09
        sta     $05A0,x
        lda     #$01
        sta     $0580,x
        jsr     LF808
        lda     #$00
        jsr     LFA6C
        lda     #$01
        sta     $0480,x
        lda     #$80
        sta     $05A0,x
        lda     #$82
        sta     $04D0,x
LE502:  rts

        lda     $05A0,x
        cmp     #$0A
        bpl     LE51C
        lda     #$00
        jsr     LFA6C
        lda     #$01
        sta     $0480,x
        inc     $04D0,x
        lda     #$80
        sta     $05A0,x
LE51C:  rts

        rts

        stx     $04BE
        lda     $04BD
        beq     LE54A
        dec     $04BC
        bne     LE54A
        inc     $04BD
        lda     $04BD
        cmp     #$0F
        bne     LE53A
        lda     #$0C
        sta     $04BD
LE53A:  ldx     $04BD
        lda     $0480,x
        bne     LE545
        jsr     LA54E
LE545:  lda     #$64
        sta     $04BC
LE54A:  ldx     $04BE
        rts

        jsr     LFA4C
        bcs     LE5AE
        lda     #$29
        jsr     LF850
        sty     $0F
        lda     $0500,x
        sta     $0500,y
        lda     $04F0,x
        sta     $04F0,y
        lda     $0510,x
        sec
        adc     #$0B
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$4D
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$13
        sta     $0570,y
        stx     $0E
        sty     $0D
        tya
        tax
        jsr     LF93F
        ldx     $0D
        tay
        lda     $A5B7,y
        sta     $0530,x
        lda     $A5C7,y
        sta     $0540,x
        lda     $A5D7,y
        sta     $0550,x
        lda     $A5E7,y
        sta     $0560,x
        lda     $A967,y
        sta     $0580,x
LE5AE:  ldx     $0E
        rts

        .byte   $D4
        .byte   $03
        ora     $A5A4,x
        lda     L0000
        .byte   $80
        brk
        jmp     L4C80

        brk
        .byte   $80
        brk
        .byte   $80
        brk
        jmp     L4C80

        brk
        .byte   $80
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        .byte   $80
        jmp     L8000

        brk
        .byte   $80
        brk
        jmp     L4C80

        brk
        .byte   $80
        brk
        .byte   $80
        brk
        jmp     L0101

        ora     (L0000,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        ora     ($01,x)
        jsr     LA7D2
        lda     $04B0,x
        cmp     #$FF
        beq     LE625
        jsr     LA793
        lda     $04D0,x
        and     #$0F
        tay
        lda     $A831,y
        sta     L0000
        lda     $A838,y
        sta     $01
        jmp     (L0000)

        inc     $04D0,x
        jsr     LB454
        jsr     LA7FC
        lda     #$07
        .byte   $9D
LE623:  bcc     LE629
LE625:  rts

        lda     $3B
        .byte   $F0
LE629:  asl     $20
        .byte   $80
        sed
        dec     $3B
        rts

        lda     #$50
        jsr     LFA6C
        dec     $04AE
        bmi     LE640
        lda     #$4F
        jsr     LFA6C
        rts

LE640:  lda     #$00
        sta     $0480,x
        lda     $0560,x
        bmi     LE650
        jsr     LF5C9
        jmp     LA68A

LE650:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        bcc     LE68A
        dec     $0490,x
        lda     $0490,x
        beq     LE6A9
        lda     #$08
        sta     $04AE
        jsr     LA7FC
        lda     $0490,x
        cmp     #$06
        beq     LE686
        cmp     #$04
        beq     LE686
        cmp     #$02
        beq     LE686
        jsr     LA7FC
        lda     #$80
        sta     $0480,x
        lda     #$4F
        jsr     LFA6C
        rts

LE686:  jsr     LA7AB
        rts

LE68A:  lda     $0580,x
        and     #$01
        beq     LE69D
        jsr     LF4FD
        lda     $04F0,x
        sec
        cmp     #$F0
        bcs     LE6AF
        rts

LE69D:  jsr     LF51B
        lda     $04F0,x
        sec
        cmp     #$10
        bcc     LE6AF
        rts

LE6A9:  lda     #$08
        sta     $0490,x
        rts

LE6AF:  lda     $0580,x
        eor     #$03
        sta     $0580,x
        jsr     LF808
        rts

        lda     #$00
        sta     $0480,x
        lda     $0560,x
        bmi     LE6C9
        jsr     LF5C9
        rts

LE6C9:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        bcc     LE6E0
        inc     $04A0,x
        dec     $04D0,x
        jsr     LA7FC
        lda     #$80
        sta     $0480,x
LE6E0:  rts

        lda     #$00
        sta     $0480,x
        lda     $0550,x
        clc
        adc     #$40
        sta     $0550,x
        lda     $0560,x
        adc     #$00
        sta     $0560,x
        sty     $0C
        lda     $04A0,x
        tay
        lda     $A843,y
        sta     $0D
        ldy     $0C
        lda     $0510,x
        sec
        sbc     $0D
        bcs     LE710
        jsr     LF539
        rts

LE710:  ldy     #$02
        lda     #$56
        jsr     LF2AF
        lda     $10
        beq     LE72C
        dec     $04D0,x
        dec     $04D0,x
        dec     $04A0,x
        jsr     LA7FC
        lda     #$80
        sta     $0480,x
LE72C:  rts

        lda     #$00
        sta     $0480,x
        lda     $0560,x
        bmi     LE73B
        jsr     LF5C9
        rts

LE73B:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        bcc     LE753
        inc     $04A0,x
        lda     $04A0,x
        cmp     #$02
        beq     LE754
        lda     #$80
        sta     $0480,x
LE753:  rts

LE754:  inc     $04D0,x
        lda     #$80
        sta     $04B0,x
        lda     #$51
        jsr     LFA6C
        jsr     LA822
        lda     #$88
        sta     $048E
        lda     #$52
        sta     $042E
        lda     #$00
        sta     $043E
        sta     $041E
        rts

        dec     $04B0,x
        bne     LE784
        inc     $04D0,x
        lda     #$50
        jsr     LFA6C
LE784:  rts

        lda     #$83
        sta     $04D0,x
        jsr     LA822
        lda     #$00
        sta     $04B0,x
        rts

        lda     $0480,x
        beq     LE7AA
        lda     $04B0,x
        beq     LE7AA
        lda     #$84
        sta     $04D0,x
        jsr     LA80F
        lda     #$50
        jsr     LFA6C
LE7AA:  rts

        lda     $E4
        adc     $E5
        sbc     $0490,x
        sta     $E5
        and     #$03
        tay
        lda     $A83F,y
        beq     LE7CA
        lda     $04A0,x
        beq     LE7CB
        inc     $04D0,x
        inc     $04D0,x
        jsr     LA822
LE7CA:  rts

LE7CB:  inc     $04D0,x
        jsr     LA80F
        rts

        lda     $EE
        sta     $09
        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LE7F6
        jsr     LB39E
        lda     $EE
        cmp     $09
        beq     LE7F5
        lda     $04A0,x
        cmp     #$02
        beq     LE7F5
        lda     #$01
        sta     $04B0,x
LE7F5:  rts

LE7F6:  lda     #$FF
        sta     $04B0,x
        rts

        lda     #$00
        sta     $0550,x
        sta     $0530,x
        lda     #$04
        sta     $0560,x
        lda     #$01
        sta     $0540,x
        rts

        lda     #$80
        sta     $0550,x
        lda     #$06
        sta     $0560,x
        lda     #$00
        sta     $0530,x
        sta     $0540,x
        rts

        lda     #$00
        sta     $0550,x
        sta     $0560,x
        sta     $0530,x
        sta     $0540,x
        rts

        .byte   $17
        rol     $BB
        sbc     ($2D,x)
        .byte   $77
        sta     $A6
        ldx     $A6
        ldx     $A7
        .byte   $A7
        .byte   $A7
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ldy     #$50
        lda     $0480,x
        beq     LE85B
        dec     $0480,x
        cmp     #$6F
        beq     LE897
        cmp     #$41
        beq     LE897
        cmp     #$15
        beq     LE897
        rts

LE85B:  lda     #$00
        jsr     LFA6C
        sty     $0F
        lda     $E4
        adc     $E5
        sta     $E5
        and     #$0F
        tay
        lda     $A90B,y
        sta     $04B0,x
        cmp     #$02
        bmi     LE87C
        lda     #$02
        sta     $0580,x
        bne     LE881
LE87C:  lda     #$01
        sta     $0580,x
LE881:  jsr     LF808
        lda     $04B0,x
        tay
        lda     $A91B,y
        sta     $04F0,x
        lda     $A91F,y
        sta     $0510,x
        ldy     $0F
        rts

LE897:  jsr     LFA4C
        bcs     LE908
        sty     $0F
        lda     #$3A
        jsr     LF850
        lda     $0580,x
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $A923,y
        pha
        lda     $0500,x
        adc     $A924,y
        ldy     $0F
        .byte   $99
        brk
LE8BB:  ora     $68
        sta     $04F0,y
        lda     $0510,x
        sec
        adc     #$05
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$4E
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        stx     $0E
        sty     $0D
        tya
        tax
        jsr     LF93F
        ldx     $0D
        tay
        lda     $A927,y
        sta     $0530,x
        lda     $A937,y
        sta     $0540,x
        lda     $A947,y
        sta     $0550,x
        lda     $A957,y
        .byte   $9D
LE900:  rts

        ora     $B9
        .byte   $67
        lda     #$9D
        .byte   $80
        .byte   $05
LE908:  ldx     $0E
        rts

        brk
        ora     ($02,x)
        .byte   $03
        brk
        ora     ($02,x)
        .byte   $03
        brk
        ora     ($02,x)
        .byte   $03
        brk
        ora     ($02,x)
        .byte   $03
        jsr     LE020
        cpx     #$50
        tya
        bvc     LE8BB
        .byte   $14
        brk
        cpx     a:$FF
        bit     $1F
        cmp     L0000
        cmp     $1F
        bit     L0000
        bit     $1F
        cmp     L0000
        cmp     $1F
        bit     L0000
        ora     ($02,x)
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $02
        ora     (L0000,x)
        ora     ($02,x)
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $02
        ora     (L0000,x)
        cmp     $1F
        bit     L0000
        bit     $1F
        cmp     L0000
        cmp     $1F
        bit     L0000
        bit     $1F
        cmp     $03
        .byte   $02
        .byte   $02
        ora     (L0000,x)
        ora     ($02,x)
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $02
        ora     (L0000,x)
        ora     ($02,x)
        .byte   $02
        php
        ora     #$09
        ora     #$01
        ora     $05
        ora     $04
        asl     $06
        asl     $02
        asl     a
        asl     a
        asl     a
        lda     $04D0,x
        and     #$0F
        bne     LE992
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        lda     #$1E
        sta     $0490,x
        jsr     LB454
LE991:  rts

LE992:  lda     $3B
        beq     LE99F
        jsr     LF880
        dec     $3B
        jsr     LF869
        rts

LE99F:  jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LE991
        jsr     LB39E
        lda     $04D0,x
        and     #$0F
        tay
        lda     $A9BF,y
        sta     L0000
        lda     $A9C8,y
        sta     $01
        jmp     (L0000)

        .byte   $27
        cmp     ($E8),y
        rol     LFCA6,x
        .byte   $33
        lsr     $8C
        tax
        lda     #$A9
        tax
        tax
        tax
        .byte   $AB
        .byte   $AB
        .byte   $AB
        lda     $0410,x
        cmp     #$09
        bne     LE9E7
        lda     $0430,x
        cmp     #$02
        bne     LE9E7
        lda     #$59
        jsr     LFA6C
        inc     $04D0,x
LE9E7:  rts

        lda     $0480,x
        and     #$01
        beq     LEA07
        jsr     LF24B
        jsr     LF4FD
        lda     $04F0,x
        cmp     #$F0
        bcc     LEA04
        lda     $0480,x
        eor     #$01
        sta     $0480,x
LEA04:  jmp     LAA1C

LEA07:  jsr     LF2A6
        jsr     LF51B
        lda     $04F0,x
        cmp     #$10
        bcs     LEA1C
        lda     $0480,x
        eor     #$01
        sta     $0480,x
LEA1C:  lda     $04F0,x
        cmp     #$DC
        beq     LEA28
        cmp     #$24
        beq     LEA28
        rts

LEA28:  inc     $04D0,x
        jsr     LF81D
        lda     #$58
        jsr     LFA6C
        lda     #$8E
        sta     $0550,x
        lda     #$06
        sta     $0560,x
        rts

        jsr     LF5C9
        lda     $0560,x
        bpl     LEA68
        lda     #$56
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        beq     LEA68
        jsr     LEDD2
        jsr     LAA69
        lda     #$8E
        sta     $0550,x
        lda     #$06
        sta     $0560,x
        inc     $04D0,x
LEA68:  rts

        lda     $E6
        adc     $E7
        sta     $E7
        and     #$0F
        tay
        lda     $AA86,y
        sta     $04A0,x
        beq     LEA7F
        lda     #$3B
        jsr     LF850
LEA7F:  lda     $AA96,y
        jsr     LFA6C
        rts

        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        cli
        .byte   $5A
        cli
        .byte   $5A
        cli
        .byte   $5A
        cli
        .byte   $5A
        cli
        .byte   $5A
        cli
        .byte   $5A
        cli
        .byte   $5A
        cli
        .byte   $5A
        lda     $04A0,x
        beq     LEAFC
        lda     $0490,x
        bne     LEAE8
        lda     #$1E
        sta     $0490,x
        lda     $E6
        adc     $E7
        sta     $E7
        and     #$0F
        tay
        lda     $AAEC,y
        bne     LEAD2
        jsr     LF81D
        lda     #$3C
        jsr     LF850
        jsr     LAC20
        lda     #$5C
        bne     LEADF
LEAD2:  jsr     LF81D
        jsr     LAB9B
        lda     #$3C
        jsr     LF850
        lda     #$5B
LEADF:  jsr     LFA6C
        lda     #$86
        sta     $04D0,x
        rts

LEAE8:  dec     $0490,x
        rts

        brk
        .byte   $FF
        .byte   $FF
        brk
        brk
        .byte   $FF
        .byte   $FF
        brk
        brk
        .byte   $FF
        .byte   $FF
        brk
        brk
        .byte   $FF
        .byte   $FF
        brk
LEAFC:  jsr     LF5C9
        lda     $0560,x
        bpl     LEB26
        lda     #$56
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        beq     LEB26
        jsr     LEDD2
        lda     #$5A
        jsr     LFA6C
        lda     #$3B
        jsr     LF850
        lda     #$FF
        sta     $04A0,x
        rts

LEB26:  lda     $0560,x
        cmp     #$05
        bne     LEB32
        lda     #$58
        jsr     LFA6C
LEB32:  rts

        lda     $0430,x
        cmp     #$0C
        bne     LEB45
        lda     #$59
        jsr     LFA6C
        inc     $04D0,x
        jsr     LF5FC
LEB45:  rts

        lda     $0480,x
        and     #$01
        beq     LEB65
        jsr     LF24B
        .byte   $20
        .byte   $FD
LEB52:  .byte   $F4
        lda     $04F0,x
        cmp     #$F0
        bcc     LEB62
        lda     $0480,x
        eor     #$01
        sta     $0480,x
LEB62:  jmp     LAB7A

LEB65:  jsr     LF2A6
        jsr     LF51B
        lda     $04F0,x
        cmp     #$10
        bcs     LEB7A
        lda     $0480,x
        eor     #$01
        sta     $0480,x
LEB7A:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        lda     $10
        bne     LEB8B
        inc     $04D0,x
        jsr     LF5FC
LEB8B:  rts

        ldy     #$02
        lda     #$56
        jsr     LF4D7
        bcc     LEB8B
        lda     #$82
        sta     $04D0,x
        rts

        jsr     LFA4C
        bcs     LEB8B
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $AC1C,y
        pha
        lda     $0500,x
        adc     $AC1D,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sec
        sbc     #$02
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$5D
        jsr     LFA84
        lda     #$55
        sta     $04E0,y
        lda     #$02
        sta     $0570,y
        lda     #$82
        sta     $04D0,y
        jsr     LF93F
        tay
        sty     L0000
        lda     $A967,y
        ldy     $0F
        sta     $0580,y
        ldy     L0000
        lda     $AC50,y
        ldy     $0F
        sta     $0530,y
        ldy     L0000
        lda     $AC60,y
        ldy     $0F
        sta     $0540,y
        ldy     L0000
        lda     $AC70,y
        ldy     $0F
        sta     $0550,y
        ldy     L0000
        lda     $AC80,y
        ldy     $0F
        sta     $0560,y
LEC1B:  rts

        bpl     LEC1E
LEC1E:  .byte   $F0
LEC1F:  .byte   $FF
        jsr     LFA4C
        bcs     LEC1B
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sec
        sbc     #$08
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$5D
        jsr     LFA84
        lda     #$5B
        sta     $04E0,y
        lda     #$0F
        sta     $0570,y
        rts

        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        brk
        ora     ($01,x)
        .byte   $02
        ora     ($01,x)
        brk
        brk
        brk
        ora     ($01,x)
        .byte   $02
        ora     ($01,x)
        brk
        brk
        cmp     LC36A,y
        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        .byte   $C3
        ror     a
        cmp     $0102,y
        ora     (L0000,x)
        brk
        brk
        ora     ($01,x)
        .byte   $02
        ora     ($01,x)
        brk
        brk
        brk
        ora     ($01,x)
        lda     $04D0,x
        and     #$0F
        bne     LECAA
        sta     $0550,x
        sta     $0490,x
        lda     #$04
        sta     $0560,x
        inc     $04D0,x
        lda     #$3C
        sta     $0480,x
LECAA:  jsr     LF55E
        lda     $04D0,x
        and     #$02
        bne     LECF1
        lda     $0510,x
        cmp     #$00
        bne     LECF1
        jsr     LFA4C
        bcs     LECF1
        lda     $04F0
        sta     $04F0,y
        .byte   $AD
LECC7:  brk
        ora     $99
        brk
        ora     $A9
        brk
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$5D
        jsr     LFA84
        lda     #$5C
        sta     $04E0,y
        lda     #$00
        sta     $0570,y
        lda     #$D8
        sta     $0400,y
        inc     $04D0,x
        dec     $0480,x
LECF1:  rts

        lda     $04D0,x
        and     #$0F
        bne     LED09
        sta     $0550,x
        lda     #$07
        sta     $0560,x
        inc     $04D0,x
        lda     #$1E
        sta     $0480,x
LED09:  lda     $0480,x
        bne     LED1B
        lda     #$02
        sta     $0570,x
        lda     #$D0
        sta     $0400,x
        jmp     LF539

LED1B:  dec     $0480,x
        rts

        dec     $0490,x
        rts

        lda     $04D0,x
        and     #$0F
        bne     LED3A
        sta     $0530,x
        lda     #$04
        sta     $0540,x
        lda     #$95
        sta     $0480,x
        inc     $04D0,x
LED3A:  lda     $0480,x
        beq     LED43
        dec     $0480,x
        rts

LED43:  lda     #$D0
        sta     $0400,x
        lda     $0580,x
        and     #$01
        beq     LED5C
        jsr     LF4FD
        lda     $04F0,x
        cmp     #$F0
        bcc     LED6E
        jmp     LAD66

LED5C:  jsr     LF51B
        lda     $04F0,x
        cmp     #$10
        bcs     LED6E
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LED6E:  rts

        lda     $04D0,x
        and     #$0F
        tay
        lda     $AD82,y
        sta     L0000
        lda     $AD88,y
        sta     $01
        jmp     (L0000)

        stx     $22D6
LED85:  eor     #$8D
        and     $ADAD,x
        ldx     $AEAE
        .byte   $AF
        lda     #$00
        sta     $0560,x
        lda     #$70
        sta     $0550,x
        lda     #$80
        sta     $0530,x
LED9D:  lda     #$02
        sta     $0540,x
        lda     $63
        beq     LEDD5
        jsr     LF539
        lda     $0510,x
        cmp     #$70
        bne     LEDB8
        lda     $0400,x
        and     #$DF
        sta     $0400,x
LEDB8:  lda     $0510,x
        cmp     #$B0
        bne     LEDD5
        lda     #$5F
        jsr     LFA6C
        lda     #$8B
        sta     $1A
        lda     #$1E
        sta     $0490,x
        lda     #$3C
        sta     $04A0,x
LEDD2:  inc     $04D0,x
LEDD5:  rts

        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LEDD5
        jsr     LB39E
        lda     $0480,x
        and     #$01
        beq     LEDFA
        jsr     LF24B
        jsr     LF4FD
        lda     $04F0,x
        cmp     #$E0
        bcc     LEE21
        jmp     LAE07

LEDFA:  jsr     LF2A6
        jsr     LF51B
        lda     $04F0,x
        cmp     #$20
        bcs     LEE21
        lda     $0480,x
        eor     #$01
        sta     $0480,x
        jsr     LAF74
        bne     LEE21
        lda     #$3E
        jsr     LF850
        lda     #$65
        jsr     LFA6C
        inc     $04D0,x
LEE21:  rts

        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LEE21
        jsr     LB39E
        lda     $0430,x
        cmp     #$08
        bne     LEE21
        lda     #$63
        jsr     LFA6C
        lda     #$00
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        rts

        jsr     LB36A
        jsr     LB4BA
        lda     $04E0,x
        cmp     #$4F
        beq     LEE21
        lda     $0480,x
        and     #$01
        beq     LEE6D
        jsr     LF24B
        jsr     LF4FD
        lda     $04F0,x
        cmp     #$E0
        bcc     LEE82
        jmp     LAE7A

LEE6D:  jsr     LF2A6
        jsr     LF51B
        lda     $04F0,x
        cmp     #$20
        bcs     LEE82
        lda     $0480,x
        eor     #$01
        sta     $0480,x
LEE82:  lda     $0510
        cmp     #$B4
        bne     LEE8C
        inc     $04D0,x
LEE8C:  rts

        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LEE8C
        jsr     LB39E
        lda     $0420,x
        cmp     #$66
        beq     LEEB7
        lda     $0490,x
        bne     LEEB3
        lda     #$3D
        jsr     LF850
        lda     #$66
        jsr     LFA6C
        jsr     LF81D
LEEB3:  dec     $0490,x
LEEB6:  rts

LEEB7:  lda     $0410,x
        cmp     #$01
        bne     LEEB6
        lda     $0430,x
        cmp     #$08
        bne     LEEB6
        jsr     LFA4C
        bcs     LEEB6
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $AF29,y
        pha
        lda     $0500,x
        adc     $AF2A,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        .byte   $BD
LEEED:  .byte   $10
LEEEE:  ora     $38
        sbc     #$02
        .byte   $99
        .byte   $10
LEEF4:  ora     $BD
        jsr     L9905
        jsr     LA905
        .byte   $64
        .byte   $20
        .byte   $84
LEEFF:  .byte   $FA
        lda     #$0B
        sta     $04E0,y
        lda     #$10
        sta     $0570,y
        lda     #$00
        sta     $0530,y
        lda     $E4
        adc     $E6
        sta     $E6
        and     #$0F
        tay
        lda     $AF2D,y
        ldy     $0F
        sta     $0540,y
        lda     #$5F
        jsr     LFA6C
        inc     $04D0,x
        rts

        .byte   $12
        brk
        inc     $02FF
        .byte   $03
        .byte   $07
        .byte   $04
        .byte   $02
        .byte   $02
        asl     $03
        .byte   $04
        .byte   $03
        ora     $02
        .byte   $04
        .byte   $07
        .byte   $04
        .byte   $02
        jsr     LB36A
        lda     $04E0,x
        cmp     #$4F
        beq     LEF73
        jsr     LB39E
        lda     #$00
        sta     $0410,x
        sta     $0430,x
        lda     $04A0,x
        bne     LEF70
        lda     #$81
        sta     $04D0,x
        lda     #$80
        sta     $0530,x
        lda     #$02
        sta     $0540,x
        lda     #$1E
        sta     $0490,x
        lda     #$3D
        sta     $04A0,x
LEF70:  dec     $04A0,x
LEF73:  rts

        lda     $E4
        adc     $E5
        sta     $E5
        and     #$0F
        tay
        lda     $AF81,y
        rts

        brk
        .byte   $FF
        .byte   $FF
        brk
        brk
        .byte   $FF
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        lda     $04D0,x
        and     #$0F
        bne     LEFB6
        sta     $0550,x
        lda     #$02
        sta     $0560,x
        inc     $04D0,x
        jsr     LB487
        lda     #$1E
        sta     $0480,x
        lda     #$00
        sta     $05A0,x
        jsr     LB119
        sta     $04B0,x
LEFB6:  lda     $3B
        beq     LEFC3
        jsr     LF880
        dec     $3B
        jsr     LF869
        rts

LEFC3:  lda     $04D0,x
        and     #$0F
        cmp     #$02
        beq     LEFDB
        cmp     #$03
        beq     LF018
        jsr     LF539
        cmp     #$48
        bcc     LEFDA
        inc     $04D0,x
LEFDA:  rts

LEFDB:  lda     $0480,x
        bne     LF014
        inc     $04D0,x
        lda     #$00
        sta     $0580,x
        sta     $0530,x
        sta     $0540,x
        sta     $0550,x
        sta     $04A0,x
        lda     #$FE
        sta     $0560,x
        lda     $04E0,x
        and     #$0F
        bne     LF009
        lda     #$07
        sta     $0480,x
        sta     $0490,x
        rts

LF009:  lda     #$09
        sta     $0480,x
        lda     #$04
        sta     $0490,x
        rts

LF014:  dec     $0480,x
        rts

LF018:  lda     $04B0,x
        bne     LF026
        jsr     LB12A
        jsr     LB119
        sta     $04B0,x
LF026:  dec     $04B0,x
        lda     $0480,x
        bne     LF066
        lda     $63
        bne     LF035
        jsr     LF824
LF035:  lda     $0580,x
        clc
        adc     $04A0,x
        tay
        lda     $B0C9,y
        sta     $0550,x
        lda     $B0D9,y
        sta     $0560,x
        lda     $B0E9,y
        sta     $0530,x
        lda     $B0F9,y
        sta     $0540,x
        lda     $0400,x
        and     #$BF
        ora     $B109,y
        sta     $0400,x
        lda     $0490,x
        sta     $0480,x
LF066:  dec     $0480,x
        lda     #$00
        sta     L0000
        lda     $0540,x
        bpl     LF074
        dec     L0000
LF074:  lda     $0470,x
        clc
        adc     $0530,x
        sta     $0470,x
        lda     $04F0,x
        adc     $0540,x
        sta     $04F0,x
        lda     $0500,x
        adc     L0000
        sta     $0500,x
        lda     $0460,x
        clc
        adc     $0550,x
        sta     $0460,x
        lda     $0510,x
        adc     $0560,x
        sta     $0510,x
        cmp     #$00
        beq     LF0AB
        cmp     #$FF
        beq     LF0BA
        rts

LF0AB:  lda     #$F0
        sta     $0510,x
        lda     $0520,x
        clc
        adc     #$FF
        sta     $0520,x
        rts

LF0BA:  lda     #$10
        sta     $0510,x
        lda     $0520,x
        clc
        adc     #$01
        sta     $0520,x
        rts

        cmp     $27E5
        .byte   $8B
        brk
        adc     $D9,x
        cmp     $1B33,y
        cmp     $75,y
        .byte   $8B
        .byte   $27
        .byte   $14
        inc     LFFFE,x
        .byte   $FF
        brk
        brk
        brk
        brk
        ora     ($01,x)
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        adc     $D9,x
        .byte   $1B
        .byte   $33
        .byte   $1B
        cmp     $75,y
        .byte   $8B
        .byte   $27
        sbc     $CD
        sbc     $27
        .byte   $8B
        brk
        brk
        brk
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        .byte   $FF
        .byte   $FF
        inc     LFEFE,x
        .byte   $FF
        .byte   $FF
        brk
        brk
        rti

        rti

        rti

        rti

        rti

        rti

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        lda     $E4
        adc     $E5
        sta     $E5
        and     #$03
        tay
        lda     $B126,y
LF125:  rts

        ldy     $3C,x
        sei
        .byte   $3C
        jsr     LFA4C
        bcs     LF125
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$62
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$0F
        sta     $0570,y
        lda     #$00
        sta     $05A0,y
        jsr     LF93F
        tay
        sty     L0000
        lda     $A967,y
        ldy     $0F
        sta     $0580,y
        ldy     L0000
        lda     $B194,y
        ldy     $0F
        sta     $0530,y
        ldy     L0000
        lda     $B1A4,y
        ldy     $0F
        sta     $0540,y
        ldy     L0000
        lda     $B1B4,y
        ldy     $0F
        sta     $0550,y
        ldy     L0000
        lda     $B1C4,y
        ldy     $0F
        sta     $0560,y
        rts

        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        brk
        ora     ($01,x)
        .byte   $02
        ora     ($01,x)
        brk
        brk
        brk
        ora     ($01,x)
        .byte   $02
        ora     ($01,x)
        brk
        brk
        cmp     LC36A,y
        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        .byte   $C3
        ror     a
        cmp     $0102,y
        ora     (L0000,x)
        brk
        brk
        ora     ($01,x)
        .byte   $02
        ora     ($01,x)
        brk
        brk
        brk
        ora     ($01,x)
        lda     $04D0,x
        and     #$0F
        bne     LF1E8
        lda     #$2D
        sta     $0480,x
        lda     #$78
        sta     $04A0,x
        inc     $04D0,x
LF1E8:  lda     $04A0,x
        beq     LF1F1
LF1ED:  dec     $04A0,x
        rts

LF1F1:  lda     $04C0,x
        bne     LF236
        jsr     LFAAE
        bcs     LF239
        lda     #$1E
        sta     $04C0,x
LF200:  lda     #$1D
        jsr     LF850
        lda     $54
        cmp     #$02
        bne     LF21F
        lda     $04D2
        bpl     LF215
        lda     #$83
        sta     $04D2
LF215:  lda     $04D3
        bpl     LF21F
        lda     #$83
        sta     $04D3
LF21F:  inc     $0490,x
        lda     $0490,x
        cmp     #$08
        bne     LF236
        ldy     #$00
        jsr     LB2D9
        inc     $63
        jsr     LB2A7
        jmp     LFA9A

LF236:  dec     $04C0,x
LF239:  lda     $0480,x
        bne     LF278
        lda     #$2D
        sta     $0480,x
        jsr     LB24C
        bne     LF24B
        jsr     LB27C
LF24B:  rts

        lda     #$00
        sta     L0000
        lda     #$61
        sta     $01
LF254:  ldy     #$0F
LF256:  lda     $04D0,y
        bmi     LF26C
LF25B:  dey
        cpy     #$06
        bne     LF256
        lda     L0000
        cmp     #$02
        beq     LF269
        lda     #$00
        rts

LF269:  lda     #$FF
        rts

LF26C:  lda     $01
        cmp     $0420,y
        bne     LF25B
        inc     L0000
        jmp     LB25B

LF278:  dec     $0480,x
        rts

        jsr     LFA4C
        bcs     LF2A6
        lda     #$78
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     #$00
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$61
        jsr     LFA84
        lda     #$5F
        sta     $04E0,y
        lda     #$49
        sta     $0570,y
LF2A6:  rts

        jsr     LFA4C
        bcs     LF2A6
        sty     $0F
        .byte   $A9
LF2AF:  cpx     #$99
        beq     LF2B7
        lda     $0500,x
        .byte   $99
LF2B7:  brk
        ora     $A9
        .byte   $37
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$22
        jsr     LFA84
        lda     #$08
        sta     $04E0,y
        lda     #$02
        sta     $0570,y
        lda     #$00
        .byte   $99
        .byte   $A0
LF2D7:  ora     $60
        stx     $0F
        lda     $B2FE,y
        sta     L0000
        lda     $B2FF,y
        sta     $01
        lda     #$00
        tax
        tay
LF2E9:  lda     (L0000),y
        .byte   $9D
        rts

LF2ED:  .byte   $03
        inx
        iny
        cpy     #$80
        bne     LF2E9
        sty     $19
        lda     #$00
        sta     $061C
        ldx     $0F
        rts

        brk
        .byte   $B3
        jsr     L0198
        .byte   $5C
        eor     $B820,x
        ora     ($6C,x)
        adc     LD820
        ora     ($5C,x)
        eor     LF820,x
        ora     ($6C,x)
        adc     $A0FF
        .byte   $0F
LF317:  lda     $04D0,y
        bpl     LF338
        lda     #$00
        sta     $0570,y
        lda     $04E0,y
        cmp     #$51
        beq     LF338
        cmp     #$54
        beq     LF338
        cmp     #$57
        beq     LF338
        lda     #$00
        sta     $04D0,y
        sta     $04E0,y
LF338:  dey
        cpy     #$00
        bne     LF317
        lda     #$4F
        sta     $04E0,x
        lda     #$80
        sta     $04D0,x
        sta     $04D0
        lda     #$00
        sta     $0480,x
        sta     $0490,x
        sta     $04A0,x
        sta     $04B0,x
        jsr     LF607
        lda     $50
        cmp     #$06
        beq     LF369
        cmp     #$07
        beq     LF369
        lda     #$0F
        sta     $50
LF369:  rts

        lda     $EE
        cmp     #$10
        bcc     LF373
        jmp     LB315

LF373:  lda     $ED
        beq     LF395
        lsr     a
        lsr     a
        lsr     a
        bcs     LF386
        lda     $0400,x
        ora     #$08
        sta     $0400,x
        bne     LF38E
LF386:  lda     $0400,x
        and     #$F7
        sta     $0400,x
LF38E:  cpx     $EF
        bne     LF39D
        dec     $ED
        rts

LF395:  lda     $0400,x
        and     #$F7
        sta     $0400,x
LF39D:  rts

        lda     $ED
        bne     LF3F6
        jsr     LFAAE
        bcs     LF3F6
        ldy     $0F
        lda     $0420,y
        cmp     #$13
        beq     LF3D0
        cmp     #$14
        beq     LF3D0
        cmp     #$16
        beq     LF3D0
        cmp     #$19
        beq     LF3D0
        cmp     #$1A
        beq     LF3D0
        cmp     #$18
        beq     LF3CE
        cmp     #$17
        beq     LF3CC
        cmp     #$29
        beq     LF3CC
LF3CC:  inc     $EE
LF3CE:  inc     $EE
LF3D0:  inc     $EE
        lda     #$1D
        jsr     LF850
        ldy     $0F
        lda     $04E0,y
        cmp     #$07
        beq     LF3EE
        lda     $0420,y
        cmp     #$17
        beq     LF3EE
        cmp     #$18
        beq     LF3EE
        jsr     LF872
LF3EE:  lda     #$1E
        sta     $ED
        stx     $EF
        clc
        rts

LF3F6:  sec
        rts

        lda     #$00
        sta     $0410
        sta     $0430
        sta     $0570,x
        sta     $0430,x
        sta     $0410,x
        lda     $04D0,x
        and     #$0F
        bne     LF42F
LF410:  sta     $0540,x
        lda     #$44
        sta     $0550,x
        lda     #$03
        sta     $0560,x
        lda     #$80
        sta     $0530,x
        lda     #$D0
        sta     $0400,x
        lda     #$1E
        jsr     LF850
        inc     $04D0,x
LF42F:  lda     $0580,x
        and     #$01
        beq     LF43F
        jsr     LF24B
        jsr     LF4FD
        jmp     LB445

LF43F:  jsr     LF2A6
        jsr     LF51B
        jsr     LF5C9
        lda     $0510,x
        cmp     #$E0
        bcc     LF453
        lda     #$15
        sta     $50
LF453:  rts

        lda     #$00
        sta     $0600
        sta     $060F
        sta     $0610
        sta     $061F
        sta     $0620
        sta     $062F
        sta     $0630
        sta     $063F
        sta     $0640
        sta     $064F
        sta     $0650
        sta     $065F
        sta     $0660
        sta     $066F
        sta     $0670
        sta     $067F
        rts

        lda     #$00
        sta     $0680
        sta     $068F
        sta     $0690
        sta     $069F
        sta     $06A0
        sta     $06AF
        sta     $06B0
        sta     $06BF
        sta     $06C0
        sta     $06CF
        sta     $06D0
        sta     $06DF
        sta     $06E0
        sta     $06EF
        sta     $06F0
        sta     $06FF
        rts

        jsr     LFAAE
        bcs     LF4F5
        ldy     $0F
        lda     $04E0,y
        cmp     #$1F
        beq     LF4F5
        lda     $0420,y
        cmp     #$14
        beq     LF4F6
        cmp     #$16
        beq     LF4F6
        jsr     LB507
        .byte   $A9
LF4D7:  .byte   $80
        sta     $0530,y
        sta     $0550,y
        lda     #$03
        sta     $0540,y
        sta     $0560,y
        lda     #$1F
        sta     $04E0,y
        lda     #$00
        sta     $0570,y
        lda     #$1A
        .byte   $20
        .byte   $50
LF4F4:  sed
LF4F5:  rts

LF4F6:  lda     #$00
        sta     $04D0,y
        .byte   $99
        brk
LF4FD:  .byte   $04
        sta     $04E0,y
        lda     #$FF
        sta     $0590,y
        rts

        ldy     $0F
        lda     $04E0,y
        cmp     #$1F
        beq     LF4F5
        lda     $0580,y
        cmp     #$01
        beq     LF52C
        cmp     #$02
        beq     LF532
LF51B:  cmp     #$09
        beq     LF52C
        cmp     #$05
        beq     LF52C
        cmp     #$0A
        beq     LF532
        cmp     #$06
        beq     LF532
        rts

LF52C:  lda     #$0A
        sta     $0580,y
        rts

LF532:  lda     #$09
        sta     $0580,y
        rts

        brk
LF539:  brk
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
LF55E:  .byte   $FF
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
LF5A4:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LF5C9:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF5DA:  .byte   $FF
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
LF5FC:  brk
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
LF607:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF61C:  .byte   $FF
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
LF68E:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        sta     ($92),y
        sta     $1592,y
        ora     $15,x
        ora     $D0,x
        cmp     ($15),y
        ora     $D3,x
        .byte   $15
LF6EE:  ora     $15,x
        ora     $C3,x
        ora     $CB,x
        txs
        sta     ($9A),y
        sta     $9291,y
        bcc     LF68E
        txs
        sta     ($9A),y
        bcc     LF716
        ora     $93,x
        sty     $15,x
        ora     $94,x
        sty     $15,x
        ora     $94,x
        .byte   $95
LF70C:  txs
        sta     ($51),y
        sta     $1515,y
        ora     $13,x
        .byte   $0E
        .byte   $0C
LF716:  asl     a
        ora     #$C8
        dex
        .byte   $8B
        cmp     $0D0C,x
        ora     #$02
        eor     $9A91,y
        sta     $1B15,y
        ora     $1D,x
        .byte   $12
        ora     $1A,x
        .byte   $1C
        asl     a
        asl     $010A,x
        .byte   $1E
LF731:  asl     $8483,x
        asl     LDE02,x
        .byte   $DF
        .byte   $A3
        .byte   $92
        tya
        .byte   $92
        .byte   $1C
        ora     $1D1D,x
        ora     $1D1D,x
        ora     $090A,x
        asl     a
        asl     $8C8B,x
        asl     LC9D9,x
        .byte   $DA
        cld
        .byte   $DA
        txs
        tya
        txs
        tya
        plp
        .byte   $22
        rol     a
        .byte   $2B
        .byte   $2B
        rol     a
        rol     a
        .byte   $2B
        tax
        sta     ($AB),y
        bcc     LF70C
        sta     ($AB),y
        sta     $1592,y
        .byte   $92
        ora     $0A,x
        ora     ($0A,x)
        ora     #$1E
        ora     ($1E,x)
        ora     #$A2
        sta     ($A3),y
        sta     $010A,y
        .byte   $0F
        ora     #$AB
        sta     ($16),y
        .byte   $07
        tax
        ldx     #$07
        .byte   $17
        .byte   $9E
        .byte   $9B
        txs
        sta     ($9B),y
        sta     $9291,x
        .byte   $1F
        ora     ($0A,x)
LF78B:  ora     #$9B
        .byte   $9C
        .byte   $AB
        sta     $1315,y
        ora     $1B,x
        txs
        bcc     LF731
        sta     ($90),y
        .byte   $92
        sta     ($92),y
LF79C:  and     ($D5,x)
        jsr     LAA20
        .byte   $A3
        tya
        tya
        .byte   $92
        ora     $92,x
        .byte   $1A
        txs
        sta     $989A,y
        bmi     LF7DF
        sec
        and     $1E0A,y
        asl     a
        asl     L2020,x
        jsr     L2320
        .byte   $23
        rol     a
        .byte   $2B
        .byte   $02
        .byte   $15
LF7BE:  .byte   $02
        ora     $C3,x
        txs
        .byte   $CB
        txs
        .byte   $1C
        ora     LD621,x
        ora     $9A,x
        .byte   $1C
        txs
        and     ($D6,x)
        jsr     LA320
        tya
        .byte   $3B
        .byte   $3B
        tya
        tya
        .byte   $3B
        .byte   $3B
        tax
        sta     ($16),y
        .byte   $17
        jsr     L2048
LF7DF:  jsr     L9A1D
        ora     $AB9A,x
        sta     ($16),y
        asl     $98
        sta     ($07),y
        asl     $AB
        sta     ($AB),y
        bcc     LF79C
        .byte   $A3
        ldx     #$AA
        ldy     #$11
        clc
        ora     $A3AA,y
        tya
        tax
        ldx     #$AA
LF7FE:  and     ($D5,x)
        ldx     #$AA
        and     ($D6,x)
        tax
        .byte   $DB
        tya
        .byte   $DB
LF808:  cmp     #$DC
        cld
        .byte   $DC
        .byte   $A3
        sta     L91AA,y
        .byte   $AB
        bcc     LF7BE
        sta     ($A3),y
        sta     $11A0,y
        .byte   $AB
        sta     $98AB,y
        .byte   $AB
LF81D:  sta     $91AB,y
LF820:  .byte   $AB
        sta     $91A2,y
LF824:  clc
        ora     $91A2,y
        .byte   $A3
        .byte   $A3
        tax
        ldy     #$AA
        bcc     LF840
        sta     ($AB),y
        clc
        .byte   $AB
        sta     ($19),y
        sta     $91AB,y
        asl     $07
        .byte   $9B
        .byte   $9C
        asl     $17
        .byte   $9B
        .byte   $9C
LF840:  asl     $06,x
        .byte   $9B
        .byte   $9C
        .byte   $07
        .byte   $07
        .byte   $9B
        .byte   $9C
        ldx     #$98
        tya
        ldy     #$98
        sta     ($11),y
        .byte   $99
LF850:  ldx     #$98
        ldy     #$11
        ldx     #$91
        asl     $07
        tax
        ldx     #$06
        .byte   $17
        ldx     #$18
        .byte   $AB
        .byte   $AB
        ora     $AB91,y
        sta     $1918,y
        ldx     #$98
        .byte   $A2
LF869:  sta     ($16),y
        asl     $A2
        sta     ($06),y
        .byte   $17
        ora     $15,x
LF872:  .byte   $3A
        .byte   $3A
        bit     $25
        bit     $262D
        .byte   $27
        rol     $2C2F
        and     $2C,x
        .byte   $3D
LF880:  rol     $2F,x
        rol     $2C2F,x
        and     $352C
        rol     $362F
        .byte   $2F
        rts

        adc     ($68,x)
        adc     #$2C
        and     $2D2C,x
        rol     $2E2F,x
        .byte   $2F
        bvs     LF90B
        rts

        adc     ($47,x)
        lsr     $44
        lsr     $1547
        jmp     L154D

        ora     $60,x
        adc     ($15,x)
        ora     $61,x
        adc     ($60,x)
        adc     ($61,x)
        adc     ($61,x)
        .byte   $63
        .byte   $61
LF8B3:  .byte   $63
        .byte   $64
        adc     ($64,x)
        adc     ($68,x)
        adc     #$70
        adc     ($69),y
        adc     #$71
        adc     ($69),y
        .byte   $6B
        adc     ($6B),y
        eor     $55,x
        ror     $66
        jmp     (L7469)

        adc     ($61),y
        adc     ($69,x)
        adc     #$61
        .byte   $63
        adc     #$6B
        eor     $725F,x
        .byte   $72
        .byte   $64
        adc     ($6C,x)
        adc     #$71
        adc     ($79),y
        adc     $6B71,y
        adc     $5B7B,y
        .byte   $5B
        .byte   $5B
        .byte   $5B
        .byte   $74
        adc     ($7C),y
        adc     $7979,y
        adc     #$B7
        adc     $5479,y
        .byte   $54
        adc     $547B,y
        .byte   $BF
        .byte   $5B
        .byte   $5B
        eor     $55,x
        .byte   $7C
        adc     $696C,y
        .byte   $3F
        .byte   $3F
        eor     $665F,x
        ror     $5D
        .byte   $5F
        .byte   $72
        .byte   $72
        .byte   $5B
LF90B:  .byte   $5B
        .byte   $72
        .byte   $72
        .byte   $5B
        adc     $7B79,x
        adc     #$6B
        .byte   $5B
        .byte   $5B
        eor     $57,x
        .byte   $5B
LF919:  sta     $55
        .byte   $57
        dec     $61
        ldx     $54,y
        adc     ($61,x)
        .byte   $54
        .byte   $54
        .byte   $CF
        adc     $5454,y
LF928:  eor     $725F,x
        .byte   $B2
        .byte   $3F
        adc     $7272
        .byte   $3F
        adc     $7E72
        .byte   $5B
        .byte   $5B
        .byte   $5B
        stx     $5B
        .byte   $B2
        .byte   $5B
        .byte   $B2
        rti

        eor     ($42,x)
LF93F:  .byte   $43
        .byte   $5B
        stx     $5B
        stx     $79
        .byte   $C7
        adc     #$69
        cmp     ($C1,x)
        adc     #$69
        adc     $697A,y
        ror     a
        adc     ($6A),y
        adc     $15BA,y
        ora     $4A,x
        .byte   $4B
        adc     #$6A
        adc     ($6A),y
        adc     $547A,y
        .byte   $82
        .byte   $3F
        ror     $6F72
        .byte   $5B
        .byte   $6F
        .byte   $5B
        .byte   $6F
        .byte   $34
        .byte   $34
        .byte   $32
        .byte   $33
        adc     ($62,x)
        adc     #$6A
        rol     $35,x
        rol     $2E3D,x
        and     $3536
        .byte   $87
        ora     $8F,x
        .byte   $9F
        ora     $15,x
        bvc     LF995
        ora     $15,x
        ora     $50,x
        cli
        ora     $58,x
        .byte   $14
        ora     $58,x
        ora     $58,x
        cli
        .byte   $14
        cli
        .byte   $14
        .byte   $14
        cli
        .byte   $14
        cli
        .byte   $24
LF995:  .byte   $27
        bit     $152F
        bvc     LF9B0
        cli
        bvc     LF9B3
        cli
        ora     $70,x
        .byte   $73
        sei
        .byte   $7B
        .byte   $74
        ror     a
        .byte   $7C
        .byte   $7A
        pla
        .byte   $73
        bvs     LFA1F
        eor     $57,x
        asl     $06
LF9B0:  jmp     (L746A)

LF9B3:  ror     a
        sei
        .byte   $7B
        pla
        .byte   $73
        .byte   $7C
        .byte   $7A
        jmp     (L706A)

        .byte   $73
        .byte   $80
        .byte   $BF
        eor     $57,x
LF9C2:  php
        adc     $74,x
        ror     a
        dec     $BB82
        .byte   $3F
        .byte   $B3
        .byte   $72
        eor     $725F,x
        ror     $1558,x
        cli
        ora     $15,x
        ora     $24,x
        and     $15
        ora     $34,x
        .byte   $34
        .byte   $13
        ora     $26,x
        .byte   $2F
        bit     $242D
        and     $32,x
        .byte   $33
        rol     $35,x
        rol     $3625
        and     $3D3E
        rol     $3E2D
        and     $2E,x
        and     $A6C3,x
        .byte   $CB
        ldx     $B9
        .byte   $AC
LF9FA:  .byte   $B1
LF9FB:  ldy     $B8
        lda     $A4B9
        clv
        ldy     $A4B9
        lda     ($AC),y
        ldy     #$A1
        ora     $A6,x
        ora     $A6,x
        asl     $06,x
        ldx     $07A5
        .byte   $07
        ldx     $06A5
        .byte   $17
        ldx     $A8A5
        lda     #$B1
        ldy     $93
        sty     $9E,x
LFA1F:  .byte   $9C
        sty     $95,x
        .byte   $9C
        sta     $999A,x
        txs
        sta     ($99),y
        .byte   $92
        sta     ($92),y
        .byte   $3C
        and     $2E,x
        and     $2D36,x
        rol     $AF35,x
        ora     $AF,x
        ora     $78,x
        adc     $6968,y
        adc     $6979,y
        adc     #$70
        adc     ($78),y
        adc     $6968,y
        .byte   $80
        cpy     $69
        adc     #$C5
        .byte   $71
LFA4C:  .byte   $3C
        .byte   $27
        rol     $522F
        adc     #$5A
        adc     (L0000),y
        brk
        brk
        brk
        brk
        .byte   $97
        .byte   $97
        brk
        and     #$37
        adc     $8D
        brk
        brk
        brk
        dey
        .byte   $89
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $97
LFA6C:  .byte   $62
        brk
        ror     a
        brk
        brk
        rts

        brk
        pla
        .byte   $F4
        sbc     $FC,x
        .byte   $FD
LFA78:  cpx     #$E1
        inx
        sbc     #$E2
        .byte   $E3
        nop
        .byte   $EB
        brk
        brk
        sbc     $F1
LFA84:  cpx     $E5
        cpx     LF1ED
        .byte   $F2
        brk
        brk
        beq     LFA8E
LFA8E:  brk
        brk
        brk
        .byte   $F3
        brk
        brk
        inc     $E7
        brk
        .byte   $EF
        brk
        brk
LFA9A:  .byte   $F2
        inc     $ED
        brk
        brk
        brk
        inc     LEEEE
        inc     LF6EE
        inc     LF7FE
        inc     LEEFF
        brk
        brk
LFAAE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rti

        .byte   $C7
        .byte   $43
        .byte   $44
        .byte   $44
        .byte   $63
        .byte   $64
        bpl     LFB3A
        .byte   $62
        brk
        .byte   $42
        brk
        brk
        brk
        .byte   $02
        .byte   $F4
        dec     $C4
        ora     ($01),y
        and     $64
        bpl     LFB1E
        ora     ($E4),y
        ora     ($11,x)
        .byte   $C7
        adc     LD0C0,x
        sty     $9A
        asl     $08
        asl     a
        .byte   $47
        clc
        ora     $A4A4
        asl     $08
        and     #$47
        .byte   $80
        .byte   $82
        and     #$5B
        asl     a
        php
        and     $A02B,y
        ldx     #$76
        inx
        asl     a
        sec
LFB1E:  eor     LE900,y
        nop
        ldy     $A8BD,x
        ora     ($11),y
        stx     $F0,y
        ora     ($67),y
        dec     $1DA6,x
        lda     #$11
        iny
        .byte   $E2
        .byte   $C2
        .byte   $1C
        ror     $3C5C
        pla
        .byte   $E7
        .byte   $F2
LFB3A:  .byte   $D2
        .byte   $0C
        .byte   $AF
        bpl     LFBAB
        adc     #$7A
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $AF
        jmp     L2E10

        txa
        ror     $6E6E
        .byte   $AF
        ror     a
        ror     a
        adc     #$8A
        ror     $6E60
        .byte   $AF
        adc     #$00
        brk
        txa
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $AF
        .byte   $2F
        rts

        .byte   $1C
        txa
        lda     LC76E
        eor     ($4F,x)
        .byte   $3C
        ora     (L0000),y
        .byte   $04
        .byte   $F4
        .byte   $C7
        eor     ($4E),y
        brk
        dex
        jsr     L5640
        .byte   $43
        .byte   $44
        .byte   $44
        .byte   $04
        brk
LFB78:  bpl     LFBCA
        .byte   $21
LFB7B:  brk
        .byte   $42
        brk
        brk
        ora     ($02),y
        .byte   $F4
        bpl     LFB78
        rti

        brk
        and     ($F4,x)
        bpl     LFBAE
        .byte   $F4
        .byte   $F4
        bvc     LFBAE
        brk
        lsr     $10,x
        .byte   $F4
        .byte   $3C
        ora     ($48),y
        ora     ($AF),y
        ror     LF4F4
        .byte   $9C
        ora     (L0000),y
        ora     (L0000),y
        ror     LDDBC
        brk
        ora     ($6E,x)
        ror     $9C33
        brk
        brk
        .byte   $52
LFBAB:  ora     ($AD,x)
        .byte   $7C
LFBAE:  .byte   $AF
        lda     $01,x
        sbc     LFF01,x
        cmp     ($D1),y
        cmp     ($D0),y
        sta     $1BC7
        bpl     LFBDE
        eor     ($C7),y
        .byte   $C7
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        jmp     L5400

        .byte   $56
LFBCA:  cli
        .byte   $5A
        rts

        adc     $01,x
        ror     $4674
LFBD2:  pha
        brk
        ror     $68
        asl     $1A,x
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $62
        .byte   $6C
LFBDE:  ror     a:L0000,x
        eor     ($62,x)
        .byte   $44
        .byte   $44
        eor     $63
        adc     $10
        eor     ($C7),y
        brk
        .byte   $52
        brk
        brk
        .byte   $C7
        .byte   $03
        sbc     $01,x
        cmp     $01
        ora     ($65,x)
        rol     $23
        .byte   $10
LFBFA:  .byte   $D7
        sbc     $01
        ora     ($C7),y
        .byte   $C7
        cmp     ($D1,x)
        sta     $9A
        .byte   $07
        ora     #$07
        pha
        sta     $0E
        lda     $A5
        .byte   $07
        and     #$07
        pha
        sta     ($83,x)
        .byte   $5A
        and     #$09
        and     $2D07,y
        lda     ($A3,x)
        ror     $E8,x
        .byte   $07
        eor     $07,y
        nop
        .byte   $EB
        lda     $98BF,x
        ora     ($99),y
        .byte   $97
        .byte   $F1
LFC29:  .byte   $E7
        dec     $A7DF,x
        ora     ($11),y
        ora     ($C9),y
        sbc     $C3,x
        ora     ($9B,x)
        .byte   $5C
        .byte   $0F
        .byte   $5C
        ora     ($F5),y
        .byte   $D3
        ora     ($6F,x)
        bpl     LFC9C
        bpl     LFCBC
        .byte   $7B
        .byte   $7F
        ldx     $4D7B
        bpl     LFC76
        .byte   $9B
        .byte   $9B
        .byte   $8F
        ldx     a:$9B
        ora     ($11),y
        .byte   $6F
        .byte   $6F
        adc     ($AE,x)
        .byte   $6F
        bpl     LFC85
        brk
        sta     $8F9D,x
        ldx     LC59D
        adc     ($61,x)
        .byte   $6F
        ldy     $408F
        .byte   $C7
        sbc     $D7
        ora     ($04),y
        .byte   $14
        ora     $50
        .byte   $0B
        lsr     LCB01,x
        eor     ($41),y
        ora     $44
        .byte   $44
        .byte   $45
LFC76:  brk
        brk
        bpl     LFCCB
        sbc     L0000,x
        .byte   $52
        brk
        brk
        .byte   $11
LFC80:  .byte   $03
        sbc     $10,x
        bpl     LFCC6
LFC85:  brk
        .byte   $F5
LFC87:  ora     $23
        bpl     LFC80
        sbc     $51,x
        eor     (L0000),y
        ora     $10
        bpl     LFCA4
        adc     #$11
        adc     $9B9B,y
        sbc     $F5,x
        ror     $6A
LFC9C:  ora     (L0000),y
        brk
        ldx     LDCBD
        brk
        .byte   $7E
LFCA4:  .byte   $6F
        .byte   $6F
LFCA6:  .byte   $7B
        .byte   $7B
        .byte   $42
        brk
LFCAA:  brk
        stx     $9D7B
        .byte   $6F
        sta     LFEFC,x
        ora     ($01,x)
        bne     LFC87
        .byte   $32
        .byte   $32
        sbc     $620B
        .byte   $15
LFCBC:  sbc     $C7,x
        .byte   $C7
        .byte   $62
        brk
        brk
        brk
        brk
        eor     ($43,x)
LFCC6:  eor     $5500
        .byte   $57
        .byte   $59
LFCCB:  .byte   $5B
LFCCC:  adc     (L0000,x)
        ora     ($6F,x)
        brk
        .byte   $47
        eor     #$7B
        .byte   $67
        adc     #$17
        .byte   $1F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $63
        adc     $5F00
        brk
        bvc     LFCAA
        .byte   $53
        .byte   $54
        .byte   $54
        .byte   $73
        .byte   $74
        bpl     LFD5A
        .byte   $62
        bpl     LFD3D
        .byte   $C7
        .byte   $62
        brk
        .byte   $12
        .byte   $22
        ora     ($D4),y
        ora     ($01),y
        and     $74,x
        bpl     LFD0A
        ora     ($11),y
LFCFC:  ora     ($11),y
        .byte   $C7
        .byte   $62
        cpy     #$C0
        .byte   $E3
        .byte   $E3
        asl     $28,x
        .byte   $1A
        .byte   $57
        .byte   $E3
        .byte   $3B
LFD0A:  sty     $95,x
        asl     $08,x
        and     $9057,y
        .byte   $92
        and     $1A08,y
        php
        eor     #$3E
        bcs     LFCCC
        stx     $F8
        .byte   $1A
        php
        ora     ($5D),y
        sbc     LCCFA,y
        cmp     $97A8
        sta     LC0A8,y
        ora     ($77),y
        inc     LD6B6
        lda     LD887,y
        .byte   $E2
        .byte   $D2
        .byte   $1C
        .byte   $9C
        bpl     LFD73
        adc     #$E7
        and     ($D2),y
        .byte   $0C
        .byte   $AF
LFD3D:  eor     $786D,x
        txa
        sty     $8C8C
        .byte   $AF
        .byte   $89
        eor     $8A6A,x
        ror     $6E6E
        .byte   $AF
        sei
        adc     #$69
        txa
        ror     $6E0C
        .byte   $AF
        adc     #$00
        pla
        txa
        .byte   $8C
LFD5A:  sty     $AF8C
        .byte   $3F
        bit     LF61C
        sty     LC79C
        eor     ($3C),y
        .byte   $3C
        tsx
        brk
        .byte   $04
        .byte   $F4
        .byte   $C7
        adc     ($E0),y
        brk
        .byte   $DA
        bmi     LFDC2
LFD72:  .byte   $F4
LFD73:  .byte   $53
        .byte   $54
        .byte   $54
        brk
        .byte   $14
        bpl     LFDEA
        and     ($10),y
        bvc     LFD72
        and     ($AA),y
LFD80:  .byte   $12
        .byte   $22
        .byte   $F4
        .byte   $10
LFD84:  bvc     $FDD6
        and     ($F4),y
        bpl     LFD9A
        bpl     LFD80
        bvs     LFDBE
        bpl     LFD84
        .byte   $F4
        bpl     LFDCF
        ora     ($48),y
        ora     ($34),y
        ror     LF410
LFD9A:  sty     $4811
        ora     (L0000),y
        .byte   $9C
        cpy     a:$8C
        ora     ($9C,x)
        .byte   $9C
        .byte   $AF
        sty     LECC7
        eor     ($01),y
        sty     $348C
        sty     L0101
        ora     ($01,x)
        cpy     #$C0
        cpy     #$C0
LFDB8:  cpx     $1BC7
        .byte   $F4
        and     ($71),y
LFDBE:  .byte   $1F
        .byte   $72
        brk
        .byte   $46
LFDC2:  pha
        lsr     a
        bvc     LFE18
        .byte   $5C
        lsr     a:$64,x
LFDCA:  brk
        ror     a
        bvs     LFDCE
LFDCE:  .byte   $01
LFDCF:  brk
        brk
        .byte   $56
LFDD2:  cli
        brk
        .byte   $76
LFDD5:  sei
        lsr     $0F00
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $72
        .byte   $7C
        rti

        .byte   $44
        brk
        eor     ($62),y
        .byte   $54
        .byte   $54
        eor     $73,x
        adc     $10,x
        .byte   $71
LFDEA:  .byte   $C7
        bpl     LFE3E
        .byte   $62
        .byte   $C7
        .byte   $C7
        .byte   $13
        bpl     LFDCA
        cmp     $01,x
        ora     ($75,x)
        rol     $10,x
        bpl     LFDD2
        ora     ($E6),y
LFDFD:  ora     ($C7),y
        .byte   $C7
LFE00:  cmp     ($C1,x)
        .byte   $F3
        .byte   $F3
        .byte   $17
        ora     $5817,y
        .byte   $F3
        and     $A495,x
        .byte   $17
        and     $5817,y
        sta     ($93),y
        .byte   $17
        and     $4919,y
        .byte   $17
        .byte   $4B
LFE18:  lda     ($B3),y
        stx     $F8
        .byte   $17
        ora     ($17),y
        eor     LFBFA,x
        cmp     $B8CF
        ora     ($88),y
        tya
        cmp     ($E7,x)
        inc     $B7EF
        ora     ($87),y
        .byte   $87
        cmp     LD3F5,y
        ora     ($9D,x)
        bpl     LFE46
        bpl     LFE4A
        sbc     $D3,x
        ora     ($9D,x)
        .byte   $5D
LFE3E:  adc     $8B5D
        .byte   $8B
        .byte   $8F
        ldx     $BE8B
LFE46:  eor     $6F6B,x
        .byte   $6F
LFE4A:  .byte   $8F
        ldx     $5D6F
        ora     ($11),y
        .byte   $6F
        .byte   $6F
        ora     ($AE,x)
        .byte   $6F
        bpl     LFE58
        .byte   $69
LFE58:  .byte   $8B
        .byte   $8B
        .byte   $8F
        ldx     LD58B
        ora     ($01,x)
        sta     LF78B,x
        bvc     LFE83
        ora     ($D7),y
        .byte   $BB
        .byte   $14
        brk
        .byte   $5F
        bvs     LFE78
        sbc     ($01,x)
        .byte   $DB
        adc     ($51),y
        ora     $54,x
        .byte   $54
        eor     $01,x
        brk
LFE78:  bpl     LFEEB
        sbc     $10,x
        eor     ($15),y
        sbc     $AB,x
        .byte   $13
        bpl     LFE78
LFE83:  bpl     LFED6
        eor     ($F5),y
        .byte   $5F
        bpl     LFE9A
        .byte   $F4
        sbc     $71,x
        adc     ($10),y
        ora     $F5,x
        bpl     LFEA4
        adc     #$11
        .byte   $79
        .byte   $9D
LFE97:  sta     $F5F4,x
LFE9A:  ror     $69
        ora     ($79),y
        brk
        ldx     $8BCD
        brk
        .byte   $7E
LFEA4:  sta     $8B6F,x
        .byte   $8B
        bvc     LFE97
        .byte   $C7
        .byte   $9E
        .byte   $8B
        .byte   $8B
        sta     $018B,x
        ora     ($FF,x)
        ora     ($C1,x)
        cmp     ($C1,x)
        cmp     ($ED,x)
        .byte   $0B
        .byte   $62
        ora     $F5,x
        .byte   $C7
        .byte   $1F
        .byte   $62
        eor     $47
        eor     #$00
        eor     ($53),y
        eor     $6500,x
        brk
        brk
        .byte   $6B
        brk
        brk
        ora     ($7F,x)
        brk
        .byte   $57
        eor     $777A,y
        .byte   $79
LFED6:  brk
        .byte   $4F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $73
        adc     $4B71,x
        brk
        .byte   $03
        .byte   $03
        .byte   $13
        .byte   $13
        .byte   $13
        bpl     LFEF8
        .byte   $03
        .byte   $03
        .byte   $03
LFEEB:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $23
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bpl     LFF08
LFEF8:  brk
        brk
        .byte   $02
        .byte   $02
LFEFC:  .byte   $02
        .byte   $02
LFEFE:  .byte   $03
        .byte   $03
        .byte   $31
LFF01:  and     ($31),y
        and     ($30),y
        bmi     LFF37
        .byte   $30
LFF08:  and     ($02),y
        bmi     LFF3C
        bmi     LFF3E
        bmi     LFF40
        and     ($31),y
        bmi     LFF44
        bmi     LFF46
        bmi     LFF1A
        and     ($31),y
LFF1A:  .byte   $43
        eor     ($30,x)
        bmi     LFF4F
        .byte   $03
        and     ($31),y
        and     ($31),y
        and     ($33),y
        .byte   $33
        and     ($31),y
        .byte   $02
        bpl     LFF3C
        and     ($33),y
        .byte   $33
        .byte   $33
        .byte   $23
        brk
        eor     ($02),y
        and     ($03),y
        .byte   $03
LFF37:  .byte   $03
        .byte   $03
        brk
        eor     ($02),y
LFF3C:  and     ($03),y
LFF3E:  .byte   $03
        .byte   $03
LFF40:  and     ($31),y
        and     ($31),y
LFF44:  and     ($02),y
LFF46:  .byte   $03
        .byte   $03
        and     ($31),y
        and     ($31),y
        and     ($03),y
        .byte   $03
LFF4F:  .byte   $03
        and     ($31),y
        .byte   $02
        and     ($31),y
        .byte   $03
        .byte   $02
        .byte   $03
        and     ($31),y
        and     ($31),y
        and     ($02),y
        .byte   $02
        .byte   $02
        and     ($31),y
        and     ($03),y
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $03
        brk
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $33
        brk
        brk
        brk
        bpl     LFF85
        bpl     LFF77
LFF77:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        and     ($01,x)
        brk
        brk
        .byte   $01
LFF85:  ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        and     ($31),y
        ora     ($01,x)
        and     ($03),y
        .byte   $03
        .byte   $03
        brk
        and     ($31),y
        and     ($30),y
        .byte   $02
        and     ($31),y
        and     ($31),y
        .byte   $03
        brk
        .byte   $03
        .byte   $02
        and     ($31),y
        and     ($31),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        and     ($31),y
        and     ($31),y
        brk
        .byte   $03
        .byte   $03
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($02,x)
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
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
LFFFE:  cpx     #$FF
