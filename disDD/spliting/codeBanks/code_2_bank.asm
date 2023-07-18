; da65 V2.18 - N/A
; Created:    2023-07-17 12:51:38
; Input file: code_bank_2.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L004C           := $004C
L006D           := $006D
L00C5           := $00C5
L00CF           := $00CF
L00D0           := $00D0
L00D1           := $00D1
L0221           := $0221
L0288           := $0288
L02A8           := $02A8
L0303           := $0303
L03B1           := $03B1
L04AE           := $04AE
L04EE           := $04EE
L1048           := $1048
L10C8           := $10C8
L10E8           := $10E8
L1108           := $1108
L1919           := $1919
L2221           := $2221
L2422           := $2422
L270F           := $270F
L3130           := $3130
L3211           := $3211
L3827           := $3827
L3EF0           := $3EF0
L4000           := $4000
L4E4D           := $4E4D
L626D           := $626D
L6A6D           := $6A6D
L6C6C           := $6C6C
L6D6D           := $6D6D
L6E6C           := $6E6C
L6E6D           := $6E6D
L7070           := $7070
L746C           := $746C
L7978           := $7978
L8000           := $8000
L8037           := $8037
L8080           := $8080
L8A04           := $8A04
L909C           := $909C
L90B0           := $90B0
L9326           := $9326
L9605           := $9605
L9626           := $9626
L9636           := $9636
L967A           := $967A
L9B86           := $9B86
L9BDC           := $9BDC
L9C2E           := $9C2E
L9C8B           := $9C8B
L9CC8           := $9CC8
LA13D           := $A13D
LA19E           := $A19E
LA1D7           := $A1D7
LA1E4           := $A1E4
LA2A6           := $A2A6
LA300           := $A300
LA313           := $A313
LA31B           := $A31B
LA392           := $A392
LA3AC           := $A3AC
LA402           := $A402
LA41B           := $A41B
LA448           := $A448
LA4C8           := $A4C8
LA4F1           := $A4F1
LA51D           := $A51D
LA554           := $A554
LA571           := $A571
LA5AB           := $A5AB
LA607           := $A607
LA6A5           := $A6A5
LA742           := $A742
LA76E           := $A76E
LA77D           := $A77D
LA78C           := $A78C
LAA00           := $AA00
LAA13           := $AA13
LAA2C           := $AA2C
LAADD           := $AADD
LAB57           := $AB57
LAB72           := $AB72
        lda     $803D,x
        sta     L0000
        lda     $8043,x
        sta     $01
        ldy     #$00
        lda     $2002
LC00F:  lda     (L0000),y
        cmp     #$FF
        beq     LC036
        sta     $2006
        jsr     L8037
        lda     (L0000),y
        sta     $2006
        jsr     L8037
        lda     (L0000),y
        tax
        jsr     L8037
LC029:  lda     (L0000),y
        sta     $2007
        jsr     L8037
        dex
        bne     LC029
        beq     LC00F
LC036:  rts

        iny
        bne     LC03C
        inc     $01
LC03C:  rts

        eor     #$A1
        cpx     LC889
        ldx     L8080,y
        .byte   $83
        .byte   $87
        .byte   $87
        .byte   $89
        and     ($2C,x)
        php
        sbc     $03,x
        cmp     LECE2,x
        .byte   $E7
        dec     $21F2,x
        .byte   $64
        clc
        sbc     #$EB
        inx
        cmp     LDCEE,x
        dec     $03DD,x
        .byte   $DB
        .byte   $F2
        .byte   $03
        .byte   $DC
        .byte   $DA
        sbc     #$DC
        inx
        inc     $03
        cmp     ($D9),y
        cmp     LF4D2,y
        and     ($A5,x)
        .byte   $17
        .byte   $DC
        .byte   $DA
        sbc     #$DC
        inx
        inc     $03
        inc     LECF6
        inc     $DA,x
        inc     $F7,x
        .byte   $E2
        .byte   $E7
        .byte   $DC
        inc     $03,x
        cmp     ($D9),y
        cmp     $22D2,y
        rol     $14
        sbc     $E2
        .byte   $DC
        dec     LECE7,x
        dec     $03DD,x
        .byte   $DB
        .byte   $F2
        .byte   $03
        .byte   $E7
        .byte   $E2
        .byte   $E7
        sbc     LE7DE
        cmp     LFFE8,x
        jsr     L8000
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
LC0AF:  .byte   $02
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
        .byte   $04
        ora     $06
        .byte   $07
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
LC11C:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jsr     L8080
        iny
        iny
        php
        ora     #$0A
        iny
        iny
        .byte   $0B
        .byte   $03
        .byte   $03
        .byte   $0C
        iny
        iny
LC134:  iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
LC13C:  iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        ora     $0E0D
        .byte   $03
        .byte   $03
        .byte   $0F
        bpl     LC160
        .byte   $03
        .byte   $03
        .byte   $12
        .byte   $0D
        .byte   $0D
LC154:  ora     $0D0D
        ora     $0D0D
        ora     $0D0D
        ora     $0D0D
