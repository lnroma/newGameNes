; da65 V2.18 - N/A
; Created:    2023-07-17 12:53:40
; Input file: code_bank_6.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0F97           := $0F97
L1011           := $1011
L1056           := $1056
L106E           := $106E
L2240           := $2240
L270D           := $270D
L450D           := $450D
L4D4D           := $4D4D
L7E6D           := $7E6D
L8008           := $8008
L8039           := $8039
L808B           := $808B
L813B           := $813B
L819B           := $819B
L81BF           := $81BF
L81C0           := $81C0
L822E           := $822E
L836B           := $836B
L83C0           := $83C0
L83DB           := $83DB
L84C4           := $84C4
L84F2           := $84F2
L8508           := $8508
L851E           := $851E
L85B3           := $85B3
L8634           := $8634
L8695           := $8695
L86F8           := $86F8
L8715           := $8715
L8776           := $8776
L87FE           := $87FE
L880E           := $880E
L8820           := $8820
L8829           := $8829
L882C           := $882C
L8837           := $8837
L88CE           := $88CE
L88FF           := $88FF
L890B           := $890B
L8952           := $8952
L8957           := $8957
L8982           := $8982
L89D0           := $89D0
L8A1A           := $8A1A
L8B34           := $8B34
L8BA1           := $8BA1
L8BDA           := $8BDA
L8C7D           := $8C7D
L8CDB           := $8CDB
L8CF1           := $8CF1
L8D2A           := $8D2A
L8D3F           := $8D3F
L8D5D           := $8D5D
L8F36           := $8F36
L8F72           := $8F72
L8FA6           := $8FA6
L8FD4           := $8FD4
L8FED           := $8FED
L9028           := $9028
L9030           := $9030
L90B6           := $90B6
L917C           := $917C
L91AF           := $91AF
L9201           := $9201
L9210           := $9210
L9233           := $9233
L9242           := $9242
L9379           := $9379
L93F5           := $93F5
L9405           := $9405
L94B1           := $94B1
L94FA           := $94FA
L9532           := $9532
L95A6           := $95A6
L95FB           := $95FB
L9648           := $9648
L96F7           := $96F7
L9720           := $9720
L97B4           := $97B4
L97E0           := $97E0
L98B0           := $98B0
L98BB           := $98BB
L9939           := $9939
L999D           := $999D
L99BC           := $99BC
L9A3F           := $9A3F
L9A88           := $9A88
L9A93           := $9A93
L9AF2           := $9AF2
L9C2E           := $9C2E
L9C67           := $9C67
L9D3A           := $9D3A
L9E3C           := $9E3C
LA020           := $A020
LA05C           := $A05C
LA10A           := $A10A
LA120           := $A120
LA153           := $A153
LA26A           := $A26A
LA345           := $A345
LA3A0           := $A3A0
LA3D4           := $A3D4
LA3EC           := $A3EC
LA3FB           := $A3FB
LA46B           := $A46B
LA4C4           := $A4C4
LA5BF           := $A5BF
LA672           := $A672
LA688           := $A688
LA817           := $A817
LA88F           := $A88F
LA923           := $A923
LA975           := $A975
LAAAF           := $AAAF
LAB67           := $AB67
LAB82           := $AB82
LAC05           := $AC05
LACE0           := $ACE0
LAD1A           := $AD1A
LAD3F           := $AD3F
LAD57           := $AD57
LADC1           := $ADC1
LADCA           := $ADCA
LAE2C           := $AE2C
LAE62           := $AE62
LAF32           := $AF32
LAFCB           := $AFCB
LB0EC           := $B0EC
LB0FA           := $B0FA
LB27F           := $B27F
LB3B6           := $B3B6
LB3FC           := $B3FC
LB42F           := $B42F
LB4F5           := $B4F5
LB521           := $B521
LB5E8           := $B5E8
LBD21           := $BD21
        lda     #$40
        sta     $99
        ldx     #$01
        stx     $4D
        lda     $04D0,x
        bpl     LC027
        ldy     $04E0,x
        cpy     #$47
        bcs     LC027
        lda     $825F,y
        sta     L0000
        lda     $82A7,y
        sta     $01
        lda     #$80
        pha
        lda     #$26
        pha
        jmp     (L0000)

LC027:  inc     $4D
        ldx     $4D
        cpx     #$10
        bne     LC032
        jmp     L81BF

LC032:  lda     $0570,x
        and     #$40
        bne     LC03C
LC039:  jmp     L813B

LC03C:  lda     $04C0,x
        beq     LC05E
        lsr     a
        lsr     a
        lsr     a
        bcs     LC050
        lda     $0400,x
        ora     #$08
        sta     $0400,x
        bne     LC058
LC050:  lda     $0400,x
        and     #$F7
        sta     $0400,x
LC058:  dec     $04C0,x
        jmp     L8039

LC05E:  lda     $0400,x
        and     #$F7
        sta     $0400,x
        jsr     LFAAE
        bcs     LC039
        lda     $04E0,x
        cmp     #$34
        beq     LC079
        cmp     #$1E
        beq     LC079
        jmp     L808B

LC079:  ldy     $0F
        lda     $0510,y
        cmp     $0510,x
        bcs     LC090
        sec
        sbc     $0510,x
        cmp     #$FC
        bcs     LC090
        lda     $05A0,x
        bpl     LC096
LC090:  .byte   $20
        .byte   $C0
LC092:  sta     ($4C,x)
        .byte   $3B
        .byte   $81
LC096:  lda     $05A0,x
        beq     LC0F2
        lda     #$1D
        jsr     LF850
        ldy     $0F
        lda     $0420,y
        cmp     #$13
        beq     LC0CB
        cmp     #$14
        beq     LC0CB
        cmp     #$16
        beq     LC0CB
        cmp     #$19
        beq     LC0CB
        cmp     #$1A
        beq     LC0CB
        cmp     #$18
        beq     LC0C8
        cmp     #$17
        beq     LC0C5
        cmp     #$29
        beq     LC0C5
LC0C5:  dec     $05A0,x
LC0C8:  dec     $05A0,x
LC0CB:  dec     $05A0,x
        lda     $05A0,x
        bmi     LC0F2
        lda     #$0F
        sta     $04C0,x
        ldy     $0F
        lda     $04E0,y
        cmp     #$07
        beq     LC13B
        lda     $0420,y
        cmp     #$17
        beq     LC13B
        cmp     #$18
        beq     LC13B
        jsr     LF872
        jmp     L8008

LC0F2:  lda     $04E0,x
        cmp     #$05
        beq     LC16C
        ldy     $0F
        lda     $04E0,y
        cmp     #$07
        beq     LC110
        lda     $0420,y
        cmp     #$17
        beq     LC110
        cmp     #$18
        beq     LC110
        jsr     LF872
LC110:  lda     #$80
        sta     $04D0,x
        lda     #$00
        sta     $0570,x
        sta     $0540,x
        lda     #$FF
        sta     $0590,x
        lda     #$05
        sta     $04E0,x
        lda     #$44
        sta     $0550,x
        lda     #$03
        sta     $0560,x
        lda     #$80
        sta     $0530,x
        lda     #$1E
        jsr     LF850
LC13B:  lda     $7C
        bne     LC16C
        jsr     LFB7B
        bcs     LC16C
        lda     $0420
        cmp     #$04
        beq     LC16F
        cmp     #$0D
        beq     LC16F
LC14F:  lda     $0420,x
        cmp     #$3F
        bcc     LC16C
LC156:  lda     $50
        cmp     #$07
        beq     LC16C
        cmp     #$12
        beq     LC16C
        lda     #$15
        jsr     LF850
        lda     #$3C
        sta     $7C
        jsr     LF9C2
LC16C:  jmp     L8008

LC16F:  lda     $0420,x
        cmp     #$40
        beq     LC198
        cmp     #$4E
        beq     LC190
        cmp     #$9F
        beq     LC198
        cmp     #$7D
        beq     LC198
        cmp     #$62
        beq     LC198
        cmp     #$55
        beq     LC198
        cmp     #$A6
        beq     LC198
        bne     LC14F
LC190:  lda     $0580,x
        and     #$03
        jmp     L819B

LC198:  lda     $0580,x
        cmp     $52
        beq     LC156
        jsr     LF928
        cmp     #$08
        bcc     LC156
        lda     #$1A
        jsr     LF850
        lda     $04E0,x
        cmp     #$06
        beq     LC1BC
        lda     #$80
        sta     $04D0,x
        lda     #$06
        sta     $04E0,x
LC1BC:  jmp     L8008

        rts

        lda     $04E0,x
        cmp     #$0F
        beq     LC1E6
        cmp     #$17
        beq     LC1E6
        cmp     #$1D
        beq     LC1E6
        cmp     #$2A
        beq     LC1E6
        cmp     #$34
        beq     LC1E6
        cmp     #$30
        beq     LC1E6
        cmp     #$32
        beq     LC1E6
        cmp     #$42
        beq     LC1E6
        jmp     L81BF

LC1E6:  .byte   $A4
LC1E7:  .byte   $0F
        lda     $04E0,y
        cmp     #$1F
        beq     LC21C
        lda     $0420,y
        cmp     #$14
        beq     LC21D
        cmp     #$16
        beq     LC21D
        jsr     L822E
        lda     #$80
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
        jsr     LF850
LC21C:  rts

LC21D:  lda     #$00
        sta     $04D0,y
        sta     $0400,y
        sta     $04E0,y
        lda     #$FF
        sta     $0590,y
        rts

        ldy     $0F
        lda     $04E0,y
        cmp     #$1F
        beq     LC21C
        lda     $0580,y
        cmp     #$01
        beq     LC253
        cmp     #$02
        beq     LC259
        cmp     #$09
        beq     LC253
        cmp     #$05
        beq     LC253
        cmp     #$0A
        beq     LC259
        cmp     #$06
        beq     LC259
        rts

LC253:  lda     #$0A
        sta     $0580,y
        rts

LC259:  lda     #$09
        sta     $0580,y
        rts

        .byte   $EF
        beq     LC1E7
        .byte   $1C
        ldy     LE2A2,x
        .byte   $FF
        .byte   $37
        .byte   $1A
        .byte   $80
        .byte   $DA
        .byte   $34
        .byte   $34
        .byte   $AF
        .byte   $A3
        ror     a
        .byte   $D3
        adc     $E6
        inc     $1E
        .byte   $D3
        bit     $0B
        inc     $4B
        clv
        inc     $EE
        ldx     $0312,y
        jmp     LC94C

        txa
        ldy     $9C,x
        cmp     $85BB,y
        lda     $82BF,x
        rol     $BE0A,x
        .byte   $5B
        .byte   $3F
        .byte   $07
        .byte   $D1
LC293:  .byte   $F2
        bit     $5D8F
        asl     LCB64,x
        and     ($BC),y
        .byte   $D3
        .byte   $8F
        .byte   $22
        .byte   $FC
        .byte   $FC
        .byte   $83
        bvs     LC293
        .byte   $EF
        .byte   $22
        .byte   $EF
        .byte   $82
        .byte   $82
        .byte   $83
        sty     $85
        stx     $87
        sta     $88
        txa
        .byte   $8B
        .byte   $8B
        sty     $8D8C
        stx     $9090
        .byte   $92
        .byte   $92
        .byte   $92
        ldy     $90
        sty     $95,x
LC2C0:  .byte   $92
        sta     $95,x
        .byte   $92
        tya
        txs
        dey
        txs
        .byte   $9F
        .byte   $9F
        .byte   $9B
        .byte   $9C
        ldx     $A0
        .byte   $A7
        tay
        .byte   $9E
        sta     $AAA9,x
        lda     $A0
        .byte   $AB
        lda     $B088
        tax
        lda     $A2AC
        stx     $A4,y
        lda     ($9F,x)
        ldx     $AE
        lda     ($A2),y
        txa
        .byte   $B2
        .byte   $B2
        ldy     $B5,x
        .byte   $82
        .byte   $82
        tya
        .byte   $82
        rts

        lda     $04D0,x
        and     #$0F
        bne     LC30D
        .byte   $9D
        .byte   $30
LC2F9:  ora     $BD
        jsr     $C904
        clc
        beq     LC305
        lda     #$04
        bne     LC307
LC305:  lda     #$06
LC307:  sta     $0540,x
        inc     $04D0,x
LC30D:  lda     $0420,x
        cmp     #$14
        beq     LC381
        ldy     #$01
        lda     $0580,x
        and     #$01
        beq     LC342
        lda     $2B
        cmp     #$04
        bne     LC32D
        lda     $04F0,x
        cmp     #$F0
        bcc     LC32D
        jmp     LF4FD

LC32D:  lda     $04F0,x
        sec
        sbc     $FC
        cmp     #$FC
        bcc     LC33A
        jmp     LFA9A

LC33A:  lda     #$0C
        jsr     LF200
        jmp     L836B

LC342:  lda     $2B
        cmp     #$04
        bne     LC352
        lda     $04F0,x
        cmp     #$10
        bcs     LC352
LC34F:  jmp     LF51B

LC352:  lda     $04F0,x
        sec
        sbc     $FC
        cmp     #$08
        bcs     LC366
        lda     $04F0
        cmp     #$04
        bcc     LC34F
        jmp     LFA9A

LC366:  lda     #$0F
        jsr     LF254
        lda     $10
        cmp     #$03
        bcc     LC381
        cmp     #$07
        beq     LC381
        lda     $0420,x
        cmp     #$18
        beq     LC382
        lda     #$14
        jsr     LFA6C
LC381:  rts

LC382:  jmp     LFA9A

        lda     $04D0,x
        and     #$0F
        bne     LC3A9
        sta     $0540,x
        sta     $0550,x
        lda     #$FE
        jsr     L8982
        lda     #$FE
        jsr     L890B
        inc     $04D0,x
        lda     #$80
        sta     $0530,x
        lda     #$03
        sta     $0560,x
LC3A9:  lda     $0420,x
        cmp     #$14
        beq     LC3DA
        lda     $0580,x
        and     #$01
        beq     LC3BD
        jsr     LF4FD
        jmp     L83C0

LC3BD:  jsr     LF51B
        ldy     #$01
        lda     #$12
        jsr     LF2D7
        bcc     LC3DA
        lda     #$14
        jsr     LFA6C
        lda     #$01
        sta     L0000
        jsr     L83DB
        lda     #$24
        jsr     LF850
LC3DA:  rts

LC3DB:  jsr     LFA5C
        bcs     LC3DA
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$01
        sta     $0570,y
        lda     #$18
        jsr     LFA84
        lda     #$01
        sta     $04E0,y
        ldy     L0000
        lda     $841A,y
        ldy     $0F
        sta     $0580,y
        dec     L0000
        lda     L0000
        bpl     LC3DB
        rts

        .byte   $02
        ora     ($BD,x)
        bne     LC423
        and     #$0F
        bne     LC443
LC423:  sta     $0560,x
        sta     $0540,x
        sta     $0530,x
        lda     #$01
        sta     $0550,x
        lda     #$FD
        jsr     L8982
        lda     #$FD
        jsr     L890B
        inc     $04D0,x
        lda     #$FF
        sta     $0480,x
LC443:  lda     $0420,x
        cmp     #$14
        bne     LC463
        lda     $0410,x
        cmp     #$04
        beq     LC454
        jmp     L84F2

LC454:  lda     #$17
        jsr     LFA6C
        lda     #$99
        sta     $0530,x
        lda     #$03
        sta     $0540,x
LC463:  lda     $04D0,x
        and     #$02
        beq     LC46D
        jmp     L851E

LC46D:  ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LC49B
        lda     $2B
        cmp     #$04
        bne     LC486
        lda     $04F0,x
        cmp     #$F0
        bcc     LC486
        jmp     LF4FD

LC486:  lda     $04F0,x
        sec
        sbc     $FC
        cmp     #$F4
        bcc     LC493
        jmp     LFA9A

LC493:  lda     #$18
        jsr     LF200
        jmp     L84C4

LC49B:  lda     $2B
        cmp     #$04
        bne     LC4AB
        lda     $04F0,x
        cmp     #$10
        bcs     LC4AB
LC4A8:  jmp     LF51B

LC4AB:  lda     $04F0,x
        sec
        sbc     $FC
        cmp     #$10
        bcs     LC4BF
        lda     $04F0
        cmp     #$2A
        bcc     LC4A8
        jmp     LFA9A

LC4BF:  lda     #$1B
        jsr     LF254
        lda     $66
        bpl     LC4DF
        lda     $0580,x
        and     #$01
        beq     LC4D8
        lda     $04F0,x
        cmp     #$F0
        bcs     LC4F1
        bcc     LC4DF
LC4D8:  lda     $04F0,x
        cmp     #$10
        bcc     LC4F1
LC4DF:  lda     $10
        cmp     #$03
        bcc     LC4F1
        cmp     #$07
        beq     LC4F1
        lda     #$84
        sta     $0570,x
        inc     $04D0,x
LC4F1:  rts

        ldy     #$01
        lda     $0580,x
        and     #$01
        beq     LC503
        lda     #$0C
        jsr     LF200
        jmp     L8508

LC503:  lda     #$0F
        jsr     LF254
        lda     $10
        cmp     #$03
        bne     LC4F1
        lda     #$17
        jsr     LFA6C
        lda     #$00
        sta     $0570,x
        lda     #$83
        sta     $04D0,x
        rts

        lda     $04D0,x
        and     #$0F
        cmp     #$03
        bne     LC52A
        jmp     L85B3

LC52A:  jsr     LF928
        cmp     #$0C
        bcs     LC542
        jsr     LF919
        cmp     #$0E
        bcs     LC542
        lda     $50
        beq     LC53E
        bne     LC542
LC53E:  inc     $04D0,x
        rts

LC542:  cpx     #$02
        beq     LC57C
        lda     $04D2
        bpl     LC57C
        lda     $04F3
        sec
        sbc     $04F2
        pha
        lda     $0503
        sbc     $0502
        pla
        bcs     LC561
        eor     #$FF
        adc     #$01
        clc
LC561:  cmp     #$18
        bcs     LC57C
        lda     $0512
        sec
        sbc     $0513
        bcs     LC573
        eor     #$FF
        adc     #$01
        clc
LC573:  cmp     #$08
        bcs     LC57C
        lda     #$83
        sta     $04D2
LC57C:  lda     $04D0,x
        and     #$0F
        cmp     #$03
        beq     LC5B3
        lda     $0480,x
        bne     LC58E
LC58A:  inc     $04D0,x
        rts

LC58E:  jsr     LF928
        cmp     #$10
        bcs     LC5A3
        lda     $0510,x
        cmp     #$10
        bcs     LC5A3
        lda     $0510
        cmp     #$EC
        bcs     LC58A
LC5A3:  dec     $0480,x
        lda     $0480,x
        cmp     #$78
        bne     LC5BB
        lda     #$29
        jsr     LFA6C
        rts

LC5B3:  lda     #$00
        sta     $0570,x
        jsr     LF5C9
LC5BB:  rts

        lda     $04D0,x
        and     #$0F
        bne     LC5E6
        sta     L0000
        ldy     #$04
LC5C7:  lda     $04D0,y
        bmi     LC5CE
        inc     L0000
LC5CE:  dey
        cpy     #$01
        bne     LC5C7
        lda     L0000
        cmp     #$02
        bne     LC5FE
        lda     #$FE
        jsr     L8982
        lda     #$FE
        jsr     L890B
        inc     $04D0,x
LC5E6:  lda     $0410,x
        cmp     #$04
        bne     LC5FE
        lda     $0430,x
        cmp     #$02
        bne     LC5FE
        lda     #$01
        sta     L0000
        jsr     L8634
        jsr     LFA9A
LC5FE:  rts

        lda     $0580,x
        cmp     #$09
        beq     LC619
        cmp     #$05
        beq     LC622
        cmp     #$0A
        beq     LC62B
        cmp     #$0A
        jsr     LF51B
        jsr     LF2A6
        jmp     LF539

LC619:  jsr     LF4FD
        jsr     LF24B
        jmp     LF55E

