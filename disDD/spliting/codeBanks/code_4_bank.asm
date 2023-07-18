; da65 V2.18 - N/A
; Created:    2023-07-17 12:53:26
; Input file: code_bank_4.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L006D           := $006D
L00FF           := $00FF
L0101           := $0101
L010C           := $010C
L0303           := $0303
L10C9           := $10C9
L1800           := $1800
L2100           := $2100
L2422           := $2422
L2821           := $2821
L3001           := $3001
L3420           := $3420
L4C4D           := $4C4D
L4D2E           := $4D2E
L506E           := $506E
L50D0           := $50D0
L6303           := $6303
L7435           := $7435
L803E           := $803E
L80DA           := $80DA
L80FC           := $80FC
L8828           := $8828
L888C           := $888C
L9005           := $9005
L904E           := $904E
L90E1           := $90E1
L9148           := $9148
L982F           := $982F
L98C7           := $98C7
LA874           := $A874
LAC54           := $AC54
LB030           := $B030
LB84C           := $B84C
LBCB8           := $BCB8
        ldx     $31
        lda     $81F3,x
        sta     $74
        lda     $81FA,x
        sta     $75
        lda     $8201,x
        sta     $72
        lda     $8208,x
        sta     $73
        lda     $820F,x
        sta     $78
        lda     $8216,x
        sta     $79
        lda     $821D,x
        sta     $76
        lda     $8224,x
        sta     $77
        lda     $822B,x
        sta     $7A
        lda     $8232,x
        sta     $7B
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
        ldy     #$00
LC042:  lda     ($78),y
        cmp     $FB
        bne     LC053
        lda     ($72),y
        sec
        sbc     $FC
        lda     ($74),y
        sbc     $FD
        bcs     LC07B
LC053:  iny
        bne     LC042
        beq     LC07B
        lda     $FC
        clc
        adc     #$FF
        sta     L0000
        lda     $FD
        adc     #$00
        sta     $01
        ldy     #$00
LC067:  lda     ($78),y
        cmp     $FB
        bne     LC078
        lda     ($72),y
        sec
        sbc     L0000
        lda     ($74),y
        sbc     $01
        bcc     LC07B
LC078:  iny
        bne     LC067
LC07B:  sty     $70
        sty     $71
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
        lda     $2F
        and     #$0F
        beq     LC0BE
        cmp     #$01
        beq     LC0BF
        cmp     #$02
        beq     LC0A6
        cmp     #$04
        beq     LC0BF
        cmp     #$08
        beq     LC0BF
LC0A6:  ldy     $71
        jsr     L80DA
        bne     LC0B4
        jsr     L80FC
        dec     $71
        bne     LC0A6
LC0B4:  ldy     $71
LC0B6:  iny
        jsr     L80DA
        beq     LC0B6
        sty     $70
LC0BE:  rts

LC0BF:  ldy     $70
        jsr     L80DA
        bne     LC0CD
        jsr     L80FC
        inc     $70
        bne     LC0BF
LC0CD:  ldy     $70
        beq     LC0D7
LC0D1:  dey
        jsr     L80DA
        beq     LC0D1
LC0D7:  sty     $71
        rts

        lda     ($72),y
        sta     L0000
        sec
        sbc     $FC
        lda     ($74),y
        sta     $01
        sbc     $FD
        bne     LC0FB
        lda     ($76),y
        sta     $02
        sec
        sbc     $FA
        bcs     LC0F5
        sbc     #$0F
        clc
LC0F5:  lda     ($78),y
        sta     $03
        sbc     $FB
LC0FB:  rts

        tya
        pha
        and     #$07
        tax
        lda     $81EB,x
        sta     $10
        pla
        lsr     a
        lsr     a
        lsr     a
        tax
        .byte   $BD
LC10C:  rti

        .byte   $03
        and     $10
        bne     LC0FB
        ldx     #$0F
        tya
LC115:  cmp     $0590,x
        beq     LC121
        dex
        cpx     #$04
        bne     LC115
        beq     LC126
LC121:  lda     $04D0,x
        bmi     LC0FB
LC126:  ldx     #$0F
LC128:  lda     $04D0,x
        bpl     LC133
        dex
        cpx     #$04
        bne     LC128
        rts

LC133:  tya
        sta     $0590,x
        lda     L0000
        sta     $04F0,x
        lda     $01
        sta     $0500,x
        lda     $02
        sta     $0510,x
        lda     $03
        sta     $0520,x
        lda     #$57
        sta     $06
        lda     #$8C
        sta     $07
        lda     #$B3
        sta     $04
        lda     #$8A
        sta     $05
        lda     ($7A),y
        asl     a
        asl     a
        lda     $07
        adc     #$00
        sta     $07
        lda     ($7A),y
        asl     a
        asl     a
        tay
        lda     $05
        adc     #$00
        sta     $05
        lda     ($04),y
        sta     $0400,x
        lda     ($06),y
        sta     $05A0,x
        iny
        lda     ($04),y
        sta     $04E0,x
        iny
        lda     ($04),y
        sta     $0420,x
        iny
        lda     ($04),y
        sta     $0570,x
        lda     #$80
        sta     $04D0,x
        jsr     LF7EE
        lda     $0420,x
        cmp     #$1C
        beq     LC1CA
        cmp     #$1D
        beq     LC1CA
        cmp     #$1E
        beq     LC1CA
        cmp     #$22
        beq     LC1CA
        cmp     #$23
        beq     LC1CA
        cmp     #$24
        beq     LC1CA
        cmp     #$25
        beq     LC1CA
        cmp     #$26
        beq     LC1CA
        cmp     #$27
        beq     LC1CA
        cmp     #$28
        beq     LC1CA
        cmp     #$9B
        beq     LC1CA
        cmp     #$56
        beq     LC1CA
        jsr     LF808
LC1CA:  jsr     LF5FC
        lda     #$00
        sta     $0430,x
        sta     $0410,x
        sta     $0460,x
        sta     $0470,x
        sta     $0480,x
        sta     $0490,x
        sta     $04A0,x
        sta     $04B0,x
        sta     $04C0,x
        rts

        ora     ($02,x)
        .byte   $04
        php
        bpl     LC211
        rti

        .byte   $80
        and     $6438,y
        clv
        dec     $56
        sta     ($82),y
        .byte   $83
        sty     $85
        stx     $88
        .byte   $89
        jmp     (LA874)

        inc     $9516
        .byte   $CB
        .byte   $82
        .byte   $83
        sty     $85
        .byte   $87
        dey
        .byte   $89
        .byte   $9F
        .byte   $B0
LC211:  cpx     $6624
        .byte   $D4
        ora     $82
        .byte   $83
        sty     $86
        .byte   $87
        dey
        txa
        .byte   $D2
        cpx     $5A30
        ldx     $13,y
        .byte   $3F
        .byte   $82
LC225:  .byte   $83
        sta     $86
        .byte   $87
        .byte   $89
        txa
        ora     $28
        .byte   $74
        bcc     LC236
        .byte   $52
        adc     $8483,y
        sta     $86
LC236:  dey
        .byte   $89
        txa
        brk
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        ora     $05
        ora     $05
        ora     $05
        ora     $05
        ora     $06
        .byte   $07
        .byte   $07
        php
        php
        php
        php
        ora     #$09
        ora     #$09
        ora     #$0A
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $0C
        .byte   $0C
        ora     $0E0E
        asl     $0E0E
        .byte   $0F
        .byte   $0F
LC268:  .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $FF
        bmi     LC2A6
        sei
        .byte   $80
        clv
        .byte   $04
        cpx     $F8
        clc
        lsr     $58,x
        bne     LC281
        clc
        cld
        tay
        pla
        bmi     LC2E7
        plp
        sec
LC281:  jsr     LD8B8
        dey
        tay
        inx
        cpx     $3838
        cli
        cli
        cpx     LCC6C
        lsr     $96,x
        sec
        tay
        tya
        bvc     LC2F6
        bcc     LC268
        cpx     #$70
        .byte   $80
        bcs     LC225
        .byte   $F0
LC29E:  .byte   $FF
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LC2A6:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
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
        ora     ($01,x)
        .byte   $FF
        iny
        eor     $B8,x
        bit     $8C
        .byte   $74
        .byte   $44
        clv
        pha
        sty     $48B8
        .byte   $1C
        clv
        cli
        cpy     $A4
        .byte   $74
        .byte   $14
        cpy     $56
LC2E7:  .byte   $54
        .byte   $64
        .byte   $54
        clv
        sty     $58
        ldy     LC889
        and     #$58
        lda     #$89
        adc     #$8C
LC2F6:  jmp     L7435

        .byte   $74
        sec
        clv
        pla
        .byte   $34
        clv
        pla
        clv
        sty     $18,x
        .byte   $D0
LC304:  .byte   $FF
        adc     $19
        bpl     LC309
LC309:  .byte   $04
LC30A:  brk
        brk
        .byte   $02
        bpl     LC313
        .byte   $02
        .byte   $12
        .byte   $1B
        .byte   $02
LC313:  bpl     LC316
        .byte   $01
LC316:  brk
        ora     ($01,x)
        ora     (L0000,x)
        ora     ($01,x)
        ora     ($01),y
        .byte   $02
        .byte   $1C
        .byte   $03
        .byte   $02
        .byte   $03
        .byte   $02
        ora     $06
        .byte   $0B
        .byte   $04
        php
        clc
        ora     #$09
        ora     ($0A),y
        ora     ($09),y
        asl     a
        .byte   $13
        asl     a
        ora     #$49
        lsr     a
        .byte   $FF
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
LC345:  .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
LC34D:  .byte   $04
        .byte   $04
LC34F:  .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ora     $05
        ora     $05
        asl     $06
        asl     $07
        .byte   $07
        .byte   $07
        .byte   $07
        php
        php
        ora     #$09
        ora     #$0A
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0C
        .byte   $0C
        ora     $0E0E
        asl     $0F0E
        .byte   $0F
        .byte   $0F
        .byte   $FF
        bmi     LC3BA
        bpl     LC3D0
LC378:  bcc     LC30A
        clv
        clv
        bpl     LC3AA
        clv
        bvs     LC3F9
        sty     $D0,x
        php
        sec
        bvc     LC3D7
        tya
        cld
        php
        plp
        bne     LC34D
        iny
        sei
        tya
        clc
        jsr     L8828
        bcs     LC3DE
        bcs     LC378
        bmi     LC3F2
        rts

        cld
        plp
        eor     $60
        tya
        inx
        ora     $70
        bcc     LC345
        bmi     LC34F
LC3A7:  bne     LC3CB
LC3A9:  dey
LC3AA:  ldy     $B8
        rti

        plp
        cpx     a:L00FF
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LC3BA:  .byte   $03
        .byte   $03
        .byte   $03
LC3BD:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
LC3CB:  ora     ($01,x)
        ora     ($01,x)
        .byte   $01
LC3D0:  ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
LC3D7:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LC3DE:  .byte   $02
        .byte   $02
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
        .byte   $FF
        iny
        jsr     LBCB8
        pha
        clv
LC3F2:  pha
        .byte   $9C
        sei
        sty     $2A
        .byte   $20
        .byte   $9C
LC3F9:  sty     $58
        ldy     $B89C,x
        jsr     L888C
        clv
        sei
        rts

        rti

        clv
        dey
        sei
        lsr     $1C
        sty     $64
        .byte   $1C
        sty     $201C
        plp
        ldy     $48,x
        sty     $84,x
        tya
        ldy     $96,x
        ldy     $B4
        plp
        plp
        ldy     $B4,x
        sty     $A4,x
        .byte   $54
        .byte   $34
        sty     $38,x
        .byte   $74
        bit     LFFB0
        adc     $1D
        rol     $1A
        bpl     LC454
        bpl     LC44A
        rol     $23
        .byte   $17
        .byte   $27
        .byte   $1A
        bit     $26
        .byte   $1A
        .byte   $1A
        rol     $27
        .byte   $1A
        rol     $13
        ora     ($27),y
        .byte   $27
        .byte   $27
        ora     ($27),y
        ora     $2327,y
        .byte   $23
        .byte   $27
        .byte   $1A
LC44A:  .byte   $27
        .byte   $27
        .byte   $13
        .byte   $0E
        .byte   $59
LC44F:  asl     $2C2B
        .byte   $0E
        clc
LC454:  .byte   $2B
        bit     $1212
        .byte   $0F
        .byte   $0F
        .byte   $0E
        .byte   $0E
LC45C:  .byte   $0F
        .byte   $0F
LC45E:  asl     $0F13
        .byte   $4B
        jmp     L00FF

        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
LC477:  .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
LC482:  .byte   $04
        .byte   $04
        .byte   $04
        ora     $05
        ora     $05
LC489:  asl     $06
        asl     $06
        asl     $06
        .byte   $07
        .byte   $07
        .byte   $07
        php
        php
LC494:  php
LC495:  php
        ora     #$09
        ora     #$09
        ora     #$09
        ora     #$0A
        .byte   $0B
        .byte   $0B
        .byte   $0C
        .byte   $0D
        .byte   $0D
LC4A3:  asl     $0F0E
        .byte   $0F
        .byte   $FF
        bmi     LC4B2
        clc
        clc
        pla
        bcc     LC477
LC4AF:  beq     LC4D9
        .byte   $50
LC4B2:  bne     LC45C
        clc
        pla
        clv
        sed
        bpl     LC52A
        dey
        tya
        bne     LC4CE
        bmi     LC538
        tya
        cld
        inx
        bpl     LC4DD
        bvs     LC44F
        ldy     #$D8
        bpl     LC51B
        bvs     LC495
        sec
LC4CE:  pla
        bvs     LC489
        .byte   $D0
LC4D2:  bne     $C4FC
        bvc     LC45E
        bpl     LC528
        .byte   $90
LC4D9:  inx
        php
        bmi     LC52D
LC4DD:  bne     LC4AF
        cld
        beq     LC4D2
        bmi     LC494
        bcs     LC556
        bcc     LC550
        bcs     LC482
        inx
        .byte   $FF
        .byte   $04
        brk
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LC51B:  .byte   $03
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
LC528:  .byte   $03
        .byte   $03
LC52A:  .byte   $03
        .byte   $03
        .byte   $03
LC52D:  .byte   $03
        .byte   $02
        .byte   $FF
        iny
        bvs     LC57D
        ora     ($01,x)
        .byte   $64
        ora     ($B4,x)
LC538:  ora     ($54,x)
        eor     $60,x
        rts

        sty     $38,x
        clv
        bne     LC58E
        sec
        sec
        sei
        sei
        sec
        tsx
        clv
        clv
        dey
        sec
        sei
        pha
        tsx
        clv
LC550:  tya
        cli
        sei
        sec
        cli
        sei
LC556:  tya
        cli
        sei
        and     $80,x
        ldy     $60,x
        ldy     $20,x
        sty     $76,x
        tya
        .byte   $54
        tya
        pla
        cli
        clv
        plp
        sei
        ldx     $88,y
        sec
        clv
        dey
        sec
        plp
        .byte   $74
        stx     $A8
        .byte   $FF
        adc     $5B
        .byte   $17
        and     $25
        ora     #$25
        ora     #$25
LC57D:  ora     #$18
        .byte   $1F
        .byte   $1F
        and     $1212,y
        ror     $42
        .byte   $12
        .byte   $13
        ora     ($28),y
        .byte   $43
        .byte   $1A
        plp
        plp
LC58E:  plp
        .byte   $43
        plp
        plp
        .byte   $1A
        plp
        plp
        .byte   $43
        rol     $43
        plp
        plp
        plp
        .byte   $43
        rol     $19
        .byte   $1F
        and     $391F,y
        .byte   $1F
        and     $152D,y
        and     $4112,y
        and     $5A10
        eor     ($2D,x)
        eor     ($41,x)
        eor     ($41,x)
        eor     ($13,x)
        and     $4D2D,y
        .byte   $FF
        brk
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $02
LC5BF:  .byte   $02
        .byte   $02
LC5C1:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        ora     $05
        ora     $05
        asl     $06
        asl     $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        php
        php
LC5E9:  php
        php
LC5EB:  php
        php
        .byte   $FF
        bmi     LC638
        sei
        bcs     LC5EB
        bcc     LC655
        .byte   $80
        .byte   $80
        jmp     (LE818)

        sty     $48,x
        sec
        jmp     L50D0

        bcs     LC65A
        tya
        clv
        .byte   $F0
LC605:  bvc     $C67F
        .byte   $D0
LC608:  bvs     $C5BA
        rts

        cpy     #$78
        .byte   $80
        tay
        cpx     #$84
        clc
        .byte   $80
        pha
        .byte   $80
        sei
        .byte   $7C
        bcc     LC649
        bvc     LC691
        clc
        tya
        dey
        cld
        cld
        plp
        .byte   $80
        cld
        .byte   $FF
        .byte   $0C
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        asl     a
        asl     a
        ora     #$09
        ora     #$09
        ora     #$08
        php
        .byte   $07
        .byte   $07
        .byte   $07
        asl     $06
LC638:  asl     $06
        asl     $06
        asl     $06
        asl     $06
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
LC645:  asl     $06
        asl     $06
LC649:  asl     $05
        ora     $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $01
LC655:  brk
LC656:  brk
        brk
        brk
        .byte   $FF
LC65A:  iny
        bcs     LC5E9
        jsr     LB030
        tya
        pha
        inx
        rts

        and     $39,x
        bpl     LC608
        php
        bcs     LC6E3
