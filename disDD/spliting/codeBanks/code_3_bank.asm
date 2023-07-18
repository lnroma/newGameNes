; da65 V2.18 - N/A
; Created:    2023-07-17 12:53:18
; Input file: code_bank_3.bin
; Page:       1


        .setcpu "6502"

L000C           := $000C
L0040           := $0040
L0065           := $0065
L008E           := $008E
L00C1           := $00C1
L0100           := $0100
L0101           := $0101
L0105           := $0105
L0109           := $0109
L0180           := $0180
L0202           := $0202
L0209           := $0209
L0287           := $0287
L0380           := $0380
L0617           := $0617
L0707           := $0707
L088A           := $088A
L0B0E           := $0B0E
L0D00           := $0D00
L0D0E           := $0D0E
L0DD0           := $0DD0
L0E6C           := $0E6C
L0F80           := $0F80
L1111           := $1111
L1505           := $1505
L15A9           := $15A9
L166C           := $166C
L19A3           := $19A3
L2004           := $2004
L203C           := $203C
L26A7           := $26A7
L2716           := $2716
L2804           := $2804
L2813           := $2813
L2821           := $2821
L2894           := $2894
L28C7           := $28C7
L3F9F           := $3F9F
L4018           := $4018
L43A3           := $43A3
L4E45           := $4E45
L5496           := $5496
L5D21           := $5D21
L6000           := $6000
L6065           := $6065
L6068           := $6068
L606F           := $606F
L6078           := $6078
L6121           := $6121
L6406           := $6406
L6411           := $6411
L6568           := $6568
L6588           := $6588
L6589           := $6589
L6780           := $6780
L6860           := $6860
L6880           := $6880
L6995           := $6995
L6A8B           := $6A8B
L6B8B           := $6B8B
L6C00           := $6C00
L6C60           := $6C60
L6C80           := $6C80
L6C8A           := $6C8A
L6C8D           := $6C8D
L6D85           := $6D85
L6D8F           := $6D8F
L6F80           := $6F80
L6F85           := $6F85
L6F8E           := $6F8E
L6F8F           := $6F8F
L7090           := $7090
L718F           := $718F
L7391           := $7391
L7790           := $7790
L7980           := $7980
L7E80           := $7E80
L8000           := $8000
L8006           := $8006
L8023           := $8023
L803A           := $803A
L806A           := $806A
L806C           := $806C
L806F           := $806F
L8075           := $8075
L80D8           := $80D8
L80EC           := $80EC
L80FE           := $80FE
L8106           := $8106
L8118           := $8118
L81AE           := $81AE
L81C8           := $81C8
L81D4           := $81D4
L81E4           := $81E4
L81F1           := $81F1
L8252           := $8252
L825B           := $825B
L82DE           := $82DE
L8326           := $8326
L8386           := $8386
L8393           := $8393
L83CD           := $83CD
L847E           := $847E
L8491           := $8491
L8497           := $8497
L8568           := $8568
L8575           := $8575
L8592           := $8592
L85A3           := $85A3
L85AE           := $85AE
L85DE           := $85DE
L8636           := $8636
L8644           := $8644
L8684           := $8684
L86BA           := $86BA
L871A           := $871A
L88A0           := $88A0
L8A97           := $8A97
L8C6F           := $8C6F
L8C80           := $8C80
L8D00           := $8D00
L8FA5           := $8FA5
L9673           := $9673
LA86E           := $A86E
LB59A           := $B59A
        jmp     L806C

        jmp     L80FE

        lda     #$00
        sta     $C2
        ldy     #$08
LC00C:  asl     $C2
LC00E:  rol     L00C1
        bcc     LC01F
        clc
        lda     $C2
        adc     $C4
        sta     $C2
        lda     L00C1
        adc     #$00
        sta     L00C1
LC01F:  dey
        bne     LC00C
        rts

        asl     a
        tay
        iny
        pla
        sta     L00C1
        pla
        sta     $C2
        lda     (L00C1),y
        pha
        iny
        lda     (L00C1),y
        sta     $C2
        pla
        sta     L00C1
        jmp     (L00C1)

        sty     L00C1
        ldy     #$00
        cmp     #$C0
        bcs     LC047
        sta     $C2
        lda     (L00C1),y
        rts

LC047:  sec
        sbc     #$20
        sta     $C2
        lda     #$07
        sta     L8000
        lda     #$18
        sta     $8001
        lda     (L00C1),y
        pha
        lda     #$07
        sta     L8000
        lda     #$17
        sta     $8001
        lda     #$20
        clc
        adc     $C2
        sta     $C2
        pla
        rts

        .byte   $A5
LC06D:  cpy     #$4A
        bcs     LC0D7
        lda     $D0
        ora     $D1
        beq     LC07A
        jsr     L8252
LC07A:  clc
LC07B:  lda     $CA
        adc     $C8
        sta     $C8
        lda     $C9
        adc     #$00
        sta     $C7
        lda     $CF
        pha
        ldx     #$03
LC08C:  lsr     $CF
        bcc     LC099
        lda     $CF
        ora     #$80
        sta     $CF
        jsr     L82DE
LC099:  lda     $C0
        and     #$02
        bne     LC0A6
        txa
        pha
        jsr     L8393
        pla
        tax
LC0A6:  dex
        bpl     LC08C
        pla
        sta     $CF
        lsr     $C0
        asl     $C0
        lda     $CC
        and     #$7F
        beq     LC0D7
        ldy     #$00
        sty     L00C1
        ldy     #$04
LC0BC:  asl     a
        rol     L00C1
        dey
        bne     LC0BC
        clc
        adc     $C0
        sta     $C0
        lda     L00C1
        adc     $CD
        bcc     LC0D5
        lda     $CC
        and     #$80
        sta     $CC
        lda     #$FF
LC0D5:  sta     $CD
LC0D7:  rts

        txa
        and     #$03
        eor     #$03
        asl     a
        asl     a
        tay
        lda     #$30
        cpy     #$08
        bne     LC0E8
        lda     #$00
LC0E8:  sta     $4000,y
        rts

        pha
        txa
        and     #$03
        eor     #$03
        asl     a
        asl     a
        sty     $C4
        ora     $C4
        tay
        pla
        sta     $4000,y
        rts

        inc     $C0
        jsr     L8106
        dec     $C0
        rts

        cmp     #$F0
        bcc     LC10D
        jmp     L81AE

LC10D:  cmp     $8A40
        bcc     LC118
        sec
        sbc     $8A40
        bcs     LC10D
LC118:  asl     a
        tax
        ldy     $8A44,x
        tya
        ora     $8A43,x
        beq     LC16E
        lda     $8A43,x
        jsr     L803A
        tay
        beq     LC16F
        ldy     #$00
        inx
        sta     $C4
        and     #$7F
        cmp     $CE
        bcc     LC16E
        sta     $CE
        bne     LC145
        lda     $D6
        bpl     LC145
        lda     $C4
        bmi     LC145
        sty     $D7
LC145:  sty     $D6
        asl     $C4
        ror     $D6
        bpl     LC14F
        stx     $D7
LC14F:  inc     L00C1
        lda     L00C1
        sta     $D0
        bne     LC159
        inc     $C2
LC159:  lda     $C2
        sta     $D1
        tya
        sta     $D2
        sta     $D3
        sta     $D4
        sta     $D5
        ldy     #$27
LC168:  sta     $0700,y
        dey
        bpl     LC168
LC16E:  rts

LC16F:  ldx     #$01
        stx     $C9
        ldx     #$99
        stx     $CA
        sta     $C8
        sta     $CB
        sta     $CC
        sta     $CD
        ldx     #$53
LC181:  sta     $0728,x
        dex
        bpl     LC181
        ldx     #$03
LC189:  inc     L00C1
        bne     LC18F
        inc     $C2
LC18F:  ldy     L00C1
        lda     $C2
        jsr     L803A
        sta     $0754,x
        inc     L00C1
        bne     LC19F
        inc     $C2
LC19F:  ldy     L00C1
        lda     $C2
        jsr     L803A
        sta     $0750,x
        dex
        bpl     LC189
        bmi     LC1F1
        sty     $C3
        and     #$07
        jsr     L8023
        cmp     $81
        iny
        sta     ($E4,x)
        sta     ($1E,x)
        .byte   $82
        rol     $82
        and     $3482
        .byte   $82
        lsr     a
        .byte   $82
        jsr     L81E4
        lda     #$00
        sta     $CE
        sta     $D0
        sta     $D1
        sta     $D7
        sta     $D8
        lda     $CF
        beq     LC1E3
        eor     #$0F
        sta     $CF
        jsr     L81F1
        lda     #$00
        sta     $CF
LC1E3:  rts

        lda     #$00
        ldx     #$03
LC1E8:  sta     $0754,x
        sta     $0750,x
        dex
        bpl     LC1E8
LC1F1:  lda     $CF
        pha
        ldx     #$03
LC1F6:  lsr     $CF
        bcs     LC20A
        jsr     L80D8
        lda     $0754,x
        ora     $0750,x
        beq     LC20A
        lda     #$FF
        sta     $077C,x
LC20A:  dex
        bpl     LC1F6
        pla
        sta     $CF
        lda     #$08
        sta     $4001
        sta     $4005
        lda     #$0F
        sta     $4015
        rts

        lda     $C0
        ora     #$02
        sta     $C0
        bne     LC1F1
        lda     $C0
        and     #$FD
        sta     $C0
        rts

        asl     $C3
        beq     LC234
        sec
        ror     $C3
LC234:  lda     $C0
        and     #$0F
        sta     $C0
        ldy     $C3
        sty     $CC
        beq     LC247
        ldy     #$FF
        cpy     $CD
        bne     LC249
        iny
LC247:  sty     $CD
LC249:  rts

        lda     #$00
        sec
        sbc     $C3
        sta     $D8
        rts

        lda     $D3
        beq     LC25B
        dec     $D3
        dec     $D5
        rts

LC25B:  jsr     L8386
        sta     $C4
        asl     a
        bcc     LC273
        sty     $CE
        lda     $D7
        lsr     a
        bcc     LC270
        jsr     L8118
        jmp     L825B

LC270:  jmp     L81C8

LC273:  lsr     $C4
        bcc     LC2A6
        jsr     L8386
        asl     a
        beq     LC289
        asl     $D6
        php
        cmp     $D6
        beq     LC296
        plp
        ror     $D6
        inc     $D6
LC289:  jsr     L8386
        tax
        jsr     L8386
        sta     $D0
        stx     $D1
        bne     LC25B
LC296:  tya
        plp
        ror     a
        sta     $D6
        clc
        lda     #$02
        adc     $D0
        sta     $D0
        bcc     LC2A6
        inc     $D1
LC2A6:  lsr     $C4
        bcc     LC2AF
        jsr     L8386
        sta     $D4
LC2AF:  lsr     $C4
        bcc     LC2B8
        jsr     L8386
        sta     $D2
LC2B8:  jsr     L8386
        sta     $D3
        sta     L00C1
        lda     $D4
        sta     $C4
        jsr     L8006
        ldy     L00C1
        iny
        sty     $D5
        inc     $C0
        jsr     L8386
        pha
        eor     $CF
        beq     LC2DA
        sta     $CF
        jsr     L81D4
LC2DA:  pla
        sta     $CF
        rts

        ldy     $0700,x
        beq     LC2E6
        jsr     L8684
LC2E6:  lda     $C0
        lsr     a
        bcs     LC30A
        jsr     L86BA
        lda     $D3
        beq     LC2FA
        cpx     #$01
        beq     LC2FB
        lda     $D5
        beq     LC300
LC2FA:  rts

LC2FB:  dec     $0710,x
        bne     LC2FA
LC300:  lda     $0704,x
        and     #$04
        bne     LC2FA
        jmp     L85A3

LC30A:  lda     #$00
        sta     $C4
        jsr     L8386
LC311:  lsr     a
        bcc     LC320
        pha
        jsr     L8386
        sta     $C3
        lda     $C4
        jsr     L8326
        pla
LC320:  beq     LC333
        inc     $C4
        bne     LC311
        jsr     L8023
        .byte   $6F
        stx     $AD
        stx     $5A
        stx     $A7
        stx     $A1
        .byte   $86
LC333:  jsr     L8386
        tay
        bne     LC349
        sta     $0710,x
        lda     $0704,x
        and     #$F8
        ora     #$04
        sta     $0704,x
        jmp     L80D8

LC349:  lda     $0704,x
        ora     #$20
        sta     $0704,x
        lda     $0718,x
        asl     a
        lda     #$54
        bcs     LC35B
        lda     #$0A
LC35B:  sta     $071C,x
        tya
        bpl     LC36B
        cpx     #$01
        bne     LC368
        jsr     L85AE
LC368:  jmp     L8644

LC36B:  jsr     L85AE
        lda     #$FF
        sta     $077C,x
        dey
        txa
        bne     LC37F
        sta     $C3
        tya
        eor     #$0F
        jmp     L8636

LC37F:  tya
        clc
        adc     $D2
        jmp     L85DE

        ldy     $D0
        lda     $D1
        inc     $D0
        bne     LC390
        inc     $D1
LC390:  jmp     L803A

        txa
        ora     #$28
        tax
        lda     $0728,x
        ora     $072C,x
        beq     LC3CC
        lda     $0738,x
        beq     LC3CD
        ldy     $0700,x
        beq     LC3AF
        jsr     L8684
        jsr     L86BA
LC3AF:  lda     $0740,x
        sec
        sbc     $C7
        sta     $0740,x
        beq     LC3BC
        bcs     LC3BF
LC3BC:  jsr     L85A3
LC3BF:  lda     $0738,x
        sec
        sbc     $C7
        sta     $0738,x
        beq     LC3CD
        bcc     LC3CD
LC3CC:  rts

LC3CD:  jsr     L8592
        cmp     #$20
        bcs     LC3DA
        jsr     L8497
        jmp     L83CD

LC3DA:  pha
        rol     a
        rol     a
        rol     a
        rol     a
        and     #$07
        tay
LC3E2:  dey
        lda     $0730,x
        asl     a
        asl     a
        bpl     LC3EF
        lda     $8915,y
        bne     LC406
LC3EF:  asl     a
        asl     a
        lda     $891C,y
        bcc     LC406
        sta     $C3
        lda     $0730,x
        and     #$EF
        sta     $0730,x
        lda     $C3
        lsr     a
        clc
        adc     $C3
LC406:  clc
        adc     $0738,x
        sta     $0738,x
        tay
        pla
        and     #$1F
        bne     LC419
        jsr     L85A3
        jmp     L8491

LC419:  pha
        sty     $C4
        lda     $073C,x
        sta     L00C1
        jsr     L8006
        lda     L00C1
        bne     LC42A
        lda     #$01
LC42A:  sta     $0740,x
        pla
        tay
        dey
        lda     $0730,x
        bpl     LC440
        lda     $0718,x
        bne     LC454
        jsr     L8644
        jmp     L847E

LC440:  jsr     L85AE
        lda     $CF
        bmi     LC454
        sty     $C3
        txa
        and     #$03
        tay
        lda     #$FF
        sta     $077C,y
        ldy     $C3
LC454:  txa
        and     #$03
        bne     LC466
        sta     $C3
        tya
        and     #$0F
        eor     #$0F
        jsr     L8636
        jmp     L847E

LC466:  sty     $C3
        lda     $0730,x
        and     #$0F
        tay
        lda     $8923,y
        clc
        adc     $C3
        clc
        adc     $CB
        clc
        adc     $0734,x
        jsr     L85DE
        lda     $0730,x
        tay
        and     #$40
        asl     a
        sta     $C4
        tya
        and     #$7F
        ora     $C4
        sta     $0730,x
        bpl     LC496
        lda     #$FF
        sta     $0740,x
LC496:  rts

        cmp     #$04
        bcc     LC4A4
        sta     $C4
        jsr     L8592
        sta     $C3
        lda     $C4
LC4A4:  jsr     L8023
        cmp     LDD84,y
        sty     $E1
        sty     $E8
        sty     $75
        sta     $F1
        sty     $FF
        sty     $5A
        stx     $6F
        stx     $05
        sta     $10
        sta     $15
        sta     $A1
        stx     $A7
        stx     $1B
        sta     $1F
        sta     $23
        sta     $27
        sta     $1B
        sta     $1F
        sta     $23
        sta     $27
        sta     $5A
        sta     $80
        sta     $AD
        stx     $A9
        jsr     L0DD0
        lda     #$40
        bne     LC4EA
        lda     #$10
        ora     $0730,x
        bne     LC4ED
        lda     #$08
LC4EA:  eor     $0730,x
LC4ED:  sta     $0730,x
        rts

        lda     #$00
        sta     $C8
        jsr     L8592
        ldy     $C3
        sta     $CA
        sty     $C9
        rts

        lda     $C3
        sta     $073C,x
        rts

        lda     $0730,x
        and     #$F8
        ora     $C3
        sta     $0730,x
        rts

        lda     $C3
        sta     $CB
        rts

        lda     $C3
        sta     $0734,x
        rts

        lda     #$00
        beq     LC529
        lda     #$04
        bne     LC529
        lda     #$08
        bne     LC529
        lda     #$0C
LC529:  sta     $C2
        txa
        clc
        adc     $C2
        tay
        lda     $C4
        cmp     #$12
        bcs     LC547
        lda     $0744,y
        sec
        sbc     #$01
        bcs     LC540
        lda     $C3
LC540:  sta     $0744,y
        beq     LC566
        bne     LC555
LC547:  lda     $0744,y
        sec
        sbc     #$01
        bne     LC566
        sta     $0744,y
        jsr     L8575
LC555:  jsr     L8592
        sta     $C3
        jsr     L8592
        sta     $0728,x
        lda     $C3
        sta     $072C,x
        rts

LC566:  lda     #$02
        clc
        adc     $0728,x
        sta     $0728,x
        bcc     LC574
        inc     $072C,x
LC574:  rts

        lda     $0730,x
        and     #$97
        ora     $C3
        sta     $0730,x
        rts

        pla
        pla
        lda     #$00
        sta     $0728,x
        sta     $072C,x
        lda     $CF
        bmi     LC591
        jmp     L80D8

LC591:  rts

        ldy     $0728,x
        lda     $072C,x
        inc     $0728,x
        bne     LC5A0
        inc     $072C,x
LC5A0:  jmp     L803A

        lda     $0704,x
        and     #$F8
        ora     #$03
        sta     $0704,x
        rts

        tya
        pha
        ldy     #$00
        lda     $0704,x
        and     #$F8
        sta     $0704,x
        cpx     #$29
        beq     LC5D0
        cpx     #$01
        bne     LC5D7
        lda     $D3
        sta     L00C1
        lda     $070C,x
        sta     $C4
        jsr     L8006
        ldy     L00C1
LC5D0:  iny
        inc     $0704,x
        inc     $0704,x
LC5D7:  tya
        sta     $0710,x
        pla
        tay
        rts

        cmp     #$60
        bcc     LC5E4
        lda     #$5F
LC5E4:  sta     $C3
        inc     $C3
        cpx     #$28
        bcc     LC62A
        lda     $071C,x
        beq     LC61D
        cmp     $C3
        bne     LC5FC
        lda     $0730,x
        bpl     LC61D
        bmi     LC644
LC5FC:  lda     $0718,x
        beq     LC61D
        bcs     LC607
        ora     #$80
        bne     LC609
LC607:  and     #$7F
LC609:  sta     $0718,x
        lda     $0704,x
        ora     #$20
        sta     $0704,x
        lda     $C3
        ldy     $071C,x
        sty     $C3
        bne     LC627
LC61D:  lda     $0704,x
        and     #$DF
        sta     $0704,x
        lda     $C3
LC627:  sta     $071C,x
LC62A:  asl     $C3
        ldy     $C3
        lda     $8959,y
        sta     $C3
        lda     $895A,y
        sta     $0724,x
        lda     $C3
        sta     $0720,x
        ldy     #$04
        lda     ($C5),y
        bmi     LC64C
LC644:  lda     $0704,x
        and     #$08
        bne     LC64C
        rts

LC64C:  lda     #$00
        sta     $0708,x
        lda     $0704,x
        and     #$37
        sta     $0704,x
        rts

        cpx     #$01
        bne     LC662
        lda     $C3
        bne     LC66B
LC662:  lda     $070C,x
        and     #$C0
        ora     $C3
        ora     #$30
LC66B:  sta     $070C,x
        rts

        inc     $C3
        lda     $C3
        cmp     $0700,x
        beq     LC6A0
        sta     $0700,x
        tay
        lda     $0704,x
        ora     #$08
        sta     $0704,x
        dey
        lda     #$00
        sta     $C3
        tya
        asl     a
        rol     $C3
        asl     a
        rol     $C3
        asl     a
        rol     $C3
        clc
        adc     $8A42
        sta     $C5
        lda     $C3
        adc     $8A41
        sta     $C6
LC6A0:  rts

        lda     $C3
        sta     $0714,x
        rts

        lda     $C3
        sta     $0718,x
        rts

        lda     $070C,x
        and     #$0F
        ora     $C3
        ora     #$30
        sta     $070C,x
        rts

        lda     $0710,x
        sta     $C4
        lda     $0704,x
        and     #$07
        jsr     L8023
        cmp     ($86),y
        inc     $86
        jsr     L0287
        .byte   $87
        .byte   $14
        .byte   $89
        ldy     #$00
        lda     ($C5),y
        tay
        lda     $C4
        clc
        adc     $8933,y
        bcs     LC6E2
        cmp     #$F0
        bcc     LC71D
LC6E2:  lda     #$F0
        bne     LC71A
        ldy     #$01
        lda     ($C5),y
        beq     LC6FB
        tay
        lda     $C4
        sec
        sbc     $8933,y
        bcc     LC6FB
        ldy     #$02
        cmp     ($C5),y
        bcs     LC71D
LC6FB:  ldy     #$02
        lda     ($C5),y
        jmp     L871A

        txa
        and     #$03
        cmp     #$01
        beq     LC718
        ldy     #$03
        lda     ($C5),y
        beq     LC720
        tay
        lda     $C4
        sec
        sbc     $8933,y
        bcs     LC71D
LC718:  lda     #$00
LC71A:  inc     $0704,x
LC71D:  sta     $0710,x
LC720:  cpx     #$28
        bcc     LC737
        lda     $CF
        bpl     LC72B
        jmp     L88A0

LC72B:  lda     $CD
        ldy     $CC
        bmi     LC733
        eor     #$FF
LC733:  cmp     #$FF
        bne     LC740
LC737:  txa
        and     #$03
        cmp     #$01
        bne     LC760
        beq     LC752
LC740:  cpx     #$29
        bne     LC75B
        sta     $C4
        lda     $0740,x
        sta     L00C1
        jsr     L8006
        lda     L00C1
        beq     LC7AA
LC752:  lda     $0710,x
        beq     LC7AA
        lda     #$FF
        bne     LC7AA
LC75B:  cmp     $0710,x
        bcc     LC763