LC622:  jsr     LF4FD
        jsr     LF24B
        jmp     LF539

LC62B:  jsr     LF51B
        jsr     LF2A6
        jmp     LF55E

LC634:  jsr     LFA5C
        bcs     LC69B
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$01
        sta     $0570,y
        lda     #$2E
        sta     $0550,y
        sta     $0530,y
        lda     #$03
        sta     $0560,y
        sta     $0540,y
        lda     #$07
        sta     $04E0,y
        ldy     L0000
        lda     $86A0,y
        ldy     $0F
        jsr     LFA84
        lda     $0580,x
        and     #$02
        beq     LC68B
        ldy     L0000
        lda     $869C,y
        ldy     $0F
        sta     $0580,y
        jmp     L8695

LC68B:  ldy     L0000
        lda     $869E,y
        ldy     $0F
        sta     $0580,y
        dec     L0000
        lda     L0000
        bpl     LC634
LC69B:  rts

        asl     $0A
        ora     $09
        .byte   $1A
        ora     LD0BD,y
        .byte   $04
        and     #$0F
        bne     LC6C6
        inc     $04D0,x
        lda     $0420,x
        cmp     #$96
        beq     LC6C6
        cmp     #$61
        beq     LC6C6
        cmp     #$45
        beq     LC6C6
        cmp     #$46
        beq     LC6C6
        cmp     #$56
        beq     LC6C6
        jsr     L8715
LC6C6:  jsr     LF869
        lda     $0420,x
        cmp     #$A0
        beq     LC6EB
        cmp     #$7E
        beq     LC6EF
        cmp     #$7F
        beq     LC6EF
        cmp     #$69
        beq     LC6F3
        cmp     #$6B
        beq     LC6F3
        cmp     #$6A
        beq     LC6F3
        cmp     #$72
        beq     LC6F3
        jmp     L86F8

LC6EB:  lda     #$A2
        bne     LC6F5
LC6EF:  lda     #$44
        bne     LC6F5
LC6F3:  lda     #$BA
LC6F5:  jsr     LFA6C
        lda     $04D0,x
        and     #$02
        bne     LC711
        lda     $0420,x
        cmp     #$5F
        bne     LC711
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        inc     $04D0,x
LC711:  jmp     L87FE

LC714:  rts

        jsr     LFA4C
        bcs     LC714
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$06
        sta     $0570,y
        lda     #$00
        sta     $05A0,y
        lda     $0420,x
        cmp     #$38
        bne     LC75F
        lda     $E5
        adc     $E6
        sta     $E6
        cmp     #$50
        bcc     LC7A1
        and     #$1F
        tay
        sty     $0E
        lda     $87C2,y
        ldy     $0F
        jsr     LFA84
        jmp     L8776

LC75F:  lda     $E5
        adc     $E6
        sta     $E6
        cmp     #$7F
        bcc     LC7A1
        and     #$1F
        tay
        sty     $0E
        lda     $87A2,y
        ldy     $0F
        jsr     LFA84
        lda     #$0A
        sta     $04E0,y
        lda     #$AB
        sta     $0550,y
        lda     #$FF
        sta     $0560,y
        lda     $E7
        adc     $E6
        sta     $E6
        cmp     #$30
        beq     LC79C
        cmp     #$50
        beq     LC79C
        cmp     #$80
        beq     LC79C
        cmp     #$A0
        beq     LC79C
        rts

LC79C:  lda     #$1E
        jsr     LFA84
LC7A1:  rts

        .byte   $1C
        .byte   $23
        .byte   $22
        bit     $1C
        ora     $2325,x
        bit     $1C
        ora     $1D22,x
        and     $1D
        .byte   $22
        bit     $23
        .byte   $1C
        .byte   $22
        and     $23
        and     $1D
        ora     $2325,x
        .byte   $1C
        .byte   $23
        ora     $1D22,x
        .byte   $1C
        .byte   $23
        and     $24
        .byte   $1C
        ora     $1C25,x
        .byte   $1C
        .byte   $1C
        ora     $2425,x
        and     $1D
        and     $24
        .byte   $23
        .byte   $1C
        and     $1D
        .byte   $23
        and     $1D
        ora     $2325,x
        .byte   $1C
        .byte   $23
        ora     $1C25,x
        lda     $04D0,x
        and     #$0F
        bne     LC7FE
        sta     $0530,x
        lda     #$6E
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
LC7FE:  lda     $0580,x
        and     #$01
        beq     LC80B
        jsr     LF51B
        jmp     L880E

LC80B:  jsr     LF4FD
        jsr     LF5C9
        rts

        lda     $0580,x
        cmp     #$09
        beq     LC820
        cmp     #$0A
        beq     LC826
        jmp     L8820

LC820:  jsr     LF4FD
        jmp     L8829

LC826:  jsr     LF51B
        jmp     LF55E

        lda     #$00
        sta     $0530,y
        lda     #$03
        sta     $0540,y
        rts

        jsr     LFB7B
        bcs     LC856
        jsr     LFC29
        jsr     LFA9A
        lda     $0420,x
        sec
        sbc     #$22
        tay
        lda     $8857,y
        sta     L0000
        lda     $885E,y
        sta     $01
        jmp     (L0000)

LC856:  rts

        dec     $D6,x
        cmp     $65D9,y
        .byte   $89
        lda     $8989
        dey
        dey
        dey
        dey
        dey
        lda     #$18
        jsr     LF850
        lda     #$7B
        sta     $05BA
        lda     #$7D
        sta     $05BC
        lda     #$02
        sta     $54
        lda     #$0A
        jsr     L88FF
        lda     $05C0
        beq     LC8D8
        lda     #$02
        sta     $53
        jmp     L88CE

        lda     #$18
        jsr     LF850
        lda     #$7A
        sta     $05BA
        lda     #$7D
        sta     $05BC
        lda     #$01
        sta     $54
        lda     #$0A
        jsr     L88FF
        lda     $05C0
        beq     LC8D8
        lda     #$01
        sta     $53
        jmp     L88CE

        lda     #$18
        jsr     LF850
        lda     #$7C
        sta     $05BA
        lda     #$7D
        sta     $05BC
        lda     #$03
        sta     $54
        lda     #$0A
        jsr     L88FF
        lda     $05C0
        beq     LC8D8
        lda     #$03
        sta     $53
        lda     $60
        sta     $05BE
        lda     $61
        sta     $05C0
LC8D8:  rts

        lda     #$17
        jsr     LF850
        lda     $05C0
        beq     LC8E6
        jsr     L8957
LC8E6:  lda     $61
        bne     LC8F0
        lda     #$70
        .byte   $85
LC8ED:  rts

        sta     $61
LC8F0:  lda     $0420,x
        cmp     #$24
        bne     LC8FB
        lda     #$0A
        bne     LC90B
LC8FB:  lda     #$01
        bne     LC90B
        lda     $61
        bne     LC909
        lda     #$70
        sta     $60
        sta     $61
LC909:  lda     #$0A
LC90B:  tay
        and     #$80
        bne     LC925
        tya
        clc
        adc     $61
        cmp     #$7A
        bmi     LC922
        sbc     #$0A
        ldy     $60
        cpy     #$79
        beq     LC94E
        inc     $60
LC922:  sta     $61
        rts

LC925:  tya
        eor     #$FF
        sta     L0000
        cmp     #$7A
        beq     LC937
        lda     $61
        clc
        sbc     L0000
        cmp     #$70
        bpl     LC954
LC937:  adc     #$0A
        cmp     #$6F
        beq     LC94A
        sta     $01
        lda     $60
        cmp     #$70
        beq     LC94A
        dec     $60
        jmp     L8952

LC94A:  lda     #$70
LC94C:  bne     LC954
LC94E:  lda     #$79
        bne     LC954
        lda     $01
LC954:  sta     $61
        rts

        lda     $05C0
        bne     LC964
        lda     #$70
        sta     $05BE
        sta     $05C0
LC964:  lda     $0420,x
        cmp     #$24
        bne     LC96F
        lda     #$0A
        bne     LC982
LC96F:  lda     #$01
        bne     LC982
        lda     $05C0
        bne     LC980
        lda     #$70
        sta     $05BE
        sta     $05C0
LC980:  lda     #$0A
LC982:  tay
        and     #$80
        bne     LC9A0
        tya
        clc
        adc     $05C0
        cmp     #$7A
        bmi     LC99C
        sbc     #$0A
        ldy     $05BE
        cpy     #$79
        beq     LC9CC
        inc     $05BE
LC99C:  sta     $05C0
        rts

LC9A0:  tya
        eor     #$FF
        sta     L0000
        cmp     #$7A
        beq     LC9B3
        lda     $05C0
        clc
        sbc     L0000
        cmp     #$70
        bpl     LC9D2
LC9B3:  adc     #$0A
        cmp     #$6F
        beq     LC9C8
        sta     $01
        lda     $05BE
        cmp     #$70
        beq     LC9C8
        dec     $05BE
        jmp     L89D0

LC9C8:  lda     #$70
        bne     LC9D2
LC9CC:  lda     #$79
        bne     LC9D2
        lda     $01
LC9D2:  sta     $05C0
        rts

        lda     #$17
        jsr     LF850
        lda     $0420,x
        cmp     #$22
        bne     LC9F3
        lda     #$80
        sta     $05B2
        sta     $05B4
        lda     #$81
        sta     $05B6
        sta     $05B8
        rts

LC9F3:  lda     $05B6
        cmp     #$81
        beq     LCA00
        lda     #$81
        sta     $05B6
        rts

LCA00:  lda     $05B8
        cmp     #$81
        beq     LCA0D
        lda     #$81
        sta     $05B8
        rts

LCA0D:  lda     $05B4
        cmp     #$80
        beq     LCA19
        lda     #$80
        sta     $05B4
LCA19:  rts

        jsr     LFB7B
        bcs     LCA19
        jsr     LFC29
        jsr     LFA9A
        lda     $0420,x
        sec
        sbc     #$1C
        tay
        lda     $8A39,y
        sta     L0000
        lda     $8A3C,y
        sta     $01
        jmp     (L0000)

        .byte   $3F
        eor     $8AF4
        txa
        txa
        lda     #$17
        jsr     LF850
        jsr     L8B34
        lda     #$01
        sta     L0000
        bne     LCA59
        lda     #$17
        jsr     LF850
        jsr     L8B34
        lda     #$05
        sta     L0000
LCA59:  lda     $05C4
        cmp     #$79
        bne     LCA7D
        lda     $05C6
        cmp     #$79
        bne     LCA7D
        lda     $05C8
        cmp     #$79
        bne     LCA7D
        lda     $05CA
        cmp     #$79
        bne     LCA7D
        lda     $05CC
        cmp     #$79
        bne     LCA7D
        rts

LCA7D:  lda     $05CC
        and     #$0F
        clc
        adc     L0000
        cmp     #$0A
        bcs     LCA90
        clc
        adc     #$70
        sta     $05CC
        rts

LCA90:  sec
        sbc     #$0A
        clc
        adc     #$70
        sta     $05CC
        lda     $05CA
        and     #$0F
        clc
        adc     #$01
        cmp     #$0A
        bcs     LCAAC
        clc
        adc     #$70
        sta     $05CA
        rts

LCAAC:  lda     #$70
        sta     $05CA
        lda     $05C8
        and     #$0F
        clc
        adc     #$01
        cmp     #$0A
        bcs     LCAC4
        clc
        adc     #$70
        sta     $05C8
        rts

LCAC4:  lda     #$70
        sta     $05C8
        lda     $05C6
        and     #$0F
        clc
        adc     #$01
        cmp     #$0A
        bcs     LCADC
        clc
        adc     #$70
        sta     $05C6
LCADB:  rts

LCADC:  lda     #$70
        sta     $05C6
        lda     $05C4
        and     #$0F
        clc
        adc     #$01
        cmp     #$0A
        bcs     LCADB
        clc
        adc     #$70
        sta     $05C4
        rts

        lda     #$19
        jsr     LF850
        jsr     L8B34
        lda     $05E6
        and     #$0F
        clc
        adc     #$01
        cmp     #$0A
        bcs     LCB0F
        clc
        adc     #$70
        sta     $05E6
        rts

LCB0F:  lda     $05E4
        cmp     #$79
        beq     LCB33
        lda     #$70
        sta     $05E6
        lda     $05E4
        and     #$0F
        clc
        adc     #$01
        cmp     #$09
        bcs     LCB2E
        clc
        adc     #$70
        sta     $05E4
        rts

LCB2E:  lda     #$79
        sta     $05E6
LCB33:  rts

        jsr     LFA4C
        bcs     LCB7C
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     $0420,x
        sec
        sbc     #$1C
        tay
        lda     $8B7D,y
        ldy     $0F
        jsr     LFA84
        lda     #$0B
LCB64:  sta     $04E0,y
        lda     #$08
        sta     $0580,y
        lda     #$00
        sta     $0570,y
        sta     $05A0,y
        sta     $0560,y
        lda     #$80
        sta     $0550,y
LCB7C:  rts

        .byte   $1F
        jsr     LBD21
        bne     LCB87
        and     #$0F
        bne     LCB8F
LCB87:  lda     #$FF
        sta     $0480,x
        inc     $04D0,x
LCB8F:  lda     $04D0,x
        and     #$02
        bne     LCBA5
        ldy     #$02
        lda     #$28
        jsr     LF2D7
        lda     $10
        beq     LCBA4
        inc     $04D0,x
LCBA4:  rts

LCBA5:  lda     $0480,x
        bne     LCBAD
        jmp     LFA9A

LCBAD:  dec     $0480,x
        lda     $0480,x
        cmp     #$3C
        bcs     LCBCD
        and     #$01
        bne     LCBC5
        lda     $0400,x
        ora     #$08
        sta     $0400,x
        bne     LCBCD
LCBC5:  lda     $0400,x
        and     #$F7
        sta     $0400,x
LCBCD:  lda     $0420,x
        cmp     #$22
        bcc     LCBD7
        jmp     L8837

LCBD7:  jmp     L8A1A

        lda     $0580,x
        cmp     #$01
        beq     LCBFE
        cmp     #$02
        beq     LCC04
        cmp     #$08
        beq     LCC0A
        cmp     #$04
        beq     LCC0D
        cmp     #$09
        beq     LCC10
        cmp     #$05
        beq     LCC19
        cmp     #$0A
        beq     LCC22
        cmp     #$06
        beq     LCC2B
        rts

LCBFE:  jsr     LF24B
        jmp     LF4FD

LCC04:  jsr     LF2A6
        jmp     LF51B

LCC0A:  jmp     LF55E

LCC0D:  jmp     LF539

LCC10:  jsr     LF24B
        jsr     LF4FD
        jmp     LF55E

LCC19:  jsr     LF24B
        jsr     LF4FD
        jmp     LF539

LCC22:  jsr     LF2A6
        jsr     LF51B
        jmp     LF55E

LCC2B:  jsr     LF2A6
        jsr     LF51B
        jmp     LF539

        lda     $04D0,x
        and     #$0F
        bne     LCC51
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        lda     #$16
        sta     $0480,x
        jsr     L8D2A
        sta     $0490,x
LCC51:  lda     $04D0,x
        and     #$02
        bne     LCCBD
        lda     $0480,x
        beq     LCC90
        lda     $0420,x
        cmp     #$43
        beq     LCCA2
        dec     $0480,x
        ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LCC78
        lda     #$00
        jsr     LF200
        jmp     L8C7D

LCC78:  lda     #$03
        jsr     LF254
LCC7D:  lda     $05A0,x
        beq     LCC89
        jsr     LF928
        cmp     #$32
        bcs     LCC8F
LCC89:  jsr     LF81D
        inc     $04D0,x
LCC8F:  rts

LCC90:  lda     $0420,x
        cmp     #$43
        beq     LCCA2
        lda     #$43
        jsr     LFA6C
        lda     #$3C
        sta     $0480,x
        rts

LCCA2:  dec     $0480,x
        lda     $0480,x
        bne     LCC7D
        lda     #$41
        jsr     LFA6C
        lda     #$32
        sta     $0480,x
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        rts

LCCBD:  ldy     #$02
        lda     #$06
        jsr     LF2D7
        php
        bcc     LCCD6
        lda     $0420,x
        cmp     #$41
        beq     LCCDB
        lda     #$41
        jsr     LFA6C
        jmp     L8CDB

LCCD6:  lda     #$42
        jsr     LFA6C
LCCDB:  ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LCCEC
        lda     #$00
        jsr     LF200
        jmp     L8CF1

LCCEC:  lda     #$03
        jsr     LF254
        plp
        bcc     LCD05
        lda     $10
        cmp     #$03
        bcc     LCD05
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        jsr     L8D3F
LCD05:  lda     $04E0,x
        cmp     #$0C
        beq     LCD29
        lda     $0420,x
        cmp     #$41
        bne     LCD29
        lda     $0490,x
        bne     LCD26
        jsr     L8D2A
        sta     $0490,x
        lda     #$23
        jsr     LF850
        jsr     L8D5D
LCD26:  dec     $0490,x
LCD29:  rts

        lda     $E4
        adc     $E5
        sta     $E5
        and     #$07
        tay
        lda     $8D37,y
        rts

        asl     $1E3C,x
        sei
        sei
        asl     $1E3C,x
        lda     $E4
        adc     $E5
        sta     $E5
        and     #$03
        tay
        lda     $8D55,y
        sta     $0550,x
        lda     $8D59,y
        sta     $0560,x
        rts

        .byte   $DC
        sty     $8CDC
        .byte   $03
        ora     $03
        ora     $20
        jmp     LB0FA

        pha
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $8DAB,y
        pha
        lda     $0500,x
        adc     $8DAC,y
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
        lda     #$40
        jsr     LFA84
        lda     #$01
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        lda     #$81
        sta     $04D0,y
        jsr     L882C
        rts

        .byte   $12
        brk
        inc     $BDFF
        bne     LCDB6
        and     #$0F
        bne     LCDCE
LCDB6:  jsr     LF919
        cmp     #$08
        bcs     LCDCD
        lda     #$46
        jsr     LFA6C
        lda     #$49
        sta     $0570,x
        jsr     LF81D
        inc     $04D0,x
LCDCD:  rts

LCDCE:  lda     $0480,x
        bne     LCE2D
        ldy     $0490,x
        lda     $8E95,y
        asl     a
        tay
        lda     $8E55,y
        sta     $0550,x
        lda     $8E56,y
        sta     $0560,x
        lda     $8E75,y
        sta     $0530,x
        lda     $8E76,y
        sta     $0540,x
        lda     $0540,x
        bpl     LCE0D
        lda     $0530,x
        eor     #$FF
        clc
        adc     #$01
        sta     $0530,x
        lda     $0540,x
        eor     #$FF
        adc     #$00
        sta     $0540,x
LCE0D:  inc     $0490,x
        lda     $0490,x
        cmp     #$0E
        bne     LCE1C
        lda     #$00
        sta     $0490,x
LCE1C:  lda     $31
        cmp     #$05
        bne     LCE26
        lda     #$0C
        bne     LCE2A
LCE26:  lda     #$06
        bne     LCE2A
LCE2A:  sta     $0480,x
LCE2D:  dec     $0480,x
        lda     $0460,x
        clc
        adc     $0550,x
        sta     $0460,x
        lda     $0510,x
        adc     $0560,x
        sta     $0510,x
        lda     $0580,x
        and     #$02
        bne     LCE51
        jsr     LF4FD
        bcs     LCE54
        bcc     LCE54