LC66B:  bmi     LC645
        jmp     (LB84C)

        sec
        bcc     LC6DF
        bcs     LC605
        bvc     LC6CB
        ldy     $48,x
LC679:  ldy     $48,x
        cpx     $A4
        tya
        .byte   $44
        .byte   $1C
        sty     $04,x
        .byte   $64
        cpy     $58
        cli
        .byte   $34
        sec
        .byte   $34
        .byte   $34
        sec
        ldy     $28,x
        tya
        plp
        .byte   $FF
        .byte   $65
LC691:  rol     a
        rol     $5C,x
        rol     a
        rol     a
        and     #$29
        and     #$2A
        ora     $2A17,y
        rol     a
        .byte   $13
        rol     a
        ora     $38,x
        sec
        .byte   $57
        cli
        and     #$12
        rol     a
        lsr     $2A,x
        rol     a
        rol     a
        .byte   $0F
        .byte   $0F
        bpl     LC6BF
        bpl     LC6C1
        .byte   $0F
        ora     $0E,x
        eor     $0E0E,x
        asl     $120F
        .byte   $13
        asl     $0F11
LC6BF:  .byte   $0E
        .byte   $13
LC6C1:  .byte   $47
        lsr     $54
        eor     L00FF,x
        .byte   $02
        ora     ($01,x)
        ora     ($02,x)
LC6CB:  .byte   $02
        .byte   $02
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        ora     $05
        ora     $05
        ora     $06
        asl     $07
LC6D9:  .byte   $07
        .byte   $07
        php
        php
LC6DD:  php
        php
LC6DF:  php
        ora     #$09
        .byte   $09
LC6E3:  ora     #$09
        asl     a
LC6E6:  asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
LC6F0:  .byte   $0C
        .byte   $0C
        .byte   $0C
LC6F3:  ora     $0D0D
        ora     $0D0D
        asl     $0E0E
        asl     $0E0E
        asl     $0E0E
        asl     $0F0E
        .byte   $0F
        bpl     LC718
        bpl     LC719
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        bpl     LC720
        bpl     LC723
        ora     ($11),y
        ora     (L00FF),y
        bmi     LC740
LC718:  sei
LC719:  tay
        clc
        tya
        bne     LC6E6
        plp
        dey
LC720:  cld
        clc
        sei
LC723:  tay
        clv
        iny
        cli
        iny
        sec
LC729:  bcc     LC6F3
        sec
        cli
        dey
        tay
        iny
        plp
        sec
        sei
        cld
        inx
        cli
        clv
        inx
        ora     ($80,x)
        tay
        inc     $1810,x
        plp
        .byte   $90
LC740:  tay
LC741:  bne     LC741
        bpl     LC76D
        plp
        bvc     LC6F0
        inc     $5028,x
        bcc     LC6DD
        cld
        cld
        asl     $16
        bvc     LC6D9
        stx     $A8,y
        beq     LC7AF
        bne     LC729
        bpl     LC783
        cli
        pla
        iny
        clc
        sei
        iny
        plp
        iny
        inx
        plp
        .byte   $FF
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
LC76D:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC783:  brk
        brk
        brk
LC786:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LC7AF:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        .byte   $FF
        iny
        dey
        cli
        bcc     LC82B
        pha
        bcc     LC806
        bcs     LC7F8
        pla
        sec
        pla
        clv
        sec
        .byte   $14
LC7C6:  .byte   $54
LC7C7:  .byte   $54
        pla
        bvs     LC823
        pha
        plp
        cli
        sec
        bvc     LC7F9
        cli
        cli
        tay
        dey
        tya
        tya
        tay
        .byte   $02
        plp
        dey
        .byte   $02
        plp
        sei
        clv
        plp
        pla
        ldx     $02,y
        plp
        sec
LC7E5:  clv
        sec
        clv
        .byte   $02
        tya
        rti

        sec
        clv
        plp
        tay
        clv
        clv
        cld
        lsr     $86
        sty     $B6,x
        .byte   $74
        .byte   $74
LC7F8:  clv
LC7F9:  tya
        sec
        sec
        bcs     LC786
        bvs     LC868
        clv
        pla
        pla
        bcs     LC855
        .byte   $FF
LC806:  adc     $2F
        .byte   $2F
        rol     $2F2E
        rol     $2E2F
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        bpl     LC847
        .byte   $5F
        .byte   $32
        .byte   $32
        .byte   $2F
        rol     $3333
        .byte   $33
        .byte   $2F
        .byte   $33
        .byte   $2F
        .byte   $33
        .byte   $33
        .byte   $2F
LC823:  .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        eor     $31
        .byte   $33
LC82B:  eor     $31
        .byte   $33
        .byte   $33
        and     ($33),y
        ora     $3145,y
        .byte   $33
        .byte   $33
        ora     ($17),y
        eor     $33
        pla
        .byte   $13
        ora     $33,x
LC83E:  .byte   $33
        asl     $681E,x
        ora     ($01,x)
        ora     ($12,x)
        .byte   $01
LC847:  lsr     $3511,x
        .byte   $13
        and     $34,x
        and     $34,x
        and     $35,x
        and     $35,x
        .byte   $4F
        pha
LC855:  .byte   $FF
        .byte   $02
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        ora     $05
        ora     $06
        asl     $06
LC868:  .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        php
        php
LC86E:  php
        php
        ora     #$09
        ora     #$09
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0C
        ora     $0D0D
        ora     $0D0D
        asl     $0E0E
        asl     $0F0E
        .byte   $0F
        .byte   $0F
        bpl     LC899
LC889:  bpl     LC89B
        bpl     LC89D
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     (L00FF),y
        .byte   $30
LC896:  bpl     $C8D0
        dey
LC899:  .byte   $80
        .byte   $90
LC89B:  inx
        plp
LC89D:  cli
        plp
        bvc     LC911
        bpl     LC91B
        cld
        bvc     LC86E
        .byte   $D0
LC8A7:  bmi     LC901
        iny
        sed
        clc
        bvc     LC83E
        bcs     LC8D8
        sei
        cld
        inx
        sei
        dey
        tya
        bne     LC8F0
        sec
        bvc     LC91B
        ldy     #$B8
        inx
        sec
        cli
        tay
        clv
        sed
LC8C3:  sec
LC8C4:  bvs     LC896
        clc
        sei
        tay
        pla
        plp
        iny
        php
        pla
        tya
        clv
        cld
        beq     LC8C3
        .byte   $FF
        .byte   $02
        brk
        brk
        brk
LC8D8:  brk
        brk
LC8DA:  brk
        brk
        brk
        ora     ($01,x)
LC8DF:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
LC8ED:  ora     ($01,x)
        .byte   $01
LC8F0:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $01
LC901:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        brk
        brk
LC90D:  brk
        brk
        brk
        .byte   $02
LC911:  .byte   $02
        .byte   $FF
        iny
        sty     $1C,x
        .byte   $54
        sty     $34,x
        .byte   $74
        .byte   $64
LC91B:  pha
        eor     $10,x
        bpl     LC8DA
        .byte   $7A
        txs
        clv
        lsr     a
        tya
        plp
        txs
        .byte   $3A
        clv
        clv
        bpl     LC8C4
        eor     $B8
        bpl     LC940
        tya
        pha
        dey
        bmi     LC8ED
        cli
        .byte   $3A
        clv
        cli
        cli
        .byte   $02
        iny
        .byte   $02
        .byte   $02
        dex
        .byte   $02
LC940:  cli
        .byte   $02
        iny
        bpl     LC8DF
        .byte   $02
        rol     a
        dey
        pla
        ora     ($38,x)
        .byte   $B7
        ora     ($01,x)
        sec
        bcs     LC90D
        .byte   $FF
        adc     $07
        rts

        ora     ($07,x)
        .byte   $07
        ora     ($01,x)
        .byte   $03
        clc
        bmi     LC98E
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $3A
        .byte   $22
        .byte   $3A
        .byte   $13
        .byte   $22
        .byte   $22
        ora     $11,x
        bmi     LC980
        ora     $3B3A,y
        .byte   $3B
        .byte   $3A
        .byte   $03
        .byte   $44
        adc     ($13,x)
        .byte   $03
        .byte   $22
        .byte   $3A
        bpl     LC989
        .byte   $3B
        .byte   $3A
        .byte   $3B
LC97C:  .byte   $3B
        .byte   $22
        .byte   $3B
        .byte   $12
LC980:  .byte   $3B
        .byte   $3A
        bmi     LC9A6
        .byte   $3B
        .byte   $22
        .byte   $3B
        .byte   $3B
        .byte   $3B
LC989:  .byte   $3A
        ora     $3B,x
        .byte   $3B
        .byte   $13
LC98E:  lsr     LFF67
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
LC99D:  .byte   $03
        .byte   $03
LC99F:  .byte   $03
        .byte   $04
        .byte   $04
LC9A2:  .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
LC9A6:  ora     $05
        asl     $06
        asl     $07
        .byte   $07
        .byte   $07
        php
        php
        php
        ora     #$0A
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0C
        asl     $0F0F
        .byte   $0F
        .byte   $0F
        bpl     LC9CF
        bpl     LC9D1
        ora     ($11),y
        ora     ($11),y
        ora     ($0C),y
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $FF
        bmi     LC9FD
        dey
        tya
LC9CF:  beq     LCA01
LC9D1:  sec
        pha
        bvs     LC99D
        beq     LC9E7
        pha
        bcc     LC9A2
        bmi     LCA4C
        bcs     LC98E
        .byte   $D4
        iny
        plp
LC9E1:  cpy     #$40
        bvs     LC97C
        rts

        clv
LC9E7:  .byte   $B7
        sei
        tya
        bit     $1090
        bvc     LCA1F
        bcc     LC9E1
        bcc     LCA63
        clc
        plp
        pha
        cld
        bpl     LCA41
        rts

        bne     LCA0C
        .byte   $50
LC9FD:  bcs     LC9CF
        cld
        pha
LCA01:  tay
        cmp     ($DC,x)
        .byte   $FF
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
LCA0C:  brk
        brk
        brk
        brk
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
        ora     ($01,x)
        ora     ($01,x)
LCA1F:  ora     ($01,x)
        ora     ($01,x)
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
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
        .byte   $FF
        iny
        .byte   $72
LCA41:  dey
        eor     $22
        eor     #$88
        ldy     $47,x
        dey
        .byte   $22
        ldx     #$45
LCA4C:  .byte   $A7
        dey
        .byte   $92
        .byte   $72
        ldy     $54,x
        plp
        ldy     $B4,x
        bcc     LCAC7
        cli
        dey
        sec
        plp
        cli
        clv
        pha
        plp
        .byte   $73
        sty     $B3,x
        .byte   $B4
LCA63:  .byte   $93
        .byte   $53
        .byte   $93
        .byte   $93
        .byte   $54
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $63
        ldx     $B6,y
        .byte   $14
        ldy     $63,x
        .byte   $37
        ldy     $37,x
        php
        php
        bmi     LCAA8
        .byte   $FF
        adc     $0D
        .byte   $0C
        ora     $170D,y
        .byte   $0C
        ora     #$12
        .byte   $0C
        ora     $180D
        ora     $0C,x
        ora     $090D
        ora     #$62
        jsr     L3420
        .byte   $34
        and     $3D,x
        and     $3E,x
        and     $35,x
        rti

        .byte   $63
        and     ($3C,x)
        and     ($3C,x)
        and     ($21,x)
        and     ($21,x)
        .byte   $3C
        ora     $15,x
        .byte   $13
        and     ($19,x)
        clc
LCAA8:  and     ($3C,x)
        and     ($15,x)
        and     ($12,x)
        .byte   $53
        eor     ($52),y
        .byte   $50
LCAB2:  .byte   $FF
        bne     LCAC1
        eor     ($40,x)
        bne     LCAC7
        eor     $42
        bne     LCACC
        .byte   $5B
        eor     #$D0
        .byte   $10
LCAC1:  cli
        brk
        bne     LCAD6
        .byte   $59
        brk
LCAC7:  bne     LCADC
        cli
        brk
        .byte   $D0
LCACC:  .byte   $14
        cli
        brk
        bne     LCADE
        eor     ($40,x)
        bne     LCAEB
        .byte   $59
LCAD6:  brk
        .byte   $D0
LCAD8:  .byte   $17
        jmp     LD040

LCADC:  clc
        .byte   $67
LCADE:  .byte   $4F
        bne     LCAFA
        cli
        brk
        bne     LCAFF
        pla
        .byte   $4F
        bne     LCB04
        .byte   $97
        rti

LCAEB:  bne     LCB0A
        pha
        rti

        .byte   $D0
LCAF0:  asl     $4C63,x
        bcc     LCAFE
        .byte   $1C
        .byte   $02
        bcc     LCB02
        .byte   $1D
LCAFA:  .byte   $02
        bcc     LCB06
        .byte   $1E
LCAFE:  .byte   $02
LCAFF:  .byte   $90
LCB00:  php
        .byte   $22
LCB02:  .byte   $02
LCB03:  .byte   $90
LCB04:  php
        .byte   $23
LCB06:  .byte   $02
        bcc     LCB11
LCB09:  .byte   $24
LCB0A:  .byte   $02
        bcc     LCB15
        and     $02
        bcc     LCB19
LCB11:  rol     $02
        bcc     LCB1D
LCB15:  .byte   $27
        .byte   $02
        bcc     LCB21
LCB19:  plp
        .byte   $02
        bne     LCB57
LCB1D:  and     $0D,x
        cld
        .byte   $70
LCB21:  .byte   $37
        .byte   $02
        cld
        adc     ($37),y
        .byte   $02
        cld
        .byte   $72
        .byte   $37
        .byte   $02
        bcs     LCB35
        bit     $02
        cld
        and     a:$7E
        bne     LCB65
LCB35:  .byte   $5F
        .byte   $43
        bne     LCB79
        ror     $40,x
        bne     LCB6F
        adc     #$4F
        bne     LCB62
        bmi     LCAD8
        bne     LCB67
        bmi     LCADC
        bne     LCB80
        tax
        rti

        cld
        rol     a
        ldy     #$00
        bne     LCBD0
        ldy     $40
        bne     LCB7E
        .byte   $8B
        rti

LCB57:  bne     LCB87
        sta     ($40,x)
        bne     LCB83
        .byte   $7A
        rti

        bne     LCB84
        .byte   $32
LCB62:  .byte   $8B
        bcc     LCB89
LCB65:  .byte   $9B
        brk
LCB67:  bne     LCB8E
        eor     ($53),y
        bne     LCB94
        .byte   $8D
        rti

LCB6F:  bne     LCB99
        .byte   $87
        .byte   $52
        bne     LCBDD
        .byte   $3A
        stx     $33F0
LCB79:  .byte   $3C
        stx     $2BD0
        .byte   $85
LCB7E:  .byte   $53
        .byte   $D0
LCB80:  bit     $5386
LCB83:  .byte   $D0
LCB84:  .byte   $34
        sty     $4C,x
LCB87:  bne     LCBBE
LCB89:  bcc     LCBCB
        bne     LCBC3
        .byte   $59
LCB8E:  brk
        bcs     LCBC9
        .byte   $34
        brk
        .byte   $D0
LCB94:  and     $8E33,y
        bne     LCBD4
LCB99:  .byte   $4F
        .byte   $53
        bne     LCBD9
        rts

        rti

        bne     LCBDE
        adc     LD040
        .byte   $42
        bvs     LCBE7
        bne     LCBF1
        eor     LD000,y
        adc     a:$59
        bne     LCC1F
        eor     LD000,y
        .byte   $6F
        eor     LD000,y
        .byte   $67
        .byte   $33
        stx     $56D0
        .byte   $33
LCBBE:  stx     $46D0
        tya
        brk
LCBC3:  bne     LCBE1
        cli
        brk
        bne     LCBF8
LCBC9:  .byte   $13
        brk
LCBCB:  bne     LCC19
        lsr     $4A,x
        .byte   $D0
LCBD0:  lsr     a
        pha
        asl     $D0
LCBD4:  .byte   $4B
        brk
        asl     $90
        .byte   $50
LCBD9:  .byte   $92
        asl     a
        bcc     LCC2E
LCBDD:  .byte   $99
LCBDE:  .byte   $0C
        bne     LCC34
LCBE1:  adc     $9000
        .byte   $54
        .byte   $6B
        .byte   $06
LCBE7:  bcc     LCC40
        jmp     L9005

        .byte   $5A
        .byte   $57
        ora     ($90),y
        .byte   $49
LCBF1:  .byte   $4F
        asl     $F0
        .byte   $62
        rts

        .byte   $0C
        .byte   $D0
LCBF8:  .byte   $5F
        adc     ($49,x)
        bne     LCC5E
        rol     LD009,x
        rts

        adc     ($49,x)
        bne     LCC53
        brk
        lsr     a
        bne     LCC56
        lsr     $4A,x
        bne     LCC4B
        eor     LD000,y
        ror     a
        eor     LD000,y
        .byte   $6B
        eor     LD800,y
        .byte   $73
LCC19:  .byte   $37
        .byte   $02
        cld
        .byte   $74
        .byte   $37
        .byte   $02
LCC1F:  cld
        adc     $37,x
        .byte   $02
        cld
        ror     $37,x
        .byte   $02
        cld
        .byte   $77
        .byte   $37
        .byte   $02
        cld
        sei
        .byte   $37