LC760:  lda     $0710,x
LC763:  lsr     a
        lsr     a
        lsr     a
        lsr     a
        eor     #$0F
        sta     $C3
        ldy     #$06
        lda     ($C5),y
        cmp     #$05
        bcc     LC797
        sta     $C4
        ldy     $0708,x
        lda     $0704,x
        asl     a
        asl     a
        tya
        bcc     LC782
        eor     #$FF
LC782:  beq     LC797
        sta     L00C1
        jsr     L8006
        lda     L00C1
        lsr     a
        lsr     a
        cmp     #$10
        bcs     LC7A5
        cmp     $C3
        bcc     LC797
        sta     $C3
LC797:  lda     #$10
        sta     $C4
        lda     $070C,x
        sec
        sbc     $C3
        bit     $C4
        bne     LC7AA
LC7A5:  lda     $070C,x
        and     #$F0
LC7AA:  ldy     #$00
        jsr     L80EC
        txa
        and     #$03
        tay
        lda     $077C,y
        bmi     LC80C
        ldy     #$05
        lda     ($C5),y
        beq     LC80C
        sta     $C4
        ldy     $0708,x
        lda     $0704,x
        asl     a
        asl     a
        tya
        bcc     LC7CD
        eor     #$FF
LC7CD:  beq     LC80C
        sta     L00C1
        jsr     L8006
        lda     L00C1
        lsr     a
        ror     $C2
        lsr     a
        ror     $C2
        lsr     a
        ror     $C2
        lsr     a
        ror     $C2
        tay
        ora     $C2
        beq     LC80C
        lda     $0704,x
        bmi     LC7FA
        clc
        lda     $C2
        adc     $0720,x
        sta     $C2
        tya
        adc     $0724,x
        bne     LC809
LC7FA:  sec
        lda     $0720,x
        sbc     $C2
        sta     $C2
        lda     $0724,x
        .byte   $84
LC806:  cmp     ($E5,x)
        .byte   $C1
LC809:  tay
        bne     LC814
LC80C:  lda     $0720,x
        sta     $C2
        ldy     $0724,x
LC814:  cpx     #$28
        bcs     LC835
        lda     $D6
        bpl     LC835
        lda     $D8
        beq     LC835
        sta     $C4
        sty     L00C1
        lda     $C2
        pha
        jsr     L8006
        pla
        clc
        adc     $C2
        sta     $C2
        lda     #$00
        adc     L00C1
        tay
LC835:  txa
        and     #$03
        bne     LC849
        tya
        and     #$0F
        ldy     #$07
        ora     ($C5),y
        sta     $C2
        lda     #$00
        sta     L00C1
        beq     LC884
LC849:  tya
        ldy     #$08
LC84C:  dey
        cmp     $8953,y
        bcc     LC84C
        sta     L00C1
        tya
        clc
        adc     L00C1
        tay
        and     #$07
        clc
        adc     #$07
        sta     L00C1
        tya
        and     #$38
        eor     #$38
        beq     LC870
LC867:  lsr     L00C1
        ror     $C2
        sec
        sbc     #$08
        bne     LC867
LC870:  ldy     #$00
        lda     $0714,x
        beq     LC884
        bpl     LC87A
        dey
LC87A:  clc
        adc     $C2
        sta     $C2
        tya
        adc     L00C1
        sta     L00C1
LC884:  ldy     #$02
        lda     $C2
        jsr     L80EC
        txa
        and     #$03
        tay
        lda     L00C1
        cmp     $077C,y
        beq     LC8A0
        sta     $077C,y
        ora     #$08
        ldy     #$03
        jsr     L80EC
LC8A0:  lda     $0704,x
        and     #$20
        beq     LC8FA
        lda     $0718,x
        beq     LC8F2
        ldy     #$00
        asl     a
        php
        bcc     LC8B8
        eor     #$FF
        clc
        adc     #$01
        dey
LC8B8:  clc
        adc     $0720,x
        sta     $0720,x
        tya
        adc     $0724,x
        sta     $0724,x
        lda     $071C,x
        asl     a
        tay
        sec
        lda     $0720,x
        sbc     $8959,y
        lda     $0724,x
        and     #$3F
        sbc     $895A,y
        lda     #$FF
        adc     #$00
        plp
        adc     #$00
        bne     LC8FA
        txa
        beq     LC8FA
        lda     $8959,y
        sta     $0720,x
        lda     $895A,y
        sta     $0724,x
LC8F2:  lda     $0704,x
        and     #$DF
        sta     $0704,x
LC8FA:  ldy     #$04
        lda     ($C5),y
        and     #$7F
        beq     LC914
        clc
        adc     $0708,x
        sta     $0708,x
        bcc     LC914
        lda     $0704,x
        clc
        adc     #$40
        .byte   $9D
LC912:  .byte   $04
        .byte   $07
LC914:  rts

        .byte   $02
        .byte   $04
        php
        bpl     LC93A
        rti

        .byte   $80
        .byte   $03
        asl     L000C
        clc
        bmi     LC982
        cpy     #$00
        .byte   $0C
        clc
        bit     $30
        .byte   $3C
        pha
        .byte   $54
        clc
        bit     $30
        .byte   $3C
        pha
        .byte   $54
        rts

        jmp     (L0100)

        .byte   $02
        .byte   $03
        .byte   $04
        ora     $06
LC93A:  .byte   $07
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        asl     $100F
        .byte   $12
        .byte   $13
        .byte   $14
        asl     $18,x
        .byte   $1B
        asl     $2823,x
        bmi     LC98A
        bvc     LC9CE
        .byte   $7F
        inc     a:$FF,x
        .byte   $07
        asl     $1C15
        .byte   $23
        rol     a
        and     ($5C),y
LC95C:  .byte   $37
        .byte   $9C
        rol     $E7,x
        and     $3C,x
        and     $9B,x
        .byte   $34
        .byte   $02
        .byte   $34
        .byte   $72
        .byte   $33
        nop
        .byte   $32
        ror     a
        .byte   $32
        sbc     ($31),y
        .byte   $80
        and     ($14),y
        and     ($5C),y
        bmi     LC912
        .byte   $2F
        .byte   $E7
        rol     $2E3C
        .byte   $9B
        and     $2D02
        .byte   $72
        .byte   $2C
        nop
LC982:  .byte   $2B
        ror     a
        .byte   $2B
        sbc     ($2A),y
        .byte   $80
        rol     a
        .byte   $14
LC98A:  rol     a
        .byte   $5C
        and     #$9C
        plp
        .byte   $E7
        .byte   $27
        .byte   $3C
        .byte   $27
        .byte   $9B
        rol     $02
        rol     $72
        and     $EA
        bit     $6A
        bit     $F1
        .byte   $23
        .byte   $80
        .byte   $23
        .byte   $14
        .byte   $23
        .byte   $5C
        .byte   $22
        .byte   $9C
        and     ($E7,x)
        jsr     L203C
        .byte   $9B
        .byte   $1F
        .byte   $02
        .byte   $1F
        .byte   $72
        asl     $1DEA,x
        ror     a
        ora     $1CF1,x
        .byte   $80
        .byte   $1C
        .byte   $14
        .byte   $1C
        .byte   $5C
        .byte   $1B
        .byte   $9C
        .byte   $1A
        .byte   $E7
        ora     $193C,y
        .byte   $9B
        clc
        .byte   $02
        clc
        .byte   $72
        .byte   $17
        nop
        asl     $6A,x
LC9CC:  asl     $F1,x
LC9CE:  ora     $80,x
        ora     $14,x
        ora     $5C,x
        .byte   $14
        .byte   $9C
        .byte   $13
        .byte   $E7
        .byte   $12
        .byte   $3C
        .byte   $12
        .byte   $9B
        ora     ($02),y
        ora     ($72),y
        bpl     LC9CC
        .byte   $0F
        ror     a
        .byte   $0F
        sbc     ($0E),y
        .byte   $80
        asl     $0E14
        .byte   $5C
        ora     $0C9C
        .byte   $E7
        .byte   $0B
        .byte   $3C
        .byte   $0B
        .byte   $9B
        asl     a
        .byte   $02
        asl     a
        .byte   $72
        ora     #$EA
        php
        ror     a
        php
        sbc     ($07),y
        .byte   $80
        .byte   $07
        .byte   $14
        .byte   $07
        .byte   $5C
LCA04:  asl     $9C
        ora     $E7
        .byte   $04
        .byte   $3C
        .byte   $04
        .byte   $9B
        .byte   $03
        .byte   $02
        .byte   $03
        .byte   $72
        .byte   $02
        nop
        ora     ($6A,x)
        ora     ($F1,x)
        brk
        .byte   $80
        brk
LCA19:  .byte   $14
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCA29:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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

        txa
        .byte   $C3
        sty     $900B
        .byte   $82
        sta     ($8B),y
        .byte   $92
        .byte   $46
LCA4B:  .byte   $92
        cpx     #$96
        .byte   $62
        tya
        .byte   $9F
        .byte   $9B
        sta     $9E
        cmp     $A1,x
        eor     $A3,x
        .byte   $DB
        .byte   $A7
        .byte   $6F
        tax
        .byte   $1B
        brk
        brk
        tax
        ldy     #$AC
        .byte   $F4
        .byte   $AF
LCA64:  .byte   $14
        .byte   $AF
        rol     $AF
        and     $45AF,y
        .byte   $AF
        eor     ($AF),y
        pla
        .byte   $AF
        .byte   $7F
        .byte   $AF
        .byte   $8B
        .byte   $AF
        ldx     $AF
        .byte   $CB
        bcs     LCAA8
        bcs     LCABF
        bcs     LCAD3
        bcs     LCA04
        bcs     LCA19
        brk
        brk
        bcs     LCA29
        bcs     LCA4B
        bcs     LCA64
        lda     ($05),y
LCA8B:  lda     ($1A),y
        lda     ($24),y
        lda     ($61),y
        lda     ($70),y
        lda     ($93),y
LCA95:  lda     ($A4),y
        lda     ($B2),y
        lda     ($C5),y
        lda     ($DD),y
        lda     ($F9),y
        .byte   $B2
        asl     $2FB2
        .byte   $B2
        eor     ($B2,x)
        .byte   $4C
        .byte   $B2
LCAA8:  cmp     $B2,x
        .byte   $F2
        .byte   $B3
        .byte   $14
        .byte   $B3
        bit     $B3
        pha
        .byte   $B3
        cli
        .byte   $B3
        adc     #$B3
        .byte   $7B
        .byte   $B3
        sta     ($B3),y
        .byte   $9C
        .byte   $B3
        clv
        .byte   $B3
        .byte   $C3
LCABF:  .byte   $B3
        dec     LDDB3
        .byte   $1F
        ora     $0AA0,x
        .byte   $80
LCAC8:  brk
        brk
        .byte   $80
        asl     LD00A,x
        ora     $DC
        brk
        .byte   $1C
        brk
LCAD3:  brk
        brk
        brk
        brk
        .byte   $B2
        .byte   $03
        bvc     LCADB
LCADB:  asl     LC00E,x
        .byte   $1A
        cpx     $10
        asl     $1F00
        .byte   $1C
        bne     LCAED
        .byte   $B7
        brk
        php
        brk
        .byte   $1F
        .byte   $19
LCAED:  cpy     #$04
        ldx     $1000
        brk
        asl     LD01C,x
        ora     $B0
        brk
        .byte   $0C
        brk
        ora     LE01C,x
        .byte   $07
        ldy     $00
        .byte   $0C
        brk
        .byte   $1F
        .byte   $1C
        cpy     #$03
        brk
        brk
        brk
        .byte   $80
        .byte   $1F
        .byte   $1F
        bcc     LCB12
        brk
        brk
        brk
LCB12:  brk
        .byte   $1F
        asl     $04B0,x
        brk
        brk
        brk
        brk
        asl     LC01F,x
        .byte   $02
        .byte   $5F
        brk
        .byte   $3C
        brk
        .byte   $1F
        .byte   $1C
        cpy     #$03
        .byte   $CB
LCB28:  ora     $00
        .byte   $80
        .byte   $1F
        ora     $02A0,x
        tsx
        .byte   $02
        rol     a
        brk
        .byte   $1F
        .byte   $12
        ldy     #$01
        .byte   $80
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCB5E
        .byte   $9E
        cli
        brk
        brk
        .byte   $1A
        ora     $07A0,y
        .byte   $BB
        brk
        .byte   $17
        .byte   $80
        .byte   $1F
        .byte   $1C
LCB4D:  bcs     LCB52
        .byte   $DF
        .byte   $03
        .byte   $07
LCB52:  .byte   $80
        .byte   $1F
        ora     #$E0
        ora     #$C2
        brk
        .byte   $33
        .byte   $80
        .byte   $1F
        .byte   $07
        .byte   $A0
LCB5E:  bpl     LCB4D
        ora     $07
        .byte   $80
        .byte   $1F
        asl     $0BF0,x
        cpx     $01
        plp
        brk
        .byte   $1F
        ora     $0360,y
        cmp     $00
        .byte   $7F
        brk
        .byte   $1F
        .byte   $1F
        beq     LCB87
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCB9E
        cmp     ($1F,x)
        plp
        brk
        .byte   $1C
        .byte   $1F
        beq     LCBA6
LCB87:  .byte   $7F
        plp
        brk
        brk
        .byte   $1F
        .byte   $1F
        cpy     #$15
        .byte   $FF
        brk
        .byte   $7F
        brk
        .byte   $1F
        asl     $0BA0,x
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        .byte   $F0
LCB9E:  .byte   $1F
        .byte   $FF
        lsr     a
        brk
        brk
        .byte   $1F
        .byte   $17
        rts

LCBA6:  bpl     LCB28
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCBCE
        .byte   $FF
        .byte   $7F
        .byte   $32
        brk
        .byte   $1F
        asl     $0660,x
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCBDE
        cmp     $7F,y
        brk
        .byte   $1F
        .byte   $1F
        beq     LCBC8
        .byte   $EF
LCBC8:  brk
LCBC9:  eor     $00,x
        .byte   $1F
        .byte   $1F
        .byte   $90
LCBCE:  .byte   $12
        brk
        brk
        brk
        brk
        .byte   $17
        .byte   $1F
        beq     LCBF5
        ldy     $3B
        brk
        .byte   $80
        .byte   $1F
        .byte   $19
        .byte   $80
LCBDE:  .byte   $1B
        asl     $35,x
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCC06
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $1F
        ora     $0AA0,x
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $1F
        .byte   $1F
LCBF5:  rts

        .byte   $0C
        brk
        brk
        brk
        brk
        ora     $1001,y
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1D
        .byte   $90
LCC06:  .byte   $17
        brk
        brk
        brk
        .byte   $80
        brk
        sty     $8D14
        .byte   $4F
        stx     $8F69
        .byte   $6F
        ora     $01
        sta     $7806,y
        .byte   $07
        php
        .byte   $04
        php
        .byte   $04
        php
        php
        .byte   $04
        ora     #$01
        clc
        .byte   $80
        txa
        sty     $8F8D
        .byte   $02
        sta     $6A01
        ora     ($AA,x)
        .byte   $12
        php
        sty     $8F40
        .byte   $8F
        .byte   $8F
        adc     $B101
        ora     ($71,x)
        ldy     #$0E
        ora     ($8C,x)
        ora     $8C8C,x
        sty     $4C6A
        sta     $AC01
        ora     ($6C,x)
        .byte   $02
        rts

        php
        ora     ($60,x)
        .byte   $02
        sta     $8A8D
        .byte   $02
        sta     $AF01
        ora     ($6F,x)
        .byte   $80
        adc     $6F60
        sta     ($01),y
        sta     ($01),y
        lda     ($60),y
        .byte   $80
        clc
        .byte   $80
        php
        asl     $80
        brk
        adc     ($A0),y
        .byte   $74
        brk
        .byte   $80
        ldx     $06,y
        .byte   $64
        .byte   $07
        ora     #$08
        .byte   $07
        ora     #$02
        clc
        cpy     #$AA
        asl     $6E
        .byte   $07
        php
        ora     #$01
        php
        .byte   $04
        rol     $4F02
        rts

        adc     $2E60
        ora     ($6F,x)
        .byte   $02
        ora     ($4F,x)
        adc     $6070
        adc     ($6D),y
        rts

        rol     $6F01
        .byte   $02
        ora     ($4F,x)
        adc     $1860
        .byte   $80
        php
        asl     $09
        .byte   $02
        .byte   $80
        brk
        adc     $6CA0
        brk
        .byte   $80
        tax
        asl     $64
        .byte   $07
        ora     #$08
        .byte   $07
        clc
        cpy     #$AA
        asl     $6E
        .byte   $07
        php
        php
        .byte   $04
        ora     #$01
        rol     $4F02
        rts

        adc     $2E60
        ora     ($6F,x)
        .byte   $02
        ora     ($4F,x)
        adc     $6070
        adc     ($6D),y
        rts

        rol     $6F01
        .byte   $02
        ora     ($4F,x)
        adc     $8060
        brk
        adc     ($A0),y
        .byte   $74
        brk
        .byte   $80
        ldx     $06,y
        .byte   $64
        .byte   $07
        ora     #$08
        .byte   $07
        ora     #$02
        clc
        cpy     #$AA
        asl     $6E
        .byte   $07
        php
        ora     #$01
        php
        .byte   $04
        rol     $4F02
        rts

        adc     $2E60
        ora     ($6F,x)
        .byte   $02
        ora     ($4F,x)
        adc     $6070
        adc     ($6D),y
        rts

        rol     $6F01
        .byte   $02
        ora     ($4F,x)
        adc     $1860
        .byte   $80
        php
        asl     $09
        .byte   $02
        .byte   $80
        brk
        adc     $6CA0
        brk
        .byte   $80
        tax
        ora     $08,x
        sta     $064D
        .byte   $64
        .byte   $07
        ora     #$08
        .byte   $07
        clc
        cpy     #$AA
        asl     $6E
        .byte   $07
        php
        ora     #$01
        php
        .byte   $04
        brk
        bmi     LCD32
        .byte   $31
LCD32:  eor     ($01),y
        sta     ($00),y
        lda     $3400
        ora     ($35,x)
        eor     $01,x
        sta     $00,x
        lda     ($00),y
        .byte   $37
        ora     ($38,x)
        cli
        ora     ($98,x)
        brk
        sta     $11,x
        ora     ($8C,x)
        .byte   $1B
        ldy     #$17
        .byte   $04
        php
        .byte   $04
        php
        asl     $6E
        .byte   $07
        asl     $09
        .byte   $02
        php
        ora     ($18,x)
        .byte   $80
        .byte   $02
        txa
        ror     a
        lda     ($AF),y
        lda     $B2AC
        .byte   $07
        php
        clc
        cpy     #$12
        php
        sta     $087D
        .byte   $04
        ora     #$01
        rts

        adc     $60
        .byte   $64
        adc     $64
        .byte   $63
        adc     ($0E,x)
        ora     ($8D,x)
        eor     (L0065),y
        .byte   $63
        .byte   $64
        adc     $6A
        adc     #$68
        adc     #$08
        asl     $09
        ora     ($60,x)
        .byte   $02
        txa
        txa
        sta     $02
        txa
        ora     ($AC,x)
        ora     ($6C,x)
        .byte   $80
        ror     a
        rts

        ldy     $0408
        brk
        adc     $6D6A
        .byte   $6F
        adc     $716F
        .byte   $6F
        adc     ($71),y
        .byte   $74
        adc     $09,x
        .byte   $02
        brk
        ror     $35,x
        .byte   $34
        .byte   $33
        .byte   $32
        and     ($00),y
        bmi     LCDE2
        rol     $2C2D
        rol     a
        brk
        jsr     L0040
        .byte   $80
        clc
        .byte   $80
        ora     #$01
        adc     L8000
        .byte   $A7
        clc
        cpy     #$06
        .byte   $64
        .byte   $07
        asl     a
        php
        .byte   $07
        ora     #$00
        tax
        asl     $6E
        .byte   $07
        php
        php
        .byte   $04
        ror     $60
        ror     $66
        ror     $66
        rts

        adc     $60
        adc     $60
        adc     $09
LCDE2:  ora     ($08,x)
        asl     $71
        .byte   $74
        rts

        ror     $18,x
        .byte   $80
        .byte   $80
        brk
        adc     ($A0),y
        .byte   $6F
        brk
        .byte   $80
        lda     L6406
        .byte   $07
        ora     #$08
        .byte   $07
        clc
        cpy     #$AA
        ora     #$00
        php
        .byte   $04
        ror     a
LCE01:  rts

        ror     a
        ror     a
        rts

        ror     a
        ror     a
        rts

        jmp     (L6C60)

        jmp     (L0109)

        php
        .byte   $07
        adc     ($74),y
        rts

        ror     $80,x
        brk
        ror     a
        ldy     #$6D
        brk
        .byte   $80
        .byte   $A7
        tax
        asl     $6E
        .byte   $07
        php
        php
        .byte   $04
        ror     $60
        ror     $66
        ror     $66
        rts

        adc     $60
        adc     $60
        adc     $08
        asl     $71
        .byte   $74
        rts

        ror     $80,x
        brk
        ror     a
        ldy     #$6D
        brk
        .byte   $80
        .byte   $A7
        asl     $64
        .byte   $07
        ora     #$08
        .byte   $07
        ora     $08,x
        stx     $AA67
        asl     $6E
        php
        .byte   $04
        .byte   $07
        php
        brk
        adc     ($80,x)
        txa
        adc     ($80,x)
        ror     a
        sta     $036A
        sei
        .byte   $80
        .byte   $03
        .byte   $89
        .byte   $03
        sei
        .byte   $80
        .byte   $03
        adc     #$8C
        adc     #$11
        ora     ($8D,x)
        .byte   $4F
        ldy     #$17
        php
        .byte   $02
        ora     #$03
        asl     $82
        .byte   $04
        brk
        .byte   $04
        brk
        txa
        txa
        brk
        .byte   $80
        ror     a
        dey
        rts

        txa
        rts

        brk
        rts

        ora     ($8A,x)
        .byte   $02
        ora     ($8A,x)
        sty     a:$8C
        .byte   $80
        jmp     (L6C00)

        rts

        jmp     (L0180)

        adc     $12
        rti

        stx     $0199
        lda     $0E
        ora     (L008E,x)
        adc     ($01),y
        sta     ($90),y
        brk
        .byte   $80
        asl     $C8
        ora     ($6D,x)
        brk
        ora     ($8D,x)
        brk
        adc     $6A80
        .byte   $80
        adc     $8080
        ora     ($6F,x)
        brk
        ora     ($AF,x)
        .byte   $80
        adc     $7160
        sta     ($60),y
        adc     (L0065),y
        rts

        ora     (L0065,x)
        ora     ($A5,x)
        ora     #$04
        asl     $6E
        .byte   $80
        sta     ($00),y
        .byte   $80
        brk
        sty     $00,x
        rts

        brk
        ldx     $09,y
        .byte   $02
        asl     $96
        ldx     $09,y
        .byte   $03
        asl     $C8
        brk
        stx     $60
        stx     $60
        .byte   $92
        ror     $80
        adc     $80
        adc     $00
        .byte   $80
        brk
        sty     $74,x
        .byte   $80
        ror     $09,x
        .byte   $04
        asl     $6E
        brk
        .byte   $80
        sta     L8000,y
        brk
        tya
        brk
        rts

        brk
        ldx     $09,y
        .byte   $02
        asl     $96
        ldx     $09,y
        .byte   $03
        asl     $C8
        brk
        stx     $60
        stx     $60
        .byte   $92
        ror     $80
        adc     $80