LCE51:  jsr     LF51B
LCE54:  rts

        brk
        .byte   $FF
        .byte   $14
        .byte   $FF
        .byte   $4B
        .byte   $FF
        .byte   $9F
        .byte   $FF
        brk
        brk
        adc     (L0000,x)
        lda     L0000,x
        cpx     a:L0000
        ora     ($EC,x)
        brk
        lda     L0000,x
        adc     (L0000,x)
        brk
        brk
        .byte   $9F
        .byte   $FF
        .byte   $4B
        .byte   $FF
        .byte   $14
        .byte   $FF
        brk
        brk
        adc     (L0000,x)
        lda     L0000,x
        cpx     a:L0000
        ora     ($EC,x)
        brk
        lda     L0000,x
        adc     (L0000,x)
        brk
        brk
        .byte   $9F
        .byte   $FF
        .byte   $4B
        .byte   $FF
        .byte   $14
        .byte   $FF
        brk
        .byte   $FF
        .byte   $14
        .byte   $FF
        .byte   $4B
        .byte   $FF
        .byte   $9F
        .byte   $FF
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     $0F0E
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $06
        .byte   $07
        lda     $04D0,x
        and     #$0F
        bne     LCEBA
        sta     $0530,x
        lda     #$04
        sta     $0540,x
        lda     #$3C
        sta     $0480,x
        inc     $04D0,x
LCEBA:  lda     $04D0,x
        and     #$02
        bne     LCF3F
        lda     $0480,x
        bne     LCEDC
        lda     $0420,x
        cmp     #$5C
        beq     LCEE7
        cmp     #$5D
        beq     LCEFB
LCED1:  lda     #$5C
        jsr     LFA6C
        lda     #$02
        sta     $05A0,x
        rts

LCEDC:  dec     $0480,x
        jsr     LF928
        cmp     #$48
        bcc     LCED1
        rts

LCEE7:  lda     $0410,x
        cmp     #$01
        bne     LCEFA
        lda     $0430,x
        cmp     #$10
        bne     LCEFA
        lda     #$5D
        jsr     LFA6C
LCEFA:  rts

LCEFB:  lda     $0490,x
        bne     LCF0B
        lda     $04F0,x
        sec
        sbc     #$02
        sta     $04F0,x
        bne     LCF22
LCF0B:  lda     $0490,x
        cmp     #$04
        bne     LCF22
        lda     #$00
        sta     $0490,x
        lda     $04F0,x
        clc
        adc     #$02
        sta     $04F0,x
        bne     LCF25
LCF22:  inc     $0490,x
LCF25:  lda     $0410,x
        cmp     #$03
        bne     LCF90
        lda     $0430,x
        cmp     #$10
        bne     LCF90
        inc     $04D0,x
        lda     #$5E
        jsr     LFA6C
        jsr     L9028
        rts

LCF3F:  lda     $0420,x
        cmp     #$5B
        beq     LCF91
        cmp     #$5C
        beq     LCF51
        cmp     #$5D
        bne     LCF54
        jmp     L8FED

LCF51:  jmp     L8FD4

LCF54:  ldy     #$01
        lda     #$28
        jsr     LF2D7
        php
        ldy     #$01
        lda     $0580,x
        and     #$01
        beq     LCF6D
        lda     #$00
        jsr     LF200
        jmp     L8F72

LCF6D:  lda     #$03
        jsr     LF254
        plp
        bcc     LCF90
        lda     $10
        cmp     #$03
        bcc     LCF90
        lda     $05A0,x
        sta     $04A0,x
        lda     #$80
        sta     $05A0,x
        lda     #$5B
        jsr     LFA6C
        lda     #$01
        sta     $0490,x
LCF90:  rts

LCF91:  lda     $0490,x
        beq     LCFAB
        lda     $0580,x
        and     #$01
        beq     LCFA3
        jsr     LF51B
        jmp     L8FA6

LCFA3:  jsr     LF4FD
        lda     $0490,x
        bne     LCFD0
LCFAB:  lda     $0410,x
        cmp     #$0A
        bne     LCFD3
        lda     $0430,x
        cmp     #$04
        bne     LCFD3
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        lda     $04A0,x
        sta     $05A0,x
        lda     #$5C
        jsr     LFA6C
        jsr     LF808
        rts

LCFD0:  dec     $0490,x
LCFD3:  rts

        lda     $0410,x
        cmp     #$01
        bne     LCFD0
        lda     $0430,x
        cmp     #$10
        bne     LCFD0
        lda     #$5D
        jsr     LFA6C
        lda     #$00
        sta     $0490,x
        rts

        lda     $0490,x
        bne     LCFFD
        lda     $04F0,x
        sec
        sbc     #$02
        sta     $04F0,x
        bne     LD014
LCFFD:  lda     $0490,x
        cmp     #$04
        bne     LD014
        lda     #$00
        sta     $0490,x
        lda     $04F0,x
        clc
        adc     #$02
        sta     $04F0,x
        bne     LD017
LD014:  inc     $0490,x
LD017:  lda     $0410,x
        cmp     #$03
        bne     LCFD3
        lda     $0430,x
        cmp     #$10
        bne     LCFD3
        jmp     L8F36

        jsr     LFA4C
        bcs     LD069
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        clc
        adc     #$02
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$00
        sta     $0570,y
        sta     $0530,y
        lda     #$14
        jsr     LFA84
        lda     #$01
        sta     $0540,y
        lda     #$0B
        sta     $04E0,y
        lda     $0580,x
        .byte   $49
LD065:  .byte   $03
        sta     $0580,y
LD069:  rts

        lda     $04D0,x
        and     #$0F
        tay
        lda     $90CD,y
        sta     L0000
        lda     $90D0,y
        sta     $01
        jmp     (L0000)

        lda     #$00
        sta     $0490,x
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$01
        sta     $0480,x
        lda     #$06
LD091:  sta     $04A0,x
        lda     #$01
        sta     $0580,x
        inc     $04D0,x
        rts

        jsr     L9405
        ldy     #$01
        lda     $0580,x
        cmp     #$02
        beq     LD0B1
        lda     #$2C
        jsr     LF200
        jmp     L90B6

LD0B1:  lda     #$2E
        jsr     LF254
        lda     $10
        bne     LD0BE
        jsr     L9379
LD0BD:  rts

LD0BE:  lda     $0580,x
        eor     #$03
        sta     $0580,x
        jsr     LF808
        jsr     L9379
        rts

        adc     $9D31,x
        bcc     LD065
        bcc     LD091
        bne     LD0DA
        and     #$0F
        bne     LD0F0
LD0DA:  sta     $0560,x
        lda     #$80
        sta     $0550,x
        lda     #$10
        sta     $0490,x
        inc     $04D0,x
        lda     $0510,x
        sta     $04B0,x
LD0F0:  lda     $50
        cmp     #$07
        beq     LD12F
        lda     $50
        cmp     #$0B
        bne     LD0FF
        jmp     L917C

LD0FF:  lda     $0480,x
        bne     LD145
        jsr     LF928
        cmp     #$0C
        bcs     LD12F
        jsr     LF919
        bcc     LD12F
        cmp     #$14
        bcs     LD12F
        cmp     #$0C
        bcc     LD12F
        lda     $0560
        bmi     LD130
LD11D:  lda     $50
        cmp     #$04
        beq     LD12F
        lda     #$12
        jsr     LF850
        lda     #$04
        sta     $50
        inc     $0480,x
LD12F:  rts

LD130:  jsr     LF919
        bcc     LD12F
        cmp     #$0F
        bcc     LD12F
        cmp     #$14
        bcs     LD12F
        jsr     LF928
        cmp     #$08
        bcc     LD11D
        rts

LD145:  lda     $04D0,x
        and     #$02
        bne     LD168
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
        dec     $0490,x
LD168:  lda     $50
        beq     LD181
        cmp     #$04
        beq     LD191
        cmp     #$01
        beq     LD181
        cmp     #$02
        beq     LD181
        cmp     #$06
        beq     LD191
        lda     $0560
        bmi     LD130
LD181:  lda     $04B0,x
        sta     $0510,x
        lda     #$80
        sta     $04D0,x
        lda     #$00
        sta     $0480,x
LD191:  rts

LD192:  inc     $04D0,x
        lda     $04E0,x
        cmp     #$11
        beq     LD1A7
        jsr     L9233
        lda     $04A0,x
        bne     LD191
        jmp     L91AF

LD1A7:  jsr     L9201
        lda     $04A0,x
        bne     LD191
        jsr     LFA4C
        bcs     LD191
        sty     $0F
        lda     $04F0,x
        clc
        adc     #$18
        pha
        lda     $0500,x
        adc     #$00
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     #$01
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$5A
        jsr     LFA84
        lda     #$12
        sta     $04E0,y
        lda     #$47
        sta     $0570,y
        lda     $04E0,x
        cmp     #$11
        bne     LD1F0
        lda     #$80
        bne     LD1F2
LD1F0:  lda     #$81
LD1F2:  sta     $0590,y
        sta     $0550,y
        sta     $05A0,y
        lda     #$07
        sta     $0560,y
        rts

        lda     #$00
        sta     L0000
        lda     #$80
        sta     $01
        ldy     #$0F
LD20B:  lda     $04D0,y
        bmi     LD227
LD210:  dey
        cpy     #$04
        bne     LD20B
        lda     L0000
        cmp     #$01
        beq     LD221
        lda     #$00
        sta     $04A0,x
        rts

LD221:  lda     #$FF
        sta     $04A0,x
        rts

LD227:  lda     $01
        cmp     $0590,y
        bne     LD210
        inc     L0000
        jmp     L9210

        lda     #$00
        sta     L0000
        lda     #$81
        sta     $01
        ldy     #$0F
LD23D:  lda     $04D0,y
        bmi     LD259
LD242:  dey
        cpy     #$04
        bne     LD23D
        lda     L0000
        cmp     #$01
        beq     LD253
        lda     #$00
        sta     $04A0,x
        rts

LD253:  lda     #$FF
        sta     $04A0,x
        rts

LD259:  lda     $01
        cmp     $0590,y
        bne     LD242
        inc     L0000
        jmp     L9242

        lda     $04D0,x
        and     #$0F
        bne     LD2E3
        lda     #$40
        ldy     #$01
        jsr     LF2AF
        lda     $10
        cmp     #$03
        bcc     LD2E3
        lda     $0420,x
        cmp     #$33
        beq     LD289
        lda     #$2A
        jsr     LFA6C
        lda     #$87
        bne     LD28B
LD289:  lda     #$8E
LD28B:  sta     $0570,x
        lda     #$26
        jsr     LF850
        inc     $04D0,x
        lda     #$01
        sta     L0000
LD29A:  jsr     LFA4C
        bcs     LD2E3
        sty     $0F
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        clc
        adc     #$10
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$00
        sta     $0570,y
        sta     $0530,y
        lda     #$14
        jsr     LFA84
        lda     #$01
        sta     $0540,y
        lda     #$0B
LD2D0:  sta     $04E0,y
        ldy     L0000
        lda     $92E4,y
        ldy     $0F
        sta     $0580,y
        dec     L0000
        lda     L0000
        bpl     LD29A
LD2E3:  rts

        ora     ($02,x)
        lda     $04D0,x
        and     #$0F
        tay
        lda     $9418,y
        sta     L0000
        lda     $941C,y
        sta     $01
        jmp     (L0000)

        lda     #$00
        sta     $0490,x
        sta     $04B0,x
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$01
        sta     $0480,x
        lda     #$06
        sta     $04A0,x
        inc     $04D0,x
        ldy     #$00
        lda     $04E0,x
        cmp     #$13
        beq     LD32A
        iny
        cmp     #$14
        beq     LD32A
        iny
        cmp     #$19
        beq     LD32A
        iny
LD32A:  lda     $9420,y
        sta     $04B0,x
        rts

        jsr     LF869
        jsr     L9379
        lda     $0490,x
        bne     LD33D
        rts

LD33D:  inc     $04D0,x
        rts

        jsr     L9405
        jsr     L9379
        jsr     LF4FD
        dec     $04B0,x
        beq     LD350
        rts

LD350:  lda     $0490,x
        beq     LD36E
        lda     $0560
        cmp     #$FF
        bne     LD36E
        jsr     LF607
        lda     #$01
        sta     $50
        lda     #$00
        sta     $0490,x
        sta     $0550,x
        sta     $0560,x
LD36E:  inc     $04D0,x
        rts

        jsr     LF5C9
        jsr     LF4FD
        rts

        dec     $0480,x
        beq     LD381
        jmp     L93F5

LD381:  lda     $0490,x
        bne     LD38E
        lda     $0500,x
        cmp     $0500
        bne     LD3F0
LD38E:  lda     $0490,x
        beq     LD3A3
        lda     $0560
        bpl     LD3F0
        lda     #$00
        sta     $0490,x
        lda     $14
        cmp     #$04
        beq     LD3F6
LD3A3:  lda     $50
        cmp     #$07
        beq     LD3F0
        jsr     LF928
        cmp     #$08
        bcs     LD3F0
        lda     $0510
        sta     $08
        sec
        sbc     #$12
        sta     $0510
        jsr     LF919
        ldy     $08
        sty     $0510
        cmp     #$05
        bcs     LD3F0
        lda     #$04
        sta     $50
        lda     #$FF
        sta     $0560
        lda     #$01
        sta     $0490,x
        lda     $04F0,x
        sta     $04F0
        lda     $0510,x
        clc
        adc     #$16
        sta     $0510
        lda     $0500,x
        sta     $0500
        lda     $0520,x
        sta     $0520
LD3F0:  lda     #$01
        sta     $0480,x
        rts

LD3F6:  lda     #$1E
        sta     $0480,x
        lda     #$00
        sta     $0490,x
        lda     #$01
        sta     $50
        rts

        lda     $04A0,x
        bne     LD414
        lda     #$27
        jsr     LF850
        lda     #$06
        sta     $04A0,x
LD414:  dec     $04A0,x
        rts

        sbc     $4131,y
        .byte   $72
        .byte   $92
        .byte   $93
        .byte   $93
        .byte   $93
        tya
        sei
        cli
        iny
        lda     $04D0,x
        and     #$0F
        bne     LD434
        inc     $04D0,x
        jsr     L94FA
        sta     $0480,x
LD434:  lda     $04D0,x
        and     #$02
        bne     LD49F
        lda     $0480,x
        bne     LD44D
        lda     $0420,x
        cmp     #$4D
        beq     LD454
        lda     #$4D
        jsr     LFA6C
        rts

LD44D:  jsr     LF81D
        dec     $0480,x
        rts

LD454:  jsr     LF81D
        lda     $0400,x
        cmp     #$50
        beq     LD489
        cmp     #$10
        beq     LD489
        lda     $0410,x
        cmp     #$03
        bne     LD47B
        lda     $0430,x
        cmp     #$04
        bne     LD47B
        lda     $05A0,x
        eor     #$80
        sta     $05A0,x
        jsr     L94B1
LD47B:  lda     $0410,x
        cmp     #$0B
        bne     LD49E
        lda     $0430,x
        cmp     #$04
        bne     LD49E
LD489:  lda     #$4C
        jsr     LFA6C
        lda     $05A0,x
        ora     #$80
        sta     $05A0,x
        lda     #$1E
        sta     $0490,x
        .byte   $FE
        .byte   $D0
LD49D:  .byte   $04
LD49E:  rts

LD49F:  lda     $0490,x
        bne     LD4AD
        dec     $04D0,x
        jsr     L94FA
        sta     $0480,x
LD4AD:  dec     $0490,x
        rts

        jsr     LFA4C
        bcs     LD4F9
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $8DAB,y
        pha
        lda     $0500,x
        adc     $8DAC,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sec
        sbc     #$01
        .byte   $99
LD4DF:  bpl     $D4E6
        lda     $0520,x
        sta     $0520,y
        lda     #$4E
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        jsr     L882C
LD4F9:  rts

        lda     $E4
        adc     $E6
        sta     $E6
        and     #$03
        tay
        lda     $9507,y
        rts

        asl     $5A3C,x
        asl     LD0BD,x
        .byte   $04
        and     #$0F
        bne     LD522
        sta     $0540,x
        lda     #$80
        sta     $0530,x
        lda     #$32
        sta     $0480,x
        inc     $04D0,x
LD522:  lda     $0580,x
        and     #$01
        beq     LD52F
        jsr     LF4FD
        jmp     L9532

LD52F:  jsr     LF51B
        lda     $0480,x
        bne     LD547
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        jsr     LF808
        lda     #$65
        sta     $0480,x
LD547:  dec     $0480,x
        rts

        lda     $04D0,x
        and     #$0F
        bne     LD56D
        sta     $0550,x
        sta     $0540,x
        lda     #$80
        sta     $0530,x
        lda     #$03
        sta     $0560,x
        jsr     LF928
        cmp     #$48
        bcs     LD56C
        inc     $04D0,x
LD56C:  rts

LD56D:  lda     $0420,x
        cmp     #$67
        beq     LD588
        ldy     #$01
        lda     #$28
        jsr     LF2AF
        lda     $10
        beq     LD56C
        lda     #$67
        jsr     LFA6C
        jsr     LF81D
        rts

LD588:  ldy     #$01
        lda     #$28
        jsr     LF2D7
        php
        ldy     #$01
        lda     $0580,x
        and     #$01
        beq     LD5A1
        lda     #$24
        jsr     LF200
        jmp     L95A6

LD5A1:  lda     #$26
        jsr     LF254
        plp
        bcc     LD5B7
        lda     $10
        cmp     #$03
        bcc     LD5B7
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LD5B7:  rts

        lda     $04D0,x
        and     #$0F
        bne     LD5C8
        inc     $04D0,x
        jsr     L9648
        sta     $0480,x
LD5C8:  lda     $0480,x
        bne     LD5F4
        .byte   $BD
        brk
LD5CF:  .byte   $04
        cmp     #$50
        beq     LD5F4
        cmp     #$10
        beq     LD5F4
        lda     $0410,x
        cmp     #$01
        bne     LD5FA
        lda     $0430,x
        cmp     #$10
        bne     LD5FA
        jsr     L9648
        sta     $0480,x
        lda     #$32
        jsr     LF850
        jsr     L95FB
LD5F4:  jsr     LF869
        dec     $0480,x
LD5FA:  rts

        jsr     LFA4C
        bcs     LD643
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $9644,y
        pha
        lda     $0500,x
        adc     $9645,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        clc
        adc     #$16
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$9F
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$02
        sta     $0570,y
        jsr     L882C
LD643:  rts

        .byte   $14
        brk
        cpx     $A5FF
        cpx     $65
        sbc     $85
        cpx     $29
        .byte   $07
        tay
        lda     $9655,y
        rts

        sei
        asl     $783C,x
        .byte   $3C
        asl     $3C1E,x
        lda     $04D0,x
        and     #$0F
        tay
        lda     $9670,y
        sta     L0000
        lda     $9677,y
        sta     $01
        jmp     (L0000)

        ror     $B6A6,x
        .byte   $3B
        adc     ($83),y
        stx     $96,y
        stx     $96,y
        .byte   $97
        .byte   $97
        .byte   $97
        .byte   $97
        lda     #$00
        sta     $0550,x
        sta     $0530,x
        lda     #$01
        sta     $0560,x
        sta     $0540,x
        inc     $04D0,x
        lda     #$08
        sta     $0480,x
        lda     #$0A
        sta     $0490,x
        jsr     LF93F
        and     #$08
        beq     LD6A5
        inc     $04A0,x
LD6A5:  rts

        jsr     LF928
        cmp     #$60
        bmi     LD6B5
        lda     #$08
        sta     $05A0,x
        inc     $04D0,x
LD6B5:  rts

        lda     $0480,x
        beq     LD707
        lda     $05A0,x
        cmp     #$08
        bne     LD71F
        lda     $0510,x
        sec
        sbc     #$28
        bcs     LD6D0
        jsr     LF539
        jmp     L96F7

LD6D0:  ldy     #$01
        lda     #$28
        jsr     LF2AF
        lda     $10
        beq     LD6F7
        inc     $04D0,x
        inc     $04D0,x
        lda     #$A8
        jsr     LFA6C
        lda     #$42
        sta     $0570,x
        lda     #$02
        sta     $05A0,x
        jsr     LF81D
        jsr     L97E0
        rts

LD6F7:  dec     $0480,x
        lda     $04A0,x
        bne     LD703
        jsr     LF51B
        rts

LD703:  jsr     LF4FD
        rts