LCC2E:  .byte   $02
        cld
        adc     $0237,y
        cld
LCC34:  .byte   $7A
        .byte   $37
        .byte   $02
        cld
        .byte   $7B
        .byte   $37
        .byte   $02
        cld
        .byte   $7C
        .byte   $37
        .byte   $02
        cld
LCC40:  adc     $0237,x
        bne     LCC86
        ror     $40,x
        bne     LCCB2
        .byte   $B7
        brk
LCC4B:  bne     LCCB2
        .byte   $33
        stx     $64D8
        .byte   $5D
        .byte   $02
LCC53:  cld
        .byte   $63
        .byte   $1E
LCC56:  asl     $01
        brk
        brk
        brk
        brk
        brk
        brk
LCC5E:  brk
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
LCC66:  brk
        brk
        brk
        brk
        brk
        brk
LCC6C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $83
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCC86:  brk
        brk
        brk
        brk
        brk
        .byte   $04
        brk
        brk
        brk
        .byte   $80
        brk
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCCB2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $83
        brk
        brk
        brk
        asl     a
        brk
        brk
        brk
        .byte   $82
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $80
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
        ora     (L0000,x)
        brk
        brk
        ora     L0000
        brk
        brk
        .byte   $03
        brk
        brk
        brk
LCD03:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
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
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        brk
        brk
        brk
        .byte   $04
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCE00:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        lda     $7C
        pha
LCF03:  lda     $60
        sta     $05E0
        lda     $61
        sta     $05E2
        jsr     L904E
        ldx     #$05
LCF12:  lda     $04D0,x
        sta     $0360,x
        lda     $0400,x
        sta     $0366,x
        lda     $0420,x
        sta     $036C,x
        lda     $0510,x
        sta     $0372,x
        lda     $04F0,x
        sta     $0378,x
        lda     $0410,x
        sta     $037E,x
        lda     $9026,x
        sta     $04D0,x
        lda     $902C,x
        sta     $0420,x
        cpx     #$03
        bne     LCF67
        lda     $54
        beq     LCF67
        cmp     #$01
        beq     LCF58
        cmp     #$02
        beq     LCF5C
        cmp     #$03
        beq     LCF60
        bne     LCF67
LCF58:  lda     #$27
        bne     LCF64
LCF5C:  lda     #$26
        bne     LCF64
LCF60:  lda     #$28
        bne     LCF64
LCF64:  sta     $0420,x
LCF67:  lda     #$00
        sta     $0430,x
        sta     $0410,x
        sta     $0400,x
        lda     $9032,x
        sta     $0510,x
        lda     $9038,x
        sta     $04F0,x
        dex
        bpl     LCF12
        ldx     #$00
        stx     $7C
LCF85:  lda     $04D6,x
        sta     $0384,x
        lda     #$00
        sta     $04D6,x
        inx
        cpx     #$0A
        bne     LCF85
        lda     $F2
        sta     $038E
        ldx     #$0F
LCF9C:  lda     $0310,x
        sta     $038F,x
        lda     $903E,x
        sta     $0310,x
        dex
        bpl     LCF9C
        stx     $18
        lda     #$9F
        sta     $1A
        lda     $FE
        and     #$F7
        sta     $FE
LCFB7:  lda     #$04
        sta     $97
        jsr     LF89A
        jsr     L90E1
        jsr     L9148
        lda     $14
        and     #$10
        beq     LCFB7
        bne     LCFCD
        rts

LCFCD:  ldx     #$05
LCFCF:  lda     $0360,x
        sta     $04D0,x
        lda     $0366,x
        sta     $0400,x
        lda     $036C,x
        sta     $0420,x
        lda     $0372,x
        sta     $0510,x
        lda     $0378,x
        sta     $04F0,x
        lda     $037E,x
        sta     $0410,x
        lda     #$00
        sta     $0430,x
        dex
        bpl     LCFCF
        ldx     #$00
LCFFD:  lda     $0384,x
LD000:  sta     $04D6,x
        inx
        cpx     #$0A
        bne     LCFFD
        .byte   $A2
LD009:  .byte   $0F
LD00A:  lda     $038F,x
        sta     $0310,x
        dex
        bpl     LD00A
        stx     $18
        lda     $038E
        ora     #$80
        sta     $1A
        lda     $FE
        ora     #$08
        sta     $FE
        pla
        sta     $7C
        rts

        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        rol     $2E,x
        and     (L0000),y
        .byte   $3F
        .byte   $3F
        ldy     #$38
        sec
        rti

        cld
        plp
        .byte   $5C
        pla
        pla
        jmp     (LAC54)

        .byte   $0F
        .byte   $0F
LD040:  bmi     LD069
        .byte   $0F
        .byte   $0F
        .byte   $27
        .byte   $13
        .byte   $0F
        .byte   $27
        bmi     LD05D
        .byte   $0F
        .byte   $27
        bmi     LD06F
        lda     $54
        cmp     #$00
        beq     LD061
        cmp     #$01
        beq     LD079
        cmp     #$02
        beq     LD09B
        .byte   $C9
LD05D:  .byte   $03
        beq     LD0BD
        rts

LD061:  lda     #$00
        sta     $05D2
        sta     $05D4
LD069:  sta     $05D6
        sta     $05D8
LD06F:  sta     $05DA
        sta     $05DC
        sta     $05DE
        rts

LD079:  lda     #$CD
        sta     $05D2
        lda     #$A0
        sta     $05D4
        lda     #$7B
        sta     $05D6
        lda     #$CE
        .byte   $8D
        cld
LD08C:  ora     $A9
        cmp     #$8D
        .byte   $DA
        ora     $A9
        brk
        sta     $05DC
        sta     $05DE
        rts

LD09B:  lda     #$7B
        sta     $05D2
        lda     #$C8
        sta     $05D4
        lda     #$C8
        sta     $05D6
        lda     #$70
        sta     $05D8
        lda     #$D1
        sta     $05DA
        lda     #$00
        sta     $05DC
        sta     $05DE
        rts

LD0BD:  lda     #$7C
        sta     $05D2
        lda     #$CD
        sta     $05D4
        lda     #$CF
        sta     $05D6
        lda     #$8C
        sta     $05D8
        lda     #$D0
        sta     $05DA
        lda     #$A0
        sta     $05DC
        lda     #$C8
        sta     $05DE
        rts

        lda     $04D5
        and     #$0F
        tay
        lda     $90F4,y
        sta     L0000
        lda     $90F9,y
        sta     $01
        jmp     (L0000)

        inc     $200F,x
        and     ($42),y
        bcc     LD08C
        sta     ($91),y
        sta     ($AD),y
        sbc     $04,x
        sec
        sbc     #$04
        sta     $04F5
        cmp     #$58
        bcs     LD10E
        inc     $04D5
LD10E:  rts

        lda     $0515
        clc
        adc     #$04
        sta     $0515
        cmp     #$D8
        bcc     LD10E
        inc     $04D5
        rts

        lda     $04F5
        clc
        adc     #$04
        sta     $04F5
        cmp     #$AC
        bcc     LD10E
        inc     $04D5
        rts

        lda     $0515
        sec
        sbc     #$04
        sta     $0515
        cmp     #$30
        bcs     LD10E
        inc     $04D5
        rts

        lda     #$80
        sta     $04D5
        rts

        lda     $04D4
        and     #$0F
        tay
        lda     $915B,y
        sta     L0000
        lda     $9160,y
        sta     $01
        jmp     (L0000)

        adc     $76
        .byte   $87
        tya
        lda     #$91
        sta     ($91),y
        sta     ($91),y
        lda     $04F4
        clc
        adc     #$04
        sta     $04F4
        cmp     #$AC
        bcc     LD175
        inc     $04D4
LD175:  rts

        lda     $0514
        sec
        sbc     #$04
        sta     $0514
        cmp     #$30
        bcs     LD175
        inc     $04D4
        rts

        lda     $04F4
        sec
        sbc     #$04
        sta     $04F4
        cmp     #$58
        bcs     LD175
        inc     $04D4
        rts

        lda     $0514
        clc
        adc     #$04
        sta     $0514
        cmp     #$D8
        bcc     LD175
        inc     $04D4
        rts

        lda     #$80
        sta     $04D4
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
LD1BB:  brk
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
LD4CD:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LD500:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LD5CF:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LD7F5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD7FF:  brk
LD800:  inc     $95
        lda     $95
        lsr     a
        bcs     LD81C
        ldx     #$00
        stx     $96
LD80B:  lda     $04D0,x
        bpl     LD813
        jsr     L982F
LD813:  inc     $96
        ldx     $96
        cpx     #$10
        bne     LD80B
        rts

LD81C:  ldx     #$0F
        stx     $96
LD820:  lda     $04D0,x
        bpl     LD828
        jsr     L982F
LD828:  dec     $96
        ldx     $96
        bpl     LD820
        rts

        lda     $0400,x
        and     #$10
        bne     LD839
        jmp     L98C7

LD839:  lda     $04F0,x
        sec
        sbc     $FC
        sta     $0450,x
        lda     $0500,x
        sbc     $FD
        bne     LD896
        lda     $0510,x
        sec
        sbc     $FA
        bcs     LD854
        sbc     #$0F
        clc
LD854:  sta     $0440,x
        lda     $0520,x
        sbc     $FB
        beq     LD8D3
        cpx     #$01
        bcs     LD87A
        pha
        lda     $0400,x
        and     #$7F
        sta     $0400,x
        pla
        cmp     #$01
        bne     LD8E1
        lda     #$00
        sta     $7C
        lda     #$07
        sta     $50
        bne     LD87A
LD87A:  lda     #$00
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

LD896:  lda     $0450,x
        bcs     LD89F
        eor     #$FF
        adc     #$01
LD89F:  cmp     #$10
        bcs     LD87A
        lda     $0420,x
        cmp     #$13
        beq     LD87A
        cmp     #$14
        beq     LD87A
        cmp     #$17
        beq     LD87A
        cmp     #$18
        beq     LD87A
        cmp     #$19
LD8B8:  beq     LD87A
        cmp     #$29
        beq     LD87A
        lda     $0400,x
        and     #$7F
        sta     $0400,x
        rts

        lda     $04F0,x
        sta     $0450,x
        lda     $0510,x
        sta     $0440,x
LD8D3:  lda     $0400,x
        ora     #$80
        sta     $0400,x
        lda     $0420,x
        bne     LD8E1
        rts

LD8E1:  cpx     #$00
        bne     LD8F2
        lda     $7C
        beq     LD8F2
        dec     $7C
        lda     $95
        and     #$04
        bne     LD8F2
        rts

LD8F2:  ldy     #$00
        lda     $0400,x
        and     #$40
        sta     $10
        beq     LD8FE
        iny
LD8FE:  sty     $11
        ldy     $0420,x
        lda     $B222,y
        sta     L0000
        lda     $B292,y
        sta     $01
        lda     $0430,x
        bmi     LD936
        and     #$7F
        inc     $0430,x
        ldy     #$01
        cmp     (L0000),y
        bne     LD936
        lda     #$00
        sta     $0430,x
        dey
        lda     (L0000),y
        and     #$7F
        cmp     $0410,x
        php
        inc     $0410,x
        plp
        bne     LD936
        lda     #$00
        sta     $0410,x
LD936:  lda     $0400,x
        and     #$08
        bne     LD942
        lda     $0400,x
        bmi     LD943
LD942:  rts

LD943:  lda     $0410,x
        and     #$7F
        clc
        adc     #$02
        tay
        lda     (L0000),y
        sta     $02
        bne     LD95B
        sta     $04D0,x
        lda     #$FF
        sta     $0590,x
        rts

LD95B:  ldy     #$00
        lda     (L0000),y
        bpl     LD961
LD961:  ldy     $02
        lda     $A325,y
        sta     $02
        lda     $A3C5,y
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
        lda     $AF27,x
        sec
        sbc     #$02
        sta     $05
        lda     $AFAF,x
        sbc     #$00
        sta     $06
        ldx     $97
        beq     LD9E0
LD9A0:  iny
        lda     ($02),y
        sta     $0201,x
        lda     $12
        clc
        adc     ($05),y
        sta     $0200,x
        lda     ($05),y
        bmi     LD9B6
        bcc     LD9B8
        bcs     LD9E1
LD9B6:  bcc     LD9E1
LD9B8:  iny
        lda     ($02),y
        eor     $10
        ora     $11
        sta     $0202,x
        lda     $13
        clc
        adc     ($05),y
        sta     $0203,x
        lda     ($05),y
        bmi     LD9D2
        bcc     LD9D4
        bcs     LD9E2
LD9D2:  bcc     LD9E2
LD9D4:  inx
        inx
        inx
        inx
        stx     $97
        beq     LD9E0
LD9DC:  dec     $04
        bpl     LD9A0
LD9E0:  rts

LD9E1:  iny
LD9E2:  lda     #$F8
        sta     $0200,x
        bne     LD9DC
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
LDA00:  ora     ($08,x)
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
        .byte   $04
        brk
        jsr     L2100
        ora     ($15,x)
        ora     ($16,x)
        brk
        .byte   $22
        ora     ($23,x)
        ora     (L006D,x)
        ora     ($0C,x)
        php
        bmi     LDA76
        .byte   $24
LDA76:  brk
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
        ora     ($0B,x)
        php
        bmi     LDA92
        .byte   $24
LDA92:  brk
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
        bpl     LDB26
        cmp     ($3C,x)
        ora     ($45,x)
        brk
        lsr     L0000
        eor     $40
        and     $3E01,x
LDB26:  brk
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
        .byte   $52
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
        ora     ($5A,x)
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
        brk
        eor     $5E01,x
        ora     ($5F,x)
        ora     ($58,x)
        ora     ($59,x)
        ora     ($5A,x)
        ora     ($0C,x)
        asl     L010C,x
        plp
        brk
        ora     (L0000,x)
        .byte   $54
        brk
        .byte   $03
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
        rol     $30
        ora     ($6E,x)
        ora     ($24,x)
        brk
        .byte   $63
        brk
        rol     L0000
        .byte   $27
        brk
LDBD1:  plp
        brk
        and     #$01
        .byte   $64
        ora     ($28,x)
        rti

LDBD9:  adc     $01
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
        bmi     LDC00
        .byte   $24
LDC00:  brk
        and     L0000
LDC03:  rol     L0000
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
        bmi     LDC1C
        .byte   $24
LDC1C:  brk
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
        rol     $30
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
LDC43:  and     #$01
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
LDC83:  .byte   $87
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
        brk
        .byte   $1A
        sta     $01
        brk
        .byte   $1A
        stx     a:$80
        .byte   $1A
        stx     a:$81
        .byte   $1A
        stx     a:L0000
        .byte   $1A
        stx     $0E01
        adc     ($F0),y
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
        eor     ($FB,x)
        eor     ($FC,x)
        eor     ($30,x)
        eor     ($0E,x)
        adc     ($F0),y
        eor     ($F1,x)
        rti

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
        eor     ($FB,x)
        eor     ($FC,x)
        eor     ($30,x)
        eor     ($0B,x)
        .byte   $72
        ldy     #$40
        lda     ($40,x)
        ldx     #$40
        .byte   $A3
        rti

        ldy     $40
LDD03:  lda     $41
        ldx     $41
        .byte   $A7
        eor     ($A8,x)
        rti

        lda     #$41
        tax
        eor     ($AB,x)
        eor     (L0000,x)
        .byte   $1A
        .byte   $8F
        brk
        ora     $A072
        rti

        ldx     $A240,y
        rti

        lda     $AC40
        rti

        .byte   $AF
        rti

        bcs     LDD66
        lda     ($41),y
        .byte   $B3
        eor     ($A9,x)
        eor     ($AA,x)
        eor     ($B9,x)
        eor     ($B2,x)
        eor     ($B8,x)
        rti

        ora     $A072
        rti

        ldx     $A240,y
        rti

        lda     $AE40
        rti

        .byte   $AF
        rti

        bcs     LDD84
        lda     ($41),y
        .byte   $B3
        eor     ($A9,x)
        eor     ($AA,x)
        eor     ($B9,x)
        eor     ($B2,x)
        eor     ($B8,x)
        rti

        .byte   $0F
        .byte   $82
        bcc     LDD55
LDD55:  sta     (L0000),y
        .byte   $92
        brk
        .byte   $93
        brk
        sty     L0000,x
        sta     L0000,x
        stx     L0000,y
        .byte   $97
        brk
        tya
        brk
        .byte   $99
LDD66:  brk
        txs
        brk
        .byte   $9B
        brk
        .byte   $9C
        brk
        sta     $9E00,x
        brk
        .byte   $9F
        brk
        .byte   $0B
        brk
        brk
        brk
        brk
        brk
        lda     L0000
        tay
        brk
        .byte   $A7
        brk
        ldx     L0000
        .byte   $AB
        brk
        tax
LDD84:  brk
        lda     #$00
        ldy     $AD40
        brk
        ldy     $0A00
        rti

        ror     $7F01,x
        ora     ($90,x)
        .byte   $02
        sta     ($02),y
        .byte   $92
        .byte   $03
        .byte   $93
        .byte   $03
        sty     $03,x
        sta     $03,x
        stx     $03,y
        .byte   $97
        .byte   $03
        ldy     $0900,x
        .byte   $42
        ror     $7F01,x
        ora     ($A6,x)
        .byte   $02
        .byte   $9E
        .byte   $02
        .byte   $9F
        .byte   $03
        .byte   $A7
        .byte   $03
        ldx     #$03
        tay
        .byte   $03
        lda     #$03
        ldy     $0A00,x
        .byte   $44
        ror     $7F01,x
        ora     ($98,x)
        .byte   $03
        bcc     LDDC7
        sta     ($02),y