LCF0A:  adc     $00
        .byte   $80
        brk
        sty     $74,x
        .byte   $80
        ror     $09,x
        .byte   $04
        asl     $6E
        brk
        .byte   $80
        sta     ($00),y
        .byte   $80
        brk
        sty     $00,x
        rts

        brk
        ldx     $09,y
        .byte   $02
        asl     $96
        ldx     $09,y
        .byte   $03
        asl     $C8
        brk
        stx     $60
        stx     $60
        .byte   $92
        ror     $80
        adc     $80
        adc     $00
        .byte   $80
        brk
        sty     $74,x
        .byte   $80
        ror     $09,x
        .byte   $04
        asl     $6E
        brk
        .byte   $80
        sta     L8000,y
        brk
        tya
        brk
        rts

        brk
        ldx     $15,y
        brk
        .byte   $8F
        adc     L0209
        asl     $96
        ldx     $09,y
        .byte   $03
        brk
        ror     $80
        .byte   $80
        brk
        stx     $00
        ror     $92
        ror     L0065
        .byte   $80
        .byte   $80
        brk
        sta     $00
        adc     $91
        adc     $11
        ora     (L008E,x)
        .byte   $6F
        ldy     #$17
        php
        .byte   $03
        asl     $64
        .byte   $07
        ora     #$04
        jsr     L2004
        .byte   $04
        jsr     L6065
        .byte   $6F
        adc     $6F60
        ror     a
        rts

        .byte   $6F
        adc     $6F60
        asl     $8F02
        adc     L6F85,y
        .byte   $80
        ror     a
        ror     a
        rts

        ror     a
        txa
        .byte   $6F
        .byte   $0F
        ora     ($8F,x)
        .byte   $77
        adc     $6F
        ror     a
        .byte   $80
        ror     a
        adc     $60
        adc     $6A
        .byte   $80
        adc     $60
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        adc     $60
        adc     $6A
        .byte   $80
        .byte   $04
        jsr     L6065
        .byte   $6F
        adc     $6F60
        ror     a
        rts

        .byte   $6F
        adc     $6F60
        asl     $8F01
        lda     $8065
        .byte   $8F
        jmp     (L6068)

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        adc     $6D60
        asl     $FF
        brk
        .byte   $8F
        asl     $64
        brk
        adc     $60
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        adc     $80
        adc     L0065
        .byte   $80
        ror     a
        rts

        .byte   $6F
        adc     $6580
        .byte   $80
        .byte   $8F
        jmp     (L6068)

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        adc     $6D60
        asl     $FF
        brk
        .byte   $8F
        asl     $64
        brk
        adc     $60
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

LD00A:  .byte   $6F
        ror     a
        rts

        adc     $80
        .byte   $65
LD010:  adc     $80
        ror     a
        rts

        .byte   $6F
        adc     $6580
        .byte   $80
        .byte   $8F
        .byte   $6C
        pla
LD01C:  rts

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        adc     $6D60
        asl     $FF
        brk
        .byte   $8F
        asl     $64
        brk
        adc     $60
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        adc     $80
        adc     L0065
        .byte   $80
        ror     a
        rts

        .byte   $6F
        adc     $1580
        jsr     L7790
        adc     $80
        .byte   $8F
        jmp     (L6068)

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        adc     $6D60
        asl     $FF
        brk
        .byte   $8F
        asl     $64
        brk
        adc     $60
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        adc     $80
        adc     L0065
        .byte   $80
        ror     a
        rts

        .byte   $6F
        .byte   $6D
LD072:  .byte   $80
        ora     ($01),y
        .byte   $8F
        adc     $85,x
        .byte   $6F
        sty     $806D
        pla
        brk
        .byte   $80
        ldx     $A0
        .byte   $17
        brk
        bcc     LD010
        bcc     LD072
        sta     ($4F),y
        sta     ($8A),y
        ora     $01
        .byte   $33
        .byte   $04
        plp
        asl     $64
        .byte   $07
        php
        php
        php
        ora     #$02
        clc
        rti

        sta     $8965
        ror     a
        .byte   $80
        adc     $83
        adc     ($64,x)
        .byte   $80
        .byte   $64
        .byte   $80
        sty     $63
        .byte   $03
        tya
        adc     $96,x
        adc     $039D,y
        jmp     (L6589)

        .byte   $83
        adc     ($83,x)
        adc     ($83,x)
        ora     (L0065,x)
        brk
        ora     ($A5,x)
        brk
        sta     $8965
        ror     a
        .byte   $80
        adc     $83
        adc     ($64,x)
        .byte   $80
        .byte   $64
        .byte   $80
        sty     $63
        .byte   $03
        tya
        adc     $9B,x
        adc     ($95),y
        ror     $09,x
        ora     ($06,x)
        iny
        brk
        .byte   $80
        brk
        .byte   $03
        sta     ($01),y
        .byte   $72
        brk
        ora     ($92,x)
        brk
        sta     $01,x
        ror     $00,x
        ora     ($B6,x)
        asl     $90,x
        stx     $0417
        plp
        asl     $64
        .byte   $07
        php
        php
        php
        ora     #$01
        clc
        .byte   $80
        eor     $01,x
        lsr     $01,x
        ror     $6C,x
        .byte   $8B
        ror     a
        .byte   $80
        adc     ($83,x)
        .byte   $64
        .byte   $80
        .byte   $03
        .byte   $74
        stx     $77,y
        .byte   $80
        .byte   $77
        stx     $7D,y
        .byte   $80
        ror     $99,x
        .byte   $7D
        .byte   $80
LD111:  adc     $7C9B,y
        .byte   $80
        .byte   $74
        sta     $78,x
        .byte   $80
        sei
        .byte   $9B
        adc     $5503,x
        ora     ($56,x)
        ora     ($76,x)
        jmp     (L6A8B)

        .byte   $80
        adc     ($83,x)
        .byte   $64
        .byte   $80
        .byte   $03
        .byte   $74
        stx     $77,y
        .byte   $80
        sei
        stx     $71,y
        .byte   $80
        adc     ($9B),y
        adc     L8000,y
        asl     $C8
        .byte   $07
        .byte   $07
        brk
        .byte   $9F
        ora     ($03,x)
        pla
        brk
        ora     ($88,x)
        brk
        .byte   $8F
        ora     ($6E,x)
LD148:  brk
        ora     ($AE,x)
        asl     $90,x
        .byte   $EB
        .byte   $17
        .byte   $04
        brk
        asl     $C8
        php
        php
        ora     #$02
        stx     $95,y
        sty     $92,x
        sta     ($93),y
        sta     $98,x
        brk
        adc     $7D60,x
        brk
        sta     $92,x
        sty     $95,x
        stx     $98,y
        sta     ($96),y
        .byte   $9B
        txs
        sta     $9596,y
        sty     $91,x
        stx     $95,y
        brk
        sta     ($6F),y
        stx     $01,y
        .byte   $77
        ora     ($97,x)
        bvs     LD111
        ora     ($71,x)
        ora     ($91,x)
        .byte   $74
        txs
        adc     ($16),y
        sta     ($4F),y
        .byte   $17
        .byte   $17
        brk
        sta     ($94),y
        sta     ($C6),y
        sta     ($F5),y
        .byte   $92
        .byte   $22
        ora     $01
        sty     $9606
        .byte   $07
        php
        php
        php
        ora     #$02
        clc
        rti

        brk
        sta     $9979,y
        brk
        sta     $7D00,x
        sta     $9E00,x
        brk
        ror     a:$9E,x
        .byte   $03
        dey
        brk
        ror     a
        sty     $806D
        bvs     LD148
        adc     L6D8F
        txa
        pla
        adc     $8D80
        asl     $32
        brk
        lda     L0617
        stx     $07,y
        php
        php
        php
        ora     #$02
        clc
        rti

        brk
        sty     $74,x
        sty     $00,x
        sty     $00,x
        .byte   $74
        sty     $00,x
        sta     $7900,y
        sta     $9B00,y
        brk
        adc     $7D9E,y
        .byte   $80
        .byte   $03
        pla
        stx     L0065
        stx     L0065
        .byte   $83
        adc     ($68,x)
        .byte   $80
        stx     $06
        .byte   $32
        brk
        lda     $17
        asl     $C8
        php
        php
        ora     #$02
        brk
        sta     $9979,y
        brk
        .byte   $97
        brk
        .byte   $77
        .byte   $97
        brk
        stx     $00,y
        ror     $96,x
        brk
        sty     $00,x
        .byte   $72
        sta     ($6D),y
        .byte   $80
        brk
        ora     ($92,x)
        brk
        ora     ($72,x)
        brk
        sty     $94,x
        brk
        adc     ($80),y
        .byte   $8F
        asl     $50
        brk
        lda     L0617
        stx     $08,y
        ora     #$07
        php
        .byte   $04
        jsr     L6F85
        ror     a
        rts

        .byte   $6F
        .byte   $80
        adc     $6A
        rts

        .byte   $6F
        asl     $9201
        plp
        brk
        ldy     #$00
        txa
        ror     a
        txa
        ror     a
        sta     $6A
        .byte   $8F
        adc     $00
        ldy     #$17
        brk
        .byte   $92
        .byte   $4F
        .byte   $92
        sta     $92
        ldx     LDF92
        .byte   $04
        plp
        ora     $01
        adc     #$06
        .byte   $64
        .byte   $07
        php
        php
        php
        ora     #$01
        clc
        rti

        txa
        adc     $708F
        .byte   $8F
        adc     $6A80
        sta     $886A
        ora     ($6A,x)
        brk
        ora     ($AA,x)
        brk
        txa
        adc     $708F
        .byte   $8F
        adc     $6A80
        sty     $70,x
        .byte   $8F
        adc     $018F
        adc     L0100
        sta     $9216
        .byte   $4F
        .byte   $17
        .byte   $04
        jsr     L6406
        .byte   $07
        php
        php
        php
        ora     #$01
        .byte   $04
        jsr     L0380
        ror     a
        asl     $9205
        .byte   $8F
        .byte   $80
        adc     $6A8C
        .byte   $04
        jsr     L0380
        pla
        asl     $9203
        .byte   $9C
        brk
        .byte   $87
        txa
        dey
        .byte   $87
        asl     $92,x
        sta     $17
        asl     $C8
        php
        php
        ora     #$02
        .byte   $04
        jsr     L806A
        ror     $80,x
        txa
        ror     a
        ror     $80,x
        txa
        ror     a
        ror     $60,x
        ror     a
        .byte   $80
        ror     a
        ror     $80,x
        pla
        .byte   $80
        .byte   $74
        .byte   $80
        dey
        pla
        .byte   $74
        .byte   $80
        .byte   $87
        .byte   $67
        .byte   $73
        rts

        .byte   $67
        .byte   $80
        .byte   $67
        .byte   $73
        .byte   $80
        asl     $92,x
        ldy     $16,x
        .byte   $92
        ldy     $17,x
        .byte   $17
        brk
        .byte   $92
        sbc     #$93
        sbc     $94,x
        sbc     LCA95,x
        ora     $01
        adc     #$06
        stx     $07,y
        php
        php
        php
        ora     #$01
        clc
        rti

        .byte   $80
        brk
        .byte   $03
        .byte   $74
        .byte   $80
        .byte   $92
        ora     ($6F,x)
        brk
        ora     ($8F,x)
        brk
        .byte   $74
        .byte   $80
        .byte   $92
        brk
        .byte   $8F
        brk
        .byte   $72
        sty     $01,x
        adc     $01,x
        sta     $75,x
        .byte   $74
        .byte   $80
        .byte   $92
        .byte   $6F
        .byte   $80
        brk
        .byte   $8F
        brk
        ror     a
        sta     L806F
        ora     ($74,x)
        brk
        ora     ($94,x)
        .byte   $04
        brk
        .byte   $BB
        brk
        ora     ($BE,x)
        ora     ($7E,x)
        .byte   $03
        pla
        .byte   $02
        brk
        ldy     #$00
        txa
        adc     L806F
        adc     L6F80
        .byte   $80
        .byte   $72
        .byte   $80
        sta     ($6D),y
        .byte   $80
        brk
        ora     ($AA,x)
        brk
        ora     ($6A,x)
        brk
        .byte   $A3
        brk
        ora     ($A6,x)
        ora     ($66,x)
        pla
        .byte   $02
        brk
        ldy     #$00
        stx     $68
        .byte   $89
        pla
        ror     $80
        .byte   $63
        .byte   $80
        sta     ($00,x)
        ora     ($C3,x)
        brk
        ora     ($63,x)
        brk
        tax
        brk
        ora     ($AD,x)
        ora     ($6D,x)
        .byte   $6F
        .byte   $02
        brk
        ldy     #$00
        sta     $726F
        .byte   $80
        adc     ($80),y
        .byte   $6F
        .byte   $80
        adc     $8F80
        ror     $80,x
        ora     ($76,x)
        ora     ($96,x)
        ora     ($6E,x)
        brk
        ora     (L008E,x)
        brk
        ror     $80,x
        ror     $80,x
        ror     $80,x
        ror     $80,x
        sty     $74,x
        .byte   $80
        brk
        ora     ($AF,x)
        brk
        ora     ($6F,x)
        brk
        stx     $8F8A
        txa
        bcc     LD397
LD397:  txa
        brk
        sta     ($00),y
        ror     $94,x
        adc     ($04),y
        jsr     L0380
        .byte   $6F
        adc     L6F80
        .byte   $80
        adc     L6F80
        ldy     #$00
        ora     ($B2,x)
        brk
        ora     ($72,x)
        .byte   $80
        .byte   $34
        ora     ($35,x)
        ora     ($55,x)
        sty     $72,x
        sty     $6F,x
        .byte   $80
        .byte   $6F
        eor     ($00),y
        .byte   $72
        brk
        .byte   $6F
        sta     L0100
        .byte   $AF
        brk
        ora     ($6F,x)
        asl     $9301
        .byte   $9E
        .byte   $72
        .byte   $80
        .byte   $72
        .byte   $80
        .byte   $92
        .byte   $72
        .byte   $80
        adc     ($80),y
        ror     a
        stx     $9476
        .byte   $72
        sta     ($6E),y
        .byte   $72
        .byte   $80
        .byte   $72
        .byte   $80
        .byte   $92
        .byte   $72
        .byte   $80
        adc     ($80),y
        and     $01,x
        rol     $01,x
        lsr     $95,x
        .byte   $6F
        sty     $72,x
        .byte   $8F
        adc     $9316
        jsr     L0617
        stx     $07,y
        php
        php
        php
        ora     #$01
        .byte   $80
        brk
        .byte   $03
        ror     a
        .byte   $80
        txa
        ora     ($6A,x)
        brk
        ora     ($8A,x)
        brk
        ror     a
        .byte   $80
        txa
        ora     ($6A,x)
        ora     ($8A,x)
        .byte   $6F
        sta     ($01),y
        .byte   $72
        ora     ($92,x)
        .byte   $72
LD417:  adc     ($80),y
LD419:  .byte   $6F
        .byte   $80
        adc     $8A80
        ror     $88
        ora     ($6A,x)
        ora     ($8A,x)
        ora     ($71,x)
        brk
        ora     ($91,x)
        .byte   $04
        brk
        .byte   $0C
        brk
        php
        php
        ldx     $00,y
        ora     ($B9,x)
        ora     ($79,x)
        .byte   $7B
        brk
        ldy     #$00
        ror     L7980,x
        .byte   $80
        .byte   $7B
        .byte   $80
        adc     L7E80,y
        .byte   $80
        sta     $6803,y
        .byte   $80
        pla
        adc     ($80,x)
        adc     $80
        adc     ($80,x)
        brk
        .byte   $03
        ldx     $00,y
        ora     ($B9,x)
        ora     ($79,x)
        .byte   $7B
        brk
        ldy     #$00
        ror     L7980,x
        .byte   $80
        .byte   $7B
        .byte   $80
        adc     L0380,y
        .byte   $6F
        .byte   $80
        sta     ($63,x)
        .byte   $80
        .byte   $63
        adc     ($80,x)
        ror     $80
        adc     ($80,x)
        brk
        .byte   $A3
        brk
        ora     ($A6,x)
        ora     ($66,x)
        pla
        brk
        ldy     #$00
        ror     $80
        adc     ($80,x)
        .byte   $63
        .byte   $80
        adc     ($80,x)
        pla
        .byte   $80
        sta     ($63,x)
        .byte   $80
        .byte   $63
        adc     ($80,x)
        sta     ($01),y
        ror     a
        brk
        ora     ($8A,x)
        brk
        adc     ($80),y
        adc     ($80),y
        bvs     LD417
        bvs     LD419
        .byte   $8F
        .byte   $6F
        .byte   $80
        brk
        ora     ($AC,x)
        brk
        ora     ($6C,x)
        brk
        tay
        .byte   $A7
        brk
        ora     ($A6,x)
        ora     ($66,x)
        brk
        ora     ($A5,x)
        brk
        ora     (L0065,x)
        .byte   $04
        jsr     L0380
        ror     a
        pla
        .byte   $80
        ror     a
        .byte   $80
        pla
        .byte   $80
        ror     a
        ldy     #$00
        ora     ($AD,x)
        brk
        ora     ($6D,x)
        brk
        .byte   $A3
        ldx     $A8
        .byte   $A3
        asl     $9401
        bcs     LD4D5
        ora     ($00,x)
        .byte   $6F
        .byte   $80
        .byte   $6F
        .byte   $80
        .byte   $8F
        .byte   $6F
LD4D5:  .byte   $80
        ror     $0C80
        .byte   $02
        ror     a
        stx     $9476
        .byte   $72
        sta     ($6E),y
        .byte   $0C
        brk
        .byte   $6F
        .byte   $80
        .byte   $6F
        .byte   $80
        .byte   $8F
        .byte   $6F
        .byte   $80
        ror     $0C80
        .byte   $02
        and     $01,x
        rol     $01,x
        lsr     $95,x
        .byte   $6F
        sty     $72,x
        .byte   $8F
        adc     $9416
        and     #$17
        asl     $64
        php
        php
        ora     #$02
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        sta     $9999,y
        sta     $9898,y
        tya
        tya
        .byte   $97
        .byte   $97
        asl     $C8
        brk
        .byte   $97
        ora     ($79,x)
        brk
        ora     ($99,x)
        .byte   $04
        brk
        .byte   $04
        brk
        ora     #$01
        .byte   $BB
        brk
        ora     ($B9,x)
        ora     ($79,x)
        sei
        ora     #$02
        .byte   $97
        sei
        .byte   $97
        sei
        ldy     #$60
        .byte   $72
        brk
        sty     $00,x
        .byte   $92
        .byte   $74
        .byte   $80
        .byte   $72
        sty     $75,x
        ror     $80,x
        adc     $80,x
        .byte   $12
        jsr     L6995
        stx     $B9,y
        ora     #$01
        brk
        .byte   $BB
        brk
        ora     ($B9,x)
        ora     ($79,x)
        sei
        ora     #$02
        .byte   $97
        sei
        .byte   $97
        sei
        brk
        ldy     #$00
        .byte   $74
        .byte   $80
        .byte   $74
        .byte   $80
        adc     $80,x
        adc     $80,x
        brk
        .byte   $9B
        brk
        sta     $7B,y
        ldy     #$0E
        ora     ($95,x)
        .byte   $1C
        sta     ($B6),y
        .byte   $7A
        .byte   $80
        .byte   $7A
        .byte   $80
        adc     L7980,y
        .byte   $80
        tya
        sei
        .byte   $80
        brk
        ora     ($B8,x)
        brk
        ora     ($78,x)
        txa
        ror     $8A,x
        brk
        txa
        brk
        ror     $8A,x
        brk
        txa
        brk
        ror     $8A,x
        brk
        txa
        brk
        ror     $98,x
        .byte   $7A
        .byte   $04
        jsr     L6F8F
        brk
        .byte   $92
        sty     $95,x
        sty     $92,x
        .byte   $8F
        sta     a:$94
        .byte   $03
        dey
        .byte   $03
        .byte   $74
        .byte   $80
        .byte   $74
        brk
        .byte   $03
        dey
        .byte   $03
        sty     $00,x
        .byte   $03
        dey
        .byte   $03
        .byte   $74
        .byte   $80
        .byte   $74
        brk
        .byte   $03
        dey
        asl     $9501
        .byte   $8F
        .byte   $04
        jsr     L8075
        adc     $80,x
        sta     $75,x
        .byte   $80
        ror     $00,x
        cpy     #$0E
        ora     ($95,x)
        ldx     $16,y
        sta     $1A,x
        .byte   $17
        asl     $64
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     $8A
        brk
        sta     L0065
        brk
        txa
        brk
        sta     L0065
        txa
        .byte   $12
        jsr     LEB95
        brk
        sta     $00
        adc     $00
        txa
        asl     $9501
        bne     LD5EC