LD707:  dec     $0490,x
        bne     LD71E
        lda     #$10
        sta     $0480,x
        lda     #$0A
        sta     $0490,x
        lda     $04A0,x
        eor     #$01
        sta     $04A0,x
LD71E:  rts

LD71F:  jsr     LF81D
        lda     #$42
        sta     $0570,x
        lda     #$A9
        jsr     LFA6C
        lda     #$00
        sta     $05A0,x
        jsr     L97E0
        inc     $04D0,x
        jsr     LF5FC
        rts

        lda     $0550,x
        clc
        adc     #$40
        sta     $0550,x
        lda     $0560,x
        adc     #$00
        sta     $0560,x
        lda     $0510,x
        sec
        sbc     #$28
        bcs     LD758
        jsr     LF539
        rts

LD758:  ldy     #$01
        lda     #$28
        jsr     LF2AF
        lda     $10
        beq     LD770
        inc     $04D0,x
        lda     #$D1
        sta     $0550,x
        lda     #$02
        sta     $0560,x
LD770:  rts

        lda     #$28
        ldy     #$01
        jsr     LF2D7
        bcc     LD782
        lda     #$0A
        sta     $0480,x
        inc     $04D0,x
LD782:  rts

        dec     $0480,x
        bne     LD795
        inc     $04D0,x
        lda     #$00
        sta     $0530,x
        lda     #$02
        sta     $0540,x
LD795:  rts

        ldy     #$01
        lda     #$28
        jsr     LF2D7
        php
        ldy     #$01
        lda     $0580,x
        and     #$01
        beq     LD7AF
        lda     #$24
        jsr     LF200
        jmp     L97B4

LD7AF:  lda     #$26
        jsr     LF254
        plp
        bcc     LD7DF
        lda     $10
        cmp     #$03
        bcc     LD7DA
        inc     $0480,x
        lda     $0480,x
        cmp     #$03
        beq     LD7D2
        lda     #$00
        sta     $0550,x
        lda     #$04
        sta     $0560,x
        rts

LD7D2:  lda     $0580,x
        eor     #$03
        sta     $0580,x
LD7DA:  lda     #$00
        sta     $0480,x
LD7DF:  rts

        jsr     LFA4C
        bcs     LD821
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        sta     $0500,y
        lda     $0510,x
        sec
        sbc     #$18
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$00
        sta     $0570,y
        sta     $0530,y
        sta     $0540,y
        sta     $0550,y
        sta     $0560,y
        sta     $04E0,y
        lda     #$14
        jsr     LFA84
        lda     $0580,x
        eor     #$03
        sta     $0580,y
LD821:  rts

        lda     $04D0,x
        and     #$0F
        bne     LD82F
        sta     $0480,x
        inc     $04D0,x
LD82F:  lda     $50
        cmp     #$07
        beq     LD878
        lda     $50
        cmp     #$0B
        beq     LD89F
        lda     $0480,x
        bne     LD892
        jsr     LF928
        cmp     #$0C
        bcs     LD88E
        jsr     LF919
        bcc     LD878
        cmp     #$18
        bcs     LD878
        cmp     #$0C
        bcc     LD88E
        lda     $0560
        bmi     LD879
LD859:  lda     $50
        cmp     #$04
        beq     LD878
        lda     #$04
        sta     $50
        lda     #$2C
        jsr     LF850
        stx     $02
        lda     #$04
        jsr     LC2F9
        ldx     $02
        lda     #$FF
        sta     $18
        inc     $0480,x
LD878:  rts

LD879:  jsr     LF919
        bcc     LD878
        cmp     #$14
        bcc     LD878
        cmp     #$17
        bcs     LD878
        jsr     LF928
        cmp     #$08
        bcc     LD859
        rts

LD88E:  jsr     L98B0
        rts

LD892:  lda     $50
        beq     LD88E
        cmp     #$04
        beq     LD8A9
        cmp     #$01
        beq     LD8AA
        rts

LD89F:  lda     $0560
        bmi     LD879
LD8A4:  lda     #$80
        sta     $04D0,x
LD8A9:  rts

LD8AA:  lda     $0560
        bpl     LD8A4
        rts

        lda     #$00
        sta     L0000
        ldy     #$0F
LD8B6:  lda     $04D0,y
        bmi     LD8DB
LD8BB:  dey
        cpy     #$04
        bne     LD8B6
        lda     L0000
        beq     LD8CB
        lda     $50
        cmp     #$04
        bne     LD8CB
LD8CA:  rts

LD8CB:  lda     $7C
        bne     LD8CA
        stx     $02
        lda     #$11
        jsr     LC2F9
        sta     $18
        ldx     $02
        rts

LD8DB:  lda     #$98
        cmp     $0420,y
        bne     LD8BB
        lda     $0480,y
        cmp     #$01
        bne     LD8BB
        inc     L0000
        jmp     L98BB

        lda     $04D0,x
        and     #$0F
        bne     LD90F
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$41
        sta     $0480,x
        lda     #$05
        sta     $0490,x
        lda     #$30
        sta     $04A0,x
        inc     $04D0,x
LD90F:  lda     $0420,x
        cmp     #$4A
        beq     LD95E
        cmp     #$4B
        bne     LD91D
        jmp     L999D

LD91D:  lda     $31
        cmp     #$03
        beq     LD939
        lda     $04B0,x
        and     #$01
        beq     LD933
        jsr     LF4FD
        jsr     LF24B
        jmp     L9939

LD933:  jsr     LF51B
        jsr     LF2A6
LD939:  jsr     LF928
        cmp     #$30
        bcs     LD948
        jsr     LF81D
        lda     #$4A
        jsr     LFA6C
LD948:  lda     $04A0,x
        bne     LD95A
        lda     $04B0,x
        eor     #$01
        sta     $04B0,x
        lda     #$30
        sta     $04A0,x
LD95A:  dec     $04A0,x
LD95D:  rts

LD95E:  lda     $0400,x
        cmp     #$50
        beq     LD95D
        cmp     #$10
        beq     LD95D
        lda     $0410,x
        cmp     #$09
        bne     LD983
        lda     $0430,x
        cmp     #$08
        bne     LD983
        lda     #$2B
        jsr     LF850
        jsr     LF81D
        jsr     L99BC
        rts

LD983:  lda     $0410,x
        cmp     #$0A
        bne     LD948
        lda     $0430,x
        cmp     #$08
        bne     LD948
        lda     #$4B
        jsr     LFA6C
        lda     $0490,x
        sta     $05A0,x
        rts

        lda     $0480,x
        bne     LD9B8
        lda     #$48
        jsr     LFA6C
        lda     $05A0,x
        sta     $0490,x
        lda     #$80
        sta     $05A0,x
        lda     #$41
        sta     $0480,x
        rts

LD9B8:  dec     $0480,x
        rts

        jsr     LFA4C
        bcs     LD9FE
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $99FF,y
        pha
        lda     $0500,x
        adc     $9A00,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$49
        jsr     LFA84
        lda     #$20
        sta     $04E0,y
        lda     #$0F
        sta     $0570,y
LD9FE:  rts

        ora     (L0000,x)
        .byte   $FF
        .byte   $FF
        lda     $04D0,x
        and     #$0F
        bne     LDA22
        sta     $0490,x
        sta     $0530,x
        lda     #$04
        sta     $0540,x
        inc     $04D0,x
        lda     #$1E
        sta     $0480,x
        lda     #$10
        sta     $04A0,x
LDA22:  lda     $04D0,x
        and     #$0F
        cmp     #$02
        beq     LDA6F
        cmp     #$03
        beq     LDA7B
        lda     $0580,x
        and     #$01
        beq     LDA3C
        jsr     LF4FD
        jmp     L9A3F

LDA3C:  jsr     LF51B
        lda     $0480,x
        bne     LDA5C
        inc     $04D0,x
        lda     $0490,x
        bne     LDA60
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        lda     #$1F
        sta     $0480,x
        inc     $0490,x
LDA5C:  dec     $0480,x
LDA5F:  rts

LDA60:  jsr     L9A88
        lda     $04A0,x
        bne     LDA6C
        inc     $04D0,x
        rts

LDA6C:  jmp     LFA9A

LDA6F:  dec     $04A0,x
        lda     $04A0,x
        bne     LDA5F
        dec     $04D0,x
        rts

LDA7B:  lda     $0580,x
        and     #$01
        beq     LDA85
        jmp     LF4FD

LDA85:  jmp     LF51B

        lda     #$00
        sta     L0000
        ldy     #$0F
LDA8E:  lda     $04D0,y
        bmi     LDAAA
LDA93:  dey
        cpy     #$04
        bne     LDA8E
        lda     L0000
        cmp     #$01
        beq     LDAA4
        lda     #$00
        sta     $04A0,x
        rts

LDAA4:  lda     #$FF
        sta     $04A0,x
        rts

LDAAA:  lda     #$1D
        cmp     $04E0,y
        bne     LDA93
        lda     $0510,x
        cmp     $0510,y
        bne     LDA93
        inc     L0000
        jmp     L9A93

        lda     $04D0,x
        and     #$0F
        bne     LDADB
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        lda     #$18
        sta     $0480,x
        jsr     L8D2A
        sta     $0490,x
LDADB:  lda     $04D0,x
        and     #$02
        bne     LDB2B
        lda     $0580,x
        and     #$01
        beq     LDAEF
        jsr     LF4FD
        jmp     L9AF2

LDAEF:  jsr     LF51B
        lda     $0480,x
        bne     LDB07
        lda     #$31
        sta     $0480,x
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        jsr     LF808
LDB07:  dec     $0480,x
        lda     $0400,x
        cmp     #$50
        beq     LDB2A
        cmp     #$10
        beq     LDB2A
        lda     $0490,x
        beq     LDB6E
        dec     $0490,x
        jsr     LFAAE
        bcs     LDB2A
        lda     #$64
        jsr     LFA6C
        inc     $04D0,x
LDB2A:  rts

LDB2B:  lda     $04A0,x
        bne     LDB46
        lda     $0410,x
        cmp     #$04
        bne     LDB2A
        lda     $0430,x
        .byte   $C9
LDB3B:  php
        bne     LDB2A
        lda     #$56
        sta     $0570,x
        inc     $04A0,x
LDB46:  lda     $0420,x
        cmp     #$65
        beq     LDB53
        lda     #$65
        jsr     LFA6C
        rts

LDB53:  lda     $0410,x
        eor     $0430,x
        bne     LDB6D
        lda     #$63
        jsr     LFA6C
        dec     $04D0,x
        lda     #$4C
        sta     $0570,x
        lda     #$00
        sta     $04A0,x
LDB6D:  rts

LDB6E:  jsr     LFA4C
        bcs     LDBC2
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $8DAB,y
        pha
        lda     $0500,x
        adc     $8DAC,y
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
        lda     #$62
        jsr     LFA84
        lda     #$01
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        lda     #$81
        sta     $04D0,y
        lda     #$00
        sta     $0530,y
        lda     #$02
        sta     $0540,y
LDBC2:  jsr     L8D2A
        sta     $0490,x
        rts

        lda     $04D0,x
        and     #$0F
        bne     LDBE5
        sta     $0550,x
        lda     #$01
        sta     $0560,x
        lda     #$05
        sta     $0480,x
        inc     $04D0,x
        lda     #$9B
        sta     $04A0,x
LDBE5:  lda     $0480,x
        beq     LDC19
        jsr     LF928
        cmp     #$10
        bcs     LDC18
        jsr     LF919
        cmp     #$12
        bcs     LDC18
        jsr     LF539
        dec     $0480,x
        lda     $0460
        clc
        adc     #$00
        sta     $0460
        lda     $0510
        adc     #$01
        sta     $0510
        cmp     #$F0
        bcc     LDC18
        adc     #$0F
        sta     $0510
LDC18:  rts

LDC19:  lda     $04B0,x
        bne     LDC31
        jsr     L9C67
        bne     LDC29
        inc     $04A0,x
        jmp     L9C2E

LDC29:  lda     #$9B
        sta     $04A0,x
        inc     $04B0,x
LDC31:  jsr     LF928
        cmp     #$10
        bcc     LDC46
LDC38:  lda     $0490,x
        cmp     #$05
        beq     LDC4C
        jsr     LF55E
        inc     $0490,x
        rts

LDC46:  lda     $0560
        bpl     LDC38
        rts

LDC4C:  lda     #$05
        sta     $0480,x
        lda     #$00
        sta     $0490,x
        sta     $04B0,x
        lda     $04A0,x
        cmp     #$9E
        bcs     LDC61
        rts

LDC61:  lda     #$9B
        sta     $04A0,x
        rts

        ldy     #$0F
LDC69:  lda     $04D0,y
        bmi     LDC76
LDC6E:  dey
        cpy     #$04
        bne     LDC69
        lda     #$FF
        rts

LDC76:  lda     $0420,y
        cmp     #$9B
        beq     LDC87
        cmp     #$9C
        beq     LDC87
        cmp     #$9D
        beq     LDC87
        bne     LDC6E
LDC87:  lda     #$00
        rts

        lda     $04D0,x
        and     #$0F
        tay
        lda     $9DB3,y
        sta     L0000
        lda     $9DB8,y
        sta     $01
        jmp     (L0000)

        ldy     #$0F
LDC9F:  lda     $04D0,y
        bmi     LDCAA
LDCA4:  dey
        cpy     #$04
        bne     LDC9F
        rts

LDCAA:  lda     $0420,x
        cmp     #$9E
        beq     LDCBF
        lda     $04E0,y
        cmp     #$23
        bne     LDCA4
        lda     $04A0,y
        jsr     LFA6C
        rts

LDCBF:  lda     #$00
        sta     $0480,x
        sta     $04B0,x
        sta     $0560,x
        lda     #$80
        sta     $0550,x
        lda     #$80
        sta     $0490,x
        lda     #$01
        sta     $04A0,x
        inc     $04D0,x
        rts

        dec     $0490,x
        bne     LDCE6
        inc     $04D0,x
        rts

LDCE6:  jsr     LF55E
        rts

        lda     $0480,x
        beq     LDCFD
        lda     #$00
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        rts

LDCFD:  jsr     L9D3A
        rts

        lda     #$00
        sta     $40
        ldy     #$02
        sty     $41
        jsr     LEB52
        lda     $10
        beq     LDD1E
        lda     #$80
        sta     $0550,x
        lda     #$00
        sta     $0560,x
        inc     $04D0,x
        rts

LDD1E:  jsr     LF4FD
        jsr     L9D3A
        rts

        lda     $0480,x
        beq     LDD36
        jsr     LF607
        lda     #$01
        sta     $50
        lda     #$00
        sta     $0480,x
LDD36:  jsr     LF55E
        rts

        dec     $04A0,x
        bne     LDDA3
        lda     $0560
        bpl     LDD9E
        lda     #$00
        sta     $0480,x
        lda     $14
        cmp     #$04
        beq     LDDA4
        lda     $50
        cmp     #$07
        beq     LDD9E
        jsr     LF928
        cmp     #$08
        bcs     LDD9E
        lda     $0510
        sta     $04B0,x
        sec
        sbc     #$10
        sta     $0510
        jsr     LF919
        ldy     $04B0,x
        sty     $0510
        cmp     #$11
        bcs     LDD9E
        lda     #$04
        sta     $50
        lda     $0500,x
        sta     $0500
        lda     $0520,x
        sta     $0520
        lda     $04F0,x
        sta     $04F0
        lda     $0510,x
        clc
        adc     #$10
        sta     $0510
        lda     #$01
        sta     $0480,x
        lda     #$FF
        sta     $0560
LDD9E:  lda     #$01
        sta     $04A0,x
LDDA3:  rts

LDDA4:  lda     #$1E
        sta     $04A0,x
        lda     #$01
        sta     $50
        lda     #$00
        sta     $0480,x
        rts

        sta     LEADD,x
        ora     ($25,x)
        .byte   $9C
        .byte   $9C
        .byte   $9C
        sta     $BD9D,x
        bne     LDDC4
        and     #$0F
        bne     LDDDC
LDDC4:  jsr     LF928
        cmp     #$40
        bcs     LDDD8
        inc     $04D0,x
        lda     #$1E
        sta     $0480,x
        lda     #$01
        sta     $0490,x
LDDD8:  jsr     LF869
        rts

LDDDC:  jsr     LF81D
        lda     $04D0,x
        and     #$02
        bne     LDE01
        lda     #$80
        sta     $05A0,x
        lda     #$50
        sta     $0570,x
        lda     $0410,x
        cmp     #$0D
        bne     LDE00
        inc     $04D0,x
        lda     $0490,x
        sta     $05A0,x
LDE00:  rts

LDE01:  lda     $05A0,x
        sta     $0490,x
        lda     $0400,x
        cmp     #$50
        beq     LDE00
        cmp     #$10
        beq     LDE00
        lda     $0410,x
        cmp     #$16
        beq     LDE1E
        cmp     #$17
        bcs     LDE2E
        rts

LDE1E:  lda     $0430,x
        cmp     #$04
        bne     LDE00
        lda     #$29
        jsr     LF850
        jsr     L9E3C
        rts

LDE2E:  lda     #$80
        sta     $05A0,x
        lda     #$00
        sta     $0570,x
        dec     $04D0,x
        rts

        jsr     LFA4C
        bcs     LDE84
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $8DAB,y
        pha
        lda     $0500,x
        adc     $8DAC,y
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
        lda     #$A1
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$02
        sta     $0570,y
        jsr     L882C
LDE84:  rts

        lda     $04D0,x
        and     #$0F
        bne     LDE9F
        sta     $0560,x
        sta     $0490,x
        lda     #$80
        sta     $0550,x
        lda     #$3C
        sta     $0480,x
        inc     $04D0,x
LDE9F:  lda     $0420,x
        cmp     #$8C
        beq     LDEC0
        cmp     #$8A
        beq     LDECC
        jsr     LF928
        cmp     #$48
        bcs     LDEB7
        lda     #$8C
        jsr     LFA6C
        rts

LDEB7:  lda     $0301
        bne     LDEBF
        jsr     LF869
LDEBF:  rts

LDEC0:  lda     $0480,x
        beq     LDECC
        jsr     LF55E
        dec     $0480,x
        rts

LDECC:  lda     $0490,x
        bne     LDEF9
        jsr     LF93F
        tay
        lda     $9F3C,y
        sta     $0580,x
        lda     $9EFC,y
        sta     $0530,x
        lda     $9F0C,y
        sta     $0540,x
        lda     $9F1C,y
        sta     $0550,x
        lda     $9F2C,y
        sta     $0560,x
        jsr     LF808
        inc     $0490,x
LDEF9:  jmp     L8BDA

        brk
        .byte   $87
        .byte   $D4
        .byte   $B2
        brk
        .byte   $B2
        .byte   $D4
        .byte   $87
        brk
        .byte   $87
        .byte   $D4
        .byte   $B2
        brk
        .byte   $B2
        .byte   $D4
        .byte   $87
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        .byte   $03
        .byte   $02
        ora     ($04,x)
        ora     ($02,x)
        .byte   $03
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        .byte   $B2
        .byte   $D4
        .byte   $87
        brk
        .byte   $87
        .byte   $D4
        .byte   $B2
        brk
        .byte   $B2
        .byte   $D4
        .byte   $87
        brk
        .byte   $87
        .byte   $D4
        .byte   $B2
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        ora     ($02,x)
        .byte   $03
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        ora     ($02,x)
        .byte   $03
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
        bne     LDF75
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        jsr     LF928
        cmp     #$10
        bcs     LDF71
        jsr     LF919
        cmp     #$17
        bcs     LDF71
        inc     $04D0,x
        lda     #$02
        sta     $0580,x
LDF71:  jsr     LF869
LDF74:  rts

LDF75:  lda     $50
        cmp     #$07
        beq     LDF74
        ldy     #$02
        lda     #$06
        jsr     LF2D7
        jsr     LF919
        cmp     #$06
        bcs     LDF90
        lda     #$00
        sta     $0570,x
        beq     LDF95
LDF90:  lda     #$95
        sta     $0570,x