LDDC7:  sta     $9A03,y
        .byte   $03
        sta     $03,x
        .byte   $9B
        .byte   $03
        .byte   $9C
        .byte   $03
        ldy     $0B00,x
        lsr     $7E
        ora     ($7F,x)
        ora     ($9D,x)
        .byte   $02
        .byte   $9E
        .byte   $02
        .byte   $9F
        .byte   $03
        ldy     #$03
        lda     ($03,x)
        ldx     #$03
        .byte   $A3
        .byte   $03
        ldy     $03
        lda     $03
        ldy     a:L0000,x
        .byte   $3C
        .byte   $6F
        .byte   $03
        ora     ($48,x)
        .byte   $AB
        .byte   $03
        tax
        .byte   $03
        .byte   $04
        pha
        bcs     LDDFE
        .byte   $AF
        .byte   $03
        .byte   $AE
LDDFE:  .byte   $03
        .byte   $AC
LDE00:  .byte   $03
        .byte   $AD
        .byte   $03
LDE03:  asl     $48
        ldx     $03,y
        lda     $03,x
        .byte   $B3
        .byte   $03
        lda     ($03),y
        brk
        .byte   $03
        .byte   $B2
        .byte   $03
        ldy     $03,x
        asl     a
        pha
        ldx     $03,y
        lda     $03,y
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        brk
        .byte   $03
        clv
        .byte   $03
        .byte   $B7
        .byte   $03
        .byte   $BB
        .byte   $03
        tsx
        .byte   $03
        ora     $B14A
        .byte   $03
        .byte   $B2
        .byte   $03
        .byte   $B3
        brk
        ldy     L0000,x
        lda     $03,x
        ldx     $03,y
        .byte   $B7
        brk
        clv
        brk
        lda     $BA00,y
        brk
        brk
        brk
        .byte   $BB
        brk
        ldy     $BD00,x
        brk
        ora     $B14A
        .byte   $03
        .byte   $B2
        .byte   $03
        .byte   $B3
        brk
        ldy     L0000,x
        ldx     $B603,y
        .byte   $03
        .byte   $BF
        brk
        cpy     #$00
        cmp     (L0000,x)
        .byte   $C2
        brk
        .byte   $C3
        brk
        cpy     L0000
        cmp     L0000
        dec     L0000
        ora     #$4C
        lda     ($03),y
        .byte   $B2
        .byte   $03
        .byte   $B3
        brk
        ldy     L0000,x
        .byte   $C7
        .byte   $03
        ldx     $03,y
        iny
        brk
        cmp     #$00
        dex
        brk
        .byte   $CB
        brk
        ora     $B14A
        .byte   $03
        .byte   $B2
        .byte   $03
        .byte   $B3
        brk
        ldy     L0000,x
LDE87:  cpy     $B603
        .byte   $03
        brk
        brk
        cmp     LCE00
        brk
        .byte   $CF
        brk
        bne     LDE95
LDE95:  cmp     (L0000),y
        .byte   $D2
        brk
        .byte   $D3
        brk
        .byte   $0C
        lsr     $03B1
        .byte   $B2
        .byte   $03
        .byte   $D4
        brk
        cmp     L0000,x
        dec     $03,x
        .byte   $D7
        brk
        cld
        brk
        cmp     LDA00,y
        brk
        .byte   $DB
        brk
        .byte   $DC
        brk
        cmp     LDE00,x
        brk
        .byte   $0C
        lsr     a
        .byte   $DF
        .byte   $03
        cpx     #$03
        sbc     (L0000,x)
        .byte   $E2
        brk
        .byte   $E3
        .byte   $03
        cpx     $03
        sbc     L0000
        inc     L0000
        .byte   $E7
        brk
        inx
        brk
        sbc     #$00
        nop
        brk
        .byte   $EB
        brk
        asl     a
        bvc     LDE87
        .byte   $03
        .byte   $B2
        .byte   $03
        cpx     LD500
        brk
        sbc     $B603
        .byte   $03
        inc     LEF00
        brk
        beq     LDEE7
LDEE7:  sbc     (L0000),y
        .byte   $F2
        brk
        .byte   $0C
        .byte   $52
        .byte   $F3
        brk
        lda     ($03,x)
        .byte   $F4
        .byte   $03
        sbc     L0000,x
        inc     L0000,x
        .byte   $F7
        brk
        sed
        .byte   $03
        ldx     $03,y
        sbc     LFA00,y
        brk
        .byte   $FB
        brk
LDF03:  .byte   $FC
        brk
        sbc     $0300,x
        .byte   $3A
        inc     LFF00,x
        brk
        .byte   $FF
        cpy     #$FE
        cpy     #$00
        .byte   $3C
        ldy     #$00
        asl     $9B54
        .byte   $02
        .byte   $6F
        .byte   $03
        .byte   $7F
        .byte   $03
        ldy     $03
        .byte   $F7
        .byte   $03
        sed
        brk
        sbc     $9400,y
        brk
        sta     L0000,x
        stx     L0000,y
        tya
        brk
        sta     $9A00,y
        brk
        .byte   $93
        brk
        .byte   $97
        brk
        .byte   $04
        .byte   $5A
        .byte   $9C
        .byte   $02
        sta     $9E02,x
        brk
        .byte   $9F
        brk
        ldy     #$00
        .byte   $04
        .byte   $5A
        .byte   $9C
        .byte   $02
        sta     $A102,x
        brk
        ldx     #$00
        .byte   $A3
        brk
        brk
        .byte   $3C
        .byte   $92
        .byte   $03
        .byte   $0C
        lsr     $99,x
        .byte   $02
        .byte   $93
        .byte   $03
        sty     $03,x
        sta     $03,x
        tax
        .byte   $03
        .byte   $AB
        brk
        ldy     $AD00
        brk
        ldx     $AF00
        brk
        stx     L0000,y
        .byte   $97
        brk
        tya
        brk
        .byte   $0C
        cli
        sta     $9302,y
        .byte   $03
        sty     $03,x
        sta     $03,x
        txs
        .byte   $03
        .byte   $9B
        brk
        brk
        brk
        .byte   $9C
        brk
        sta     $9E00,x
        brk
        .byte   $9F
        brk
        ldy     #$00
        lda     (L0000,x)
        .byte   $0B
        lsr     $99,x
        .byte   $02
        .byte   $93
        .byte   $03
        sty     $03,x
        sta     $03,x
        ldx     #$03
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
        .byte   $0C
        cli
        sta     $9302,y
        .byte   $03
        sty     $03,x
        sta     $03,x
        tax
        .byte   $03
        .byte   $AB
        brk
        ldy     $AD00
        brk
        ldx     $AF00
        brk
        bcs     LDFBB
LDFBB:  lda     (L0000),y
        .byte   $B2
        brk
        .byte   $0F
        .byte   $5C
        .byte   $93
        .byte   $03
        .byte   $B3
        brk
        ldy     $02,x
        lda     $02,x
        ldx     L0000,y
        .byte   $B7
        .byte   $02
        clv
        .byte   $02
        lda     $B300,y
        brk
        tsx
        .byte   $02
        .byte   $BB
        .byte   $02
        ldy     $9F00,x
        brk
        ldy     #$00
        lda     (L0000,x)
        lda     $0F00,x
        lsr     $0393,x
        .byte   $B3
        brk
        ldy     $02,x
        lda     $02,x
        ldx     L0000,y
        .byte   $B7
        .byte   $02
        clv
        .byte   $02
        lda     $B300,y
        brk
        tsx
        .byte   $02
        .byte   $BB
        .byte   $02
        ldy     $A800,x
        brk
        lda     #$00
        brk
        brk
        .byte   $BD
        brk
LE003:  .byte   $0F
        .byte   $5C
        .byte   $93
        .byte   $03
        .byte   $B3
        brk
        ldy     $02,x
        lda     $02,x
        ldx     L0000,y
        .byte   $B7
        .byte   $02
        clv
        .byte   $02
        lda     $B300,y
        brk
        tsx
        .byte   $02
        .byte   $BB
        .byte   $02
        ldy     $B000,x
        brk
        lda     (L0000),y
        .byte   $B2
        brk
        lda     $0500,x
        rts

        dec     $02,x
        .byte   $D7
        .byte   $02
        dec     $42,x
        cld
        .byte   $02
        inc     $02
        cld
        .byte   $42
        ora     #$62
        ldx     $BF03,y
        brk
        cpy     #$03
        cmp     (L0000,x)
        .byte   $C2
        brk
        .byte   $C3
        brk
        cpy     L0000
        cmp     L0000
        dec     L0000
        .byte   $C7
        .byte   $02
        ora     ($64),y
        iny
        .byte   $02
        cmp     #$02
        dex
        .byte   $02
LE051:  .byte   $CB
        .byte   $03
        cpy     LCD03
        .byte   $02
        dec     LCF03
        brk
        bne     LE05D
LE05D:  cmp     (L0000),y
        .byte   $D2
        brk
        .byte   $D3
        brk
        stx     L0000,y
        .byte   $97
        brk
        tya
        brk
        .byte   $93
        .byte   $03
        cmp     L0000,x
        .byte   $D4
        .byte   $02
        .byte   $03
        ror     $03BD
        .byte   $BE
        .byte   $03
LE075:  .byte   $BF
        .byte   $03
        cpy     #$03
        ora     $6E
        .byte   $C3
        .byte   $03
        cpy     $03
        cmp     $03
        dec     $03
        cmp     ($03,x)
        .byte   $C2
        .byte   $03
        .byte   $0B
        bvs     LE051
        .byte   $03
        iny
        .byte   $03
        cmp     #$03
        dex
        .byte   $03
        brk
        .byte   $03
        .byte   $CB
        .byte   $03
        cpy     LCD03
        .byte   $03
LE099:  .byte   $CB
        .byte   $43
        dec     LCF03
        .byte   $03
        bne     LE0A4
        .byte   $0C
        bvs     LE075
LE0A4:  .byte   $03
        iny
        .byte   $03
        .byte   $D3
        .byte   $03
        .byte   $D4
        .byte   $03
        brk
        .byte   $03
        cmp     $03,x
        dec     $03,x
        cmp     LCB03
        .byte   $43
        dec     LCF03
        .byte   $03
        bne     LE0BE
        .byte   $D2
        .byte   $03
        .byte   $10
LE0BE:  bvs     LE099
        .byte   $03
        .byte   $DA
        .byte   $03
        cmp     LDE03,x
        .byte   $03
        .byte   $DF
        .byte   $03
        sbc     ($03,x)
        .byte   $E2
        .byte   $03
        .byte   $E3
        .byte   $03
        cpx     $03
        sbc     $03
        inc     $03
        .byte   $E7
        .byte   $03
        .byte   $DC
        .byte   $03
        .byte   $D7
        .byte   $03
        cld
        .byte   $03
        .byte   $DB
        .byte   $03
        cpx     #$03
        .byte   $02
        ror     a:L0000
        inx
        .byte   $03
        sbc     #$03
        ora     $86
        nop
        .byte   $03
        .byte   $EB
        .byte   $03
        cpx     LED03
        .byte   $03
        inc     LEF03
        .byte   $03
        ora     ($6C,x)
        beq     LE0FE
        sbc     ($03),y
        .byte   $01
LE0FE:  ror     a
        beq     LE104
        .byte   $F2
        .byte   $03
        .byte   $01
LE104:  stx     $F3
        .byte   $03
        .byte   $F3
        .byte   $43
        ora     ($86,x)
        .byte   $F4
        .byte   $03
        .byte   $F4
        .byte   $43
        ora     ($86,x)
        sbc     $03,x
        sbc     $43,x
        .byte   $0B
        ror     $B2
        .byte   $03
        .byte   $B3
        .byte   $03
LE11B:  ldy     $03,x
        lda     $03,x
        ldx     L0000,y
        .byte   $B7
        brk
        clv
        brk
        lda     $BA00,y
        brk
        .byte   $BB
        brk
        ldy     $BD00,x
        brk
        asl     $BF66
        .byte   $03
        cpy     #$02
        .byte   $C3
        .byte   $03
        cpy     $03
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
        cpx     $BE00
        brk
        cmp     (L0000,x)
        .byte   $C2
        brk
        asl     LCC66
        .byte   $03
        .byte   $B3
        .byte   $03
        .byte   $CF
        .byte   $03
        lda     $03,x
        bne     LE15B
LE15B:  brk
        brk
        cmp     (L0000),y
        .byte   $D2
        brk
        .byte   $D3
        brk
        .byte   $DA
        brk
        .byte   $DB
        brk
        lda     LCB00,x
        brk
        cmp     LCE00
        brk
        asl     $BF66
        .byte   $03
        cpy     #$02
        .byte   $C3
        .byte   $03
        cpy     $03
        cmp     L0000
        brk
        brk
        .byte   $DC
        brk
        cmp     LDE00,x
        brk
        .byte   $DF
        brk
        cpx     #$00
        cpx     $BE00
        brk
        cmp     (L0000,x)
        .byte   $C2
        brk
        .byte   $0B
        pla
        sbc     ($03,x)
        .byte   $E2
        .byte   $03
        .byte   $E3
        brk
        cpx     $03
        sbc     $03
        inc     $03
        .byte   $E7
        brk
        inx
        brk
        sbc     #$00
        nop
        brk
        .byte   $EB
        brk
        sbc     $0100
        ror     a
        .byte   $F4
        brk
        sbc     L0000,x
        brk
        .byte   $3C
        inc     L0000,x
        ora     ($3E,x)
        .byte   $FA
        brk
        .byte   $FB
        brk
        brk
        .byte   $3C
        inc     $80,x
        ora     ($6A,x)
        sbc     $80,x
        .byte   $F4
        .byte   $80
        brk
        .byte   $3C
        inc     $C0,x
        ora     ($3E,x)
        .byte   $FB
        rti

        .byte   $FA
        rti

        brk
        .byte   $3C
        inc     $40,x
        .byte   $03
        .byte   $3A
        beq     LE1D8
        beq     LE21A
        .byte   $F1
LE1D8:  .byte   $03
        sbc     ($43),y
        .byte   $03
        .byte   $3A
        .byte   $F2
        .byte   $03
        .byte   $F2
        .byte   $43
        .byte   $F3
        .byte   $03
        .byte   $F3
        .byte   $43
        brk
        .byte   $3C
        .byte   $EE
LE1E8:  brk
        brk
        .byte   $3C
        .byte   $EF
        brk
        .byte   $02
        rol     $018B
        sty     $8D01
        ora     (L0000,x)
        .byte   $1A
        dex
        .byte   $03
        brk
        .byte   $1A
        .byte   $CB
        .byte   $03
        brk
        .byte   $1A
        cpy     L0303
        .byte   $1C
        bcc     LE205
LE205:  bcc     LE247
        sta     (L0000),y
        sta     ($40),y
        php
        .byte   $74
        .byte   $EF
        .byte   $03
        beq     LE213
        sbc     ($03),y
LE213:  .byte   $F2
        .byte   $03
        .byte   $F3
        .byte   $02
        .byte   $F4
        .byte   $03
        brk
LE21A:  brk
        sbc     $03,x
        inc     $03,x
        ora     LE374
        .byte   $03
        cpx     $03
        sbc     $03
        .byte   $E7
        .byte   $03
        inx
        .byte   $03
        sbc     #$03
        .byte   $6F
        .byte   $03
        .byte   $7F
        .byte   $03
        sbc     LE003
        .byte   $02
        sbc     ($02,x)
        .byte   $E2
        .byte   $03
        nop
        .byte   $03
        inc     $0F03
        ror     $7E,x
        ora     ($EB,x)
        ora     ($EB,x)
        eor     ($7E,x)
        .byte   $81
LE247:  .byte   $EB
        sta     ($EC,x)
        sta     ($EC,x)
        sta     ($EB,x)
        eor     ($7E,x)
        sta     ($EB,x)
        sta     ($EC,x)
        cmp     ($EB,x)
        cmp     ($EB,x)
        eor     ($7E,x)
        eor     ($7E,x)
        eor     ($7E,x)
        cmp     ($0B,x)
        sei
        cpx     #$02
        sbc     ($02,x)
        .byte   $E2
        .byte   $03
        .byte   $F7
        .byte   $03
        sed
        .byte   $03
        sbc     $03
        sbc     LFA03,y
        .byte   $03
        .byte   $FB
        .byte   $03
        .byte   $FC
        .byte   $03
        sbc     LFE03,x
        .byte   $03
        .byte   $0B
        ror     $E0,x
        .byte   $02
        .byte   $FF
        .byte   $02
        bne     LE284
        cmp     ($03),y
        .byte   $D2
