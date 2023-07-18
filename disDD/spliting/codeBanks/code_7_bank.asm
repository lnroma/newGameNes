; da65 V2.18 - N/A
; Created:    2023-07-17 12:53:47
; Input file: code_bank_7.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L000C           := $000C
L0021           := $0021
L0093           := $0093
L0627           := $0627
L0810           := $0810
L0C10           := $0C10
L0F0F           := $0F0F
L0F10           := $0F10
L1210           := $1210
L1710           := $1710
L1727           := $1727
L1836           := $1836
L2110           := $2110
L2120           := $2120
L2231           := $2231
L3139           := $3139
L4E4D           := $4E4D
L504A           := $504A
L8000           := $8000
L8003           := $8003
L8040           := $8040
L8090           := $8090
L8800           := $8800
L8D00           := $8D00
L8D30           := $8D30
L8E00           := $8E00
L8F00           := $8F00
L9000           := $9000
L9100           := $9100
L9200           := $9200
L9280           := $9280
L9500           := $9500
L9600           := $9600
L9800           := $9800
L9900           := $9900
L9A00           := $9A00
L9B00           := $9B00
L9E00           := $9E00
LA000           := $A000
LA100           := $A100
LA900           := $A900
LAA00           := $AA00
        php
        pha
        txa
        pha
        tya
        pha
        lda     $F0
        ora     $9A
        beq     LC00F
        jmp     LC0A1

LC00F:  lda     $FF
        and     #$78
        sta     $2000
        lda     $2002
        lda     #$00
        sta     $2001
        sta     $2003
        lda     #$02
        sta     $4014
        lda     $1C
        beq     LC033
        ldx     #$80
        jsr     LC119
        lda     #$00
        sta     $1C
LC033:  lda     $1D
        beq     LC040
        ldx     #$58
        jsr     LC119
        lda     #$00
        sta     $1D
LC040:  lda     $19
        beq     LC047
        jsr     LC115
LC047:  lda     $1A
        beq     LC050
        and     #$1F
        jsr     LFF21
LC050:  lda     $1B
        beq     LC059
        and     #$1F
        jsr     LFF3B
LC059:  lda     $18
        beq     LC086
        ldx     #$00
        stx     $18
        lda     $2002
        lda     #$3F
        sta     $2006
        stx     $2006
        ldy     #$20
LC06E:  lda     $0300,x
        sta     $2007
        inx
        dey
        bne     LC06E
        lda     #$3F
        sta     $2006
        sty     $2006
        sty     $2006
        sty     $2006
LC086:  lda     $2002
        lda     $FC
        sta     $2005
        lda     $FA
        sta     $2005
        lda     $FE
        sta     $2001
        lda     $FD
        and     #$01
        ora     $FF
        sta     $2000
LC0A1:  inc     $92
        ldx     #$FF
        stx     $90
        inx
        ldy     #$04
LC0AA:  lda     $80,x
        cmp     #$01
        bne     LC0B8
        dec     $81,x
        bne     LC0B8
        lda     #$04
        sta     $80,x
LC0B8:  inx
        inx
        inx
        inx
        dey
        bne     LC0AA
        lda     $F5
        beq     LC0C7
        inc     $F6
        bne     LC10E
LC0C7:  lda     #$03
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
LC0DC:  ldx     $DB
        lda     $DC,x
        cmp     #$88
        beq     LC0F6
        pha
        lda     #$88
        sta     $DC,x
        inx
        txa
        and     #$07
        sta     $DB
        pla
        jsr     L8003
        jmp     LC0DC

LC0F6:  jsr     L8000
        lda     $F1
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
LC10E:  pla
        tay
        pla
        tax
        pla
        plp
        rti

LC115:  ldx     #$00
        stx     $19
LC119:  lda     $0360,x
        bmi     LC139
        sta     $2006
        lda     $0361,x
        sta     $2006
        ldy     $0362,x
LC12A:  lda     $0363,x
        sta     $2007
        inx
        dey
        bpl     LC12A
        inx
        inx
        inx
        bne     LC119
LC139:  rts

        lda     $FF
        and     #$11
        sta     $FF
        sta     $2000
        rts

        lda     $FF
        ora     #$80
        sta     $FF
        sta     $2000
        rts

LC14E:  inc     $F0
        lda     #$00
        sta     $FE
        sta     $2001
        rts

LC158:  dec     $F0
        lda     #$1E
        sta     $FE
        sta     $2001
        rts

LC162:  ldx     #$01
        stx     $4016
        dex
        stx     $4016
        ldx     #$08
LC16D:  lda     $4016
        lsr     a
        rol     $14
        lsr     a
        rol     L0000
        lda     $4017
        lsr     a
        rol     $15
        lsr     a
        rol     $01
        dex
        bne     LC16D
        lda     L0000
        ora     $14
        sta     $14
        lda     $01
        ora     $15
        sta     $15
        ldx     #$01
LC190:  lda     $14,x
        tay
        eor     $16,x
        and     $14,x
        sta     $14,x
        sty     $16,x
        dex
        bpl     LC190
        ldx     #$03
LC1A0:  lda     $14,x
        and     #$0C
        cmp     #$0C
        beq     LC1B0
        lda     $14,x
        and     #$03
        cmp     #$03
        bne     LC1B6
LC1B0:  lda     $14,x
        and     #$F0
        sta     $14,x
LC1B6:  dex
        bpl     LC1A0
        rts

LC1BA:  sta     L0000
        stx     $01
        sty     $02
        lda     $2002
        lda     $FF
        and     #$FE
        sta     $2000
        lda     L0000
        sta     $2006
        ldy     #$00
        sty     $2006
        ldx     #$04
        cmp     #$20
        bcs     LC1DC
        ldx     $02
LC1DC:  ldy     #$00
        lda     $01
LC1E0:  sta     $2007
        dey
        bne     LC1E0
        dex
        bne     LC1E0
        ldy     $02
        lda     L0000
        cmp     #$20
        bcc     LC203
        adc     #$02
        sta     $2006
        lda     #$C0
        sta     $2006
        ldx     #$40
LC1FD:  sty     $2007
        dex
        bne     LC1FD
LC203:  ldx     $01
        rts

        pha
        txa
        sty     $01
        clc
        sbc     $01
        tax
        pla
        ldy     #$00
        sty     L0000
LC213:  sta     (L0000),y
        dey
        bne     LC213
        dec     $01
        inx
        bne     LC213
        rts

LC21E:  ldx     $97
        cpx     #$04
        bne     LC229
        lda     #$F8
        sta     $0200
LC229:  lda     #$F8
LC22B:  sta     $0200,x
        inx
        inx
        inx
        inx
        bne     LC22B
        rts

LC235:  ldx     #$0F
LC237:  lda     #$00
        sta     $0400,x
        sta     $04D0,x
        lda     #$FF
        sta     $0590,x
        dex
        bne     LC237
        rts

LC248:  jsr     LC276
        jsr     LC235
        jsr     LC21E
        jmp     LFF06

LC254:  lda     #$05
        jsr     LFF55
        jsr     L8000
LC25C:  jmp     LC270

        lda     #$04
        jsr     LFF55
        jsr     L9800
        jmp     LC25C

        jsr     LC21E
        jsr     LFF06
LC270:  lda     #$30
        ldx     #$F0
        bne     LC279
LC276:  lda     #$10
        tax
LC279:  sta     $0F
        stx     $0D
        lda     #$00
        sta     $9A
        ldy     #$04
        sty     $0E
LC285:  ldy     #$1F
LC287:  lda     $0320,y
        sta     $0300,y
        dey
        bpl     LC287
        ldy     #$1F
LC292:  lda     $0300,y
        sec
        sbc     $0F
        bpl     LC29C
        lda     #$0F
LC29C:  sta     $0300,y
        dey
        bpl     LC292
        sty     $18
        lda     $0E
LC2A6:  pha
        jsr     LFF06
        pla
        sec
        sbc     #$01
        bne     LC2A6
        lda     $0F
        clc
        adc     $0D
        sta     $0F
        cmp     #$50
        beq     LC2BF
        lda     $0F
        bpl     LC285
LC2BF:  rts

        stx     $0E
        sty     $0F
        asl     a
        tay
        iny
        pla
        sta     L000C
        pla
        sta     $0D
        lda     (L000C),y
        tax
        iny
        lda     (L000C),y
        sta     $0D
        stx     L000C
        ldx     $0E
        ldy     $0F
        jmp     (L000C)

LC2DE:  ldx     #$00
        ldy     #$04
        lda     $E4,x
        and     #$02
        sta     L0000
        lda     $E5,x
        and     #$02
        eor     L0000
        clc
        beq     LC2F2
        sec
LC2F2:  ror     $E4,x
        inx
        dey
        bne     LC2F2
        rts

LC2F9:  asl     a
        asl     a
        asl     a
        asl     a
        tay
        lda     #$00
        adc     #$C3
        sta     $01
        lda     #$5D
        sta     L0000
        ldx     #$00
LC30A:  lda     (L0000),y
        sta     $0300,x
        sta     $0320,x
        iny
        inx
        cpx     #$10
        bne     LC30A
        rts

LC319:  asl     a
        asl     a
        asl     a
        tay
        ldx     #$00
LC31F:  lda     LC4FD,x
        sta     $0310,x
        sta     $0330,x
        inx
        cpx     #$08
        bne     LC31F
LC32D:  lda     LC505,y
        sta     $0310,x
        sta     $0330,x
        iny
        inx
        cpx     #$10
        bne     LC32D
        lda     $31
        cmp     #$08
        beq     LC34B
        cmp     #$09
        beq     LC34B
        cmp     #$0B
        beq     LC354
        rts

LC34B:  lda     #$26
        sta     $0310
        sta     $0330
        rts

LC354:  lda     #$11
        sta     $0310
        sta     $0330
        rts

        .byte   $0F
        jsr     L1727
        .byte   $0F
        .byte   $37
        .byte   $07
        ora     ($0F,x)
        jsr     L2231
        .byte   $0F
        rol     $11
        ora     ($0F,x)
        rol     $17,x
        asl     $0F
        bmi     LC374
LC374:  asl     $0F
        and     ($1C,x)
        bmi     LC389
        .byte   $3B
        ora     $0F08,y
        rol     $17,x
        asl     $0F
        bmi     LC384
LC384:  asl     $0F
        and     ($1C,x)
        .byte   $30
LC389:  .byte   $0F
        bmi     LC3AD
        .byte   $07
        .byte   $0F
        rol     $17,x
        asl     $0F
        bmi     LC394
LC394:  ora     ($0F),y
        and     ($1C,x)
        bmi     LC3A9
        bmi     LC3BD
        .byte   $07
        .byte   $0F
        .byte   $37
        bpl     LC3BD
        .byte   $0F
        .byte   $37
        clc
        php
        .byte   $0F
        .byte   $1C
        .byte   $0B
        .byte   $09
LC3A9:  .byte   $0F
        .byte   $0C
        .byte   $04
        .byte   $01
LC3AD:  .byte   $0F
        ora     ($26,x)
        asl     $0F
        bmi     LC3C4
        brk
        .byte   $0F
        and     $07
        brk
        .byte   $0F
        ora     ($30,x)
        brk
LC3BD:  .byte   $0F
        ora     ($26,x)
        asl     $0F
        bmi     LC3D4
LC3C4:  brk
        .byte   $0F
        and     $07
        brk
        .byte   $0F
        bmi     LC3EF
        .byte   $03
        .byte   $0F
        sec
        .byte   $27
        .byte   $17
        .byte   $0F
        bmi     LC3F0
LC3D4:  .byte   $02
        .byte   $0F
        ora     #$17
        .byte   $07
        .byte   $0F
        bmi     LC408
        and     ($0F,x)
        rol     $17,x
        asl     $0F
        bmi     LC3E4
LC3E4:  ora     ($0F),y
        .byte   $37
        .byte   $27
        .byte   $07
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $1C
LC3EF:  .byte   $10
LC3F0:  ora     ($0F,x)
        jsr     L1710
        .byte   $0F
        jsr     L0627
        .byte   $0F
        .byte   $22
        .byte   $1C
        .byte   $0C
        .byte   $0F
        sec
        .byte   $27
        .byte   $17
        .byte   $0F
        bmi     LC420
        .byte   $02
        .byte   $0F
        ora     #$17
LC408:  .byte   $07
        .byte   $0F
        .byte   $1C
        ora     ($01),y
        .byte   $0F
        ora     ($26,x)
        asl     $0F
        bpl     LC414
LC414:  ora     ($0F,x)
        and     $07
        brk
        .byte   $0F
        bmi     LC43F
        .byte   $03
        .byte   $0F
        bmi     LC430
LC420:  brk
        .byte   $0F
        rol     $17,x
        php
        .byte   $0F
        and     ($04,x)
        brk
        .byte   $0F
        bmi     LC44D
        ora     ($27),y
        rol     $16
LC430:  .byte   $27
        .byte   $27
        .byte   $37
        .byte   $13
        .byte   $27
        .byte   $27
        .byte   $37
        .byte   $23
        .byte   $27
        .byte   $27
        bmi     LC43C
LC43C:  .byte   $27
        .byte   $0F
        .byte   $20
LC43F:  and     (L0000),y
        .byte   $0F
        bpl     LC444
LC444:  .byte   $07
        .byte   $0F
        rol     $27,x
        ora     $0F,x
        bpl     LC44C
LC44C:  .byte   $12
LC44D:  .byte   $0F
        jsr     L0F0F
        .byte   $0F
        rol     $17,x
        asl     $0F
        .byte   $37
        .byte   $27
        .byte   $17
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $17
        jsr     L0F10
        .byte   $17
        .byte   $37
        .byte   $27
        asl     $17,x
        jsr     L0021
        .byte   $17
        .byte   $17
        .byte   $17
        .byte   $17
        .byte   $0F
        brk
        .byte   $0F
        .byte   $0F
        .byte   $0F
        brk
        .byte   $03
        .byte   $02
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $37
        bpl     LC4A2
        .byte   $0F
        .byte   $37
        .byte   $07
        php
        .byte   $0F
        .byte   $1C
        .byte   $0B
        ora     #$0F
        .byte   $1C
        .byte   $03
        .byte   $02
        .byte   $0F
        bmi     LC4A0
        brk
        .byte   $0F
        bmi     LC4BB
        .byte   $07
        .byte   $0F
        bmi     LC4AB
        .byte   $03
        .byte   $0F
        ora     ($13,x)
        .byte   $2B
        ora     ($10),y
        brk
LC4A0:  .byte   $0F
        .byte   $11
LC4A2:  .byte   $37
        ora     ($1C,x)
        ora     ($20),y
        and     (L0000,x)
        ora     ($37),y
LC4AB:  .byte   $27
        brk
        .byte   $0F
        jsr     L2231
        .byte   $0F
        jsr     L2110
        .byte   $0F
        jsr     L1836
        .byte   $0F
        .byte   $20
LC4BB:  and     (L0021),y
        .byte   $0F
        jsr     L1210
        .byte   $0F
        .byte   $07
        .byte   $1C
        .byte   $12
        .byte   $0F
        bpl     LC4E9
        ora     ($0F),y
        .byte   $02
        ora     ($12),y
        .byte   $0F
        jsr     L0C10
        .byte   $0F
        jsr     L1710
        .byte   $0F
        jsr     L0627
        .byte   $0F
        .byte   $22
        .byte   $1C
        .byte   $0C
        .byte   $0F
        sec
        bpl     LC4E4
        .byte   $0F
        sec
        .byte   $01
LC4E4:  .byte   $03
        .byte   $0F
        .byte   $27
        bpl     LC4EC
LC4E9:  .byte   $0F
        bmi     LC521
LC4EC:  .byte   $0C
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
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
LC4FD:  .byte   $0F
        .byte   $0F
        bmi     LC528
        .byte   $0F
        .byte   $0F
        .byte   $27
        .byte   $13
LC505:  .byte   $0F
        .byte   $0F
        .byte   $27
        ora     $0F,x
        .byte   $0F
        .byte   $37
        .byte   $07
        .byte   $0F
        .byte   $0F
        .byte   $37
        and     #$0F
        .byte   $0F
        bmi     LC53E
        .byte   $0F
        .byte   $0F
        .byte   $27
        ora     $0F,x
        .byte   $0F
        .byte   $37
        ora     L0F0F,y
        bpl     LC521
LC521:  .byte   $0F
        .byte   $0F
        .byte   $27
        ora     $0F,x
        .byte   $0F
        .byte   $27
LC528:  ora     $0F,x
        .byte   $0F
        bmi     LC54F
        .byte   $0F
        .byte   $0F
        bmi     LC55B
LC531:  .byte   $0F
        .byte   $0F
        .byte   $27
        ora     $0F,x
        .byte   $0F
        bmi     LC55E
        .byte   $0F
        .byte   $0F
        rol     a
        .byte   $1A
        .byte   $0F
LC53E:  .byte   $0F
        and     #$10
        .byte   $0F
        .byte   $0F
        .byte   $17
        bpl     LC555
        .byte   $0F
        bmi     LC56F
        .byte   $0F
        .byte   $0F
        bmi     LC56E
        .byte   $0F
        .byte   $0F
LC54F:  .byte   $27
        ora     $0F,x
        .byte   $0F
        bmi     LC577
LC555:  .byte   $0F
        .byte   $0F
        bmi     LC57E
        .byte   $0F
        .byte   $0F
LC55B:  .byte   $23
        .byte   $13
        .byte   $0F
LC55E:  and     ($30,x)
        .byte   $27
        .byte   $0F
        .byte   $17
        bmi     LC58C
        .byte   $0F
        .byte   $0F
        bmi     LC579
        .byte   $0F
        .byte   $0F
        .byte   $27
        ora     $0F,x
LC56E:  .byte   $0F
LC56F:  .byte   $27
        and     #$0F
        .byte   $0F
        rol     $29
        .byte   $0F
        .byte   $0F
LC577:  ora     $27,x
LC579:  .byte   $0F
        .byte   $0F
        ora     $27
        .byte   $0F
LC57E:  .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $27
        ora     $0F,x
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0C
        .byte   $30
LC58C:  and     ($0F,x)
        .byte   $0F
        bmi     LC5A8
        .byte   $0F
        .byte   $0F
        .byte   $27
        .byte   $17
        ldx     #$BF
        txs
        lda     $FF
        sta     $2000
        lda     #$F0
        jsr     LF84E
        jsr     LFF06
        lda     #$88
        .byte   $85
LC5A8:  cpx     $A9
        beq     LC531
        eor     ($20),y
        ror     $C2,x
        jsr     LFF06
        jsr     LC14E
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     LC838
        lda     #$00
        sta     $FC
        sta     $FA
        sta     $FD
        sta     $FB
        sta     $95
        lda     #$20
        ldx     #$00
        ldy     #$00
        jsr     LC1BA
        jsr     LC21E
        lda     #$02
        jsr     LFF55
        ldx     #$00
        jsr     L8000
        jsr     L8D00
        jsr     LC158
LC5E8:  lda     $51
        bne     LC5EF
        jmp     LC5F7

LC5EF:  dec     $51
        jsr     LFF06
        jmp     LC5E8

LC5F7:  jsr     LC95C
        lda     #$07
        sta     $31
        jsr     LDD57
        ldx     #$1E
        jsr     LFEFF
        lda     #$0E
        sta     $62
        lda     #$02
        jsr     LFF55
        jsr     LAA00
        ldx     #$1E
        jsr     LFEFF
        lda     #$0F
        sta     $62
        jsr     LAA00