LDF95:  lda     $04E0,x
        cmp     #$22
        beq     LDFB7
        lda     $0580,x
        and     #$01
        bne     LDFBE
LDFA3:  ldy     #$02
        lda     #$00
        jsr     LF200
        lda     $10
        beq     LDFB6
LDFAE:  lda     $0580,x
        eor     #$03
        sta     $0580,x
LDFB6:  rts

LDFB7:  lda     $0580,x
        and     #$01
        bne     LDFA3
LDFBE:  ldy     #$02
        lda     #$03
        jsr     LF254
        lda     $10
        beq     LDFB6
        bne     LDFAE
        lda     $04D0,x
        and     #$0F
        bne     LDFEF
        sta     $0540,x
        lda     #$44
        sta     $0550,x
        lda     #$03
        sta     $0560,x
        lda     #$80
        sta     $0530,x
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        inc     $04D0,x
LDFEF:  jsr     LFB7B
        bcs     LE009
        lda     #$05
        sta     $04E0,x
        lda     #$13
        sta     $50
        lda     #$09
        .byte   $20
LE000:  sei
        .byte   $FA
        lda     #$78
        sta     $51
        jsr     LF607
LE009:  rts

        lda     $04D0,x
        and     #$0F
        bne     LE026
        sta     $0530,x
        lda     #$02
        sta     $0540,x
        inc     $04D0,x
        lda     #$28
        sta     $0480,x
        lda     #$3C
        sta     $0490,x
LE026:  lda     $0420,x
        cmp     #$82
        beq     LE045
        cmp     #$83
        beq     LE045
        lda     $0490,x
        bne     LE041
        lda     #$82
        jsr     LFA6C
        lda     #$3C
        sta     $0490,x
        rts

LE041:  dec     $0490,x
        rts

LE045:  lda     $04D0,x
        and     #$02
        bne     LE085
        lda     $0580,x
        and     #$01
        beq     LE059
        jsr     LF4FD
        jmp     LA05C

LE059:  jsr     LF51B
        lda     $0480,x
        bne     LE075
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        lda     #$50
        sta     $0480,x
        jsr     LF808
        inc     $04D0,x
        rts

LE075:  dec     $0480,x
        lda     $0480,x
        cmp     #$10
        bne     LE084
        lda     #$83
        jsr     LFA6C
LE084:  rts

LE085:  lda     $0490,x
        bne     LE098
        lda     #$3C
        sta     $0490,x
        lda     #$82
        jsr     LFA6C
        dec     $04D0,x
        rts

LE098:  dec     $0490,x
        rts

        lda     $04D0,x
        and     #$0F
        bne     LE0AC
        inc     $04D0,x
        jsr     LA153
        sta     $0480,x
LE0AC:  jsr     LF81D
        lda     $0420,x
        cmp     #$7B
        beq     LE0CE
        cmp     #$7C
        beq     LE0FD
        lda     $0480,x
        bne     LE0CA
        lda     #$7B
        jsr     LFA6C
        jsr     LA153
        sta     $0480,x
LE0CA:  dec     $0480,x
LE0CD:  rts

LE0CE:  lda     $0400,x
        cmp     #$50
        beq     LE0EB
        cmp     #$10
        beq     LE0EB
        lda     $0410,x
        cmp     #$06
        bne     LE0EB
        lda     $0430,x
        cmp     #$04
        bne     LE0CD
        jsr     LA10A
        rts

LE0EB:  lda     $0410,x
        cmp     #$0A
        bne     LE0CD
        lda     $0430,x
        cmp     #$04
        bne     LE0CD
        lda     #$7C
        bne     LE106
LE0FD:  lda     $0430,x
        cmp     #$10
        bne     LE0CD
        lda     #$7A
LE106:  jsr     LFA6C
        rts

        jsr     LFA4C
        bcs     LE152
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $8DAB,y
        pha
        lda     $0500,x
        adc     $8DAC,y
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
        lda     #$7D
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$02
        sta     $0570,y
        jsr     L882C
LE152:  rts

        lda     $E4
        adc     $E5
        sta     $E5
        and     #$03
        tay
        lda     $A160,y
        rts

        asl     $0F3C,x
        .byte   $3C
        lda     $04D0,x
        and     #$0F
        bne     LE17B
        sta     $0540,x
        lda     #$80
        sta     $0530,x
        lda     #$01
        sta     $0580,x
        inc     $04D0,x
LE17B:  ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LE1F7
        lda     #$5C
        jsr     LF200
        lda     $10
        beq     LE195
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LE195:  lda     $0520,x
        cmp     $0520
        bne     LE1F6
        jsr     LF919
        cmp     #$15
        bcs     LE1F6
        jsr     LF928
        cmp     #$10
        bcs     LE1F6
        jsr     LA26A
        lda     $50
        cmp     #$0E
        beq     LE1C1
        cmp     #$00
        beq     LE1C1
        cmp     #$02
        beq     LE1C1
        cmp     #$03
        beq     LE1C1
        rts

LE1C1:  lda     $0470
        clc
        adc     #$80
        sta     $0470
        lda     $04F0
        adc     #$00
        sta     $04F0
        bcc     LE1DC
        lda     $0500
        adc     #$00
        .byte   $8D
LE1DA:  brk
        .byte   $05
LE1DC:  stx     $13
        lda     #$00
        sta     $40
        ldy     #$02
        sty     $41
        ldx     #$00
        jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LE1F4
        jsr     LED85
LE1F4:  ldx     $13
LE1F6:  rts

LE1F7:  lda     #$5F
        jsr     LF254
        lda     $10
        beq     LE208
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LE208:  lda     $0520,x
        cmp     $0520
        bne     LE269
        jsr     LF919
        cmp     #$15
        bcs     LE269
        jsr     LF928
        cmp     #$10
        bcs     LE269
        jsr     LA26A
        lda     $50
        cmp     #$0E
        beq     LE234
        cmp     #$00
        beq     LE234
        cmp     #$02
        beq     LE234
        cmp     #$03
        beq     LE234
        rts

LE234:  lda     $0470
        sec
        sbc     #$80
        sta     $0470
        lda     $04F0
        sbc     #$00
        sta     $04F0
        bcs     LE24F
        lda     $0500
        sbc     #$00
        sta     $0500
LE24F:  stx     $13
        lda     #$03
        sta     $40
        ldy     #$02
        sty     $41
        ldx     #$00
        jsr     LEB52
        lda     $10
        cmp     #$03
        bcc     LE267
        jsr     LED9D
LE267:  ldx     $13
LE269:  rts

        lda     $50
        cmp     #$0E
        bne     LE284
        jsr     LF919
        cmp     #$10
        bcs     LE284
        lda     #$01
        sta     $50
        jsr     LF607
        lda     #$00
        sta     $0570,x
        rts

LE284:  lda     $0560
        bmi     LE28E
        lda     #$8E
        sta     $0570,x
LE28E:  rts

        lda     $04D0,x
        and     #$0F
        bne     LE2AC
        sta     $0560,x
        lda     #$80
        sta     $0550,x
        lda     #$10
        .byte   $9D
        .byte   $90
LE2A2:  .byte   $04
        inc     $04D0,x
        lda     $0510,x
        sta     $04B0,x
LE2AC:  lda     $50
        cmp     #$07
        beq     LE2EB
        lda     $50
        cmp     #$0B
        bne     LE2BB
        jmp     LA345

LE2BB:  lda     $0480,x
        bne     LE301
        jsr     LF928
        cmp     #$0C
        bcs     LE2EB
        jsr     LF919
        bcc     LE2EB
        cmp     #$14
        bcs     LE2EB
        cmp     #$0C
        bcc     LE2EB
        lda     $0560
        bmi     LE2EC
LE2D9:  lda     $50
        cmp     #$04
        beq     LE2EB
        lda     #$04
        sta     $50
        lda     #$12
        jsr     LF850
        inc     $0480,x
LE2EB:  rts

LE2EC:  jsr     LF919
        bcc     LE2EB
        cmp     #$0F
        bcc     LE2EB
        cmp     #$14
        bcs     LE2EB
        jsr     LF928
        cmp     #$08
        bcc     LE2D9
        rts

LE301:  lda     $04D0,x
        and     #$02
        bne     LE32D
        lda     $0490,x
        beq     LE35B
        jsr     LF539
        lda     $0460
        clc
        adc     #$80
        sta     $0460
        lda     $0510
        adc     #$00
        sta     $0510
        cmp     #$F0
        bcc     LE32A
        adc     #$0F
        sta     $0510
LE32A:  dec     $0490,x
LE32D:  lda     $50
        beq     LE34A
        cmp     #$04
        beq     LE35A
        cmp     #$01
        beq     LE34A
        cmp     #$02
        beq     LE34A
        cmp     #$03
        beq     LE34A
        cmp     #$06
        beq     LE35A
        lda     $0560
        bmi     LE2EC
LE34A:  lda     $04B0,x
        sta     $0510,x
        lda     #$80
        sta     $04D0,x
        lda     #$00
        sta     $0480,x
LE35A:  rts

LE35B:  inc     $04D0,x
        lda     $04E0,x
        cmp     #$36
        bne     LE369
        jsr     LA3A0
        rts

LE369:  jsr     LA3EC
        lda     $04A0,x
        bne     LE35A
        jsr     LFA4C
        bcs     LE35A
        sty     $0F
        lda     $04F0,x
        clc
        adc     #$40
        pha
        lda     $0500,x
        adc     #$00
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     #$28
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$15
        sta     $04E0,y
        jmp     LA3D4

        jsr     LA3EC
        lda     $04A0,x
        bne     LE35A
        jsr     LFA4C
        bcs     LE35A
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
        lda     #$48
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$38
        sta     $04E0,y
        lda     #$34
        jsr     LFA84
        lda     #$B0
        sta     $0400,y
        lda     #$47
        sta     $0570,y
        lda     #$80
        sta     $0590,y
        sta     $05A0,y
        rts

        lda     #$00
        sta     L0000
        lda     #$80
        sta     $01
        ldy     #$0F
LE3F6:  lda     $04D0,y
        bmi     LE412
LE3FB:  dey
        cpy     #$04
        bne     LE3F6
        lda     L0000
        cmp     #$01
        beq     LE40C
        lda     #$00
        sta     $04A0,x
        rts

LE40C:  lda     #$FF
        sta     $04A0,x
        rts

LE412:  lda     $01
        cmp     $0590,y
        bne     LE3FB
        inc     L0000
        jmp     LA3FB

        lda     $04D0,x
        and     #$0F
        tay
        lda     $A538,y
        sta     L0000
        lda     $A53B,y
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
        jsr     LA4C4
        lda     $04E0,x
        cmp     #$38
        beq     LE464
        lda     $0510,x
        cmp     #$68
        bcc     LE478
        jmp     LA46B

LE464:  lda     $0510,x
        cmp     #$88
        bcc     LE478
        inc     $04D0,x
        lda     #$80
        sta     $0550,x
        lda     #$00
        sta     $0560,x
LE478:  dec     $0490,x
        bne     LE487
        lda     #$2E
        jsr     LF850
        lda     #$08
        sta     $0490,x
LE487:  rts

        jsr     LF55E
        jsr     LA4C4
        lda     $04E0,x
        cmp     #$38
        beq     LE49E
        lda     $0510,x
        cmp     #$18
        bne     LE4B4
        beq     LE4A5
LE49E:  lda     $0510,x
        cmp     #$48
        bne     LE4B4
LE4A5:  lda     $0480,x
        beq     LE4B1
        jsr     LF607
        lda     #$01
        sta     $50
LE4B1:  jmp     LFA9A

LE4B4:  dec     $0490,x
        bne     LE4C3
        lda     #$2E
        jsr     LF850
        lda     #$10
        sta     $0490,x
LE4C3:  rts

        dec     $04A0,x
        bne     LE528
        lda     $0480,x
        beq     LE4DE
        lda     $0560
        bpl     LE523
        lda     #$00
        sta     $0480,x
        lda     $14
        cmp     #$04
        beq     LE529
LE4DE:  lda     $50
        cmp     #$07
        beq     LE523
        lda     $0500,x
        cmp     $0500
        bne     LE523
        jsr     LF928
        cmp     #$08
        bpl     LE523
        lda     $0510
        sta     $04B0,x
        sec
        sbc     #$10
        sta     $0510
        jsr     LF919
        ldy     $04B0,x
        sty     $0510
        cmp     #$11
        bpl     LE523
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
LE523:  lda     #$01
        sta     $04A0,x
LE528:  rts

LE529:  lda     #$1E
        sta     $04A0,x
        lda     #$01
        sta     $50
        lda     #$00
        sta     $0480,x
        rts

        and     ($4D),y
        dey
        ldy     $A4
        ldy     $BD
        bne     LE545
        and     #$0F
        bne     LE54D
LE545:  inc     $04D0,x
        lda     #$1E
        sta     $0480,x
LE54D:  lda     $04D0,x
        and     #$02
        bne     LE56F
        jsr     LF928
        cmp     #$30
        bcs     LE564
        inc     $04D0,x
        lda     #$57
        sta     $0570,x
        rts

LE564:  lda     #$D8
        sta     $0400,x
        lda     #$00
        sta     $0570,x
        rts

LE56F:  lda     $0420,x
        cmp     #$7F
        beq     LE59F
        jsr     LF81D
        lda     $0400,x
        cmp     #$50
        beq     LE5BE
        cmp     #$10
        beq     LE5BE
        lda     $0410,x
        cmp     #$23
        bne     LE5B2
        lda     $0430,x
        cmp     #$04
        bne     LE5B2
        lda     #$01
        sta     L0000
        jsr     LA5BF
        lda     #$7F
        jsr     LFA6C
        rts

LE59F:  lda     $0410,x
        cmp     #$0A
        bne     LE5B2
        lda     $0430,x
        cmp     #$02
        bne     LE5B2
        lda     #$7E
        jsr     LFA6C
LE5B2:  lda     $0410,x
        cmp     #$1C
        bne     LE5BE
        lda     #$2D
        jsr     LF850
LE5BE:  rts

LE5BF:  jsr     LFA4C
        bcs     LE62A
        sty     $0F
        lda     $0580,x
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $A62B,y
        pha
        lda     $0500,x
        adc     $A62C,y
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
        lda     #$80
        jsr     LFA84
        lda     #$0A
        sta     $0570,y
        ldy     L0000
        lda     $A62F,y
        ldy     $0F
        sta     $0580,y
        lda     #$81
        sta     $04D0,y
        lda     #$06
        sta     $04E0,y
        lda     #$44
        sta     $0550,y
        lda     #$03
        sta     $0560,y
        lda     #$80
        sta     $0530,y
        lda     #$00
        sta     $0540,y
        dec     L0000
        lda     L0000
        bpl     LE5BF
LE62A:  rts

        jsr     LE000
        .byte   $FF
        ora     $06
        lda     $04D0,x
        and     #$0F
        bne     LE643
        sta     $0530,x
        inc     $04D0,x
        lda     #$01
        sta     $0540,x
LE643:  ldy     #$02
        lda     #$06
        jsr     LF2D7
        php
        bcc     LE65C
        lda     $0420,x
        cmp     #$4F
        beq     LE672
        lda     #$4F
        jsr     LFA6C
        jmp     LA672

LE65C:  lda     $0420,x
        cmp     #$50
        beq     LE672
        lda     #$50
        jsr     LFA6C
        lda     #$00
        sta     $0550,x
        lda     #$04
        sta     $0560,x
LE672:  ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LE683
        lda     #$00
        jsr     LF200
        jmp     LA688

LE683:  lda     #$03
        jsr     LF254
        plp
        bcc     LE6B3
        lda     $10
        cmp     #$03
        bcc     LE6AE
        inc     $0480,x
        lda     $0480,x
        cmp     #$03
        beq     LE6A6
        lda     #$00
        sta     $0550,x
        lda     #$04
        sta     $0560,x
        rts

LE6A6:  lda     $0580,x
        eor     #$03
        sta     $0580,x
LE6AE:  lda     #$00
        sta     $0480,x
LE6B3:  rts

        lda     $04D0,x
        and     #$0F
        bne     LE6C6
        sta     $0550,x
        lda     #$04
        sta     $0560,x
        inc     $04D0,x
LE6C6:  lda     $0480,x
        bne     LE6E2
        lda     $14
        and     #$40
        beq     LE6DE
        lda     #$52
        jsr     LFA6C
        inc     $0480,x
        lda     #$00
        sta     $0490,x
LE6DE:  jsr     LF81D
        rts

LE6E2:  lda     #$28
        ldy     #$01
        jsr     LF2D7
        bcc     LE701
        lda     #$00
        sta     $0550,x
        lda     #$04
        sta     $0560,x
        lda     #$33
        jsr     LF850
        dec     $0480,x
        lda     #$51
        bne     LE71D
LE701:  lda     $0560,x
        and     #$FE
        cmp     #$FE
        beq     LE710
        bmi     LE71B
        lda     #$52
        bne     LE71D
LE710:  lda     #$54
        jsr     LFA6C
        lda     $0490,x
        beq     LE724
        rts

LE71B:  lda     #$53
LE71D:  jsr     LFA6C
LE720:  jsr     LF81D
        rts

LE724:  inc     $0490,x
        jsr     LFA4C
        bcs     LE720
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $B2F8,y
        pha
        lda     $0500,x
        adc     $B2F9,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sec
        adc     #$01
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$55
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
        lda     $A799,y
        sta     $0530,x
        lda     $A7A9,y
        sta     $0540,x
        lda     $A7B9,y
        sta     $0550,x
        lda     $A7C9,y
        sta     $0560,x
        lda     $9F3C,y
        sta     $0580,x
        ldx     $0E
        rts

        brk
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
        lda     $04D0,x
        and     #$0F
        bne     LE7F2
        sta     $0530,x
        sta     $0550,x
        lda     #$02
        sta     $0540,x
        sta     $0560,x
        inc     $04D0,x
LE7F1:  rts

LE7F2:  lda     $04D0,x
        and     #$0F
        cmp     #$02
        beq     LE809
        cmp     #$03
        beq     LE844
        jsr     LF928
        cmp     #$58
        bcs     LE7F1
        inc     $04D0,x
LE809:  lda     $0480,x
        bne     LE814
        jsr     LF55E
        jmp     LA817

LE814:  jsr     LF539
        inc     $0490,x
        lda     $0490,x
        cmp     #$02
        bne     LE843
        lda     $0480,x
        eor     #$01
        sta     $0480,x
        lda     #$00
        sta     $0490,x
        inc     $04A0,x
        lda     $04A0,x
        cmp     #$08
        bne     LE843
        lda     #$8E
        jsr     LFA6C
        inc     $04D0,x
        jsr     LF5FC
LE843:  rts

LE844:  lda     $0420,x
        cmp     #$8F
        beq     LE85E
        lda     $0410,x
        cmp     #$13
        bne     LE7F1
        lda     $0430,x
        cmp     #$02
        bne     LE7F1
        lda     #$8F
        jsr     LFA6C
LE85E:  lda     $95
        and     #$07
        sta     L0000
        lda     $95
        and     #$48
        ora     L0000
        bne     LE871
        lda     #$2F
        jsr     LF850
LE871:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        php
        ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LE88A
        lda     #$50
        jsr     LF200
        jmp     LA88F

LE88A:  lda     #$53
        jsr     LF254
        plp
        bcc     LE8BA
        lda     $10
        cmp     #$03
        bcc     LE8B5
        inc     $04B0,x
        lda     $04B0,x
        cmp     #$02
        beq     LE8AD
        lda     #$EC
        sta     $0550,x
        lda     #$03
        sta     $0560,x
        rts

LE8AD:  lda     $0580,x
        eor     #$03
        sta     $0580,x
LE8B5:  lda     #$00
        sta     $04B0,x
LE8BA:  rts

        lda     $04D0,x
        and     #$0F
        bne     LE8DC
        sta     $0560,x
        lda     #$80
        sta     $0550,x
        inc     $04D0,x
        lda     #$B4
        sta     $0480,x
        lda     #$5A
        sta     $04A0,x
        lda     #$04
        sta     $04B0,x