LE284:  .byte   $03
        .byte   $D3
        .byte   $03
        .byte   $D4
        .byte   $03
        cmp     $03,x
        dec     $03,x
        .byte   $D7
        .byte   $03
        cld
        .byte   $03
        cmp     $0803,y
        .byte   $7A
        dec     LDF03,x
        .byte   $03
        dec     LDC43,x
        .byte   $83
        cmp     LDC83,x
        .byte   $C3
        cmp     LDC03,x
        .byte   $43
        .byte   $DC
        .byte   $03
        brk
        .byte   $7C
        .byte   $DC
        .byte   $03
        ora     #$7E
        .byte   $F7
        .byte   $03
        sed
        .byte   $02
        sbc     LFA03,y
        .byte   $02
        .byte   $FB
        .byte   $03
        sbc     LFE03,x
        .byte   $03
        .byte   $FC
        .byte   $03
        .byte   $FF
        .byte   $03
        cmp     $0B03,y
        .byte   $80
        sbc     LFA03,y
        .byte   $02
        .byte   $DA
        .byte   $03
        inc     LF703,x
        .byte   $03
        sed
        .byte   $02
        .byte   $DB
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FB
        .byte   $03
        ora     #$7E
        .byte   $F7
        .byte   $03
        sed
        .byte   $02
        sbc     LFA03,y
        .byte   $02
        .byte   $FB
        .byte   $03
        .byte   $DC
        .byte   $03
        inc     LDD03,x
        .byte   $03
        dec     LDF03,x
        .byte   $03
        brk
        .byte   $1A
        .byte   $8F
        rti

        brk
        .byte   $1A
        .byte   $8F
        ora     (L0000,x)
        .byte   $1A
        sta     $01
        brk
        .byte   $1A
        .byte   $8F
        eor     ($01,x)
        sty     $AE
        .byte   $03
        ldx     $0103
        sty     $AF
        .byte   $03
        .byte   $AF
        .byte   $03
        ora     ($84,x)
        bcs     LE311
LE311:  bcs     LE313
LE313:  ora     ($84,x)
        lda     (L0000),y
        lda     (L0000),y
        ora     ($84,x)
        .byte   $FC
        brk
        .byte   $FC
        brk
        ora     ($84,x)
        sbc     LFD00,x
        brk
        sbc     #$ED
        .byte   $07
        and     ($39,x)
        eor     $71,x
        sta     LC3A7
        cmp     $01EB,y
        .byte   $17
        .byte   $2F
        .byte   $4B
        .byte   $53
        eor     $8D73,y
        .byte   $A7
        .byte   $C3
        .byte   $DF
        .byte   $FB
        .byte   $17
        .byte   $33
        .byte   $4F
        .byte   $6B
        .byte   $6F
        adc     $B07D,y
        .byte   $87
        sta     ($9B),y
        .byte   $A3
        .byte   $A7
        .byte   $AB
        .byte   $AF
        .byte   $B3
        .byte   $B7
        .byte   $D7
        .byte   $F7
        ora     ($15),y
        .byte   $33
        eor     ($73),y
        sta     $BBA5
        .byte   $D3
        sbc     LF7F1
        .byte   $03
        .byte   $13
        .byte   $2B
        eor     #$67
        adc     $B79B,x
        .byte   $D3
        .byte   $EB
        .byte   $07
        ora     ($15),y
        and     $41,x
        eor     $6D51
        .byte   $89
        .byte   $A3
        .byte   $BF
        sbc     ($03,x)
        .byte   $25
LE374:  .byte   $33
        eor     #$6F
        adc     $A187,y
        lda     LE9E1,x
        .byte   $F7
        sbc     $0903,x
        .byte   $0F
        ora     $2F,x
        .byte   $4F
        .byte   $6F
        .byte   $8F
        lda     #$AF
        .byte   $B3
        lda     LC3BD,y
        .byte   $C7
        cmp     LDBD1
        sbc     $E9
        sbc     LF9F5
        sbc     $0B01,x
        .byte   $1F
        and     $795F,x
        .byte   $93
        .byte   $A7
        .byte   $AB
        cmp     ($DB,x)
        sbc     ($F5),y
        sbc     $01FD,y
        .byte   $07
        .byte   $0D
LE3A9:  .byte   $13
        ora     $251F,y
        and     $25
        and     $25
        and     $25
        and     $25
        and     $25
        and     $25
        and     $25
        and     $25
        and     $25
        and     $25
        .byte   $C2
        and     $25
        and     $99
        sta     $9A9A,y
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
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        ora     $9C
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
        sta     $9D9D,x
        sta     $9D9D,x
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
LE404:  .byte   $9E
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
        ldy     #$A0
        ldy     #$A0
        ldy     #$A0
        ldy     #$A0
        ldy     #$A0
        ldy     #$A0
        ldy     #$A1
        lda     ($A1,x)
        lda     ($A1,x)
        lda     ($A1,x)
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
        ldx     #$A2
        ldx     #$A2
        ldx     #$A2
        ldx     #$A2
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        .byte   $A3
        ora     $A3
        .byte   $A3
        .byte   $A3
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
        inc     $F7,x
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
        inc     $0C,x
        .byte   $FE
        .byte   $F4
LE4E9:  inc     $FEFC,x
        .byte   $04
        inc     $060C,x
        sbc     $F7F8,y
        beq     LE4E9
        sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        sed
LE4FC:  cpx     $0400
        brk
        .byte   $FC
        brk
        .byte   $F4
        brk
        cpx     $0408
        php
        .byte   $FC
        php
        .byte   $F4
        sed
        ora     ($F0,x)
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
        beq     LE59E
        brk
        .byte   $04
        sed
        .byte   $04
LE59E:  beq     LE5A4
        php
        .byte   $FC
        .byte   $FD
        .byte   $09
LE5A4:  .byte   $02
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
LE5B4:  beq     LE5B4
        sbc     LF806
        .byte   $FC
LE5BA:  brk
        .byte   $FC
        sed
        .byte   $FC
        beq     LE5C4
        brk
        .byte   $04
        sed
        .byte   $04
LE5C4:  beq     LE5BA
        .byte   $FC
        .byte   $F4
        .byte   $F4
        inc     $060B,x
        brk
        .byte   $FC
        sed
LE5CF:  .byte   $FC
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
LE5E4:  sed
        .byte   $F4
        beq     LE5E4
        brk
        .byte   $FC
        sed
        .byte   $FC
        beq     LE5F2
        brk
        .byte   $04
        sed
        .byte   $04
LE5F2:  beq     LE5F2
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
        beq     LE61C
        brk
        .byte   $04
        sed
        .byte   $04
LE61C:  beq     LE622
        php
        .byte   $FC
        .byte   $FD
        .byte   $09
LE622:  .byte   $02
        .byte   $04
        .byte   $0C
        .byte   $F4
        .byte   $FF
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
LE62C:  php
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $04
        beq     LE62C
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
        .byte   $FC
        sed
        .byte   $FC
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
LE689:  sed
        sed
LE68B:  sed
        brk
        brk
        sed
        brk
        brk
        beq     LE68B
        beq     LE695
LE695:  php
        sed
        php
        brk
        sed
        brk
        sed
        sed
LE69D:  brk
        brk
        brk
        sed
        beq     LE6A3
LE6A3:  beq     LE69D
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
        sbc     L010C,y
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
LE714:  sed
        .byte   $F4
        beq     LE714
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
LE730:  php
        .byte   $FC
        beq     LE730
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
LE743:  sed
        brk
        brk
        sed
        brk
        brk
        bpl     LE743
        bpl     LE74D
LE74D:  clc
        sed
        clc
        brk
        clc
        brk
        .byte   $F4
        sed
        brk
        .byte   $07
        cpx     LF4F8
        brk
        .byte   $F4
LE75C:  sed
        .byte   $F4
        beq     LE75C
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
LE778:  php
        .byte   $FC
        beq     LE778
        sed
        .byte   $FC
        brk
        sbc     $0408,x
        sed
        .byte   $04
        brk
        .byte   $0C
        sed
        .byte   $F3
        .byte   $04
        .byte   $F4
        sed
        cpx     LF4F8
        brk
        .byte   $F4
LE790:  sed
        .byte   $F4
        beq     LE790
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
LE7AC:  php
        .byte   $FC
        beq     LE7AC
        sed
        .byte   $FC
        brk
        sbc     $0408,x
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
LE7EA:  .byte   $04
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        sed
        beq     LE7EA
        sed
        sed
        brk
        sed
        php
        brk
        beq     LE7FA
LE7FA:  sed
        brk
        brk
        brk
        php
        sed
        php
        sed
        brk
        sed
        sed
        sed
        beq     LE808
LE808:  php
        brk
        brk
        brk
        sed
        brk
        beq     LE808
        sed
        sed
        brk
        brk
        .byte   $F4
        brk
        .byte   $FC
        brk
LE818:  .byte   $04
        sed
        brk
        sed
        sed
        brk
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
        inc     LEE04
        .byte   $FC
        inc     $08,x
        inc     L0000,x
        inc     $F8,x
        inc     $F0,x
        inc     LFEFE,x
        inc     $06,x
        inc     LF606,x
        sed
        sed
LE839:  sed
        brk
        brk
        sed
        brk
        brk
        beq     LE839
        beq     LE843
LE843:  php
        sed
        php
LE846:  brk
        beq     LE839
        beq     LE853
        sed
        beq     LE846
        php
        sed
        brk
        sed
        sed
LE853:  brk
LE854:  brk
        brk
        sed
        beq     LE859
LE859:  beq     LE853
        php
        brk
        php
        sed
        beq     LE869
        beq     LE853
        sed
        php
        sed
        beq     LE854
        .byte   $F4
LE869:  cpx     LECFC
        .byte   $04
        cpx     LF40C
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
        beq     LE88B
        cpx     LECF8
        brk
        .byte   $EC
        php
LE88B:  .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $F4
        php
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $F4
        brk
        sed
        sed
        sed
        brk
        brk
        sed
        brk
        brk
        sed
        brk
        sed
        sed
        brk
        brk
        brk
        sed
        .byte   $FC
        .byte   $FC
LE8AF:  .byte   $FC
        .byte   $FC
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
        brk
        .byte   $FC
        sed
LE8B9:  beq     LE8AF
        beq     LE8B9
        sed
        .byte   $F4
        sed
        .byte   $FC
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
        .byte   $F7
        .byte   $F6
LE8CF:  beq     $E8D5
        beq     LE8CF
        sed
        .byte   $04
        sed
        .byte   $FC
LE8D7:  brk
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
        php
        .byte   $04
        php
        .byte   $FC
LE8E1:  php
        .byte   $F4
        .byte   $F7
LE8E4:  .byte   $02
        beq     LE8D7
        beq     LE8E1
        sed
        beq     LE8E4
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
        .byte   $F7
        .byte   $F2
        beq     LE903
        .byte   $F0
LE8FC:  brk
LE8FD:  sed
        php
        sed
        brk
        sed
        sed
LE903:  brk
        brk
        brk
        sed
        php
        brk
        php
        sed
        .byte   $F7
        asl     $F0
        .byte   $FC
        beq     LE915
        beq     LE91F
        sed
        .byte   $FC
LE915:  sed
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $04
LE91B:  php
        .byte   $F4
        php
        .byte   $FC
LE91F:  php
        .byte   $04
        .byte   $F7
        inc     LFCF0,x
        beq     LE91B
        beq     LE915
        sed
        .byte   $FC
        sed
        .byte   $F4
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
        .byte   $F7
        .byte   $FA
        .byte   $F4
        inc     LF6F4
        .byte   $FC
        inc     LF6FC
        .byte   $FC
        inc     LEE04,x
        .byte   $04
LE946:  inc     $04,x
        inc     LF60C,x
        .byte   $0C
        inc     $060C,x
        .byte   $FB
        beq     LE946
        asl     a
        .byte   $F4
        .byte   $02
        .byte   $FC
        asl     a
        .byte   $FC
        .byte   $02
        .byte   $FC
        .byte   $FA
        .byte   $04
        asl     a
        .byte   $04
        .byte   $02
        .byte   $04
        .byte   $FA
        .byte   $0C
        .byte   $02
        .byte   $0C
        .byte   $FA
        .byte   $0C
        .byte   $F2
        .byte   $FB
        php
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $F4
        .byte   $F4
        cpx     LF4F4
        cpx     LFCEC
        .byte   $F4
        .byte   $FC
        .byte   $FC
        cpx     LE4FC
        .byte   $04
        cpx     LE404
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $F4
        .byte   $04
        cpx     LF404
        .byte   $0C
        .byte   $EC
        .byte   $FC
LE98B:  .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $14
        .byte   $04
        .byte   $0C
        .byte   $04
LE994:  .byte   $14
LE995:  beq     LE98B
        beq     LE995
        sed
        beq     LE994
        sed
        sed
        brk
        sed
        php
        brk
        beq     LE9A4
LE9A4:  sed
        brk
        brk
        brk
        php
        php
        beq     LE9B4
        sed
        php
        brk
        php
        php
        beq     LE9B7
        .byte   $F0
LE9B4:  .byte   $FC
        sed
        php
LE9B7:  sed
        brk
        sed
        sed
        sed
LE9BC:  beq     LE9BE
LE9BE:  php
        brk
        brk
        brk
        sed
        brk
        beq     LE9CE
        php
        php
        brk
        php
LE9CA:  sed
        php
        beq     LE9BC
LE9CE:  .byte   $F4
        inc     LF6FC
        beq     LE9CA
        sed
        inc     L0000,x
        inc     $08,x
        inc     LFEFA,x
        .byte   $02
        asl     $FA
        asl     $02
LE9E1:  .byte   $EE
        .byte   $04
LE9E3:  inc     LF6FC
        php
        inc     L0000,x
        inc     $F8,x
LE9EB:  inc     $F0,x
        inc     LFEFE,x
        inc     $06,x
        .byte   $FE
        .byte   $06
LE9F4:  .byte   $F6
LE9F5:  beq     LE9EB
        beq     LE9F5
        sed
        beq     LE9F4
LE9FC:  sed
        sed
        brk
        sed
        php
        brk
        beq     LEA04
LEA04:  sed
        brk
        brk
        brk
        php
        php
        sbc     $08,x
        sbc     $0508,x
LEA0F:  beq     LEA15
        beq     LEA0F
        sed
        php
LEA15:  sed
        brk
        sed
        sed
        sed
        .byte   $F0
LEA1B:  brk
LEA1C:  php
        brk
        brk
        brk
        sed
        brk
        beq     LEA2C
        .byte   $03
        php
        .byte   $FB
        php
        .byte   $F3
        beq     LEA1B
        .byte   $F0
LEA2C:  sed
        sed
        cpx     LF4F8
        sed
        .byte   $FC
        sed
        .byte   $04
        brk
        inx
        brk
        beq     LEA3A
LEA3A:  sed
        brk
        brk
        php
        sbc     ($F0),y
        php
        beq     LEA43
LEA43:  sed
        .byte   $0C
        sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        brk
LEA4C:  bpl     LEA4E
LEA4E:  php
        brk
        brk
        brk
        sed
        php
        .byte   $07
        nop
        .byte   $FA
        .byte   $F2
        beq     LEA4C
LEA5A:  sed
        .byte   $F2
        brk
        .byte   $FA
        beq     LEA5A
        sed
        .byte   $FA
        brk
        .byte   $FA
        php
        .byte   $02
        .byte   $FA
        .byte   $02
        .byte   $02
        asl     a
        .byte   $F4
        asl     a
        .byte   $FC
        asl     a
        .byte   $04
        nop
        inc     $08F2,x
        .byte   $F2
        brk
        .byte   $F2
        sed
        .byte   $FA
        php
        .byte   $FA
        brk
        .byte   $FA
        sed
        .byte   $FA
        beq     LEA82
        .byte   $FE
        .byte   $02
LEA82:  inc     $0A,x
        .byte   $04
        asl     a
        .byte   $FC
        asl     a
        .byte   $F4
        .byte   $F7
        .byte   $FE
LEA8B:  inx
        .byte   $FC
        beq     LEA8B
        beq     LEA95
        sed
        .byte   $FC
        sed
        .byte   $04
LEA95:  sed
        .byte   $0C
        brk
        .byte   $FC
        brk
        .byte   $04
        brk
        .byte   $0C
        php
        .byte   $FC
        php
        .byte   $04
        php
        .byte   $0C
LEAA3:  brk
        .byte   $F4
        php
        .byte   $F4
        .byte   $F7
        .byte   $FA
LEAA9:  inx
        .byte   $FC
        beq     LEAA9
        beq     LEAA3
        sed
        .byte   $FC
        sed
        .byte   $F4
        sed
        cpx     LFC00
        brk
        .byte   $F4
        brk
        cpx     LFC08
        php
        .byte   $F4
LEABF:  php
        cpx     $0400
        php
        .byte   $04
        .byte   $F7
        inc     $E8,x
        .byte   $F4
LEAC9:  beq     LEABF
        beq     LEAC9
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
        brk
        .byte   $04
        php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        .byte   $F7
        .byte   $02
        inx
        .byte   $04
LEAE3:  beq     LEAE9
        beq     LEAE3
        sed
        .byte   $04
LEAE9:  sed
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
        sed
        inc     $E9,x
        .byte   $F4
        sbc     ($F4),y
        sbc     ($FC),y
        sbc     LF9F4,y
        .byte   $FC
        sbc     $0104,y
        .byte   $F4
        ora     ($FC,x)
        ora     ($04,x)
        ora     #$F4
        ora     #$FC
        ora     #$04
        sed
        .byte   $02
        sbc     #$04
        sbc     ($04),y
        sbc     ($FC),y
        sbc     LF904,y
        .byte   $FC
        sbc     $01F4,y
        .byte   $04
        ora     ($FC,x)
        ora     ($F4,x)
        ora     #$04
        ora     #$FC
        ora     #$F4
        sed
        sed
        sed
        brk
        brk
        .byte   $F4
        brk
        .byte   $FC
        brk
        .byte   $04
        sed
        brk
        sed
        sed
        brk
        .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
        sbc     #$F4
        sbc     ($EC),y
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
        sbc     LE9FC,y
        .byte   $04
        sbc     ($0C),y
        sbc     ($04),y
        sbc     ($FC),y
        sbc     LF90C,y
        .byte   $04
        sbc     LF9FC,y
        .byte   $F4