LC61E:  jsr     LFF06
        ldx     #$00
        jsr     LF5A4
        jsr     LF5DA
        lda     #$05
        jsr     LFF55
        lda     #$04
        sta     $97
        jsr     L8000
        lda     $0510
        cmp     #$5C
        bcc     LC61E
        lda     #$10
        jsr     LF850
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$02
        jsr     LFF55
        jsr     L9600
        ldx     #$3C
        jsr     LFEFF
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     LC95C
        lda     #$09
        sta     $31
        jsr     LDD57
        lda     #$02
        jsr     LFF55
        jsr     L8F00
        lda     $14
        beq     LC675
        jmp     LC792

LC675:  jsr     LC95C
        lda     #$0E
        sta     $31
        jsr     LDD57
        lda     #$02
        jsr     LFF55
        jsr     L9100
        lda     $14
        beq     LC68E
        jmp     LC792

LC68E:  jsr     LC95C
        lda     #$0C
        sta     $31
        jsr     LDD57
        lda     #$02
        jsr     LFF55
        jsr     L9000
        lda     $14
        beq     LC6A7
        jmp     LC792

LC6A7:  jsr     LC95C
        lda     #$0A
        sta     $31
        jsr     LDD57
        lda     #$02
        jsr     LFF55
        jsr     LA000
LC6B9:  jsr     LFF06
        lda     $14
        and     #$10
        beq     LC6C5
        jmp     LC792

LC6C5:  ldx     #$00
        jsr     LF51B
        jsr     LDA70
        lda     $04F0
        sta     $6E
        lda     $0500
        sta     $6F
        lda     $FD
        cmp     #$01
        bne     LC6E8
        lda     $FC
        cmp     #$91
        bcs     LC6E8
        ldx     #$01
        jsr     LF4FD
LC6E8:  lda     #$05
        jsr     LFF55
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     L8000
        lda     #$04
        sta     $97
        lda     $FD
        cmp     #$01
        bne     LC6B9
        lda     $FC
        cmp     #$00
        bne     LC6B9
        jsr     LC970
        lda     #$02
        jsr     LFF55
        ldx     #$01
        jsr     L8000
        jsr     L8D30
        jsr     L9200
        jsr     LC158
        lda     #$B4
        sta     $51
LC721:  lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$05
        jsr     LFF55
        jsr     L8000
        jsr     LFF06
        lda     $04D0
        and     #$0F
        bne     LC75E
        lda     $51
        bne     LC759
        ldx     #$00
        jsr     LF51B
        lda     $04F0
        cmp     #$28
        bcs     LC78C
        lda     #$0D
        jsr     LC2F9
        lda     #$FF
        sta     $18
        inc     $04D0
        jmp     LC78C

LC759:  dec     $51
        jmp     LC78C

LC75E:  lda     #$00
        sta     $0430
        sta     $0410
        lda     #$80
        sta     $0401
        ldx     #$01
        jsr     LF4FD
        lda     $68
        cmp     #$06
        bne     LC782
        lda     $67
        cmp     #$A0
        bne     LC782
        jsr     LC276
        jmp     LFFE0

LC782:  inc     $67
        lda     $67
        cmp     #$FF
        bne     LC78C
        inc     $68
LC78C:  lda     $14
        and     #$10
        beq     LC721
LC792:  lda     #$F0
        jsr     LF84E
        jsr     LC970
        lda     #$02
        jsr     LFF55
        ldx     #$01
        jsr     L8000
        jsr     L9500
        jsr     L9200
        jsr     LC158
LC7AD:  lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$05
        jsr     LFF55
        jsr     L8000
        jsr     LFF06
        ldx     #$01
        jsr     LF4FD
        lda     #$80
        sta     $0401
        lda     $14
        and     #$10
        beq     LC7AD
        jsr     LC986
        lda     #$0A
        sta     $62
        jsr     L9E00
        lda     #$0D
        sta     $62
        jsr     LAA00
        lda     #$01
        jsr     LF84E
        jsr     LC970
        lda     #$07
        sta     $62
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$02
        jsr     LFF55
        ldx     #$02
        jsr     L8000
        jsr     L8E00
        lda     #$00
        sta     $31
        jsr     LA100
        jsr     LC95C
        lda     #$00
        sta     $95
        sta     $38
        sta     $6B
        jsr     LC838
        lda     #$04
        sta     $97
        lda     #$3C
        sta     $51
        jsr     LC8B5
        jsr     LC92A
        ldy     #$1F
        lda     #$00
        sta     $5D
        sta     $53
        sta     $54
        sta     $66
LC82F:  sta     $0340,y
        dey
        bpl     LC82F
        jmp     LC9AC

LC838:  lda     #$00
        sta     L0000
        lda     #$04
        sta     $01
        ldx     #$01
        lda     #$00
        tay
LC845:  sta     (L0000),y
        iny
        bne     LC845
        inc     $01
        dex
        bpl     LC845
        rts

LC850:  ldy     #$11
LC852:  lda     LC8CF,y
        sta     $05B0,y
        dey
        bpl     LC852
        lda     $54
        cmp     #$00
        beq     LC887
        cmp     #$01
        beq     LC86F
        cmp     #$02
        beq     LC876
        cmp     #$03
        beq     LC87D
        bne     LC887
LC86F:  lda     #$7A
        sta     $05BA
        bne     LC882
LC876:  lda     #$7B
        sta     $05BA
        bne     LC882
LC87D:  lda     #$7C
        sta     $05BA
LC882:  lda     #$7D
        sta     $05BC
LC887:  ldx     #$01
        lda     #$80
        sta     $04D0,x
        sta     $0400,x
        lda     #$1B
        jsr     LFA6C
        lda     #$00
        sta     $04E0,x
        sta     $0570,x
        lda     #$18
        sta     $04F0,x
        lda     #$1C
        sta     $0510,x
        lda     $0500
        sta     $0501
        lda     $0520
        sta     $0521
        rts

LC8B5:  lda     #$04
        jsr     LFF55
        jsr     L8000
        jsr     LDD57
        lda     #$00
        sta     $6D
        lda     $04F0
        sta     $6E
        lda     $0500
        sta     $6F
        rts