LD5EC:  sta     $00
        ora     ($6D,x)
        brk
        ora     ($8D,x)
        .byte   $04
        jsr     L6406
        .byte   $04
        jsr     L6F85
        txa
        .byte   $6F
        sta     L0065
        txa
        .byte   $6F
        sta     $6F
        txa
        brk
        sta     $00
        adc     $8A
        .byte   $6F
        asl     $9505
        .byte   $F7
        brk
        txa
        txa
        txa
        txa
        brk
        sta     $6D
        txa
        ora     ($68,x)
        brk
        ora     ($88,x)
        brk
        ror     a
        ror     a
        ror     a
        brk
        sta     $8A
        brk
        sta     L0065
        brk
        txa
        brk
        sta     L0065
        txa
        brk
        sta     $00
        adc     $00
        txa
        .byte   $04
        brk
        asl     $C8
        sty     L6406
        brk
        ror     a
        rts

        ror     a
        asl     $960F
        .byte   $32
        .byte   $04
        brk
        txa
        txa
        brk
        txa
        ror     a
        .byte   $80
        ror     a
        .byte   $12
        jsr     L5496
        brk
        cpy     #$0E
        ora     ($96,x)
        eor     ($00,x)
        ldy     #$00
        ror     a
        rts

        ror     a
        asl     $C8
        brk
        sty     $9516
        .byte   $F3
        .byte   $17
        brk
        stx     $6B,y
        .byte   $97
        and     LDC97
        tya
        jmp     L0105

        .byte   $3B
        php
        .byte   $12
        asl     $64
        .byte   $07
        ora     #$0A
        .byte   $03
        clc
        .byte   $80
        ora     #$01
        brk
        .byte   $03
        stx     $72,y
        .byte   $8F
        brk
        sta     $00,x
        adc     (L008E),y
        brk
        sty     $00,x
        ror     $7491
        php
        php
        .byte   $97
        ora     ($76,x)
        brk
        ora     ($96,x)
        .byte   $04
        jsr     L6406
        clc
        .byte   $80
        .byte   $07
        php
        .byte   $04
        jsr     L0380
        .byte   $6F
        sta     ($72),y
        sta     ($6D),y
        .byte   $80
        ror     a
        eor     $01,x
        lsr     $01,x
        ror     $72,x
        sty     $00,x
        stx     $00,y
        .byte   $74
        .byte   $92
        adc     ($80),y
        .byte   $12
        plp
        stx     $CC,y
        .byte   $6F
        sta     ($72),y
        sta     ($6D),y
        .byte   $80
        ror     a
        lsr     $804F
        lsr     $804F
        .byte   $92
        adc     ($8F),y
        .byte   $6F
        asl     $9601
        txs
        .byte   $6F
        sta     ($72),y
        sty     $71,x
        sta     $866B
        .byte   $6B
        .byte   $8F
        .byte   $72
        sta     ($76),y
        .byte   $80
        ror     $04,x
        jsr     L4018
        php
        asl     a
        asl     $96
        .byte   $07
        ora     #$80
        .byte   $03
        .byte   $72
        .byte   $97
        .byte   $72
        sta     ($72),y
        .byte   $80
        .byte   $72
        .byte   $97
        .byte   $72
        sta     ($00),y
        .byte   $92
        .byte   $12
        php
        .byte   $97
        .byte   $12
        brk
        .byte   $77
        stx     $74,y
        brk
        .byte   $92
        brk
        sta     ($6F),y
        .byte   $80
        php
        .byte   $12
        ror     $8A
        ror     $7291
        sta     ($72),y
        sta     ($6A),y
        stx     L0065
        asl     $9601
        .byte   $DB
        brk
        .byte   $6F
        sta     ($72),y
        php
        .byte   $12
        stx     $74,y
        sta     ($6E),y
        dey
        adc     $80
        adc     $08
        php
        .byte   $07
        php
        stx     $908F
        brk
        lda     ($16),y
        stx     $92,y
        .byte   $17
        php
        .byte   $07
        asl     $96
        .byte   $07
        .byte   $07
        clc
        rti

        ora     #$01
        brk
        .byte   $03
        txa
        ror     $83
        brk
        .byte   $89
        brk
        adc     $82
        brk
        dey
        brk
        .byte   $62
        sta     $68
        dey
        ora     (L0065,x)
        brk
        ora     ($85,x)
        .byte   $04
        brk
        .byte   $04
        brk
        php
        .byte   $07
        .byte   $07
        asl     $18
        rti

        asl     $96
        .byte   $9B
        sta     $9B9E,x
        php
        php
        .byte   $07
        .byte   $07
        brk
        .byte   $03
        .byte   $8F
        php
        .byte   $07
        .byte   $07
        asl     $60
        .byte   $82
        brk
        .byte   $03
        stx     $00,y
        adc     $7A9B,x
        .byte   $12
        jsr     L8A97
        brk
        .byte   $9B
        sta     $9B9E,x
        php
        php
        .byte   $07
        .byte   $07
        .byte   $03
        .byte   $92
        .byte   $92
        brk
        txa
        ror     a
        txa
        ror     a
        asl     $9701
        .byte   $4F
        asl     $C8
        .byte   $07
        asl     $00
        .byte   $03
        tax
        dey
        .byte   $83
        .byte   $83
        stx     $00
        .byte   $89
        ora     (L0065,x)
        brk
        ora     ($85,x)
        .byte   $04
        jsr     L2004
        php
        asl     $8018
        .byte   $07
        php
        .byte   $9E
        .byte   $7B
        .byte   $03
        .byte   $8B
        .byte   $63
        sta     $8063
        .byte   $63
        asl     $9701
        .byte   $9E
        .byte   $13
        plp
        .byte   $97
        .byte   $CB
        stx     $6A,y
        sty     $6A,x
        .byte   $92
        ror     a
        .byte   $80
        ror     a
        .byte   $8F
        ror     a
        sta     ($6A),y
        .byte   $92
        ror     a
        .byte   $80
        adc     $0F
        ora     ($97,x)
        .byte   $9C
        txa
        ror     $88
        adc     $86
        .byte   $63
        sta     $62
        .byte   $8B
        sty     a:$8D
        ldx     $9716
        eor     L0617
        iny
        php
        php
        ora     #$02
        .byte   $8F
        .byte   $92
        sta     $96,x
        sta     ($94),y
        brk
        .byte   $93
        ora     ($7A,x)
        brk
        ora     ($9A,x)
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $8F
        sta     $8A8B
        brk
        pla
        rts

        pla
        brk
        .byte   $89
        txa
        sta     ($0E),y
        .byte   $02
        .byte   $97
        sbc     ($8F),y
        sta     $97,y
        stx     $74,y
        brk
        .byte   $8B
        sta     $94,x
        stx     a:$04
        asl     $7D
        .byte   $8B
        .byte   $97
        brk
        .byte   $8B
        .byte   $6B
        brk
        .byte   $97
        .byte   $8B
        brk
        .byte   $97
        brk
        .byte   $8B
        brk
        .byte   $6B
        brk
        .byte   $97
        .byte   $12
        brk
        tya
        .byte   $3A
        .byte   $8F
        .byte   $9B
        brk
        .byte   $8F
        .byte   $6F
        brk
        .byte   $9B
        .byte   $8F
        brk
        .byte   $9B
        brk
        .byte   $8F
        brk
        .byte   $6F
        brk
        .byte   $9B
        asl     $9801
        asl     LFF06
        txs
        stx     L008E,y
        sty     $06,x
        iny
        brk
        .byte   $97
        tya
        sta     $BA00,y
        asl     $97,x
        .byte   $EF
        .byte   $17
        asl     $64
        .byte   $07
        php
        php
        ora     #$8A
        .byte   $02
        ldy     #$00
        txa
        adc     $6D
        ror     a
        ror     $8D
        ora     ($6D,x)
        brk
        ora     ($8D,x)
        .byte   $04
        jsr     L2004
        sta     $856A
        ror     a
        sta     $6A
        sta     $6C6C
        rts

        jmp     (L6C8D)

        jmp     (L6C60)

        sta     L0E6C
        .byte   $03
        tya
        .byte   $63
        .byte   $04
        jsr     L6D85
        txa
        adc     $6580
        txa
        adc     $050E
        tya
        .byte   $7B
        sta     $6D
        ror     a
        .byte   $80
        sta     L0065
        ror     a
        rts

        adc     $8A
        txa
        txa
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        asl     $98,x
        adc     ($17,x)
        brk
        tya
        tay
        sta     $9A83,y
        .byte   $93
        .byte   $9B
        and     #$05
        ora     ($33,x)
        .byte   $04
        jsr     LC806
        .byte   $07
        php
        php
        asl     L0109
        clc
        .byte   $80
        .byte   $04
        jsr     L0380
        adc     #$00
        .byte   $80
        brk
        pla
        .byte   $80
        brk
        .byte   $80
        ora     ($86,x)
        brk
        ora     ($86,x)
        .byte   $63
        brk
        ldy     #$0E
        ora     ($98,x)
        .byte   $B7
        .byte   $04
        plp
        asl     $64
        php
        php
        rol     $2F01
        .byte   $4F
        ora     ($8F,x)
        txa
        pla
        txa
        .byte   $63
        .byte   $80
        .byte   $63
        ror     $68
        adc     #$88
        ror     $88
        .byte   $63
        stx     $68
        ror     a
        .byte   $80
        adc     a:$80
        ora     ($8F,x)
        brk
        ora     ($8F,x)
        adc     $6A8F
        .byte   $89
        ora     ($68,x)
        brk
        ora     ($A8,x)
        brk
        rol     $2F01
        .byte   $4F
        ora     ($8F,x)
        txa
        pla
        txa
LD907:  .byte   $63
        .byte   $80
        .byte   $63
        adc     #$68
        ror     $88
        ora     ($69,x)
        brk
        ora     ($89,x)
        brk
        txa
        adc     L806F
        .byte   $72
        .byte   $80
        sta     $74,x
        .byte   $92
        .byte   $12
        plp
        sta     $012A,y
        .byte   $6F
        brk
        ora     ($CF,x)
        asl     $9801
        .byte   $CF
        asl     $C8
        brk
        .byte   $8F
        brk
        adc     L6D8F
        asl     $64
        .byte   $8F
        ora     ($74,x)
        brk
        ora     ($94,x)
        .byte   $04
        jsr     L0380
        adc     ($00),y
        .byte   $80
        brk
        adc     ($80),y
        .byte   $6F
        .byte   $80
        adc     ($80),y
        .byte   $8F
        ora     ($71,x)
        brk
        ora     ($B1,x)
        .byte   $12
        php
        sta     $6C,y
        .byte   $2F
        ora     ($30,x)
        bvc     LD959
        .byte   $70
LD959:  .byte   $6F
        sta     $8D6A
        adc     $6A80
        sta     L806F
        ora     ($6D,x)
        brk
        ora     ($AD,x)
        asl     $9901
        .byte   $3A
        brk
        txa
        adc     $708F
        .byte   $80
        .byte   $6F
        sta     L8075
        bvs     LD907
        adc     $018F
        adc     ($00),y
        ora     ($91,x)
        asl     $98,x
        .byte   $AB
        .byte   $17
        .byte   $04
        jsr     LC806
        .byte   $07
        php
        php
        asl     L0109
        clc
        rti

        .byte   $04
        jsr     L7E80
        brk
        .byte   $80
        brk
        adc     L8000,x
        brk
        .byte   $80
        brk
        ora     ($9B,x)
        brk
        ora     ($9B,x)
        ror     $00,x
        ldy     #$0E
        ora     ($99,x)
        .byte   $8F
        php
        ora     $8018
        asl     $96
        .byte   $03
        .byte   $AF
        .byte   $B2
        ora     ($94,x)
        brk
        ora     ($94,x)
        ora     ($75,x)
        brk
        ora     ($B5,x)
        .byte   $AF
        .byte   $B2
        ora     ($94,x)
        brk
        ora     ($94,x)
        ora     ($6E,x)
        brk
        ora     ($AE,x)
        .byte   $AF
        .byte   $B2
        ora     ($94,x)
        brk
        ora     ($94,x)
        ora     ($75,x)
        brk
        ora     ($B5,x)
        .byte   $AF
        lda     $01,x
        sty     $00,x
        ora     ($94,x)
        ora     ($6F,x)
        brk
        ora     ($AF,x)
        php
        php
        clc
        rti

        asl     $64
        brk
        and     #$01
        rol     a
        lsr     a
        txa
        ora     ($6A,x)
        rts

        .byte   $63
        .byte   $80
        .byte   $03
        ror     $80,x
        ror     $7B,x
        adc     $9D7E,x
        .byte   $7B
        sta     $8076,x
        ror     $80,x
        .byte   $7B
        .byte   $80
        .byte   $7B
        .byte   $80
        .byte   $7F
        .byte   $9E
        adc     $7B9E,x
        txs
        ora     ($79,x)
        brk
        ora     ($B9,x)
        brk
        .byte   $03
        and     #$01
        rol     a
        lsr     a
        txa
        .byte   $01
LDA15:  ror     a
        rts

        .byte   $63
        .byte   $80
        .byte   $03
        ror     $80,x
        ror     $7E,x
        adc     $9D7B,x
        ora     ($7E,x)
        brk
        ora     ($9E,x)
        brk
        .byte   $9B
        adc     $807E,x
        .byte   $03
        ror     a
        .byte   $80
        sta     $886C
        ora     ($6A,x)
        brk
        tax
        brk
        ora     ($8A,x)
        ora     ($6B,x)
        brk
        ora     ($8B,x)
        brk
        .byte   $80
        ror     $00
        .byte   $80
        brk
        ror     $80
        ror     $80
        ror     $60
        ror     $86
        ora     ($66,x)
        brk
        ora     ($A6,x)
        php
        ora     $9606
        clc
        .byte   $80
        sta     ($84,x)
        .byte   $87
        dey
        sty     $83
        sta     ($03,x)
        stx     $06,y
        .byte   $64
        php
        php
        clc
        rti

        brk
        .byte   $80
        .byte   $03
        ror     a
        brk
        .byte   $80
        brk
        ror     a
        .byte   $80
        ror     a
        .byte   $80
        txa
        ror     a
        .byte   $80
        ora     ($6A,x)
        brk
        ora     ($AA,x)
        .byte   $0C
        .byte   $02
        brk
        txa
        adc     $708F
        .byte   $80
        .byte   $6F
        sta     L8075
        bvs     LDA15
        adc     $0C8F
        brk
        ora     ($66,x)
        brk
        ora     ($86,x)
        asl     $99,x
        .byte   $83
        .byte   $17
        .byte   $04
        jsr     LC806
        php
        php
        ora     #$02
        .byte   $04
        jsr     L6D8F
        stx     L806F
        adc     L6F8E
        .byte   $80
        adc     L6F8E
        .byte   $12
        jsr     LB59A
        .byte   $92
        .byte   $73
        .byte   $92
        .byte   $73
        asl     $9A01
        .byte   $9B
        .byte   $93
        .byte   $72
        sta     ($70),y
        .byte   $04
        brk
        .byte   $8F
        .byte   $92
        sta     ($90),y
        .byte   $8F
        sty     $8E8D
        .byte   $8F
        sta     $96,x
        sta     $9698,y
        sta     $00,x
        stx     $7B,y
        .byte   $80
        .byte   $7B
        brk
        .byte   $8F
        sta     $94,x
        .byte   $92
        .byte   $8F
        sta     $928F
        sta     $94,x
        .byte   $12
        brk
        txs
        .byte   $E7
        sta     $92,x
        sta     ($90),y
        .byte   $8F
        asl     $9A01
        lda     $9500,y
        ora     ($97,x)
        brk
        ora     ($B7,x)
        brk
        rts

        ora     ($79,x)
        brk
        ora     ($99,x)
        .byte   $04
        brk
        dey
        sty     $0E,x
        .byte   $03
        txs
        sbc     $04,x
        brk
        txa
        stx     $0E,y
        .byte   $03
        txs
        sbc     a:$04,x
        stx     $92
        asl     $9B03
        ora     $01
        stx     $00,y
        ora     ($96,x)
        ora     ($74,x)
        brk
        sty     $00,x
        ora     ($94,x)
        ora     ($72,x)
        brk
        .byte   $B2
        brk
        ora     ($92,x)
        ora     ($74,x)
        brk
        ora     ($94,x)
        asl     $9A,x
        .byte   $93
        .byte   $17
        .byte   $04
        brk
        .byte   $07
        php
        php
        ora     #$04
        brk
        asl     $C8
        sta     L6406
        brk
        jmp     (L6C60)

        asl     $9B17
        .byte   $2F
        .byte   $04
        jsr     L6D85
        txa
        adc     $6A80
        sta     $2012
        .byte   $9B
        bvc     LDBB6
        asl     $9B06
        rol     $6501,x
        brk
        ora     ($85,x)
        sta     $00
        adc     $60
        ora     ($6F,x)
        brk
        ora     ($8F,x)
        .byte   $04
        jsr     L6D85
        txa
        adc     $6A80
        sta     $0E6A
        ora     $9B
        lsr     $606D,x
        ror     a
        pla
        rts

        adc     $6A80
        pla
        rts

        adc     $A000
        brk
        ror     a
        rts

        ora     ($6D,x)
        brk
        ora     ($8D,x)
        asl     $9B,x
        and     #$17
        brk
        .byte   $9B
        stx     $999C
        sta     $9E91,x
        .byte   $74
        ora     $01
        ldx     $04,y
        brk
        asl     $96
        .byte   $07
        php
        php
        php
        ora     #$01
        clc
        rti

        .byte   $04
        brk
        .byte   $80
        .byte   $03
        .byte   $72
        rts

        ror     $02,x
        .byte   $80
        .byte   $72
        .byte   $72
        rts

        ror     $A0,x
        .byte   $02
        stx     $8F02
        bcc     LDC22
        rts

        ror     $6A60
        .byte   $02
LDBB6:  dey
        .byte   $12
        php
        .byte   $9B
        cmp     $80,x
        .byte   $72
        rts

        ror     $02,x
        .byte   $80
        .byte   $72
        .byte   $72
        rts

        ror     $A0,x
        adc     ($60),y
        .byte   $6F
        rts

        ror     L606F
        ora     ($71,x)
        ora     ($D1,x)
        asl     $9B01
        sta     $7680,x
        rts

        .byte   $72
        .byte   $02
        .byte   $80
        .byte   $74
        .byte   $74
        rts

        adc     ($A0),y
        .byte   $02
        .byte   $8F
        .byte   $02
        sta     ($8F),y
        dec     a:$04
        clc
        rti

        .byte   $80
        .byte   $03
        .byte   $8B
        sta     L6A8B
        rts

        pla
        ora     ($6A,x)
        ora     ($AA,x)
        .byte   $AF
        .byte   $02
        sta     ($08),y
        .byte   $04
        .byte   $72
        rts

        php
        php
        .byte   $34
        .byte   $02
        ora     ($55,x)
        ora     ($95,x)
        php
        .byte   $04
        asl     $64
        .byte   $74
        rts

        .byte   $6F
        rts

        asl     $96
        php
        php
        .byte   $80
        .byte   $8B
        sta     L6A8B
        rts

        pla
        ora     ($6A,x)
        ora     ($AA,x)
        .byte   $72
        rts

        .byte   $72
        rts

        adc     ($71),y
LDC22:  rts

        .byte   $72
        rts

        clc
        .byte   $80
        .byte   $12
        php
        .byte   $9C
        sec
        .byte   $34
        .byte   $02
        eor     $74,x
        .byte   $72
        .byte   $74
        .byte   $72
        .byte   $6F
        adc     $010E
        .byte   $9B
        inc     $09
        .byte   $02
        .byte   $63
        ror     $68
        adc     #$6A
        adc     $046F
        php
        .byte   $72
        rts

        adc     ($60),y
        .byte   $6F
        adc     ($60),y
        ora     ($72,x)
        ora     ($D2,x)
        adc     ($60),y
        .byte   $6F
        rts

        adc     L606F
        ora     ($71,x)
        ora     ($D1,x)
        clc
        rti

        .byte   $12
        php
        .byte   $9C
        .byte   $7B
        .byte   $80
        ror     $60
        ror     a
        .byte   $02
        .byte   $80
        ror     $66
        rts

        ror     a
        ldy     #$66
        rts

        ror     $60
        ror     a
        rts

        ror     $60
        ror     $66
        rts

        ror     a
        ldy     #$0E
        ora     ($9C,x)
        eor     ($80,x)
        .byte   $6F
        rts

        .byte   $72
        rts

        .byte   $74
        rts

        .byte   $02
        sta     $02,x
        sty     $92,x
        .byte   $74
        rts

        .byte   $72
        rts

        .byte   $6F
        adc     $6F60
        .byte   $03
        .byte   $74
        rts

        .byte   $02
        .byte   $03
        .byte   $AB
        asl     $9B,x
LDC97:  sta     ($17),y
        .byte   $04
        brk
        asl     $96
        .byte   $07
        php
        php
        php
        ora     #$01
        .byte   $0C
        brk
        .byte   $04
        brk
        .byte   $80
        .byte   $03
        .byte   $6F
        rts

        .byte   $72
        .byte   $02
        .byte   $80
        .byte   $6F
        .byte   $6F
        rts

        .byte   $72
        ldy     #$12
        php
        .byte   $9C
        .byte   $C3
        dey
        sta     $86
        .byte   $87
        pla
        .byte   $02
        .byte   $80
        ldy     #$0E
        ora     ($9C,x)
        lda     $88
        stx     L0065
        .byte   $83
        .byte   $82
        .byte   $03
        stx     $74,y
        sta     (L008E),y
        .byte   $80
        .byte   $03
        .byte   $6F
        rts

        .byte   $72
        .byte   $02
        .byte   $80
        .byte   $6F
        .byte   $6F
        rts

        .byte   $72
        ldy     #$12
        php
        sta     $8831,x
        sta     $86
        .byte   $87
        pla
        .byte   $02
        .byte   $80
        ldy     #$80
        .byte   $72
        rts

        .byte   $6F
        .byte   $02
        .byte   $80
        adc     ($71),y
        rts

        adc     $02A0
        .byte   $8B
        .byte   $02
        sta     LCA8B
        .byte   $04
        brk
        .byte   $74
        .byte   $7B
        adc     $607B,y
        adc     $7A60,y
        rts

        .byte   $7A
        rts

        .byte   $7A
        .byte   $7A
        .byte   $03
        pla
        ror     L0065
        tax
        .byte   $02
        .byte   $8B
        php
        .byte   $04
        adc     $08C0
        php
        .byte   $03
        .byte   $74
        .byte   $7B
        adc     $607B,y
        adc     $7A60,y
        rts

        .byte   $7A
        rts

        .byte   $7A
        .byte   $7A
        .byte   $03
        pla
        ror     L0065
        .byte   $6F
        rts

        .byte   $6F
        rts

        adc     $606D
        .byte   $6F
        cpy     #$0E
        ora     ($9C,x)
        inc     $04,x
        php
        .byte   $6B
        .byte   $6B
        .byte   $72
        .byte   $6B
        .byte   $6B
        .byte   $72
        rts

        .byte   $6B
        .byte   $72
        rts

        .byte   $6B
        adc     ($60),y
        .byte   $6B
        .byte   $6F
        .byte   $6B
        adc     $746D
        adc     $746D
        rts

        adc     $6074
        adc     $6072
        adc     $6D71
        .byte   $12
        php
        sta     $8073,x
        .byte   $6F
        rts

LDD5A:  .byte   $72
        .byte   $02
        .byte   $80
        .byte   $6F
        .byte   $6F
        rts

        .byte   $72
        ldy     #$6F
        rts

        .byte   $6F
        rts

        .byte   $72
        rts

        .byte   $6F
        rts

        .byte   $6F
        .byte   $6F
        rts

        .byte   $72
        ldy     #$0E
        ora     ($9D,x)
        and     (L000C),y
        .byte   $02
        .byte   $80
        .byte   $6F
        rts

        .byte   $72
        rts

        .byte   $74
        rts

        .byte   $02
        sta     $02,x
        sty     $92,x
        .byte   $74
        rts

        .byte   $72
LDD84:  rts

        .byte   $6F
        adc     $6F60
        pla
        rts

        .byte   $02
        ldy     $9C16
        sta     $0417,y
        brk
        asl     $C8
        php
        php
        ora     #$02
        .byte   $04
        brk
        .byte   $7B
        rts

        .byte   $7B
        rts

        ror     $607B,x
        adc     $7960,y
        rts

        adc     $607D,y
        adc     $7660,y
        rts

        ror     $60,x
        adc     $76,x
        rts

        .byte   $12