LEB71:  ora     ($0C,x)
        ora     ($04,x)
        ora     ($FC,x)
        ora     ($F4,x)
        ora     #$04
LEB7B:  ora     #$FC
        ora     #$F4
        sbc     LE8FC,y
        .byte   $F4
        beq     LEB71
LEB85:  beq     LEB7B
        beq     LEB85
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
        brk
        .byte   $04
        php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $FC
        inx
        .byte   $04
        beq     LEBB1
LEBA5:  beq     LEBAB
        beq     LEBA5
        sed
        .byte   $0C
LEBAB:  sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
LEBB1:  brk
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
        sed
        .byte   $FC
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
        brk
        .byte   $04
        sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        brk
LEBD4:  .byte   $04
        brk
        .byte   $FC
        brk
        .byte   $F4
        sed
        beq     LEBD4
        brk
        brk
        beq     LEBE0
LEBE0:  sed
        brk
        brk
        php
        cpx     LF408
        php
        .byte   $FC
        php
        .byte   $04
        php
        cpx     $08F8
        sed
        sed
        brk
        php
        brk
        brk
        brk
        sed
        php
        .byte   $0C
        php
        .byte   $04
        php
        .byte   $FC
LEBFD:  php
        .byte   $F4
        php
        .byte   $0C
        inx
        .byte   $F4
        inx
        .byte   $FC
        inx
        .byte   $04
LEC07:  beq     LEBFD
LEC09:  beq     LEC07
LEC0B:  .byte   $F0
LEC0C:  .byte   $04
        sed
        .byte   $F4
        sed
        .byte   $FC
LEC11:  sed
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
        inx
        .byte   $F4
        beq     LEC27
        .byte   $F7
        .byte   $F6
LEC25:  inx
        .byte   $04
LEC27:  inx
        .byte   $FC
        inx
        .byte   $F4
LEC2B:  beq     LEC31
        beq     LEC2B
        beq     LEC25
LEC31:  sed
        .byte   $04
        sed
        .byte   $FC
        sed
        .byte   $F4
        brk
        .byte   $04
        brk
        .byte   $FC
LEC3B:  brk
        .byte   $F4
        php
        .byte   $04
        php
        .byte   $FC
        php
        .byte   $F4
LEC43:  inx
        .byte   $04
        beq     LEC3B
        .byte   $F7
        .byte   $02
        beq     LEC43
        beq     LEC4D
LEC4D:  sed
        sed
        sed
        brk
        sed
        php
LEC53:  brk
        beq     LEC56
LEC56:  sed
        brk
LEC58:  brk
        brk
        php
        php
        brk
        php
        php
        sed
        brk
        beq     LEC53
LEC63:  beq     LEC6D
        sed
        beq     LEC58
        brk
        beq     LEC63
        sed
        brk
LEC6D:  sed
        sed
        sed
        beq     LEC72
LEC72:  php
        brk
        brk
        brk
LEC76:  sed
        brk
        beq     LEC82
        sed
        php
LEC7C:  beq     LEC76
        sed
        beq     LEC89
        .byte   $F0
LEC82:  beq     LEC7C
        php
        sbc     ($F8),y
        sbc     (L0000),y
LEC89:  sbc     LF9F0,y
        sed
        sbc     LF900,y
        php
        ora     ($F8,x)
        ora     (L0000,x)
        ora     ($08,x)
        ora     #$00
        ora     #$08
        sbc     LF1F8,y
        brk
        sbc     ($F8),y
        sbc     LF908,y
        brk
        sbc     LF9F8,y
        beq     LECAB
        brk
LECAB:  ora     ($F8,x)
        ora     ($F0,x)
        ora     #$F8
        ora     #$F0
        sbc     LF800,y
        .byte   $FC
        brk
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $FC
        sed
        sbc     LFD00,x
        sed
        .byte   $FB
        brk
        .byte   $FB
        brk
        beq     LECC8
LECC8:  sed
        brk
        brk
        brk
        php
        sed
        sed
        sed
        brk
        brk
LECD2:  php
        brk
        brk
        brk
        sed
        brk
        beq     LECD2
        brk
LECDB:  sed
        sed
        inx
        sed
        inx
        brk
        .byte   $F0
LECE2:  sed
        beq     LECE5
LECE5:  beq     LECEF
LECE7:  sed
        beq     LECE2
        sed
        sed
LECEC:  brk
LECED:  sed
        php
LECEF:  brk
        sed
        brk
        brk
        brk
LECF4:  php
        beq     LECE7
        inx
LECF8:  inx
LECF9:  inx
        beq     LECEC
LECFC:  inx
        sed
        inx
LECFF:  inx
        brk
        inx
        sed
LED03:  .byte   $F0
LED04:  brk
LED05:  beq     LECFF
        .byte   $F0
LED08:  beq     $ED02
        php
        sed
        brk
        sed
LED0E:  sed
        sed
        beq     LED12
LED12:  brk
        brk
        sed
        brk
        beq     LED08
        php
        inx
        bpl     LED04
        php
        beq     LED2F
        sed
        bpl     LED0E
        .byte   $F4
        cpx     LECFC
        .byte   $04
        cpx     LF40C
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
LED2F:  .byte   $F4
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
        beq     LED45
        cpx     LECF8
        brk
        .byte   $EC
        php
LED45:  .byte   $F4
        sed
        .byte   $F4
        brk
        .byte   $F4
        php
        .byte   $FC
        sed
        .byte   $FC
        brk
        .byte   $04
        sed
        .byte   $04
        brk
        .byte   $04
        php
        .byte   $F4
LED56:  brk
        .byte   $FC
        php
        .byte   $FC
        brk
        sed
        beq     LED56
        sed
LED5F:  sed
        brk
        brk
        beq     LED64
LED64:  sed
        brk
        brk
        php
        .byte   $F0
LED69:  php
        sed
        php
        brk
        beq     LED5F
        beq     LED69
        .byte   $F0
LED72:  brk
        brk
        php
        php
        php
        .byte   $F4
        sed
        beq     LED7B
LED7B:  sed
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
LED8B:  php
        sed
        beq     LED97
        beq     LED91
LED91:  beq     LED8B
LED93:  brk
        beq     LED9E
        .byte   $F0
LED97:  .byte   $F4
        brk
        beq     LED93
        sed
        cpx     #$F8
LED9E:  inx
        sed
        beq     LEDA2
LEDA2:  cld
        brk
        cpx     #$00
        inx
        brk
        beq     LEDAA
LEDAA:  sed
        php
        inx
        php
        beq     LEDB8
        sed
        php
        brk
        sed
        sed
        sed
        brk
        brk
LEDB8:  brk
        php
        php
        sed
        clc
        sed
        bpl     LEDB8
        php
        brk
        jsr     L1800
        brk
        bpl     LEDC8
LEDC8:  php
        brk
        brk
        php
LEDCC:  bpl     LEDD6
        php
        php
        brk
        php
        sed
        sed
        brk
        sed
LEDD6:  sed
        brk
        sed
        php
        beq     LEDCC
        sed
        beq     LEDDF
LEDDF:  beq     LEDE9
        sed
        sed
        sed
        brk
        sed
        php
        brk
        sed
LEDE9:  brk
        brk
        brk
        php
        php
        sed
LEDEF:  php
        brk
        php
        php
        beq     LEDF5
LEDF5:  beq     LEDEF
        beq     LEDE9
        sed
        brk
        sed
        sed
        sed
        beq     LEE00
LEE00:  brk
        brk
        sed
        brk
LEE04:  beq     LEE0E
        brk
        php
        sed
        php
        beq     LEE04
        .byte   $F4
        sed
LEE0E:  .byte   $FC
        sed
        .byte   $04
LEE11:  brk
        .byte   $F4
        brk
        .byte   $FC
LEE15:  brk
        .byte   $04
        beq     LEE15
        beq     LEE1F
        beq     LEE11
        .byte   $FB
        .byte   $FC
LEE1F:  php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $04
        sed
        .byte   $FC
LEE29:  sed
        .byte   $F4
        brk
        .byte   $04
        brk
        .byte   $FC
LEE2F:  brk
        .byte   $F4
        beq     LEE2F
        beq     LEE29
        beq     LEE3B
        .byte   $FB
        .byte   $FC
        php
        .byte   $04
LEE3B:  php
        .byte   $FC
        php
        .byte   $F4
        sed
        .byte   $F4
        sed
        .byte   $FC
        sed
        .byte   $04
LEE45:  brk
        .byte   $F4
        brk
        .byte   $FC
LEE49:  brk
        .byte   $04
        beq     LEE49
        beq     LEE53
        beq     LEE45
        .byte   $FB
        .byte   $FC
LEE53:  php
        .byte   $F4
        php
        .byte   $FC
        php
        .byte   $04
        sed
        .byte   $04
        sed
        .byte   $FC
LEE5D:  sed
        .byte   $F4
        brk
        .byte   $04
        brk
        .byte   $FC
LEE63:  brk
        .byte   $F4
        beq     LEE63
        beq     LEE5D
        beq     LEE6F
        .byte   $FB
        .byte   $FC
        php
        .byte   $04
LEE6F:  php
        .byte   $FC
        php
        .byte   $F4
        sbc     ($F8),y
        sbc     (L0000),y
        sbc     LF9F8,y
        brk
        sbc     $0108,y
        sed
        ora     (L0000,x)
        ora     $F0
        ora     #$F8
        ora     #$00
        sbc     (L0000),y
        sbc     ($F8),y
        sbc     LF900,y
        sed
        sbc     $01F0,y
        brk
        ora     ($F8,x)
        ora     $08
        ora     #$00
        ora     #$F8
        sed
        sed
LEE9D:  sed
        brk
        brk
        sed
        brk
        brk
        beq     LEE9D
        beq     LEEA7
LEEA7:  php
        sed
        php
LEEAA:  brk
        beq     LEE9D
        beq     LEEB7
        sed
        beq     LEEAA
        php
        sed
        brk
        sed
        sed
LEEB7:  brk
LEEB8:  brk
        brk
        sed
        beq     LEEBD
LEEBD:  beq     LEEB7
        php
        brk
        php
        sed
        beq     LEECD
        beq     LEEB7
        sed
        php
        sed
        beq     LEEB8
        .byte   $EC
LEECD:  cpx     LECF4
        .byte   $FC
        cpx     LF404
        cpx     LF4F4
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $04
        .byte   $FC
        cpx     LF4FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
        cpx     LF404
        .byte   $04
        .byte   $FC
        .byte   $04
        .byte   $04
        cpx     LEC0C
        .byte   $04
        cpx     LECFC
        .byte   $F4
        .byte   $F4
        .byte   $0C
        .byte   $F4
        .byte   $04
        .byte   $F4
        .byte   $FC
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $0C
        .byte   $FC
        .byte   $04
        .byte   $FC
LEF00:  .byte   $FC
        .byte   $FC
        .byte   $F4
LEF03:  .byte   $04
        .byte   $0C
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $FC
LEF09:  .byte   $04
        .byte   $F4
        beq     LEF09
        php
        .byte   $FC
        sed
        sed
        sed
        brk
        sed
        php
        brk
        sed
        brk
        brk
        brk
        php
        sed
        brk
        sed
        sed
        sed
        beq     LEF22
LEF22:  brk
        brk
        sed
        brk
        beq     LEF8D
        adc     $AD95,x
        cmp     $DB
        sbc     ($0B),y
        and     $3F
        eor     $8D73,y
        lda     ($B5,x)
        cmp     #$DD
        .byte   $F3
        ora     #$1F
        and     $4F,x
        adc     #$6F
        adc     $79,x
        adc     $8983,x
        sta     LC3A9,y
        cmp     $0DF5,x
        .byte   $27
        eor     ($51,x)
        .byte   $53
        adc     $A187
        .byte   $BB
        cmp     $CF
        cmp     LE9E3,y
        .byte   $EF
        .byte   $FF
        .byte   $0F
        ora     $3723,y
        .byte   $37
        .byte   $4F
        .byte   $67
        sta     $9D
        lda     $AD
        .byte   $AF
        lda     ($B5),y
        lda     LE5CF,y
        sbc     $230D,y
        and     $6951,y
        .byte   $7F
        sta     $B1,x
        cmp     LF5E1
        .byte   $0F
        and     #$3F
        eor     $6F,x
        .byte   $89
        .byte   $A7
        cmp     $DF
        sbc     $2D13,y
        .byte   $37
        eor     ($61,x)
        sta     ($A1,x)
        cmp     ($CD,x)
        cmp     $01ED,y
        .byte   $25
LEF8D:  eor     #$67
        sta     $9D
        lda     $B9,x
        lda     LC5C1,x
        cmp     ($DD),y
        .byte   $FF
        and     ($3F,x)
        .byte   $5B
        .byte   $7B
        .byte   $9B
        .byte   $BB
        .byte   $DB
        .byte   $F3
        .byte   $0B
        and     $3F
        eor     $8773,y
        .byte   $9B
        .byte   $B3
        .byte   $CB
        .byte   $EB
        .byte   $0B
        .byte   $0F
        .byte   $0F
        .byte   $1B
        ldy     $A4
        ldy     $A4
        ldy     $A4
        ldy     $A5
        lda     $A5
        lda     $A5
        lda     $A5
        lda     $A5
        lda     $A5
        ldx     $A6
        ldx     $A6
        ldx     $A6
        ldx     $A6
        ldx     $A6
        ldx     $A6
        ldx     $A6
        ldx     $A6
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
        lda     #$AA
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
        ldy     $ACAC
        ldy     $ACAC
        ldy     $ACAC
        ldy     $ACAC
        ldy     $ADAC
        lda     $ADAD
        lda     $ADAD
        lda     $AEAE
        ldx     $AEAE
        ldx     $AEAE
        ldx     $AFAE
        .byte   $AF
        .byte   $AF
        .byte   $AF
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
        .byte   $02
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
        bpl     LF071
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
LF071:  ora     ($04,x)
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
        asl     $01,x
        .byte   $04
        .byte   $1B
        .byte   $2B
        adc     $0205,x
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
        .byte   $02
        .byte   $04
        ror     $807F,x
        ora     ($04,x)
        bit     $25
        ora     ($04,x)
        rol     $27
LF0A8:  brk
        php
        .byte   $1F
        brk
        php
        rol     $0800
        .byte   $2F
        brk
        php
        .byte   $72
        ora     ($06,x)
        .byte   $22
        ror     $0411
        ora     #$06
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $02
        plp
        and     #$29
        and     #$29
        ora     ($01,x)
        .byte   $02
        rol     a
        .byte   $02
        ora     ($01,x)
        .byte   $04
        .byte   $17
        clc
        .byte   $2B
        .byte   $04
        ora     ($02,x)
        bit     $2C2C
        bit     $2D2D
        bit     $2D2C
        and     $2C2C
        bit     $2C2C
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
        ora     (L0000,x)
        php
        .byte   $9C
        brk
        php
        .byte   $9C
        ora     $02,x
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $83
        .byte   $83
        .byte   $83
        sty     $85
        stx     $82
        .byte   $82
        .byte   $82
        .byte   $02
        asl     $6F
        bvs     LF192
        .byte   $07
        .byte   $04
        .byte   $62
        .byte   $63
        .byte   $64
        adc     $66
        .byte   $67
        pla
        adc     #$01
        .byte   $0C
        eor     ($52),y
        .byte   $02
        php
        eor     ($52),y
        .byte   $53
        .byte   $02
        php
        .byte   $53
        .byte   $52
        eor     ($0C),y
        .byte   $04
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $54
        .byte   $54
        .byte   $54
        eor     $55,x
        eor     $55,x
        .byte   $54
        .byte   $54
        .byte   $54
        ora     ($08,x)
        lsr     $57,x
        ora     ($08,x)
        cli
        eor     $0405,y
        .byte   $5A
        .byte   $5A
        .byte   $5B
        .byte   $5B
        .byte   $5C
        brk
        brk
        php
        eor     $0800,x
        lsr     $0802,x
        lsr     $605F,x
        ora     ($14,x)
        eor     a:$61,x
        php
        .byte   $53
        ora     ($08,x)
        ror     a
        .byte   $6B
        brk
        php
        .byte   $34
        brk
        php
        bmi     LF175
LF175:  php
        and     ($0F),y
        php
        bmi     LF1AD
        .byte   $33
        bmi     LF1AE
        bmi     LF1B2
        .byte   $33
        bmi     LF1B3
        bmi     LF1B7
        .byte   $33
        bmi     LF1B8
        bmi     LF199
        php
        and     $36,x
        .byte   $37
        sec
        .byte   $37
        .byte   $37
        .byte   $37
LF192:  .byte   $37
        sec
        .byte   $37
        .byte   $37
        .byte   $37
        .byte   $37
        sec
LF199:  rol     $35,x
        brk
        php
        adc     ($01,x)
        php
        jmp     (L006D)

        php
        and     $0800,y
        and     $0603,x
        .byte   $3A
        .byte   $3B
        .byte   $3C
LF1AD:  .byte   $3B
LF1AE:  ora     ($02,x)
        .byte   $3E
        .byte   $39