LC8CF:  .byte   $07
        bit     $80
        brk
        .byte   $80
        rti

        sta     (L0000,x)
        sta     ($40,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC8E1:  ldy     #$0D
LC8E3:  lda     LC91C,y
        sta     $05E8,y
        dey
        bpl     LC8E3
        ldx     #$05
        lda     #$80
        sta     $04D0,x
        sta     $0400,x
        lda     #$3E
        jsr     LFA6C
        lda     #$5E
        sta     $04E0,x
        lda     #$00
        sta     $0570,x
        lda     #$88
        sta     $04F0,x
        lda     #$20
        sta     $0510,x
        lda     $0500
        sta     $0501
        lda     $0520
        sta     $0521
        rts

LC91C:  ora     $7E
        .byte   $7C
        brk
        ldy     L0000,x
        lda     L0000,x
        ldx     L0000,y
        .byte   $73
        brk
        bvs     LC92A
LC92A:  ldy     #$25
LC92C:  lda     LC936,y
        sta     $05C2,y
        dey
        bpl     LC92C
        rts

LC936:  ora     ($25),y
        bvs     LC93A
LC93A:  bvs     LC93C
LC93C:  bvs     LC93E
LC93E:  bvs     LC940
LC940:  bvs     LC942
LC942:  bvs     LC944
LC944:  bvs     LC946
LC946:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bvs     LC956
LC956:  bvs     LC958
LC958:  bvs     LC95A
LC95A:  .byte   $73
        brk
LC95C:  jsr     LC235
        lda     #$00
        sta     $0400
        sta     $04D0
        sta     $FC
        sta     $FA
        sta     $FD
        sta     $FB
        rts

LC970:  jsr     LC276
        jsr     LFF06
        jsr     LC14E
        lda     #$20
        ldx     #$00
        ldy     #$00
        jsr     LC1BA
        jsr     LC95C
        rts

LC986:  jsr     LC970
        jsr     LC95C
        lda     #$20
        ldx     #$02
        ldy     #$00
        jsr     LC1BA
        lda     #$F2
        jsr     LF84E
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$02
        jsr     LFF55
        ldx     #$04
        jsr     L8000
        rts

LC9AC:  lda     $65
        bpl     LC9B3
        jmp     LCAD8

LC9B3:  lda     $14
        and     #$20
        beq     LCA17
        lda     $50
        cmp     #$09
        beq     LCA17
        cmp     #$12
        beq     LCA17
        cmp     #$15
        beq     LCA17
        cmp     #$07
        beq     LCA17
        cmp     #$12
        beq     LCA17
        lda     $61
        beq     LCA17
        lda     #$1B
        jsr     LF850
        lda     $98
        eor     #$01
        sta     $98
        bne     LCA07
        lda     $5F
        cmp     #$01
        bne     LCA17
        lda     $05C0
        sta     $61
        lda     $05BE
        sta     $60
        lda     $54
        cmp     #$02
        bne     LC9F9
        jsr     LCAE7
LC9F9:  lda     #$00
        sta     $53
        sta     $5F
        sta     $05BE
        sta     $05C0
        beq     LCA17
LCA07:  lda     $54
        sta     $53
        inc     $5F
        lda     $61
        sta     $05C0
        lda     $60
        sta     $05BE
LCA17:  lda     $14
        and     #$10
        beq     LCA40
        lda     $50
        cmp     #$09
        beq     LCA40
        cmp     #$12
        beq     LCA40
        cmp     #$15
        beq     LCA40
        cmp     #$07
        beq     LCA40
        cmp     #$12
        beq     LCA40
        lda     #$1C
        jsr     LF850
        lda     #$04
        jsr     LFF55
        jsr     L8F00
LCA40:  jsr     LCAFC
        lda     $65
        bpl     LCA4A
        jmp     LCAD8

LCA4A:  ldx     $30
        beq     LCA59
        lda     #$FF
        sta     $03E0,x
        sta     $1C
        lda     #$00
        sta     $30
LCA59:  jsr     LDA70
        lda     $04F0
        sta     $6E
        lda     $0500
        sta     $6F
        lda     #$04
        jsr     LFF55
        jsr     L8090
        ldx     $5B
        beq     LCA75
        jsr     LE388
LCA75:  lda     $66
        bmi     LCA7C
        jsr     LEDF1
LCA7C:  jsr     LEFBE
        lda     #$06
        jsr     LFF55
        jsr     L8000
        lda     #$01
        jsr     LFF55
        jsr     L8800
        ldy     $22
        lda     ($32),y
        cmp     #$14
        beq     LCAAF
        cmp     #$34
        beq     LCAC5
        cmp     #$56
        beq     LCAC5
        cmp     #$76
        beq     LCAC5
        cmp     #$97
        beq     LCAC5
        cmp     #$B5
        beq     LCAC5
        cmp     #$98
        beq     LCAC5
LCAAF:  lda     #$05
        jsr     LFF55
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     L8000
        lda     #$04
        sta     $97
        jmp     LCAD8

LCAC5:  lda     #$04
        jsr     LFF55
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     L9800
        lda     #$04
        sta     $97
LCAD8:  jsr     LC2DE
        lda     #$00
        sta     $9A
        jsr     LFF06
        inc     $9A
        jmp     LC9AC

LCAE7:  lda     $04D2
        bpl     LCAF1
        lda     #$83
        sta     $04D2
LCAF1:  lda     $04D3
        bpl     LCAFB
        lda     #$83
        sta     $04D3
LCAFB:  rts

LCAFC:  lda     $04D0
        bmi     LCB41
        lda     $9B
        bmi     LCB0A
        lda     #$25
        jsr     LF850
LCB0A:  lda     $66
        bmi     LCB3E
        lda     $05E6
        cmp     #$70
        beq     LCB22
        dec     $05E6
        lda     $05E6
        cmp     #$6F
        beq     LCB22
        jmp     LCB3E

LCB22:  lda     $05E4
        cmp     #$70
        beq     LCB39
        dec     $05E4
        lda     $05E4
        sta     $05E4
        lda     #$79
        sta     $05E6
        bne     LCB3E
LCB39:  inc     $64
        jmp     LD41B

LCB3E:  jmp     LD41B

LCB41:  ldx     #$00
        lda     #$80
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     $50
        and     #$1F
        tay
        lda     LCB5F,y
        sta     L0000
        lda     LCB75,y
        sta     $01
        jmp     (L0000)

LCB5F:  .byte   $8B
        asl     $6ED7
        ldy     $82
        txs
        .byte   $53
        .byte   $1B
        .byte   $17
        bcc     LCB91
        sbc     $A4A4,y
        .byte   $37
        rol     $38
        .byte   $17
        sty     $B2,x
        .byte   $04
LCB75:  .byte   $CB
        cmp     LD1CF
        cmp     ($D2),y
        .byte   $D2
        .byte   $D3
        .byte   $D4
        cmp     $D5,x
        .byte   $D6
LCB81:  .byte   $D7
        cmp     ($D1),y
        cld
        dec     $D8,x
        cmp     $D9,x
        cmp     $20DA,y
        asl     $A5CD
        bvc     LCB81
LCB91:  ora     ($60,x)
        lda     $10
        cmp     #$04
        bne     LCBB7
        lda     $7C
        bne     LCBB7
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
        rts

LCBB7:  lda     $14
        and     #$80
        beq     LCBCE
        lda     #$E5
        sta     $0550
        lda     #$04
        sta     $0560
        lda     #$01
        sta     $50
        jmp     LCD0E

LCBCE:  lda     $16
        and     #$03
        beq     LCBD7
        jmp     LCC53

LCBD7:  lda     $16
        and     #$0F
        cmp     #$08
        beq     LCC3A
        cmp     #$04
        bne     LCBE6
        jmp     LCC44

LCBE6:  lda     $14
        and     #$40
        beq     LCBEF
        jmp     LCC16

LCBEF:  lda     $0420
        cmp     #$05
        bne     LCC04
LCBF6:  lda     $0410
        cmp     #$02
        bne     LCC16
        lda     $0430
        cmp     #$04
        bne     LCC16
LCC04:  lda     $0420
        cmp     #$01
        beq     LCC16
        lda     #$01
        jsr     LFA78
        lda     #$00
        sta     $50
        sta     $5A
LCC16:  lda     $14
        and     #$40
        beq     LCC52
        lda     $0420
        cmp     #$04
        beq     LCC52
        jsr     LCF3A
        bne     LCC52
        lda     $0420
        cmp     #$05
        beq     LCC34
        lda     #$05
        jsr     LFA78
LCC34:  jsr     LCE39
        jmp     LCC52

LCC3A:  lda     #$04
        jsr     LFA78
        lda     #$03
        sta     $50
        rts

LCC44:  lda     #$06
        jsr     LFA78
        lda     #$02
        sta     $50
        lda     #$00
        sta     $0490
LCC52:  rts

LCC53:  lda     $14
        and     #$40
        beq     LCC6E
        jsr     LCF3A
        bne     LCC6E
        lda     $0420
        cmp     #$05
        beq     LCC6A
        lda     #$05
        jsr     LFA78
LCC6A:  jsr     LCE39
        rts

LCC6E:  lda     $0420
        cmp     #$05
        bne     LCC78
        jmp     LCBF6

LCC78:  lda     $0420
        cmp     #$03
        beq     LCC84
        lda     #$03
        jsr     LFA78
LCC84:  lda     $0410
        cmp     #$04
        bne     LCC9C
        lda     $0430
        cmp     #$06
        bne     LCC9C
        lda     #$01
        sta     $0410
        lda     #$00
        sta     $0430
LCC9C:  lda     $0410
        cmp     #$00
        bne     LCCB4
        lda     $0430
        cmp     #$04
        bcs     LCCB4
        lda     #$48
        sta     $0530
        lda     #$00
        sta     $0540
LCCB4:  ldx     #$00
        lda     $16
        and     #$03
LCCBA:  sta     $52
        and     #$01
        beq     LCCDF
        lda     $9E
        bmi     LCD0D
        lda     $6D
        cmp     #$0E
        bne     LCCD5
        lda     $0400
        cmp     #$50
        beq     LCD0D
        cmp     #$10
        beq     LCD0D
LCCD5:  lda     #$00
        ldy     #$02
        jsr     LF200
        jmp     LCCEA

LCCDF:  lda     $9E
        bmi     LCD0D
        lda     #$03
        ldy     #$02
        jsr     LF254
LCCEA:  lda     $10
        cmp     #$04
        bne     LCD0D
        lda     $7C
        bne     LCD0D
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
LCD0D:  rts

LCD0E:  lda     $50
        beq     LCD3E
        lda     $16
        and     #$03
        beq     LCD1B
        jsr     LCCBA
LCD1B:  lda     $16
        and     #$08
        beq     LCD25
        lda     #$01
        sta     $56
LCD25:  lda     $0420
        cmp     #$0D
        beq     LCD3E
        lda     $14
        and     #$40
        beq     LCD3E
        jsr     LCF3A
        bne     LCD3E
        lda     #$02
        sta     $56
        jsr     LCE39
LCD3E:  lda     $0560
        bmi     LCD57
        lda     #$00
        sta     $55
        lda     $16
        and     #$80
        bne     LCD57
        lda     $0560
        cmp     #$05
        bcs     LCD57
        jsr     LF5FC
LCD57:  lda     $0400
        and     #$20
        pha
        ldx     #$00
        lda     #$06
        ldy     #$02
        jsr     LF2D7
        pla
        sta     L0000
        php
        lda     $0560
        bpl     LCD82
        lda     $10
        cmp     #$02
        bcc     LCD92
LCD75:  lda     $0400
        and     #$DF
        ora     L0000
        sta     $0400
        jmp     LCD92

LCD82:  lda     $10
        cmp     #$02
        beq     LCD75
        lda     #$11
        sta     L0000
        lda     #$0E
        sta     $01
        bne     LCD9E
LCD92:  lda     $50
        beq     LCDD5
        lda     #$12
        sta     L0000
        lda     #$0F
        sta     $01
LCD9E:  lda     $56
        cmp     #$01
        beq     LCDB5
        cmp     #$02
        beq     LCDAC
        lda     L0000
        bne     LCDBE
LCDAC:  lda     $01
        cmp     $0420
        beq     LCDD5
        bne     LCDBE
LCDB5:  lda     $0420
        cmp     #$0D
        beq     LCDC4
        lda     #$0D
LCDBE:  jsr     LFA78
        jmp     LCDD5

LCDC4:  lda     $0410
        cmp     #$03
        bne     LCDD5
        lda     #$01
        sta     $0410
        lda     #$00
        sta     $0430
LCDD5:  lda     $0420
        cmp     #$0E
        beq     LCDE3
        cmp     #$0F
        beq     LCDE3
        jmp     LCDF5

LCDE3:  lda     $0410
        cmp     #$01
        bne     LCDF5
        lda     $0430
        cmp     #$04
        bne     LCDF5
        lda     #$00
        sta     $56
LCDF5:  plp
        lda     $55
        beq     LCE06
        bcs     LCE08
        lda     #$00
        sta     $55
        jsr     LEDB3
        jmp     LCE08

LCE06:  bcc     LCE22
LCE08:  lda     $50
        beq     LCE21
        lda     $10
        cmp     #$02
        beq     LCE21
        lda     #$10
        jsr     LF850
        lda     #$00
        sta     $50
        sta     $56
        sta     $5C
        sta     $9E
LCE21:  rts

LCE22:  lda     $50
        cmp     #$04
        beq     LCE21
        cmp     #$0E
        beq     LCE21
        cmp     #$0D
        beq     LCE21
        cmp     #$07
        beq     LCE21
        lda     #$01
        sta     $50
LCE38:  rts

LCE39:  ldy     $53
        beq     LCE40
        jsr     LCEF2
LCE40:  lda     LCF29,y
        cmp     #$FF
        beq     LCE38
        tax
LCE48:  lda     $04D0,x
        bpl     LCE55
        dex
        cpx     #$01
        bne     LCE48
        ldx     #$00
        rts

LCE55:  lda     #$80
        sta     $04D0,x
        lda     $0400
        sta     $0400,x
        lda     $53
        cmp     #$02
        beq     LCE87
        cmp     #$03
        beq     LCE87
        lda     $52
        and     #$02
        tay
        lda     $04F0
        clc
        adc     LCF21,y
        pha
        lda     $0500
        adc     LCF22,y
        sta     $0500,x
        pla
        sta     $04F0,x
        jmp     LCEA1

LCE87:  lda     $52
        and     #$02
        tay
        lda     $04F0
        clc
        adc     LCF25,y
        pha
        lda     $0500
        adc     LCF26,y
        sta     $0500,x
        pla
        sta     $04F0,x
LCEA1:  lda     $0420
        cmp     #$07
        beq     LCEBC
        cmp     #$0E
        beq     LCEC7
        cmp     #$0F
        beq     LCEC7
        lda     $0510
        sec
        sbc     #$03
        sta     $0510,x
        jmp     LCECD

LCEBC:  lda     $0510
        clc
        adc     #$08
        sta     $0510,x
        bne     LCECD
LCEC7:  lda     $0510
        sta     $0510,x
LCECD:  lda     $0520
        sta     $0520,x
        lda     $52
        sta     $0580,x
        ldy     $53
        lda     LCF2E,y
        sta     $04E0,x
        lda     LCF32,y
        jsr     LFA6C
        lda     LCF36,y
        jsr     LF850
        lda     #$01
        sta     $0570,x
        rts

LCEF2:  cpy     #$01
        beq     LCEFF
        cpy     #$02
        beq     LCF10
        cpy     #$03
        beq     LCEFF
        rts

LCEFF:  lda     $05BE
        cmp     #$70
        bne     LCF20
        lda     $05C0
        cmp     #$72
        bcs     LCF20
        ldy     #$04
        rts

LCF10:  lda     $05BE
        cmp     #$70
        bne     LCF20
        lda     $05C0
        cmp     #$73
        bcs     LCF20
        ldy     #$04
LCF20:  rts

LCF21:  .byte   $0F
LCF22:  brk
        sbc     ($FF),y
LCF25:  .byte   $16
LCF26:  brk
        nop
        .byte   $FF
LCF29:  .byte   $04
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $FF
LCF2E:  ora     ($02,x)
        .byte   $03
        .byte   $04
LCF32:  .byte   $13
        asl     $14,x
        .byte   $14
LCF36:  ora     ($13),y
        ora     ($14),y
LCF3A:  lda     #$00
        sta     L0000
        ldy     $53
        lda     LCFCF,y
        sta     $01
        ldy     #$04
LCF47:  lda     $04D0,y
        bmi     LCF60
LCF4C:  dey
        cpy     #$01
        bne     LCF47
        lda     L0000
        ldy     $53
        cmp     LCFD3,y
        bcs     LCF5D
        lda     #$00
        rts

LCF5D:  lda     #$FF
        rts

LCF60:  lda     $53
        cmp     #$01
        beq     LCF7A
        cmp     #$03
        beq     LCF9B
        cmp     #$02
        beq     LCFB5
        lda     $01
        cmp     $0420,y
        bne     LCF4C
        inc     L0000
        jmp     LCF4C

LCF7A:  lda     #$16
        cmp     $0420,y
        beq     LCF96
        lda     #$18
        cmp     $0420,y
        beq     LCF96
        lda     #$14
        cmp     $0420,y
        beq     LCF96
        lda     #$18
        cmp     $0420,y
        bne     LCF4C
LCF96:  inc     L0000
        jmp     LCF4C

LCF9B:  lda     #$14
        cmp     $0420,y
        beq     LCFB0
        lda     #$19
        cmp     $0420,y
        beq     LCFB0
        lda     #$1A
        cmp     $0420,y
        bne     LCF4C
LCFB0:  inc     L0000
        jmp     LCF4C

LCFB5:  lda     #$14
        cmp     $0420,y
        beq     LCFCA
        lda     #$17
        cmp     $0420,y
        beq     LCFCA
        lda     #$29
        cmp     $0420,y
        bne     LCF4C
LCFCA:  inc     L0000
        jmp     LCF4C

LCFCF:  .byte   $13
        clc
        .byte   $17
        .byte   $1A
LCFD3:  .byte   $03
        ora     ($02,x)
        ora     ($A5,x)
        asl     $29,x
        .byte   $04
        bne     LCFE0
        jmp     LD0AD

LCFE0:  lda     $0420
        cmp     #$07
        bne     LCFEA
        jmp     LD08C

LCFEA:  lda     $0410
        cmp     #$01
        bne     LD00F
        lda     #$01
        sta     $0410
        lda     #$00
        sta     $0430
LCFFB:  lda     $14
        cmp     #$40
        bne     LD00F
        jsr     LCF3A
        bne     LD00F
        lda     #$07
        jsr     LFA78
        jsr     LCE39
        rts

LD00F:  lda     $14
        and     #$80
        bne     LD018
        jmp     LD0B2

LD018:  jsr     LF64A
        bcs     LD04A
        jsr     LF5A4
        jsr     LF5DA
        lda     #$06
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        cmp     #$03
        bcs     LD03B
        cmp     #$00
        beq     LD084
        jmp     LD06F

LD03B:  cmp     #$08
        bne     LD047
        lda     $0400,x
        ora     #$20
        sta     $0400,x
LD047:  jmp     LD085

LD04A:  lda     $04D3
        bpl     LD05A
        lda     $0423
        cmp     #$17
        beq     LD0CF
        cmp     #$29
        beq     LD0CF
LD05A:  lda     $04D2
        bpl     LD06A
        lda     $0422
        cmp     #$17
        beq     LD0E4
        cmp     #$29
        beq     LD0E4
LD06A:  jsr     LD101
        bne     LD08B
LD06F:  lda     #$0A
        sta     $50
        lda     #$12
        jsr     LFA78
        jsr     LF607
        lda     #$00
        sta     $0480
        sta     $5A
        sta     $9D
LD084:  rts

LD085:  jsr     LEDD2
        jsr     LF607
LD08B:  rts

LD08C:  lda     $0410
        cmp     #$02
        bne     LD09A
        lda     $0430
        cmp     #$04
        beq     LD09D
LD09A:  jmp     LCFFB

LD09D:  lda     #$06
        jsr     LFA78
        lda     #$01
        sta     $0410
        lda     #$00
        sta     $0430
LD0AC:  rts

LD0AD:  lda     #$00
        sta     $50
        rts

LD0B2:  lda     $14
        and     #$04
        beq     LD0CC
        jsr     LF64A
        bcs     LD0CC
        lda     $0490
        cmp     #$FF
        bne     LD0AC
LD0C4:  ldy     #$02
        lda     #$06
        jsr     LF2D7
        rts

LD0CC:  jmp     LD11C

LD0CF:  ldx     #$03
        jsr     LF928
        cmp     #$0C
        bcc     LD11B
        jsr     LF919
        cmp     #$0F
        bcs     LD0FE
        cmp     #$08
        bcc     LD06A
        rts

LD0E4:  ldx     #$02
        jsr     LF928
        cmp     #$0C
        bcc     LD11B
        jsr     LF919
        cmp     #$08
        bcc     LD0FB
        cmp     #$0F
        bcc     LD11B
        jmp     LD06F

LD0FB:  jmp     LD06A

LD0FE:  jmp     LD05A

LD101:  ldy     #$0F
LD103:  lda     $04D0,y
        bmi     LD110
LD108:  dey
        cpy     #$04
        bne     LD103
        lda     #$FF
        rts

LD110:  lda     $0420,y
        cmp     #$33
        beq     LD119
        bne     LD108
LD119:  lda     #$00
LD11B:  rts

LD11C:  lda     #$FF
        sta     $0490
LD121:  lda     #$06
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        beq     LD0C4
        cmp     #$02
        beq     LD166
        cmp     #$04
        bne     LD152
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
        rts

LD152:  cmp     #$08
        bne     LD15E
        lda     $0400
        ora     #$20
        sta     $0400
LD15E:  jsr     LEDD2
        jsr     LF607
        sec
        rts

LD166:  lda     #$01
        sta     $50
        jsr     LF607
        rts

        lda     $16
        and     #$08
        beq     LD19C
        lda     $0410
        cmp     #$02
        bne     LD1A1
        lda     #$02
        sta     $0410
        lda     #$00
        sta     $0430
        lda     $14
        and     #$80
        beq     LD1A1
        lda     #$E5
        sta     $0550
        lda     #$04
        sta     $0560
        lda     #$01
        sta     $56
        jmp     LCD0E

LD19C:  lda     #$00
        sta     $50
        rts

LD1A1:  jmp     LD121

        lda     $50
        cmp     #$04
        beq     LD1B8
        cmp     #$0D
        beq     LD1B8
        jsr     LF64A
        bcs     LD1B8
        lda     #$00
        sta     $50
        rts

LD1B8:  jsr     LD253
        lda     $0420
        cmp     #$0C
        bne     LD1D0
        lda     $0410
        cmp     #$02
        bne     LD1D5
        lda     $0430
        cmp     #$04
        .byte   $D0
LD1CF:  .byte   $05
LD1D0:  lda     #$0B
        jsr     LFA78
LD1D5:  lda     $16
        and     #$03
        beq     LD1F4
        sta     $52
        and     #$01
        beq     LD1EC
        lda     $0400
        ora     #$40
        sta     $0400
        jmp     LD1F4

LD1EC:  lda     $0400
        and     #$BF
        sta     $0400
LD1F4:  lda     $14
        and     #$40
        beq     LD20E
        jsr     LCF3A
        bne     LD20E
        lda     $0420
        cmp     #$0C
        beq     LD20B
        lda     #$0C
        jsr     LFA78
LD20B:  jsr     LCE39
LD20E:  lda     $14
        and     #$04
        beq     LD21E
        lda     #$00
        sta     $50
        sta     $56
        jsr     LF607
        rts

LD21E:  lda     $14
        and     #$80
        beq     LD252
        lda     #$E5
        sta     $0550
        lda     #$04
        sta     $0560
        lda     $50
        cmp     #$0D
        beq     LD23F
        lda     #$00
        sta     $0481
        lda     #$0B
        sta     $50
        bne     LD243
LD23F:  lda     #$10
        sta     $50
LD243:  lda     $16
        and     #$08
        beq     LD24D
        lda     #$0D
        bne     LD24F
LD24D:  lda     #$11
LD24F:  jsr     LFA78
LD252:  rts

LD253:  lda     #$06
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        cmp     #$04
        bne     LD252
        lda     $7C
        bne     LD252
        lda     #$06
        sta     $50
        lda     #$0F
        sta     $51
        lda     #$15
        jsr     LF850
        lda     #$09
        jsr     LFA78
        lda     #$3C
        sta     $7C
        jsr     LF9C2
        rts

        lda     $0420
        cmp     #$08
        beq     LD28E
        lda     #$08
        jsr     LFA78
LD28E:  lda     $51
        bne     LD297
        lda     #$00
        sta     $50
        rts

LD297:  dec     $51
        rts

        lda     $0420
        cmp     #$0B
        beq     LD2A8
        cmp     #$0C
        beq     LD2A8
        jmp     LD2C3

LD2A8:  lda     $51
        bne     LD2C0
        lda     $50
        cmp     #$04
        beq     LD2B6
        cmp     #$0E
        beq     LD2BB
LD2B6:  lda     $58
        sta     $50
        rts

LD2BB:  lda     #$01
        sta     $50
        rts

LD2C0:  dec     $51
        rts

LD2C3:  lda     #$80
        sta     $0530
        lda     #$00
        sta     $0540
        lda     $51
        bne     LD2D8
        lda     #$00
        sta     $50
        sta     $9E
        rts

LD2D8:  lda     $51
        cmp     #$0F
        bne     LD316
        jsr     LF5FC
        lda     #$80
        sta     $04D5
        lda     $0400
        sta     $0405
        ldx     #$05
        lda     #$0A
        jsr     LFA6C
        lda     $04F0
        sta     $04F5
        lda     $0500
        sta     $0505
        lda     $0510
        sec
        sbc     #$14
        sta     $0515
        lda     $0520
        sta     $0525
        ldx     #$00
        stx     $0575
        stx     $04E5
LD316:  ldx     #$00
        ldy     #$02
        lda     #$06
        jsr     LF2D7
        dec     $51
        ldy     #$02
        lda     $52
        and     #$01
        beq     LD339
        lda     #$03
        jsr     LF254
        lda     $0400
        ora     #$40
        sta     $0400
        jmp     LD346

LD339:  lda     #$00
        jsr     LF200
        lda     $0400
        and     #$BF
        sta     $0400
LD346:  lda     $04F0
        sta     $04F5
        lda     $0500
        sta     $0505
        rts

        lda     $04D0
        and     #$0F
        bne     LD381
        sta     $0550
        lda     #$02
        sta     $0560
        lda     #$3C
        sta     $0480
        lda     #$0F
        sta     $0490
        lda     #$16
        jsr     LF850
        inc     $04D0
        lda     #$09
        jsr     LFA78
        lda     $0400
        and     #$DF
        sta     $0400
LD381:  lda     $0490
        beq     LD38C
        dec     $0490
        jmp     LF55E

LD38C:  lda     $0480
        beq     LD3B9
        lda     #$8E
        sta     $0550
        lda     #$01
        sta     $0560
        lda     #$10
        sta     $0530
        lda     #$00
        sta     $0540
        dec     $0480
        lda     $0480
        cmp     #$1E
        bne     LD3B8
        lda     #$25
        jsr     LF850
        lda     #$FF
        sta     $9B
LD3B8:  rts

LD3B9:  lda     $0400
        cmp     #$50
        beq     LD3D9
        cmp     #$10
        beq     LD3D9
        lda     $0560
        cmp     #$FC
        beq     LD3D1
        jsr     LF5C9
        jmp     LF4FD

LD3D1:  jsr     LF5A4
        lda     $04D0
        bmi     LD41A
LD3D9:  lda     $05E6
        sta     $05E6
        cmp     #$70
        beq     LD3F0
        dec     $05E6
        lda     $05E6
        cmp     #$6F
        beq     LD3F0
        jmp     LD40E

LD3F0:  lda     $05E4
        cmp     #$70
        beq     LD407
        dec     $05E4
        lda     $05E4
        sta     $05E4
        lda     #$79
        sta     $05E6
        bne     LD40E
LD407:  inc     $64
        lda     #$0C
        jsr     LF84E
LD40E:  lda     #$08
        sta     $50
        lda     #$00
        sta     $0480
        sta     $0490
LD41A:  rts

LD41B:  lda     $64
        bne     LD46C
        lda     $6D
        bne     LD453
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     LC235
        lda     #$00
        sta     $04D0
        sta     $0400
        sta     $53
        jsr     LDD57
        lda     $66
        bpl     LD450
        lda     #$00
        sta     $66
        jsr     LC887
        lda     #$12
        sta     $50
        ldy     $31
        lda     LD589,y
        sta     $1A
LD450:  jmp     LFF06

LD453:  lda     $66
        bpl     LD45F
        lda     #$00
        sta     $66
        sta     $5D
        beq     LD461
LD45F:  inc     $5D
LD461:  lda     $6D
        and     #$1F
        tax
        jsr     LE388
        jmp     LFF06

LD46C:  jsr     LC276
        jsr     LFF06
        jsr     LC14E
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     LC838
        jsr     LC92A
        lda     #$00
        sta     $FC
        sta     $FA
        sta     $FD
        sta     $FB
        sta     $95
        lda     #$20
        ldx     #$00
        ldy     #$00
        jsr     LC1BA
        jsr     LC21E
        lda     #$02
        jsr     LFF55
        ldx     #$03
        jsr     L8000
        jsr     L8D00
        lda     #$0C
        jsr     LF84E
        jsr     L9900
        lda     $F8
        bpl     LD4E9
        jsr     LC276
        jsr     LFF06
        jsr     LC14E
        lda     #$F0
        jsr     LF84E
        lda     #$20
        ldx     #$00
        ldy     #$00
        jsr     LC1BA
        jsr     LC95C
        lda     #$07
        sta     $62
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$00
        sta     $5D
        sta     $54
        sta     $60
        sta     $61
        sta     $6B
        sta     $6D
        jmp     LD95D

LD4E9:  jsr     LC235
        lda     #$00
        sta     $0400
        sta     $04D0
        sta     $6D
        jsr     LFF06
        lda     #$04
        sta     $97
        jsr     LC8B5
        ldy     #$1F
        lda     #$00
        sta     $5D
        sta     $53
        sta     $54
        sta     $60
        sta     $61
        sta     $6B
LD510:  sta     $0340,y
        dey
        bpl     LD510
        rts

        lda     $04D0
        and     #$0F
        bne     LD53F
        lda     $0560
        cmp     #$FA
        bcs     LD539
        lda     #$06
        ldy     #$02
        jsr     LF4D7
        lda     $10
        beq     LD538
        lda     #$10
        jsr     LF850
        inc     $04D0
LD538:  rts

LD539:  jsr     LF5A4
        jmp     LF5DA

LD53F:  lda     $50
        cmp     #$12
        beq     LD568
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$02
        jsr     LFF55
        jsr     L9600
        lda     #$00
        sta     $50
        lda     #$01
        jsr     LFA78
        jsr     LC850
        ldy     $31
        lda     LD589,y
        sta     $1A
        rts

LD568:  lda     $66
        bpl     LD56F
        jsr     LC8E1
LD56F:  lda     #$00
        sta     $50
        lda     #$01
        jsr     LFA78
        lda     #$00
        sta     $0560
        sta     $0550
        lda     $3B
        beq     LD588
        lda     #$0F
        sta     $50
LD588:  rts

LD589:  .byte   $80
        .byte   $83
        sta     ($84,x)
        stx     $80
        sta     ($A9,x)
        asl     $85
        rti

        ldy     #$02
        sty     $41
        jsr     LF5A4
        lda     $9D
        bne     LD5A4
        jsr     LF64A
        bcc     LD5C2
LD5A4:  jsr     LF5DA
        inc     $9D
        lda     $9D
        cmp     #$11
        bne     LD616
        lda     #$0E
        sta     $50
        lda     #$0B
        jsr     LFA78
        lda     #$00
        sta     $5A
        sta     $9D
        jsr     LF607
        rts

LD5C2:  jsr     LF5DA
        jsr     LEB52
        clc
        lda     $10
        cmp     #$02
        bcc     LD5E7
        bne     LD60D
        lda     $0560
        cmp     #$FC
        bcs     LD60D
        jsr     LEDD2
        jsr     LF607
        lda     $50
        beq     LD617
        lda     #$00
        sta     $50
        rts

LD5E7:  lda     $5A
        bne     LD5EF
        lda     $43
        beq     LD617
LD5EF:  inc     $5A
        lda     $5A
        cmp     #$11
        bne     LD616
        lda     #$04
        sta     $50
        lda     #$0B
        jsr     LFA78
        lda     #$12
        jsr     LF850
        lda     #$00
        sta     $5A
        jsr     LF607
        rts

LD60D:  jsr     LEDD2
        lda     #$00
        sta     $50
        sta     $5A
LD616:  rts

LD617:  inc     $0480
        lda     $0480
        cmp     #$12
        bcc     LD616
        lda     #$01
        sta     $50
        rts

        lda     $0560
        bmi     LD636
        lda     #$09
        sta     $40
        ldy     #$02
        sty     $41
        jmp     LD63E

LD636:  lda     #$06
        sta     $40
        ldy     #$02
        sty     $41
LD63E:  lda     $14
        and     #$08
        beq     LD650
        lda     $0420
        cmp     #$0D
        beq     LD650
        lda     #$0D
        jsr     LFA78
LD650:  jsr     LF5C9
        jsr     LEB52
        lda     $10
        cmp     #$03
        bne     LD65F
        jmp     LD711

LD65F:  cmp     #$04
        bne     LD666
        jmp     LD73C

LD666:  lda     $0560
        bpl     LD671
        lda     $10
        cmp     #$01
        beq     LD6EE
LD671:  lda     $0560
        bmi     LD679
        jmp     LD756

LD679:  lda     $0420
        cmp     #$0F
        beq     LD69E
        cmp     #$0E
        beq     LD69E
        cmp     #$0D
        beq     LD68A
        bne     LD6AC
LD68A:  lda     $0410
        cmp     #$03
        bne     LD6B1
        lda     #$01
        sta     $0410
        lda     #$00
        sta     $0430
        jmp     LD6B1

LD69E:  lda     $0410
        cmp     #$01
        bne     LD6B1
        lda     $0430
        cmp     #$02
        bne     LD6B1
LD6AC:  lda     #$12
        jsr     LFA78
LD6B1:  jsr     LF64A
        bcs     LD709
        lda     $50
        cmp     #$0B
        beq     LD6C7
        lda     #$3A
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
LD6C7:  ldy     $22
        lda     ($32),y
        cmp     #$90
        bne     LD6D6
        lda     $0560
        cmp     #$FA
        beq     LD6FB
LD6D6:  lda     $10
        cmp     #$01
        beq     LD711
        cmp     #$02
        beq     LD6EB
        cmp     #$03
        beq     LD6FB
        cmp     #$04
        beq     LD73C
        jmp     LD756

LD6EB:  jmp     LD7C0

LD6EE:  lda     $0560
        cmp     #$FD
        beq     LD6FB
        cmp     #$FE
        beq     LD6FB
        bcs     LD725
LD6FB:  lda     #$10
        jsr     LF850
        lda     #$00
        sta     $50
        sta     $56
        jmp     LEDD2

LD709:  jsr     LD7D8
        lda     #$00
        sta     $50
        rts

LD711:  lda     #$00
        sta     $50
        sta     $56
        lda     $0560
        bpl     LD71F
        jmp     LEDD2

LD71F:  jsr     LF607
        jmp     LEDB3

LD725:  lda     $50
        cmp     #$10
        bne     LD6FB
        lda     $43
        beq     LD6FB
        lda     #$04
        sta     $50
        lda     #$12
        jsr     LF850
        jsr     LF607
        rts

LD73C:  lda     #$06
        sta     $50
        lda     #$0F
        sta     $51
        lda     #$15
        jsr     LF850
        lda     #$09
        jsr     LFA78
        lda     #$3C
        sta     $7C
        jsr     LF9C2
        rts

LD756:  lda     $0420
        cmp     #$0D
        bne     LD76E
        lda     $0410
        cmp     #$03
        bne     LD76E
        lda     #$01
        sta     $0410
        lda     #$00
        sta     $0430
LD76E:  ldy     #$02
        lda     $16
        and     #$03
        beq     LD79A
        sta     $52
        and     #$01
        beq     LD795
        lda     $6D
        cmp     #$0E
        bne     LD78D
        lda     $0400
        cmp     #$50
        beq     LD7B6
        cmp     #$10
        beq     LD7B6
LD78D:  lda     #$00
        jsr     LF200
        jmp     LD79A

LD795:  lda     #$02
        jsr     LF254
LD79A:  lda     $14
        and     #$40
        beq     LD7B6
        jsr     LCF3A
        bne     LD7B6
        lda     $0560
        bpl     LD7AE
        lda     #$0F
        bne     LD7B0
LD7AE:  lda     #$0E
LD7B0:  jsr     LFA78
        jsr     LCE39
LD7B6:  rts

LD7B7:  lda     #$01
        sta     $50
        jsr     LEDD2
        sec
        rts

LD7C0:  lda     $50
        cmp     #$10
        bne     LD7B7
        lda     #$12
        jsr     LF850
        lda     #$0D
        sta     $50
        lda     #$0B
        jsr     LFA78
        jsr     LF607
        rts

LD7D8:  lda     #$04
        cmp     $11
        bcs     LD7E0
        sta     $11
LD7E0:  lda     $0510
        sec
        sbc     $11
        sta     $0510
        bcs     LD7F8
        sbc     #$0F
        sta     $0510
        lda     $0520
        sbc     #$01
        sta     $0520
LD7F8:  rts

        lda     $FA
        bne     LD802
        lda     #$01
        sta     $50
        rts

LD802:  ldy     $22
        lda     ($32),y
        cmp     #$90
        bne     LD812
        lda     $0400
        ora     #$20
        sta     $0400
LD812:  jsr     LF539
        lda     $0420
        cmp     #$06
        beq     LD825
        cmp     #$0D
        beq     LD825
        cmp     #$04
        beq     LD82C
        rts

LD825:  lda     #$01
        sta     $0410
        bne     LD831
LD82C:  lda     #$02
        sta     $0410
LD831:  lda     #$00
        sta     $0430
        rts

        rts

        lda     $31
        cmp     #$06
        bcs     LD841
        jmp     LD8D1

LD841:  jsr     LC970
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$00
        sta     $FC
        sta     $FA
        sta     $FD
        sta     $FB
        lda     #$20
        ldx     #$00
        ldy     #$00
        jsr     LC1BA
        lda     #$11
        sta     $62
        lda     #$02
        jsr     LFF55
        ldx     #$05
        jsr     L8000
        jsr     LA900
        jsr     LC970
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$00
        sta     $FC
        sta     $FA
        sta     $FD
        sta     $FB
        lda     #$20
        ldx     #$02
        ldy     #$00
        jsr     LC1BA
        lda     #$09
        sta     $62
        lda     #$02
        jsr     LFF55
        ldx     #$04
        jsr     L8000
        jsr     L9E00
        ldx     #$1E
        jsr     LFEFF
        jsr     LC95C
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$00
        sta     $FC
        sta     $FA
        sta     $FD
        sta     $FB
        lda     #$0B
        sta     $31
        jsr     LDD57
        lda     #$02
        jsr     LFF55
        jsr     L9280
        lda     #$00
        sta     $D9
        jsr     LF84E
        lda     #$FF
        sta     $65
        rts

LD8D1:  lda     $31
        pha
        lda     #$04
        sta     $97
        lda     #$08
        sta     $31
        jsr     LDD57
        jsr     LC21E
        pla
        sta     $31
        ldx     #$78
        jsr     LFEFF
        lda     #$02
        jsr     LFF55
        jsr     L9A00
LD8F2:  jsr     LFF06
        ldx     #$00
        jsr     LF51B
        inx
        jsr     LF51B
        inx
        jsr     LF4FD
        jsr     LDA70
        lda     $04F0
        sta     $6E
        lda     $0500
        sta     $6F
        lda     #$05
        jsr     LFF55
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     L8000
        lda     #$04
        sta     $97
        lda     $FD
        cmp     #$01
        bne     LD8F2
        lda     $FC
        cmp     #$00
        bne     LD8F2
        lda     #$02
        jsr     LFF55
        jsr     L9B00
        jsr     LC276
        jsr     LFF06
        jsr     LC14E
        lda     #$F0
        jsr     LF84E
        lda     #$20
        ldx     #$00
        ldy     #$00
        jsr     LC1BA
        jsr     LC95C
        lda     #$07
        sta     $62
        lda     #$04
        sta     $97
        jsr     LC21E
        inc     $38
LD95D:  lda     #$01
        jsr     LF84E
        lda     #$02
        jsr     LFF55
        ldx     #$02
        jsr     L8000
        jsr     L8E00
        jsr     LA100
        lda     #$23
        jsr     LF850
        ldy     #$1F
        lda     #$00
        sta     $53
LD97D:  sta     $0340,y
        dey
        bpl     LD97D
        jsr     LFF06
        jsr     LC235
        lda     #$04
        sta     $97
        jsr     LC21E
        jsr     LC8B5
        rts

        lda     $51
        cmp     #$73
        bne     LD99F
        lda     #$08
        jsr     LFA78
LD99F:  lda     #$06
        ldy     #$02
        jsr     LF2D7
        lda     $51
        bne     LD9AF
        lda     #$00
        sta     $50
        rts

LD9AF:  dec     $51
        rts

        lda     #$F2
        jsr     LF84E
        jsr     LC970
        lda     #$04
        sta     $97
        jsr     LC21E
        lda     #$00
        sta     $FC
        sta     $FA
        sta     $FD
        sta     $FB
        lda     #$20
        ldx     #$02
        ldy     #$00
        jsr     LC1BA
        lda     #$02
        jsr     LFF55
        ldx     #$04
        jsr     L8000
        lda     $66
        cmp     #$FF
        bne     LD9F5
        lda     #$0B
        sta     $62
        jsr     L9E00
        lda     #$12
        sta     $62
        jsr     LAA00
        jmp     LD9FC

LD9F5:  lda     #$0C
        sta     $62
        jsr     L9E00
LD9FC:  lda     #$04
        sta     $97
        jsr     LC21E
        rts

        lda     $04D0
        and     #$0F
        bne     LDA13
        lda     #$12
        jsr     LFA78
        inc     $04D0
LDA13:  lda     $0420
        cmp     #$2D
        beq     LDA58
        cmp     #$11
        beq     LDA66
        lda     #$06
        sta     $40
        ldy     #$02
        sty     $41
        ldx     #$00
        jsr     LF5A4
        jsr     LF5DA
        jsr     LEB52
        lda     $10
        cmp     #$03
        bne     LDA57
        jsr     LEDD2
        lda     #$8E
        sta     $1A
        lda     #$2D
        jsr     LFA78
        lda     #$02
        jsr     LF84E
        lda     #$D0
        sta     $0400
        lda     #$00
        sta     $0550
        lda     #$04
        sta     $0560
LDA57:  rts

LDA58:  lda     $0410
        cmp     #$2B
        bne     LDA57
        lda     $0430
        cmp     #$04
        bne     LDA57
LDA66:  ldx     #$38
        jsr     LFEFF
        lda     #$11
        sta     $50
        rts

LDA70:  lda     $50
        cmp     #$07
        bne     LDA77
LDA76:  rts

LDA77:  cmp     #$08
        beq     LDA76
        cmp     #$12
        beq     LDA76
        lda     $04F0
        sec
        sbc     $FC
        sta     L0000
        lda     $04F0
        sec
        sbc     $6E
        sta     $04
        lda     $0500
        sbc     $6F
        ora     $04
        beq     LDAFD
        bcs     LDACF
        lda     $04
        eor     #$FF
        adc     #$01
        sta     $10
        lda     L0000
        cmp     #$88
        bcs     LDAFD
        lda     $2F
        pha
        lda     #$02
        sta     $2F
        jsr     LDC19
        pla
        bcs     LDAFD
        sta     $2F
        lda     L0000
        cmp     #$10
        bcs     LDAFD
        lda     $FC
        clc
        adc     #$10
        sta     $04F0
        lda     $FD
        adc     #$00
        sta     $0500
        jmp     LDAFD

LDACF:  lda     L0000
        cmp     #$89
        bcc     LDAFD
        lda     $04
        sta     $10
        lda     $2F
        pha
        lda     #$01
        sta     $2F
        jsr     LDBCE
        pla
        bcs     LDAFD
        sta     $2F
        lda     L0000
        cmp     #$F1
        bcc     LDAFD
        lda     $FC
        clc
        adc     #$F0
        sta     $04F0
        lda     $FD
        adc     #$00
        sta     $0500
LDAFD:  ldy     $22
        lda     ($34),y
        sta     L0000
        and     #$CF
        cmp     #$C1
        bcc     LDB29
        lda     ($34),y
        cmp     #$C2
        beq     LDB29
        cmp     #$C4
        beq     LDB29
        cmp     #$C6
        beq     LDB29
        cmp     #$C8
        beq     LDB29
        cmp     #$CA
        beq     LDB29
        cmp     #$CC
        beq     LDB29
        cmp     #$CE
        beq     LDB29
        sta     $6D
LDB29:  lda     $FC
        bne     LDB56
        lda     #$01
        sta     $10
        ldy     $22
        lda     ($34),y
        and     #$0F
        cmp     #$01
        beq     LDB6D
        cmp     #$02
        bne     LDB56
        lda     #$00
        sta     $10
        lda     $0510
        sec
        sbc     $FA
        bcs     LDB4E
        sbc     #$0F
        clc
LDB4E:  sta     $10
        lda     $10
        cmp     #$48
        bcc     LDB57
LDB56:  rts

LDB57:  lda     #$48
        sec
        sbc     $10
        bcc     LDB56
        cmp     #$09
        bcc     LDB64
        lda     #$04
LDB64:  sta     $10
        lda     #$08
        sta     $2F
        jmp     LDCC4

LDB6D:  lda     $50
        cmp     #$0C
        beq     LDBB3
        lda     $FB
        cmp     $0520
        bne     LDB56
        lda     $0510
        sec
        sbc     $FA
        cmp     #$E8
        bcs     LDB8B
        lda     $50
        cmp     #$0C
        beq     LDBB3
        rts

LDB8B:  lda     #$0C
        sta     $50
        lda     #$80
        sta     $0550
        lda     #$00
        sta     $0560
        ldy     #$0F
LDB9B:  lda     #$00
        sta     $04D0,y
        sta     $0400,y
        sta     $0570,y
        sta     $04C0,y
        lda     #$FF
        sta     $0590,y
        dey
        cpy     #$01
        bne     LDB9B
LDBB3:  ldy     $22
        lda     ($32),y
        cmp     #$90
        bne     LDBC3
        lda     $0400
        ora     #$20
        sta     $0400
LDBC3:  lda     #$03
        sta     $10
        lda     #$04
        sta     $2F
        jmp     LDC6E

LDBCE:  ldy     $22
        iny
        lda     ($34),y
        and     #$40
        beq     LDC12
        lda     $FC
        bne     LDBDF
        lda     ($32),y
        beq     LDC12
LDBDF:  lda     #$06
        cmp     $10
        bcs     LDBE9
        lda     #$01
        sta     $10
LDBE9:  jsr     LDD17
        bcc     LDC12
        lda     $FC
        clc
        adc     $10
        sta     $FC
        php
        lda     $FD
        adc     #$00
        sta     $FD
        plp
        lda     $22
        adc     #$00
        sta     $22
        tay
        iny
        lda     ($32),y
        beq     LDC0B
        bne     LDC14
LDC0B:  lda     #$00
        sta     $FC
        jmp     LDC67

LDC12:  clc
        rts

LDC14:  jsr     LE63C
        sec
        rts

LDC19:  ldy     $22
        lda     ($34),y
        and     #$40
        beq     LDC6C
        lda     $FC
        bne     LDC2E
        dey
        lda     ($32),y
        beq     LDC6C
        lda     $FD
        beq     LDC6C
LDC2E:  jsr     LDD17
        bcc     LDC6C
        lda     #$06
        cmp     $10
        bcs     LDC3B
        sta     $10
LDC3B:  lda     $FC
        sec
        sbc     $10
        sta     $FC
        php
        lda     $FD
        sbc     #$00
        sta     $0E
        plp
        lda     $22
        sbc     #$00
        sta     $0F
        tay
        lda     ($32),y
        beq     LDC59
        lda     $0E
        bpl     LDC5F
LDC59:  lda     #$00
        sta     $FC
        beq     LDC67
LDC5F:  lda     $0E
        sta     $FD
        lda     $0F
        sta     $22
LDC67:  jsr     LE63C
        sec
        rts

LDC6C:  clc
        rts

LDC6E:  lda     $FA
        bne     LDC83
        lda     $22
        clc
        adc     $2E
        tay
        lda     ($32),y
        beq     LDC82
        lda     $FB
        cmp     $2D
        bne     LDC83
LDC82:  rts

LDC83:  jsr     LDD36
        bcc     LDC82
        lda     $FA
        clc
        adc     $10
        sta     $FA
        cmp     #$F0
        bcc     LDCC1
        adc     #$0F
        sta     $FA
        ldy     $22
        lda     ($34),y
        bmi     LDCB3
        lda     $FB
        adc     #$00
        sta     L0000
        lda     $22
        clc
        adc     $2E
        sta     $01
        tay
        lda     ($32),y
        beq     LDCB3
        lda     L0000
        bpl     LDCB9
LDCB3:  lda     #$00
        sta     $FA
        beq     LDCC1
LDCB9:  lda     L0000
        sta     $FB
        lda     $01
        sta     $22
LDCC1:  jmp     LE7C6

LDCC4:  lda     $FA
        bne     LDCD8
        lda     $22
        tay
        sec
        sbc     $2E
        tay
        lda     ($32),y
        beq     LDCD7
        lda     $FB
        bne     LDCD8
LDCD7:  rts

LDCD8:  jsr     LDD36
        bcc     LDCD7
        lda     $FA
        sec
        sbc     $10
        sta     $FA
        bcs     LDD14
        sbc     #$0F
        sta     $FA
        ldy     $22
        lda     ($34),y
        bmi     LDD06
        lda     $FB
        sbc     #$01
        sta     L0000
        lda     $22
        sec
        sbc     $2E
        sta     $01
        tay
        lda     ($32),y
        beq     LDD06
        lda     L0000
        bpl     LDD0C
LDD06:  lda     #$00
        sta     $FA
        beq     LDD14
LDD0C:  lda     L0000
        sta     $FB
        lda     $01
        sta     $22
LDD14:  jmp     LE7C6

LDD17:  lda     $2B
        and     #$03
        bne     LDD30
        lda     $FA
        bne     LDD32
        lda     $20
        sta     $2B
        and     #$01
        tax
        lda     $22
        clc
        adc     LDD34,x
        sta     $23
LDD30:  sec
        rts

LDD32:  clc
        rts

LDD34:  .byte   $FF
        .byte   $01
LDD36:  lda     $2B
        and     #$0C
        bne     LDD53
        lda     $FC
        bne     LDD55
        lda     $22
        clc
        adc     $2E
        sta     $23
        lda     #$00
        sta     $2A
        sta     $29
        lda     #$04
        sta     L0021
        sta     $2B
LDD53:  sec
        rts

LDD55:  clc
        rts

LDD57:  jsr     LC248
        jsr     LFF06
        ldx     $31
        lda     LDF50,x
        sta     $32
        lda     LDF60,x
        sta     $33
        lda     LDF70,x
        sta     $34
        lda     LDF80,x
        sta     $35
        lda     LDEAA,x
        sta     $36
        lda     LDEB9,x
        sta     $22
        sta     $23
        lda     LDEC8,x
        sta     $FB
        sta     $0520
        lda     #$00
        sta     $FD
        sta     $0500
        ldy     LDED7,x
        sty     $2C
        iny
        sty     $2E
        lda     LDEE6,x
        sta     $1A
        lda     LDEF5,x
        sta     $1B
        lda     $D9
        cmp     #$00
        beq     LDDAE
        lda     LDF13,x
        sta     $D9
        jsr     LF84E
LDDAE:  lda     LDF41,x
        sta     $2D
        lda     LDF31,x
        sta     $3D
        lda     LDF04,x
        stx     $02
        jsr     LC2F9
        ldx     $02
        lda     LDF22,x
        jsr     LC319
        jsr     LDE24
        jsr     LFF06
        lda     #$00
        sta     $3E
        sta     $3F
        ldx     #$00
        stx     $04E0
        lda     #$2C
        sta     $04F0,x
        jsr     LFA78
        lda     #$06
        sta     $0510,x
        lda     $31
        cmp     #$07
        bcc     LDDEF
        jmp     LDE09

LDDEF:  lda     #$80
        sta     $04D0,x
        lda     #$D0
        sta     $0400,x
        jsr     LF5FC
        lda     #$09
        sta     $50
LDE00:  jsr     LC158
        jsr     LFF06
        jmp     LC254

LDE09:  lda     $31
        cmp     #$08
        beq     LDE16
        cmp     #$0A
        beq     LDE16
        jmp     LDE00

LDE16:  lda     #$D8
        sta     $0400
        jsr     LC158
        jsr     LFF06
        jmp     LC254

LDE24:  jsr     LC14E
        jsr     LC235
        lda     #$01
        sta     $52
        sta     $20
        sta     $2B
        sta     $2F
        lda     #$04
        sta     L0021
        lda     #$00
        sta     $FC
        sta     $FA
        sta     $28
        sta     $29
        sta     $70
        sta     $71
        sta     $5F
        sta     $56
        sta     $57
        sta     $64
        sta     $58
        sta     $5A
        sta     $5C
        sta     $ED
        sta     $EE
        sta     $5E
        sta     $50
        sta     $63
        sta     $65
        sta     $9B
        sta     $3B
        sta     $9D
        sta     $F8
        sta     $9E
        sta     $98
        lda     $FD
        ror     a
        ror     a
        and     #$80
        sta     $25
        eor     #$80
        ora     #$08
        sta     $0F
        lda     $23
        beq     LDE86
        dec     $23
        lda     $0F
        ora     #$70
        sta     $25
LDE86:  lda     #$01
LDE88:  sta     $05
        jsr     LE698
        lda     $25
        cmp     $0F
        bne     LDE86
        lda     $31
        cmp     #$07
        bcs     LDEA5
LDE99:  lda     #$04
        jsr     LFF55
        jsr     L8040
        jsr     L8090
        rts

LDEA5:  lda     $66
        bmi     LDE99
        rts

LDEAA:  brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $06
        ora     ($04,x)
        .byte   $04
        .byte   $02
        .byte   $04
        ora     $06
        .byte   $01
LDEB9:  .byte   $33
        .byte   $33
        brk
        ror     a:L0000
        brk
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        brk
        brk
        brk
LDEC8:  .byte   $03
        .byte   $03
        brk
        .byte   $0B
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDED7:  bpl     LDEE9
        bpl     LDEE4
        .byte   $12
        .byte   $12
        .byte   $12
        brk
        .byte   $03
        brk
        .byte   $02
        brk
        brk
LDEE4:  brk
        brk
LDEE6:  stx     $8E8E
LDEE9:  stx     $8E8E
        stx     $9F8E
        .byte   $9F
        .byte   $8F
        .byte   $9F
        .byte   $9F
        .byte   $80
        .byte   $8E
LDEF5:  bcc     LDE88
        .byte   $92
        .byte   $93
        sty     $95,x
        stx     $98,y
        tya
        tya
        .byte   $9C
        tya
        .byte   $9E
        .byte   $9D
        tya
LDF04:  brk
        ora     ($04,x)
        ora     $07
        .byte   $0C
        ora     #$0F
        bpl     LDF1E
        .byte   $13
        .byte   $14
        clc
        brk
        .byte   $19
LDF13:  .byte   $04
        ora     $06
        .byte   $07
        php
        ora     #$0A
        .byte   $F2
        .byte   $03
        brk
        brk
LDF1E:  asl     a:L0000
        brk
LDF22:  brk
        .byte   $03
        ora     ($04,x)
LDF26:  asl     L0000
        ora     ($0A,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDF31:  .byte   $80
        brk
        dey
        brk
        sty     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDF41:  brk
        brk
        .byte   $03
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        .byte   $01
LDF50:  bcc     LDF26
        clc
        .byte   $5C
        .byte   $D4
        ora     $7F46
        .byte   $80
        .byte   $83
        sty     $87
        dey
        txa
        txa
        .byte   $87
LDF60:  .byte   $DF
        .byte   $DF
        cpx     #$E0
        cpx     #$E1
        sbc     ($E1,x)
        sbc     ($E1,x)
        sbc     ($E1,x)
        sbc     ($E1,x)
        sbc     ($E1,x)
LDF70:  sty     $14D0
        cli
        bne     LDF7F
        .byte   $42
        .byte   $7B
        .byte   $7C
        .byte   $7F
        .byte   $80
        .byte   $83
        sty     $86
        .byte   $86
LDF7F:  .byte   $83
LDF80:  sbc     ($E1,x)
        .byte   $E2
        .byte   $E2
        .byte   $E2
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        .byte   $E3
        ora     L0000,x
        asl     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     a:$0E
        brk
        brk
        .byte   $14
        .byte   $14
        brk
        brk
        brk
        brk
        brk
        .byte   $07
        brk
        brk
        brk
        brk
        brk
        .byte   $0F
        bpl     LDFD1
        .byte   $12
        .byte   $13
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $06
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDFD1:  brk
        brk
        brk
        ora     L0000,x
        asl     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $27
        plp
        and     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $34
        .byte   $34
        .byte   $34
        brk
        brk
        brk
        brk
        rol     L0000
        rol     a
        .byte   $2B
        .byte   $2C
LDFFF:  and     $2F2E
        bmi     LE035
        .byte   $32
        .byte   $33
        brk
        and     ($22,x)
        .byte   $23
        bit     $25
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        eor     ($42,x)
        .byte   $43
        brk
        brk
        brk
        ora     L0000,x
        asl     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $44
        eor     $46
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE035:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $47
        pha
        eor     #$4A
        .byte   $4B
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        lsr     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        jmp     L4E4D

        .byte   $4F
        bvc     LE0A8
        .byte   $52
        .byte   $53
        .byte   $54
        eor     L0000,x
        ora     L0000,x
        asl     L0000,x
        brk
        brk
        brk
        brk
        ror     $76,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $74
        adc     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $73
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $72
        brk
        brk
        brk
        brk
        brk
        brk
LE088:  brk
        brk
        brk
        adc     (L0000),y
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bvs     LE097
LE097:  brk
        brk
        brk
        pla
        adc     #$6A
        .byte   $6B
        brk
        .byte   $6F
        brk
        brk
        brk
        brk
        .byte   $67
        brk
        brk
        .byte   $6C
LE0A8:  adc     a:$6E
        brk
        brk
        brk
        ror     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        adc     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $64
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        adc     ($62,x)
        .byte   $63
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sta     ($82,x)
        .byte   $83
        sty     $85
        stx     $87
        dey
        .byte   $89
        txa
        .byte   $8B
        .byte   $8C
        .byte   $8D
LE0E1:  stx     a:$8F
        brk
        .byte   $97
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bcc     LE088
        .byte   $92
        brk
        brk
        ora     L0000,x
        asl     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $93
        sty     $95,x
        stx     L0000,y
        lda     ($A2,x)
        .byte   $A3
        ldy     L0000
        ora     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $B3
        ldy     L0000,x
        brk
        brk
        brk
        lda     $A6
        .byte   $A7
        tay
        lda     #$AA
        .byte   $AB
        ldy     $AEAD
        .byte   $AF
        bcs     LE0E1
        .byte   $B2
        brk
        brk
        asl     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        lda     L0000,x
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     L0000
        brk
        brk
        brk
        ora     L0000,x
        brk
        tya
        brk
        ora     L0000,x
        asl     L0000,x
        brk
        brk
        brk
        brk
        brk
        asl     $07
        php
        ora     #$0A
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0B
        .byte   $0C
        ora     $0F0E
        bpl     LE18C
        .byte   $12
        .byte   $13
        .byte   $14
        brk
        and     L0000,x
        txs
        sta     $9C,y
        .byte   $57
        cli
        .byte   $9B
        .byte   $B7
        ldx     $36,y
        .byte   $37
LE18C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        cpy     #$C0
        cmp     ($C0,x)
        cpy     #$41
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        cpy     #$C0
        .byte   $C2
        brk
        cpy     #$C0
        cpy     #$C0
        cpy     #$42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        cpy     #$41
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        .byte   $C3
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     L0000
        cpy     #$C0
        cpy     #$C0
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        eor     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        eor     ($C0,x)
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        eor     ($C0,x)
        cpy     #$C0
        eor     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        eor     ($C5,x)
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$C6
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        iny
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        .byte   $42
        cpy     #$C0
        eor     (L0000,x)
        .byte   $42
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        eor     ($C0,x)
        .byte   $42
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        .byte   $42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$C9
        cpy     #$C0
        eor     (L0000,x)
        brk
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        eor     ($C0,x)
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        eor     ($C0,x)
        cpy     #$CA
        brk
        cpy     #$C0
        cpy     #$41
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        cpy     a:L0000
        brk
        brk
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$CB
        cpy     #$C0
        cpy     #$C0
        cpy     #$42
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        cpy     #$C0
        cpy     #$C0
        eor     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$C0
        cpy     #$C0
        eor     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        eor     ($CD,x)
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$CE
        brk
        cpy     #$00
        cpy     #$C0
        cpy     #$00
        cpy     #$C0
        cpy     #$42
        .byte   $42
        .byte   $42
        .byte   $42
LE388:  stx     $10
        jsr     LC248
        ldx     $10
        lda     LE5E7,x
        sta     $36
        lda     LE497,x
        sta     $22
        sta     $23
        lda     LE4C1,x
        sta     $FB
        sta     $0520
        lda     LE4EB,x
        sta     $FD
        sta     $0500
        lda     LE515,x
        sta     $1A
        lda     LE53F,x
        sta     $1B
        lda     LE5BD,x
        sta     $3D
        lda     LE611,x
        sta     $D9
        jsr     LF84E
        lda     #$00
        sta     $3E
        sta     $3F
        sta     $EE
        sta     $ED
        lda     #$06
        sta     $0510
        lda     #$30
        sta     $04F0
        lda     LE569,x
        stx     $02
        jsr     LC2F9
        ldx     $02
        lda     LE593,x
        jsr     LC319
        lda     #$00
        sta     $5B
        jsr     LDE24
        jsr     LFF06
        lda     #$2C
        jsr     LFA78
        lda     #$80
        sta     $04D0
        lda     #$D0
        sta     $0400
        ldx     #$00
        jsr     LF5FC
        lda     #$12
        sta     $50
        lda     $5D
        beq     LE43D
        jsr     LC850
        lda     $54
        cmp     #$00
        beq     LE43D
        cmp     #$01
        beq     LE423
        cmp     #$02
        beq     LE42A
        cmp     #$03
        beq     LE431
        bne     LE43D
LE423:  lda     #$7A
        sta     $05BA
        bne     LE436
LE42A:  lda     #$7B
        sta     $05BA
        bne     LE436
LE431:  lda     #$7C
        sta     $05BA
LE436:  lda     #$7D
        sta     $05BC
        bne     LE448
LE43D:  jsr     LC887
        lda     #$00
        sta     $05BE
        sta     $05C0
LE448:  lda     #$00
        sta     $5D
        sta     $53
        jsr     LC158
        jsr     LFF06
        lda     $6D
        cmp     #$02
        beq     LE474
        cmp     #$04
        beq     LE474
        cmp     #$06
        beq     LE474
        cmp     #$08
        beq     LE474
        cmp     #$0A
        beq     LE474
        cmp     #$0C
        beq     LE474
        cmp     #$0E
        beq     LE474
        bne     LE478
LE474:  lda     #$78
        sta     $3B
LE478:  lda     $6D
        cmp     #$04
        beq     LE495
        cmp     #$06
        beq     LE495
        cmp     #$08
        beq     LE495
        cmp     #$0A
        beq     LE495
        cmp     #$0C
        beq     LE495
        cmp     #$0E
        beq     LE495
        jmp     LC254

LE495:  .byte   $4C
        .byte   $5F
LE497:  .byte   $C2
        ora     $2820,y
        jsr     L3139
        .byte   $4B
        php
        .byte   $0B
        ora     ($1D),y
        .byte   $37
        rol     a:L000C
        .byte   $33
        .byte   $02
        ora     $3300,y
        .byte   $02
        plp
        asl     $39
        php
        brk
        brk
        ror     $4B02
        rol     $0B
        plp
        brk
        ora     L0000
        rol     $1D
        asl     $2600
LE4C1:  rol     $0101
        .byte   $02
        ora     ($03,x)
        .byte   $02
        .byte   $07
        brk
        brk
        brk
        ora     ($02,x)
        .byte   $02
        brk
        brk
        .byte   $03
LE4D2:  brk
        ora     (L0000,x)
        .byte   $03
        brk
        .byte   $02
        brk
        .byte   $03
        .byte   $04
        brk
        brk
        .byte   $0B
        .byte   $0C
        .byte   $07
        .byte   $02
        brk
        .byte   $02
        brk
        brk
        brk
        .byte   $02
        ora     (L0000,x)
        brk
        .byte   $02
LE4EB:  .byte   $02
        php
        .byte   $0F
        asl     $0F
LE4F0:  asl     $0F
        ora     $08
        .byte   $0B
        ora     ($0A),y
        ora     ($08),y
        .byte   $0C
        ora     (L0000,x)
        brk
        php
        ora     (L0000,x)
        brk
        asl     L0000
        asl     L0000
        brk
        brk
        brk
        brk
        ora     L0000
        .byte   $0B
        .byte   $02
        brk
        brk
        brk
        .byte   $02
        asl     a
        asl     $0200
LE515:  php
        .byte   $80
        txa
        .byte   $82
        txa
        sta     $8D
        .byte   $82
        sty     $8D86
        dey
        .byte   $8F
        .byte   $89
        sty     $808E
        stx     $8E80
        .byte   $83
        stx     $8E82
        sta     $8E
        sta     ($8E,x)
        sty     $8E
        .byte   $82
        stx     $8E86
        stx     $8E
        .byte   $80
        stx     $8E88
        sta     ($8E,x)
LE53F:  .byte   $89
        bcc     LE4D2
        sta     ($91),y
        .byte   $92
        .byte   $92
        .byte   $93
        .byte   $93
        sty     $94,x
        sta     $95,x
        stx     $97,y
        sta     $9D90,x
        bcc     LE4F0
        sta     ($9D),y
        sta     ($9D),y
        .byte   $92
        sta     $9D92,x
        .byte   $93
        sta     $9D93,x
        sty     $9D,x
        sty     $9D,x
        sta     $9D,x
        sta     $9D,x
        stx     $9D,y
LE569:  stx     L0000,y
        brk
        .byte   $03
        php
        .byte   $04
        .byte   $12
        asl     $0B
        asl     a
        .byte   $07
        .byte   $0C
        .byte   $0C
        .byte   $17
        asl     a:$15
        asl     L0000,x
        ora     $01,x
        asl     $03,x
        ora     $04,x
        asl     $04,x
        ora     $05,x
        asl     $06,x
        ora     $0A,x
        asl     $07,x
        ora     L000C,x
        asl     L000C,x
        ora     $09,x
        .byte   $16
LE593:  .byte   $17
        brk
        asl     a
        .byte   $02
        .byte   $0B
        ora     $10
        .byte   $02
        ora     ($06),y
        ora     $0F08
        ora     #$0C
        asl     $0E00
        brk
        asl     $0E03
        .byte   $02
        asl     $0E05
        ora     ($0E,x)
        .byte   $04
        asl     $0E02
        asl     $0E
        asl     $0E
        brk
        asl     $0E08
        ora     ($0E,x)
LE5BD:  ora     #$80
        .byte   $80
        brk
        brk
        dey
        sta     (L0000),y
        brk
        sty     a:$8C
        brk
        brk
        brk
        brk
        .byte   $80
        brk
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        dey
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sty     $8C00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE5E7:  brk
        brk
        brk
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        ora     $05
        asl     $04
        asl     L0000
        asl     L0000
        asl     $01
        asl     $01
        asl     $02
        asl     $02
        asl     $03
        asl     $03
        asl     $04
        asl     $04
        asl     $05
        asl     $05
        asl     $06
        .byte   $06
LE611:  asl     $04
        .byte   $0F
        ora     $0F
        asl     $0F
        .byte   $07
        .byte   $0F
        php
        .byte   $0F
        ora     #$0F
        asl     a
        .byte   $0F
        .byte   $0B
        .byte   $04
        .byte   $0B
        .byte   $04
        .byte   $0B
        ora     $0B
        ora     $0B
        asl     $0B
        asl     $0B
        .byte   $07
        .byte   $0B
        .byte   $07
        .byte   $0B
        php
        .byte   $0B
        php
        .byte   $0B
        ora     #$0B
        ora     #$0B
        asl     a
        .byte   $0B
        asl     a
LE63C:  lda     $FC
        sec
        sbc     $28
        bpl     LE648
        eor     #$FF
        clc
        adc     #$01
LE648:  sta     $05
        lda     $2F
        and     #$02
        bne     LE65D
        lda     $28
        and     #$01
        clc
        adc     $05
        lsr     a
        sta     $05
        bne     LE66C
        rts

LE65D:  lda     $28
        eor     #$FF
        and     #$01
        clc
        adc     $05
        lsr     a
        sta     $05
        bne     LE66C
        rts

LE66C:  lda     $05
        sta     $1F
        lda     $2F
        cmp     $20
        sta     $20
        beq     LE698
        and     #$02
        tax
        lda     $25
        pha
        and     #$80
        sta     $06
        pla
        clc
        adc     LE7B6,x
        sta     $25
        and     #$80
        cmp     $06
        beq     LE690
        inx
LE690:  lda     $23
        clc
        adc     LE7BA,x
        sta     $23
LE698:  ldy     #$00
LE69A:  sty     $06
        lda     $25
        pha
        and     #$07
        tax
        asl     a
        asl     a
        asl     a
        sta     $24
        pla
        and     #$78
        lsr     a
        lsr     a
        pha
        lsr     a
        lsr     a
        ora     $24
        sta     $24
        ora     #$C0
        sta     $0375,y
        pla
        ora     LEB17,x
        sta     $0361,y
        clc
        adc     #$20
        sta     $0366,y
        adc     #$20
        sta     $036B,y
        adc     #$20
        sta     $0370,y
        lda     $25
        rol     a
        rol     a
        rol     a
        rol     a
        and     #$04
        ora     LEB1F,x
        sta     $0360,y
        sta     $0365,y
        sta     $036A,y
        sta     $036F,y
        ora     #$03
        sta     $0374,y
        lda     #$01
        sta     $0362,y
        sta     $0367,y
        sta     $036C,y
        sta     $0371,y
        lda     #$00
        sta     $0376,y
        iny
        iny
        iny
        sty     $06
        ldy     $23
        jsr     LEB27
        jsr     LEA36
        ldy     $06
        lda     $035E,y
        and     #$02
        tax
LE713:  lda     $0140,x
        sta     $0360,y
        lda     $0141,x
        sta     $0361,y
        iny
        iny
        iny
        iny
        iny
        inx
        inx
        inx
        inx
        cpx     #$10
        bcc     LE713
        lda     $24
        cmp     #$38
        bcc     LE742
        tya
        sbc     #$0D
        tay
        ldx     #$02
LE738:  lda     $036A,y
        sta     $0360,y
        iny
        dex
        bpl     LE738
LE742:  sty     $06
        lda     $25
        lsr     a
        lsr     a
        lsr     a
        and     #$01
        tay
        lda     $25
        and     #$80
        lsr     a
        ora     $24
        tax
        lda     $10
        and     LE7C2,y
        sta     $10
        lda     $0780,x
        and     LE7C4,y
        ora     $10
        sta     $0780,x
        ldy     $06
        sta     $0360,y
        iny
        lda     #$FF
        sta     $0360,y
        txa
        asl     a
        tax
        lda     $25
        and     #$08
        bne     LE77F
        lda     $11
        jmp     LE782

LE77F:  lda     $12
        inx
LE782:  sta     $0600,x
        lda     $2F
        and     #$02
        tax
        lda     $25
        clc
        adc     LE7BE,x
        sta     $25
        and     #$7F
        cmp     LE7BF,x
        bne     LE7A1
        lda     $23
        clc
        adc     LE7BE,x
        sta     $23
LE7A1:  dec     $05
        beq     LE7A8
        jmp     LE69A

LE7A8:  lda     $F0
        beq     LE7AF
        jmp     LC115

LE7AF:  inc     $19
        lda     $FC
        sta     $28
        rts

LE7B6:  sta     ($01),y
        .byte   $6F
        .byte   $FF
LE7BA:  .byte   $02
        ora     ($FE,x)
        .byte   $FF
LE7BE:  .byte   $01
LE7BF:  brk
        .byte   $FF
        .byte   $7F
LE7C2:  .byte   $33
        .byte   $CC
LE7C4:  .byte   $CC
        .byte   $33
LE7C6:  lda     $FA
        sec
        sbc     $29
        bpl     LE7D2
        eor     #$FF
        clc
        adc     #$01
LE7D2:  and     #$0F
        lsr     a
        lsr     a
        lsr     a
        sta     $05
        bne     LE7DC
        rts

LE7DC:  lda     $2F
        cmp     L0021
        beq     LE7FF
        and     #$04
        tax
        lda     $2A
        clc
        adc     LEA0E,x
        cmp     #$1E
        bcc     LE7FA
        clc
        adc     LEA10,x
        and     #$1F
        pha
        jsr     LE936
        pla
LE7FA:  sta     $2A
        jsr     LE936
LE7FF:  ldy     #$00
LE801:  sty     $06
        tya
        clc
        adc     #$26
        sta     $08
        lda     $2F
        cmp     L0021
        sta     L0021
        beq     LE815
        lda     #$08
        bne     LE817
LE815:  and     #$04
LE817:  sta     $09
        lda     $2A
        and     #$03
        ora     $09
        sta     $09
        ldy     $23
        jsr     LEB27
        ldy     $06
        lda     $2A
        pha
        and     #$1C
        asl     a
        sta     $24
        ora     #$C0
        sta     $0384,y
        sta     L000C
        pla
        lsr     a
        lsr     a
        tax
        lda     $FD
        and     #$01
        asl     a
        asl     a
        ora     LEB1F,x
        sta     $0360,y
        sta     $0B
        ora     #$03
        sta     $0383,y
        lda     $2A
        and     #$03
        asl     a
        asl     a
        sta     $07
        asl     a
        asl     a
        asl     a
        ora     LEB17,x
        sta     $0361,y
        sta     $0A
        lda     #$1F
        sta     $0362,y
        lda     #$07
        sta     $0385,y
        iny
        iny
        iny
LE86E:  sty     $06
        jsr     LEA36
        ldy     $06
        ldx     $07
LE877:  lda     $0140,x
        sta     $0360,y
        iny
        inx
        txa
        and     #$03
        bne     LE877
        ldx     $09
        lda     LEA16,x
        beq     LE8DC
        and     $10
        sta     $10
        sty     $06
        lda     $FD
        ror     a
        ror     a
        ror     a
        and     #$40
        clc
        adc     $24
        tay
        lda     $0780,y
        and     LEA22,x
        ora     $10
        sta     $0780,y
        ldx     $08
        sta     $0360,x
        inc     $08
        tya
        asl     a
        tay
        lda     $2A
        and     #$03
        tax
        lda     $11
        and     LEA1E,x
        sta     $11
        lda     $0600,y
        and     LEA2A,x
        ora     $11
        sta     $0600,y
        lda     $12
        and     LEA1E,x
        sta     $12
        lda     $0601,y
        and     LEA2A,x
        ora     $12
        sta     $0601,y
        ldy     $06
LE8DC:  lda     $24
        and     #$07
        cmp     #$07
        beq     LE8E8
        inc     $24
        bne     LE86E
LE8E8:  ldx     $09
        lda     LEA16,x
        beq     LE8F4
        tya
        clc
        adc     #$0B
        tay
LE8F4:  sty     $06
        jsr     LE954
        ldy     $06
        lda     $2F
        and     #$04
        tax
        lda     $2A
        clc
        adc     LEA0E,x
        cmp     #$1E
        bcc     LE910
        jsr     LE936
        lda     LEA0F,x
LE910:  sta     $2A
        lda     $2F
        and     #$04
        tax
        lda     $29
        clc
        adc     LEA2E,x
        cmp     #$F0
        bcc     LE925
        clc
        adc     LEA2F,x
LE925:  sta     $29
        dec     $05
        beq     LE92E
        jmp     LE801

LE92E:  lda     #$FF
        sta     $0360,y
        sta     $19
        rts

LE936:  lda     $2F
        and     #$08
        bne     LE94C
        lda     $23
        clc
        adc     $2E
        sta     $23
        cmp     #$05
        bne     LE94B
        lda     #$00
        sta     $23
LE94B:  rts

LE94C:  lda     $23
        sec
        sbc     $2E
        sta     $23
        rts

LE954:  lda     $FD
        beq     LE965
        cmp     $2C
        beq     LE99A
        jsr     LE965
        bne     LE964
        jsr     LE99A
LE964:  rts

LE965:  ldy     $23
        iny
        lda     ($32),y
        bne     LE96D
        rts

LE96D:  lda     $24
        and     #$F8
        sta     $24
        jsr     LEB27
        jsr     LEA36
        ldy     $06
        ldx     $07
        lda     $0140,x
        sta     $0363,y
        lda     $0141,x
        sta     $0364,y
        lda     $0A
        and     #$E0
        sta     $0361,y
        lda     L000C
        and     #$F8
        sta     $0366,y
        jmp     LE9D2

LE99A:  ldy     $23
        dey
        lda     ($32),y
        bne     LE9A2
        rts

LE9A2:  lda     $24
        and     #$F8
        ora     #$07
        sta     $24
        jsr     LEB27
        jsr     LEA36
        ldy     $06
        ldx     $07
        lda     $0142,x
        sta     $0363,y
        lda     $0143,x
        sta     $0364,y
        lda     $0A
        and     #$E0
        ora     #$1E
        sta     $0361,y
        lda     L000C
        and     #$F8
        ora     #$07
        sta     $0366,y
LE9D2:  lda     #$01
        sta     $0362,y
        lda     $0B
        eor     #$04
        sta     $0360,y
        ora     #$03
        sta     $0365,y
        and     #$04
        asl     a
        asl     a
        asl     a
        asl     a
        ora     $24
        tax
        lda     $10
        sta     $0368,y
        sta     $0780,x
        txa
        asl     a
        tax
        lda     $11
        sta     $0600,x
        lda     $12
        sta     $0601,x
        lda     #$00
        sta     $0367,y
        tya
        clc
        adc     #$09
        tay
        sty     $06
        rts

LEA0E:  .byte   $FF
LEA0F:  .byte   $1D
LEA10:  .byte   $FE
        .byte   $FF
LEA12:  ora     (L0000,x)
        .byte   $02
        .byte   $01
LEA16:  brk
        .byte   $0F
        brk
        beq     LEA2A
        brk
LEA1C:  beq     LEA1E
LEA1E:  .byte   $0F
        .byte   $0F
        beq     LEA12
LEA22:  brk
        beq     LEA25
LEA25:  .byte   $0F
        beq     LEA28
LEA28:  .byte   $0F
        brk
LEA2A:  beq     LEA1C
        .byte   $0F
        .byte   $0F
LEA2E:  sed
LEA2F:  beq     LEA31
LEA31:  brk
        php
        bpl     LEA35
LEA35:  brk
LEA36:  lda     $27
        bmi     LEA3B
        rts

LEA3B:  jsr     LEAD7
        lda     $31
        cmp     #$06
        bne     LEA4E
        lda     $6D
        cmp     #$0E
        bne     LEA4E
        lda     #$04
        sta     $36
LEA4E:  lda     $36
        jsr     LFF55
        ldy     #$03
        sty     $02
        lda     #$00
        sta     $10
        sta     $11
        sta     $12
LEA5F:  ldy     $02
        lda     LEB0B,y
        sta     $03
        lda     (L0000),y
        tax
        lda     $BEE0,x
        sta     $04
        pha
        txa
        pha
        ldx     LEB0F,y
        tya
        and     #$02
        beq     LEA80
        lda     $04
        and     #$F0
        jmp     LEA86

LEA80:  lda     $04
        lsr     a
        lsr     a
        lsr     a
        lsr     a
LEA86:  sta     $04
        lda     $11,x
        and     LEB13,x
        ora     $04
        sta     $11,x
        pla
        tax
        pla
        and     #$03
        cpy     #$00
        beq     LEA9F
LEA9A:  asl     a
        asl     a
        dey
        bne     LEA9A
LEA9F:  ora     $10
        sta     $10
        ldy     $03
        lda     $BAE0,x
        sta     $0140,y
        lda     $BBE0,x
        sta     $0141,y
        lda     $BCE0,x
        sta     $0144,y
        lda     $BDE0,x
        sta     $0145,y
        dec     $02
        bmi     LEAC4
        jmp     LEA5F

LEAC4:  lda     $24
        cmp     #$38
        bcc     LEAD6
        lda     $11
        and     #$0F
        sta     $11
        lda     $12
        and     #$0F
        sta     $12
LEAD6:  rts

LEAD7:  lda     #$00
        ldx     $36
        cpx     #$06
        bcc     LEAE1
        lda     #$01
LEAE1:  jsr     LFF55
        lda     #$00
        sta     $01
        lda     $24
        and     #$07
        tax
        ldy     $24
        lda     ($26),y
        asl     a
        rol     $01
        asl     a
        rol     $01
        clc
        adc     #$E0
        sta     L0000
        lda     $01
        adc     #$B6
        sta     $01
        rts

        .byte   $80
        rti

LEB05:  jsr     L0810
        .byte   $04
        .byte   $02
        .byte   $01
LEB0B:  brk
        .byte   $02
        php
        asl     a
LEB0F:  brk
        ora     (L0000,x)
        .byte   $01
LEB13:  beq     LEB05
        .byte   $0F
        .byte   $0F
LEB17:  brk
        .byte   $80
        brk
        .byte   $80
        brk
        .byte   $80
        brk
        .byte   $80
LEB1F:  jsr     L2120
        and     ($22,x)
        .byte   $22
        .byte   $23
        .byte   $23
LEB27:  ldx     #$00
        stx     L0000
        lda     ($32),y
        asl     a
        rol     L0000
        asl     a
        rol     L0000
        asl     a
        rol     L0000
        asl     a
        rol     L0000
        asl     a
        rol     L0000
        asl     a
        rol     L0000
        sta     $26
        lda     L0000
        sta     $27
        lda     $26
        adc     #$C0
        sta     $26
        lda     $27
        adc     #$7F
        sta     $27
        rts

LEB52:  lda     $50
        cmp     #$0C
        beq     LEB60
        lda     $0400,x
        and     #$DF
        sta     $0400,x
LEB60:  lda     #$00
        sta     $10
LEB64:  ldy     $40
        jsr     LEBE8
        ldy     $41
        sta     $42,y
        cmp     $10
        bcc     LEB9A
        sta     $10
        cpx     #$00
        bne     LEB80
        lda     $04
        sta     $4C
        lda     $05
        sta     $4B
LEB80:  lda     $03
        sec
        sbc     $FD
        clc
        adc     $22
        sta     $4A
        lda     $08
        sec
        sbc     $FB
        bcc     LEB9A
        beq     LEB9A
        lda     $4A
        clc
        adc     $2E
        sta     $4A
LEB9A:  cpx     #$01
        bcc     LEBA4
        lda     $10
        cmp     #$02
        bcs     LEBAA
LEBA4:  inc     $40
        dec     $41
        bpl     LEB64
LEBAA:  cpx     #$01
        bcs     LEBBD
        lda     $10
        cmp     #$05
        beq     LEBC8
        cmp     #$06
        beq     LEBE3
        cmp     #$07
        beq     LEBDB
        rts

LEBBD:  lda     $10
        cmp     #$06
        beq     LEBE3
        cmp     #$07
        beq     LEBDB
        rts

LEBC8:  lda     $0500,x
        sec
        sbc     $FD
        clc
        adc     $22
        tay
        lda     ($34),y
        and     #$1F
        sta     $5B
        sta     $6D
        rts

LEBDB:  lda     $0400,x
        ora     #$20
        sta     $0400,x
LEBE3:  lda     #$00
        sta     $10
        rts

LEBE8:  lda     #$00
        sta     $02
        lda     LED19,y
        bpl     LEBF3
        dec     $02
LEBF3:  lda     $04F0,x
        clc
        adc     LED19,y
        sta     $06
        lda     $0500,x
        adc     $02
        sta     $03
        bmi     LEC4D
        lda     $06
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        pha
        and     #$01
        sta     $04
        pla
        lsr     a
        and     #$07
        sta     $05
        lda     $0520,x
        sta     $08
        lda     LECAD,y
        bmi     LEC36
        lda     $0510,x
        clc
        adc     LECAD,y
        bcs     LEC2D
        cmp     #$F0
        bcc     LEC31
LEC2D:  adc     #$0F
        inc     $08
LEC31:  sta     $07
        jmp     LEC4D

LEC36:  lda     LECAD,y
        eor     #$FF
        sta     $09
        inc     $09
        lda     $0510,x
        sec
        sbc     $09
        bcs     LEC4B
        sbc     #$0F
        dec     $08
LEC4B:  sta     $07
LEC4D:  lda     $07
        sec
        sbc     $FA
        lda     $08
        sbc     $FB
        beq     LEC6D
        bcs     LEC62
        cpx     #$02
        bcs     LEC62
        cpy     #$06
        bcc     LEC65
LEC62:  lda     #$00
        rts

LEC65:  lda     $FA
        sta     $07
        lda     $FB
        sta     $08
LEC6D:  lda     $03
        and     #$01
        tay
        lda     $07
        lsr     a
        lsr     a
        pha
        and     #$38
        ora     LECA7,y
        ora     $05
        sta     $05
        asl     a
        sta     $02
        pla
        lsr     a
        and     #$02
        ora     $04
        sta     $04
        and     #$01
        clc
        adc     $02
        tay
        lda     $0600,y
        sta     $02
        ldy     $04
        lda     LECA9,y
        beq     LECA0
        and     $02
        rts

LECA0:  lda     $02
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        rts

LECA7:  brk
        rti

LECA9:  .byte   $0F
        .byte   $0F
        brk
        brk
LECAD:  sbc     L0000,x
        .byte   $0B
        sbc     L0000,x
        .byte   $0B
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $FF
        ora     ($01,x)
        .byte   $FF
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        inc     LFEFE,x
        .byte   $FF
        brk
        ora     ($FF,x)
        brk
        ora     ($02,x)
        .byte   $02
        .byte   $02
        inc     LFEFE,x
        sbc     LF907,y
        .byte   $07
        php
        php
        sed
        sed
        .byte   $FC
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $FE
        .byte   $FE
LECE1:  sbc     $0300,x
        sbc     $0300,x
        cpx     LECEC
        .byte   $FD
        .byte   $FD
LECEC:  sbc     $1010,x
        beq     LECE1
        sbc     $0300,x
        sbc     $0300,x
LECF7:  .byte   $04
        .byte   $04
LECF9:  .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        sbc     (L0000),y
        .byte   $0F
        sbc     (L0000),y
        .byte   $0F
        bpl     LED15
        bpl     LECF7
        beq     LECF9
        sbc     $0700,y
        sbc     $0700,y
        php
        php
        php
        sed
        sed
        sed
LED15:  php
        php
        .byte   $FC
        .byte   $FC
LED19:  .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $F4
        .byte   $F4
        .byte   $F4
        sbc     L0000,x
        .byte   $0B
        sbc     L0000,x
        .byte   $0B
        .byte   $02
        .byte   $02
        .byte   $02
        inc     LFEFE,x
        .byte   $FF
        ora     ($01,x)
        .byte   $FF
        ora     ($01,x)
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $FF
        brk
        ora     ($FF,x)
        brk
        ora     ($09,x)
        ora     #$F7
        .byte   $F7
        sed
        php
        sed
        php
        .byte   $14
        .byte   $14
        cpx     LFFEC
        ora     ($FF,x)
        ora     ($04,x)
        .byte   $04
        .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FF
        brk
        ora     ($FF,x)
        brk
        ora     ($FD,x)
        .byte   $03
        .byte   $FD
        .byte   $03
LED5D:  .byte   $0C
        .byte   $0C
LED5F:  .byte   $0C
        .byte   $F4
        .byte   $F4
        .byte   $F4
        sbc     L0000,x
        .byte   $0B
        sbc     L0000,x
        .byte   $0B
LED69:  bpl     LED7B
LED6B:  bpl     LED5D
        beq     LED5F
        sbc     (L0000),y
        .byte   $0F
        sbc     (L0000),y
        .byte   $0F
        bpl     LED87
        bpl     LED69
        beq     LED6B
LED7B:  sbc     $0700,y
        sbc     $0700,y
        sbc     LFD07,y
        .byte   $03
LED85:  lda     $06
LED87:  and     #$0F
        sta     $06
        lda     $04F0,x
        sec
        sbc     $06
        sta     $04F0,x
        lda     $0500,x
        sbc     #$00
        sta     $0500,x
        rts

LED9D:  lda     $06
        and     #$0F
        eor     #$0F
        sec
        adc     $04F0,x
        sta     $04F0,x
        lda     $0500,x
        adc     #$00
        sta     $0500,x
        rts

LEDB3:  lda     $07
        and     #$0F
        eor     #$0F
        sec
        adc     $0510,x
        sta     $0510,x
        cmp     #$F0
        bcc     LEDD1
        adc     #$0F
        sta     $0510,x
        lda     $0520,x
        adc     #$00
        sta     $0520,x
LEDD1:  rts

LEDD2:  lda     $07
        and     #$0F
        sta     $07
        lda     $0510,x
        sec
        sbc     $07
        sta     $0510,x
        bcs     LEDF0
        sbc     #$0F
        sta     $0510,x
        lda     $0520,x
        sbc     #$01
        sta     $0520,x
LEDF0:  rts

LEDF1:  lda     $31
        cmp     #$08
        bcs     LEE15
        and     #$0F
        tay
        lda     LEE07,y
        sta     L0000
        lda     LEE0E,y
        sta     $01
        jmp     (L0000)

LEE07:  ora     $2D,x
        adc     ($B8),y
        nop
        .byte   $5C
        .byte   $76
LEE0E:  inc     LEEEE
        inc     LEFEE
        .byte   $EF
LEE15:  ldy     $22
        lda     ($32),y
        cmp     #$0F
        bcc     LEE60
        cmp     #$14
        beq     LEE60
        lda     #$01
        jsr     LC319
        lda     #$81
        sta     $1A
        jmp     LEE5C

        ldy     $22
        lda     ($32),y
        cmp     #$25
        bcs     LEE3D
        lda     #$01
        jsr     LC2F9
        jmp     LEE5C

LEE3D:  cmp     #$27
        bcs     LEE4F
LEE41:  lda     $FC
        cmp     #$E9
        bcs     LEE57
        lda     #$02
        jsr     LC2F9
        jmp     LEE5C

LEE4F:  cmp     #$28
        bcc     LEE41
        cmp     #$2A
        bcs     LEE61
LEE57:  lda     #$03
        jsr     LC2F9
LEE5C:  lda     #$FF
        sta     $18
LEE60:  rts

LEE61:  cmp     #$34
        beq     LEE60
        lda     #$82
        sta     $1A
        lda     #$02
LEE6B:  jsr     LC319
        jmp     LEE5C

        ldy     $22
        lda     ($32),y
        cmp     #$43
        beq     LEEB1
        cmp     #$47
        bne     LEE96
        lda     $FC
        bne     LEE60
        lda     #$15
        sta     $70
        lda     #$14
        sta     $71
        lda     #$11
        jsr     LC2F9
        lda     #$83
        sta     $1A
        lda     #$03
        bne     LEE6B
LEE96:  cmp     #$4B
        bne     LEE60
        lda     $FA
        cmp     #$58
        bcc     LEE60
        lda     #$05
        sta     $6D
LEEA4:  lda     #$85
        sta     $1A
        lda     #$04
        jsr     LC2F9
        lda     #$05
        bne     LEE6B
LEEB1:  lda     $FA
        cmp     #$58
        bcs     LEEA4
LEEB7:  rts

        ldy     $22
        lda     ($32),y
        cmp     #$69
        bcs     LEEC8
        lda     #$05
        jsr     LC2F9
        jmp     LEE5C

LEEC8:  cmp     #$6B
        bcs     LEED4
        lda     #$06
LEECE:  jsr     LC2F9
        jmp     LEE5C

LEED4:  lda     $FA
        cmp     #$58
        bcc     LEEB7
        lda     #$07
        sta     $6D
        lda     #$02
        jsr     LC319
        lda     #$82
        sta     $1A
        jmp     LEE5C

        ldy     $22
        lda     ($32),y
LEEEE:  cmp     #$88
        bcs     LEEF6
        lda     #$07
        bne     LEECE
LEEF6:  cmp     #$8F
        bne     LEF1B
        lda     $FA
        cmp     #$58
        bcc     LEF1B
        lda     #$80
        sta     $1A
        lda     #$30
        sta     $030D
        lda     #$2C
        sta     $030E
        lda     #$21
        sta     $030F
        lda     #$00
LEF15:  jsr     LC319
        jmp     LEE5C

LEF1B:  cmp     #$93
        bne     LEF33
        lda     $FC
        bne     LEF33
        lda     #$43
        sta     $70
        lda     #$42
        sta     $71
        lda     #$87
        sta     $1A
        lda     #$07
        bne     LEF15
LEF33:  cmp     #$94
        bne     LEF3F
        lda     #$07
        jsr     LC2F9
        jmp     LEE5C

LEF3F:  cmp     #$8A
        bne     LEF5B
        lda     $FC
        cmp     #$9C
        bne     LEF5B
        lda     #$30
        sta     $030D
        lda     #$2C
        sta     $030E
        lda     #$21
        sta     $030F
        jmp     LEE5C

LEF5B:  rts

        ldy     $22
        lda     ($32),y
        cmp     #$A4
        bne     LEF3F
        lda     $FA
        cmp     #$58
        bcc     LEF3F
        lda     #$88
        sta     $1A
        lda     #$08
        jsr     LC319
        jmp     LEE5C

        ldy     $22
        lda     ($32),y
        cmp     #$05
        beq     LEFA4
        cmp     #$04
        beq     LEFAB
        cmp     #$0B
        bcs     LEF93
        rts

LEF87:  lda     #$07
        jsr     LC319
        lda     #$87
LEF8E:  sta     $1A
        jmp     LEE5C

LEF93:  cmp     #$98
        beq     LEFBD
        lda     #$0D
        sta     $6D
        lda     #$09
        jsr     LC319
        lda     #$89
        bne     LEF8E
LEFA4:  lda     $FA
        cmp     #$5A
        bcs     LEF87
        rts

LEFAB:  lda     $FC
        cmp     #$A0
        bcc     LEFB9
        lda     #$17
LEFB3:  jsr     LC2F9
        jmp     LEE5C

LEFB9:  lda     #$09
        bne     LEFB3
LEFBD:  rts

LEFBE:  lda     $3D
        bpl     LF007
        and     #$7F
        sta     L0000
        tay
        sty     $01
        ldx     #$00
        lda     $3E
        inc     $3E
        cmp     LF04A,y
        bne     LF007
        ldy     $01
        stx     $3E
        lda     $3F
        inc     $3F
        cmp     LF049,y
        bne     LEFE3
        stx     $3F
LEFE3:  clc
        adc     #$02
        adc     L0000
        tay
        ldx     LF049,y
LEFEC:  .byte   $BD
        php
LEFEE:  beq     LF020
        .byte   $14
        tay
        inx
        lda     #$03
        sta     L0000
LEFF7:  lda     LF008,x
        sta     $0300,y
        inx
        iny
        dec     L0000
        bne     LEFF7
        beq     LEFEC
        sta     $18
LF007:  rts

LF008:  ora     $1116
        ora     ($FF,x)
        ora     $1105
        ora     ($FF,x)
        ora     $110F
        ora     ($FF,x)
        ora     $1105
        ora     ($FF,x)
        ora     $1116
        .byte   $01
LF020:  .byte   $FF
        ora     $1126
        ora     ($FF,x)
        ora     $040C
        ora     ($FF,x)
        ora     $0C04
        ora     ($FF,x)
        ora     $1C
        .byte   $02
        .byte   $30
LF034:  .byte   $FF
        ora     $02
        bmi     LF055
        .byte   $FF
        ora     $30
        .byte   $1C
        .byte   $02
        .byte   $FF
        ora     ($10,x)
        .byte   $37
        and     ($FF,x)
        ora     ($37,x)
        bpl     LF069
        .byte   $FF
LF049:  .byte   $05
LF04A:  php
        brk
        ora     $0A
        .byte   $0F
        .byte   $14
        ora     $1001,y
        .byte   $1E
        .byte   $23
LF055:  .byte   $02
        .byte   $02
        plp
        and     $0132
        asl     $37
        .byte   $3C
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
LF069:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LF200:  sta     $40
        sty     $41
        jsr     LF4FD
        cpx     #$02
        bcs     LF23F
        jsr     LF612
        bcc     LF23F
        lda     #$04
        cmp     $10
        bcs     LF218
        sta     $10
LF218:  lda     $04F0,x
        sbc     $10
        sta     $04F0,x
        lda     $0500,x
        sbc     #$00
        sta     $0500,x
        lda     $04F0,x
        sec
        sbc     $6E,x
        lda     $0500,x
        sbc     $6F,x
        bcs     LF23F
        lda     #$03
        sta     $40
        jsr     LF29A
        jmp     LF24B

LF23F:  jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LF24B
        jsr     LED85
LF24B:  lda     $0400,x
        ora     #$40
        sta     $0400,x
        rts

LF254:  sta     $40
        sty     $41
        jsr     LF51B
        cpx     #$02
        bcs     LF29A
        jsr     LF612
        bcc     LF29A
        lda     #$04
        cmp     $10
        bcs     LF26C
        sta     $10
LF26C:  lda     $04F0,x
        clc
        adc     $10
        sta     $04F0,x
        lda     $0500,x
        adc     #$00
        sta     $0500,x
        lda     $04F0,x
        sec
        sbc     $6E,x
        sta     L0000
        lda     $0500,x
        sbc     $6F,x
        ora     L0000
        beq     LF29A
        bcc     LF29A
        lda     #$00
        sta     $40
        jsr     LF23F
        jmp     LF2A6

LF29A:  jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LF2A6
        jsr     LED9D
LF2A6:  lda     $0400,x
        and     #$BF
        sta     $0400,x
        rts

        sta     $40
        sty     $41
        jsr     LF539
        jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LF2C2
        jsr     LEDD2
LF2C2:  rts

        sta     $40
        sty     $41
        jsr     LF55E
        jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LF2D6
        jsr     LEDB3
LF2D6:  rts

LF2D7:  sta     $40
        sty     $41
        lda     $0510,x
        sta     $02
        lda     $0520,x
        sta     $03
        lda     $0560,x
        bmi     LF2ED
        jmp     LF3C4

LF2ED:  jsr     LF5A4
        cpx     #$02
        bcs     LF31F
        jsr     LF64A
        bcc     LF31F
        lda     #$04
        cmp     $11
        bcs     LF301
        sta     $11
LF301:  lda     $0510,x
        sec
        sbc     $11
        sta     $0510,x
        bcs     LF319
        sbc     #$0F
        sta     $0510,x
        lda     $0520,x
        sbc     #$01
        sta     $0520,x
LF319:  jsr     LF49C
        jmp     LF347

LF31F:  jsr     LF5DA
        lda     $5C
        bne     LF366
LF326:  jsr     LEB52
        clc
        lda     $10
        cmp     #$01
        bcc     LF34B
        bne     LF33A
        lda     $07
        and     #$0F
        cmp     #$08
        bcs     LF360
LF33A:  cpx     #$01
        bcs     LF344
        lda     $10
        cmp     #$02
        beq     LF360
LF344:  jsr     LEDD2
LF347:  jsr     LF5FC
        sec
LF34B:  rts

LF34C:  lda     $0560
        cmp     #$FA
        beq     LF359
        cmp     #$F9
        bcc     LF359
        clc
        rts

LF359:  lda     #$00
        sta     $5C
        jmp     LF344

LF360:  cpx     #$01
        bcs     LF326
        inc     $5C
LF366:  cpx     #$01
        bcs     LF326
        ldy     #$02
        sty     $41
        lda     #$3A
        sta     $40
        jsr     LEB52
        clc
        lda     $10
        cmp     #$01
        bcc     LF3A3
        cmp     #$01
        beq     LF386
        cmp     #$02
        beq     LF386
        bne     LF3A2
LF386:  lda     $50
        cmp     #$0D
        beq     LF347
        lda     #$0D
        sta     $50
        lda     #$12
        jsr     LF850
        lda     #$00
        sta     $5C
        lda     $10
        cmp     #$02
        bne     LF39F
LF39F:  jsr     LF5FC
LF3A2:  rts

LF3A3:  lda     #$06
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        clc
        lda     $10
        cmp     #$01
        bcc     LF3A2
        cmp     #$01
        beq     LF34C
        cmp     #$02
        beq     LF3A2
        lda     #$00
        sta     $5C
        jmp     LF344

LF3C4:  lda     $40
        sec
        adc     $41
        sta     $40
        jsr     LF581
        cpx     #$01
        bcs     LF42A
        jsr     LF64A
        bcc     LF42A
        lda     $0420,y
        cmp     #$30
        beq     LF402
        cmp     #$32
        beq     LF402
        cmp     #$3A
        beq     LF402
        cmp     #$3C
        beq     LF402
        lda     $0420,y
        cmp     #$33
        bne     LF3FE
        lda     $31
        cmp     #$03
        bne     LF3FE
        jsr     LF928
        cmp     #$0C
        bcs     LF402
LF3FE:  lda     #$0E
        sta     $50
LF402:  lda     #$04
        cmp     $11
        bcs     LF40A
        sta     $11
LF40A:  lda     $0510,x
        clc
        adc     $11
        sta     $0510,x
        cmp     #$F0
        bcc     LF424
        adc     #$0F
        sta     $0510,x
        lda     $0520,x
        adc     #$00
        sta     $0520,x
LF424:  jsr     LF49C
        jmp     LF471

LF42A:  jsr     LF5DA
        jsr     LEB52
        lda     $10
        cmp     #$01
        bcc     LF474
        cpx     #$01
        bcs     LF46E
        cmp     #$01
        beq     LF45B
        cmp     #$04
        beq     LF476
        cmp     #$02
        bne     LF46E
        lda     $50
        cmp     #$0D
        beq     LF471
        lda     $43
        beq     LF474
        lda     #$12
        jsr     LF850
        lda     #$0D
        sta     $50
        bne     LF471
LF45B:  lda     $50
        cmp     #$04
        beq     LF471
        lda     $43
        beq     LF474
        lda     #$04
        sta     $50
        lda     #$12
        jsr     LF850
LF46E:  jsr     LEDB3
LF471:  jsr     LF5FC
LF474:  clc
        rts

LF476:  lda     $7C
        bne     LF494
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
        rts

LF494:  jsr     LEDB3
        jsr     LF5FC
        clc
        rts

LF49C:  lda     $0510,x
        sec
        sbc     $02
        lda     $0520,x
        sbc     $03
        bcs     LF4BE
        lda     #$09
        sta     $40
        jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LF4BD
        jsr     LEDB3
        jsr     LF5FC
        clc
LF4BD:  rts

LF4BE:  lda     #$06
        sta     $40
        jsr     LEB52
        lda     $10
        cmp     #$02
        bcc     LF4D5
        bne     LF4CD
LF4CD:  jsr     LEDD2
        jsr     LF5FC
        sec
        rts

LF4D5:  clc
        rts

LF4D7:  sta     $40
        sty     $41
        jsr     LF5A4
        jsr     LF5DA
        jsr     LEB52
        lda     $10
        cmp     #$01
        bcc     LF4FB
        bne     LF4F3
        lda     $0560,x
        cmp     #$FC
        bcs     LF4FB
LF4F3:  jsr     LEDD2
        jsr     LF5FC
        sec
        rts

LF4FB:  clc
        rts

LF4FD:  lda     $0470,x
        clc
        adc     $0530,x
        sta     $0470,x
        lda     $04F0,x
        adc     $0540,x
        sta     $04F0,x
        bcc     LF51A
        lda     $0500,x
        adc     #$00
        sta     $0500,x
LF51A:  rts

LF51B:  lda     $0470,x
        sec
        sbc     $0530,x
        sta     $0470,x
        lda     $04F0,x
        sbc     $0540,x
        sta     $04F0,x
        bcs     LF538
        lda     $0500,x
        sbc     #$00
        sta     $0500,x
LF538:  rts

LF539:  lda     $0460,x
        clc
        adc     $0550,x
        sta     $0460,x
        lda     $0510,x
        adc     $0560,x
        sta     $0510,x
        cmp     #$F0
        bcc     LF55D
        adc     #$0F
        sta     $0510,x
        lda     $0520,x
        adc     #$00
        sta     $0520,x
LF55D:  rts

LF55E:  lda     $0460,x
        sec
        sbc     $0550,x
        sta     $0460,x
        lda     $0510,x
        sbc     $0560,x
        sta     $0510,x
        bcs     LF580
        sbc     #$0F
        sta     $0510,x
        lda     $0520,x
        sbc     #$01
        sta     $0520,x
LF580:  rts

LF581:  lda     $0460,x
        sec
        sbc     $0550,x
        sta     $0460,x
        lda     $0510,x
        sbc     $0560,x
        sta     $0510,x
        bcs     LF5A3
        sbc     #$0F
        sta     $0510,x
        lda     $0520,x
        sbc     #$01
        sta     $0520,x
LF5A3:  rts

LF5A4:  lda     $0460,x
        sec
        sbc     $0550,x
        sta     $0460,x
        lda     $0510,x
        sbc     $0560,x
        sta     $0510,x
        cmp     #$F0
        bcc     LF5C8
        adc     #$0F
        sta     $0510,x
        lda     $0520,x
        adc     #$00
        sta     $0520,x
LF5C8:  rts

LF5C9:  lda     $0560,x
        bpl     LF5D4
        jsr     LF5A4
        jmp     LF5DA

LF5D4:  jsr     LF581
        jmp     LF5DA

LF5DA:  lda     $0550,x
        sec
        sbc     $99
        sta     $0550,x
        lda     $0560,x
        sbc     #$00
        sta     $0560,x
        bpl     LF5FB
        cmp     #$F9
        bcs     LF5FB
        lda     #$F8
        sta     $0560,x
        lda     #$00
        sta     $0550,x
LF5FB:  rts

LF5FC:  lda     #$AB
        sta     $0550,x
        lda     #$FF
        sta     $0560,x
        rts

LF607:  lda     #$AB
        sta     $0550
        lda     #$FF
        sta     $0560
        rts

LF612:  txa
        eor     #$01
        tay
        lda     $04D0,y
        bpl     LF646
        lda     $0400,x
        bpl     LF646
        lda     $0400,y
        bpl     LF646
        lda     $04E0,y
        beq     LF646
        jsr     LF699
        cmp     #$11
        bcs     LF646
        sta     $10
        lda     #$11
        sbc     $10
        sta     $10
        jsr     LF6DF
        cmp     #$18
        bcs     LF646
        bcc     LF642
LF642:  bmi     LF646
        sec
        rts

LF646:  clc
        jmp     LF724

LF64A:  txa
        eor     #$01
        tay
        lda     $04D0,y
        bpl     LF695
        lda     $0400,x
        bpl     LF695
        lda     $0400,y
        bpl     LF695
        lda     $04E0,y
        beq     LF695
        jsr     LF699
        cmp     #$10
        bcs     LF695
        jsr     LF6DF
        bcs     LF695
        cmp     #$19
        bcs     LF695
        sta     $11
        lda     $0420,y
        beq     LF682
LF679:  lda     #$19
        sbc     $11
        sta     $11
        jmp     LF68E

LF682:  lda     $11
        cmp     #$11
        bcs     LF695
        lda     #$11
        sbc     $11
        sta     $11
LF68E:  rts

        cmp     #$10
        sta     $11
        bcc     LF679
LF695:  clc
        jmp     LF784

LF699:  lda     $0400,x
        and     #$10
        beq     LF6C6
        lda     $04F0,x
        sec
        sbc     $04F0,y
        sta     L0000
        lda     $0500,x
        sbc     $0500,y
        sta     $01
        bcs     LF6C3
        lda     L0000
        eor     #$FF
        adc     #$01
        sta     L0000
        lda     $01
        eor     #$FF
        adc     #$00
        sta     $01
LF6C3:  lda     L0000
        rts

LF6C6:  lda     $04F0,y
        sec
        sbc     $FC
        sta     L0000
        sec
        sbc     $04F0,x
        bcs     LF6D8
        eor     #$FF
        adc     #$01
LF6D8:  sta     L0000
        lda     #$00
        sta     $01
        rts

LF6DF:  lda     $0510,y
        sta     L0000
        lda     $0520,y
        sta     $01
        cmp     $0520,x
        beq     LF70B
        bcc     LF6FF
        lda     L0000
        sbc     #$10
        sta     L0000
        lda     $01
        sbc     #$00
        sta     $01
        jmp     LF70B

LF6FF:  lda     L0000
        adc     #$10
        sta     L0000
        lda     $01
        adc     #$00
        sta     $01
LF70B:  lda     $0510,x
        sec
        sbc     L0000
        sta     L0000
        lda     $0520,x
        sbc     $01
        php
        lda     L0000
        bpl     LF722
        eor     #$FF
        clc
        adc     #$01
LF722:  plp
        rts

LF724:  ldy     #$02
LF726:  lda     $04D0,y
        bpl     LF747
        lda     $0400,y
        bpl     LF747
        lda     $0570,y
        bpl     LF747
        lda     $50
        cmp     #$0B
        beq     LF747
        sty     $12
        jsr     LF74E
        ldy     $12
        bcc     LF747
        jmp     LF7DE

LF747:  iny
        cpy     #$10
        bne     LF726
        clc
        rts

LF74E:  lda     $0570,y
        and     #$1F
        sta     $02
        jsr     LF699
        lda     $01
        bne     LF782
        lda     L0000
        ldy     $02
        cmp     LFC09,y
        beq     LF767
        bcs     LF782
LF767:  sta     $03
        ldy     $12
        jsr     LF6DF
        sta     $04
        ldy     $02
        cmp     LFBE9,y
        bcs     LF782
        ldy     $02
        lda     LFC09,y
        sec
        sbc     $03
        sta     $10
        rts

LF782:  clc
        rts

LF784:  ldy     #$02
LF786:  lda     $04D0,y
        bpl     LF7A1
        lda     $0400,y
        bpl     LF7A1
        lda     $0570,y
        bpl     LF7A1
        sty     $12
        jsr     LF7A8
        ldy     $12
        bcc     LF7A1
        jmp     LF7DE

LF7A1:  iny
        cpy     #$10
        bne     LF786
        clc
        rts

LF7A8:  lda     $0570,y
        and     #$1F
        sta     $02
        jsr     LF699
        lda     $01
        bne     LF7DC
        lda     L0000
        ldy     $02
        cmp     LFC09,y
        bcs     LF7DC
        ldy     $12
        jsr     LF6DF
        sta     $04
        ldy     $02
        cmp     LFBE9,y
        beq     LF7CF
        bcs     LF7DC
LF7CF:  sta     $03
        ldy     $02
        lda     LFBE9,y
        sec
        sbc     $03
        sta     $11
        rts

LF7DC:  clc
        rts

LF7DE:  sec
        rts

        lda     $F1
        pha
        lda     #$04
        sta     $2F
        jsr     LDC6E
        pla
        jmp     LFF55

LF7EE:  lda     #$01
        sta     $0580,x
        lda     $04F0,x
        sec
        sbc     $04F0
        lda     $0500,x
        sbc     $0500
        bcc     LF807
        lda     #$02
        sta     $0580,x
LF807:  rts

LF808:  lda     $0580,x
        ror     a
        ror     a
        ror     a
        and     #$40
        sta     L0000
        lda     $0400,x
        and     #$BF
        ora     L0000
        sta     $0400,x
        rts

        jsr     LF7EE
        jsr     LF808
        rts

        jsr     LF93F
        sta     L0000
        lda     $0580,x
        clc
        adc     #$08
        and     #$0F
        sec
        sbc     L0000
        and     #$0F
        sec
        sbc     #$08
        beq     LF84D
        bcs     LF842
        inc     $0580,x
        bne     LF845
LF842:  dec     $0580,x
LF845:  lda     $0580,x
        and     #$0F
        sta     $0580,x
LF84D:  rts

LF84E:  sta     $D9
LF850:  stx     L0000
        ldx     $DA
        sta     $01
        lda     $DC,x
        cmp     #$88
        bne     LF866
        lda     $01
        sta     $DC,x
        inx
        txa
        and     #$07
        sta     $DA
LF866:  ldx     L0000
        rts

        lda     #$00
        sta     $0410,x
        sta     $0430,x
        rts

        lda     #$14
        jsr     LFA84
        lda     #$00
        sta     $04E0,y
        sta     $0570,y
        rts

        lda     $3B
        cmp     #$01
        bne     LF892
        lda     #$00
        sta     $50
        ldy     $31
        lda     LF893,y
        jsr     LFA6C
LF892:  rts

LF893:  txs
        .byte   $6B
        jmp     L504A

        .byte   $6F
        adc     ($A5,x)
        sbc     ($48),y
        inc     $9A
        jsr     LC21E
        lda     #$05
        jsr     LFF55
        jsr     L8000
        lda     #$00
        sta     $9A
        jsr     LFF06
        pla
        jmp     LFF55

        lda     $F1
        pha
        inc     $9A
        jsr     LC21E
        lda     #$04
        jsr     LFF55
        jsr     L9800
        lda     #$00
        sta     $9A
        jsr     LFF06
        pla
        jmp     LFF55

        lda     $F1
        pha
        jsr     LC276
        jsr     LC21E
        jsr     LFF06
        jsr     LC14E
        lda     #$20
        ldx     #$01
        ldy     #$00
        jsr     LC1BA
        pla
        jmp     LFF55

        lda     $F1
        pha
        jsr     LC21E
        jsr     LFF06
        jsr     LC14E
        pla
        jmp     LFF55

        lda     $F1
        pha
        jsr     LC158
        jsr     LFF06
        .byte   $20
        .byte   $70
LF907:  .byte   $C2
        pla
        jmp     LFF55

        lda     $F1
        pha
        jsr     LC158
        jsr     LFF06
        pla
        jmp     LFF55

LF919:  lda     $0510
        sec
        sbc     $0510,x
        bcs     LF927
        eor     #$FF
        adc     #$01
        clc
LF927:  rts

LF928:  lda     $04F0
        sec
        sbc     $04F0,x
        pha
        lda     $0500
        sbc     $0500,x
        pla
        bcs     LF93E
        eor     #$FF
        adc     #$01
        clc
LF93E:  rts

LF93F:  ldy     #$00
        lda     $0510
        sec
        sbc     $0510,x
        pha
        lda     $0520
        sbc     $0520,x
        pla
        ldy     #$00
        bcs     LF95A
        eor     #$FF
        adc     #$01
        ldy     #$04
LF95A:  sta     L0000
        lda     $04F0
        sec
        sbc     $04F0,x
        pha
        lda     $0500
        sbc     $0500,x
        pla
        bcs     LF973
        eor     #$FF
        adc     #$01
        iny
        iny
LF973:  sta     $01
        cmp     L0000
        bcs     LF982
        pha
        lda     L0000
        sta     $01
        pla
        sta     L0000
        iny
LF982:  lda     #$00
        sta     $02
        lda     $01
        lsr     a
        lsr     a
        cmp     L0000
        bcs     LF997
        inc     $02
        asl     a
        cmp     L0000
        bcs     LF997
        inc     $02
LF997:  tya
        asl     a
        asl     a
        clc
        adc     $02
        tay
        lda     LF9A2,y
        rts

LF9A2:  .byte   $04
        ora     $06
        .byte   $04
        php
        .byte   $07
        asl     $04
        .byte   $0C
        .byte   $0B
        asl     a
        .byte   $04
        php
        ora     #$0A
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $02
        .byte   $04
        brk
        ora     ($02,x)
        .byte   $04
        .byte   $0C
        ora     $040E
        brk
        .byte   $0F
        .byte   $0E
        .byte   $04
LF9C2:  lda     $7C
        beq     LF9F6
        cmp     #$3C
        bne     LF9F6
        lda     #$0F
        sta     $51
        lda     $50
        cmp     #$04
        beq     LF9E2
        cmp     #$0E
        beq     LF9E2
        cmp     #$0D
        beq     LF9E2
        jsr     LFA29
        jsr     LFA78
LF9E2:  lda     $50
        sta     $58
        lda     #$06
        sta     $50
        lda     $05B4
        cmp     #$82
        beq     LF9F7
        lda     #$82
        sta     $05B4
LF9F6:  rts

LF9F7:  lda     $05B8
        cmp     #$83
        beq     LFA04
        lda     #$83
        sta     $05B8
        rts

LFA04:  lda     $05B6
        cmp     #$83
        beq     LFA11
        lda     #$83
        sta     $05B6
        rts

LFA11:  lda     #$82
        sta     $05B2
        lda     #$00
        sta     $7C
        lda     #$07
        sta     $50
        lda     #$80
        sta     $04D0
        lda     #$09
        jsr     LFA78
        rts

LFA29:  lda     $6D
        cmp     #$08
        bne     LFA3A
        lda     $0420,x
        cmp     #$4D
        bne     LFA49
        lda     #$1D
        bne     LFA4B
LFA3A:  cmp     #$0C
        bne     LFA49
        lda     $0420,x
        cmp     #$5D
        bne     LFA49
        lda     #$1C
        bne     LFA4B
LFA49:  lda     #$09
LFA4B:  rts

        ldy     #$0F
LFA4E:  lda     $04D0,y
        bpl     LFA5A
        dey
        cpy     #$04
        bne     LFA4E
        sec
        rts

LFA5A:  clc
        rts

        ldy     #$04
LFA5E:  lda     $04D0,y
        bpl     LFA6A
        dey
        cpy     #$01
        bne     LFA5E
        sec
        rts

LFA6A:  clc
        rts

LFA6C:  sta     $0420,x
        lda     #$00
        sta     $0430,x
        sta     $0410,x
        rts

LFA78:  sta     $0420
        lda     #$00
        sta     $0430
        sta     $0410
        rts

LFA84:  sta     $0420,y
        lda     #$00
        sta     $0430,y
        sta     $0410,y
        lda     #$80
        sta     $04D0,y
        lda     #$90
        sta     $0400,y
        rts

        lda     #$00
        sta     $04D0,x
        sta     $0400,x
        sta     $04C0,x
        sta     $04E0,x
        lda     #$FF
        sta     $0590,x
        rts

        lda     #$04
        sta     $10
LFAB2:  ldy     $10
        lda     $04D0,y
        bpl     LFAFE
        lda     $0400,y
        bpl     LFAFE
        lda     $04E0,y
        cmp     #$1F
        beq     LFAFE
        lda     $04D0,x
        beq     LFAFE
        lda     $04E0,x
        beq     LFAFE
        cmp     #$01
        beq     LFAFE
        cmp     #$02
        beq     LFAFE
        cmp     #$03
        beq     LFAFE
        cmp     #$04
        beq     LFAFE
        lda     $0400,x
        bpl     LFAFE
        and     #$04
        bne     LFB07
        lda     $04F0,y
        sta     L0000
        lda     $0500,y
        sta     $01
        lda     $0510,y
        sta     $02
        sty     $0F
        jsr     LFB08
        bcc     LFB07
LFAFE:  dec     $10
        lda     $10
        cmp     #$01
        bne     LFAB2
        sec
LFB07:  rts

LFB08:  sec
        lda     $0570,x
        and     #$1F
        tay
        lda     L0000
        sec
        sbc     $04F0,x
        pha
        lda     $01
        sbc     $0500,x
        pla
        bcs     LFB22
        eor     #$FF
        adc     #$01
LFB22:  cmp     LFB59,y
        bcs     LFB38
        lda     $02
        sec
        sbc     $0510,x
        bcs     LFB33
        eor     #$FF
        adc     #$01
LFB33:  cmp     LFB39,y
        bcc     LFB38
LFB38:  rts

LFB39:  .byte   $0F
        .byte   $0F
        ora     $070F
        .byte   $0B
        .byte   $0F
        .byte   $13
        .byte   $07
        .byte   $0B
        .byte   $04
        ora     #$13
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $0B
        .byte   $13
        .byte   $13
        ora     $0F0D
        .byte   $04
        .byte   $13
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LFB59:  asl     $0A0E
        .byte   $12
        asl     $0E12
        asl     $06
        asl     $0E04
        asl     $060A
        asl     a
        asl     a
        .byte   $12
        asl     a
        .byte   $0C
        php
        .byte   $0C
        .byte   $03
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LFB79:  sec
        rts

        lda     $50
        cmp     #$07
        beq     LFB79
        cmp     #$0F
        beq     LFB79
        lda     $0400
        bpl     LFB79
        lda     $04D0,x
        bpl     LFB79
        lda     $0400,x
        bpl     LFB79
        lda     $04E0,x
        cmp     #$07
        beq     LFB79
        sec
        lda     $0570,x
        beq     LFB79
        and     #$1F
        tay
        lda     LFBE9,y
        sta     L0000
        lda     $0420
        cmp     #$06
        beq     LFBB6
        cmp     #$07
        beq     LFBB6
        bne     LFBBD
LFBB6:  lda     L0000
        sec
        sbc     #$08
        sta     L0000
LFBBD:  lda     $04F0
        sec
        sbc     $04F0,x
        pha
        lda     $0500
        sbc     $0500,x
        pla
        bcs     LFBD2
        eor     #$FF
        adc     #$01
LFBD2:  cmp     LFC09,y
        bcs     LFBE8
        lda     $0510
        sec
        sbc     $0510,x
        bcs     LFBE4
        eor     #$FF
        adc     #$01
LFBE4:  cmp     L0000
        bcc     LFBE8
LFBE8:  rts

LFBE9:  asl     L000C,x
        .byte   $12
        asl     $0E,x
        .byte   $14
        asl     $1C,x
        asl     $12,x
        .byte   $0C
        bpl     LFC0C
        asl     $0E14
        .byte   $12
        .byte   $1A
        .byte   $1A
        .byte   $12
        .byte   $14
        asl     $16,x
        asl     $0E,x
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
LFC09:  asl     L000C,x
        .byte   $12
LFC0C:  .byte   $1A
        .byte   $0F
        .byte   $12
        asl     $10,x
        .byte   $0C
        asl     L000C,x
        bpl     LFC30
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $12
        asl     $12,x
        .byte   $12
        bpl     LFC33
        .byte   $1A
        asl     $10,x
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        lda     $0590,x
        pha
        and     #$07
        tay
LFC30:  lda     LFC43,y
LFC33:  sta     $10
        pla
        lsr     a
        lsr     a
        lsr     a
        tay
        lda     $0340,y
        ora     $10
        sta     $0340,y
        rts

LFC43:  ora     ($02,x)
        .byte   $04
        php
        bpl     LFC69
        rti

        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LFC69:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LFD07:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LFDFE:  brk
        brk
LFE00:  sei
        cld
        ldx     #$00
        stx     $2000
        stx     $2001
        dex
        txs
        ldy     #$04
LFE0E:  lda     $2002
        bpl     LFE0E
LFE13:  lda     $2002
        bmi     LFE13
        dey
        bne     LFE0E
        sty     $4010
        sty     $4015
        lda     #$40
        sta     $4017
        tya
LFE27:  sta     L0000,y
        dey
        bne     LFE27
LFE2D:  inc     $01
LFE2F:  sta     (L0000),y
        iny
        bne     LFE2F
        ldx     $01
        cpx     #$07
        bne     LFE2D
        lda     #$88
LFE3C:  sta     $DC,x
        dex
        bpl     LFE3C
        lda     #$1E
        sta     $FE
        lda     #$06
        jsr     LFF55
        lda     #$1E
        sta     $9FFF
        lsr     a
        sta     $9FFF
        lsr     a
        sta     $9FFF
        lsr     a
        sta     $9FFF
        lsr     a
        sta     $9FFF
        lda     #$00
        jsr     LFF21
        lda     #$10
        jsr     LFF3B
        jsr     LC21E
        lda     #$20
        ldx     #$01
        ldy     #$00
        jsr     LC1BA
        lda     #$24
        ldx     #$01
        ldy     #$00
        jsr     LC1BA
        lda     #$C5
        sta     $94
        lda     #$95
        sta     L0093
        lda     #$00
        jsr     LFED7
        lda     #$90
        sta     $FF
LFE8F:  ldx     #$FF
        txs
LFE92:  ldx     #$00
        stx     $90
        ldy     #$04
LFE98:  lda     $80,x
        cmp     #$04
        bcs     LFEA8
        inx
        inx
        inx
        inx
        dey
        bne     LFE98
        jmp     LFE92

LFEA8:  lda     $90
        bne     LFE92
        dey
        tya
        eor     #$03
        sta     $91
        ldy     $80,x
        lda     #$02
        sta     $80,x
        cpy     #$08
        bne     LFEC7
        lda     $82,x
        sta     L0093
        lda     $83,x
        sta     $94
        jmp     (L0093)

LFEC7:  lda     $82,x
        tax
        txs
        lda     $91
        bne     LFED2
        jsr     LC162
LFED2:  pla
        tay
        pla
        tax
        rts

LFED7:  jsr     LFEFB
        lda     L0093
        sta     $82,x
        lda     $94
        sta     $83,x
        lda     #$08
        sta     $80,x
        rts

        jsr     LFEFB
        lda     #$00
        sta     $80,x
        rts

        jsr     LFEF9
        lda     #$00
        sta     $80,x
        jmp     LFE8F

LFEF9:  lda     $91
LFEFB:  asl     a
        asl     a
        tax
LFEFE:  rts

LFEFF:  jsr     LFF06
        dex
        bne     LFEFF
        rts

LFF06:  lda     #$01
        sta     L0093
        txa
        pha
        tya
        pha
        jsr     LFEF9
        lda     L0093
        sta     $81,x
        lda     #$01
        sta     $80,x
        txa
        tay
        tsx
        stx     $82,y
        jmp     LFE8F

LFF21:  sta     $F2
        sta     $BFFF
        lsr     a
        sta     $BFFF
        lsr     a
        sta     $BFFF
        lsr     a
        sta     $BFFF
        lsr     a
        sta     $BFFF
        lda     #$00
        sta     $1A
        rts

LFF3B:  sta     $F3
        sta     LDFFF
        lsr     a
        sta     LDFFF
        lsr     a
        sta     LDFFF
        lsr     a
        sta     LDFFF
        lsr     a
        sta     LDFFF
        lda     #$00
        sta     $1B
        rts

LFF55:  sta     $F1
        sta     $F4
        inc     $F5
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lda     #$00
        sta     $F5
        lda     $F6
        bne     LFF77
        rts

LFF77:  lda     #$03
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
        lsr     a
        sta     LFFF0
LFF8C:  ldx     $DB
        lda     $DC,x
        cmp     #$88
        beq     LFFA6
        pha
        lda     #$88
        sta     $DC,x
        inx
        txa
        and     #$07
        sta     $DB
        pla
        jsr     L8003
        jmp     LFF8C

LFFA6:  jsr     L8000
        lda     #$00
        sta     $F6
        lda     $F4
        jmp     LFF55

        brk
        brk
        brk
        brk
        brk
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
LFFE0:  sei
LFFE1:  inc     LFFE1
        cld
        jmp     LFE00

        brk
        brk
        brk
        brk
LFFEC:  brk
        brk
        brk
        brk
LFFF0:  sty     $22
        rol     $3360
        .byte   $04
        brk
        brk
        php
        .byte   $33
        brk
        cpy     #$E0
        .byte   $FF
        cpx     #$FF