LDDB3:  brk
        sta     $76C1,x
        rts

        adc     ($60),y
        stx     $75,y
        stx     $0E,y
        ora     ($9D,x)
        sta     $6076,y
        sei
        rts

        ora     ($7A,x)
        ora     ($BA,x)
        .byte   $04
        brk
        .byte   $7B
        rts

        .byte   $7B
        rts

        ror     $607B,x
        adc     $7960,y
        rts

        adc     $607D,y
        adc     $1260,y
        brk
        sta     $76F1,x
        rts

        ror     $60,x
        adc     $76,x
        rts

        ror     $60,x
        adc     ($60),y
        stx     $75,y
        stx     $0E,y
        ora     ($9D,x)
        cmp     #$02
        sty     $02,x
        sty     $97,x
        .byte   $02
        stx     $02,y
        .byte   $97
        stx     $04,y
        brk
        .byte   $74
        rts

        .byte   $6B
        rts

        .byte   $6F
        .byte   $74
        rts

        ror     $60,x
        adc     ($60),y
        .byte   $74
        ror     $77,x
        ror     $74,x
        .byte   $B7
        .byte   $02
        sta     LC07B,y
        asl     $9D03
        .byte   $FB
        .byte   $04
        brk
        .byte   $77
        rts

        .byte   $6B
        .byte   $72
        rts

        .byte   $77
        rts

        .byte   $77
        rts

        .byte   $6B
        rts

        .byte   $72
        .byte   $77
        rts

        .byte   $77
        rts

        adc     $6D60,y
        .byte   $74
        rts

        adc     $7960,y
        rts

        adc     $7460
        adc     $7960,y
        rts

        .byte   $12
        brk
        .byte   $9E
        adc     ($6F,x)
        .byte   $7B
        ror     $797B,x
        ror     $79,x
        .byte   $7B
        rts

        ror     $0360,x
        pla
        rts

        adc     #$68
        ror     $63
        .byte   $63
        rts

        adc     #$60
        pla
        rts

        ror     $60
        .byte   $63
        rts

        adc     ($63,x)
        ror     $63
        adc     ($0E,x)
        ora     ($9E,x)
        asl     $BB,x
        lda     $76D7,y
        rts

        ror     $60,x
        ror     $76,x
        rts

        .byte   $7B
        pla
        rts

        .byte   $02
        ldy     $16,x
        sta     $1791,x
        .byte   $04
        brk
        asl     $64
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     $8D
        txa
        sta     L6F85
        txa
        .byte   $6F
        sta     $0E
        asl     $9E
        .byte   $7C
        .byte   $02
        sta     $8D02
        sta     $6A6A
        rts

        ror     a
        rts

        ror     a
        ror     a
        ror     a
        .byte   $04
        brk
        sta     $8D
        txa
        sta     L6F85
        txa
        .byte   $6F
        sta     $AD
        .byte   $02
        sta     LC06D
        asl     $9E03
        tya
        .byte   $04
        brk
        sta     $8D
        txa
        sta     L6F85
        txa
        .byte   $6F
        sta     $0E
        ora     $9E
        ldy     $ADAD
        ror     a
        ror     a
        ror     a
        ror     a
        rts

        adc     $666A
        ror     a
        adc     $6A
        adc     $6A
        ror     a
        rts

        ror     a
        adc     L0065
        .byte   $02
        lda     $9E16
        .byte   $74
        .byte   $17
        brk
        .byte   $9E
        dec     $B99F,x
        ldy     #$70
        ldy     #$EF
        ora     $01
        .byte   $80
        asl     a
        .byte   $02
        .byte   $04
        jsr     L2004
        asl     $64
        .byte   $07
        php
        php
        .byte   $07
        ora     #$02
        clc
        rti

        .byte   $80
        ora     ($7D,x)
        brk
        ora     ($9D,x)
        .byte   $9B
        sta     $9B,y
        sta     $7601,y
        brk
        stx     $00,y
        ora     ($96,x)
        ror     $9B,x
        adc     $799B,y
        .byte   $9B
        adc     $1280,x
        jsr     L3F9F
        .byte   $7B
        .byte   $80
        adc     $0196,y
        adc     L0100,y
        sta     $9600,y
        sei
        brk
        sta     $9999,y
        sta     $98,y
        .byte   $9B
        sei
        .byte   $80
        ora     ($74,x)
        brk
        ora     ($94,x)
        stx     $96,y
        brk
        sty     $74,x
        .byte   $80
        ror     $80,x
        php
        php
        ror     $99,x
        .byte   $7B
        .byte   $9C
        .byte   $7B
        sta     $0E76,y
        ora     ($9E,x)
        sbc     $03
        pla
        .byte   $80
        adc     $83
        ora     ($03,x)
        ror     $00,x
        ora     ($96,x)
        brk
        stx     $78,y
        brk
        sta     $9999,y
        .byte   $9B
        sta     $9B00,x
        adc     L0180,x
        .byte   $03
        pla
        brk
        ora     ($88,x)
        txa
        txa
        brk
        dey
        pla
        .byte   $80
        ror     a
        .byte   $80
        php
        php
        .byte   $03
        ror     $79,x
        ror     $79,x
        .byte   $7B
        adc     $7D7B,y
        .byte   $7B
        adc     $0804,x
        php
        .byte   $07
        .byte   $04
        php
        sta     $8A8C
        brk
        dey
        ora     ($6A,x)
        brk
        ora     ($CA,x)
        asl     $9F01
        ror     $8D,x
        sty     $8A00
        brk
        dey
        sta     $6D00
        brk
        .byte   $8C
        txa
LDF92:  dey
        txa
        txa
        brk
        dey
        pla
        .byte   $80
        ror     a
        .byte   $80
        php
        php
        .byte   $13
        plp
        .byte   $9F
        ldx     $8D6A
        .byte   $6F
        bcc     LE015
        sta     $086A
        .byte   $07
        .byte   $0F
        ora     ($9F,x)
        .byte   $72
        adc     ($8F),y
        adc     L6D8F
        txa
        pla
        asl     $9E,x
        .byte   $E3
        .byte   $17
        .byte   $04
        plp
        .byte   $04
        plp
        asl     $64
        .byte   $07
        ora     #$08
        asl     L0109
        clc
        .byte   $80
        .byte   $0C
        brk
        dey
        brk
        txa
        txa
        txa
        brk
        ror     a
        txa
        pla
        txa
        ora     ($6D,x)
        brk
        ora     ($AD,x)
        brk
        .byte   $83
        brk
        dey
        dey
        dey
        brk
        .byte   $67
        brk
        txa
        brk
        .byte   $87
        ora     ($63,x)
        brk
        ora     ($A3,x)
        ora     #$02
        txa
        sta     $88
        brk
        sta     $00
        txa
        brk
        ror     a
        brk
        sta     $88
        sta     $08
        php
        .byte   $07
        php
        clc
        rti

        sta     a:$8D
        sty     L806C
        adc     $8018
        .byte   $12
        plp
        ldy     #$1A
        .byte   $80
        .byte   $0C
        inc     $7603,x
        sta     $9C7B,y
        .byte   $7B
        .byte   $99
LE015:  ror     $0E,x
        ora     ($9F,x)
        .byte   $BB
        .byte   $80
        .byte   $65
LE01C:  pla
        adc     $68
        ror     a
        pla
        ror     a
        adc     $6D6A
        .byte   $04
        brk
        .byte   $0C
        brk
        .byte   $04
        brk
        stx     $91,y
        sty     $00,x
        sta     ($00),y
        sta     $7900,y
        brk
        tya
        stx     $94,y
        asl     $A001
        and     #$96
        sta     ($94),y
        brk
        sta     ($00),y
        stx     $00,y
        ror     $00,x
        sta     ($94),y
        sta     ($03),y
        sta     a:$8D
        sty     L806C
        adc     $0C80
        .byte   $02
        .byte   $13
        plp
        ldy     #$64
        .byte   $03
        ror     $99,x
        .byte   $7B
        .byte   $9C
        .byte   $7B
        sta     $0F76,y
        ora     ($A0,x)
        and     L0065
        .byte   $83
        adc     ($83,x)
        adc     ($03,x)
        stx     $74,y
        asl     $9F,x
        lda     $0417,y
        brk
        asl     $C8
        php
        php
        ora     #$02
        .byte   $04
        brk
        stx     $96,y
        brk
        .byte   $80
        ror     $74,x
        .byte   $80
        ror     $80,x
        stx     $76,y
        brk
        ldy     #$94
        sty     $00,x
        .byte   $80
        ror     $94,x
        ora     ($73,x)
        brk
        ora     ($93,x)
        brk
        .byte   $93
        .byte   $73
        brk
        ldy     #$92
        .byte   $92
        stx     $92,y
        brk
        .byte   $74
        ldy     #$74
        sta     $9678,y
        .byte   $74
        brk
        stx     $96,y
        brk
        sty     $74,x
        .byte   $80
        ror     $00,x
        cpy     #$0E
        ora     ($A0,x)
        sei
        .byte   $04
        rti

        .byte   $AF
        .byte   $8F
        brk
        ora     ($8F,x)
        .byte   $6F
        .byte   $6F
        .byte   $80
        .byte   $6F
        ldy     #$01
        .byte   $6F
        brk
        ora     ($8F,x)
        ora     ($B1,x)
        sta     ($00),y
        ora     ($91,x)
        adc     ($71),y
        .byte   $80
        adc     ($A0),y
        ora     ($71,x)
        brk
        ora     ($91,x)
        ora     ($B2,x)
        brk
        ora     ($92,x)
        adc     ($92),y
        ora     ($74,x)
        brk
        ora     ($D4,x)
        stx     $96,y
        brk
        sty     $74,x
        .byte   $80
        ror     $00,x
        cpy     #$0E
        ora     ($A0,x)
        lda     ($16),y
        ldy     #$70
        .byte   $17
        .byte   $04
        jsr     L6406
        .byte   $07
        php
        php
        ora     #$04
        jsr     L2004
        sta     $6F
        sta     $8A6F
        .byte   $6F
        sta     $8500
        brk
        adc     $85
        adc     $6F8A
        sta     $0E6F
        .byte   $02
        .byte   $A0
LE10F:  sbc     $8A00,y
        txa
        brk
        sta     $866A
        ror     a
        .byte   $80
        adc     $85
        .byte   $6F
        sta     $8A6D
        adc     $010F
        ldy     #$F7
        .byte   $04
        jsr     L2004
        sta     $6F
        sta     $8A6F
        .byte   $6F
        sta     $8500
        brk
        adc     $85
        adc     $6F8A
        sta     $0E6F
        .byte   $02
        lda     ($26,x)
        brk
        txa
        txa
        brk
        sta     $866A
        ror     a
        .byte   $80
        adc     $85
        .byte   $6F
        sta     $8A6D
        adc     $010F
        lda     ($24,x)
        asl     $A0,x
        .byte   $EF
        .byte   $17
        brk
        lda     ($5E,x)
        ldx     #$43
        ldx     #$FA
        .byte   $A3
        ror     L0105,x
        jmp     L2804

        asl     $C8
        .byte   $07
        .byte   $07
        php
        .byte   $07
        ora     #$01
        clc
        rti

        .byte   $04
        plp
        .byte   $04
        plp
        .byte   $93
        .byte   $73
        .byte   $80
        .byte   $6F
        .byte   $80
        brk
        .byte   $80
        brk
        adc     ($93),y
        adc     ($8F),y
        .byte   $12
        plp
        lda     ($88,x)
        adc     ($00),y
        ldy     #$0E
        ora     ($A1,x)
        .byte   $6F
        brk
        ora     (L008E,x)
        .byte   $13
        pha
        lda     ($97,x)
        ora     (L008E,x)
        brk
        rts

        .byte   $0F
        ora     ($A1,x)
        adc     L2804
        .byte   $07
        php
        jmp     (L718F)

        .byte   $07
        .byte   $07
        .byte   $92
        adc     ($8F),y
        brk
        sty     $0808
        clc
        .byte   $80
        .byte   $07
        php
        brk
        sei
        stx     $73,y
        stx     $78,y
        .byte   $80
        sei
        .byte   $80
        .byte   $07
        .byte   $07
        clc
        rti

        php
        .byte   $07
        .byte   $12
        plp
        lda     ($E0,x)
        jmp     (L718F)

        php
        php
        .byte   $07
        php
        eor     ($01),y
        .byte   $52
        ora     ($92,x)
        eor     ($01),y
        .byte   $52
        ora     ($92,x)
        php
        .byte   $07
        .byte   $07
        .byte   $07
        sta     ($6F),y
        sty     $8C6A
        .byte   $6F
        sty     $8B00
        asl     $A101
        .byte   $97
        jmp     (L7391)

        stx     $73,y
        .byte   $8F
        ror     $6F91
        sty     $8C6A
        .byte   $6F
        stx     $8C00
        brk
        ror     a:$8F
        sta     ($00),y
        .byte   $6F
        stx     $9300
        .byte   $04
        plp
        .byte   $72
        .byte   $93
        ora     ($78,x)
LE200:  .byte   $02
        brk
        clv
        php
        ora     ($B8),y
        brk
        ora     ($98,x)
        php
        .byte   $07
        .byte   $6F
        .byte   $92
        adc     ($8F),y
        .byte   $12
        plp
        ldx     #$25
        ora     ($6C,x)
        .byte   $02
        brk
        ldy     $1108
        .byte   $02
        ldy     L0100
        sty     $0708
        asl     $A101
        .byte   $FA
        php
        php
        clc
        .byte   $80
        .byte   $07
        php
        brk
        sty     $6700
        txa
        brk
        sty     $6700
        txa
        brk
        sty     $7300
        stx     $00,y
        tya
        .byte   $80
        brk
        rts

        asl     $A1,x
        adc     ($17,x)
        .byte   $04
        plp
        asl     $C8
        .byte   $07
        php
        php
        php
        ora     #$01
        clc
        rti

        .byte   $04
        plp
        .byte   $04
        plp
        .byte   $8F
        .byte   $6F
        .byte   $80
        jmp     (L8000)

        brk
        .byte   $80
        ror     $6E8F
        sty     $2812
        ldx     #$6A
        ror     $A000
        asl     $A201
        eor     ($00),y
        ora     ($8B,x)
        .byte   $13
        pha
        ldx     #$79
        ora     ($8B,x)
        brk
        rts

        .byte   $0F
        ora     ($A2,x)
        .byte   $4F
        ora     ($80,x)
        brk
        rts

        .byte   $04
        plp
        asl     $64
        clc
        .byte   $80
        sty     $8A67
        jmp     (L6780)

        txa
        jmp     (L6F80)

        stx     L806C
        clc
        brk
        .byte   $12
        plp
        ldx     #$AE
        .byte   $67
        txa
        jmp     (L8D00)

        sta     $8C00
        ror     a
        .byte   $87
        adc     $87
        ror     a
        .byte   $87
        brk
        .byte   $87
        brk
        rts

        brk
        .byte   $80
        asl     $A201
        adc     L8000,x
        brk
        rts

        clc
        rti

        brk
        .byte   $87
        dey
        .byte   $82
        .byte   $83
        sty     $868C
        stx     $87
        .byte   $87
        sta     $87
        .byte   $04
        plp
        .byte   $07
        ora     #$93
        jmp     (L6C8A)

        .byte   $80
        .byte   $73
        sty     $8C6A
        .byte   $73
        sty     $886A
        ror     $128F
        plp
        ldx     #$DE
        ora     ($73,x)
        asl     $A202
        cmp     ($07,x)
        php
        clc
        .byte   $80
        brk
        .byte   $93
        brk
        jmp     (L008E)

        .byte   $8F
        brk
        jmp     (L008E)

        .byte   $8F
        brk
        jmp     (L008E)

        .byte   $8F
        .byte   $80
        brk
        rts

        asl     $A2,x
        .byte   $43
        .byte   $17
        asl     $C8
        php
        php
        .byte   $04
        brk
        .byte   $09
LE301:  .byte   $02
        .byte   $04
        brk
        tya
        .byte   $93
        stx     $97,y
        tya
        brk
        stx     $12,y
        jsr     L19A3
        brk
        stx     $6F00
        sta     ($76),y
        asl     $A303
        .byte   $02
        brk
        .byte   $B3
        brk
        rts

        .byte   $04
        jsr     L6078
        sei
        brk
        .byte   $9B
        txs
        sta     $9800,y
        .byte   $73
        stx     $78,y
        brk
        .byte   $80
        stx     $B1,y
        .byte   $B3
        sty     $00,x
        sty     $12,x
        jsr     L43A3
        brk
        ora     ($93,x)
        brk
        ora     ($73,x)
        brk
        .byte   $80
        asl     $A301
        ora     L0100,x
        sta     $00,x
        ora     ($75,x)
        sta     $00,x
        ora     ($96,x)
        brk
        ora     ($76,x)
        stx     $00,y
        ora     ($97,x)
        brk
        ora     ($77,x)
        .byte   $97
        .byte   $04
        brk
        tya
        brk
        sei
        brk
        stx     $94,y
        .byte   $93
        sta     ($93),y
        sty     $00,x
        stx     $0E,y
        .byte   $02
        .byte   $A3
        cli
        brk
        tya
        .byte   $04
        jsr     L9673
        brk
        tya
        asl     $A302
        jmp     (L6000)

        brk
        .byte   $80
        asl     $A2,x
        inc     $0417,x
        brk
        asl     $96
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     L6C00
        rts

        jmp     (L0D0E)

        .byte   $A3
        stx     $6F
        jmp     (L6568)

        rts

        ror     a
        jmp     (L6C60)

        sta     $046C
        brk
        sta     L6C00
        rts

        jmp     (L0D0E)

        .byte   $A3
        .byte   $9C
        .byte   $6F
        rts

        jmp     (L6588)

        .byte   $80
        adc     $6A
        rts

        .byte   $6F
        .byte   $80
        jmp     (L6068)

        adc     $80
        adc     $6A
        .byte   $80
        .byte   $04
        brk
        sta     L6C00
        rts

        jmp     (L0B0E)

        .byte   $A3
        tsx
        sta     $866A
        brk
        txa
        .byte   $04
        jsr     L8C6F
        pla
        .byte   $80
        asl     $A301
        dex
        rts

        brk
        .byte   $80
        asl     $A3,x
        ror     a:$17,x
        .byte   $A3
        cpx     $A5
        asl     a
        ldx     $03
        ldx     $BF
        ora     $01
        eor     $06,x
        .byte   $64
        .byte   $07
        php
        .byte   $04
        php
        php
        asl     a
        ora     #$01
        clc
        rti

        txa
        txa
        sty     $8D8C
        brk
        sta     $2812
        ldy     $09
        adc     #$80
        php
        php
        adc     ($8F),y
        adc     $010E
        .byte   $A3
        .byte   $EB
        .byte   $6F
        .byte   $80
        php
        php
        ror     $678B
        php
        asl     a
        brk
        sty     $8E8C
        stx     a:$8F
        .byte   $8F
        asl     $96
        ora     ($71,x)
        brk
        ora     ($B1,x)
        asl     $64
        .byte   $92
        .byte   $92
        brk
        .byte   $92
        .byte   $72
        .byte   $80
        .byte   $73
        .byte   $80
        php
        php
        .byte   $67
        .byte   $6B
        ror     $9671
        adc     $94,x
        .byte   $73
        .byte   $04
        jsr     L2004
        php
        php
        .byte   $80
        .byte   $03
        .byte   $6F
        stx     $8F6C
        jmp     (L6780)

        adc     #$80
        .byte   $89
        brk
        .byte   $8B
        brk
        .byte   $67
        .byte   $8B
        ror     $6E8F
        sty     $8E6F
        jmp     (L6F8E)

        adc     ($80),y
        sta     ($12),y
        plp
        ldy     $8A
        brk
        .byte   $93
        brk
        adc     ($8F),y
        ror     L6C80
        .byte   $8F
        adc     ($92),y
        adc     ($8F),y
        jmp     (L806F)

        .byte   $8F
        ora     ($6C,x)
        brk
        ora     ($AC,x)
        php
        asl     a
        brk
        stx     $6E6E
        rts

        ror     $6E80
        .byte   $80
        ror     $806E
        stx     $6D01
        brk
        ora     ($AD,x)
        asl     $A401
        .byte   $37
        ora     ($73,x)
        brk
        ora     ($B3,x)
        brk
        .byte   $80
        sei
        .byte   $92
        adc     ($98),y
        .byte   $72
        .byte   $80
        sei
        .byte   $92
        adc     ($98),y
        .byte   $72
        .byte   $80
        .byte   $6F
        sta     ($72),y
        php
        asl     a
        brk
        .byte   $93
        .byte   $93
        brk
        .byte   $93
        ror     $94,x
        .byte   $73
        .byte   $80
        .byte   $93
        sty     $95,x
        stx     $97,y
        .byte   $04
        jsr     L2004
        php
        php
        ora     #$02
        .byte   $80
        .byte   $03
        .byte   $6F
        ora     #$01
        tya
        ror     $93,x
        adc     ($8F),y
        jmp     (L2813)

        ldy     $E1
        .byte   $6F
        .byte   $80
        .byte   $8F
        .byte   $12
        plp
        ldy     $D7
        ora     ($6E,x)
        brk
        ora     ($AE,x)
        asl     $A401
        .byte   $B2
        brk
        sta     ($00),y
        .byte   $6F
        sty     $0F6C
        ora     ($A4,x)
        bcs     LE533
        ora     ($52,x)
        ora     ($92,x)
        eor     ($01),y
        .byte   $52
        ora     ($92,x)
        sta     ($6F),y
        sty     $8C6A
        .byte   $6F
        sty     $8C00
        brk
        .byte   $6F
        sty     $8C00
        brk
        .byte   $6B
        ror     $7471
        ora     #$02
        stx     L0109
        sei
        .byte   $97
        .byte   $73
        asl     $A4,x
        and     $17,x
        .byte   $07
        php
        php
        asl     a
        ora     #$01
        asl     $64
        clc
        rti

        sta     $9B99,y
        .byte   $9B
        sta     $9D00,x
        adc     $A000,y
        sta     $9D9D,x
LE521:  .byte   $9D
        .byte   $9D
LE523:  brk
        sta     a:$7D,x
        ldy     #$9B
        .byte   $9B
        sta     $9F9D,x
        brk
        .byte   $9F
        asl     $96
        ora     ($03,x)