LF1B2:  brk
LF1B3:  .byte   $0C
        .byte   $3F
        brk
        .byte   $0C
LF1B7:  rti

LF1B8:  ora     ($02,x)
        eor     ($42,x)
        brk
        php
        .byte   $47
        .byte   $03
        asl     a
        pha
        eor     #$4A
        eor     #$00
        php
        .byte   $43
        ora     ($04,x)
        .byte   $44
        eor     L0000
        php
        lsr     $03
        asl     a
        .byte   $4B
        jmp     L4C4D

        brk
        php
        lsr     $0800
        .byte   $4F
        ora     ($08,x)
        bvc     LF22E
        ora     $7404
        .byte   $73
        .byte   $74
        .byte   $74
        .byte   $73
        .byte   $74
        .byte   $74
        .byte   $73
        .byte   $73
        .byte   $74
        .byte   $73
        .byte   $73
        .byte   $74
        .byte   $73
        .byte   $02
        php
        ror     $77,x
        .byte   $77
LF1F4:  brk
        php
        .byte   $79
        .byte   $03
LF1F8:  php
LF1F9:  .byte   $7A
        .byte   $7B
        .byte   $7C
        .byte   $7B
        ora     $7304
        .byte   $74
        .byte   $73
        .byte   $73
        .byte   $74
        .byte   $73
        .byte   $73
        .byte   $74
        .byte   $74
        .byte   $73
        .byte   $74
        .byte   $74
        .byte   $73
        .byte   $74
        brk
        .byte   $0B
        ror     L0000,x
        php
        adc     L0000,x
        php
        sei
        ora     #$02
        rol     $3E39,x
        and     $393E,y
        rol     $3E39,x
        and     $3737,y
        .byte   $3A
        and     $4944,x
        lsr     $5752
        .byte   $5B
        .byte   $5E
        .byte   $63
LF22E:  ror     $6B
        adc     ($75),y
        adc     $7F7C,y
        .byte   $82
        .byte   $87
        .byte   $8F
        sty     $98,x
        .byte   $9B
        ldy     #$A4
        tay
        .byte   $AB
        ldx     $B1B1
        lda     ($B1),y
        .byte   $B1
LF245:  ldy     $B4,x
LF247:  ldy     $B4,x
LF249:  ldy     $B4,x
LF24B:  ldy     $B8,x
LF24D:  clv
        .byte   $CC
LF24F:  bne     LF24F
LF251:  ora     ($01,x)
LF253:  ora     ($04,x)
LF255:  .byte   $04
        .byte   $04
LF257:  .byte   $04
        .byte   $04
LF259:  .byte   $04
        .byte   $04
LF25B:  .byte   $04
        .byte   $04
LF25D:  .byte   $04
        .byte   $04
LF25F:  .byte   $04
        .byte   $04
LF261:  .byte   $1C
        .byte   $21
LF263:  .byte   $2B
        .byte   $2F
LF265:  .byte   $34
        .byte   $39
LF267:  pha
        .byte   $4C
LF269:  bvc     LF2C3
LF26B:  .byte   $5B
        .byte   $5E
LF26D:  .byte   $63
        .byte   $67
LF26F:  ror     a
        .byte   $6E
LF271:  adc     ($74),y
        .byte   $77
        .byte   $89
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9E
        ldx     #$A5
        tay
        ldx     $B5B2
        clv
        ldy     LC5BF,x
        iny
        cpy     LD5CF
        cld
        .byte   $DB
        .byte   $DF
        .byte   $EF
        .byte   $F4
        .byte   $F7
        sbc     $100D,x
        .byte   $13
        asl     $B0,x
        bcs     LF245
        bcs     LF247
        bcs     LF249
        bcs     LF24B
        bcs     LF24D
        bcs     LF24F
        bcs     LF251
        bcs     LF253
        bcs     LF255
        bcs     LF257
        bcs     LF259
        bcs     LF25B
        bcs     LF25D
        bcs     LF25F
        bcs     LF261
        bcs     LF263
        bcs     LF265
        bcs     LF267
        bcs     LF269
        bcs     LF26B
        bcs     LF26D
        bcs     LF26F
        bcs     LF271
        lda     ($B1),y
LF2C3:  lda     ($B1),y
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF3F1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF400:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF404:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF408:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF40C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF4F4:  brk
        brk
        brk
        brk
LF4F8:  brk
        brk
LF4FA:  brk
        brk
LF4FC:  brk
        brk
LF4FE:  brk
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
LF541:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF5E1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF5F4:  brk
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
LF604:  .byte   $FF
        .byte   $FF
LF606:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF60C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF699:  .byte   $FF
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
        and     $3A3B,y
        and     $393B,y
        and     $3F3A,y
        .byte   $3F
        brk
        .byte   $3F
        .byte   $3F
        .byte   $47
        rol     $3B00,x
        eor     #$39
        rti

LF6F4:  eor     #$3B
        rti

        .byte   $3C
        .byte   $3B
        .byte   $3C
        .byte   $3C
        .byte   $3C
LF6FC:  rol     a:$48,x
        bmi     LF748
        rti

        .byte   $3F
LF703:  rti

        rti

        .byte   $3B
        rti

        .byte   $3C
        .byte   $3F
        bmi     LF755
        bmi     LF74C
        bmi     LF75F
        bmi     LF767
        rti

        bvc     LF754
        lsr     $56,x
        bvc     LF768
        rti

        lsr     $40,x
        bvc     LF762
        bmi     LF71F
LF71F:  .byte   $2F
        eor     ($30),y
        eor     $5130,y
        rti

        eor     $5240,y
        .byte   $54
        .byte   $53
        eor     $40,x
        cli
        rti

        rts

        brk
        and     $35,x
        .byte   $32
        .byte   $34
        .byte   $2F
        .byte   $32
        rol     L0000,x
        rti

        and     $44,x
        .byte   $34
        brk
        and     $34,x
        .byte   $34
        and     $32,x
        rol     $40,x
        .byte   $34
        .byte   $44
        .byte   $36
LF748:  .byte   $03
        .byte   $04
        ora     #$0A
LF74C:  ora     ($02,x)
        ora     #$0A
        rti

        lsr     a
        rti

        .byte   $31
LF754:  .byte   $56
LF755:  .byte   $3F
        bvc     LF7A2
        cli
        eor     ($60),y
        eor     $3140,y
        rti

LF75F:  eor     L0000
        brk
LF762:  brk
        and     $51,x
        and     ($59),y
LF767:  .byte   $45
LF768:  and     $35,x
        and     $32,x
        .byte   $34
        and     $32,x
        .byte   $32
        ror     $04,x
        ora     $3E0A
        pha
        lsr     a
        bmi     LF779
LF779:  rti

        brk
        rti

        rti

        brk
        bit     $815A
        bmi     LF7DF
        .byte   $5B
        eor     $80
        brk
        .byte   $2F
        .byte   $03
        .byte   $0C
        ora     #$0E
        ora     ($06,x)
        ora     #$0E
        .byte   $32
        .byte   $32
        jmp     L4D2E

        .byte   $1F
        eor     $3B1F
        rti

        and     $3C40,y
        .byte   $3C
        .byte   $5A
        .byte   $5C
        .byte   $3C
        .byte   $3F
LF7A2:  .byte   $5A
        .byte   $5B
        .byte   $3C
        .byte   $3C
        .byte   $5B
        .byte   $5C
        brk
        rti

        .byte   $5A
        bit     $3232
        bit     $25
        .byte   $32
        .byte   $32
        bit     $4B
        ora     $02
        ora     $1F0A
        rol     $1F
        rol     $26
        rol     $26
        rol     $1F
        sec
        .byte   $1F
        sec
        rti

        brk
        rti

        brk
        bit     $405B
        rol     $5A5C,x
        .byte   $3F
        .byte   $47
        bit     $405B
        lsr     $40,x
        .byte   $3F
        bit     $325B
        .byte   $32
        bit     $2E
        .byte   $1F
        .byte   $1F
        .byte   $1F
LF7DF:  .byte   $1F
        adc     #$3F
        .byte   $7A
        .byte   $3C
        .byte   $5C
        bit     $403F
        .byte   $3C
        .byte   $3C
        bit     $315C
        .byte   $45
LF7EE:  eor     L0000
        .byte   $3E
LF7F1:  .byte   $3F
        adc     #$3C
LF7F4:  .byte   $3B
        rol     a:$3C,x
        bit     $405B
        bvc     LF829
        .byte   $5B
        rti

        .byte   $3B
LF800:  rti

        .byte   $3C
        rti

        brk
        pha
        .byte   $47
LF806:  bmi     LF808
LF808:  bmi     LF840
        .byte   $2F
        .byte   $34
        rol     $40,x
        and     $40,x
        .byte   $34
        rol     $35,x
        .byte   $34
        brk
        bmi     LF817
LF817:  .byte   $2F
        rol     $35,x
        and     $32,x
        ror     $0C,x
        ora     $510E
        bmi     LF87C
        .byte   $2F
        brk
        .byte   $47
        .byte   $3C
        brk
        .byte   $15
LF829:  .byte   $12
        ora     $111A,x
        .byte   $12
        ora     $151A,y
        .byte   $12
        pla
        .byte   $0F
        ora     ($12),y
        lsr     a:$4F
        brk
        sei
        .byte   $73
        sei
        .byte   $72
        adc     ($73),y
LF840:  .byte   $32
        .byte   $32
        brk
        brk
        bpl     LF85A
        ora     $131A,x
        .byte   $17
        ora     $171A,y
        .byte   $14
        .byte   $1A
        .byte   $1A
        .byte   $14
        .byte   $14
        ora     $1A,y
        brk
        brk
        brk
        .byte   $13
        .byte   $14
LF85A:  ora     $2A1A,y
        rol     a
        .byte   $2B
        .byte   $2B
        ora     ($12),y
        .byte   $07
        .byte   $0F
        ora     ($12),y
        .byte   $57
        .byte   $0F
        brk
        adc     $7D00,x
        .byte   $7F
        .byte   $7F
        ror     $7D7E,x
        adc     $7D7D,x
        adc     $7D00,x
        brk
        brk
        brk
        sei
        .byte   $72
LF87C:  ora     ($16),y
        ora     $3B1E,y
        .byte   $3B
        .byte   $3C
        .byte   $3C
        adc     ($62,x)
        .byte   $22
        .byte   $23
        ora     ($1E),y
        ora     $2216,y
        .byte   $23
        .byte   $22
        .byte   $23
        ora     ($1E),y
        .byte   $57
        .byte   $27
        eor     $5D23,x
        .byte   $23
        .byte   $22
        .byte   $23
LF89A:  .byte   $64
        adc     $5D
        .byte   $23
        .byte   $64
        adc     $22
        lsr     $5E22,x
        jsr     L2821
        and     #$13
        clc
        ora     $661E,y
        .byte   $67
        .byte   $22
        .byte   $23
        adc     ($62,x)
        .byte   $64
        adc     $77
        .byte   $72
        adc     (L0000),y
        .byte   $17
        .byte   $14
        ora     ($12),y
        pla
        .byte   $0F
        ror     $67
        lsr     a:$4F
        brk
        .byte   $07
        lsr     $7D7D
        .byte   $22
        lsr     $6564,x
        .byte   $17
        .byte   $14
        ora     $171A,y
        .byte   $17
        ora     $781A,y
        .byte   $72
        adc     ($77),y
        .byte   $77
        .byte   $72
        adc     ($77),y
        ror     a
        ror     a
        .byte   $6B
        .byte   $6B
        .byte   $17
        clc
        ora     $1E,y
        .byte   $77
        brk
        sei
        .byte   $07
        .byte   $27
        brk
        brk
LF8EC:  brk
        adc     L0000,x
        adc     $2B,x
        .byte   $2B
        rol     a
        rol     a
        ora     $111A,y
        .byte   $12
        .byte   $19
LF8F9:  asl     $1611,x
        .byte   $77
        .byte   $72
        adc     ($73),y
LF900:  ora     $071E,y
        .byte   $27
LF904:  ror     $7F7E,x
        .byte   $7F
LF908:  bpl     LF91E
        pla
        .byte   $0F
LF90C:  .byte   $13
        .byte   $14
        .byte   $57
        .byte   $0F
        .byte   $13
        .byte   $14
        lsr     $134F
        .byte   $14
        ora     ($12),y
        sei
        adc     ($77),y
        brk
        brk
        .byte   $73
LF91E:  sei
        brk
        brk
        sei
        brk
        brk
        brk
        brk
        .byte   $73
        brk
        .byte   $77
        .byte   $72
        .byte   $63
        .byte   $73
        .byte   $73
        .byte   $63
        adc     ($7A),y
        sei
        .byte   $72
        sei
        .byte   $73
        .byte   $7A
        .byte   $77
        brk
        .byte   $73
        .byte   $77
        .byte   $74
        .byte   $77
        adc     $77,x
        .byte   $74
        brk
        brk
        bpl     LF95A
        ora     $151E,x
        asl     $1D,x
        asl     $7278,x
        adc     ($63),y
        brk
        brk
        brk
        adc     L0000,x
        .byte   $7A
        brk
        brk
        .byte   $7A
        brk
        brk
        .byte   $73
        .byte   $63
        brk
LF95A:  .byte   $7A
        brk
        .byte   $7B
        brk
        .byte   $73
        brk
        brk
        brk
        sei
        .byte   $7C
        sei
        brk
        adc     ($73),y
        .byte   $13
        clc
        .byte   $07
        .byte   $27
        .byte   $5B
        .byte   $5C
        rol     $5A48,x
        .byte   $5A
        .byte   $3B
        .byte   $3C
        adc     $7D00,x
        adc     L0000,x
        brk
        .byte   $73
        bvc     LF9C7
        .byte   $3F
        and     ($4A),y
        .byte   $7B
        cli
        sei
        rts

        .byte   $34
        bmi     LF9B9
        .byte   $32
        adc     $7D00,x
        sei
        .byte   $7B
        brk
        .byte   $73
        and     $5C,x
        .byte   $5B
        rti

        .byte   $3B
        lsr     $30,x
        bvc     LF9C8
        rti

        lsr     a
        rti

        sta     ($5A,x)
        .byte   $5B
        brk
        brk
        bit     $405A
        eor     $5A
        .byte   $5B
        cli
        eor     ($2C),y
        .byte   $5C
        rti

        cli
        bit     $405A
        and     ($60),y
        eor     $3534,y
        rti

        rts

        .byte   $44
        and     $40,x
LF9B9:  eor     $44
        and     $32,x
        rol     $4C,x
        rol     $3435
        bit     $25
        and     $32,x
        .byte   $24
LF9C7:  .byte   $4B
LF9C8:  ora     ($12),y
        ror     $7A1A
        brk
        and     $34,x
        brk
        and     $2D00
        and     $32,x
        bit     $25
        .byte   $32
        rol     $24,x
        .byte   $4B
        brk
        rti

        .byte   $5C
        bit     a:$49
        bit     $405B
        brk
        bit     $3F5B
        .byte   $3F
        .byte   $3E
        .byte   $50
LF9EC:  .byte   $3F
        lsr     $50,x
        .byte   $50
LF9F0:  .byte   $5C
        .byte   $5A
        .byte   $52
        .byte   $54
LF9F4:  .byte   $53
LF9F5:  eor     $35,x
        .byte   $32
LF9F8:  inc     $F6,x
        .byte   $C2
        .byte   $C3
LF9FC:  inc     $F6,x
        cpy     $C5
LFA00:  inc     $F6,x
        .byte   $C0
LFA03:  cmp     ($CE,x)
        .byte   $CF
        dec     $D7,x
        .byte   $CF
        .byte   $CF
        .byte   $D7
        .byte   $D7
        dex
        .byte   $CB
        .byte   $D2
        .byte   $D3
        cpy     LD4CD
        cmp     $C8,x
        cmp     #$D0
        cmp     ($DE),y
        .byte   $DF
        dec     $A6E7,x
        .byte   $A7
        brk
        .byte   $AF
        .byte   $DA
        .byte   $DB
        lda     #$E3
        .byte   $DC
        cmp     $A4A3,x
        cld
        cmp     $A0E0,y
        .byte   $DA
        .byte   $DB
        lda     ($A2,x)
        cld
        cmp     $A8E0,y
        inc     $BEEF
        .byte   $BF
        .byte   $EF
        .byte   $EF
        .byte   $BF
        .byte   $BF
        lda     ($A2,x)
        nop
        lda     LE5E4,y
        tsx
        sbc     LE1E8
        inx
        sbc     #$E2
        .byte   $E3
        nop
        .byte   $EB
        cpx     $E5
        cpx     $B2ED
        .byte   $B3
        nop
        .byte   $BB
        ldy     $B5,x
        brk
        lda     LE3A9,x
        .byte   $F2
        .byte   $F3
        .byte   $AB
        ldy     LF5F4
        inc     LF0A8,x
        sbc     ($A9),y
        tax
        .byte   $F2
        .byte   $F3
        lda     ($AC),y
        .byte   $F4
        sbc     $FA,x
        .byte   $FB
        .byte   $C7
        .byte   $C7
        .byte   $FC
        sbc     LC7C7,x
        sed
        sbc     LC7C6,y
        .byte   $F7
        .byte   $F7
        .byte   $FF
        .byte   $FF
        lda     $A5
        lda     $A5
        .byte   $89
        .byte   $89
        .byte   $82
        .byte   $82
        brk
        brk
        brk
        bcc     LFA89