LE8DC:  jsr     LF81D
        lda     $04D0,x
        and     #$02
        bne     LE964
        lda     $0420,x
        cmp     #$87
        beq     LE90B
        cmp     #$89
        beq     LE8F7
        lda     #$89
        jsr     LFA6C
LE8F6:  rts

LE8F7:  lda     $0410,x
        cmp     #$02
        bne     LE8F6
        lda     $0430,x
        cmp     #$08
        bne     LE8F6
        lda     #$87
        jsr     LFA6C
        rts

LE90B:  lda     $0490,x
        bne     LE91B
        lda     $0410,x
        bne     LE923
        jsr     LF55E
        jmp     LA923

LE91B:  lda     $0410,x
        bne     LE923
        jsr     LF539
LE923:  lda     $0480,x
        bne     LE935
        lda     $0490,x
        eor     #$01
        sta     $0490,x
        lda     #$B5
        sta     $0480,x
LE935:  dec     $0480,x
        lda     $05A0,x
        cmp     $04B0,x
        bne     LE947
        jsr     LF928
        cmp     #$32
        bcs     LE963
LE947:  lda     $05A0,x
        sta     $04B0,x
        lda     $0400,x
        cmp     #$50
        beq     LE963
        cmp     #$10
        beq     LE963
        jsr     LA975
        lda     #$88
        jsr     LFA6C
        inc     $04D0,x
LE963:  rts

LE964:  lda     $04A0,x
        bne     LE971
        lda     #$5B
        sta     $04A0,x
        dec     $04D0,x
LE971:  dec     $04A0,x
        rts

        jsr     LFA4C
        bcs     LE9BA
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $A9BB,y
        pha
        lda     $0500,x
        adc     $A9BC,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sec
        sbc     #$14
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$8A
        jsr     LFA84
        lda     #$29
        sta     $04E0,y
        lda     #$10
        sta     $0570,y
LE9BA:  rts

        asl     a
        brk
        inc     $FF,x
        lda     $04D0,x
        and     #$0F
        bne     LE9D6
        sta     $0560,x
        lda     #$80
        sta     $0550,x
        lda     #$3C
        sta     $0480,x
        inc     $04D0,x
LE9D6:  lda     $0420,x
        cmp     #$86
        beq     LE9EA
        jsr     LF928
        cmp     #$50
        bcs     LE9E9
        lda     #$86
        jsr     LFA6C
LE9E9:  rts

LE9EA:  lda     $0490,x
        bne     LEA07
        lda     $0480,x
        beq     LE9FE
        jsr     LF55E
        jsr     LF81D
        dec     $0480,x
        rts

LE9FE:  inc     $0490,x
        lda     #$1E
        sta     $0480,x
        rts

LEA07:  lda     $0480,x
        beq     LEA10
        dec     $0480,x
        rts

LEA10:  lda     $04D0,x
        and     #$02
        bne     LEA3F
        jsr     LF93F
        tay
        lda     $9F3C,y
        sta     $0580,x
        lda     $AA42,y
        sta     $0530,x
        lda     $AA52,y
        sta     $0540,x
        lda     $AA62,y
        sta     $0550,x
        lda     $AA72,y
        sta     $0560,x
        jsr     LF808
        inc     $04D0,x
LEA3F:  jmp     L8BDA

        brk
        .byte   $92
        .byte   $0F
        .byte   $62
        .byte   $80
        .byte   $62
        .byte   $0F
        .byte   $92
        brk
        .byte   $92
        .byte   $0F
        .byte   $62
        .byte   $80
        .byte   $62
        .byte   $0F
        .byte   $92
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
        .byte   $62
        .byte   $0F
        .byte   $92
        brk
        .byte   $92
        .byte   $0F
        .byte   $62
        .byte   $80
        .byte   $62
        .byte   $0F
        .byte   $92
        brk
        .byte   $92
        .byte   $0F
        .byte   $62
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        ora     ($01,x)
        lda     $04D0,x
        and     #$0F
        bne     LEA99
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
        lda     #$40
        sta     $0480,x
LEA99:  lda     $0580,x
        and     #$01
        beq     LEAA9
        jsr     LF4FD
        jsr     LF24B
        jmp     LAAAF

LEAA9:  jsr     LF51B
        jsr     LF2A6
        lda     $0480,x
        beq     LEAB8
        dec     $0480,x
        rts

LEAB8:  lda     $0540,x
        cmp     #$04
        bcs     LEAD0
        lda     $0530,x
        clc
        adc     #$0C
        sta     $0530,x
        lda     $0540,x
        adc     #$00
        sta     $0540,x
LEAD0:  rts

        lda     $04D0,x
        and     #$0F
        bne     LEAEC
        sta     $0560,x
        .byte   $9D
        .byte   $90
LEADD:  .byte   $04
        lda     #$40
        sta     $0550,x
        inc     $04D0,x
        lda     $0510,x
        sta     $0480,x
LEAEC:  lda     $0490,x
        bne     LEB0C
        jsr     LF55E
        lda     $0510,x
        cmp     #$17
        bcs     LEB0B
        inc     $0490,x
        lda     $0400,x
        and     #$DF
        sta     $0400,x
        lda     #$80
        sta     $0550,x
LEB0B:  rts

LEB0C:  jsr     LF919
        cmp     #$19
        bcs     LEB67
        jsr     LF928
        cmp     #$13
        bcs     LEB67
        lda     $50
        cmp     #$03
        bne     LEB45
        lda     $0460
        clc
        adc     #$80
        sta     $0460
        lda     $0510
        adc     #$00
        sta     $0510
        cmp     #$F0
        bcc     LEB67
        adc     #$0F
        sta     $0510
        lda     $0520
        adc     #$00
        sta     $0520
        jmp     LAB67

LEB45:  lda     $0460
        clc
        adc     #$00
        sta     $0460
        lda     $0510
        .byte   $69
LEB52:  ora     ($8D,x)
        bpl     LEB5B
        cmp     #$F0
        bcc     LEB67
        .byte   $69
LEB5B:  .byte   $0F
        sta     $0510
        lda     $0520
        adc     #$00
        sta     $0520
LEB67:  jsr     LF539
        lda     $0510,x
        cmp     #$E8
        bcc     LEB81
        lda     $50
        cmp     #$03
        bne     LEB7B
        lda     #$00
        sta     $50
LEB7B:  jsr     LAB82
        jsr     LFA9A
LEB81:  rts

        jsr     LFA4C
        bcs     LEB81
        lda     $04F0,x
        sta     $04F0,y
        lda     $0500,x
        .byte   $99
        brk
LEB92:  ora     $A9
        plp
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$3C
        jsr     LFA84
        lda     #$F0
        sta     $0400,y
        lda     #$33
        sta     $04E0,y
        lda     $0590,x
        sta     $0590,y
        lda     #$8E
        sta     $0570,y
        lda     #$00
        sta     $05A0,y
        rts

        lda     $04D0,x
        and     #$0F
        bne     LEBCD
        inc     $04D0,x
        lda     #$02
        sta     $0490,x
LEBCD:  lda     $0490,x
        bne     LEC1C
        lda     #$02
        sta     $0490,x
        lda     $04A0,x
        tay
        lda     $AC20,y
        sta     $030C
        sta     $032C
        lda     $AC21,y
        sta     $030D
        sta     $032D
        lda     $AC22,y
        sta     $030E
        sta     $032E
        lda     $AC23,y
        sta     $030F
        sta     $032F
        .byte   $A9
LEC00:  .byte   $FF
        sta     $18
        inc     $04A0,x
        inc     $04A0,x
        inc     $04A0,x
        inc     $04A0,x
        lda     $04A0,x
        cmp     #$0A
        bcc     LEC1F
        lda     #$00
        sta     $04A0,x
        rts

LEC1C:  dec     $0490,x
LEC1F:  rts

        .byte   $0F
        ora     ($01),y
        .byte   $1C
        .byte   $0F
        ora     ($1C,x)
        ora     ($0F),y
        .byte   $1C
        ora     ($01),y
        lda     $04D0,x
        and     #$0F
        bne     LEC3C
        sta     $0480,x
        sta     $0490,x
        inc     $04D0,x
LEC3C:  lda     $0420,x
        cmp     #$91
        bne     LEC46
        jmp     LACE0

LEC46:  lda     $0480,x
        bne     LEC99
        ldy     $0490,x
        lda     $8E95,y
        asl     a
        tay
        lda     $8E55,y
        sta     $0550,x
        lda     $8E56,y
        sta     $0560,x
        lda     $8E75,y
        sta     $0530,x
        lda     $8E76,y
        sta     $0540,x
        lda     $0540,x
        bpl     LEC85
        lda     $0530,x
        eor     #$FF
        clc
        adc     #$01
        sta     $0530,x
        lda     $0540,x
        eor     #$FF
        adc     #$00
        sta     $0540,x
LEC85:  inc     $0490,x
        lda     $0490,x
        cmp     #$0E
        bne     LEC94
        lda     #$00
        sta     $0490,x
LEC94:  lda     #$06
        sta     $0480,x
LEC99:  dec     $0480,x
        lda     $0460,x
        clc
        adc     $0550,x
        sta     $0460,x
        lda     $0510,x
        adc     $0560,x
        sta     $0510,x
        lda     $0580,x
        and     #$02
        bne     LECBD
        jsr     LF4FD
        bcs     LECC0
        bcc     LECC0
LECBD:  jsr     LF51B
LECC0:  lda     $05A0,x
        bne     LECDF
        lda     #$91
        jsr     LFA6C
        lda     #$30
        jsr     LF850
        lda     #$00
        sta     $0530,x
        sta     $0550,x
        lda     #$04
        sta     $0540,x
        sta     $0560,x
LECDF:  rts

        lda     $0410,x
        cmp     #$01
        bne     LECDF
        lda     #$01
        sta     $0410,x
        lda     #$00
        sta     $0430,x
        lda     $04D0,x
        and     #$0F
        cmp     #$02
        beq     LED22
        cmp     #$03
        beq     LED47
        ldy     #$02
        lda     $0580,x
        and     #$01
        bne     LED12
        lda     #$50
        jsr     LF200
        jsr     LF2A6
        jmp     LAD1A

LED12:  lda     #$53
        jsr     LF254
        jsr     LF24B
        lda     $10
        beq     LECDF
        inc     $04D0,x
        rts

LED22:  ldy     #$01
        lda     #$28
        jsr     LF2AF
        ldy     #$01
        lda     $0580,x
        and     #$01
        bne     LED3A
        lda     #$26
        jsr     LF254
        jmp     LAD3F

LED3A:  lda     #$24
        jsr     LF200
        lda     $10
        beq     LECDF
        inc     $04D0,x
        rts

LED47:  lda     $0580,x
        and     #$01
        bne     LED54
        jsr     LF51B
        jmp     LAD57

LED54:  jsr     LF4FD
        jsr     LF55E
        rts

        lda     $04D0,x
        and     #$0F
        bne     LED7F
        lda     #$20
        sta     $0490,x
        lda     #$80
        .byte   $9D
        .byte   $30
LED6B:  ora     $A9
        ora     ($9D,x)
        rti

        ora     $20
        plp
        sbc     $0390,y
        inc     $0480,x
LED79:  jsr     LF808
        inc     $04D0,x
LED7F:  lda     $05A0,x
        ora     #$80
        .byte   $9D
LED85:  ldy     #$05
        lda     $0480,x
        beq     LED99
        jsr     LF4FD
        jsr     LF928
        bcs     LEDA4
        jsr     LADC1
        bpl     LEDA4
LED99:  jsr     LF51B
        .byte   $20
LED9D:  plp
        sbc     $0390,y
        jsr     LADC1
LEDA4:  dec     $0490,x
        beq     LEDAA
        rts

LEDAA:  jsr     LADCA
        lda     $0480,x
        eor     #$01
        sta     $0480,x
        lda     $0580,x
        eor     #$03
        sta     $0580,x
        jsr     LF808
        rts

        lda     $05A0,x
        eor     #$80
        sta     $05A0,x
        rts

        lda     $E4
        adc     $E5
        sta     $E5
        and     #$03
        tay
        lda     $ADEA,y
        sta     $0530,x
        lda     $ADEE,y
        sta     $0540,x
        lda     $ADE6,y
        sta     $0490,x
        rts

        rti

        bmi     LEE29
        bmi     LED6B
        brk
        .byte   $80
        brk
        ora     ($02,x)
        ora     ($02,x)
        lda     $04D0,x
        and     #$0F
        bne     LEE0E
        sta     $0540,x
        lda     #$80
        sta     $0530,x
        lda     #$3C
        sta     $0480,x
        lda     #$31
        jsr     LF850
        inc     $04D0,x
LEE0E:  ldy     #$01
        lda     #$56
        jsr     LF2D7
        php
        ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LEE27
        lda     #$00
        jsr     LF200
        jmp     LAE2C

LEE27:  lda     #$03
LEE29:  jsr     LF254
        plp
        bcc     LEE3D
        lda     $10
        cmp     #$03
        bcc     LEE3D
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LEE3D:  lda     $0480,x
        bne     LEE4A
        jsr     LF7EE
        lda     #$3D
        sta     $0480,x
LEE4A:  dec     $0480,x
        lda     $05A0,x
        bne     LEE61
        lda     $0420,x
        cmp     #$95
        beq     LEE61
        lda     #$95
        jsr     LFA6C
        jsr     LAE62
LEE61:  rts

        jsr     LFA4C
        bcs     LEEBB
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $99FF,y
        pha
        lda     $0500,x
        adc     $9A00,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sec
        sbc     #$0C
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$96
        jsr     LFA84
        lda     #$05
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        lda     #$44
        sta     $0550,y
        lda     #$03
        sta     $0560,y
        lda     #$80
        sta     $0530,y
        lda     #$00
        sta     $0540,y
LEEBB:  rts

        lda     $04D0,x
        and     #$0F
        tay
        lda     $AFFF,y
        sta     L0000
        lda     $B003,y
        sta     $01
        jmp     (L0000)

        lda     #$80
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$00
        sta     $0480,x
        sta     $0550,x
        sta     $0560,x
        inc     $04D0,x
        rts

        jsr     LF928
        cmp     #$30
        bcs     LEF14
        lda     #$00
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$40
        sta     $0550,x
        lda     #$03
        sta     $0560,x
        lda     #$61
        jsr     LFA6C
        lda     #$31
        sta     $04A0,x
        inc     $04B0,x
        inc     $04D0,x
        rts

LEF14:  ldy     #$02
        lda     #$62
        jsr     LF2D7
        php
        ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LEF2D
        lda     #$5C
        jsr     LF200
        jmp     LAF32

LEF2D:  lda     #$5F
        jsr     LF254
        plp
        bcc     LEF5D
        lda     $10
        cmp     #$03
        bcc     LEF58
        inc     $0480,x
        lda     $0480,x
        cmp     #$03
        beq     LEF50
        lda     #$04
        sta     $0560,x
        lda     #$00
        sta     $0550,x
        rts

LEF50:  lda     $0580,x
        eor     #$03
        sta     $0580,x
LEF58:  lda     #$00
        sta     $0480,x
LEF5D:  rts

        dec     $04A0,x
        bne     LEF7E
        lda     #$1E
        sta     $0490,x
        lda     #$60
        jsr     LFA6C
        lda     #$00
        sta     $0560,x
        sta     $0550,x
        lda     #$00
        sta     $04B0,x
        inc     $04D0,x
        rts

LEF7E:  lda     $04A0,x
        cmp     #$20
        bpl     LEF8B
        cmp     #$10
        bmi     LEF8B
        bpl     LEFAB
LEF8B:  ldy     #$02
        lda     #$62
        jsr     LF2D7
        bcc     LEF9F
        lda     $04B0,x
        beq     LEF9F
        jsr     L9028
        dec     $04B0,x
LEF9F:  lda     #$01
        sta     $0540,x
        lda     #$00
        sta     $0530,x
        bne     LEFB5
LEFAB:  lda     #$00
        sta     $0530,x
        lda     #$02
        sta     $0540,x
LEFB5:  ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LEFC6
        lda     #$5C
        jsr     LF200
        jmp     LAFCB

LEFC6:  lda     #$5F
        jsr     LF254
        lda     $10
        cmp     #$03
        bcc     LEFD9
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LEFD9:  rts

        dec     $0490,x
        ldy     #$02
        lda     #$62
        jsr     LF2D7
        bcc     LEFFE
        jsr     LF81D
        lda     $0490,x
        bpl     LEFFE
        lda     #$80
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        dec     $04D0,x
        dec     $04D0,x
LEFFE:  rts

        .byte   $CF
        inx
        lsr     $AEDA,x
        ldx     $AFAF
        lda     $04D0,x
        and     #$0F
        bne     LF035
        jsr     LF928
        cmp     #$40
        bcs     LF031
        jsr     LF919
        cmp     #$30
        bcs     LF031
        inc     $04D0,x
        lda     #$69
        jsr     LFA6C
        lda     $05A0,x
        eor     #$80
        sta     $05A0,x
        lda     #$2D
        sta     $0480,x
LF031:  jsr     LF869
LF034:  rts

LF035:  jsr     LF81D
        lda     $0420,x
        cmp     #$6B
        beq     LF05A
        lda     $04D0,x
        and     #$02
        bne     LF0A2
        lda     $0410,x
        cmp     #$05
        bne     LF034
        lda     $0430,x
        cmp     #$08
        bne     LF034
        lda     #$6B
        jsr     LFA6C
        rts

LF05A:  lda     $0400,x
        cmp     #$50
        beq     LF034
        cmp     #$10
        beq     LF034
        lda     $0410,x
        cmp     #$01
        bne     LF034
        lda     $0430,x
        cmp     #$00
        beq     LF085
        cmp     #$10
        bne     LF034
        lda     #$6A
        jsr     LFA6C
        lda     #$00
        sta     $0490,x
        inc     $04D0,x
LF084:  rts

LF085:  lda     $0400,x
        cmp     #$50
        beq     LF084
        cmp     #$10
        beq     LF084
        lda     #$29
        jsr     LF850
        jsr     LB0EC
        inc     $0490,x
        lda     $0490,x
        cmp     #$02
        bne     LF034
LF0A2:  lda     $0480,x
        bne     LF0C2
        lda     $0420,x
        cmp     #$72
        beq     LF0CB
        jsr     LF928
        cmp     #$40
        bcs     LF0C6
        lda     #$6B
        jsr     LFA6C
        dec     $04D0,x
        lda     #$2D
        sta     $0480,x
LF0C2:  dec     $0480,x
        rts

LF0C6:  lda     #$72
        jsr     LFA6C
LF0CB:  lda     $0410,x
        cmp     #$05
        bne     LF0EB
        lda     $0430,x
        cmp     #$08
        bne     LF0EB
        lda     $05A0,x
        ora     #$80
        sta     $05A0,x
        lda     #$80
        sta     $04D0,x
        lda     #$69
        jsr     LFA6C
LF0EB:  rts

        .byte   $20
LF0ED:  jmp     LB0FA

        .byte   $FA
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        sta     $0D
        clc
        adc     $B18F,y
        pha
        lda     $0500,x
        sta     $0C
        adc     $B190,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sta     $0E
        sec
        sbc     #$18
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$6C
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$13
        sta     $0570,y
        lda     $0510,y
        sta     $0510,x
        lda     $04F0,y
        sta     $04F0,x
        lda     $0500,y
        sta     $0500,x
        jsr     LF93F
        tay
        sty     L0000
        lda     $9F3C,y
        ldy     $0F
        sta     $0580,y
        ldy     L0000
        lda     $B193,y
        ldy     $0F
        sta     $0530,y
        ldy     L0000
        lda     $B1A3,y
        ldy     $0F
        sta     $0540,y
        ldy     L0000
        lda     $B1B3,y
        ldy     $0F
        sta     $0550,y
        ldy     L0000
        lda     $B1C3,y
        ldy     $0F
        sta     $0560,y
        lda     $0E
        sta     $0510,x
        lda     $0D
        sta     $04F0,x
        lda     $0C
        sta     $0500,x
        rts

        rol     L0000
        .byte   $DA
        .byte   $FF
        brk
        adc     ($B5,x)
        cpx     LEC00
        lda     $61,x
        brk
        adc     ($B5,x)
        cpx     LEC00
        lda     $61,x
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
        brk
        cpx     $61B5
        brk
        adc     ($B5,x)
        cpx     LEC00
        lda     $61,x
        brk
        adc     ($B5,x)
        cpx     a:$01
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
        lda     $04D0,x
        and     #$0F
        bne     LF1FC
        sta     $0550,x
        lda     #$03
        sta     $0560,x
        inc     $04D0,x
        ldy     $22
        lda     ($32),y
        cmp     #$B3
        bne     LF1FC
        lda     $2F
        cmp     #$02
        bne     LF1FC
        lda     $FC