LE533:  jmp     (L0100)

        ldy     L6406
        sty     a:$8C
        sty     L806C
        .byte   $6B
        brk
        cpy     #$04
        jsr     L2004
        .byte   $04
        jsr     L000C
        php
        php
        sei
        .byte   $80
        stx     $78,y
        .byte   $80
        sei
        stx     $78,y
        .byte   $80
        sei
        stx     $78,y
        txs
        .byte   $77
        sta     ($73),y
        asl     $A501
        lsr     $13
        jsr     L8FA5
        .byte   $80
        .byte   $03
        pla
        stx     L0065
        brk
        .byte   $A3
        brk
        stx     L0065
        stx     L0065
        stx     $01
        .byte   $03
        adc     $00,x
        ora     ($95,x)
        php
        asl     a
        brk
        .byte   $03
        sty     $8C6C
        .byte   $6B
        .byte   $80
        .byte   $6B
        .byte   $80
        .byte   $6B
        ror     a
        .byte   $80
        txa
        ora     ($69,x)
        brk
        ora     ($A9,x)
        .byte   $0F
        ora     ($A5,x)
        .byte   $44
        .byte   $04
        plp
        dey
        adc     #$88
        .byte   $67
        stx     $63
        stx     $67
        asl     $A501
        .byte   $8F
        php
        asl     a
        bvs     LE521
        bvs     LE523
        bcc     LE618
        sta     ($70),y
        .byte   $80
        php
        php
        stx     $908F
        sta     ($92),y
        txa
        jmp     (L6C80)

        .byte   $80
        jmp     (L6880)

        jmp     (L8C80)

        brk
        .byte   $8B
        clc
        .byte   $80
        brk
        .byte   $73
        stx     $78,y
        clc
        rti

        txa
        jmp     (L6C80)

        .byte   $80
        jmp     (L6880)

        sta     $67
        .byte   $80
        .byte   $67
        .byte   $82
        .byte   $03
        .byte   $77
        .byte   $80
        .byte   $7F
        .byte   $03
        txa
        jmp     (L6C80)

        .byte   $80
        jmp     (L6880)

        .byte   $83
        .byte   $03
        sei
        txs
        .byte   $7B
        txs
        .byte   $7F
        .byte   $9F
        .byte   $7F
        ora     ($9B,x)
        brk
        ora     ($9B,x)
        lda     $7E00,x
        .byte   $80
        .byte   $0C
        ora     ($03,x)
        .byte   $6B
        ror     $7471
        ora     #$02
        stx     L0109
        sei
        .byte   $97
        .byte   $73
        asl     $A5,x
        .byte   $42
        .byte   $17
        asl     $64
        php
        php
        ora     #$02
        stx     $96,y
        sty     $94,x
        .byte   $92
        asl     $C8
        brk
        .byte   $92
        adc     ($00),y
        ldy     #$06
        .byte   $64
        .byte   $96
LE618:  stx     $95,y
        sta     $94,x
        asl     $C8
        brk
        sty     $73,x
        brk
        ldy     #$06
        .byte   $64
        tya
        tya
        .byte   $97
        .byte   $97
        stx     $06,y
        stx     $00,y
        stx     $01,y
        adc     $00,x
        ora     ($B5,x)
        asl     $64
        sty     $94,x
        asl     $C8
        brk
        sty     $74,x
        .byte   $80
        .byte   $73
        brk
        cpy     #$04
        brk
        .byte   $04
        brk
        asl     $96
        .byte   $04
        brk
        sty     $8C98
        tya
        sta     $91
        .byte   $87
        .byte   $93
        asl     $A601
        lsr     $13
        brk
        ldx     $79
        asl     $C8
        sty     $96,x
        .byte   $97
        tya
        .byte   $9E
        sta     $989B,x
        asl     $96
        brk
        .byte   $9E
        ror     $7D9E,x
        .byte   $80
        adc     $7D80,x
        .byte   $7C
        .byte   $80
        .byte   $9C
        ora     ($7B,x)
        brk
        ora     ($BB,x)
        .byte   $0F
        ora     ($A6,x)
        .byte   $42
        .byte   $04
        brk
        dey
        sty     $0E,x
        .byte   $03
        ldx     $79
        .byte   $93
        .byte   $93
        brk
        .byte   $93
        ror     $94,x
        .byte   $73
        .byte   $80
        .byte   $93
        sty     $95,x
        stx     $97,y
        brk
        sty     $8A98
        stx     $06,y
        iny
        brk
        .byte   $74
        .byte   $80
        sty     $01,x
        .byte   $73
        brk
        ora     ($B3,x)
        .byte   $04
        brk
        asl     $96
        sty     $8A98
        stx     $88,y
        sty     $87,x
        .byte   $93
        asl     $A601
        .byte   $9E
        asl     $C8
        ora     ($91,x)
        brk
        ora     ($91,x)
        brk
        .byte   $B3
        brk
        .byte   $74
        brk
        cpy     #$16
        ldx     L0040
        .byte   $17
        asl     $64
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     $8A
        brk
        sta     L0065
        ror     a
        .byte   $80
        brk
        sta     $00
        txa
        adc     $80
        adc     $00
        txa
        asl     $A602
        cmp     $8A
        .byte   $80
        brk
        .byte   $80
        adc     $668A
        brk
        ldy     #$00
        .byte   $80
        jmp     (LC806)

        brk
        sta     L2004
        .byte   $04
        jsr     L2004
        asl     $64
        sta     $6D
        ror     a
        rts

        adc     $6585
        ror     a
        rts

        adc     $8500
        brk
        txa
        adc     $80
        adc     $6A
        rts

        adc     $020E
        ldx     $EF
        .byte   $13
        jsr     L26A7
        txa
        ror     a
        txa
        ror     a
        sta     $6A
        sta     $6A
        ror     a
        .byte   $80
        adc     $666A
        sta     $01
        adc     L0100
        sta     $010F
        ldx     $ED
        brk
        txa
        txa
        brk
        txa
        adc     $668A
        .byte   $80
        sta     $8D8D
        sta     $858D
        adc     $606A
        adc     $6585
        ror     a
        rts

        adc     $6A6D
        ror     $8A
        ora     ($6D,x)
        brk
        ora     ($AD,x)
        .byte   $04
        jsr     L6D85
        ror     a
        rts

        adc     $6585
        ror     a
        rts

        adc     $8500
        brk
        txa
        adc     $80
        adc     $6A
        rts

        adc     $010E
        .byte   $A7
        .byte   $47
        sta     $6C
        dey
        adc     $80
        jmp     (L6588)

        brk
        cpy     #$16
        ldx     $EB
        .byte   $17
        brk
        .byte   $A7
        sei
        tay
        .byte   $5B
        lda     #$2C
        lda     #$B2
        ora     $01
        .byte   $5F
        asl     $64
        .byte   $07
        ora     #$08
        asl     a
        clc
        rti

        ora     #$01
        brk
        .byte   $5F
        .byte   $03
        pha
        .byte   $80
        stx     L0065
        stx     $68
        txa
        adc     $708F
        .byte   $8F
        adc     $018F
        adc     ($00),y
        ora     ($91,x)
        .byte   $04
        brk
        ora     #$02
        php
        asl     a
        asl     $64
        .byte   $04
        brk
        sty     $96,x
        lda     $9400,y
        ror     $80,x
        ora     ($79,x)
        brk
        ora     ($99,x)
        brk
        sta     $7B,y
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        brk
        .byte   $9B
        adc     L0180,y
        ror     $00,x
        ora     ($96,x)
        asl     $A701
        ldx     #$00
        .byte   $9E
        adc     $7D9E,x
        .byte   $9E
        .byte   $03
        pla
        .byte   $80
        adc     $86
        adc     $86
        ora     ($68,x)
        brk
        dey
        brk
        ora     ($88,x)
        ora     ($6B,x)
        ora     ($8B,x)
        .byte   $6B
        ror     a
        .byte   $80
        ror     $80
        .byte   $64
        .byte   $80
        .byte   $64
        .byte   $80
        .byte   $63
        .byte   $80
        sta     ($01,x)
        .byte   $03
        .byte   $77
        brk
        ora     ($97,x)
        ora     ($96,x)
        brk
        ora     ($96,x)
        ora     ($79,x)
        .byte   $02
        brk
        ora     ($D9,x)
        .byte   $03
        dey
        dey
        dey
        dey
        brk
        dey
        pla
        .byte   $80
        ora     ($6A,x)
        brk
        ora     ($AA,x)
        .byte   $04
        brk
        asl     $C8
        sta     $9E9C,y
        .byte   $03
        dey
        brk
        .byte   $8B
        brk
        dey
        brk
        ora     ($6D,x)
        brk
        ora     ($AD,x)
        .byte   $12
        php
        tay
        lsr     $06
        .byte   $64
        brk
        eor     #$01
        lsr     a
        ora     ($8A,x)
        eor     #$01
        lsr     a
        ora     ($8A,x)
        dey
        brk
        stx     $00
        eor     #$01
        lsr     a
        ora     ($8A,x)
        eor     #$01
        lsr     a
        ora     ($8A,x)
        ror     a
        dey
        ora     ($66,x)
        brk
        ora     ($86,x)
        asl     $A801
        ora     #$00
        stx     L0065
        .byte   $83
        .byte   $67
        sta     $63
        sta     $67
        dey
        jmp     (L088A)

        .byte   $0B
        pla
        brk
        ldy     #$16
        .byte   $A7
        txs
        .byte   $17
        asl     $64
        php
        php
        ora     #$01
        clc
        .byte   $80
        .byte   $07
        php
        brk
        ora     ($03,x)
        adc     $8D01
        rti

        ora     #$02
        .byte   $07
        asl     $86
        adc     $86
        pla
        txa
        adc     $708F
        .byte   $8F
        eor     L0109
        .byte   $07
        php
        stx     $01
        ror     $00
        ora     ($86,x)
        .byte   $04
        jsr     L0209
        asl     $64
        php
        php
        .byte   $0C
        brk
        .byte   $04
        jsr     L0707
        .byte   $04
        jsr     L7980
        asl     $A805
        .byte   $92
        .byte   $5B
        ora     ($5C,x)
        ora     ($7C,x)
        adc     $7997,y
        .byte   $07
        php
        ror     $80,x
        ror     $80,x
        ror     $80,x
        ror     $80,x
        brk
        stx     $00,y
        .byte   $80
        ror     $97,x
        ror     $94,x
        .byte   $72
        .byte   $0F
        ora     ($A8,x)
        stx     L2004
        .byte   $80
        .byte   $74
        asl     $A807
        lda     $7780,y
        stx     $72,y
        .byte   $77
        .byte   $80
        stx     $72,y
        .byte   $97
        ror     $92,x
        .byte   $77
        brk
        ldy     #$01
        sta     ($00),y
        ora     ($91,x)
        ora     ($72,x)
        .byte   $02
        brk
        .byte   $B2
        brk
        ora     ($92,x)
        .byte   $7B
        .byte   $9C
        .byte   $7B
        sta     $7B7F,y
        .byte   $80
        .byte   $7B
        .byte   $80
        .byte   $7A
        .byte   $80
        .byte   $7A
        .byte   $80
        sta     $8079,y
        ora     ($7F,x)
        brk
        ora     ($BF,x)
        .byte   $04
        jsr     L2004
        .byte   $80
        adc     $050E,y
        tay
        .byte   $F3
        .byte   $9C
        adc     $7997,y
        .byte   $13
        jsr     L15A9
        brk
        .byte   $03
        sta     $808D
        brk
        .byte   $80
        brk
        sta     a:$8D
        adc     $A000
        .byte   $0F
        ora     ($A8,x)
        sbc     ($06),y
        stx     $00,y
        .byte   $03
        ldy     $06AD
        .byte   $64
        brk
        stx     $66
        stx     $08
        .byte   $0B
        .byte   $07
        ora     #$66
        brk
        ldy     #$16
        tay
        sty     $17
        asl     $C8
        php
        php
        ora     #$02
        brk
        adc     a:$80
        cpy     #$80
        brk
        sty     $01,x
        .byte   $74
        brk
        ora     ($94,x)
        .byte   $04
        brk
        .byte   $04
        brk
        sta     $9491
        stx     $97,y
        stx     $97,y
        sta     $9692,y
        sta     $9C9B,y
        .byte   $9B
        sta     $0E96,y
        ora     ($A9,x)
        eor     ($94,x)
        tya
        .byte   $9B
        sta     $9D9E,x
        .byte   $9E
        .byte   $03
        dey
        .byte   $04
        jsr     L6B8B
        .byte   $97
        brk
        .byte   $8B
        brk
        .byte   $6B
        .byte   $97
        .byte   $6B
        asl     $A901
        rts

        brk
        .byte   $92
        stx     $99,y
        .byte   $9B
        .byte   $9C
        .byte   $9B
        sta     $9896,y
        tya
        .byte   $97
        .byte   $97
        brk
        stx     $76,y
        .byte   $80
        ora     ($6F,x)
        brk
        ora     ($AF,x)
        .byte   $04
        brk
        sta     $9697,y
        sty     $8D,x
        sta     ($92),y
        sty     $12,x
        brk
        lda     #$9F
        .byte   $92
        stx     $97,y
        tya
        sta     $9798,y
        stx     $0E,y
        ora     ($A9,x)
        sta     $00
        .byte   $6F
        .byte   $80
        .byte   $6F
        .byte   $80
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $80
        sty     $74,x
        sty     $74,x
        brk
        ldy     #$16
        lda     #$3F
        .byte   $17
        php
        ora     #$07
        php
        asl     $64
        txa
        cpy     #$00
        .byte   $6F
        jmp     (L8568)

        ror     a
        brk
        .byte   $80
        .byte   $04
        jsr     L2004
        adc     $60
        .byte   $6F
        ror     a
        rts

        adc     $80
        adc     $6A
        rts

        .byte   $6F
        asl     $A907
        cpy     L0065
        .byte   $80
        ror     a
        .byte   $80
        sta     L0065
        ror     a
        .byte   $80
        adc     $80
        ror     a
        rts

        adc     $80
        adc     $6A
        .byte   $80
        .byte   $04
        jsr     L6065
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        asl     $A907
        inc     $00
        sta     $85
        sta     $85
        brk
        sta     $866A
        ora     ($6F,x)
        brk
        ora     ($AF,x)
        .byte   $04
        jsr     L6065
        .byte   $6F
        ror     a
        rts

        adc     $80
        adc     $6A
        rts

        .byte   $6F
        asl     $AA06
        brk
        txa
        ror     a
        txa
        ror     a
        brk
        ldy     #$16
        lda     #$C2
        .byte   $17
        brk
        tax
        bit     $AA
        .byte   $4B
        tax
        adc     $AA,x
        txa
        asl     $64
        .byte   $07
        php
        php
        php
        ora     #$01
        brk
        .byte   $03
        .byte   $89
        txa
        stx     $84
        sta     $81
        sty     $80
        sta     ($84,x)
        .byte   $80
        stx     $06
        .byte   $DC
        brk
        ldy     #$00
        lda     ($01),y
        sty     $00,x
        ldy     $0D,x
        bvc     LEA4D
        sei
        ora     ($88,x)
        .byte   $17
        asl     $C8
LEA4D:  .byte   $07
        php
        php
        php
        ora     #$01
        .byte   $0C
        .byte   $02
        brk
        .byte   $03
        .byte   $89
        txa
        stx     $84
        sta     $81
        sty     $80
        sta     ($84,x)
        .byte   $80
        stx     $06
        .byte   $DC
        brk
        ldy     #$00
        lda     #$01
        txa
        brk
        tax
        ora     $0650
        sei
        ora     ($03,x)
        stx     $17,y
        asl     $F0
        php
        php
        ora     #$02
        cpx     #$A0
        brk
        .byte   $B3
        ora     ($92,x)
        brk
        .byte   $B2
        ora     $0650
        sei
        ora     ($86,x)
        .byte   $17
        asl     $64
        .byte   $07
        php
        php
        ora     #$E0
        brk
        sty     $888A
        asl     $96
        php
        ora     ($AE,x)
        ora     (L008E,x)
        brk
        ora     ($CE,x)
        .byte   $17
        brk
        tax
        lda     #$AB
        ldx     $6BAC
        ldy     $05F3
        brk
        tax
        asl     $96
        .byte   $07
        php
        php
        asl     L0109
        clc
        .byte   $80
        brk
        rts

        .byte   $03
        pla
        .byte   $6B
        and     $2E01
        ora     ($4E,x)
        adc     $2D68
        ora     ($2E,x)
        ora     ($4E,x)
        adc     $6B68
        .byte   $6F
        .byte   $74
        stx     $72,y
        sta     $6C01
        brk
        ora     ($8C,x)
        .byte   $04
        plp
        ora     #$02
        asl     $96
        .byte   $04
        plp
        php
        .byte   $07
        pla
        .byte   $6B
        adc     $0808
        and     $2F01
        .byte   $4F
        ora     ($6F,x)
        php
        .byte   $07
        pla
        brk
        .byte   $80
        brk
        rts

        .byte   $6B
        adc     $766F
        .byte   $74
        .byte   $6F
        .byte   $6B
        ror     L0100
        lda     L0100
        adc     $6D6B
        php
        php
        rol     $2F01
        .byte   $4F
        ora     ($6F,x)
        rol     $2F01
        .byte   $4F
        ora     ($6F,x)
        php
        .byte   $07
        adc     $6D6B
        .byte   $6B
        dey
        pla
        ror     $88
        sta     a:$8B
        dey
        brk
        rts

        .byte   $6B
        adc     $0808
        and     $2E01
        ora     ($4E,x)
        php
        .byte   $07
        adc     $016B
        pla
        brk
        ora     ($A8,x)
        .byte   $12
        php
        .byte   $AB
        .byte   $5F
        brk
        .byte   $6B
        adc     $0808
        and     $2E01
        ora     ($4E,x)
        php
        .byte   $07
        adc     $686B
        ror     $01
        pla
        brk
        ora     ($A8,x)
        brk
        .byte   $8B
        .byte   $62
        sta     $68
        .byte   $8B
        ror     $6B8D
        sta     $6D6B
        .byte   $6B
        ora     ($6F,x)
        brk
        ora     ($8F,x)
        asl     $AA01
        .byte   $DA
        brk
        .byte   $74
        ror     $08,x
        php
        rol     $01,x
        .byte   $37
        ora     ($57,x)
        php
        .byte   $07
        ror     $74,x
        .byte   $73
        .byte   $6F
        ora     ($74,x)
        brk
        sty     $00,x
        ora     ($74,x)
        .byte   $74
        ror     $97,x
        .byte   $74
        stx     $8B6D
        pla
        rts

        .byte   $74
        ror     $97,x
        .byte   $74
        stx     $8B6D
        pla
        .byte   $6F
        pla
        asl     $C8
        ora     ($74,x)
        brk
        .byte   $D4
        php
        ora     ($01),y
        ldy     $08,x
        php
LEB95:  brk
        rol     $01,x
        .byte   $37
        ora     ($57,x)
        php
        .byte   $07
        ror     $74,x
        .byte   $73
        .byte   $6F
        ora     ($74,x)
        brk
        .byte   $D4
        php
        ora     ($01),y
        ldy     $80,x
        asl     $AA,x
        .byte   $D4
        .byte   $17
        asl     $96
        .byte   $07
        php
        php
        ora     L0209
        clc
        .byte   $80
        .byte   $BB
        tsx
        brk
        .byte   $03
        sta     $866A
        ora     ($63,x)
        brk
        ora     ($A3,x)
        .byte   $04
        plp
        .byte   $04
        plp
        .byte   $04
        plp
        ora     #$01
        php
        asl     a:L000C
        .byte   $6F
        pla
        .byte   $74
        pla
        .byte   $6F
        pla
        asl     $AB01
        iny
        .byte   $04
        plp
        .byte   $6F
        .byte   $67
        .byte   $73
        .byte   $67
        .byte   $6F
        .byte   $67
        asl     $AB01
        .byte   $DA
        .byte   $04
        plp
        .byte   $6F
        pla
        .byte   $74
        pla
        .byte   $6F
        pla
        asl     $AB01
        inc     $04
        plp
        adc     $7165
        adc     $6B
        adc     $0E
        ora     ($AB,x)
        .byte   $F2
        .byte   $04
        plp
        .byte   $6B
        .byte   $64
        bvs     LEC68
        .byte   $6B
        .byte   $64
        asl     $AB01
        inc     L2813,x
        ldy     $6836
        .byte   $63
        .byte   $6F
        .byte   $63
        pla
        .byte   $63
        pla
        adc     $6E
        adc     $68
        adc     $6B
        pla
        ror     $716B
        ror     $7174
        .byte   $77
        adc     ($74),y
        adc     ($08),y
        .byte   $07
        stx     $74,y
        ror     $74,x
        ora     ($77,x)
        brk
        ora     ($97,x)
        .byte   $80
        .byte   $0F
        ora     ($AB,x)
        dec     $74
        .byte   $72
        bvs     LECA9
        adc     $6B01
        brk
        ora     ($AB,x)
        .byte   $04
        plp
        stx     $8E6E
        ror     $6D8D
        brk
        .byte   $80
        asl     $AC01
        rti

        .byte   $04
        php
        php
        ora     ($88,x)
        .byte   $8F
        stx     $8A00
        .byte   $6B
        .byte   $80
        pla
        brk
        .byte   $8F
        .byte   $12
        php
        ldy     $8E66
        txa
        asl     $AC01
        lsr     $16AE
LEC68:  .byte   $AB
        cpy     $17
        asl     $FA
        php
        brk
        ora     #$02
        ldy     $B0,x
        brk
        .byte   $92
        .byte   $72
        .byte   $92
        ora     ($74,x)
        brk
        ora     ($B4,x)
        .byte   $04
        rti

        .byte   $04
        rti

        sty     $00,x
        ora     ($74,x)
        .byte   $7B
        .byte   $77
        brk
        ldy     $01,x
        .byte   $93
        brk
        ora     ($73,x)
        .byte   $77
        ror     $00,x
        .byte   $B3
        ora     ($92,x)
        brk
        ora     ($72,x)
        .byte   $77
        ror     $00,x
        .byte   $B2
        ora     ($91,x)
        brk
        ora     ($71,x)
        .byte   $7A
        .byte   $77
        brk
        lda     ($01),y
        bcc     LECA6
LECA6:  ora     ($70,x)
        .byte   $77
LECA9:  .byte   $74
        brk
        bcs     LECBF
        brk
        ldy     $8FC6
        sty     $97,x
        sta     (L008E),y
        .byte   $8B
        stx     a:$91
        .byte   $8F
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ora     ($73,x)
LECBF:  brk
        ora     ($B3,x)
        asl     $AC01
        ror     $938F,x
        sty     $97,x
        .byte   $04
        jsr     L7090
        bcc     LED40
        .byte   $8F
        .byte   $6F
        brk
        .byte   $80
        asl     $AC01
        dex
        .byte   $04
        brk
        sty     $8F,x
        bcc     LECDE
LECDE:  .byte   $93
        .byte   $74
        .byte   $80
        .byte   $74
        brk
        .byte   $8F
        .byte   $12
        brk
        ldy     $90EE
        .byte   $93
        asl     $AC01
        cld
        bcs     LED06
        ldy     $177C
        .byte   $17
        brk
        ldy     $ADFD
        ldy     $4AAE
        ldx     $05B7
        .byte   $02
        brk
        asl     a
        .byte   $02
        asl     $64
        .byte   $07
        php
LED06:  php
        php
        ora     #$01
        clc
        rti

        .byte   $02
        .byte   $03
        txa
        ror     a
        adc     $7160
        rts

        sty     $93,x
        .byte   $8F
        txa
        bvs     LED8B
        bvs     LED8D
        bvs     LED7E
        adc     ($72),y
        adc     ($72),y
        adc     ($60),y
        adc     ($74),y
        rts

        ror     $04,x
        brk
        php
        .byte   $12
        .byte   $07