LC160:  ora     $0D0D
        ora     $0D0D
        ora     $1313
        .byte   $14
        ora     $03,x
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        asl     $17,x
        clc
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        ora     L1919,y
        .byte   $1A
        .byte   $1B
        .byte   $1C
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     $1F1E,x
        jsr     L1919
        ora     L1919,y
        ora     L1919,y
        ora     L1919,y
        ora     L1919,y
        ora     $2119,y
        ora     $08
        and     ($22,x)
        .byte   $23
        .byte   $03
        .byte   $03
        .byte   $03
        bit     $25
        and     ($27,x)
        .byte   $07
        rol     $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $27
        plp
        and     ($47,x)
        .byte   $13
        and     #$03
        .byte   $03
        .byte   $03
        rol     a
        .byte   $2B
        bit     a:L0000
        brk
        brk
        and     $2F2E
        .byte   $03
        .byte   $03
        bmi     LC202
        .byte   $32
        and     ($66,x)
        ora     $33,x
        .byte   $34
        .byte   $03
        .byte   $03
        .byte   $03
        and     $36,x
        brk
        brk
        brk
        .byte   $37
        sec
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        and     $8521,y
        .byte   $17
        .byte   $3A
        .byte   $3B
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $3C
        and     $3F3E,x
        rti

        eor     ($03,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $42
        .byte   $43
        .byte   $44
        .byte   $45
LC202:  lsr     $47
        and     ($A5,x)
        .byte   $12
        pha
        .byte   $03
        .byte   $03
        .byte   $03
LC20B:  .byte   $03
        eor     #$4A
        .byte   $4B
        jmp     L0303

        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        eor     LC521
        clc
        .byte   $4E
        .byte   $03
LC21E:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $4F
        bvc     LC275
        .byte   $52
        .byte   $53
        .byte   $54
        eor     $56,x
        .byte   $57
        cli
        eor     $5B5A,y
        .byte   $5C
        eor     $5F5E,x
        rts

        adc     ($21,x)
        sbc     $18
        .byte   $62
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $63
        .byte   $64
        adc     $66
        .byte   $67
        pla
        adc     #$6A
        .byte   $6B
        jmp     (L6E6D)

        .byte   $6F
        bvs     LC2BD
        .byte   $72
        .byte   $73
        .byte   $74
        .byte   $22
        ora     $18
        adc     $76,x
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $77
        sei
        adc     $7B7A,y
        .byte   $7C
        adc     $7F7E,x
        .byte   $80
        sta     ($82,x)
        .byte   $83
        sty     $85
        stx     $87
        dey
        .byte   $22
        rol     $16
        .byte   $89
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        txa
        .byte   $8B
        .byte   $8C
LC275:  sta     $8F8E
        bcc     LC20B
        .byte   $92
        .byte   $93
        sty     $95,x
        stx     $97,y
        tya
        sta     $229A,y
        lsr     $15
        .byte   $9B
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $9C
        sta     L0303,x
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $9E
        .byte   $9F
        ldy     #$A1
        ldx     #$A3
        ldy     $A5
        .byte   $22
        .byte   $67
        .byte   $14
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ldx     $A7
        tay
        lda     #$AA
        .byte   $AB
        ldy     $22AD
        stx     $0D
        ldx     L0303
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LC2BD:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $AF
        bcs     LC2E5
        ldx     $0B
        lda     ($03),y
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $B2
        .byte   $B3
        ldy     $B5,x
        ldx     $22,y
        cpy     #$40
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        clv
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        lda     $B7BA,y
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
LC2E5:  .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
LC2F9:  ldy     L0303,x
        .byte   $03
        lda     $BBBE,x
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $23
        brk
        rti

        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        cpy     #$03
        .byte   $03
        cmp     ($C2,x)
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        cpy     L00C5
        dec     $C7
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $C3
        .byte   $23
        rti

        .byte   $80
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
        .byte   $23
        .byte   $DA
        asl     $44
        eor     ($50),y
        bvc     LC431
        bpl     LC406
        .byte   $E2
        asl     $88
        rol     a
        asl     a
        .byte   $FA
        .byte   $FA
        ora     ($FF,x)
        jsr     L4000
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LC406:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LC424:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $20
        rti

LC431:  jsr     L3130
        .byte   $32
        .byte   $03
        .byte   $03
        .byte   $33
        bmi     LC46C
        .byte   $33
        .byte   $32
        .byte   $33
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $33
        bmi     LC474
        .byte   $32
        .byte   $03
        .byte   $03
        .byte   $03
        bmi     LC47B
        .byte   $03
        .byte   $03
        .byte   $33
        bmi     LC47F
        .byte   $32
        .byte   $33
        .byte   $03
        .byte   $33
        jsr     L03B1
        asl     $06
        asl     $20
        cpy     $0614
        brk
        asl     $04
        asl     $04
        ora     $04
        ora     L0000
        brk
        brk
        asl     $06
        asl     $06
        .byte   $06
LC46C:  asl     $06
        asl     $20
        sbc     ($1F,x)
        asl     L0000
LC474:  brk
        asl     $06
        asl     $06
        brk
        .byte   $06
LC47B:  asl     $06
        ora     $04
LC47F:  ora     $04
        .byte   $07
        .byte   $07
        php
        .byte   $07
        php
        .byte   $04
        ora     L0000
        brk
        .byte   $04
        .byte   $07
        php
        ora     $04
        ora     $05
        and     (L0000,x)
        .byte   $80
        .byte   $04
        ora     $04
        ora     $04
        ora     $04
        .byte   $04
        ora     $04
        .byte   $04
        .byte   $07
        php
        .byte   $07
        php
        .byte   $12
        .byte   $0F
        bpl     LC4B8
        .byte   $0F
        .byte   $0F
        bpl     LC4B7
        ora     #$00
        brk
        .byte   $7B
        php
        .byte   $07
        php
        .byte   $07
        php
        .byte   $07
        php
        .byte   $07
LC4B7:  php
LC4B8:  .byte   $07
        php
        .byte   $07
        php
        php
        .byte   $07
        php
        .byte   $12
        .byte   $0F
        bpl     LC4D4
        .byte   $0C
        ora     $1211
        bpl     LC4D9
        ora     #$18
        ora     L0000,y
        .byte   $7A
        .byte   $7B
        asl     a
        .byte   $0B
        asl     a
        .byte   $0B
LC4D4:  .byte   $0F
        bpl     LC4E8
        .byte   $12
        asl     a
LC4D9:  .byte   $0B
        .byte   $0C
        ora     $100D
        ora     ($12),y
        .byte   $12
        .byte   $0F
        ora     ($11),y
        .byte   $12
        asl     $18,x
        .byte   $17
LC4E8:  clc
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $7C
        .byte   $7B
        .byte   $14
        .byte   $0B
        .byte   $14
        .byte   $0F
        bpl     LC508
        .byte   $12
        .byte   $0F
        bpl     LC50C
        .byte   $12
        ora     ($12),y
        bpl     LC511
        .byte   $12
        ora     $16,x
        clc
        ora     L0000,y
        brk
LC508:  brk
        .byte   $34
        and     L0000,x
LC50C:  brk
        brk
        brk
        brk
        .byte   $7A
LC511:  clc
        clc
        .byte   $17
        and     ($80,x)
        .byte   $17
        .byte   $0B
        .byte   $0C
        ora     $0C0D
        ora     $150B
        clc
        clc
LC521:  .byte   $17
        clc
        clc
LC524:  ora     L0000,y
        brk
        brk
        brk
        brk
        brk
        rol     $37,x
        and     ($A0,x)
        .byte   $1C
        clc
        .byte   $17
        clc
LC534:  .byte   $7F
        clc
        .byte   $17
        clc
        ora     $1A,y
        brk
LC53C:  brk
        brk
        brk
        brk
        .byte   $4B
        jmp     L4E4D

        .byte   $4F
        bvc     LC57F
        and     L4E4D,y
        .byte   $4D
        .byte   $4C
LC54C:  .byte   $4B
        and     ($C2,x)
        rol     $1C1B,x
        brk
        brk
        brk
        .byte   $1B
        .byte   $1C
        brk
        brk
        brk
        brk
        brk
        eor     ($66),y
        .byte   $67
        pla
        adc     #$66
        .byte   $3A
        .byte   $3B
        .byte   $3C
        and     $7467,x
        adc     $6A,x
        .byte   $6B
        jmp     (L004C)

        brk
        brk
        ora     a:$1E,x
        brk
        brk
        ora     a:$1E,x
        brk
        brk
        .byte   $52
        .byte   $53
        adc     $776A
LC57F:  sei
        adc     $3E6A
        .byte   $3F
        rti

        eor     ($6B,x)
        jmp     (L626D)

        .byte   $63
        .byte   $64
        adc     $62
        .byte   $22
        brk
        .byte   $80
        brk
        jsr     L2221
        .byte   $1F
        brk
        jsr     L2221
        .byte   $1F
        brk
        .byte   $4B
        .byte   $54
        .byte   $64
        adc     $62
        .byte   $63
        .byte   $64
        adc     $62
        .byte   $42
        .byte   $43
        .byte   $44
        eor     $46
        .byte   $44
        adc     ($66),y
        .byte   $67
        .byte   $74
        adc     $66,x
        bit     $25
        brk
        rol     $23
        bit     $25
        brk
        rol     $23
        eor     $66,x
        .byte   $67
        .byte   $74
        adc     $66,x
        .byte   $67
        pla
        adc     #$66
        .byte   $47
        pha
        eor     #$4A
        .byte   $67
        pla
        adc     #$6A
        .byte   $6B
        jmp     (L6A6D)

        .byte   $27
        .byte   $27
        .byte   $27
        plp
        .byte   $27
        .byte   $27
        .byte   $27
        .byte   $27
        plp
        .byte   $27
        .byte   $57
        eor     $6C7D
        adc     $6B6A
        jmp     (L7978)

        .byte   $6B
        jmp     (L6A6D)

        .byte   $6B
        jmp     (L6A6D)

        .byte   $77
        sei
        adc     $2A6A
        .byte   $2B
        brk
        bit     $2A29
        .byte   $2B
        brk
        bit     $5929
        eor     ($5A),y
        .byte   $5B
        adc     $6E
        .byte   $6F
        bvs     LC675
        .byte   $62
        .byte   $63
        .byte   $64
        adc     $62
        .byte   $6F
        bvs     LC67D
        .byte   $62
        .byte   $63
        .byte   $64
        adc     $62
        .byte   $22
        .byte   $82
        asl     $2F2E,x
        and     a:L0000
        rol     $2D2F
        .byte   $5C
        eor     $5E56,x
        .byte   $5F
        .byte   $72
        .byte   $73
        .byte   $74
        adc     $66,x
        .byte   $67
        pla
        adc     #$66
        .byte   $73
        .byte   $74
        adc     $66,x
        .byte   $67
        .byte   $74
        adc     $66,x
        .byte   $22
        ldy     $6014
        rts

        adc     ($6A,x)
        ror     $77,x
        sei
        adc     $6C6B,y
        adc     $766A
        .byte   $77
        sei
        adc     $6C6B,y
        adc     $226A
        cpy     #$80
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
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
LC675:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LC67D:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LC6C6:  brk
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $23
        rti

        .byte   $80
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
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
        .byte   $02
        .byte   $02
        .byte   $23
        cpy     #$1B
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        eor     $55,x
        eor     $55,x
        eor     $55,x
        eor     $55,x
LC762:  eor     $55,x
LC764:  eor     $55,x
LC766:  eor     $05,x
LC768:  ora     $55
        ora     $05
        ora     ($23,x)
        inx
        clc
        beq     LC762
        beq     LC764
        beq     LC766
        beq     LC768
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $FF
        jsr     L04AE
        cpx     #$DA
        inc     $DE
        jsr     L04EE
        inx
        .byte   $EF
        dec     $21EB,x
        adc     $15
        .byte   $DC
        inx
        .byte   $E7
        sbc     LE7E2
        inc     $03DE
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $DA
        .byte   $03
        .byte   $DB
        inc     LEDED
        inx
        .byte   $E7
        and     ($A5,x)
        ora     $EC,x
        sbc     LE0DA
        dec     LEC03,x
        dec     LDEE5,x
        .byte   $DC
        sbc     LDB03
        .byte   $03
        .byte   $DB
        inc     LEDED
        inx
        .byte   $E7
        .byte   $FF
        jsr     L1048
        .byte   $5B
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        eor     $6820,x
        bpl     LC83D
        rts

        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        .byte   $62
        adc     ($5F,x)
        jsr     L0288
        lsr     $2069,x
        stx     $02,y
        .byte   $63
        .byte   $64
        jsr     L02A8
        lsr     $2069,x
        .byte   $B2
        .byte   $02
        brk
        ora     ($20,x)
        ldx     $02,y
        pla
        .byte   $5F
        jsr     L10C8
        lsr     $0269,x
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $04
        ora     $06
        .byte   $07
        php
        ora     #$02
        .byte   $02
        pla
        .byte   $5F
        jsr     L10E8
        lsr     $0269,x
        .byte   $02
        .byte   $02
        asl     a
        .byte   $0B
        .byte   $0C
        ora     $0F0E
        bpl     LC82C
        .byte   $02
        pla
LC82C:  .byte   $5F
        and     ($08,x)
        bpl     LC88F
        adc     #$02
        .byte   $02
        ora     ($12),y
        .byte   $13
        .byte   $14
        ora     $16,x
        .byte   $17
        clc
        .byte   $02
LC83D:  .byte   $02
        pla
        .byte   $5F
        and     ($28,x)
        bpl     LC8A2
        adc     #$02
        ora     $1B1A,y
        .byte   $1C
        ora     $1F1E,x
        jsr     L0221
        .byte   $02
        pla
        .byte   $5F
        and     ($48,x)
        bpl     LC8B5
        adc     #$02
        .byte   $22
        .byte   $23
        bit     $25
        rol     $27
        plp
        and     #$2A
        .byte   $2B
        .byte   $02
        pla
        .byte   $5F
        and     ($68,x)
        bpl     LC8C8
        adc     #$02
        bit     $2E2D
        .byte   $2F
        bmi     LC8A3
        .byte   $32
        .byte   $33
        .byte   $34
        and     $02,x
        pla
        .byte   $5F
        and     ($88,x)
        bpl     LC8DB
        adc     #$02
        rol     $37,x
        sec
        and     $3B3A,y
        .byte   $3C
        and     $023E,x
LC889:  .byte   $02
        pla
        .byte   $5F
        and     ($A8,x)
        .byte   $10
LC88F:  lsr     $0269,x
        .byte   $02
        .byte   $3F
        .byte   $02
        rti

        eor     ($42,x)
        .byte   $02
        .byte   $44
        eor     $02
        .byte   $02
        pla
        .byte   $5F
        and     ($C8,x)
        .byte   $10
LC8A2:  .byte   $5E
LC8A3:  adc     #$02
        .byte   $02
        .byte   $02
        .byte   $02
        lsr     $47
        pha
        eor     #$4A
        .byte   $4B
        .byte   $02
        .byte   $02
        pla
        .byte   $5F
        and     ($E8,x)
        .byte   $10
LC8B5:  lsr     $0269,x
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        jmp     L4E4D

        .byte   $4F
        .byte   $02
        .byte   $02
        .byte   $02
        pla
        .byte   $5F
        .byte   $22
        brk
        rti

LC8C8:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        lsr     $0269,x
        .byte   $02
        .byte   $02
        .byte   $02
        bvc     LC929
        .byte   $52
        .byte   $53
        .byte   $02
LC8DB:  .byte   $02
        .byte   $02
        .byte   $02
        pla
        .byte   $5F
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        lsr     $0269,x
        .byte   $02
        .byte   $02
        .byte   $54
        eor     $56,x
        .byte   $57
        cli
        eor     $0202,y
        .byte   $02
        pla
        .byte   $5F
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $22
        rti

        rti

        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        lsr     $6E6A,x
        ror     $6C6E
        jmp     (L7070)

        jmp     (L6E6C)

        ror     $6B6E
        .byte   $5F
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
LC929:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        adc     $66
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ror     $66
        adc     ($71),y
        ror     $66
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ror     $67
        .byte   $5A
LC944:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $22
        .byte   $80
        rti

        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $73
        .byte   $02
        .byte   $02
        adc     L6D6D
        adc     L6D6D
        adc     $026D
        .byte   $02
        .byte   $72
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $23
        .byte   $C2
        .byte   $04
        ldy     #$A0
        ldy     #$A0
        .byte   $23
        dex
        .byte   $04
        .byte   $22
        brk
        brk
        dey
        .byte   $23
        .byte   $D2
        .byte   $04
LC99F:  .byte   $22
        brk
        brk
        dey
        .byte   $23
        .byte   $DA
        .byte   $04
        .byte   $22
        brk
        brk
        dey
        .byte   $23
        cpx     #$10
        .byte   $FF
        .byte   $FF
        ldx     #$A5
        lda     $A8
        .byte   $FF
        .byte   $FF
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $FF
        jsr     L1048
        .byte   $C7
LC9C2:  iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        iny
        cmp     #$20
        pla
        bpl     LC99F
        cpy     LCECE
        dec     LCECE
        dec     LCECE
        dec     LCECE
        dec     LCBCD
        jsr     L0288
        dex
        cmp     $20,x
        stx     $02,y
LC9EC:  .byte   $CF
        bne     LCA0F
        tay
        .byte   $02
        dex
        cmp     $20,x
        ldx     $02,y
        .byte   $D4
        .byte   $CB
        jsr     L10C8
        dex
        cmp     $82,x
        .byte   $82
LC9FF:  .byte   $82
        .byte   $80
        sta     ($83,x)
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        jsr     L10E8
        dex
LCA0F:  cmp     $82,x
        .byte   $82
LCA12:  .byte   $82
        sty     $85
        stx     $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($08,x)
        bpl     LC9EC
        cmp     $82,x
        .byte   $82
LCA25:  .byte   $82
        .byte   $87
        sta     $88
        .byte   $89
        txa
        .byte   $8B
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($28,x)
        bpl     LC9FF
        cmp     $82,x
        .byte   $82
LCA38:  .byte   $82
        sty     $8E8D
        sta     $8F
        bcc     LC9C2
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($48,x)
        bpl     LCA12
        cmp     $82,x
        .byte   $82
LCA4B:  .byte   $82
        sta     ($92),y
        .byte   $93
        sty     $95,x
        stx     $82,y
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($68,x)
        bpl     LCA25
        cmp     $82,x
        .byte   $82
LCA5E:  .byte   $82
        .byte   $97
        tya
        sta     $9B9A,y
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($88,x)
        bpl     LCA38
        cmp     $82,x
        .byte   $82
LCA71:  .byte   $82
        .byte   $9C
        sta     $9F9E,x
        ldy     #$82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($A8,x)
        bpl     LCA4B
        cmp     $82,x
        .byte   $82
        .byte   $82
        lda     ($A2,x)
        .byte   $A3
        ldy     $A5
        ldx     $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($C8,x)
        bpl     LCA5E
        cmp     $82,x
        .byte   $82
        .byte   $82
        .byte   $A7
        tay
        tay
        lda     #$AA
        .byte   $AB
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     ($E8,x)
        bpl     LCA71
        cmp     $82,x
        .byte   $82
        ldy     $A8AD
        ldx     $B0AF
        lda     ($B2),y
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        .byte   $22
        brk
        rti

        dec     $C6
        dec     $C6
        dec     $C6
LCABF:  dec     $C6
        dex
        cmp     $82,x
        .byte   $B3
        ldy     $B5,x
        ldx     $B7,y
        clv
        lda     $BBBA,y
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dex
        cmp     $82,x
        ldy     $BEBD,x
        .byte   $BF
        cpy     #$C1
        .byte   $C2
        .byte   $C3
        cpy     L00C5
        .byte   $82
        .byte   $D4
        .byte   $CB
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        .byte   $22
        rti

        rti

        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dex
        dec     $F4,x
        .byte   $F4
        .byte   $F4
        cld
        cld
        .byte   $FB
        .byte   $FB
        cld
        cld
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $D7
        .byte   $CB
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        cmp     ($D2),y
        .byte   $FA
        .byte   $FA
        .byte   $FA
        .byte   $D2
        .byte   $D2
        .byte   $FC
        .byte   $FC
        .byte   $D2
        .byte   $D2
        .byte   $FA
        .byte   $FA
        .byte   $FA
        .byte   $D2
        .byte   $D3
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        .byte   $22
        .byte   $80
        rti

        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $FF
        .byte   $82
        .byte   $82
        cmp     LD9D9,y
        cmp     LD9D9,y
        cmp     $82D9,y
        .byte   $82
        sbc     LC6C6,x
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $C6
        dec     $23
        .byte   $C2
        .byte   $04
        tax
        tax
        tax
        tax
        .byte   $23
        dex
        .byte   $04
        tax
        asl     a
        tax
        tax
        .byte   $23
        .byte   $D2
        .byte   $04
        tax
        bpl     LCB93
LCB93:  tax
        .byte   $23
        .byte   $DA
        .byte   $04
        ror     a
        eor     ($54),y
        tax
        .byte   $23
        cpx     #$10
        .byte   $FF
        .byte   $FF
        ldx     $A5
        lda     $A9
        .byte   $FF
        .byte   $FF
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LCBCD:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LCC2C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        ldy     #$0F
LCD02:  lda     $8D15,y
        sta     $0300,y
        sta     $0320,y
        dey
        bpl     LCD02
        lda     #$99
        sta     $1B
        sta     $18
        rts

        .byte   $0F
        .byte   $13
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $13
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $13
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $13
        .byte   $0F
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
        ldy     #$0F
LCD32:  lda     #$0F
        sta     $0300,y
        sta     $0320,y
        lda     $8D77,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LCD32
        lda     #$9F
        sta     $1A
        lda     #$99
        sta     $1B
        sta     $18
        lda     #$AC
        jsr     LFA78
        lda     #$80
        sta     $04D0
        lda     #$9B
        sta     $0510
        lda     #$C8
        sta     $04F0
        lda     #$00
        sta     $0500
        sta     $0520
        lda     #$B3
        sta     $0530
        lda     #$01
        sta     $0540
        rts

        .byte   $0F
        .byte   $0F
        bmi     LCDA2
        .byte   $0F
        .byte   $0F
        .byte   $13
        bit     $0F
        .byte   $0F
        .byte   $13
        .byte   $03
        .byte   $0F
        .byte   $0F
        .byte   $2B
        .byte   $27
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LCDA2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        ldy     #$0F
LCE02:  lda     $8E5E,y
        sta     $0300,y
        sta     $0320,y
        lda     $8E6E,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LCE02
        lda     #$9F
        sta     $1A
        lda     #$9A
        sta     $1B
        sta     $18
        lda     #$36
        jsr     LFA78
        lda     #$90
        sta     $0400
        sta     $0401
        lda     #$80
        sta     $04D0
        sta     $04D1
        lda     #$B7
        sta     $0510
        sta     $0511
        lda     #$D0
        sta     $04F0
        lda     #$00
        sta     $0500
        sta     $0520
        sta     $0501
        sta     $0521
        ldx     #$01
        lda     #$39
        jsr     LFA6C
        lda     #$10
        sta     $04F1
        rts

        .byte   $0F
        .byte   $37
        bpl     LCE62
LCE62:  .byte   $0F
        ora     $09,y
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        and     ($21),y
        ora     ($0F,x)
        .byte   $27
        bmi     LCE87
        .byte   $0F
        .byte   $0F
        .byte   $23
        .byte   $13
        .byte   $0F
        .byte   $27
        bmi     LCE8D
        .byte   $0F
        .byte   $0F
        bmi     LCE9F
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LCE87:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LCE8D:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LCE9F:  .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LCECE:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        ldx     #$01
        lda     #$2F
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        sta     $04D2
        sta     $0402
        lda     #$90
        sta     $0400,x
        lda     #$FF
        sta     $04F0,x
        lda     #$A4
        sta     $0510,x
        lda     #$00
        sta     $0500,x
        sta     $0502
        sta     $0520,x
        sta     $0540,x
        sta     $0522
        sta     $0532
        sta     $04F2
        lda     #$E9
        sta     $0530,x
        lda     #$06
        sta     $0542
        inx
        lda     #$AD
        jsr     LFA6C
        lda     #$B7
        sta     $0510,x
        ldy     #$0F
LCF4F:  lda     $9A9C,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LCF4F
        lda     #$FF
        sta     $18
LCF5F:  ldy     #$04
        sty     $97
        jsr     LF89A
        lda     $14
        bne     LCF7B
        ldx     #$01
        jsr     LF51B
        ldx     #$02
        jsr     LF4FD
        lda     $04F1
        cmp     #$04
        bcs     LCF5F
LCF7B:  lda     #$04
        sta     $97
        jsr     LC21E
        rts

        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        lda     #$00
        sta     $0550
        lda     #$02
        sta     $0560
LD00A:  jsr     LFF06
        lda     $14
        beq     LD014
        jmp     L909C

LD014:  ldx     #$00
        jsr     LF539
        lda     $0510
        sec
        sbc     $FA
        bcs     LD024
        sbc     #$0F
        clc
LD024:  sta     $10
        jsr     LF7E0
        lda     $FB
        cmp     #$01
        bne     LD00A
        lda     $FA
        bne     LD00A
        .byte   $A2
LD034:  asl     a
        jsr     LFEFF
        ldx     #$01
        lda     #$3B
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        lda     #$70
        sta     $0510,x
        lda     #$B0
        sta     $0400,x
        lda     #$FF
        sta     $04F0,x
        lda     #$01
        sta     $0520,x
        lda     #$00
        sta     $0500,x
        lda     #$04
        sta     $0530,x
        lda     #$04
        sta     $0540,x
        ldy     #$0F
LD069:  lda     $90A4,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LD069
        lda     #$FF
        sta     $18
LD079:  ldy     #$04
        sty     $97
        jsr     LF89A
        lda     $14
        bne     LD09C
        ldx     #$01
        jsr     LF51B
        lda     $04F0,x
        cmp     #$70
        bcs     LD095
        lda     #$90
        sta     $0400,x
LD095:  lda     $04F0,x
        cmp     #$04
        bcs     LD079
LD09C:  lda     #$04
        sta     $97
        jsr     LC21E
        rts

        .byte   $0F
        .byte   $27
        bmi     LD0BD
        .byte   $0F
        .byte   $0F
        .byte   $23
        .byte   $13
        .byte   $0F
        .byte   $27
        bmi     LD0C3
        .byte   $0F
        .byte   $0F
        bmi     LD0D5
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD0BD:  brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
LD0C3:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LD0D5:  .byte   $FF
        .byte   $FF
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
        ldy     #$0F
LD102:  lda     $919E,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LD102
        lda     #$FF
        sta     $18
        ldx     #$01
        lda     #$2D
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        sta     $04D2
        lda     #$5C
        sta     $0510,x
        lda     #$48
        sta     $0512
        lda     #$E0
        sta     $0400,x
        lda     #$A0
        sta     $0402
        lda     #$80
        sta     $04F0,x
        sta     $04F2
        lda     #$00
        sta     $0520,x
        sta     $0500,x
        sta     $0522
        sta     $0502
        inx
        lda     #$B5
        jsr     LFA6C
        ldy     #$04
        sty     $97
        jsr     LF89A
        lda     #$80
        sta     $0550
        lda     #$02
        sta     $0560
LD162:  jsr     LFF06
        lda     $14
        bne     LD196
        ldx     #$00
        jsr     LF539
        lda     $0510
        sec
        sbc     $FA
        bcs     LD179
        sbc     #$0F
        clc
LD179:  sta     $10
        jsr     LF7E0
        lda     $FB
        bne     LD162
        lda     $FA
        cmp     #$A4
        bne     LD162
LD188:  ldy     #$04
        sty     $97
        jsr     LF89A
        lda     $0411
        cmp     #$11
        bne     LD188
LD196:  lda     #$04
        sta     $97
        jsr     LC21E
        rts

        .byte   $0F
        .byte   $0F
        bmi     LD1C9
        .byte   $0F
        .byte   $0F
        .byte   $27
        .byte   $13
        .byte   $0F
        .byte   $37
        .byte   $27
        .byte   $17
        .byte   $0F
        .byte   $0F
        .byte   $0F
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LD1C9:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LD1CF:  .byte   $FF
LD1D0:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        ldx     #$01
        lda     #$BC
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        lda     #$A4
        sta     $0400,x
        lda     #$DC
        sta     $0510,x
        lda     #$00
        sta     $04F0,x
        sta     $0500,x
        sta     $0520,x
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        rts

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        ldx     #$F0
        jsr     LFEFF
        ldx     #$01
        lda     #$2F
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        sta     $04D2
        sta     $0402
        sta     $04D4
        sta     $0404
        sta     $04D5
        lda     #$A0
        sta     $0405
        lda     #$90
        sta     $0400,x
        lda     #$FF
        sta     $04F0,x
        lda     #$A4
        sta     $0510,x
        lda     #$00
        sta     $0500,x
        sta     $0502
        sta     $0504
        sta     $0505
        sta     $0520,x
        sta     $0540,x
        sta     $0522
        sta     $0524
        sta     $0525
        sta     $0532
        sta     $0534
        sta     $04F2
        sta     $04F4
        lda     #$19
        sta     $0530,x
        lda     #$03
        sta     $0542
        lda     #$07
        sta     $0544
        inx
        lda     #$AE
        jsr     LFA6C
        lda     #$AC
        sta     $0510,x
        ldx     #$04
        lda     #$C6
        jsr     LFA6C
        lda     #$B7
        sta     $0514
        ldx     #$05
        lda     #$C5
        jsr     LFA6C
        lda     #$A0
        sta     $04F0,x
        lda     #$D0
        sta     $0510,x
        ldy     #$0F
LD316:  lda     $93B8,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LD316
        lda     #$FF
        sta     $18
LD326:  lda     $04D0
        and     #$0F
        cmp     #$02
        bne     LD34B
        ldx     #$03
        jsr     LF55E
        jsr     LF51B
        lda     $04F3
        cmp     #$40
        bcs     LD343
        lda     #$80
        sta     $0405
LD343:  lda     $04F3
        cmp     #$3C
        bcs     LD34B
        rts

LD34B:  ldy     #$04
        sty     $97
        jsr     LF89A
        lda     $04D0
        and     #$0F
        bne     LD326
        ldx     #$04
        jsr     LF4FD
        ldx     #$01
        jsr     LF51B
        lda     $04F1
        cmp     #$80
        bcs     LD326
        ldx     #$02
        jsr     LF4FD
        lda     $04F2
        cmp     #$6A
        bcc     LD326
        inc     $04D0
        ldx     #$01
        lda     #$B3
        jsr     LFA6C
        lda     #$80
        sta     $0510,x
        ldx     #$03
        lda     #$B4
        jsr     LFA6C
        lda     #$80
        sta     $04D3
        sta     $0403
        sta     $04F3
        sta     $0513
        lda     #$00
        sta     $0503
        sta     $0523
        lda     #$D9
        sta     $0553
        sta     $0533
        lda     #$01
        sta     $0563
        sta     $0543
        inc     $04D0
        jmp     L9326

        ora     ($0F),y
        bmi     LD3BC
LD3BC:  ora     ($0F),y
        brk
        .byte   $03
        ora     ($0F),y
        .byte   $13
        .byte   $03
        ora     ($0F),y
        bpl     LD3C8
LD3C8:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        ldy     #$0F
LD502:  lda     $953C,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LD502
        lda     #$0D
        jsr     LC2F9
        lda     #$9F
        sta     $1A
        lda     #$99
        sta     $1B
        sta     $18
        ldx     #$00
        lda     #$A3
        jsr     LFA6C
        lda     #$80
        sta     $04D0
        lda     #$9B
        sta     $0510
        lda     #$28
        sta     $04F0
        lda     #$00
        sta     $0500
        sta     $0520
        rts

        .byte   $0F
        .byte   $0F
        bmi     LD567
        .byte   $0F
        .byte   $0F
        .byte   $13
        bit     $0F
        .byte   $0F
        .byte   $13
        .byte   $03
        .byte   $0F
        .byte   $0F
        .byte   $2B
        .byte   $27
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LD567:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LD5BB:  brk
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
        lda     #$2B
        jsr     LFA78
LD605:  ldy     #$A0
        sty     $97
        jsr     LF89A
        lda     $0410
        cmp     #$11
        beq     LD630
        cmp     #$0F
        bne     LD605
        lda     $31
        cmp     #$07
        beq     LD623
        jsr     L9636
        jmp     L9626

LD623:  jsr     L967A
        lda     $0430
        cmp     #$04
        beq     LD630
        jmp     L9605

LD630:  ldx     #$3C
        jsr     LFEFF
        rts

        ldx     #$00
        ldy     #$00
LD63A:  lda     $31
        bne     LD646
        lda     $973F,y
        sta     $0200,y
        bne     LD65D
LD646:  cmp     #$06
        bne     LD652
LD64A:  lda     $9807,x
        sta     $0200,y
        bne     LD65C
LD652:  cmp     #$05
        beq     LD64A
        lda     $97DF,x
        sta     $0200,y
LD65C:  inx
LD65D:  lda     $9740,y
        sta     $0201,y
        lda     $9741,y
        sta     $0202,y
        lda     $9742,y
        .byte   $99
LD66D:  .byte   $03
        .byte   $02
        iny
        iny
        iny
        iny
        cpy     #$A0
        bne     LD63A
        sty     $97
        rts

        ldy     #$00
LD67C:  lda     $969F,y
        sta     $0200,y
        lda     $96A0,y
        sta     $0201,y
        lda     $96A1,y
        sta     $0202,y
        lda     $96A2,y
        sta     $0203,y
        iny
        iny
        iny
        iny
        cpy     #$A0
        bne     LD67C
        sty     $97
        rts

        .byte   $1C
        cpy     #$00
        .byte   $64
        .byte   $1C
        cmp     (L0000,x)
        jmp     (LC11C)

        brk
        .byte   $74
        .byte   $1C
        cmp     (L0000,x)
        .byte   $7C
        .byte   $1C
        cmp     (L0000,x)
        sty     $1C
        cmp     (L0000,x)
        sty     LC11C
        brk
        sty     $1C,x
        cpy     #$40
        .byte   $9C
        bit     $C2
        brk
        .byte   $64
        bit     $C3
        brk
        jmp     (LC424)

        brk
        .byte   $74
        bit     L00C5
        brk
        .byte   $7C
        bit     L00C5
        brk
        sty     $24
        cmp     L0000
        sty     LC524
        brk
        sty     $24,x
        cmp     $9C00
        bit     a:$C6
        .byte   $64
        bit     a:$C7
        jmp     (LC82C)

        brk
        .byte   $74
        bit     a:$C9
        .byte   $7C
        bit     a:$CA
        sty     $2C
        .byte   $CB
        brk
        sty     LCC2C
        brk
        sty     $2C,x
        cmp     $9C00
        .byte   $34
        cmp     $6440
        .byte   $34
        cmp     L0000
        jmp     (LC534)

        brk
        .byte   $74
        .byte   $34
        cmp     L0000
        .byte   $7C
        .byte   $34
        dec     $8400
        .byte   $34
        .byte   $CF
        brk
        sty     LD034
        brk
        sty     $34,x
        cmp     (L0000),y
        .byte   $9C
        .byte   $3C
        cpy     #$80
        .byte   $64
        .byte   $3C
        cmp     ($80,x)
        jmp     (LC13C)

        .byte   $80
        .byte   $74
        .byte   $3C
        cmp     ($80,x)
        .byte   $7C
        .byte   $3C
        .byte   $D2
        brk
        sty     $3C
        cmp     ($80,x)
        sty     LC13C
        .byte   $80
        sty     $3C,x
        cpy     #$C0
        .byte   $9C
        .byte   $34
        cpy     #$00
        bpl     LD778
        cmp     (L0000,x)
        clc
        .byte   $34
        cmp     (L0000,x)
        jsr     LC134
        brk
        plp
        .byte   $34
        cmp     (L0000,x)
        bmi     LD788
        cmp     (L0000,x)
        sec
        .byte   $34
        cmp     (L0000,x)
        rti

        .byte   $34
        cpy     #$40
        pha
        .byte   $3C
        .byte   $C2
        brk
        bpl     LD7A0
        .byte   $C3
        brk
        clc
        .byte   $3C
        cpy     L0000
        jsr     LC53C
        brk
        plp
        .byte   $3C
        cmp     L0000
        bmi     LD7B0
        cmp     L0000
        sec
        .byte   $3C
LD778:  cmp     L0000
        rti

        .byte   $3C
        cmp     $4800
        .byte   $44
        dec     L0000
        bpl     LD7C8
        .byte   $C7
        brk
        clc
        .byte   $44
LD788:  iny
        brk
        jsr     LC944
        brk
        plp
        .byte   $44
        dex
        brk
        bmi     LD7D8
        .byte   $CB
        brk
        sec
        .byte   $44
        cpy     L4000
        .byte   $44
        cmp     $4800
        .byte   $4C
LD7A0:  cmp     $1040
        jmp     L00C5

        clc
        jmp     L00C5

        jsr     LC54C
        brk
        plp
        .byte   $4C
LD7B0:  dec     $3000
        jmp     L00CF

        sec
        jmp     L00D0

        rti

        jmp     L00D1

        pha
        .byte   $54
        cpy     #$80
        bpl     LD818
        cmp     ($80,x)
        clc
        .byte   $54
LD7C8:  cmp     ($80,x)
        jsr     LC154
        .byte   $80
        plp
        .byte   $54
        .byte   $D2
        brk
        bmi     LD828
        cmp     ($80,x)
        sec
        .byte   $54
LD7D8:  cmp     ($80,x)
        rti

        .byte   $54
        cpy     #$C0
        pha
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $7C
        sty     $84
        sty     $84
        sty     $84
        sty     $84
        sty     $8C8C
        sty     $8C8C
        sty     $948C
        sty     $94,x
        sty     $94,x
        sty     $94,x
        sty     $54,x
        .byte   $54
        .byte   $54
        .byte   $54
        .byte   $54
        .byte   $54
        .byte   $54
        .byte   $54
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $64
LD818:  .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        jmp     (L6C6C)

        jmp     (L6C6C)

        jmp     (L746C)

LD828:  .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        .byte   $74
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LD8BB:  brk
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
LD8D6:  .byte   $FF
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
        lda     #$3B
        jsr     LFA78
        lda     #$80
        sta     $04D0
        sta     $0510
        lda     #$80
        sta     $0400
        lda     #$FF
        sta     $04F0
        lda     #$00
        sta     $0500
        sta     $0520
        sta     $0530
        lda     #$04
        sta     $0540
        ldy     #$0F
LD929:  lda     $99BE,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LD929
        lda     #$9F
        sta     $1A
        lda     #$FF
        sta     $18
        jsr     LF90C
LD940:  lda     #$04
        sta     $97
        jsr     LF89A
        lda     $14
        cmp     #$80
        beq     LD95E
        cmp     #$40
        beq     LD98C
        cmp     #$10
        beq     LD95E
        bne     LD940
LD957:  lda     #$04
        sta     $97
        jsr     LF89A
LD95E:  lda     $04D0
        and     #$0F
        bne     LD970
        sta     $0480
        lda     #$18
        jsr     LF850
        inc     $04D0
LD970:  inc     $0480
        ldx     #$00
        jsr     LF51B
        lda     $0480
        cmp     #$41
        bcc     LD957
        lda     #$04
        sta     $97
        jsr     LC21E
        ldx     #$10
        jsr     LFEFF
        rts

LD98C:  lda     #$FF
        sta     $F8
        lda     $04D0
        and     #$0F
        bne     LD9A2
        sta     $0480
        lda     #$18
        jsr     LF850
        inc     $04D0
LD9A2:  inc     $0480
        ldx     #$00
        jsr     LF51B
        lda     $0480
        cmp     #$41
        bcc     LD957
        lda     #$04
        sta     $97
        jsr     LC21E
        ldx     #$10
        jsr     LFEFF
        rts

        .byte   $0F
        .byte   $27
        bmi     LD9D7
        .byte   $0F
        .byte   $0F
        .byte   $23
        .byte   $13
        .byte   $0F
        .byte   $27
        bmi     LD9DD
        .byte   $0F
        .byte   $0F
        bmi     LD9EF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LD9D7:  .byte   $FF
        .byte   $FF
LD9D9:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LD9DD:  .byte   $FF
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
LD9EF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDA00:  lda     #$20
LDA02:  jsr     LF850
        ldx     #$01
        lda     #$2F
        jsr     LFA6C
        inx
        lda     #$AD
        jsr     LFA6C
        lda     #$80
        sta     $04D1
        sta     $04D2
        sta     $0402
        lda     #$90
        sta     $0401
        lda     #$FF
        sta     $04F1
        lda     #$00
        sta     $04F2
        lda     #$A4
        sta     $0511
        lda     #$B7
        sta     $0512
        lda     #$02
        sta     $0501
        sta     $0502
        sta     $FD
        sta     $0500
        sta     $6F
        lda     #$00
        sta     $0521
        sta     $0522
        lda     #$80
        sta     $0530
        sta     $0531
        lda     #$01
        sta     $0540
        sta     $0541
        lda     #$00
        sta     $0532
        lda     #$05
        sta     $0542
        ldy     #$0F
LDA69:  lda     $9A9C,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LDA69
        lda     #$FF
        sta     $18
LDA79:  ldy     #$04
        sty     $97
        jsr     LF89A
        ldx     #$01
        jsr     LF51B
        ldx     #$02
        jsr     LF4FD
        lda     $04F1
        cmp     #$88
        bcs     LDA79
        lda     #$80
        sta     $0531
        lda     #$02
        sta     $0541
        rts

        rol     $0F
        bmi     LDAB0
        .byte   $0F
        .byte   $0F
        .byte   $27
        .byte   $13
        .byte   $0F
        .byte   $0F
        .byte   $33
        .byte   $13
        .byte   $0F
        .byte   $0F
        bmi     LDAD3
        brk
        brk
        brk
        brk
LDAB0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LDAD3:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LDAE1:  brk
LDAE2:  brk
        brk
        brk
        brk
LDAE6:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDAF0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        lda     #$27
LDB02:  .byte   $8D
LDB03:  pla
        .byte   $02
        sta     $026C
        sta     $0270
        sta     $0274
        lda     #$75
        sta     $0269
        lda     #$00
        sta     $026A
        sta     $026E
        sta     $0272
        sta     $0276
        lda     #$A8
        sta     $026B
        lda     #$70
        sta     $026D
        sta     $0271
        sta     $0275
        lda     #$B0
        sta     $026F
        lda     #$B8
        sta     $0273
        lda     #$C0
        sta     $0277
        lda     #$47
        sta     $0278
        sta     $027C
        sta     $0280
        sta     $0284
        sta     L0288
        sta     $028C
        sta     $0290
        lda     #$00
        sta     $027A
        sta     $027E
        sta     $0282
        sta     $0286
        sta     $028A
        sta     $028E
        sta     $0292
        jsr     L9CC8
        ldy     #$98
        sty     $97
        jsr     LF89A
        ldx     #$3C
        jsr     LFEFF
        jsr     L9B86
        ldx     #$78
        jsr     LFEFF
        rts

LDB86:  lda     $0269
        cmp     #$70
        beq     LDBD4
LDB8D:  jsr     L9BDC
        jsr     L9CC8
        jsr     L9C2E
        ldx     #$03
        jsr     LFEFF
        lda     $026D
        cmp     #$70
        beq     LDBAD
        dec     $026D
        lda     $026D
        sta     $026D
        bne     LDB86
LDBAD:  lda     $04D0
        and     #$0F
        bne     LDBC3
        inc     $04D0
        lda     #$79
        sta     $026D
        lda     #$74
        sta     $0269
        bne     LDB86
LDBC3:  lda     $0269
        cmp     #$70
        beq     LDBDB
        lda     #$79
        sta     $026D
        dec     $0269
        bne     LDB86
LDBD4:  lda     $026D
        cmp     #$70
        bne     LDB8D
LDBDB:  rts

        lda     #$22
        jsr     LF850
        lda     $05CC
        cmp     #$79
        beq     LDBEC
        inc     $05CC
        rts

LDBEC:  lda     #$70
        sta     $05CC
        lda     $05CA
        cmp     #$79
        beq     LDBFC
        inc     $05CA
        rts

LDBFC:  lda     #$70
LDBFE:  sta     $05CA
        .byte   $AD
LDC02:  iny
        ora     $C9
        adc     $04F0,y
        inc     $05C8
        rts

LDC0C:  lda     #$70
        sta     $05C8
        lda     $05C4
        cmp     #$79
        beq     LDC1C
        inc     $05C4
        rts

LDC1C:  lda     #$79
        sta     $05C4
        sta     $05C6
        sta     $05C8
        sta     $05CA
        sta     $05CC
        rts

        lda     $6B
        and     #$F0
        cmp     #$10
        beq     LDC4F
        cmp     #$20
        beq     LDC64
        lda     $05CA
        and     #$0F
        sec
        cmp     #$05
        bcc     LDC4E
        jsr     L9C8B
        lda     $6B
        clc
        adc     #$10
        sta     $6B
LDC4E:  rts

LDC4F:  lda     $05C8
        and     #$0F
        sec
        cmp     #$01
        bcc     LDC63
        jsr     L9C8B
        lda     $6B
        clc
        adc     #$13
        sta     $6B
LDC63:  rts

LDC64:  lda     $6B
        and     #$0F
        sta     L0000
        lda     $05C8
        and     #$0F
        cmp     L0000
        bne     LDC8A
        jsr     L9C8B
        lda     $6B
        and     #$0F
        clc
        adc     #$03
        sec
        cmp     #$0A
        bcc     LDC85
        sec
        sbc     #$0A
LDC85:  clc
        adc     #$20
        sta     $6B
LDC8A:  rts

        lda     #$19
        jsr     LF850
        lda     $05E6
        and     #$0F
        clc
        adc     #$01
        cmp     #$0A
        bcs     LDCA3
        clc
        adc     #$70
        sta     $05E6
        rts

LDCA3:  lda     $05E4
        cmp     #$79
        beq     LDCC7
        lda     #$70
        sta     $05E6
        lda     $05E4
        and     #$0F
        clc
        adc     #$01
        cmp     #$09
        bcs     LDCC2
        clc
        adc     #$70
        sta     $05E4
        rts

LDCC2:  lda     #$79
        sta     $05E6
LDCC7:  rts

        lda     #$00
        sta     L0000
        sta     $0279
        sta     $027D
        sta     $0281
        sta     $0285
        .byte   $8D
        .byte   $89
LDCDA:  .byte   $02
        sta     $028D
        sta     $0291
        .byte   $AD
LDCE2:  cpy     $05
        cmp     #$70
        .byte   $F0
LDCE7:  php
        lda     $05C4
        sta     $0279
LDCEE:  inc     L0000
LDCF0:  lda     L0000
        bne     LDCFB
        lda     $05C6
        cmp     #$70
        beq     LDD03
LDCFB:  lda     $05C6
LDCFE:  sta     $027D
        .byte   $E6
LDD02:  brk
LDD03:  lda     L0000
        bne     LDD0E
        lda     $05C8
        cmp     #$70
        beq     LDD16
LDD0E:  lda     $05C8
        sta     $0281
        inc     L0000
LDD16:  lda     L0000
        bne     LDD21
        lda     $05CA
        cmp     #$70
        beq     LDD29
LDD21:  lda     $05CA
        sta     $0285
        inc     L0000
LDD29:  lda     L0000
        bne     LDD34
        lda     $05CC
        cmp     #$70
        beq     LDD3C
LDD34:  lda     $05CC
        sta     $0289
        inc     L0000
LDD3C:  lda     L0000
        bne     LDD47
        lda     $05CE
        cmp     #$70
        beq     LDD4F
LDD47:  lda     $05CE
        sta     $028D
        inc     L0000
LDD4F:  lda     L0000
        bne     LDD5A
        lda     $05CE
        cmp     #$70
        beq     LDD60
LDD5A:  lda     $05D0
        sta     $0291
LDD60:  lda     #$90
        sta     $027B
        lda     #$98
        sta     $027F
        lda     #$A0
        sta     $0283
        lda     #$A8
        sta     $0287
        lda     #$B0
        sta     $028B
        lda     #$B8
        sta     $028F
        lda     #$C0
        sta     $0293
        rts

        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LDDDB:  .byte   $FF
        .byte   $FF
        .byte   $FF
LDDDE:  .byte   $FF
        .byte   $FF
        brk
        brk
LDDE2:  brk
        brk
        brk
LDDE5:  brk
        brk
LDDE7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDDF9:  brk
        brk
        brk
        brk
        brk
LDDFE:  brk
        brk
        ldy     #$0F
LDE02:  lda     $9E68,y
        sta     $0300,y
        sta     $0320,y
        lda     $9E78,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LDE02
        ldx     #$01
        lda     #$AF
        jsr     LFA6C
        inx
        lda     #$B0
        jsr     LFA6C
        lda     #$00
        sta     $0501
        sta     $0502
        sta     $0521
        sta     $0522
        lda     #$80
        sta     $04D1
        sta     $04D2
        sta     $0401
        sta     $0402
        lda     #$8C
        sta     $04F1
        lda     #$88
        sta     $04F2
        lda     #$67
        sta     $0511
        lda     #$87
        sta     $0512
        lda     #$9B
        sta     $1B
        lda     #$84
        sta     $1A
        sta     $18
        jsr     LF90C
        jsr     LF89A
        jsr     LAA00
        rts

        .byte   $0F
        brk
        bpl     LDE8C
        .byte   $0F
        .byte   $07
        .byte   $17
        jsr     L270F
        rol     $20,x
        .byte   $0F
        .byte   $27
        rol     $13,x
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $17
        .byte   $27
        ora     $0F,x
        .byte   $27
        rol     $20,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LDE8C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LDEDB:  .byte   $FF
        .byte   $FF
LDEDD:  .byte   $FF
        .byte   $FF
        .byte   $FF
LDEE0:  brk
LDEE1:  brk
        brk
        brk
        brk
LDEE5:  brk
LDEE6:  brk
        brk
        brk
        brk
        brk
LDEEB:  brk
LDEEC:  brk
LDEED:  brk
        brk
LDEEF:  brk
LDEF0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDF00:  .byte   $FF
        .byte   $FF
LDF02:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LDF82:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LDFC2:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LDFFE:  .byte   $B3
        .byte   $FF
        ldx     #$01
LE002:  lda     #$B2
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        sta     $0400,x
        lda     #$00
        sta     $04F0,x
        lda     #$6C
        sta     $0510,x
        lda     #$02
        sta     $0500
        sta     $0501
        sta     $FD
        sta     $6F
        lda     #$00
        sta     $0520
        sta     $0521
        sta     $0540
        sta     $0541
        lda     #$99
        sta     $0530
        sta     $0531
        ldy     #$0F
LE03D:  lda     $A04C,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LE03D
        sty     $18
        rts

        .byte   $0F
        .byte   $0F
        bpl     LE063
        .byte   $0F
        .byte   $0F
        .byte   $2B
        ora     ($0F,x)
        .byte   $27
        rol     $20,x
        .byte   $0F
        .byte   $27
        rol     $13,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
LE063:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LE0DA:  .byte   $FF
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
LE0EB:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE0F6:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE0FE:  brk
        brk
        ldx     #$02
LE102:  lda     $38
        cmp     #$03
        bcc     LE10B
        jmp     LA13D

LE10B:  lda     #$73
        jsr     LFA6C
        lda     #$30
        sta     $04F0,x
        lda     #$88
        sta     $0510,x
        inx
        lda     #$73
        jsr     LFA6C
        lda     #$98
        sta     $04F0,x
        lda     #$A0
        sta     $0510,x
        inx
        lda     #$73
        jsr     LFA6C
        lda     #$E0
        sta     $04F0,x
        lda     #$88
        sta     $0510,x
        jmp     LA19E

        cmp     #$06
        beq     LE172
        lda     #$73
        jsr     LFA6C
        lda     #$A8
        sta     $04F0,x
        lda     #$54
        sta     $0510,x
        inx
        lda     #$73
        jsr     LFA6C
        lda     #$28
        sta     $04F0,x
        lda     #$50
        sta     $0510,x
        inx
        lda     #$73
        jsr     LFA6C
        lda     #$84
        sta     $04F0,x
        lda     #$70
        sta     $0510,x
        bne     LE19E
LE172:  lda     #$BB
        jsr     LFA6C
        lda     #$D0
        sta     $04F0,x
        lda     #$50
        sta     $0510,x
        lda     #$80
        sta     $04D2
        sta     $0402
        lda     #$00
        sta     $0502
        sta     $0522
        sta     $6A
        sta     $6C
        sta     $048F
        sta     $049F
        jmp     LA1D7

LE19E:  lda     #$80
        sta     $04D2
        sta     $04D3
        sta     $04D4
        sta     $0402
        sta     $0403
        sta     $0404
        lda     #$00
        sta     $0502
        sta     $0522
        sta     $0503
        sta     $0523
        sta     $0504
        sta     $0524
        sta     $6A
        sta     $6C
        sta     $048F
        sta     $049F
        lda     $38
        beq     LE1D7
        jsr     LA5AB
LE1D7:  jsr     LF90C
LE1DA:  .byte   $20
        txs
LE1DC:  sed
        jsr     LA300
LE1E0:  lda     $14
        beq     LE1DA
        jsr     LFF06
        jsr     LA448
        jsr     LA300
LE1ED:  lda     $62
        .byte   $C9
LE1F0:  bpl     $E1E2
        ora     ($A9),y
        php
        sta     $62
        jsr     LA300
        lda     $14
        cmp     #$80
LE1FE:  beq     LE20E
        lda     #$00
LE202:  sta     $5E
LE204:  lda     #$07
        sta     $62
        jsr     LA300
        jmp     LA1E4

LE20E:  lda     #$3F
        jsr     LF850
        jsr     LA571
        ldx     #$05
        lda     #$3B
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        lda     #$90
        sta     $0400,x
        lda     #$70
        sta     $0510,x
        lda     #$FF
        sta     $04F0,x
        lda     #$00
        sta     $0520,x
        sta     $0500,x
        sta     $0530,x
        lda     #$04
        sta     $0540,x
        lda     #$21
        jsr     LF850
LE246:  ldy     #$04
        sty     $97
        jsr     LF89A
        lda     #$00
        sta     $0431
        sta     $0411
        ldx     #$05
        jsr     LF51B
        inc     $6A
        lda     $6A
        cmp     #$40
        bcc     LE246
        ldx     #$05
        ldy     $31
        lda     $A2EB,y
        jsr     LFA6C
        lda     #$80
        sta     $04D0,x
        lda     #$90
        sta     $0400,x
        lda     #$00
        sta     $0510,x
        sta     $04F0,x
        sta     $0520,x
        sta     $0500,x
        ldy     $31
        lda     $A2DD,y
        sta     $0555
        lda     $A2E4,y
        sta     $0535
        lda     $A2F2,y
        sta     $04B6
        lda     $A2F9,y
        sta     $04B7
        lda     #$00
        sta     $0565
        sta     $0545
        ldy     #$04
        sty     $97
        jsr     LF89A
        lda     #$00
LE2AF:  sta     $0431
        sta     $0411
        lda     $14
        bne     LE2D7
        ldx     #$05
        jsr     LF4FD
        jsr     LF539
        lda     $04B6
        beq     LE2CC
        dec     $04B6
        jmp     LA2A6

LE2CC:  lda     $04B7
        beq     LE2D7
        dec     $04B7
        jmp     LA2A6

LE2D7:  lda     #$F1
        .byte   $20
LE2DA:  .byte   $4E
        sed
LE2DC:  rts

        txa
        .byte   $5A
        .byte   $5A
        .byte   $7F
        ror     $9E,x
        .byte   $3A
        .byte   $30
LE2E5:  .byte   $5A
        .byte   $9B
        cpx     $AF30
        .byte   $8E
LE2EB:  .byte   $B1
LE2EC:  ldx     $C0BF,y
        cmp     ($C2,x)
        .byte   $C3
        sed
        .byte   $FF
        .byte   $FF
        bcs     LE2AF
        cpy     $FF
        brk
        clv
        .byte   $7C
        brk
        brk
        brk
        .byte   $74
        jsr     LA3AC
        ldy     $62
        lda     $ABAA,y
        sta     $0C
        lda     $ABBD,y
        sta     $0D
        lda     #$00
        sta     $0E
        lda     #$00
        sta     $10
LE317:  lda     #$00
        sta     $11
        ldx     $10
        lda     $A38C,x
        sta     $0360
        lda     $A38F,x
        clc
        adc     $11
        sta     $0361
        lda     #$00
        sta     $0362
        ldy     $0E
        inc     $0E
        lda     ($0C),y
        cmp     #$FF
        beq     LE388
        cmp     #$FE
        beq     LE36F
        .byte   $8D
LE340:  .byte   $63
        .byte   $03
        lda     #$FF
        sta     $0364
        sta     $19
        lda     $10
        pha
        lda     $11
        pha
        lda     #$04
        sta     $97
        jsr     LA392
        jsr     LF89A
        pla
        sta     $11
        pla
        sta     $10
        inc     $11
        lda     $92
        and     #$03
        bne     LE36C
        lda     #$3F
        jsr     LF850
LE36C:  jmp     LA31B

LE36F:  lda     $38
        cmp     #$06
        bne     LE377
        inc     $5E
LE377:  inc     $10
        lda     $10
        cmp     #$03
        bne     LE317
        jsr     LA402
        jsr     LA3AC
        jmp     LA313

LE388:  jmp     LA402

LE38B:  rts

        .byte   $22
        .byte   $23
        .byte   $23
        .byte   $E7
        .byte   $27
        .byte   $67
        lda     $38
        cmp     #$06
        bne     LE38B
        lda     $5E
        cmp     #$07
        beq     LE3A3
        cmp     #$08
        beq     LE3A3
        rts

LE3A3:  lda     #$00
        sta     $0431
        sta     $0411
        rts

        lda     #$23
        sta     $0360
        lda     #$79
        sta     $0361
        lda     #$00
        sta     $0362
        lda     #$02
        sta     $0363
        lda     #$23
        sta     $0364
        sta     $037A
        lda     #$22
        sta     $0390
        lda     #$67
        sta     $0365
        lda     #$27
        sta     $037B
        lda     #$E7
        sta     $0391
        ldx     #$12
        stx     $0366
        stx     $037C
        stx     $0392
        ldy     #$00
        lda     #$02
LE3EB:  sta     $0367,y
        sta     $037D,y
        sta     $0393,y
        iny
        dex
        bpl     LE3EB
        lda     #$FF
        sta     $03A6
        sta     $19
        jmp     LFF06

LE402:  lda     #$00
        sta     $0411
        sta     $0431
        lda     #$04
        sta     $97
        jsr     LF89A
        jsr     LA41B
        lda     $14
        and     #$C3
        beq     LE402
        rts

        lda     #$23
        sta     $0360
        lda     #$79
        sta     $0361
        lda     #$00
        sta     $0362
        ldx     #$FE
        lda     $92
        and     #$10
        beq     LE434
        ldx     #$02
LE434:  stx     $0363
        lda     #$FF
        sta     $0364
        sta     $19
LE43E:  rts

LE43F:  lda     $62
        cmp     #$07
        bne     LE43E
        jsr     LFF06
        lda     $14
        sta     $0F
        cmp     #$80
        beq     LE43F
        lda     $0F
        and     #$0F
        cmp     #$01
        beq     LE46E
        cmp     #$02
        beq     LE48B
        lda     $6C
        and     #$0F
        tay
        lda     $A4A8,y
        sta     L0000
        lda     $A4AB,y
        sta     $01
        jmp     (L0000)

LE46E:  lda     #$22
        jsr     LF850
        lda     $38
        cmp     #$06
        beq     LE485
        inc     $6C
        lda     $6C
        cmp     #$03
        bcc     LE485
        lda     #$00
        sta     $6C
LE485:  jsr     LFF06
        jmp     LA448

LE48B:  lda     #$22
        jsr     LF850
        lda     $38
        cmp     #$06
        beq     LE4A2
        dec     $6C
        lda     $6C
        cmp     #$FF
        bne     LE4A2
        lda     #$02
        sta     $6C
LE4A2:  jsr     LFF06
        jmp     LA448

        ldx     $3A03
        ldy     $A5
        lda     $A2
        .byte   $03
        lda     #$73
        jsr     LFA6C
        ldx     #$04
        lda     #$73
        jsr     LFA6C
        lda     $38
        cmp     #$03
        bcs     LE4DC
        lda     #$00
        sta     $62
        sta     $31
        lda     $0422
        cmp     #$BB
        beq     LE4D6
        ldx     #$02
        lda     #$BB
        jsr     LFA6C
LE4D6:  jsr     LA6A5
        .byte   $4C
LE4DA:  sbc     ($A4),y
LE4DC:  lda     $38
        cmp     #$06
        beq     LE4EB
        lda     #$03
        sta     $62
        sta     $31
        jmp     LA4C8

LE4EB:  lda     #$06
        sta     $62
        sta     $31
        lda     #$04
        sta     $97
        jsr     LF89A
        lda     #$00
        sta     $0431
        sta     $0411
        .byte   $4C
        pha
LE502:  ldy     $A2
        .byte   $02
        lda     #$73
        jsr     LFA6C
        ldx     #$04
        lda     #$73
        jsr     LFA6C
        lda     $38
        cmp     #$03
        bcs     LE531
        lda     #$01
        sta     $62
        sta     $31
        lda     $0423
        cmp     #$BB
        beq     LE52B
        ldx     #$03
        lda     #$BB
        jsr     LFA6C
LE52B:  jsr     LA6A5
        jmp     LA4F1

LE531:  lda     #$04
        sta     $62
        sta     $31
        jmp     LA51D

        ldx     #$02
        lda     #$73
        jsr     LFA6C
        ldx     #$03
        lda     #$73
        jsr     LFA6C
        lda     $38
        cmp     #$03
        bcs     LE568
        lda     #$02
        sta     $62
        sta     $31
        lda     $0424
        cmp     #$BB
        beq     LE562
        ldx     #$04
        lda     #$BB
        jsr     LFA6C
LE562:  jsr     LA6A5
        jmp     LA4F1

LE568:  lda     #$05
        sta     $62
        sta     $31
        jmp     LA554

        lda     $31
        cmp     #$00
        beq     LE590
        cmp     #$01
        beq     LE599
        cmp     #$02
        beq     LE5A2
        cmp     #$03
        beq     LE590
        cmp     #$04
        beq     LE599
        cmp     #$05
        beq     LE5A2
        cmp     #$06
        beq     LE590
        rts

LE590:  lda     #$00
        sta     $04D3
        sta     $04D4
        rts

LE599:  lda     #$00
        sta     $04D2
        sta     $04D4
        rts

LE5A2:  lda     #$00
        sta     $04D2
        sta     $04D3
        rts

        lda     $F8
        bpl     LE5B2
        jmp     LA607

LE5B2:  lda     $31
        cmp     #$00
        beq     LE5D1
        cmp     #$01
        beq     LE5D9
        cmp     #$02
        beq     LE5E1
        cmp     #$03
        beq     LE5E9
        cmp     #$04
        beq     LE5F1
        cmp     #$05
        beq     LE5F9
        cmp     #$06
        beq     LE601
        rts

LE5D1:  lda     $69
        ora     #$01
        sta     $69
        bne     LE607
LE5D9:  .byte   $A5
LE5DA:  adc     #$09
        .byte   $02
        sta     $69
        bne     LE607
LE5E1:  lda     $69
        ora     #$04
        sta     $69
        .byte   $D0
LE5E8:  .byte   $1E
LE5E9:  lda     $69
        ora     #$08
        sta     $69
        bne     LE607
LE5F1:  lda     $69
        ora     #$10
        sta     $69
        bne     LE607
LE5F9:  lda     $69
        ora     #$20
        sta     $69
        bne     LE607
LE601:  .byte   $A5
LE602:  adc     #$09
        rti

        sta     $69
LE607:  lda     $69
        cmp     #$01
        beq     LE63A
        cmp     #$02
        beq     LE642
        cmp     #$03
        beq     LE64A
        cmp     #$04
        beq     LE658
        cmp     #$05
        beq     LE660
        cmp     #$06
        beq     LE66F
        cmp     #$0F
        beq     LE63A
        cmp     #$17
        beq     LE642
        cmp     #$27
        beq     LE658
        cmp     #$1F
        beq     LE64A
        cmp     #$37
        beq     LE66F
        cmp     #$2F
        beq     LE660
        rts

LE63A:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        rts

LE642:  ldx     #$03
        lda     #$BD
        jsr     LFA6C
        rts

LE64A:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        inx
        lda     #$BD
        jsr     LFA6C
        rts

LE658:  ldx     #$04
        lda     #$BD
        jsr     LFA6C
        rts

LE660:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        ldx     #$04
        lda     #$BD
        jsr     LFA6C
        rts

LE66F:  ldx     #$03
        lda     #$BD
        jsr     LFA6C
        inx
        lda     #$BD
        jsr     LFA6C
        rts

LE67D:  ldx     #$03
        lda     #$BD
        .byte   $20
LE682:  jmp     ($E8FA)

        lda     #$BD
        jsr     LFA6C
        lda     $6C
        beq     LE69C
        lda     #$10
        sta     $62
        lda     $6C
        cmp     #$01
        beq     LE69D
        cmp     #$02
        beq     LE6A1
LE69C:  rts

LE69D:  jsr     LA77D
        rts

LE6A1:  jsr     LA78C
        rts

        lda     $69
        cmp     #$01
        beq     LE6DB
        cmp     #$02
        beq     LE6EE
        cmp     #$03
        beq     LE703
        cmp     #$04
        beq     LE72D
        cmp     #$05
        beq     LE6D8
        cmp     #$06
        beq     LE67D
        cmp     #$0F
        beq     LE6DB
        cmp     #$17
        beq     LE6EE
        cmp     #$27
        beq     LE72D
        cmp     #$1F
        beq     LE703
        cmp     #$37
        beq     LE67D
        cmp     #$2F
        beq     LE6D8
        rts

LE6D8:  jmp     LA742

LE6DB:  ldx     #$02
        .byte   $A9
LE6DE:  lda     $6C20,x
        .byte   $FA
LE6E2:  lda     $6C
        bne     LE6ED
        lda     #$10
LE6E8:  sta     $62
        jsr     LA76E
LE6ED:  rts

LE6EE:  ldx     #$03
        lda     #$BD
        jsr     LFA6C
        lda     $6C
        cmp     #$01
        bne     LE6ED
        lda     #$10
        sta     $62
        jsr     LA77D
LE702:  rts

LE703:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        inx
        lda     #$BD
        jsr     LFA6C
        lda     $6C
        cmp     #$02
        beq     LE6ED
        lda     #$10
        sta     $62
        lda     $6C
        cmp     #$00
        beq     LE725
        cmp     #$01
        beq     LE729
        rts

LE725:  jsr     LA76E
        rts

LE729:  jsr     LA77D
        rts

LE72D:  ldx     #$04
        lda     #$BD
        jsr     LFA6C
        lda     $6C
        cmp     #$02
        bne     LE6ED
        lda     #$10
        sta     $62
        jsr     LA78C
        rts

        ldx     #$02
        lda     #$BD
        jsr     LFA6C
        ldx     #$04
        lda     #$BD
        jsr     LFA6C
        lda     $6C
        cmp     #$02
        beq     LE75B
        cmp     #$00
        beq     LE75B
        rts

LE75B:  lda     #$10
        sta     $62
        lda     $6C
        cmp     #$02
        beq     LE76A
        cmp     #$00
        beq     LE76E
        rts

LE76A:  jsr     LA78C
        rts

LE76E:  lda     $0422
        cmp     #$C4
        beq     LE77C
        ldx     #$02
        lda     #$C4
        jsr     LFA6C
LE77C:  rts

        lda     $0423
        cmp     #$C4
        beq     LE77C
        ldx     #$03
        lda     #$C4
        jsr     LFA6C
        rts

        lda     $0424
        cmp     #$C4
        beq     LE77C
        ldx     #$04
        lda     #$C4
        jsr     LFA6C
        rts

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
LE7DA:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LE7DE:  .byte   $FF
        .byte   $FF
        brk
        brk
LE7E2:  brk
        brk
        brk
        brk
        brk
        brk
LE7E8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LE802:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LE8DC:  .byte   $FF
LE8DD:  .byte   $FF
LE8DE:  .byte   $FF
LE8DF:  .byte   $FF
LE8E0:  brk
LE8E1:  brk
LE8E2:  brk
        brk
        brk
LE8E5:  brk
LE8E6:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LE8ED:  brk
        brk
        brk
LE8F0:  brk
        brk
LE8F2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE900:  ldy     #$0F
LE902:  lda     $A94C,y
        sta     $0300,y
        sta     $0320,y
        lda     $A95C,y
        sta     $0310,y
        sta     $0330,y
        dey
        bpl     LE902
        ldx     #$01
        lda     #$56
        jsr     LFA6C
        lda     #$00
        sta     $0501
        sta     $0521
        lda     #$80
        sta     $04D1
        sta     $0401
        lda     #$7C
        sta     $04F1
        lda     #$5B
        sta     $0511
        lda     #$9E
        sta     $1B
        lda     #$8C
        sta     $1A
        sta     $18
        jsr     LF90C
        jsr     LF89A
        jsr     LAA00
        rts

        .byte   $0F
        asl     $27,x
        sec
        .byte   $0F
        jsr     L3827
        .byte   $0F
        .byte   $27
        rol     $20,x
        .byte   $0F
        .byte   $27
        rol     $13,x
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        bmi     LE978
        .byte   $0F
        .byte   $0F
        .byte   $0F
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
LE978:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LE97F:  brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LE9DE:  .byte   $FF
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
        jsr     LAADD
        ldy     $62
        lda     $ABAA,y
        sta     $0C
        lda     $ABBD,y
        sta     $0D
        lda     #$00
        sta     $0E
        lda     #$00
        sta     $10
LEA17:  lda     #$00
        sta     $11
        lda     $62
        cmp     #$0E
        beq     LEA2C
        cmp     #$0F
        beq     LEA2C
        lda     $14
        and     #$10
        beq     LEA2C
        rts

LEA2C:  ldx     $10
        lda     $AAD7,x
        sta     $0360
        lda     $AADA,x
        clc
        adc     $11
        sta     $0361
        lda     #$00
        sta     $0362
        ldy     $0E
        inc     $0E
        lda     ($0C),y
        cmp     #$FF
        beq     LEA9E
        cmp     #$FE
        beq     LEA7D
        sta     $0363
        lda     #$FF
        sta     $0364
        sta     $19
        lda     $10
        pha
        lda     $11
        pha
        lda     #$04
        sta     $97
        jsr     LF89A
        pla
        sta     $11
        pla
        sta     $10
        inc     $11
        lda     $92
        and     #$03
        bne     LEA7A
        lda     #$3F
        jsr     LF850
LEA7A:  jmp     LAA2C

LEA7D:  inc     $10
        .byte   $A5
LEA80:  bpl     $EA4B
        .byte   $03
        bne     LEA17
        jsr     LAB57
        lda     $62
        cmp     #$0E
        beq     LEA98
        cmp     #$0F
        beq     LEA98
        lda     $14
        and     #$10
        bne     LEAD6
LEA98:  jsr     LAADD
        jmp     LAA13

LEA9E:  lda     $62
        cmp     #$0F
        bne     LEAD3
        ldx     #$00
        lda     #$2C
        jsr     LFA78
        lda     #$80
        sta     $04D0,x
        lda     #$D0
        sta     $0400,x
        lda     #$00
        sta     $0500,x
        sta     $0520,x
        sta     $0510,x
        lda     #$80
        sta     $04F0,x
        lda     #$40
        sta     $99
        lda     #$AB
        sta     $0550,x
        lda     #$FF
        sta     $0560,x
LEAD3:  jmp     LAB57

LEAD6:  rts

        .byte   $22
        .byte   $23
        .byte   $23
        .byte   $E2
        .byte   $22
        .byte   $62
        lda     #$22
        sta     $0360
        lda     #$FE
        sta     $0361
        lda     #$00
        sta     $0362
        lda     $62
        cmp     #$0E
        beq     LEAFE
        cmp     #$0F
        beq     LEAFE
        cmp     #$11
        beq     LEAFE
        lda     #$02
        bne     LEB00
LEAFE:  lda     #$00
LEB00:  sta     $0363
        lda     #$23
        sta     $0364
        sta     $0384
        lda     #$22
        sta     $03A4
        lda     #$62
        sta     $0365
        lda     #$22
        sta     $0385
        lda     #$E2
        sta     $03A5
        ldx     #$1C
        stx     $0366
        stx     $0386
        stx     $03A6
        ldy     #$00
        lda     $62
        cmp     #$0E
        beq     LEB3E
        cmp     #$0F
        beq     LEB3E
        cmp     #$11
        beq     LEB3E
        lda     #$02
        bne     LEB40
LEB3E:  lda     #$00
LEB40:  sta     $0367,y
        sta     $0387,y
        sta     $03A7,y
        iny
        dex
        bpl     LEB40
        lda     #$FF
        sta     $03C4
        sta     $19
        jmp     LFF06

LEB57:  lda     #$04
        sta     $97
        jsr     LF89A
        jsr     LAB72
        lda     $62
        cmp     #$0E
        beq     LEB71
        cmp     #$0F
        beq     LEB71
        lda     $14
        and     #$D0
        beq     LEB57
LEB71:  rts

        lda     $62
        cmp     #$0E
        beq     LEBA9
        cmp     #$0F
LEB7A:  beq     LEBA9
        lda     #$22
        sta     $0360
        lda     #$FE
        sta     $0361
        lda     #$00
        sta     $0362
        ldx     #$FE
        lda     $92
        and     #$10
        beq     LEB9F
        lda     $62
        cmp     #$11
        bne     LEB9D
        ldx     #$00
        beq     LEB9F
LEB9D:  ldx     #$02
LEB9F:  stx     $0363
        lda     #$FF
        sta     $0364
        sta     $19
LEBA9:  rts

        bne     LEC14
        php
        pla
        .byte   $BF
        and     $51D3,x
        .byte   $72
        .byte   $92
        plp
        .byte   $02
        sbc     $7CED
        lda     $DC
        sbc     ($40,x)
        .byte   $AB
        ldy     $ADAD
        lda     $AEAE
        .byte   $AF
        .byte   $AF
        .byte   $AF
        bcs     LEB7A
        lda     ($B2),y
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        ldy     $EA,x
        inc     LDCDA
        cpx     $DE
        .byte   $EB
        .byte   $02
        .byte   $E3
        .byte   $DA
LEBDA:  .byte   $DC
        .byte   $E4
LEBDC:  .byte   $02
        .byte   $DA
LEBDE:  .byte   $E7
        .byte   $DD
LEBE0:  .byte   $FE
LEBE1:  sbc     ($E2,x)
        cpx     LE102
        .byte   $DE
        .byte   $E7
LEBE8:  .byte   $DC
        sbc     ($E6,x)
        .byte   $DE
        .byte   $E7
LEBED:  .byte   $02
        .byte   $DA
        .byte   $EB
        dec     LDBFE,x
        sbc     $E8
        .byte   $DC
        cpx     $E2
        .byte   $E7
        cpx     #$02
        sbc     LDEE1
LEBFE:  .byte   $FE
        .byte   $DC
LEC00:  inx
        .byte   $E7
LEC02:  .byte   $EC
LEC03:  sbc     LEEEB
        .byte   $DC
        sbc     LE8E2
        .byte   $E7
        .byte   $02
        inx
        .byte   $DF
        inc     LE1ED,x
        dec     LE702,x
LEC14:  dec     $02F0,x
        .byte   $DB
        .byte   $EB
        .byte   $E2
        cmp     LDEE0,x
        .byte   $FA
        inc     LE8F2,x
        inc     LDDF9
        .byte   $02
        .byte   $DB
        dec     LEDED,x
        dec     $02EB,x
        cpx     LE8ED
        sbc     #$FE
        sbc     ($E2,x)
        inc     $02
        .byte   $DB
        dec     LE8DF,x
        .byte   $EB
        dec     LEC02,x
        inx
        inc     $DE
        inx
        .byte   $E7
        dec     LE0FE,x
        dec     LECED,x
        .byte   $02
        sbc     ($EE,x)
        .byte   $EB
        sbc     $02FA
        cmp     $02E8,x
LEC52:  .byte   $F2
        inx
        inc     LF0FE
        .byte   $DA
        .byte   $E7
        sbc     LED02
        inx
        .byte   $02
        cpx     #$E8
        .byte   $02
        sbc     LDEE1
        .byte   $EB
        dec     LFFFC,x
        beq     LEC52
        sbc     $DF
        cmp     LDCEE,x
        cpx     $02
        .byte   $DA
        .byte   $E7
        cmp     LE1FE,x
        .byte   $E2
        cpx     LE102
        dec     LDCE7,x
        sbc     ($E6,x)
        dec     $02E7,x
        .byte   $DA
        .byte   $EB
        dec     LEBFE,x
        .byte   $DA
        inc     $E9
        .byte   $DA
        cpx     #$E2
        .byte   $E7
        cpx     #$02
        sbc     LEBE1
        inx
        inc     LE1E0
        inc     LE1ED,x
        dec     LDC02,x
        dec     LEDE7,x
        dec     $02EB,x
        inx
        .byte   $DF
        .byte   $02
        sbc     LDEE1
        .byte   $FE
LECAA:  .byte   $DC
        .byte   $E2
        sbc     LFAF2
        .byte   $02
        .byte   $DB
        inc     $02ED
        .byte   $DB
        dec     LDCFE,x
        .byte   $DA
        .byte   $EB
        dec     LEEDF,x
        sbc     $F7
        .byte   $02
        beq     LECAA
        sbc     $DF
        cmp     LDCEE,x
        cpx     $FE
        cpx     #$E8
        dec     $02EC,x
        .byte   $DB
        dec     LECEB,x
LECD2:  dec     LE4EB,x
        inc     LE1F0,x
        dec     $02E7,x
        sbc     LDEE1
LECDE:  .byte   $02
        inc     $E8
        inx
LECE2:  .byte   $E7
        inc     LE8DC,x
LECE6:  .byte   $E6
LECE7:  dec     $02EC,x
        inx
LECEB:  .byte   $EE
        .byte   $ED
LECED:  inc     $02,x
        cmp     $02E8,x
        .byte   $F2
        inx
        .byte   $EE
        .byte   $FE
LECF6:  beq     LECD2
        .byte   $E7
LECF9:  sbc     LED02
        inx
        .byte   $02
LECFE:  cpx     #$E8
        .byte   $02
        .byte   $ED
LED02:  sbc     ($DE,x)
        .byte   $EB
        dec     LFFFC,x
        .byte   $E2
        .byte   $02
        .byte   $E3
        inc     LEDEC
        .byte   $02
        cpx     #$E8
        sbc     LDA02
        .byte   $E7
        inc     LF6EC,x
        inx
        inc     $EC,x
        inc     $02,x
        .byte   $DC
        .byte   $DA
        sbc     $E5
        .byte   $02
        .byte   $DF
        .byte   $EB
        inx
        inc     $FE
        sbc     LDEE1
        .byte   $02
        cpx     LF0DE
        dec     LECEB,x
        .byte   $FA
        inc     LE2E5,x
        nop
        inc     LDDE2
        .byte   $DA
        sbc     LEBE8
        .byte   $02
        .byte   $E2
        cpx     LE802
        .byte   $E7
        inc     LE1ED,x
        dec     LE502,x
        inx
        inx
        cpx     LFADE
        .byte   $02
        cmp     $02E8,x
        .byte   $F2
        inx
        inc     LF0FE
        .byte   $DA
        .byte   $E7
        sbc     LED02
        inx
        .byte   $02
        cpx     #$E8
        .byte   $02
        sbc     LDEE1
        .byte   $EB
        dec     LFFFC,x
        inc     $E8
        sbc     $E2
        .byte   $DA
        .byte   $EB
        sbc     $02F2
        .byte   $E2
        cpx     LDDFE
        dec     LDEEF,x
        sbc     $E8
        sbc     #$E2
        .byte   $E7
        cpx     #$02
        .byte   $DA
LED80:  .byte   $FE
        .byte   $E6
LED82:  inx
        .byte   $E7
        cpx     LEBED
        inx
        inc     $02EC
        .byte   $E7
        dec     LFEF0,x
        inc     $DA
        .byte   $DC
        sbc     ($E2,x)
        .byte   $E7
        dec     LE202,x
        .byte   $E7
        .byte   $02
        sbc     LDEE1
        inc     LE8ED,x
        beq     LED80
        .byte   $EB
        .byte   $FA
        .byte   $FA
        .byte   $02
        cmp     $02E8,x
        .byte   $F2
        inx
        inc     LF0FE
        .byte   $DA
        .byte   $E7
        sbc     LED02
        inx
        .byte   $02
        cpx     #$E8
        .byte   $02
        sbc     LDEE1
        .byte   $EB
        dec     LFFFC,x
        cpx     LE6E8
        dec     LE1ED,x
        .byte   $E2
        .byte   $E7
        cpx     #$02
        cpx     LEBED
        .byte   $DA
        .byte   $E7
        cpx     #$DE
        inc     LECE2,x
        .byte   $02
        cpx     #$E8
        .byte   $E2
        .byte   $E7
        cpx     #$02
        inx
        .byte   $E7
LEDDC:  .byte   $02
        .byte   $E2
LEDDE:  .byte   $E7
        .byte   $02
        .byte   $ED
        .byte   $E1
LEDE2:  .byte   $DE
LEDE3:  .byte   $FE
        .byte   $F0
LEDE5:  inx
        inx
LEDE7:  .byte   $DD
        .byte   $EC
LEDE9:  inc     $02,x
        .byte   $E2
LEDEC:  .byte   $ED
LEDED:  .byte   $02
        inc     $DA
        .byte   $F2
LEDF1:  .byte   $02
        .byte   $DB
        dec     LEDFE,x
        sbc     ($DE,x)
        .byte   $02
        beq     LEDE3
        .byte   $EB
        cpx     $02
LEDFE:  inx
        .byte   $DF
        inc     LEEDB,x
        cpx     LEBE1
        inx
        inx
        sbc     LE0F6
        inx
        .byte   $02
        .byte   $DC
        sbc     ($DE,x)
        .byte   $DC
        cpx     $FE
        .byte   $E2
        sbc     LE802
        inc     $02ED
        cmp     LEBDA,x
        cpx     $F0
        .byte   $E2
        .byte   $E7
        cpx     #$FA
        inc     LE8DD,x
        .byte   $02
        .byte   $F2
        inx
        inc     LF002
        .byte   $E2
        cpx     $02E1
        sbc     $02E8
        cpx     #$E8
        inc     LE1ED,x
        dec     LDEEB,x
        .byte   $FC
        .byte   $FF
        inc     $DE
        cpx     #$DA
        .byte   $EF
        inx
        sbc     $ED
        .byte   $02
        .byte   $DA
        .byte   $E7
        cmp     LE102,x
        .byte   $E2
        cpx     LE1FE
        dec     LDCE7,x
        sbc     ($E6,x)
        dec     $02E7,x
        .byte   $DA
        .byte   $EB
        dec     LEBFE,x
        inx
        .byte   $DB
        .byte   $DB
LEE5F:  .byte   $E2
        .byte   $E7
        cpx     #$02
        sbc     LDEE1
        inc     LDAF0,x
        .byte   $EB
        dec     LE8E1,x
        inc     LDEEC
        cpx     LDA02
        sbc     $E8
        .byte   $E7
        cpx     #$FE
        sbc     LDEE1
        .byte   $02
        beq     LEE5F
        .byte   $DA
        .byte   $EB
        .byte   $DF
        inc     $FE,x
        .byte   $F2
        inx
        inc     LDB02
        dec     LEDED,x
        dec     $02EB,x
        inc     $E8
        .byte   $EF
        dec     LEAFE,x
        inc     LDCE2
        cpx     $E5
        .byte   $F2
        .byte   $02
        .byte   $DB
        dec     LE8DF,x
        .byte   $EB
        dec     LDA02,x
        sbc     $E5
        inc     LE1ED,x
        dec     LE002,x
        inx
        inx
        cmp     $02EC,x
        .byte   $DA
        .byte   $EB
        .byte   $DE
LEEB3:  inc     LE8E0,x
        .byte   $E7
        dec     $02FA,x
        cmp     $02E8,x
        .byte   $F2
        inx
        inc     LF002
        .byte   $DA
        .byte   $E7
        sbc     LEDFE
        inx
        .byte   $02
        cpx     #$E8
        .byte   $02
        sbc     LDEE1
        .byte   $EB
        dec     LFFFC,x
        beq     LEEB3
        sbc     LDEEF,y
        .byte   $02
        .byte   $DF
        .byte   $E2
LEEDB:  .byte   $E7
        .byte   $DA
        sbc     $E5
LEEDF:  .byte   $F2
        inc     LE8E5,x
        .byte   $DC
        .byte   $DA
        sbc     LDDDE
LEEE8:  .byte   $02
        .byte   $ED
        .byte   $E1
LEEEB:  dec     LE1FE,x
        .byte   $E2
        cmp     LE8DE,x
        inc     $02ED
        inx
        .byte   $DF
        .byte   $02
        cpx     LDEED
        dec     LFEE5,x
        .byte   $DB
        dec     LE4DA,x
LEF02:  .byte   $FA
        .byte   $02
        sbc     ($DE,x)
        .byte   $02
        .byte   $E2
        cpx     LE802
        .byte   $E7
        inc     LF6DF,x
        inx
        inc     $F0,x
        inc     $E5,x
        sbc     $02EC,y
        .byte   $DF
        sbc     $E8
        .byte   $DA
        sbc     LE7E2
        cpx     #$FE
        .byte   $DF
        inx
        .byte   $EB
        sbc     LDEEB
        cpx     LF6EC
        inc     $0202,x
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     $DE
        .byte   $ED
        .byte   $F9
LEF37:  cpx     LE002
        dec     LFEED,x
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LEF44:  .byte   $02
        .byte   $02
        cmp     LE7DA,x
        cpx     #$DE
        .byte   $EB
        inx
        inc     LFAEC
        .byte   $FF
        .byte   $02
        .byte   $02
        .byte   $02
        beq     LEF37
        dec     LDEEB,x
        .byte   $02
        cpx     LE8E1
        inc     LDDE5
        inc     $0202,x
        .byte   $02
        .byte   $F0
LEF65:  dec     LE002,x
        inx
        .byte   $02
        .byte   $E7
        inx
        beq     LEF65
        cmp     LFCF0,x
        .byte   $FF
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $F2
LEF76:  dec     $02EC,x
        .byte   $DA
        .byte   $02
        .byte   $DB
        inc     LEDED
        inx
        .byte   $E7
        .byte   $FE
LEF82:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $E7
        inx
        .byte   $02
        .byte   $02
        .byte   $DB
        .byte   $02
        .byte   $DB
        inc     LEDED
        inx
        .byte   $E7
        .byte   $FF
        .byte   $E3
        inx
        .byte   $DB
        .byte   $02
        beq     LEF76
        sbc     $E5
        .byte   $02
        cmp     LE7E8,x
        dec     $02F7,x
        cmp     LEBDA,x
        cpx     $F0
        .byte   $E2
        .byte   $E7
        cpx     #$F6
        inc     LE7E8,x
        .byte   $DC
        dec     LDA02,x
        cpx     #$DA
        .byte   $E2
        .byte   $E7
        .byte   $02
        .byte   $F2
        inx
        inc     LEFF9
        dec     LDF02,x
        .byte   $EB
        dec     LDDDE,x
        .byte   $02
        sbc     LDEE1
        inc     LE2DC,x
        sbc     $02F2
        .byte   $DF
        .byte   $EB
        inx
        inc     $02
        .byte   $DF
        inc     $E8,x
        inc     $F0,x
        inc     $E5,x
        sbc     $02EC,y
        cpx     #$EB
        .byte   $E2
        sbc     #$02
        inx
        .byte   $DF
        inc     LDEED,x
        .byte   $EB
        .byte   $EB
        inx
        .byte   $EB
        inc     $02,x
        .byte   $F2
        inx
        inc     LE102
        .byte   $DA
        .byte   $EF
        dec     LDE02,x
        .byte   $DA
        .byte   $EB
        .byte   $E7
LEFF8:  .byte   $DE
LEFF9:  cmp     LED02,x
        sbc     ($DE,x)
        inc     LEBE0,x
        .byte   $DA
LF002:  sbc     LEDE2
        inc     LDEDD
        .byte   $02
        inx
        .byte   $DF
        .byte   $02
        sbc     LDEE1
        .byte   $02
        dec     LEDE7,x
LF013:  .byte   $E2
        .byte   $EB
        dec     LDC02,x
        .byte   $E2
        sbc     LFEF2
        sed
        .byte   $DF
        inx
        .byte   $EB
        dec     LDEEF,x
        .byte   $EB
        .byte   $FA
        .byte   $FA
        .byte   $FA
        .byte   $FF
        inx
        .byte   $E7
        .byte   $DC
        dec     LDA02,x
        cpx     #$DA
        .byte   $E2
        .byte   $E7
        .byte   $02
        beq     LF013
        .byte   $02
        .byte   $E7
        dec     LDDDE,x
        .byte   $02
        .byte   $F2
        inx
        .byte   $EE
        .byte   $EB
LF03F:  inc     LDEE1,x
        sbc     $E9
        .byte   $F7
        .byte   $02
        cmp     LEBDA,x
        cpx     $F0
        .byte   $E2
        .byte   $E7
LF04D:  cpx     #$F6
        inc     $02DA,x
        inc     $F2
        cpx     LDEED
        .byte   $EB
        .byte   $E2
        inx
        inc     $02EC
        .byte   $DC
        .byte   $EB
        .byte   $E2
        inc     $DE
        .byte   $02
        beq     LF03F
        .byte   $EF
        dec     LE102,x
        .byte   $DA
        cpx     LECFE
        beq     LF04D
        sbc     #$ED
        .byte   $02
        inx
        .byte   $EF
        dec     $02EB,x
        sbc     LDEE1
        .byte   $02
        .byte   $DC
        .byte   $E2
        sbc     LF6F2
        .byte   $FE
        .byte   $F0
LF082:  dec     LDB02,x
        dec     LE2E5,x
        dec     LDEEF,x
LF08B:  .byte   $02
        sbc     LDEE1
        cpx     $02DE
        .byte   $DC
        .byte   $EB
        .byte   $E2
        inc     $DE
        cpx     LDA02
        .byte   $EB
        dec     LEDFE,x
        sbc     ($DE,x)
        .byte   $02
        beq     LF08B
        .byte   $EB
        cpx     $02
        inx
        .byte   $DF
        .byte   $02
        sbc     LDAE1
        sbc     LEC02
        dec     LEBDC,x
        dec     LFEED,x
        .byte   $DC
        .byte   $EB
        .byte   $E2
        inc     $E2
        .byte   $E7
        .byte   $DA
        sbc     $02
        inx
        .byte   $EB
        cpx     #$DA
        .byte   $E7
        .byte   $E2
        .byte   $F3
        .byte   $DA
        sbc     LE8E2
        .byte   $E7
        .byte   $F7
        inc     LF6DF,x
        inx
        inc     $F0,x
        inc     $E5,x
        .byte   $FA
        .byte   $02
        .byte   $F2
        inx
        inc     LE602
LF0DA:  inc     LEDEC
        .byte   $02
LF0DE:  sbc     #$EE
        sbc     LDA02
        .byte   $E7
        inc     LE7DE,x
        cmp     LED02,x
        inx
        .byte   $02
        sbc     LDEE1
        .byte   $E2
        .byte   $EB
        .byte   $02
        .byte   $DF
        .byte   $E2
        dec     LDDE7,x
        .byte   $E2
        cpx     $02E1
        sbc     #$E5
        .byte   $DA
LF0FE:  .byte   $E7
        cpx     LFFF6
        cpx     LEBE8
        .byte   $EB
        .byte   $F2
        .byte   $02
        sbc     $02E8
        .byte   $E2
        .byte   $E7
        sbc     LEBDE
        .byte   $EB
        inc     LEDE9
        inc     LE8F2,x
        inc     $02EB
        inc     $E2
        cpx     LE2EC
        inx
        .byte   $E7
        .byte   $F7
        inc     LEEDB,x
        sbc     LF002
        dec     LE702,x
        dec     LDDDE,x
        .byte   $02
        .byte   $F2
        inx
        inc     $02EB
        sbc     ($DE,x)
        sbc     $E9
        inc     $FE,x
        .byte   $DA
        .byte   $02
        cpx     #$EB
        inx
        inc     $02E9
        inx
        .byte   $DF
        .byte   $02
        .byte   $DB
        inc     LE0EB
        sbc     $DA
        .byte   $EB
        cpx     LE1FE
        .byte   $DA
        .byte   $EF
        dec     LDB02,x
        .byte   $EB
        inx
        cpx     $DE
        .byte   $E7
        .byte   $02
        .byte   $E2
        .byte   $E7
        sbc     LFEE8
        sbc     LDEE1
        .byte   $02
        .byte   $DC
        .byte   $E2
        sbc     LF9F2
        cpx     LEF02
        .byte   $DA
        inc     LEDE5
        inc     LE7DA,x
        cmp     LED02,x
        .byte   $DA
        cpx     $DE
        .byte   $E7
        .byte   $02
        .byte   $DA
        sbc     $E5
        .byte   $02
        sbc     LDEE1
        .byte   $02
        .byte   $EF
        .byte   $DA
        sbc     $EE
        .byte   $DA
        .byte   $DB
        sbc     $DE
        inc     LEDE2,x
        dec     LECE6,x
        inc     $FE,x
        inx
        inc     $02EB
        .byte   $E2
        .byte   $E7
        .byte   $DF
        inx
        .byte   $EB
        inc     $DA
        sbc     LE8E2
        .byte   $E7
        .byte   $02
        .byte   $E2
        .byte   $E7
        cmp     LDCE2,x
        .byte   $DA
        sbc     LECDE
        inc     LE1ED,x
        .byte   $DA
        sbc     LED02
        sbc     ($DE,x)
        .byte   $02
        .byte   $DB
        inc     LE0EB
        sbc     $DA
        .byte   $EB
        cpx     LDD02
        .byte   $EB
        inx
        sbc     #$E9
        dec     LFEDD,x
        cpx     LE6E8
        dec     LE802,x
        .byte   $DF
        .byte   $02
        sbc     LDEE1
        .byte   $02
        sbc     $E8
        inx
        sbc     LDDFE
        inc     LE2EB
        .byte   $E7
        cpx     #$02
        sbc     LDEE1
        .byte   $E2
        .byte   $EB
        .byte   $02
        cpx     #$DE
        sbc     LF0DA
        .byte   $DA
        .byte   $F2
        inc     $FF,x
        .byte   $EC
LF1EE:  inx
        .byte   $EB
        .byte   $EB
        .byte   $F2
        .byte   $02
        sbc     $02E8
        .byte   $DB
        inx
        sbc     LDEE1
        .byte   $EB
        .byte   $02
        .byte   $F2
        inx
        .byte   $EE
LF200:  .byte   $FE
        .byte   $DD
LF202:  .byte   $DA
        .byte   $EB
        cpx     $F0
        .byte   $E2
        .byte   $E7
        cpx     #$F7
        .byte   $DB
        inc     $02ED
        beq     LF1EE
        .byte   $02
        sbc     ($DA,x)
        .byte   $EF
        dec     LDFFE,x
        inx
        inc     LDDE7
        .byte   $02
        sbc     LDEE1
        .byte   $02
        sbc     $E8
        .byte   $DC
        .byte   $DA
        sbc     LE8E2
        .byte   $E7
        .byte   $02
        inx
        .byte   $DF
        inc     LE1ED,x
        dec     LDB02,x
        inc     LE0EB
        sbc     $DA
        .byte   $EB
        sbc     $02EC,y
        sbc     ($E2,x)
        cmp     LE8DE,x
        inc     LFAED
        inc     LEEE8,x
        .byte   $EB
        .byte   $02
        .byte   $E2
        .byte   $E7
        .byte   $DF
        inx
        .byte   $EB
LF24C:  inc     $DA
        .byte   $E7
        sbc     $02EC
        cpx     LF2DA
        inc     LE1ED,x
        .byte   $DA
        sbc     LE202
        sbc     LE202
        cpx     LDF02
        .byte   $E2
        sbc     $E5
        dec     $02DD,x
        beq     LF24C
        sbc     LFEE1
        sbc     LDEE1
        .byte   $02
        cpx     LE8ED
        sbc     $DE
        .byte   $E7
        .byte   $02
        .byte   $E2
        sbc     LE6DE
        cpx     LFEF6
        .byte   $DB
        sbc     $E8
        .byte   $DC
        cpx     $02
        sbc     LDEE1
        .byte   $02
        .byte   $DC
        .byte   $DA
        sbc     #$EC
        inc     LDEE5
        .byte   $EC
LF291:  .byte   $02
        beq     $F276
        sbc     LFEE1
        .byte   $F2
        inx
        inc     $02EB
        .byte   $DC
        .byte   $DA
        sbc     #$DE
        .byte   $02
        .byte   $DA
        .byte   $E7
        cmp     LE002,x
        inx
        cpx     LE5DA
LF2AA:  .byte   $F2
        .byte   $E7
        .byte   $02
        beq     LF291
        sbc     $E5
        inc     LDEE1,x
        sbc     $E9
        .byte   $02
        .byte   $F2
        inx
        inc     LDC02
        inx
        sbc     $E5
        dec     LEDDC,x
        .byte   $02
        sbc     LDEE1
        .byte   $02
        .byte   $E2
        sbc     LE6DE
        cpx     LFEF6
        beq     LF2AA
        sbc     LE1DC
        .byte   $02
        .byte   $F2
        inx
        inc     $02EB
        .byte   $EC
LF2DA:  sbc     LE9DE
        inc     LE7DA,x
        cmp     LE002,x
        inx
        inx
        cmp     LE502,x
        inc     LE4DC
        .byte   $FA
        .byte   $FF
        sbc     $DA
        inc     LDCE7
        sbc     ($E9,x)
        .byte   $DA
        cmp     LF002,x
        .byte   $E2
        sbc     $E5
        .byte   $02
        .byte   $DB
        .byte   $EB
        .byte   $E2
        dec     $02DF,x
        .byte   $F2
        inx
        inc     LF0FE
        .byte   $E2
        sbc     $02E1
        sbc     LDEE1
        .byte   $02
        cmp     LEDDE,x
        .byte   $DA
        .byte   $E2
        sbc     $EC
        .byte   $02
        inx
        .byte   $DF
        .byte   $02
        .byte   $F2
        inx
        inc     LFEEB
        inc     $E2
        cpx     LE2EC
        inx
        .byte   $E7
        cpx     LFEF6
        .byte   $EB
        dec     LDEE6,x
        inc     $DB
        dec     $02EB,x
        sbc     $02E8
        .byte   $DC
        inx
        sbc     $E5
        dec     LEDDC,x
        .byte   $02
        .byte   $DA
        sbc     $E5
        .byte   $02
        inx
        .byte   $DF
        inc     LE1ED,x
        dec     LEC02,x
        sbc     LE5E8
        dec     $02E7,x
        cmp     LDAE2,x
        inc     $E8
        .byte   $E7
        cmp     LFEEC,x
        .byte   $DA
        .byte   $E7
        cmp     LE002,x
        inx
        sbc     $DD
        .byte   $02
        .byte   $DB
        .byte   $DA
        .byte   $EB
        cpx     LFEFA
        cpx     #$E8
        inx
        cmp     LE502,x
        inc     LE4DC
        .byte   $F7
        .byte   $02
        cmp     LEBDA,x
        cpx     $F0
        .byte   $E2
        .byte   $E7
        cpx     #$F6
        .byte   $FF
        .byte   $E2
        brk
        .byte   $DA
        inc     L0000
        sbc     LDEE1
        brk
        sbc     LEBDE
        .byte   $EB
        inx
        .byte   $EB
        inc     LE1ED,x
        .byte   $DA
        sbc     LDF00
LF392:  sbc     $DA
        sbc     #$EC
        brk
        .byte   $E2
        .byte   $E7
        brk
        sbc     LDEE1
        brk
        .byte   $E7
        .byte   $E2
        cpx     #$E1
        sbc     LFFFA
        .byte   $E2
        brk
        .byte   $DA
        inc     L0000
        sbc     LDEE1
        brk
        beq     LF392
        .byte   $E7
        cpx     #$DE
        cmp     LEC00,x
        .byte   $DC
        inx
        inc     LE0EB
        dec     LEDFE,x
        sbc     ($DA,x)
        sbc     LE900
        dec     LE4DC,x
        cpx     LDA00
        sbc     LF200
        inx
        inc     LFEEB
        .byte   $E7
        .byte   $E2
        cpx     #$E1
        sbc     LDAE6
        .byte   $EB
        dec     LFAEC,x
        .byte   $FF
        .byte   $02
        inx
        cpx     $FA
        .byte   $FF
        .byte   $F2
        inx
        inc     LEFF8
        dec     LDF82,x
        inx
        .byte   $E2
        sbc     $DE
        cmp     LE682,x
        .byte   $F2
        .byte   $82
        sbc     #$E5
        .byte   $DA
        .byte   $E7
        cpx     LEDFE
        sbc     ($E2,x)
        cpx     LED82
        .byte   $E2
        inc     $DE
        .byte   $82
        cmp     LEBDA,x
        cpx     $F0
        .byte   $E2
        .byte   $E7
        cpx     #$F9
        inc     LEEDB,x
        sbc     LED82
        sbc     ($DE,x)
        .byte   $82
        .byte   $E7
        dec     LEDF1,x
        .byte   $82
        sbc     LE6E2
        dec     LF082,x
        dec     LE682,x
        dec     LEDDE,x
        inc     $FE,x
        .byte   $E2
        .byte   $82
        cpx     LDAE1
        sbc     $E5
        .byte   $82
        .byte   $DB
        dec     LEF82,x
        .byte   $E2
        .byte   $DC
        sbc     LEBE8
        .byte   $E2
        inx
        inc     LF9EC
        sbc     LFFF9,y
        .byte   $DB
        sbc     $DA
        cpx     $02ED
        inx
        sbc     #$DE
        .byte   $E7
        .byte   $02
        sbc     LDEE1
        .byte   $02
        .byte   $DC
        inx
        .byte   $E7
        sbc     LE2DA
        .byte   $E7
        dec     LECEB,x
        inc     LE7DA,x
        cmp     LDC02,x
        inx
        sbc     $E5
        dec     LEDDC,x
        .byte   $02
        .byte   $DA
        cpx     LE602
        .byte   $DA
        .byte   $E7
        .byte   $F2
        .byte   $02
        inx
        .byte   $DF
        inc     LE1ED,x
        dec     LE202,x
        sbc     LE6DE
        cpx     LDA02
        cpx     LF202
        inx
        inc     LDC02
        .byte   $DA
        .byte   $E7
        inc     LDEDB,x
        .byte   $DF
        inx
        .byte   $EB
        dec     LED02,x
        .byte   $E2
        inc     $DE
        .byte   $02
        .byte   $EB
        inc     LECE7
        .byte   $02
        inx
        inc     LF6ED
        inc     LE8E0,x
        inx
        cmp     LE502,x
        inc     LE4DC
        .byte   $F7
        cmp     LEBDA,x
        cpx     $F0
        .byte   $E2
        .byte   $E7
        cpx     #$FA
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF4D2:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF4FD:  brk
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
LF51B:  .byte   $FF
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LF6DF:  .byte   $FF
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     #$0A
        ora     ($11),y
        ora     ($0B),y
LF6EC:  .byte   $01
LF6ED:  ora     ($03,x)
        .byte   $03
        .byte   $03
        .byte   $03
LF6F2:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     $032B
        .byte   $03
        .byte   $17
        .byte   $17
        .byte   $03
        .byte   $03
        .byte   $2B
        .byte   $17
        pla
        ora     ($03,x)
        .byte   $03
        ora     ($65,x)
        .byte   $03
        .byte   $37
        ora     ($01,x)
        bit     L0303
        .byte   $03
        .byte   $47
        lsr     a
        .byte   $03
        .byte   $2F
        .byte   $03
        .byte   $03
        .byte   $27
        bit     $2C37
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $4B
        jmp     L4E4D

        .byte   $37
        bit     $5946
        ora     ($0A),y
        ora     ($11),y
        ora     ($11),y
        ora     ($34),y
        .byte   $07
        .byte   $07
        ora     ($11),y
        .byte   $07
        ora     $1111,y
        .byte   $1A
        .byte   $07
        ora     ($11),y
        .byte   $07
        .byte   $1B
        ora     #$0C
        ora     ($11),y
        .byte   $34
        ora     ($03),y
        .byte   $03
        .byte   $2B
        ora     $01,x
        adc     #$03
        .byte   $03
        pla
        adc     $03
        .byte   $37
        ora     ($69,x)
        .byte   $47
        lsr     a
        asl     $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $37
        .byte   $02
        lsr     $11
        and     $11,x
        ora     #$02
        .byte   $02
        brk
        brk
        .byte   $3C
        ora     ($34),y
        .byte   $0B
        ora     ($09),y
        ora     ($09),y
        brk
        brk
        brk
        brk
        ora     ($3D),y
        ora     ($09),y
        ora     ($11),y
        ora     ($09),y
        ora     ($11),y
        asl     a
        ora     ($65),y
        ora     ($37,x)
        bit     L1108
        php
        ora     ($37),y
        bit     $2C37
        .byte   $03
        asl     $03,x
        .byte   $43
        ora     #$0A
        php
        .byte   $0B
        plp
        and     #$30
        and     ($30),y
        ora     ($30),y
        ora     ($11),y
        ora     #$11
        ora     ($08),y
        ora     #$08
        ora     ($11),y
        and     $1011,x
        ora     ($01,x)
        .byte   $02
        .byte   $02
        php
        ora     ($08),y
        .byte   $14
        php
        ora     ($34),y
        ora     #$11
        and     $1111,x
        .byte   $34
        ora     ($08),y
        ora     ($3C),y
        ora     ($08),y
        ora     ($08),y
        ora     ($08),y
        .byte   $0B
        .byte   $03
        .byte   $03
        .byte   $44
        .byte   $44
        .byte   $03
        .byte   $03
        .byte   $44
        .byte   $27
        .byte   $03
        .byte   $03
        bit     L0303
        .byte   $2F
        .byte   $02
        .byte   $02
        .byte   $27
        bit     $5946
        .byte   $3C
        ora     ($11),y
        ora     ($11),y
        and     $11,x
        ora     ($11),y
        asl     a
        ora     ($10),y
        ora     #$0A
        ora     ($11),y
LF7E0:  asl     a
        ora     #$11
        and     $0911,x
        ora     ($14),y
        .byte   $1A
        .byte   $07
        bpl     LF7FD
        asl     a
        ora     ($11),y
        ora     ($07),y
        .byte   $0C
        ora     #$0C
        ora     ($11),y
        ora     ($0A),y
        php
        ora     #$11
        ora     #$61
LF7FD:  .byte   $63
        adc     ($63,x)
        .byte   $5A
        .byte   $67
        .byte   $03
        .byte   $03
        asl     a
        ora     $1111,y
        .byte   $2B
        .byte   $2B
        ora     ($01,x)
        .byte   $1A
        ora     ($09),y
        ora     ($1A),y
        ora     ($08),y
        ora     ($0A),y
        ora     $1110,y
        .byte   $1A
        .byte   $1B
        ora     #$0C
        php
        jsr     L1108
        .byte   $5A
        .byte   $67
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $37
        .byte   $03
        .byte   $37
        .byte   $34
        .byte   $73
        ora     ($71),y
        bmi     LF83F
        ora     ($11),y
        .byte   $6F
        ora     ($70),y
        adc     ($6E),y
        .byte   $73
        ora     ($77),y
        ora     ($11),y
        bvs     LF84D
        ora     #$76
        .byte   $70
LF83F:  .byte   $77
        adc     $76,x
        bvs     LF8BB
        ora     ($11),y
        bvs     LF8BF
        .byte   $3A
        .byte   $3B
        ora     ($01,x)
        .byte   $02
LF84D:  .byte   $02
LF84E:  plp
        .byte   $29
LF850:  ror     $7011
        adc     ($30),y
        and     ($30),y
        ora     ($6E),y
        ora     ($70),y
        ora     ($32),y
        ora     ($33),y
        ora     ($75),y
        ror     $33,x
        ora     ($11),y
        ora     ($0B),y
        php
        php
        ora     ($10),y
        .byte   $0B
        ora     ($11),y
        ora     ($3D),y
        .byte   $72
        php
        bvs     LF8E5
        ora     ($3D),y
        ora     ($3D),y
        adc     $76,x
        bvs     LF8ED
        ora     ($11),y
        ora     ($14),y
        .byte   $2F
        .byte   $44
        .byte   $03
        .byte   $03
        .byte   $44
        .byte   $44
        .byte   $03
        .byte   $03
        .byte   $44
        .byte   $44
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sec
        .byte   $5F
        ror     $1111
        adc     ($6E),y
        ora     ($70),y
        .byte   $74
        ora     #$73
LF89A:  bvs     LF913
        ror     $7014
        .byte   $77
        bpl     LF8B6
        bvs     LF91B
        ora     ($73),y
        ora     ($74),y
        php
        ora     ($10),y
        ora     ($0A),y
        ora     ($33),y
        ora     ($11),y
        php
        ora     ($08),y
        .byte   $37
        .byte   $2C
LF8B6:  lsr     $60
        .byte   $33
        ora     ($33),y
LF8BB:  ora     ($6F),y
        .byte   $73
        .byte   $70
LF8BF:  .byte   $74
        adc     $76,x
        ora     #$71
        .byte   $32
        ora     ($11),y
        ora     ($6F),y
        .byte   $14
        bvs     LF943
        bpl     LF941
        bvs     LF941
        ora     ($09),y
        php
        adc     ($10),y
        ora     ($08),y
        ora     ($11),y
        asl     a
        ora     #$09
        .byte   $6F
        ora     ($11),y
        ora     ($32),y
        .byte   $73
        bvs     LF95B
        .byte   $0B
LF8E5:  ora     ($11),y
        ora     ($11),y
        .byte   $0C
        ora     #$23
        .byte   $11
LF8ED:  ora     #$0A
        ora     #$11
        ora     ($08),y
        ora     ($08),y
        ora     #$09
        asl     a
        ora     ($35),y
        ora     ($14),y
        ror     $1171
        ora     ($6E),y
        adc     ($11),y
        adc     ($09),y
        asl     a
        ora     ($09),y
        ora     ($0C),y
        ora     ($0C),y
LF90C:  php
        ora     ($08),y
        ora     #$08
        ora     #$0A
LF913:  ora     ($01),y
        ora     ($44,x)
        .byte   $44
        ora     ($01,x)
        .byte   $27
LF91B:  bit     $0911
        ora     ($3D),y
        asl     $02
        pha
        eor     #$1E
        asl     $1E1E,x
        ora     #$11
        ora     ($09),y
        .byte   $0B
        .byte   $14
        php
        ora     ($3C),y
        ora     ($11),y
        adc     ($08),y
        ora     ($11),y
        ora     ($03),y
        .byte   $03
        ora     $04
        .byte   $03
        .byte   $03
        .byte   $04
        ora     $03
LF941:  .byte   $03
        .byte   $04
LF943:  .byte   $04
        ora     ($09),y
        ora     ($01,x)
        ora     $04
        .byte   $27
        bit     $0504
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        php
        .byte   $14
        php
        ora     #$46
        asl     $48
LF95B:  eor     #$02
        .byte   $02
        pha
        eor     #$10
        .byte   $73
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $03
        .byte   $03
        adc     ($63,x)
        php
        ora     #$10
        ora     ($61),y
        .byte   $63
        .byte   $5B
        .byte   $52
        adc     ($63,x)
        .byte   $5A
        .byte   $67
        .byte   $03
        .byte   $03
        .byte   $03
        asl     $02,x
        asl     $48
        eor     #$02
        brk
        pha
        eor     #$11
        .byte   $73
        .byte   $3F
        .byte   $3F
        .byte   $03
        .byte   $03
        ora     $03
        php
        ora     #$08
        ora     #$08
        ora     #$34
        .byte   $14
        .byte   $03
        .byte   $03
        adc     ($62,x)
        .byte   $03
        .byte   $03
        .byte   $62
        .byte   $63
        ora     $04
        .byte   $03
        .byte   $03
        .byte   $5B
        .byte   $52
        .byte   $03
        .byte   $03
        .byte   $5B
        .byte   $52
        adc     ($63,x)
        ora     #$0A
        .byte   $3F
        .byte   $3F
        ora     ($35),y
        .byte   $3F
        .byte   $3F
        adc     ($62,x)
        .byte   $5B
        eor     ($62),y
        .byte   $62
        eor     ($51),y
        .byte   $62
        .byte   $63
        eor     ($52),y
        ora     #$0A
        php
        ora     #$61
        .byte   $62
        .byte   $5A
        ror     $62
        .byte   $63
        ror     $67
        php
        ora     #$3F
        .byte   $3F
        .byte   $04
        .byte   $04
        adc     ($62,x)
        .byte   $04
        .byte   $04
        .byte   $62
        .byte   $62
        .byte   $5B
        .byte   $52
        .byte   $62
        .byte   $63
        .byte   $5A
        .byte   $67
        adc     ($63,x)
        php
        and     $3D08,x
        .byte   $1F
        .byte   $1F
        pha
        eor     #$08
        and     $1134,x
        .byte   $02
        .byte   $02
        ora     ($11),y
LF9EC:  .byte   $02
        .byte   $02
        ora     ($14),y
        .byte   $03
        .byte   $03
LF9F2:  asl     $04,x
        .byte   $43
        .byte   $03
        .byte   $03
        .byte   $03
        ora     $3003,x
        .byte   $03
        .byte   $3C
LF9FD:  ora     ($34),y
        ora     #$56
        .byte   $03
        lsr     $03,x
        ora     ($11),y
        .byte   $3F
        .byte   $3F
        lsr     $02,x
        bit     $49
        bit     $1E
        bit     $1E
        eor     $08
        and     $0308
        .byte   $03
        ora     L0303,x
        .byte   $03
        .byte   $03
        ora     $096F,x
        bvs     LFA91
        bmi     LFA25
        lsr     $03,x
        .byte   $03
LFA25:  bmi     LFA2A
        lsr     $02,x
        .byte   $56
LFA2A:  pha
        bit     $1E
        bit     $1E
        bit     $37
        bit     $272F
        bit     $2C03
        .byte   $03
        .byte   $02
        lsr     L0000
        brk
        asl     $02
        brk
        brk
        ora     ($01,x)
        brk
        brk
        .byte   $02
        asl     L0000
        brk
        brk
        brk
        eor     $6C5D,x
        jmp     (L6D6D)

        adc     $2E6D
        adc     L6D6D
        adc     LD66D
        dec     $D6,x
        dec     $86,x
        .byte   $87
        stx     $808F
        sta     ($88,x)
        .byte   $89
        brk
        brk
        .byte   $82
        .byte   $83
        brk
        brk
        bcc     LF9FD
LFA6C:  brk
        brk
        .byte   $92
        .byte   $93
        brk
        brk
        brk
        sta     $9796,x
        .byte   $9E
        .byte   $9F
LFA78:  tya
        sta     $8D8C,y
        txs
        .byte   $9B
        sty     $95,x
        txa
        sty     $84
        sty     $84
        .byte   $8B
        lda     ($B2),y
        brk
        lda     ($A8,x)
        lda     #$A2
        .byte   $A3
        tax
        .byte   $AB
        .byte   $A4
LFA91:  lda     $AC
        lda     $A7A6
        ldx     LC0AF
        cmp     ($C6,x)
        .byte   $C7
        .byte   $C2
        .byte   $C3
        iny
        cmp     #$C4
        cmp     L0000
        brk
        brk
        .byte   $B3
        tsx
        .byte   $BB
        ldy     $B5,x
        ldy     $B6BD,x
        .byte   $B7
        ldx     LCABF,y
        .byte   $CB
        cpy     a:$CD
        brk
        cmp     ($D2),y
        brk
        clv
        .byte   $D3
        sei
        lda     $79D4,y
        .byte   $7A
        cmp     $B0,x
        .byte   $7B
        .byte   $7C
        sta     $A0
        adc     $9C7E,x
        brk
        .byte   $7F
        dec     a:L0000
        .byte   $CF
        brk
        .byte   $02
        .byte   $02
        .byte   $5F
        and     L6D6D,y
        rol     a:$2E
        brk
        brk
        brk
        brk
        brk
LFADE:  brk
        brk
        brk
        brk
        asl     $06
        php
        ora     #$64
        .byte   $4B
        jsr     L2422
        .byte   $26
LFAEC:  rol     a
LFAED:  asl     $6E12
        rti

        .byte   $31
LFAF2:  bit     $6C
        cpx     #$2E
        ror     $4E
        stx     $4B,y
        lsr     a
        jmp     L8A04

        .byte   $62
        .byte   $12
        rol     a
        .byte   $12
        ror     a
        rol     a
        ldy     #$C0
        rts

        .byte   $E2
        .byte   $80
        .byte   $82
        sty     $48
        ldy     $71AE
        asl     $A0
        ldx     #$A4
        ldx     $C8
        cpy     $06E8
        tay
        tax
        cpy     $C6
        dex
        dec     $3106
        .byte   $EB
        and     #$3A
        brk
        .byte   $04
        ldx     $0106
        sty     $038E
        pla
        adc     #$68
        adc     #$ED
        asl     L0000
        brk
        asl     $16,x
        .byte   $7A
        ldy     #$8A
        .byte   $C2
        .byte   $C3
        .byte   $12
        plp
        eor     ($E8),y
        .byte   $4B
        cpx     $EF
        ror     $4F4F
        .byte   $34
        brk
        .byte   $12
        .byte   $12
        brk
        brk
        inx
        sed
        rts

        adc     ($A4),y
        ldx     $43
        iny
        sty     $88
        bmi     LFAF2
        .byte   $9E
        .byte   $13
        cmp     LD1CF
        cmp     ($EC),y
        .byte   $EE
LFB5E:  dec     $D8,x
        lsr     L0000,x
        brk
        brk
        sty     a:L0000
        ora     ($5A,x)
        .byte   $5C
        sei
        sty     $8304
        brk
        asl     L0000
        rts

        .byte   $62
        .byte   $64
        brk
        sty     $0B09
        bvs     LFBEC
        .byte   $74
        ror     L0000,x
        brk
        .byte   $0F
        .byte   $04
        brk
        brk
        brk
        brk
        .byte   $12
        .byte   $14
        .byte   $04
        ora     L0000,x
        rol     $28
        rol     a
        bit     $302E
        .byte   $32
        cpx     #$8C
        stx     L0000
        brk
        .byte   $3C
        rol     $BDB0,x
        .byte   $BF
        brk
        bcs     LFBE5
        lsr     a
        jmp     L90B0

        .byte   $92
        sty     $96,x
        tya
        txs
        ldy     $A6
        ldx     #$A9
        bcs     LFB5E
        lda     $B7,x
        sbc     ($F3),y
        brk
        brk
        cmp     #$CB
        cmp     ($DE,x)
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $06
        php
LFBE5:  ora     #$65
        .byte   $4B
        and     ($21,x)
        and     ($27,x)
LFBEC:  .byte   $2B
        .byte   $0F
        .byte   $12
        .byte   $6F
        eor     ($21,x)
        and     (L006D,x)
        sbc     ($2F,x)
        .byte   $67
LFBF7:  lsr     $0D97
        .byte   $4B
        eor     $8B05
        .byte   $62
        .byte   $12
        .byte   $2B
        .byte   $14
        .byte   $6B
        .byte   $2B
        lda     ($C1,x)
        adc     ($E3,x)
        sta     ($83,x)
        sta     $49
        asl     L0000
        bvs     LFBF7
        lda     ($A3,x)
        lda     $A7
        and     ($CD,x)
        sbc     #$EB
        lda     #$AB
        cmp     $C7
        .byte   $CB
        .byte   $CF
        asl     $21
        ldy     $3B00
        brk
        ora     L0000
        cpx     $8D02
        .byte   $8F
        and     #$69
        sei
        adc     #$78
        inc     a:$06
        sec
        asl     $16,x
        .byte   $7B
        lda     ($8B,x)
        .byte   $12
        asl     $12
        brk
        eor     ($E9),y
        .byte   $4B
        sbc     $06
        .byte   $4F
        .byte   $4F
        .byte   $6F
        eor     L0000
        .byte   $12
        .byte   $12
        brk
        brk
        sbc     #$F9
        adc     ($70,x)
        lda     $A7
LFC50:  .byte   $44
        cmp     #$85
        .byte   $89
        and     ($9D),y
        .byte   $9F
        .byte   $32
        dec     LD1D0
        cmp     ($ED),y
        cld
        .byte   $EF
        beq     LFCB8
        brk
        brk
        brk
        sty     a:L0000
        .byte   $02
        .byte   $5B
        brk
        adc     $826F,y
        .byte   $8F
        ora     $07
        brk
        adc     ($63,x)
        brk
        sty     $8C
        asl     a
        .byte   $0C
        adc     ($73),y
        adc     $77,x
        brk
        brk
        .byte   $04
        .byte   $04
        brk
        brk
        brk
        brk
        .byte   $13
        .byte   $04
        .byte   $04
        asl     $25,x
        .byte   $27
        and     #$2B
        and     $312F
        .byte   $33
        sbc     ($85,x)
        brk
        brk
        .byte   $3B
        and     $B0B0,x
        ldx     $46C0,y
        .byte   $47
LFC9C:  eor     #$4B
        bcs     LFC50
        sta     ($93),y
        sta     $97,x
        sta     $A59B,y
        .byte   $A7
        tay
        tax
        lda     (L0000),y
        ldx     $B8,y
        .byte   $F2
        .byte   $F4
        brk
        iny
        dex
        cpy     LDFC2
LFCB6:  .byte   $FF
        brk
LFCB8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $12
        .byte   $12
        asl     $18,x
        ora     $5B74,y
        bmi     LFD0B
        .byte   $34
        and     ($2A,x)
        asl     $7E16,x
LFCF0:  and     ($21,x)
        brk
        jmp     (L3EF0)

        ror     $5E,x
        .byte   $12
        .byte   $5B
LFCFA:  .byte   $5A
        .byte   $5C
        ldy     $629A,x
        .byte   $12
        .byte   $3A
        asl     L0000,x
        .byte   $7C
        bcs     LFCB6
        bvs     LFCFA
        bcc     LFC9C
        .byte   $94
LFD0B:  cli
        ldy     $70BE,x
        asl     $B0,x
        .byte   $B2
        ldy     $B6,x
        cld
        .byte   $DC
        brk
        asl     $B8,x
        tsx
        .byte   $D4
        dec     $DA,x
        dec     $2112,x
        .byte   $FB
        and     $962A,y
        asl     $BE,x
        .byte   $12
        ora     ($62),y
        .byte   $62
        bpl     LFD94
        adc     #$6A
        .byte   $6B
        sbc     $1812,x
        clc
        bvs     LFD97
        ldy     #$B0
        txs
        .byte   $D2
        .byte   $D3
        bvc     LFD54
        .byte   $12
LFD3D:  brk
        .byte   $5B
        .byte   $F4
        .byte   $12
        ror     $5F5F,x
        and     ($12,x)
        eor     ($51),y
        .byte   $07
        .byte   $12
        brk
        brk
        bvs     LFDBE
        ldy     $B6,x
        .byte   $53
        cld
        sty     $98,x
LFD54:  and     $AD,x
        .byte   $BF
        .byte   $23
        cld
        .byte   $DA
        .byte   $DC
        sbc     $F7,x
        sbc     LFCFA,y
        .byte   $04
        eor     $6600,y
        sty     a:$E6
        .byte   $04
        sty     $8C5E
        sta     ($87,x)
        brk
        brk
        sty     $6A68
        jmp     (L006D)

        txa
        ora     $0404
        .byte   $7B
        adc     LE97F,x
        bpl     LFD83
        .byte   $04
        inx
        .byte   $17
        .byte   $19
LFD83:  .byte   $1B
        ora     $211F,x
        .byte   $23
        brk
        brk
        brk
        brk
        .byte   $34
        and     $37,x
        and     $8DD1,y
        brk
        .byte   $3F
LFD94:  eor     ($43,x)
        .byte   $45
LFD97:  bcs     LFD99
LFD99:  cpy     L0000
        lsr     $5100
        .byte   $53
        bcs     LFD3D
        .byte   $9E
        ldy     #$A2
        brk
        brk
        .byte   $AB
        lda     a:$AF
        .byte   $B3
        brk
        lda     LD8BB,y
        cld
        brk
        .byte   $D2
        .byte   $D4
        dec     $C6,x
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFDBE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $12
        .byte   $12
        asl     $18,x
        ora     $5B75,y
        and     ($33),y
        and     ($31),y
        .byte   $2B
        .byte   $1F
        asl     $7F,x
        bmi     LFE23
        .byte   $34
        adc     $3FF1
        .byte   $77
        lsr     $1D12,x
        .byte   $5B
        eor     $9B16,x
        .byte   $62
        .byte   $12
LFE00:  .byte   $3B
        ora     L0000,x
        adc     $B1B1,x
        adc     ($F3),y
        sta     ($93),y
        sta     $59,x
        asl     L0000,x
        adc     ($16),y
        lda     ($B3),y
        lda     $B7,x
        and     ($DD),y
        brk
        .byte   $FB
        lda     LD5BB,y
        .byte   $D7
        and     ($DF),y
        .byte   $12
        and     ($BC),y
        brk
        .byte   $2B
LFE23:  .byte   $97
        asl     L0000,x
        .byte   $FC
        bpl     LFE8B
        .byte   $62
        and     $7869,y
        .byte   $6B
        adc     $12FE,y
        clc
        clc
        adc     ($62),y
        lda     ($B1,x)
        .byte   $9B
        asl     $12,x
        eor     ($18),y
        .byte   $12
        brk
        .byte   $5B
        sbc     $12,x
        .byte   $5F
        .byte   $5F
        .byte   $7F
        and     ($14,x)
        eor     ($52),y
LFE48:  .byte   $12
        .byte   $17
        brk
        brk
        adc     ($71),y
        lda     $B7,x
        .byte   $54
        cmp     $3195,y
        rol     $BD,x
        .byte   $AF
        .byte   $42
        cmp     LDDDB,y
        inc     $F8,x
        cld
        .byte   $FB
        sbc     a:$58,x
        adc     $67
        sty     $03E7
        .byte   $04
        eor     $8C5F,x
        brk
        dey
        brk
        php
        sty     $6B69
        sty     $896E
        .byte   $8B
        asl     $7A04
        .byte   $7C
        ror     LEA80,x
        ora     ($04),y
        .byte   $04
        brk
        clc
        .byte   $1A
        .byte   $1C
        asl     $2220,x
        bit     L0000
        brk
        brk
LFE8B:  brk
        ldx     #$36
        sec
        .byte   $3A
        sbc     $8E
        brk
        rti

        .byte   $42
        .byte   $44
        bcs     LFE48
        .byte   $C3
        cmp     $4D
        .byte   $4F
        bvc     LFEF0
        .byte   $54
        eor     $9D,x
        .byte   $9F
        lda     ($A3,x)
        brk
        brk
        ldy     a:$AE
        brk
        ldy     L0000,x
        tsx
        ldy     LFED8,x
        brk
        .byte   $D3
        cmp     $D7,x
        .byte   $C7
        brk
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
        brk
LFED8:  brk
        brk
        brk
        brk
        brk
LFEDD:  brk
        brk
        brk
        brk
LFEE1:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LFEE5:  .byte   $02
        .byte   $02
        .byte   $30
LFEE8:  bmi     LFF1A
        .byte   $30
LFEEB:  .byte   $30
LFEEC:  .byte   $30
LFEED:  ora     ($02),y
        .byte   $41
LFEF0:  bmi     LFF22
LFEF2:  bmi     LFF24
        bmi     LFF07
LFEF6:  jsr     L3211
        .byte   $30
LFEFA:  bmi     LFF2C
        .byte   $02
        bmi     LFF02
LFEFF:  .byte   $02
        bmi     LFF04
LFF02:  bmi     LFF34
LFF04:  .byte   $32
        .byte   $30
LFF06:  .byte   $33
LFF07:  .byte   $02
        bmi     LFF3A
        and     ($11),y
        .byte   $02
        bvc     LFF42
        .byte   $02
        bmi     LFF42
        bmi     LFF44
        bmi     LFF46
        brk
        .byte   $02
        eor     ($41,x)
LFF1A:  and     ($31),y
        bmi     LFF4E
        .byte   $32
        .byte   $32
        .byte   $02
        brk
LFF22:  bmi     LFF26
LFF24:  .byte   $02
        .byte   $50
LFF26:  .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
LFF2C:  .byte   $02
        .byte   $02
        .byte   $02
        eor     ($32,x)
        .byte   $02
        .byte   $02
        .byte   $02
LFF34:  .byte   $02
        bmi     LFF67
        bmi     LFF3B
        .byte   $02
LFF3A:  .byte   $02
LFF3B:  .byte   $02
        brk
        brk
        ora     ($41),y
        .byte   $02
        .byte   $41
LFF42:  eor     ($41,x)
LFF44:  bmi     LFF48
LFF46:  .byte   $02
        .byte   $02
LFF48:  .byte   $02
        .byte   $02
        brk
        brk
        .byte   $33
        .byte   $33
LFF4E:  bmi     LFF80
        bmi     LFF82
        bmi     LFF84
        bmi     LFF86
        bmi     LFF88
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
LFF67:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        brk
        brk
LFF80:  .byte   $02
        brk
LFF82:  brk
        brk
LFF84:  brk
        brk
LFF86:  brk
        brk
LFF88:  brk
        brk
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        .byte   $03
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        .byte   $02
        ora     ($01,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($03,x)
        .byte   $02
        .byte   $02
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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

LFFE8:  brk
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
LFFF6:  brk
        brk
        brk
LFFF9:  brk
LFFFA:  brk
        .byte   $C0
LFFFC:  cpx     #$FF
        cpx     #$FF