LFA89:  brk
        sta     ($92),y
        brk
        brk
        brk
        .byte   $93
        brk
        brk
        sty     $95,x
        brk
        brk
        stx     $97,y
        brk
        brk
        .byte   $9B
        .byte   $9C
        brk
        brk
        sta     a:$9E,x
        brk
        .byte   $9F
        brk
        brk
        brk
        .byte   $83
        .byte   $83
        .byte   $8B
        .byte   $8B
        .byte   $8B
        .byte   $8B
        txa
        txa
        stx     $888E
        dey
        dey
        dey
        stx     $87
        brk
        brk
        .byte   $8F
        tya
        brk
        brk
        sta     $9A,y
        brk
        lda     $83AE
        .byte   $83
        tya
        sta     $8383,y
        txs
        brk
        .byte   $83
        .byte   $83
        sty     $85
        sty     $B68D
        brk
        .byte   $B7
        brk
        rol     $6B48,x
        bmi     LFAD9
LFAD9:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0C
        asl     $2826
        and     ($0E,x)
        iny
        bpl     LFB16
        rol     $2801
        eor     ($2E,x)
        cpy     $02C2
        .byte   $04
        asl     $08
        asl     a
        .byte   $04
        asl     $27
        .byte   $22
        bit     $26
LFAFC:  php
        rol     a
        .byte   $22
        lsr     a
        .byte   $42
        .byte   $44
        lsr     $48
        .byte   $5A
        ror     a
        lsr     a
        iny
        .byte   $62
        .byte   $64
        pla
        lsr     a:$4C
        ror     a
        rts

        rts

        .byte   $7A
        adc     $6E00
LFB15:  brk
LFB16:  brk
        ldx     $8C4A
        ldy     $8E9C
        lda     a:L0000
        .byte   $80
        rts

        stx     $60
        .byte   $80
        .byte   $7A
        adc     $86AC
        sta     $97,x
        ror     a
        .byte   $A3
        lda     $C8
        ldy     $B4B0,x
        lda     $BB,x
        lda     $BE,x
        brk
        ldy     $BDB4,x
        .byte   $82
        .byte   $83
        .byte   $89
        ror     $48
        txa
        tsx
        bne     LFB15
        brk
        lsr     $48
        .byte   $D4
        cpy     $CE
        dex
        pla
        lsr     $4846
        .byte   $22
        .byte   $7A
        eor     LC7E5
        .byte   $E7
        .byte   $E7
        inx
        sbc     a:$F5
        sbc     $EE,x
        sbc     #$F5
        brk
        lsr     $1668
        .byte   $7A
        .byte   $0C
        ora     $0300
        brk
        brk
        ora     ($11),y
        .byte   $07
        bpl     LFB6D
LFB6D:  ora     ($0B,x)
        brk
        jsr     L2422
        rol     $28
        and     #$2B
        .byte   $2B
        brk
        brk
        brk
        brk
        and     $2F23
        and     #$73
        sed
        ror     L0000,x
        cmp     #$E6
        sta     $739E,x
        .byte   $74
        cpx     $C8
        cmp     L0000,y
        ldx     a:$0F
        dey
        .byte   $77
        adc     $057B,y
        .byte   $09
LFB98:  brk
        ror     L0000,x
        .byte   $97
        brk
        .byte   $9B
        .byte   $1C
        asl     $0B0B,x
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        bvc     LFB98
        jsr     L2422
        rol     $28
        rol     a
        .byte   $1C
        asl     $4240,x
        .byte   $44
        lsr     $48
        lsr     a
        .byte   $1C
        asl     $6260,x
        .byte   $64
        ror     $68
        ror     a
        jmp     L803E

        .byte   $73
        .byte   $74
        ror     L0000,x
        cmp     $5E5C,y
        bvc     LFC3D
        .byte   $74
        cpy     $C6
        cld
        .byte   $7C
        ror     $73A0,x
        .byte   $74
        ror     L0000,x
        brk
        .byte   $02
        .byte   $C2
        cpy     #$A2
        ldy     $A6
        .byte   $A3
        lda     $50
        .byte   $E2
        brk
        ora     $270F
        and     #$0D
        jsr     L10C9
        and     $372F
        ora     ($2D,x)
        rti

        cmp     $0307
        ora     $07
        ora     #$03
        .byte   $0B
        .byte   $07
        cpy     #$23
        and     $07
        .byte   $27
        .byte   $23
        .byte   $2B
        lsr     a
LFC00:  .byte   $43
        eor     $47
        eor     #$5B
        .byte   $6B
        .byte   $4B
        .byte   $65
LFC08:  .byte   $63
        adc     $69
        .byte   $4F
        eor     $6B00
        sta     $61
        ora     $6E,y
        brk
        adc     $8C00
        lda     ($8D,x)
        lda     $8F9D
        .byte   $9F
        .byte   $9F
        sta     $6181,x
        .byte   $87
        adc     ($7C,x)
        ora     $AD6E,y
        brk
        brk
        brk
        ldy     #$5B
        lsr     a
        cpx     $B1C5
        lda     $B4,x
        lda     $BAB4,x
        tax
        cpx     $BEB5
        .byte   $83
        .byte   $89
        txa
LFC3D:  .byte   $47
        .byte   $67
        jmp     LD1BB

        .byte   $D3
        beq     LFC8C
        eor     #$C4
        cpx     $C9
        .byte   $CB
        adc     #$4F
        .byte   $47
        eor     #$23
        jmp     (LE689)

        inx
        brk
        .byte   $C7
        brk
        .byte   $27
        inc     $C6,x
        sbc     #$EF
        sbc     L0000,y
        .byte   $4F
        adc     #$17
        ora     $0D0C,y
        asl     $04
        brk
        brk
        ora     ($11),y
        .byte   $07
        bpl     LFC75
        ora     ($0B,x)
        brk
        and     ($23,x)
        and     $27
        .byte   $24
LFC75:  rol     a
        rol     a
        brk
        brk
        brk
        brk
        bit     $2E22
        bit     $0E
        .byte   $F7
        sbc     $7473,y
        ror     $E7,x
        sta     LC99F,x
        .byte   $B7
        sbc     $74
LFC8C:  ror     L0000,x
        brk
        .byte   $AF
        .byte   $0F
        dey
        tya
        sei
        .byte   $7A
        .byte   $89
        brk
        brk
        brk
        .byte   $73
        .byte   $74
        brk
        dey
        ror     $1D,x
        .byte   $1F
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        eor     ($F0),y
LFCA8:  and     ($23,x)
        and     $27
        and     #$2B
        ora     $411F,x
        .byte   $43
        eor     $47
        eor     #$4B
        ora     $611F,x
        .byte   $63
        adc     $67
        adc     #$6B
        eor     $813F
        cmp     #$B7
        .byte   $73
        .byte   $74
        ror     $5D,x
        brk
        eor     ($C8),y
        brk
        cmp     $74
        ror     $7D,x
        .byte   $7F
        lda     (L0000,x)
        brk
        .byte   $73
        .byte   $74
        ror     $02,x
        .byte   $C3
        cmp     ($A3,x)
        lda     $A2
        ldy     $A6
        eor     ($E3),y
        brk
        .byte   $1C
        asl     $3836,x
        and     ($1E),y
        cld
LFCE8:  bpl     LFD26
        .byte   $3E
        .byte   $31
LFCEC:  sec
        eor     ($3E),y
        .byte   $DC
LFCF0:  .byte   $1A
        .byte   $12
        .byte   $14
        .byte   $12
LFCF4:  .byte   $14
        .byte   $1A
        .byte   $14
        .byte   $12
        cmp     ($32,x)
        .byte   $34
        .byte   $1A
        .byte   $14
        .byte   $3A
        .byte   $32
        lsr     a
LFD00:  .byte   $52
        .byte   $54
        lsr     $58,x
        lsr     a
        lsr     a
        lsr     a
        .byte   $DC
        .byte   $72
        .byte   $74
        sei
        lsr     a:$5C,x
        lsr     a
        sty     $70
        .byte   $7A
        adc     $7E6F,x
        adc     $AF6E
        lsr     a
        .byte   $9C
        sty     a:$AC
        .byte   $9F
        .byte   $9E
        sty     $7090
        bvs     LFCA8
        .byte   $7B
        .byte   $94
LFD26:  adc     $88AE,x
        bcc     LFDA5
        lsr     a
        ldy     $A4
        cld
        brk
        .byte   $B2
        clv
        .byte   $B7
        .byte   $A7
        lda     $AA00,y
        brk
        ldx     L0000,y
        .byte   $92
        .byte   $93
        sta     $5876,y
        txs
        ldx     $E0
        .byte   $E2
        tay
        sbc     ($F3),y
        lsr     $58,x
        dec     $78DA,x
        lsr     LF3F1,x
        and     ($7A),y
        eor     LD7F5,x
        .byte   $F7
        .byte   $F7
        sed
        sbc     LD500,x
        inx
        inc     LF8F9,x
        brk
        lsr     $7078,x
        clc
        .byte   $1C
        ora     $0100,x
        cpx     $11DE
        ora     ($0A),y
        bpl     LFD6D
LFD6D:  .byte   $13
        .byte   $1B
        .byte   $E2
        bmi     LFDA4
        .byte   $34
        rol     $38,x
        and     $3B3B,y
        sbc     $E9
        cpx     $3D00
        .byte   $33
        .byte   $3F
        and     $7473,y
        inc     $C8,x
        brk
        .byte   $F2
        brk
        ldx     $7473
        ror     L0000,x
LFD8C:  brk
        sbc     $ADED
        .byte   $0F
        iny
        .byte   $74
        .byte   $87
        brk
        .byte   $8B
        ora     $19,x
        .byte   $FA
        stx     $83
        .byte   $A7
        brk
        .byte   $AB
        sty     $108E
        .byte   $12
        .byte   $14
        .byte   $16
LFDA4:  clc
LFDA5:  .byte   $1A
        cpx     #$F1
        bmi     LFDDC
        .byte   $34
        rol     $38,x
        .byte   $3A
        .byte   $1C
        asl     $5250,x
        .byte   $54
        lsr     $58,x
        .byte   $5A
        bit     $702E
        .byte   $72
        .byte   $74
        ror     $B8,x
        lda     $4E4C,y
        bvc     LFE35
        .byte   $74
        ror     $D7,x
        brk
        jmp     (L506E)

        .byte   $82
        sty     $D4
        .byte   $D6
LFDCD:  .byte   $83
        .byte   $1C
        asl     $92B0,x
        sty     $96,x
        .byte   $93
        sta     $0A,x
        .byte   $D2
        bne     LFD8C
        ldy     $B6,x
LFDDC:  .byte   $B3
        lda     $90,x
        .byte   $F2
        brk
        ora     $371F,x
        and     $301D,y
        cmp     $3D10,y
        .byte   $3F
        ora     $3D11,x
        bvc     LFDCD
        cmp     ($13,x)
        ora     $13,x
        ora     $13,x
        .byte   $1B
        cmp     ($1B,x)
        .byte   $33
        and     $13,x
        .byte   $1B
        .byte   $33
        .byte   $3B
        lsr     a
LFE00:  .byte   $53
        eor     $57,x
LFE03:  .byte   $59
LFE04:  lsr     a
        .byte   $4B
        .byte   $4B
        adc     $73,x
        adc     $79,x
        .byte   $5F
        eor     $4A00,x
        brk
        adc     ($19),y
        ror     $6E7F,x
        .byte   $6F
        ror     $A2AE
        sta     $AD8D,x
        brk
        brk
        .byte   $8F
        .byte   $8F
        sta     ($71),y
        adc     (L0000),y
        brk
        brk
        ror     $87AF,x
        stx     $19,y
        ldx     #$4A
        lsr     a
        .byte   $FC
        brk
        .byte   $B3
        lda     $B8,y
        .byte   $B6
LFE35:  ldx     L0000
        .byte   $FC
        .byte   $B7
        ldx     $93
        sta     $579A,y
        .byte   $77
        .byte   $5C
        .byte   $A7
        sbc     ($E3,x)
        lda     #$F2
        .byte   $F4
        .byte   $57
        eor     LDBD9,y
        adc     LF25F,y
        .byte   $F4
        .byte   $33
        jmp     (LF699)

        sed
        .byte   $D7
        .byte   $D7
        brk
        .byte   $37
        sbc     $D6,x
        sbc     LD7FF,y
        inx
        brk
        .byte   $5F
        adc     $71,y
        .byte   $1C
        ora     $0112,x
        sbc     #$DC
        ora     ($11),y
        asl     a
        bpl     LFE85
        .byte   $14
        .byte   $1B
        .byte   $DA
        and     ($33),y
        and     $37,x
        .byte   $34
        .byte   $3C
        .byte   $3C
        brk
        brk
        sbc     $3CF6
        .byte   $32
        rol     $1E34,x
        .byte   $C7
        sbc     $73,x
        .byte   $74
        .byte   $76
LFE85:  .byte   $F3
        brk
        .byte   $AF
        cmp     $7300,y
        .byte   $74
LFE8C:  ror     $E8,x
        .byte   $DA
        .byte   $AF
        .byte   $0F
        .byte   $74
        tay
        brk
        txa
        ror     L0000,x
        brk
        brk
        .byte   $82
        sty     L0000
        .byte   $74
        stx     $8D
        .byte   $8F
        ora     ($13),y
        ora     $17,x
        ora     LE11B,y
        sbc     ($31),y
        .byte   $33
        and     $37,x
        and     $1D3B,y
        .byte   $1F
        eor     ($53),y
        eor     $57,x
        eor     $2D5B,y
        .byte   $2F
        adc     ($B7),y
        brk
        .byte   $73
        .byte   $74
        ror     $4D,x
        brk
        eor     (L0000),y
        lda     $7473,y
        ror     L006D,x
        brk
        eor     ($83),y
        .byte   $83
        cmp     $84,x
        stx     $1D
        .byte   $1F
LFED0:  lda     ($93),y
        sta     $92,x
        sty     $96,x
        asl     a
        .byte   $D3
        cmp     ($B3),y
        lda     $B2,x
        ldy     $B6,x
        sta     ($F3),y
        brk
        bmi     LFF13
        bmi     LFF15
        bmi     LFF17
        bmi     LFEEC
        bmi     LFF1B
        .byte   $30
LFEEC:  bmi     LFF1E
        bmi     LFF20
        bmi     LFF22
        bmi     LFF24
LFEF4:  bmi     LFF26
        bmi     LFF28
        bmi     LFF2A
LFEFA:  bmi     LFF2C
        bmi     LFF2E
LFEFE:  bmi     LFF03
LFF00:  bmi     LFF32
        .byte   $03
LFF03:  .byte   $03
        .byte   $03
        .byte   $03
LFF06:  .byte   $03
        bmi     LFF39
        bmi     LFE8C
        sta     ($20,x)
        bvc     LFF12
        .byte   $02
        .byte   $02
        .byte   $02
LFF12:  .byte   $02
LFF13:  .byte   $02
        .byte   $02
LFF15:  .byte   $02
        .byte   $02
LFF17:  .byte   $02
        .byte   $03
        .byte   $02
        .byte   $02
LFF1B:  .byte   $02
        .byte   $02
        .byte   $02
LFF1E:  .byte   $02
        .byte   $02
LFF20:  brk
        brk
LFF22:  brk
        brk
LFF24:  brk
        .byte   $02
LFF26:  .byte   $02
        .byte   $02
LFF28:  .byte   $02
        .byte   $02
LFF2A:  .byte   $02
        .byte   $03
LFF2C:  .byte   $03
        .byte   $03
LFF2E:  bmi     LFF60
        .byte   $03
        .byte   $03
LFF32:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        bmi     LFF3C
LFF39:  .byte   $03
        .byte   $20
        .byte   $20
LFF3C:  jsr     L0303
        jsr     L6303
        .byte   $63
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        bmi     LFF4A
LFF4A:  and     ($31),y
        .byte   $03
        .byte   $03
        bmi     LFF52
        .byte   $20
        brk
LFF52:  brk
        brk
        brk
        brk
        bmi     LFF58
LFF58:  brk
        brk
        jsr     L0000
        bvs     LFFD0
        .byte   $71
LFF60:  .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $03
        .byte   $03
        brk
LFF67:  brk
        brk
        ora     (L0000,x)
        ora     ($03,x)
        .byte   $03
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
        brk
        brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($03,x)
        .byte   $32
        brk
        bmi     LFF8C
        ora     ($01,x)
        .byte   $01
LFF8C:  .byte   $03
        brk
        brk
        bmi     LFF91
LFF91:  ora     ($01,x)
        brk
        brk
        ora     ($03,x)
        .byte   $03
        brk
        ora     ($01,x)
        brk
        ora     ($01,x)
        bmi     LFFD0
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $03
        ora     ($01,x)
        ora     ($30,x)
        .byte   $30
LFFB0:  ora     ($03,x)
        .byte   $03
        .byte   $03
        ora     ($03,x)
        bmi     LFFE8
        jsr     L0101
        ora     ($03,x)
        ora     ($30,x)
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        bmi     LFFC8
LFFC8:  ora     ($03,x)
        ora     ($20,x)
        ora     ($03,x)
        bmi     L0000
LFFD0:  ora     ($03,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($32,x)
        ora     ($03,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($32,x)
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
        brk
        brk
        brk
        brk
        brk
        cpy     #$E0
        .byte   $FF
        cpx     #$FF