LED2D:  php
        ora     #$02
        stx     $99,y
        sta     $99,x
        sty     $79,x
        .byte   $93
        .byte   $72
        adc     ($60),y
        asl     $AD01
        plp
        .byte   $04
        php
LED40:  ora     #$01
        php
        php
        sta     $8F80
        .byte   $80
        bcc     LEDBA
        ora     ($6D,x)
        ora     ($AD,x)
        clc
        .byte   $80
        rts

        ror     $71,x
        bvs     LEDC4
        adc     $686A
        ror     a
        adc     $686A
        ror     a
        .byte   $02
        bcc     LED69
        .byte   $02
        .byte   $04
        brk
        php
        .byte   $12
        clc
        rti

        stx     $99,y
LED69:  sta     $99,x
        sty     $79,x
        .byte   $93
        .byte   $72
        adc     ($09),y
        .byte   $03
        rts

        asl     $AD01
        adc     ($08,x)
        php
        ora     #$02
        .byte   $03
        txa
        .byte   $80
LED7E:  sty     $8D80
        adc     $6A01
        ora     ($AA,x)
        .byte   $80
        adc     $606D
        .byte   $6D
LED8B:  .byte   $6D
        rts

LED8D:  adc     $606D
        adc     $09AD
        ora     ($04,x)
        php
        php
        .byte   $12
        bcc     LED2D
        .byte   $8F
        .byte   $93
        sta     $8A73
        adc     #$68
        rts

        ora     #$02
        asl     $AD01
        sty     $16,x
        lda     $173E
        asl     $64
        .byte   $07
        php
        php
        ora     L0209
        clc
        .byte   $80
        ldx     $BD,y
        .byte   $BC
        .byte   $BF
LEDBA:  php
        php
        ora     #$01
        clc
        rti

        .byte   $7F
        .byte   $03
        pla
        .byte   $67
LEDC4:  pla
        .byte   $67
        rts

        adc     #$6A
        adc     #$6A
        adc     #$60
        .byte   $6C
LEDCE:  .byte   $6F
        rts

        adc     ($04),y
        brk
        php
        .byte   $12
        ora     #$02
        rts

        stx     $99,y
        sta     $99,x
        sty     $79,x
        .byte   $93
        .byte   $72
        adc     ($0E),y
        ora     ($AD,x)
        cmp     ($04),y
        brk
        php
        php
        .byte   $07
        php
        ora     #$01
        sta     $9E80,x
        .byte   $80
        .byte   $9F
        .byte   $7F
        ora     ($7D,x)
        ora     ($BD,x)
        php
        .byte   $12
        .byte   $03
        tax
        .byte   $B3
        bcs     LEE5E
        php
        php
        .byte   $02
        .byte   $87
        .byte   $04
        brk
        php
        .byte   $12
        ora     #$02
        rts

        stx     $99,y
        sta     $99,x
        sty     $79,x
        .byte   $93
        .byte   $72
        adc     ($0E),y
        ora     ($AE,x)
        .byte   $02
        php
        php
        ora     #$02
        sta     $9B80,y
        .byte   $80
        .byte   $9C
        .byte   $7C
        ora     ($79,x)
        ora     ($B9,x)
        .byte   $80
        .byte   $7F
        .byte   $7F
        rts

        .byte   $03
        ror     a
        ror     a
        rts

        .byte   $67
        .byte   $67
        rts

        ror     a
        tax
        .byte   $04
        brk
        ora     #$01
        php
        .byte   $12
        rts

        .byte   $03
        bcc     LEDCE
LEE3B:  .byte   $8F
        .byte   $93
        sta     $8A73
        adc     #$68
        asl     $AE01
        and     ($16),y
        lda     $17E5
        asl     $C8
        php
        php
        ora     #$00
        .byte   $02
        .byte   $03
        txa
        ror     a
        adc     $7160
        rts

        sty     $93,x
        .byte   $8F
        txa
        ora     #$01
LEE5E:  ora     ($A4,x)
        ora     ($84,x)
        ora     ($A5,x)
        ora     ($85,x)
        adc     #$65
        rts

        ror     a
        .byte   $04
        php
        ora     #$00
        txa
        sta     $8D89
        dey
        adc     $6687
        adc     $60
        asl     $AE01
        ror     a
        .byte   $04
        php
        .byte   $04
        php
        txa
        sta     $8D89
        dey
        adc     $1287
        php
        ldx     $6692
        adc     $60
        asl     $AE01
        ror     $8902,x
        .byte   $04
        php
        txa
        sta     $8D89
        dey
        adc     $6687
        adc     $60
        asl     $AE01
        sty     $04,x
        php
        bcc     LEE3B
        .byte   $8F
        .byte   $93
        sta     $8A73
        adc     #$88
        asl     $AE03
        ldy     $16
        ldx     $177C
        asl     $64
        .byte   $07
        .byte   $07
        php
        ora     #$06
        iny
        brk
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $07
        php
        asl     $64
        brk
        ror     a
        ror     a
        ror     a
        rts

        ror     a
        rts

        ror     a
        rts

        ror     a
        ror     a
        asl     $C8
        .byte   $07
        .byte   $07
        brk
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        asl     $64
        .byte   $07
        php
        brk
        txa
        adc     $6A60
        ror     L0065
        rts

        adc     $6A60
        ror     L0065
        rts

        ror     a
        ror     a
        rts

        ror     a
        .byte   $04
        brk
        .byte   $04
        brk
        asl     $C8
        sta     L6406
        jmp     (L0E6C)

        ora     ($AE,x)
        sed
        adc     $6A
        rts

        adc     $06
        iny
        sta     L6406
        jmp     (L166C)

        ldx     $17F6
        .byte   $04
        .byte   $02
        jsr     L0202
        .byte   $0F
        .byte   $1B
        rti

        .byte   $0F
        dec     $35,x
        .byte   $02
        .byte   $FF
        ora     ($02,x)
        brk
        rol     $05FF,x
        .byte   $02
        .byte   $FF
        .byte   $03
        .byte   $02
        .byte   $0F
        .byte   $1B
        cpy     #$0F
        .byte   $7F
        and     #$02
        .byte   $FF
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $80
        .byte   $3B
        .byte   $FF
        ora     $02
        ldy     #$0B
        .byte   $02
        .byte   $0F
        .byte   $1C
        .byte   $80
        .byte   $0F
        dec     $33
        .byte   $FF
        ora     $02
        .byte   $FF
        asl     $02
        .byte   $0F
        brk
        .byte   $80
        .byte   $0F
        .byte   $FF
        rol     a
        .byte   $FF
        ora     $02
        .byte   $FF
        .byte   $02
        php
        ora     $08
        .byte   $0F
        asl     a
        .byte   $02
        .byte   $FF
        ora     ($00,x)
        .byte   $03
        .byte   $02
        .byte   $AF
        .byte   $52
        .byte   $FF
        .byte   $02
        php
        brk
        asl     a
        .byte   $FF
        ora     #$02
        .byte   $FF
        .byte   $04
        asl     a
        .byte   $07
        ora     L0F80,x
        and     ($05),y
        ora     $050E,x
        .byte   $02
        .byte   $FF
        .byte   $04
        asl     a
        brk
        and     ($00),y
        ora     $FF
        ora     $02,x
        .byte   $FF
        eor     ($02,x)
        .byte   $0F
        php
        .byte   $80
        .byte   $0F
        .byte   $22
        .byte   $42
        .byte   $FF
        .byte   $07
        asl     $FF
        inc     $0203,x
        .byte   $07
        php
        rti

        .byte   $0F
        and     LFF02,x
        .byte   $03
        .byte   $02
        brk
        lsr     $02
        .byte   $34
        ora     ($02),y
        .byte   $07
        asl     $0F40,x
        .byte   $42
        .byte   $FF
        .byte   $07
        asl     $FF
        inc     L0202,x
        .byte   $07
        .byte   $1C
        cpy     #$0F
        and     ($02),y
        .byte   $FF
        .byte   $02
        .byte   $02
        brk
        and     $02,x
        .byte   $FF
        .byte   $02
        .byte   $02
        brk
        sec
        .byte   $02
        .byte   $FF
        .byte   $02
        .byte   $02
        brk
        and     $5A02,x
        .byte   $14
        .byte   $02
        ora     ($1E,x)
        .byte   $44
        .byte   $FF
        .byte   $07
        asl     $1E
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $07
        php
        cpy     #$0F
        .byte   $33
        .byte   $02
        and     ($03,x)
        .byte   $02
        brk
        rol     $02,x
        asl     $0203,x
        brk
        and     ($02),y
        asl     $0203,x
        .byte   $04
        asl     a
        .byte   $33
        .byte   $02
        and     ($03,x)
        .byte   $02
        brk
        rol     $02,x
        asl     $0203,x
        brk
        and     ($02),y
        asl     $0203,x
        .byte   $04
        .byte   $07
        .byte   $33
        .byte   $02
        and     ($03,x)
        .byte   $02
        brk
        rol     $02,x
        asl     $0203,x
        brk
        and     ($02),y
        asl     $0203,x
        .byte   $04
        .byte   $03
        .byte   $33
        .byte   $02
        and     ($03,x)
        .byte   $02
        brk
        rol     $02,x
        asl     $0203,x
        brk
        and     ($02),y
        asl     $0204,x
        .byte   $04
        .byte   $02
        .byte   $33
        .byte   $02
        and     ($04,x)
        .byte   $02
        brk
        rol     $02,x
        asl     $0204,x
        brk
        and     ($FF),y
        .byte   $07
        .byte   $02
        ror     $0C01
        ora     $24
        .byte   $FF
        and     #$05
        rol     $0F
        php
        .byte   $02
        ror     $080C
        php
        brk
        ora     $05FF
        asl     $94
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $07
        bit     $80
        .byte   $0F
        .byte   $2F
        .byte   $02
        iny
        .byte   $03
        .byte   $02
        brk
        and     $FF,x
        .byte   $14
        .byte   $02
        adc     $0A03
        .byte   $07
        and     $80
LF05E:  .byte   $0F
        .byte   $4B
        ora     $25
        .byte   $0F
        .byte   $0F
        .byte   $02
        adc     $0A03
        brk
        eor     #$00
        asl     $6D02
        .byte   $03
        asl     a
        brk
        .byte   $4B
        brk
        .byte   $0F
        .byte   $02
        adc     $0A04
        brk
        eor     #$00
        asl     $6D02
        ora     $0A,y
        .byte   $4B
        brk
        .byte   $0F
        .byte   $FF
        php
        .byte   $02
        .byte   $FF
        php
        .byte   $02
        .byte   $0F
        .byte   $1F
        .byte   $80
        .byte   $0F
        .byte   $7F
        and     $02,x
        .byte   $FF
        .byte   $02
        .byte   $02
        ora     ($1C,x)
        .byte   $3A
        .byte   $FF
        php
        .byte   $02
        .byte   $5C
        asl     $0F02,x
        jsr     L0F80
        eor     ($41,x)
        .byte   $FF
        .byte   $14
        .byte   $02
        .byte   $FF
        asl     $050E,x
        bit     $0F
        .byte   $0C
        ora     $00
        .byte   $FF
        and     #$05
        bit     $05
        .byte   $02
        .byte   $03
        .byte   $07
        bcs     LF05E
        .byte   $FF
        ora     ($0E,x)
        brk
        .byte   $0C
        .byte   $04
        brk
        and     #$00
        .byte   $02
        .byte   $FF
        .byte   $14
        .byte   $02
        .byte   $DC
        .byte   $FF
        .byte   $0B
        .byte   $1F
        .byte   $27
        brk
        ora     $0404
        rol     $0F
        .byte   $27
        brk
        ora     $2604
        ora     $27
        .byte   $0F
        .byte   $02
        .byte   $FF
        ora     $06
        lsr     $F9
        .byte   $02
        .byte   $02
        .byte   $07
        and     (L0040,x)
        .byte   $0F
        .byte   $47
        brk
        ora     ($00,x)
        .byte   $02
        lsr     $02
        .byte   $02
        .byte   $04
        asl     a
        .byte   $47
        brk
        ora     ($00,x)
        .byte   $02
        lsr     $02
        .byte   $02
        .byte   $04
        .byte   $07
        .byte   $47
        brk
        ora     ($00,x)
        .byte   $02
        lsr     $02
        .byte   $02
        .byte   $04
        .byte   $03
        .byte   $47
        .byte   $FF
        ora     $02
        .byte   $FF
        .byte   $03
        .byte   $02
        .byte   $0F
        ora     $0FC0,x
        .byte   $7F
        rol     $02
        .byte   $FF
        ora     $0702,y
        .byte   $23
        rti

        .byte   $0F
        and     $05FF,y
        .byte   $02
        .byte   $2B
        .byte   $0B
        php
        ora     $1C
        .byte   $0F
        .byte   $07
        .byte   $FF
        ora     $02,x
        .byte   $FF
        ora     #$02
        .byte   $0F
        ora     L0F80,x
        brk
        .byte   $3B
        .byte   $02
        .byte   $FF
        ora     #$02
        .byte   $04
        ora     $0231
        .byte   $FF
        ora     #$02
        .byte   $04
        .byte   $0B
        and     LFF02,y
        ora     #$02
        .byte   $04
        ora     #$2F
        .byte   $02
        .byte   $FF
        ora     #$02
        .byte   $04
        php
        .byte   $37
        .byte   $02
        .byte   $FF
        ora     #$02
        .byte   $04
        .byte   $07
        bit     LFF02
        ora     #$02
        .byte   $04
        ora     $33
        .byte   $02
        .byte   $FF
        ora     #$02
        .byte   $04
        .byte   $03
        and     #$FF
        .byte   $07
        .byte   $02
        .byte   $64
        .byte   $14
        .byte   $0C
        ora     $2800
        .byte   $7F
        and     ($05),y
        .byte   $1A
        .byte   $0F
        .byte   $03
        .byte   $FF
        .byte   $04
        .byte   $02
        .byte   $64
        ora     ($06,x)
        .byte   $07
        ora     $0540,x
        .byte   $0B
        ora     $01
        ora     ($0A,x)
        .byte   $02
        ora     ($01,x)
        .byte   $04
        ora     $00
        ora     ($0A,x)
        asl     $63
        sed
        .byte   $03
        asl     $04
        .byte   $0C
        .byte   $5C
        ora     $1D
        .byte   $02
        .byte   $53
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        asl     $0A
        .byte   $0F
        ora     L0F80,y
        .byte   $FF
        lsr     $190D
        .byte   $0F
        sbc     #$06
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        ora     L000C,x
        ora     $03
        .byte   $FF
        and     $2405
        .byte   $0F
        ora     ($FF,x)
        asl     $02
        eor     $0A01,x
        .byte   $07
        ora     L0F80,x
        asl     $1D05,x
        asl     $020C
        .byte   $FF
        .byte   $03
        brk
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $03
        asl     a
        .byte   $0F
        .byte   $1F
        .byte   $80
        .byte   $0F
        .byte   $7F
        rol     $05,x
        asl     $060F,x
        .byte   $02
        lsr     $0803
        ora     $2B
        .byte   $0F
        ora     $07FF
        .byte   $02
        .byte   $64
        ora     ($06,x)
        ora     $1D
        .byte   $0F
        .byte   $32
        ora     $1D,x
        .byte   $02
        ora     $32
        .byte   $02
        .byte   $FF
        ora     ($00,x)
        .byte   $02
        .byte   $FF
        ora     ($06,x)
        brk
        .byte   $37
        .byte   $04
        brk
        .byte   $37
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $02
        php
        ora     $0F16
        asl     $0203,x
        asl     a:$01,x
        .byte   $02
        asl     $080C,x
        brk
        .byte   $03
        .byte   $FF
        asl     $02
        .byte   $6F
        .byte   $02
        asl     a
        ora     $0F
        .byte   $0F
        .byte   $42
        ora     $17
        .byte   $0B
        .byte   $04
        .byte   $02
        .byte   $6F
        .byte   $02
        asl     a
        brk
        eor     #$00
        .byte   $07
        .byte   $02
        .byte   $6F
        .byte   $02
        asl     a
        brk
        .byte   $52
        brk
        php
        brk
        .byte   $02
        brk
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        ora     #$06
        .byte   $0F
        clc
        rti

        ora     #$3B
        bit     $181D
        .byte   $FF
        .byte   $3B
        .byte   $D3
        .byte   $3C
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        bit     $0D08
        asl     $180F,x
        .byte   $0B
        .byte   $FF
        asl     $02
        .byte   $FF
        ora     $0A
        .byte   $07
        jsr     L0D00
        .byte   $43
        ora     $20
        .byte   $0F
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        brk
        .byte   $43
        brk
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        brk
        .byte   $43
        brk
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        .byte   $04
        .byte   $0C
        .byte   $43
        .byte   $04
        asl     $0203
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        .byte   $04
        asl     a
        .byte   $43
        .byte   $04
        .byte   $0C
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        .byte   $04
        php
        .byte   $43
        .byte   $04
        asl     a
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        .byte   $04
        asl     $43
        .byte   $04
        php
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        .byte   $04
        .byte   $04
        .byte   $43
        .byte   $04
        asl     $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        .byte   $04
        .byte   $02
        .byte   $43
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     $0A
        .byte   $04
        .byte   $03
        .byte   $43
        .byte   $04
        ora     $03
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $0B
        .byte   $0C
        ora     $981F
        .byte   $3C
        .byte   $34
        ora     $0F1E
        and     $0204,y
        .byte   $FF
        asl     $0C0C
        bvc     LF340
        rol     $1C0D,x
        .byte   $0F
        rol     LFF06,x
        .byte   $07
        asl     $FF
        inc     $0208,x
        .byte   $0F
        .byte   $17
        brk
        .byte   $0F
        lsr     $022A,x
        .byte   $FF
        asl     $02
        .byte   $04
        ora     $022A
        .byte   $FF
        asl     $02
        .byte   $04
        asl     a
        rol     a
        .byte   $02
        .byte   $FF
        asl     $02
        .byte   $04
        .byte   $07
        rol     a
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        php
        .byte   $0C
        ora     LFF20
        .byte   $7F
        and     $0D,x
        rol     $0F
        lsr     $04
        .byte   $FF
        php
        asl     $FF
        sbc     $0604,x
        .byte   $1F
        asl     $80,x
        asl     a
        .byte   $34
        .byte   $0F
        and     $1A0D,y
        .byte   $FF
        .byte   $34
        eor     $06
        .byte   $FF
        .byte   $FB
        eor     $1F06
        .byte   $1A
        .byte   $80
        .byte   $0B
        .byte   $02
LF340:  .byte   $13
        and     $160D,y
        .byte   $FF
        ora     $45
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $07
        .byte   $0C
        ora     LFF1D
        .byte   $7F
        .byte   $3F
        ora     $0E1B
        .byte   $7F
        ora     $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $0B
        asl     a
        .byte   $0F
        .byte   $22
        .byte   $80
        .byte   $0F
        lda     $0D24,x
        .byte   $22
        .byte   $07
        ldx     $0A
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $04
        php
        ora     $0F1A
        .byte   $7F
        asl     $02
        .byte   $FF
        asl     $08,x
        php
        .byte   $3C
        .byte   $10
LF37A:  .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $32
        bpl     LF388
        ora     $1A
        asl     $0203
        asl     $0A10,x
LF388:  .byte   $0F
        and     L0040
        asl     $5A00
        brk
        php
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        php
        .byte   $04
        ora     LFF08
        .byte   $EF
        .byte   $44
        .byte   $FF
        php
        .byte   $02
        stx     $03,y
        php
        ora     $24
        .byte   $0F
        asl     a
        .byte   $02
        stx     $03,y
        php
        brk
        .byte   $0B
        .byte   $02
        stx     $03,y
        php
        brk
        ora     $0201
        .byte   $B3
        sta     a:$00,x
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $0C
        php
        ora     $0F24
        .byte   $7F
        .byte   $04
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $0C
        .byte   $04
        ora     LFF1B
        tay
        and     $FF,x
        .byte   $07
        .byte   $02
        .byte   $62
        clc
        asl     a
        .byte   $07
        ora     $00,x
        .byte   $0F
        jmp     L1505

        asl     LFF04
        ora     $02
        lsr     $05,x
        php
        ora     $28
        .byte   $0F
        .byte   $0C
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        ora     ($01,x)
        ora     ($01,x)
        stx     $8E8F
        .byte   $8F
        ror     $74,x
        txs
        .byte   $74
        ror     $01,x
        txs
        .byte   $9B
        .byte   $74
        ora     ($74,x)
        .byte   $9B
        sty     $8C8D
        sta     L0101
        ora     ($53,x)
        .byte   $5B
        ora     ($01,x)
        .byte   $01
LF700:  ror     $74,x
        ror     $74,x
        ror     $01,x
        ror     $01,x
        .byte   $74
        ora     ($74,x)
        ora     ($01,x)
        .byte   $5B
        .byte   $53
        ora     ($53,x)
        ora     ($5B,x)
        .byte   $53
        stx     $0C8F
        .byte   $5C
        ror     $74,x
        .byte   $5C
        eor     $0176,x
        .byte   $5C
        .byte   $5C
        .byte   $74
        ora     ($5C,x)
        eor     $8D8C,x
        .byte   $5C
        ora     $938E
        stx     $768F
        .byte   $93
        txs
        .byte   $74
        .byte   $93
        ora     ($74,x)
        .byte   $9B
        .byte   $93
        sta     $8D8C
        .byte   $22
        .byte   $23
        rol     a
        .byte   $2B
        .byte   $AB
        .byte   $8F
        .byte   $B3
        eor     $7476,y
        eor     ($50),y
        ror     $22,x
        eor     ($2A),y
        .byte   $74
        .byte   $23
        bvc     LF777
        sty     $58AA
        .byte   $B2
        .byte   $02
        .byte   $03
        asl     a
        .byte   $0B
        .byte   $02
        lsr     $660A,x
        bvs     LF7CB
        sei
        adc     $035F,y
        .byte   $67
        .byte   $0B
        .byte   $0B
        asl     a
        asl     a
        .byte   $0B
        ldx     $A7
        brk
        brk
        ora     ($43,x)
        ora     ($43,x)
        rti

        eor     (L0040,x)
        eor     ($41,x)
        .byte   $42
        eor     ($42,x)
        .byte   $44
        ora     ($44,x)
LF777:  ora     ($CF,x)
        eor     $BF,x
        and     #$40
        eor     ($48,x)
        eor     #$41
        .byte   $42
        eor     #$4A
        .byte   $BF
        and     ($BF,x)
        and     #$01
        .byte   $4B
        ora     ($43,x)
        brk
        brk
        .byte   $12
        .byte   $1B
        brk
        brk
        .byte   $1B
        brk
        lsr     $4D5B
        ora     ($60,x)
        adc     ($64,x)
        bpl     LF7AF
        .byte   $1B
        .byte   $12
        .byte   $1B
        .byte   $1B
        brk
        .byte   $1B
        brk
        eor     $4D01
        ora     ($01,x)
        ora     ($60,x)
        adc     ($6C,x)
        ora     #$11