LF1F5:  cmp     #$40
        bcs     LF1FC
        jmp     LFA9A

LF1FC:  lda     $04D0,x
        .byte   $29
LF200:  .byte   $0F
        cmp     #$02
        beq     LF242
        cmp     #$03
        beq     LF24F
        lda     $0420,x
        cmp     #$6E
        beq     LF21F
        jsr     LF539
        lda     $0510,x
        cmp     #$4C
        bcc     LF21E
        lda     #$6E
        bne     LF23E
LF21E:  rts

LF21F:  lda     $0400,x
        cmp     #$50
        beq     LF21E
        cmp     #$10
        beq     LF21E
        lda     $0410,x
        cmp     #$01
        bne     LF21E
        jsr     LB27F
        lda     #$1E
        sta     $0480,x
        inc     $04D0,x
        lda     #$6D
LF23E:  jsr     LFA6C
        rts

LF242:  lda     $0480,x
        bne     LF24B
        inc     $04D0,x
        rts

LF24B:  dec     $0480,x
        rts

LF24F:  lda     $0490,x
        bne     LF27C
LF254:  jsr     LF93F
        tay
        lda     $9F3C,y
        sta     $0580,x
        lda     $A799,y
        sta     $0530,x
        lda     $A7A9,y
        sta     $0540,x
        lda     $A7B9,y
        sta     $0550,x
        lda     $A7C9,y
        sta     $0560,x
        jsr     LF808
        inc     $0490,x
LF27C:  jmp     L8BDA

        jsr     LFA4C
        bcs     LF2F7
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $B2F8,y
        pha
        lda     $0500,x
        adc     $B2F9,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
LF2A6:  lda     $0510,x
        sta     $0510,y
        lda     $0520,x
LF2AF:  sta     $0520,y
        lda     #$6F
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        jsr     LF93F
        tay
        sty     L0000
        lda     $9F3C,y
        ldy     $0F
        sta     $0580,y
        ldy     L0000
        lda     $B193,y
        ldy     $0F
        .byte   $99
LF2D7:  bmi     LF2DE
        ldy     L0000
        lda     $B1A3,y
LF2DE:  ldy     $0F
        sta     $0540,y
        ldy     L0000
        lda     $B1B3,y
        ldy     $0F
        sta     $0550,y
        ldy     L0000
        lda     $B1C3,y
        ldy     $0F
        sta     $0560,y
LF2F7:  rts

        bpl     LF2FA
LF2FA:  .byte   $F0
LF2FB:  .byte   $FF
        lda     $04D0,x
        and     #$0F
        tay
        lda     $B30F,y
        sta     L0000
        lda     $B314,y
        sta     $01
        jmp     (L0000)

        ora     $782C,y
        tya
        inc     $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        lda     #$08
        sta     $0480,x
        inc     $04D0,x
        lda     #$E6
        sta     $0530,x
        lda     #$00
        sta     $0540,x
        rts

        lda     $05A0,x
        cmp     #$06
        bcs     LF347
        inc     $04D0,x
        lda     $05A0,x
        sta     $0480,x
        lda     #$80
        sta     $05A0,x
        lda     #$77
        jsr     LFA6C
        rts

LF347:  lda     $0490,x
        cmp     #$02
        beq     LF368
        lda     $0480,x
        bne     LF361
        jsr     LF81D
        jsr     LB42F
        inc     $0490,x
        lda     #$14
        sta     $0480,x
LF361:  jsr     LF81D
        dec     $0480,x
        rts

LF368:  inc     $0480,x
        lda     $0480,x
        cmp     #$3C
        bne     LF377
        lda     #$00
        sta     $0490,x
LF377:  rts

        lda     $0410,x
        cmp     #$10
        bne     LF377
        lda     $0430,x
        cmp     #$02
        bne     LF377
        lda     #$78
        jsr     LFA6C
        lda     $0480,x
        sta     $05A0,x
        inc     $04D0,x
        jsr     LF81D
        rts

        ldy     #$02
        lda     #$06
        jsr     LF2D7
        php
        ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LF3B1
        lda     #$00
        jsr     LF200
        jmp     LB3B6

LF3B1:  lda     #$03
        jsr     LF254
        plp
        bcc     LF3C7
        lda     $10
        cmp     #$03
        bcc     LF3C7
        lda     $0580,x
        eor     #$03
        sta     $0580,x
LF3C7:  lda     $05A0,x
        cmp     #$01
        bcs     LF3E5
        lda     #$79
        jsr     LFA6C
        lda     #$80
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        lda     #$44
        sta     $0570,x
        inc     $04D0,x
LF3E5:  rts

        ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LF3F7
        lda     #$44
        jsr     LF200
        jmp     LB3FC

LF3F7:  lda     #$47
        jsr     LF254
        ldy     #$02
        lda     #$4A
        jsr     LF2D7
        bcc     LF421
        lda     $E4
        adc     $E5
        sta     $E5
        and     #$03
        tay
        lda     $B427,y
        sta     $0550,x
        lda     $B42B,y
        sta     $0560,x
        jsr     LF7EE
        lda     #$79
        bne     LF423
LF421:  lda     #$A7
LF423:  jsr     LFA6C
        rts

        .byte   $DC
        sty     $8CEA
        .byte   $03
        ora     $07
        ora     $20
        jmp     LB0FA

        lsr     a
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $B47F,y
        pha
        lda     $0500,x
        adc     $B480,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        clc
        adc     #$02
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$6F
        jsr     LFA84
        lda     #$0B
        sta     $04E0,y
        lda     #$0A
        sta     $0570,y
        lda     #$00
        sta     $0530,y
        lda     #$02
        sta     $0540,y
        rts

        .byte   $0C
        brk
        .byte   $F4
        .byte   $FF
        lda     $04D0,x
        and     #$0F
        bne     LF495
        sta     $0530,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
LF495:  lda     $0420,x
        cmp     #$71
        beq     LF4AD
        cmp     #$74
        beq     LF4D7
        jsr     LF928
        cmp     #$48
        bcs     LF4AC
        lda     #$71
        jsr     LFA6C
LF4AC:  rts

LF4AD:  lda     $04D0,x
        and     #$02
        bne     LF4CC
        lda     $0410,x
        cmp     #$02
        bne     LF4AC
        lda     $0430,x
        cmp     #$04
        bne     LF4AC
        jsr     LF81D
        jsr     LB521
        inc     $04D0,x
        rts

LF4CC:  lda     #$01
        sta     $05A0,x
        lda     #$74
        jsr     LFA6C
        rts

LF4D7:  ldy     #$02
        lda     #$06
        jsr     LF2D7
        php
        ldy     #$02
        lda     $0580,x
        and     #$01
        beq     LF4F0
        lda     #$00
        jsr     LF200
        jmp     LB4F5

LF4F0:  lda     #$03
        .byte   $20
LF4F3:  .byte   $54
        .byte   $F2
        plp
        bcc     LF520
        lda     $10
        cmp     #$03
        .byte   $90
LF4FD:  ora     $90FE,x
        .byte   $04
        lda     $0490,x
        cmp     #$04
        beq     LF513
        lda     #$DC
        sta     $0550,x
        lda     #$03
        sta     $0560,x
        rts

LF513:  lda     $0580,x
        eor     #$03
        sta     $0580,x
LF51B:  lda     #$01
        sta     $0480,x
LF520:  rts

        jsr     LFA4C
        bcs     LF56B
        sty     $0F
        lda     $0580,x
        sta     $0580,y
        and     #$02
        tay
        lda     $04F0,x
        clc
        adc     $B56C,y
        pha
LF539:  lda     $0500,x
        adc     $B56D,y
        ldy     $0F
        sta     $0500,y
        pla
        sta     $04F0,y
        lda     $0510,x
        sec
        sbc     #$14
        sta     $0510,y
        lda     $0520,x
        sta     $0520,y
        lda     #$70
        jsr     LFA84
        lda     #$43
LF55E:  sta     $04E0,y
        lda     #$40
        sta     $0570,y
        lda     #$00
        sta     $05A0,y
LF56B:  rts

        .byte   $12
        brk
        inc     $BDFF
        bne     LF577
        and     #$0F
        bne     LF585
LF577:  sta     $0530,x
        sta     $0480,x
        lda     #$01
        sta     $0540,x
        inc     $04D0,x
LF585:  lda     $0480,x
        cmp     #$03
        beq     LF5BA
        ldy     #$02
        lda     #$06
        jsr     LF2D7
        bcc     LF5AD
        lda     $0480,x
        tay
        lda     $B5EB,y
        sta     $0550,x
        lda     $B5EE,y
        sta     $0560,x
        lda     #$34
        jsr     LF850
        inc     $0480,x
LF5AD:  lda     $0580,x
        and     #$01
        beq     LF5B7
        jmp     LF4FD

LF5B7:  jmp     LF51B

LF5BA:  lda     $04D0,x
        and     #$02
        bne     LF5D8
        inc     $04D0,x
        lda     #$44
        sta     $0550,x
LF5C9:  lda     #$03
        sta     $0560,x
        lda     #$80
        sta     $0530,x
        lda     #$00
        sta     $0540,x
LF5D8:  lda     $0580,x
        and     #$01
        beq     LF5E5
        jsr     LF4FD
        jmp     LB5E8

LF5E5:  jsr     LF51B
        jmp     LF5C9

        .byte   $DC
        .byte   $BE
LF5ED:  .byte   $80
        .byte   $03
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
        .byte   $13
        .byte   $67
        adc     $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $64
        .byte   $13
        .byte   $13
        .byte   $13
        lsr     $0C,x
        lsr     $5E,x
        .byte   $3A
        lsr     $5E3A,x
        bpl     LF755
        bpl     LF757
        bpl     LF736
        .byte   $2F
        asl     $07
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        lsr     $0C,x
        ror     $5E
        .byte   $3A
        .byte   $3B
        .byte   $13
        .byte   $3B
        ror     $65
        .byte   $2F
        .byte   $3B
        .byte   $67
        cli
        .byte   $3A
        cli
        bpl     LF775
        bpl     LF725
        .byte   $0C
        .byte   $0C
        .byte   $13
        .byte   $64
        .byte   $2F
        .byte   $67
        .byte   $2F
        .byte   $13
        .byte   $13
        cli
        .byte   $3A
        .byte   $5E
LF725:  bpl     LF762
        ror     $3B
        .byte   $67
        .byte   $13
        .byte   $13
        .byte   $0C
        .byte   $0C
        ora     ($11),y
        .byte   $13
        adc     $6E
        .byte   $12
        .byte   $0C
        .byte   $36
LF736:  .byte   $13
        rol     $6437,x
        .byte   $3F
        .byte   $13
        .byte   $13
        rol     $13,x
        rol     $1337,x
        .byte   $3F
        .byte   $13
        clc
        ora     $2120,y
        .byte   $1A
        .byte   $1B
        .byte   $22
        .byte   $23
        .byte   $1C
        .byte   $1C
        .byte   $23
        .byte   $23
        .byte   $13
        and     #$13
        .byte   $13
        rol     a
LF755:  .byte   $2B
        .byte   $29
LF757:  rol     a
        plp
        bit     $242B
        bit     $252C
        and     $04
        .byte   $2C
LF762:  and     $25
        bit     $2C2C
        bit     $3A58
        lsr     $163A,x
        .byte   $17
        asl     $0E0F
        .byte   $0F
        asl     $17,x
        .byte   $13
LF775:  .byte   $13
        .byte   $72
        .byte   $73
        jmp     (L450D)

        .byte   $27
        ora     $15,x
        .byte   $27
        .byte   $27
        ora     $2D,x
        .byte   $27
        lsr     $7A
        .byte   $7B
        eor     $27
        rti

        eor     ($48,x)
        eor     #$42
        eor     ($4A,x)
        eor     #$42
        .byte   $43
        lsr     a
        .byte   $4B
        ror     $76,x
        lsr     $724E
        .byte   $73
        .byte   $7A
        .byte   $7B
        .byte   $13
        eor     $5013
        lsr     $544E
        .byte   $54
        .byte   $5C
        .byte   $5C
        .byte   $54
        .byte   $54
        .byte   $44
        lsr     $5454
        .byte   $1C
        asl     $1D23,x
        .byte   $13
        .byte   $02
        .byte   $13
        .byte   $03
        pla
        eor     $6170,y
        .byte   $5A
        .byte   $5B
        .byte   $62
        .byte   $63
        pla
        eor     $8382,y
        bit     $251F
        .byte   $77
        .byte   $1C
        .byte   $1C
        and     $77
        jmp     (L270D)

        .byte   $27
        .byte   $14
        ora     $45,x
        .byte   $27
        .byte   $7A
        .byte   $7B
        .byte   $27
        .byte   $27
        adc     $5C79,y
        .byte   $5C
        lsr     $544C
        eor     $68,x
        adc     #$70
        adc     ($5C),y
        .byte   $5C
        pla
        eor     $5C5C,y
        .byte   $5A
        .byte   $5B
        .byte   $5C
        eor     $6968,x
        .byte   $1C
        .byte   $1D
LF7EE:  and     $26
        rol     $2761
        .byte   $27
        bvs     LF857
        .byte   $27
        .byte   $27
        .byte   $62
        .byte   $63
        .byte   $27
        .byte   $27
        bvs     LF86F
        .byte   $27
        .byte   $27
        rti

        .byte   $41
LF802:  eor     ($52),y
        .byte   $42
        eor     ($52,x)
        .byte   $52
LF808:  eor     $27
        rti

        eor     ($27,x)
        .byte   $27
        .byte   $42
        eor     ($51,x)
        .byte   $52
        eor     $27
        .byte   $52
        .byte   $52
        .byte   $27
        .byte   $27
        sta     ($A5),y
        .byte   $92
        .byte   $AD
        .byte   $92
LF81D:  lda     $9A99
        .byte   $5C
        .byte   $5C
        .byte   $72
        .byte   $73
        .byte   $5C
        .byte   $5C
        .byte   $80
        sta     ($5C,x)
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        eor     $5D5C,x
        .byte   $92
        lda     $AD92
        dey
        .byte   $89
        .byte   $27
        .byte   $27
        sty     $8E
        stx     $8A
        tay
        stx     $8A8B
        stx     $8A
        stx     $8A
        .byte   $8B
        txa
LF846:  .byte   $8B
        txa
        .byte   $9B
        tya
        .byte   $93
        tya
        sta     $929A,y
        .byte   $AD
LF850:  .byte   $27
        lsr     $42
        .byte   $43
        sta     ($A5),y
        .byte   $99
LF857:  txs
        ldy     $90
        .byte   $9B
        tya
        .byte   $93
        tya
        .byte   $9B
        tya
        .byte   $52
        .byte   $53
        .byte   $27
        lsr     $92
        lda     $3332
        .byte   $93
LF869:  tya
        .byte   $34
        and     $A4,x
        bcc     LF802
LF86F:  tya
        sty     $85
LF872:  stx     $87
        stx     $87
        sty     $938D
        tya
        .byte   $93
        tya
        lda     $92A5,x
        lda     $9594
        .byte   $8B
        txa
        tay
        sta     $8B
        .byte   $87
        .byte   $8B
        sta     $878B,x
        ldy     $918F
        lda     $AC
        .byte   $8F
        ldy     $90
        .byte   $9C
        sta     $8786,x
        ldy     $918D
        lda     $8B
        .byte   $87
        .byte   $8B
        .byte   $87
        stx     $87
        stx     $87
        .byte   $92
LF8A5:  lda     $0A0A
        .byte   $93
        tya
        asl     a
        asl     a
        stx     $8A
        stx     $9D
        .byte   $BF
        bcc     LF846
        tya
        sei
        .byte   $47
        .byte   $BF
LF8B7:  bcc     LF908
        .byte   $47
        sta     ($A5),y
        .byte   $4F
        .byte   $47
        ldy     $90
        .byte   $57
        sta     $86
        sta     $9B,x
        tya
        ora     #$05
        stx     $87
        sty     $87,x
        stx     $8A
        sty     $8B8F
        txa
        ldy     $8B8F
        .byte   $87
        ldy     $998D
        txs
        .byte   $3C
        .byte   $3C
        .byte   $9B
        tya
        .byte   $3C
        and     $9586,x
        stx     $8A
        brk
        brk
        brk
        brk
        .byte   $34
        and     $9B,x
        tya
        .byte   $32
        .byte   $33
        sta     $A49A,y
        bcc     LF927
        and     $91,x
        lda     $32
        .byte   $33
        ldy     #$A1
        bcs     LF8A5
        .byte   $80
        sta     ($88,x)
        .byte   $89
        ldy     #$A3
        clv
        .byte   $BB
        bcs     LF8B7
        clv
        .byte   $B9
LF908:  .byte   $7C
        adc     a:L0000,x
        lda     ($A3,x)
        tax
        .byte   $AB
        bmi     LF943
        sec
        and     $B3B2,y
        tsx
        .byte   $BB
        .byte   $94
LF919:  txa
        .byte   $8B
        txa
        .byte   $74
        adc     L0000,x
        brk
        sty     $8E
        sty     LA88F
        .byte   $8E
        .byte   $9C
LF927:  txa
LF928:  .byte   $8B
        sta     $8B,x
        txa
        brk
        bcc     LF92F
LF92F:  tya
        brk
        tya
        brk
        tya
        sta     $749A,y
        adc     $9B,x
        tya
        .byte   $7C
        adc     $AD92,x
        .byte   $09
LF93F:  ora     #$86
        txa
        .byte   $94
LF943:  txa
        .byte   $8B
        txa
        .byte   $8B
        sta     $3332,x
        .byte   $92
        lda     $0834
        .byte   $93
        tya
        .byte   $34
        and     $93,x
        tya
        .byte   $8B
        txa
        .byte   $9C
        txa
        .byte   $92
        lda     $0832
        .byte   $93
        tya
        .byte   $7C
        adc     $A5BD,x
        .byte   $74
        adc     $A8,x
        sta     $8B
        sta     $99,x
        txs
        ora     #$09
        stx     $87
        sty     $95,x
        .byte   $32
        .byte   $33
        ora     #$09
        ora     #$05
        sty     $098F
        ora     #$AC
        .byte   $8F
        ora     #$05
        ldy     $948F
        txa
        ldy     $A68F
        .byte   $A7
        ldx     $A7
        ldx     $A7
        ldx     $4EAF
        lsr     $5C5C
        lsr     $5C4C
        eor     $5454,x
        .byte   $5C
        .byte   $5C
        .byte   $54
        eor     $5C,x
        eor     $A1A0,x
        clv
        ldy     $A0A3,x
        .byte   $BB
        clv
        stx     $96,y
        .byte   $9E
        .byte   $9F
        .byte   $54
        .byte   $54
        ldy     #$A3
        lda     ($A3,x)
        ldy     $B0BB,x
        ldy     $B8,x
        .byte   $BB
        .byte   $93
        tya
        .byte   $34
        php
        sta     $329A,y
        .byte   $33
        .byte   $9B
        tya
        .byte   $34
        and     $93,x
        tya
LF9C2:  php
        and     $99,x
        txs