LF7AF:  bpl     LF7C3
        .byte   $07
        .byte   $12
        .byte   $0F
        jmp     (L6411)

        bpl     LF7C9
        ora     ($11),y
        bpl     LF7DF
        .byte   $C2
        rol     a
        dex
        .byte   $12
        .byte   $2F
        .byte   $12
LF7C3:  .byte   $2F
        .byte   $C3
        .byte   $23
        .byte   $CB
        .byte   $2B
        .byte   $54
LF7C9:  eor     $28,x
LF7CB:  and     #$6C
        adc     $6564
        jsr     L2821
        and     #$5C
        .byte   $5C
        lsr     $57,x
        .byte   $62
        .byte   $63
        ora     (L0065),y
        ora     #$6D
        .byte   $11
LF7DF:  adc     $6C
        adc     $6B68
        ora     ($01,x)
        .byte   $5C
        eor     $096C,x
        .byte   $64
        bpl     LF7FD
        ora     ($09),y
        bpl     LF801
        adc     $6511
        plp
        and     #$20
        and     (L000C,x)
        .byte   $5C
        .byte   $54
        eor     $5C,x
LF7FD:  .byte   $5C
        .byte   $54
        eor     $5D,x
LF801:  .byte   $5C
        .byte   $54
        eor     $5C,x
        ora     $5554
        plp
        and     #$0C
        .byte   $5C
        plp
        and     #$5C
        .byte   $5C
        plp
        and     #$5C
        ora     $5756
        jsr     L6121
        .byte   $62
        bpl     LF82D
        adc     ($63,x)
        bpl     LF88D
        rts

        .byte   $62
        jmp     (L1111)

        bpl     LF837
        ora     ($11),y
        bpl     LF834
        ora     ($11),y
LF82D:  adc     $09
        adc     $1064
        .byte   $6C
        .byte   $11
LF834:  ror     a
        adc     #$00
LF837:  brk
        .byte   $0C
        .byte   $5C
        lsr     $57,x
        eor     $560D,x
        .byte   $57
        .byte   $62
        adc     ($6A,x)
        adc     #$62
        .byte   $63
        ror     a
        .byte   $6B
        rts

        adc     ($68,x)
        adc     #$20
        and     (L000C,x)
        .byte   $5C
        jsr     L5D21
        ora     $2120
        sta     $2029,x
        and     ($28,x)
        .byte   $9C
        sty     $21,x
        lsr     $29,x
        jsr     L2894
        .byte   $57
        plp
        and     #$0C
        ora     $116C
        pla
        adc     #$10
        adc     $6B6A
        .byte   $0C
        ora     $5554
        plp
        and     #$01
        ora     ($28,x)
        and     #$01
        .byte   $53
        ora     ($01,x)
        .byte   $62
        adc     ($01,x)
        ora     ($62,x)
        .byte   $63
        ora     (L0065),y
        bpl     LF8F5
        ror     a
        .byte   $6B
        brk
        brk
        pla
LF88D:  adc     #$00
        brk
        .byte   $04
        and     ($6C),y
        .byte   $73
        bmi     LF8C7
        .byte   $72
        .byte   $73
        bmi     LF89E
        .byte   $72
        adc     $5C5C
LF89E:  ora     ($01,x)
        eor     $565C,x
        .byte   $57
        .byte   $53
        ora     ($01,x)
        .byte   $53
        ora     ($10),y
        adc     #$6A
        adc     ($62,x)
        adc     #$6A
        ora     ($45,x)
        ora     ($4B,x)
        pha
        lsr     a
        brk
        brk
        jmp     L4E45

        .byte   $4B
        rol     $21
        rol     $29
        ora     ($45,x)
        ora     ($45,x)
        eor     $4D45
LF8C7:  eor     $4D
        .byte   $27
        eor     $010F
        .byte   $27
        ora     ($0F,x)
        eor     $4D2F
        .byte   $2F
        ora     ($2F,x)
        ora     ($2F,x)
        .byte   $14
        ora     $1C,x
        ora     $6360,x
        .byte   $64
        adc     $20
        .byte   $B7
        plp
        .byte   $B7
        rti

        .byte   $42
        pha
        lsr     a
        bpl     LF8FB
        ror     a
        adc     #$01
        .byte   $07
        ora     ($0F,x)
        .byte   $80
        and     $88
        .byte   $2D
        txa
LF8F5:  .byte   $7A
        .byte   $80
        and     $1B
        brk
        .byte   $12
LF8FB:  brk
        dey
        and     $2482
        .byte   $7B
        .byte   $7A
        bit     $25
        txa
        bit     $2580
        bit     $81
        bit     $8889
        .byte   $89
        .byte   $82
        .byte   $83
        .byte   $7B
        .byte   $8B
        bit     $81
        and     $248B
        sta     ($2C,x)
        .byte   $89
        and     $83
        bit     $252D
        bit     $25
        bit     $7B
        .byte   $7A
        and     $83
        .byte   $7B
        .byte   $8B
        .byte   $82
        bit     $8A
        bit     $939A
        ror     $74,x
        txs
        .byte   $9B
        ror     $01,x
        .byte   $93
        .byte   $9B
        .byte   $74
        ora     ($80,x)
        and     $88
        .byte   $7B
        txs
        .byte   $74
        ror     $74,x
        bit     $25
        .byte   $7A
        .byte   $7B
        .byte   $93
        ora     ($74,x)
        ora     ($76,x)
        .byte   $93
        ror     $74,x
        .byte   $74
        .byte   $9B
        .byte   $74
        ora     ($25,x)
        bit     $2D
        bit     $2524
        bit     $242D
        sta     ($7A,x)
        .byte   $89
        and     $83
        and     $938B
        ora     ($A3,x)
        ora     ($74,x)
        ora     (L000C,x)
        .byte   $5C
        .byte   $74
        ora     ($5D,x)
        ora     $9BA3
        .byte   $A3
        ora     ($A3,x)
        ora     ($74,x)
        ora     ($80,x)
        sta     ($88,x)
        .byte   $89
        .byte   $A3
        ora     ($A3,x)
        ora     (L000C,x)
        .byte   $5C
        ror     $93,x
        eor     $765C,x
        .byte   $93
        txs
        sty     $8C76
        .byte   $74
        ora     ($74,x)
        .byte   $0C
        ror     $74,x
        .byte   $5C
        .byte   $5C
        ror     $8C,x
        eor     $9A5C,x
        .byte   $93
        ror     $8C,x
        ror     $16,x
        ror     $92,x
        asl     $01,x
        .byte   $92
        ora     ($76,x)
        sty     $8C76
        ror     $74,x
        asl     $0E
        ror     $01,x
        asl     $06
        .byte   $74
        ora     ($0E,x)
        asl     L000C
        .byte   $5C
        .byte   $93
        .byte   $9B
        eor     $9A5C,x
        .byte   $93
        .byte   $5C
        .byte   $5C
        txs
        .byte   $9B
        eor     $930D,x
        .byte   $9B
        ror     $8C,x
        txs
        sty     $7476
        eor     $765C,x
        .byte   $74
        .byte   $0C
        .byte   $5C
        ror     $01,x
        eor     $740D,x
        ora     ($A3,x)
        ora     ($2D,x)
        bit     $2524
        .byte   $A3
        ora     ($A3,x)
        .byte   $9B
        .byte   $A3
        ora     ($74,x)
        .byte   $9B
        .byte   $7A
        .byte   $7B
        and     $24
        .byte   $7A
        .byte   $89
        and     $83
        txs
        .byte   $74
        .byte   $5C
        .byte   $5C
        txs
        .byte   $9B
        eor     $745C,x
        .byte   $9B
        .byte   $5C
        .byte   $5C
        txs
        .byte   $74
        eor     $9A5C,x
        .byte   $9B
        .byte   $5C
        .byte   $5C
        .byte   $74
        .byte   $9B
        eor     $9A5C,x
        sty     $5C5D
        ror     $93,x
        ror     $8C,x
        txs
        .byte   $9B
        .byte   $5C
        ora     $9B74
        .byte   $A3
        ora     (L000C,x)
        .byte   $5C
        .byte   $93
        ora     ($5C,x)
        .byte   $5C
        ror     $01,x
        eor     $930D,x
        ora     ($74,x)
        ora     ($16,x)
        ora     ($76,x)
        .byte   $74
        txs
        asl     $92,x
        ora     ($74,x)
        .byte   $9B
        ror     $92,x
        ror     $74,x
        ror     $01,x
        eor     $745C,x
        ora     ($5C,x)
        .byte   $5C
        .byte   $74
        ora     ($5D,x)
        .byte   $5C
        .byte   $74
        asl     $74,x
        .byte   $9B
        asl     $75,x
        ror     $7D,x
        ror     $01,x
        .byte   $5C
        lda     ($A3,x)
        .byte   $9B
        .byte   $74
        ora     ($9A,x)
        .byte   $74
        ror     $16,x
        .byte   $5C
        .byte   $5C
        ror     $93,x
        ror     $92,x
        txs
        .byte   $74
        eor     $935C,x
        ora     ($8A,x)
        .byte   $8B
        .byte   $80
        sta     ($76,x)
        asl     $9A,x
        .byte   $92
        ror     $74,x
        ror     $16,x
        txs
        .byte   $92
        ror     $74,x
        txs
        .byte   $9B
        ror     $16,x
        .byte   $74
        .byte   $9B
        ror     $7F01,x
        asl     $74,x
        ora     ($76,x)
        ora     ($16,x)
        ora     ($8D,x)
        ora     ($8D,x)
        ora     ($5B,x)
        .byte   $53
        ora     ($01,x)
        .byte   $83
        ora     ($8B,x)
        .byte   $53
        asl     $01,x
        ldy     $01,x
        tay
        bit     $B0
        bit     $01B6
        ldx     $01,y
        .byte   $0C
        lda     ($C5,x)
        .byte   $93
        ror     $CD,x
        ror     $CD,x
        dec     LCE01
        ora     ($90,x)
        ora     ($98,x)
        ora     ($76,x)
        bcc     LFB19
        tya
        .byte   $32
        .byte   $9B
        eor     $9A5C,x
        iny
        eor     LC95C,x
        .byte   $9B
        .byte   $5C
        .byte   $5C
        txs
        .byte   $32
        .byte   $5C
        .byte   $5C
        ror     $C5,x
        ror     $CD,x
        dec     $01
        dec     $7401
        asl     $74,x
        ora     ($9A,x)
        iny
        ror     $96,x
        cmp     #$9B
        .byte   $97
        ora     ($16,x)
        ror     $7F76,x
        ror     $9E,x
        ror     $3A,x
        .byte   $9F
        ora     ($3B,x)
        ora     ($00,x)
        brk
        brk
        brk
        jsr     L28C7
        .byte   $B7
        brk
        brk
        brk
        brk
        brk
        ora     ($48,x)
        lsr     a
        rol     $14
        cpy     #$02
        brk
        ora     ($68),y
        ror     a
        .byte   $0C
        ora     $12E0
        .byte   $04
        asl     $00
        brk
        .byte   $80
        sta     ($C4,x)
        brk
        bit     $25
        brk
        rts

        ldy     #$55
        bvc     LFB00
LFB00:  asl     a
        php
        ora     ($01,x)
        dey
        txa
        .byte   $E7
        .byte   $02
        rol     a
        plp
        jmp     (LA86E)

        tax
        brk
        rti

        ora     ($01,x)
        .byte   $22
        brk
        rol     $16
        asl     $14,x
        brk
LFB19:  brk
        bpl     LFB3F
        .byte   $14
        ora     ($11),y
        ora     ($64),y
        ror     $66
        ora     ($97,x)
        ora     ($00,x)
        brk
        .byte   $64
        ror     $66
        ora     ($97,x)
        .byte   $E7
        inc     $4E
        .byte   $E2
        inx
        brk
        lsr     LCF0A
        .byte   $FC
        inc     LC3E2,x
        brk
        ora     ($0D,x)
        .byte   $0E
        lsr     a
LFB3F:  cmp     $1626
        asl     $16,x
        bit     $04
        ror     a
LFB47:  sbc     $0424
        asl     $04
        bit     $06
        .byte   $5A
        cmp     LCAC8,x
        sty     $86
        .byte   $E2
        .byte   $54
        inx
        brk
        brk
        brk
        ldy     $A6
        .byte   $22
        inc     $54,x
        inc     $8C,x
        txa
        sta     a:$88
        brk
        brk
        brk
        .byte   $AC
        tax
LFB6A:  lda     $E2A8
        .byte   $D7
        ora     ($C3,x)
        .byte   $42
        brk
        bmi     LFB6A
        dec     $1000,x
        jmp     L0065

        inx
        ora     ($28,x)
        rol     a
        bpl     LFB47
        ldx     #$0E
        rol     $A2F6
        brk
        sty     $86
        nop
        brk
        .byte   $D7
        ora     ($00,x)
        brk
        brk
        brk
        .byte   $FA
        brk
        .byte   $D7
        jmp     (L0101)

        ora     ($A3,x)
        .byte   $CF
        ora     ($84,x)
        stx     $00
        brk
        brk
        ora     ($00,x)
        brk
        ora     ($E7,x)
        brk
        ora     ($F7,x)
        inc     LE301,x
        ror     a:$E7
        ora     ($E3,x)
        ora     ($00,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($49,x)
        .byte   $4B
        .byte   $27
        ora     L00C1,x
        .byte   $03
        brk
        ora     ($69),y
        .byte   $6B
        ora     LE10F
        .byte   $13
        ora     $07
        adc     ($00,x)
        .byte   $80
        .byte   $80
        cmp     $00
        and     $26
        brk
        adc     ($A1,x)
        lsr     $01,x
        brk
        .byte   $0B
        ora     #$4D
        ora     ($89,x)
        .byte   $8B
        ldx     #$63
        .byte   $2B
        and     #$6D
        .byte   $6F
        lda     #$AB
        brk
        eor     ($01,x)
        ora     ($23,x)
        brk
        asl     $27,x
        asl     $11,x
        brk
        brk
        .byte   $22
        bpl     LFC2E
        ora     $11,x
        ora     $66,x
        ror     $67
        cpx     $01
        cpx     $00
        brk
        ror     $66
        .byte   $67
        sbc     $01
        .byte   $01
LFC2E:  ora     ($01,x)
        .byte   $E3
        sbc     #$00
        ora     ($CE,x)
        sbc     LFFFD,x
        dec     $E3
        brk
        lsr     $0D0D
        .byte   $CC
        .byte   $49
LFC40:  asl     $20,x
        asl     $27,x
        .byte   $07
        ora     $EC,x
        adc     #$07
        ora     $07
        ora     $05,x
        ora     $DC,x
        eor     LCBC9,y
        sta     $87
        .byte   $E3
        dec     $E9
        brk
        brk
        brk
        lda     $A7
        .byte   $22
        dec     $E3
        .byte   $E3
        .byte   $89
        stx     $8F8B
        brk
        brk
        brk
        brk
        lda     #$AE
        .byte   $AB
        .byte   $AF
        dec     $01
        .byte   $C2
        .byte   $E3
        jmp     LF700

        .byte   $F7
        .byte   $DF
        brk
        .byte   $42
        bpl     LFC40
        brk
        sbc     #$01
        .byte   $29
LFC7D:  .byte   $2B
        adc     $10
        ldx     #$0F
        .byte   $2F
        .byte   $E3
        .byte   $A3
        brk
        sta     $87
        brk
        brk
        ora     ($C2,x)
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $6F
        .byte   $C2
        rol     $3F3E
        ora     ($01,x)
        dec     $8785
        brk
        brk
        brk
        ldx     #$00
        brk
        cpx     $01
        brk
        inc     $01,x
        ora     ($E2,x)
        ora     ($E4,x)
        jmp     (LE200)

        ora     ($FD,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFCD2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($58,x)
        .byte   $5A
        bit     $14
        bne     LFCFA
        brk
        ora     ($5A),y
        cli
        .byte   $1C
        ora     $32F0,x
        ora     ($11),y
        brk
        brk
        bcc     LFD3B
        .byte   $D4
        brk
        .byte   $14
        .byte   $11
LFCFA:  brk
        bvs     LFC7D
        sta     ($50,x)
        brk
        .byte   $1A
        clc
        .byte   $5C
        ora     ($98,x)
        txs
        .byte   $E7
        .byte   $12
        .byte   $3A
        sec
        .byte   $7C
        ror     $BAB8,x
        brk
        rti

        .byte   $62
        ora     ($B4,x)
        brk
        bit     $11
        ora     ($24),y
        brk
        brk
        bpl     LFCD2
        .byte   $14
        ora     ($34),y
        ora     ($64),y
        ror     $66
        ora     ($97,x)
        ora     ($00,x)
        brk
        .byte   $74
        ror     $76,x
        ora     ($96,x)
        .byte   $E7
LFD2E:  .byte   $E7
        ora     ($7A,x)
        .byte   $73
        brk
        ora     ($1A,x)
        clc
        .byte   $3A
        sec
        .byte   $7A
        .byte   $7A
        brk
LFD3B:  ora     ($1D,x)
        asl     LDD5A,x
        .byte   $14
        ora     ($11),y
        ora     ($14),y
        ora     ($58),y
        cmp     $2136,y
        .byte   $34
        .byte   $34
        .byte   $14
        ora     ($6A),y
        sbc     a:$00
        sty     $43,x
        .byte   $F2
        .byte   $F4
        inx
        brk
        .byte   $DA
        .byte   $EB
        clv
        tsx
        .byte   $22
        .byte   $F2
        .byte   $F4
        .byte   $F2
        .byte   $9C
        txs
        sta     a:$98,x
        brk
        brk
        brk
        ldy     $BDBA,x
        clv
        .byte   $F2
        .byte   $D7
        ora     ($D3,x)
        .byte   $52
        brk
        .byte   $F2
        .byte   $F4
        inc     $1000
        .byte   $53
        sed
LFD79:  brk
        bcs     LFD2E
        .byte   $82
        .byte   $92
        bpl     LFD79
        ldx     #$1E
        rol     $A2F4
        brk
        pha
        lsr     a
        .byte   $FA
        brk
        .byte   $D7
        .byte   $5C
        brk
        brk
        brk
        brk
        .byte   $FA
        brk
        .byte   $D7
        .byte   $7C
        ora     ($01,x)
        ora     ($A3,x)
        bit     $943C
        bit     $00
        brk
        brk
        ora     ($00,x)
        brk
        ora     ($E7,x)
        brk
        ora     ($F5,x)
        .byte   $A3
        .byte   $B2
        .byte   $F3
        ror     a:$E7,x
        ora     ($F3,x)
        ora     ($00,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($59,x)
        .byte   $5B
        and     $25
        cmp     ($13),y
        brk
        ora     ($5B),y
        eor     $1F1D,y
        sbc     ($33),y
        ora     ($17),y
        adc     ($00),y
        sta     ($46),y
        cmp     $00,x
        ora     ($17),y
        brk
        adc     ($80),y
        .byte   $80
        ora     ($00,x)
LFE00:  .byte   $1B
        ora     $5F5D,y
        sta     $A29B,y
        .byte   $13
        .byte   $3B
        and     $7F7D,y
        lda     $BB,y
        eor     ($FB,x)
        .byte   $FB
        ldx     $00,y
        ora     ($25),y
        ora     ($11),y
        brk
        brk
        ldy     $10,x
        ora     ($25),y
        .byte   $34
        and     $66
        ror     $67
LFE23:  cpx     $01
        cpx     $00
        brk
        ror     $76,x
        .byte   $77
        cpx     $01
        ora     ($01,x)
        .byte   $4F
        .byte   $7B
        lsr     $4F00,x
        .byte   $1B
        ora     $393B,y
        .byte   $7B
        .byte   $7B
        brk
        ora     ($1D,x)
        ora     $59DC,x
        ora     ($17),y
        ora     ($25),y
        .byte   $17
        and     $D8
        .byte   $5B
        and     $72,x
        and     $37,x
        ora     ($25),y
        cpx     a:$69
        brk
        sta     $44,x
        .byte   $F3
        dec     $E9,x
        brk
        .byte   $DB
        brk
        lda     $B7,x
        .byte   $22
        dec     $F3,x
        .byte   $F3
        sta     $9B9E,y
        .byte   $9F
        brk
        brk
        brk
        brk
        lda     $BBBE,y
        .byte   $BF
        dec     $01,x
        .byte   $D2
        .byte   $F3
        .byte   $53
        brk
LFE72:  .byte   $F3
        sbc     $EF,x
        brk
        .byte   $52
        bpl     LFE72
        brk
        lda     ($B3),y
        .byte   $83
        .byte   $93
        sed
        bpl     LFE23
        .byte   $1F
        .byte   $2F
        .byte   $F3
        .byte   $A3
        brk
        eor     #$4B
        brk
        brk
        .byte   $5F
        .byte   $D2
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $7F
        .byte   $D2
        rol     $3F3E,x
        ora     ($2D,x)
        and     $4425,x
        brk
        brk
        brk
        ldx     #$00
        brk
        cpx     $5C
        brk
        .byte   $F4
        ora     ($01,x)
        .byte   $F2
        .byte   $B3
        cpx     $7C
        brk
        .byte   $F2
        ora     ($A2,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        and     ($31),y
        and     ($31),y
        .byte   $43
        ora     ($00,x)
        and     ($31),y
        and     ($12),y
        .byte   $12
        .byte   $43
        ora     ($31,x)
        and     ($00),y
        brk
        and     ($31),y
        .byte   $23
        brk
        and     ($31),y
        brk
        brk
        and     ($31),y
        brk
        brk
        brk
        brk
LFF02:  brk
        brk
LFF04:  .byte   $33
        .byte   $33
LFF06:  brk
        .byte   $01
LFF08:  brk
        brk
        brk
        brk
        .byte   $33
        .byte   $33
        brk
        ora     ($00,x)
        brk
        ora     ($00,x)
        and     ($31),y
        and     ($31),y
        brk
        brk
        .byte   $01
LFF1B:  ora     ($31,x)
LFF1D:  and     ($31),y
        .byte   $31
LFF20:  .byte   $32
        .byte   $32
        .byte   $32
        brk
        brk
        brk
        ora     ($01,x)
        .byte   $32
        .byte   $32
        .byte   $32
        brk
        brk
        brk
        brk
        ora     ($00,x)
        brk
        brk
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
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        ora     ($01,x)
        eor     ($41,x)
        brk
        brk
        brk
        brk
        ora     ($01,x)
        .byte   $33
        .byte   $33
        brk
        brk
        brk
        brk
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        bmi     LFF96
        bmi     LFF98
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        brk
        brk
        brk
        brk
        ora     ($01,x)
        brk
        brk
        .byte   $23
        brk
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        brk
        brk
        ora     ($01,x)
        brk
        .byte   $12
        brk
        brk
        brk
        brk
        eor     ($41,x)
        .byte   $53
        brk
        brk
        brk
        ora     ($01,x)
        ora     ($00,x)
        .byte   $53
        brk
        brk
        brk
        brk
        brk
LFF96:  brk
        brk
LFF98:  brk
        brk
        eor     ($41,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LFFFD:  .byte   $FF
        cpx     #$FF