LF9C6:  php
        .byte   $33
        .byte   $9B
        stx     $93
        stx     $93
        stx     $34
        stx     $93
        sty     $9093
        .byte   $93
        tya
        .byte   $93
        and     $32,x
        php
        .byte   $92
        lda     $AD92
        php
        .byte   $33
        tay
        ror     a
        .byte   $8B
        .byte   $87
        .byte   $4F
        .byte   $6B
        ldy     $90
        sta     $849A,y
        sta     $76
        ror     $A4,x
        bcc     LF9FB
        asl     a
        .byte   $3C
        and     $0A0A,x
        .byte   $3C
        .byte   $3C
        ror     $76,x
        .byte   $B5
LF9FB:  lda     $99
        txs
        ror     $76,x
        .byte   $9B
        tya
        ror     $76,x
        lda     $99A5,x
        txs
        sty     $87,x
        .byte   $8B
        .byte   $87
        ror     $76,x
        brk
        brk
        ror     $76,x
        sta     ($A5),y
        lda     $A5,x
        .byte   $92
        lda     $90BF
        .byte   $9B
        tya
        jmp     (L7E6D)

        .byte   $7F
        .byte   $93
        tya
        .byte   $82
        .byte   $83
        ror     $7E7F,x
        .byte   $7F
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        and     ($38),y
        and     $9292,y
        bmi     LF9C6
        .byte   $92
        .byte   $92
        .byte   $92
        sec
        and     ($92),y
        and     $9230,y
        .byte   $92
        cpx     #$30
        dec     $D7,x
        dec     LD4DF,x
        .byte   $92
        .byte   $DC
        .byte   $92
        cpy     $C5
        .byte   $CC
        .byte   $CD
LFA4C:  dec     $C7
        dec     LD5CF
        .byte   $92
        cmp     LC092,x
        cpy     #$C2
        .byte   $C3
        cpy     #$C1
        .byte   $C2
        .byte   $C9
LFA5C:  .byte   $92
        cld
        .byte   $92
        .byte   $92
        cmp     LE1DA,y
        .byte   $E2
        .byte   $DB
        .byte   $DB
        .byte   $E3
        .byte   $E3
        dex
        .byte   $CB
        .byte   $92
        .byte   $92
LFA6C:  dex
        cmp     #$92
        cmp     #$E1
        .byte   $D2
        sbc     ($92,x)
        .byte   $D3
        .byte   $D3
        .byte   $92
        .byte   $92
LFA78:  inx
        sbc     #$F0
        .byte   $F2
        sbc     LF0ED,y
        sbc     ($C8),y
        .byte   $FB
        .byte   $F3
        .byte   $F4
LFA84:  cpx     LEB92
        .byte   $FC
        sed
        .byte   $FB
        .byte   $F3
        .byte   $F4
        sed
        .byte   $FA
        .byte   $F3
        .byte   $F4
        sed
        .byte   $92
        .byte   $EB
        .byte   $FC
        .byte   $EB
        sbc     LF4F3,x
        sed
        .byte   $D0
LFA9A:  .byte   $EB
        .byte   $FC
        sbc     LC8ED,y
        sbc     ($F7),y
LFAA1:  sbc     #$EE
        .byte   $F2
        inx
        sbc     #$F0
        bne     LFAA1
        .byte   $92
        .byte   $F7
        .byte   $FC
        iny
        .byte   $E9
LFAAE:  beq     LFAA1
        sbc     LF5ED,y
LFAB3:  inc     $E8,x
        sbc     #$F0
        sbc     ($F9),y
        sbc     LF1F5
        .byte   $FF
        sbc     #$F0
        sbc     ($F9),y
        bne     LFAB3
        sbc     ($E4),y
        .byte   $92
        sbc     $E5
        cmp     ($FE),y
        sbc     $E5
LFACC:  cmp     ($92),y
        sbc     $E5
        inc     $E6
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
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
        .byte   $3A
        .byte   $9E
        ora     ($04,x)
        ora     ($11),y
        ldy     $72AE
        sta     $6811,x
        inx
        nop
        ora     ($21),y
        ora     ($11),y
        iny
        cmp     #$F8
        .byte   $FA
LFAF8:  rti

        .byte   $42
        .byte   $42
        .byte   $43
        .byte   $64
        .byte   $64
        .byte   $64
        ora     ($60,x)
        .byte   $62
        .byte   $64
        .byte   $64
        ora     ($01,x)
        ora     ($64,x)
        .byte   $23
        adc     ($51),y
LFB0B:  ora     ($01,x)
        cmp     #$27
        ora     ($CC),y
        dec     $9D9D
        sta     $119D,x
        ora     ($EC),y
        inc     $5711
        cpy     $F6
        .byte   $89
        .byte   $47
        bit     $0C2E
        rol     $6414
        .byte   $64
        sta     ($4C,x)
        eor     L4D4D
        brk
        asl     L0000
        .byte   $82
        php
        jmp     L4D4D

        .byte   $09
LFB35:  ora     #$11
        .byte   $82
        ora     ($10),y
        jmp     (L106E)

        bpl     LFB96
        bit     $26
        and     #$8C
        bpl     LFB56
        ora     ($11),y
        and     $10
        bpl     LFACC
        sta     ($66,x)
        pla
        and     ($0F,x)
        .byte   $27
        and     #$48
        eor     #$11
        .byte   $89
LFB56:  .byte   $0B
        ora     ($80,x)
        bit     $38
        ror     a
        ora     ($8A),y
        .byte   $D4
        adc     LC2C0,y
        cpy     #$C2
LFB64:  .byte   $80
        sta     ($90,x)
        .byte   $92
        cpx     #$E2
        jsr     L9030
        .byte   $92
        sta     ($20,x)
        sta     L0000
        ora     ($11),y
        .byte   $B2
        .byte   $92
        .byte   $87
        .byte   $0F
LFB78:  txa
        .byte   $99
        .byte   $9B
LFB7B:  txs
        bmi     LFB9E
        .byte   $A7
        tay
        sty     $95,x
        .byte   $0F
        sta     L0000,x
        brk
        .byte   $B7
        bpl     LFB0B
        lda     $A5
        lda     $30
        .byte   $89
        .byte   $B7
        bpl     LFB35
        lda     $D5
        .byte   $D7
        lda     $88
LFB96:  .byte   $0F
        .byte   $0F
        ldy     $A5
        sbc     $A5,x
        lda     $BB
LFB9E:  .byte   $0F
        .byte   $BB
        .byte   $12
        .byte   $34
        bpl     LFBB4
        .byte   $03
        .byte   $04
        jsr     LAC05
        .byte   $54
        rti

        .byte   $42
        .byte   $13
        bit     $10
        and     $AE
        dec     $4A
        .byte   $4C
LFBB4:  .byte   $57
        ora     ($08),y
        asl     a
        ora     ($61),y
        .byte   $63
        adc     $77
        ora     ($28),y
        rol     a
        dex
        ror     a
        ror     $56,x
        clv
        txa
        tax
        tsx
        ldy     #$11
        .byte   $A3
        ldy     #$B0
        cmp     $B6
        tay
        bcc     LFB64
        .byte   $93
        bcs     LFB78
        .byte   $8B
        stx     $88
        ldy     #$A0
        .byte   $A3
        .byte   $A3
        .byte   $B2
        lda     $A6,x
        tay
        brk
        .byte   $0F
        .byte   $3B
        .byte   $DB
        asl     $1105
        ora     ($AD),y
        .byte   $AF
        .byte   $72
        sta     $5E70,x
        sbc     #$EB
        .byte   $53
        and     ($11,x)
        ora     ($C9),y
        cmp     #$F9
        .byte   $FB
        .byte   $41
LFBF9:  .byte   $42
        .byte   $42
        .byte   $64
        .byte   $64
        .byte   $44
        eor     $65
        adc     ($63,x)
        .byte   $64
        .byte   $64
        ora     ($01,x)
        adc     $64
        lsr     $5250
        ora     ($01,x)
        dex
        plp
        tya
        cmp     $9DCF
        sta     $9D9D,x
        tya
        ora     ($ED),y
        .byte   $EF
        lsr     $11,x
        cpy     $F7
        .byte   $CB
        ora     ($2D),y
        ora     $2F2D
        brk
        .byte   $64
        .byte   $64
        sta     ($4D,x)
LFC29:  eor     $4F4D
        .byte   $07
        brk
        brk
        sta     ($09,x)
        eor     $4F4D
        ora     #$0A
        .byte   $53
        sta     ($11,x)
        bpl     LFCA8
        .byte   $6F
        bpl     LFC58
        ora     ($24),y
        .byte   $27
LFC41:  .byte   $27
        sta     $118F
        and     $53
        ora     ($10),y
        .byte   $1A
        sta     ($83,x)
        .byte   $67
        pla
        lsr     $0F
        plp
        rol     a
        eor     #$4A
        ora     ($11),y
        .byte   $0B
        .byte   $0E
LFC58:  sta     ($24,x)
        and     $896B,y
        .byte   $8B
        brk
        adc     #$C1
        .byte   $C3
        cmp     ($C3,x)
        sta     ($83,x)
        sta     ($93),y
        sbc     ($E3,x)
        sty     $20
        sta     ($93),y
        sta     ($84,x)
        stx     L0000
        ora     ($89),y
        sta     ($B3),y
        .byte   $87
        .byte   $0F
        .byte   $8B
        txs
        sta     $209B,y
        sty     $A8
        lda     #$95
        sta     $0F,x
        stx     L0000,y
        brk
        bpl     LFC41
        sta     ($A5,x)
        lda     $A6
        jsr     L1011
        lda     $A5A5,y
        dec     $A6,x
        ldx     L0000
        .byte   $0F
        .byte   $0F
        lda     $F4
        lda     $A6
        lda     L0000
        .byte   $0F
        brk
        .byte   $12
        and     $10,x
        bpl     LFCA9
        .byte   $04
        and     ($06,x)
LFCA8:  .byte   $AD
LFCA9:  eor     $41,x
        .byte   $43
        bpl     LFCD3
        bit     $16
        .byte   $AF
        .byte   $C7
        .byte   $4B
        eor     $5958
        ora     #$0B
        rts

        .byte   $62
        .byte   $64
        .byte   $64
        sei
        adc     #$29
        .byte   $2B
        .byte   $CB
        .byte   $6B
        lsr     $56,x
        lda     $AA8A,y
        tsx
        lda     ($11,x)
        ldy     $B1
        lda     ($A4,x)
        .byte   $B7
        lda     #$91
        .byte   $92
LFCD2:  .byte   $94
LFCD3:  lda     ($A4,x)
        sty     $8987
        lda     ($C1,x)
        ldy     $B4
        .byte   $B2
        ldy     $A7
        lda     #$00
        .byte   $0F
        stx     $0136
        ldx     $1502,y
LFCE8:  ldy     $73BE,x
        brk
        bvs     LFD66
        sed
        .byte   $FA
        .byte   $57
        and     ($32),y
        ora     ($D8),y
        cmp     LFAF8,y
LFCF8:  bvc     LFD4C
LFCFA:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($50),y
        .byte   $52
        ora     ($34,x)
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $E7
        ora     ($50),y
        .byte   $52
        ora     ($D9,x)
        and     $11,x
        .byte   $DC
        dec     $8911,x
        ora     ($8A),y
        .byte   $89
        .byte   $47
        .byte   $FC
        inc     $1157,x
        brk
        brk
        .byte   $89
        .byte   $47
        .byte   $3C
        rol     $3E1C,x
        .byte   $10
LFD25:  .byte   $12
        .byte   $64
        lda     ($5C,x)
        eor     $5D5D,x
        bpl     LFD44
        bpl     LFCD2
        asl     $1E,x
        ora     ($01,x)
        bpl     LFD46
        bvs     LFCE8
LFD38:  ora     ($19),y
        .byte   $7C
        ror     $1010,x
        ora     ($09),y
        rol     $37,x
        .byte   $9C
        .byte   $10
LFD44:  and     $33
LFD46:  ora     ($11),y
        bpl     LFD63
        .byte   $92
        .byte   $A1
LFD4C:  ror     $78,x
        and     ($0F),y
        .byte   $37
        .byte   $37
        cli
        eor     $9D9D,y
        .byte   $1B
        .byte   $64
        ldy     #$10
        .byte   $4B
        .byte   $22
LFD5C:  sta     LD49D,x
        adc     LD2D0,y
        .byte   $F0
LFD63:  .byte   $F2
        bcc     LFCF8
LFD66:  bcc     LFCFA
        beq     LFD5C
        jsr     LA020
        lda     ($20,x)
LFD6F:  lda     ($8A,x)
        ora     ($11),y
        ora     ($20),y
        jsr     L0F97
        txa
        ora     ($89),y
        ora     ($B0),y
        .byte   $92
        .byte   $B7
        bpl     LFD25
        lda     $0F
        lda     $11
        .byte   $89
        .byte   $B7
        bpl     LFDA9
        lda     $A5
        .byte   $C7
        ldx     #$89
        tax
        .byte   $AB
        ldy     $A5
        sbc     $A5
        lda     $11
        .byte   $0F
        .byte   $0F
        ldy     $B5,x
        lda     $B5,x
        lda     $11,x
        .byte   $0F
        ora     ($22),y
        .byte   $44
        bmi     LFDD6
        .byte   $13
        .byte   $14
        bpl     LFDBD
        .byte   $BC
LFDA9:  .byte   $54
        bvc     LFDFE
        .byte   $13
        bpl     LFDBF
        bpl     LFD6F
        iny
        .byte   $5A
        .byte   $5C
        .byte   $67
        ora     ($18),y
        .byte   $1A
        ora     ($71),y
        .byte   $73
        adc     $11,x
LFDBD:  ror     $38
LFDBF:  .byte   $3A
        .byte   $DA
        .byte   $7A
        ror     $56,x
        iny
        txs
        tsx
        tsx
        .byte   $80
        .byte   $82
        .byte   $83
        ldy     #$C0
        .byte   $83
        ldy     #$A0
        ldy     #$11
        .byte   $A3
        cpy     #$B5
        tya
LFDD6:  stx     $98,y
        ldy     #$80
        .byte   $A3
        .byte   $A3
        .byte   $C2
        cmp     $11
        .byte   $80
        brk
        .byte   $0F
        brk
LFDE3:  .byte   $37
        ora     ($BF,x)
        .byte   $03
        ora     ($BD),y
        .byte   $BF
        .byte   $73
        .byte   $0F
        ora     ($7B),y
        sbc     $98FB,y
        and     ($11),y
        ora     ($D9),y
        cmp     LFBF9,y
        eor     ($01),y
        ora     ($01,x)
        ora     ($54,x)
LFDFE:  eor     $01,x
LFE00:  adc     ($51),y
        ora     ($01,x)
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        clv
        adc     ($51),y
        ora     ($01,x)
        .byte   $DA
        .byte   $37
        tya
        cmp     $11DF,x
        ora     ($89),y
        .byte   $8B
        cmp     $11
        sbc     $11FF,x
        ora     (L0000),y
        brk
        .byte   $CB
        ora     ($3D),y
        ora     $3F3D,x
        bpl     LFE8A
        .byte   $13
        lda     ($5D,x)
        eor     $5F5D,x
        .byte   $1A
        bpl     LFE3F
        lda     ($10,x)
        ora     ($01,x)
        .byte   $1F
        bpl     LFE50
        tya
        .byte   $20
        .byte   $56
LFE39:  bpl     $FEB8
        .byte   $7F
        bpl     $FE58
        .byte   $56
LFE3F:  ora     #$37
        .byte   $37
        bpl     LFDE3
        .byte   $17
        ora     ($98),y
        .byte   $33
        clc
        .byte   $1A
        lda     ($A3),y
        .byte   $77
        sei
        and     ($0F),y
LFE50:  .byte   $37
        .byte   $2B
        eor     $9D5A,y
        sta     $641B,x
        lda     ($10,x)
        .byte   $22
        .byte   $5B
        sta     a:$9D,x
        adc     #$D1
        .byte   $D3
        sbc     ($F3),y
        sta     ($93),y
        sta     ($93),y
        sbc     ($F3),y
        jsr     LA120
        .byte   $A3
        jsr     L8BA1
        ora     ($11),y
        .byte   $89
        jsr     L9720
        .byte   $0F
        .byte   $8B
        ora     ($11),y
        .byte   $89
        sta     ($B1),y
        bpl     LFE39
        lda     $A5
        .byte   $0F
        ldx     $89
        ora     ($10),y
        lda     $A520,y
LFE8A:  dec     $A6
        lda     ($11,x)
        .byte   $AB
        tsx
        lda     $E4
        inc     $A6
        ldx     $11
        .byte   $0F
        .byte   $0F
        lda     $B5,x
        lda     $B6,x
        lda     $11,x
        .byte   $0F
        .byte   $89
        .byte   $22
        eor     $31
        .byte   $33
        bpl     LFEBB
        .byte   $14
        asl     $BD,x
        eor     $51,x
        .byte   $53
        bpl     LFEBE
        bpl     LFEC6
        .byte   $BF
        cmp     #$5B
        eor     $5968,x
        ora     $701B,y
        .byte   $72
        .byte   $74
LFEBB:  .byte   $74
        .byte   $59
        .byte   $79
LFEBE:  and     LDB3B,y
        .byte   $7B
        lsr     $56,x
        cmp     #$9A
LFEC6:  tsx
        tsx
        sta     ($82,x)
        sty     $C1
        lda     ($A4,x)
        lda     ($A1,x)
        lda     ($11,x)
        ldy     $B1
        ldy     $99
        .byte   $97
        sta     $81A1,y
        ldy     $C4
        .byte   $C2
        ldy     $11
        sta     ($03,x)
        brk
        .byte   $03
        .byte   $03
        and     ($40),y
        brk
        brk
        jsr     L2240
        brk
        brk
        .byte   $32
        .byte   $32
        .byte   $32
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $32
        .byte   $32
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        bmi     LFF33
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($30),y
        and     ($31),y
        and     (L0000),y
        .byte   $03
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        brk
        .byte   $03
        .byte   $03
        brk
        brk
        .byte   $03
        .byte   $03
        brk
        brk
        and     ($31),y
        and     ($31),y
        .byte   $03
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($03),y
        .byte   $03
        .byte   $03
        and     ($03),y
        and     ($31),y
LFF33:  and     ($03),y
        .byte   $03
        brk
        and     (L0000),y
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $03
        and     ($31),y
        .byte   $32
        .byte   $32
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $32
        .byte   $32
        .byte   $03
        .byte   $03
        .byte   $12
        and     ($31),y
        .byte   $03
        and     ($31),y
        .byte   $03
        .byte   $03
        eor     ($32),y
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        and     ($31),y
        and     ($31),y
        .byte   $32
        .byte   $32
        and     ($31),y
        and     ($31),y
        and     ($31),y
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        and     ($31),y
        .byte   $32
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        and     ($31),y
        and     ($31),y
        .byte   $32
        .byte   $32
        brk
        .byte   $32
        .byte   $03
        .byte   $03
        and     ($31),y
        and     ($32),y
        .byte   $32
        .byte   $32
        and     ($03),y
        and     ($31),y
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $03
        brk
        brk
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $03
        brk
        .byte   $03
        bmi     LFFD2
        bmi     LFFD4
        bmi     LFFD6
        bmi     LFFD8
        .byte   $02
        bmi     LFFDC
        and     ($30),y
        bmi     LFFDF
        bmi     LFFB3
        ora     ($30,x)
LFFB3:  bmi     LFFD6
        ora     ($31,x)
        and     ($01),y
        .byte   $32
        .byte   $32
        .byte   $32
        ora     ($01,x)
        and     ($31),y
        .byte   $03
        .byte   $32
        .byte   $32
        .byte   $32
        ora     ($03,x)
        .byte   $03
        .byte   $03
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
LFFD2:  ora     ($01,x)
LFFD4:  ora     ($20,x)
LFFD6:  .byte   $20
        .byte   $20
LFFD8:  ora     ($01,x)
        ora     ($01,x)
LFFDC:  ora     ($01,x)
        .byte   $01
LFFDF:  ora     ($78,x)
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
