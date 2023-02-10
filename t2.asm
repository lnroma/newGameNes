; da65 V2.18 - N/A
; Created:    2023-02-09 01:09:08
; Input file: smb.nes
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0006           := $0006
L0020           := $0020
L0030           := $0030
L0060           := $0060
L0078           := $0078
L00AE           := $00AE
L00DC           := $00DC
L015C           := $015C
L0173           := $0173
L017C           := $017C
L019A           := $019A
L0304           := $0304
L03CC           := $03CC
L041E           := $041E
L0430           := $0430
L0434           := $0434
L04D0           := $04D0
L0543           := $0543
L0590           := $0590
L06B3           := $06B3
L06E5           := $06E5
L0783           := $0783
L0787           := $0787
L07D7           := $07D7
L0810           := $0810
L0820           := $0820
L09D0           := $09D0
L0A51           := $0A51
L0AA6           := $0AA6
L0B52           := $0B52
L0BC9           := $0BC9
L0F10           := $0F10
L1020           := $1020
L1076           := $1076
L1149           := $1149
L1330           := $1330
L150F           := $150F
L1524           := $1524
L15B0           := $15B0
L1820           := $1820
L19FB           := $19FB
L1B18           := $1B18
L1C1E           := $1C1E
L1C30           := $1C30
L1C5C           := $1C5C
L1D04           := $1D04
L1DEA           := $1DEA
L1E84           := $1E84
L2000           := $2000
L2020           := $2020
L2026           := $2026
L2087           := $2087
L2094           := $2094
L20B7           := $20B7
L20D6           := $20D6
L20D7           := $20D7
L20F4           := $20F4
L2221           := $2221
L2263           := $2263
L2284           := $2284
L2293           := $2293
L2377           := $2377
L240E           := $240E
L2422           := $2422
L2525           := $2525
L2622           := $2622
L290F           := $290F
L2925           := $2925
L300F           := $300F
L3030           := $3030
L344F           := $344F
L3C34           := $3C34
L3E9F           := $3E9F
L3F27           := $3F27
L3F30           := $3F30
L4040           := $4040
L4060           := $4060
L406E           := $406E
L446E           := $446E
L456E           := $456E
L4C52           := $4C52
L4E4D           := $4E4D
L4E4E           := $4E4E
L4F24           := $4F24
L5050           := $5050
L50B0           := $50B0
L52FD           := $52FD
L545C           := $545C
L5486           := $5486
L54A6           := $54A6
        lsr     $5345
        .byte   $1A
        .byte   $02
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
        sei
        cld
        .byte   $A9
L6003:  bpl     $5F92
        brk
        .byte   $20
        .byte   $A2
L6008:  .byte   $FF
        txs
L600A:  lda     $2002
        bpl     L600A
L600F:  lda     $2002
        bpl     L600F
        ldy     #$FE
        ldx     #$05
L6018:  lda     L07D7,x
        cmp     #$0A
        bcs     L602B
        dex
        bpl     L6018
        lda     $07FF
        cmp     #$A5
        bne     L602B
        ldy     #$D6
L602B:  jsr     L90CC
        .byte   $8D
L602F:  ora     ($40),y
        sta     $0770
        lda     #$A5
        sta     $07FF
        sta     $07A7
        lda     #$0F
        sta     $4015
        lda     #$06
        sta     $2001
        jsr     L8220
        jsr     L8E19
        inc     $0774
        lda     $0778
        ora     #$80
        jsr     L8EED
        jmp     L8057

        ora     ($A4,x)
        iny
        cpx     a:$10
L6060:  eor     ($41,x)
        .byte   $4C
        .byte   $34
L6064:  .byte   $3C
        .byte   $44
L6066:  .byte   $54
        pla
        .byte   $7C
        tay
        .byte   $BF
        dec     $03EF,x
        sty     L8C8C
        sta     $0303
        .byte   $03
        sta     L8D8D
        sta     L8D8D
        sta     L8D8D
        sta     a:$8D
        rti

        lda     $0778
        and     #$7F
        sta     $0778
        and     #$7E
        sta     L2000
        lda     $0779
        and     #$E6
        ldy     $0774
        bne     L609E
        lda     $0779
        ora     #$1E
L609E:  sta     $0779
        and     #$E7
        sta     $2001
        ldx     $2002
        lda     #$00
        jsr     L8EE6
        sta     $2003
        lda     #$02
        sta     $4014
        ldx     $0773
        lda     L805A,x
        sta     L0000
        lda     L806D,x
        sta     $01
        jsr     L8EDD
        ldy     #$00
L60C8:  ldx     $0773
        cpx     #$06
        bne     L60D0
        iny
L60D0:  ldx     L8080,y
        lda     #$00
        sta     $0300,x
        sta     $0301,x
        sta     $0773
        lda     $0779
        sta     $2001
        jsr     LF2D1
        jsr     L8E5C
        jsr     L8182
        jsr     L8F97
        lda     $0776
        lsr     a
        bcs     L611B
        .byte   $AD
        .byte   $47
L60F8:  .byte   $07
        beq     L6100
        dec     $0747
L60FE:  bne     L6119
L6100:  ldx     #$14
        dec     $077F
        bpl     L610E
        lda     #$11
        sta     $077F
        ldx     #$23
L610E:  lda     $0780,x
        beq     L6116
        dec     $0780,x
L6116:  dex
        bpl     L610E
L6119:  inc     $09
L611B:  ldx     #$00
        ldy     #$07
        lda     $07A7
        and     #$02
        sta     L0000
        lda     $07A8
        and     #$02
        eor     L0000
        clc
        beq     L6131
        sec
L6131:  ror     $07A7,x
        inx
        dey
        bne     L6131
        lda     $0722
        beq     L615C
L613D:  lda     $2002
        and     #$40
        bne     L613D
        lda     $0776
        lsr     a
        bcs     L6150
        jsr     L8223
        jsr     L81C6
L6150:  lda     $2002
        and     #$40
        beq     L6150
        ldy     #$14
L6159:  dey
        bne     L6159
L615C:  lda     $073F
        .byte   $8D
        .byte   $05
L6161:  jsr     $40AD
        .byte   $07
        sta     $2005
        lda     $0778
        pha
        sta     L2000
        lda     $0776
        lsr     a
        bcs     L6178
        jsr     L8212
L6178:  lda     $2002
        pla
        ora     #$80
        .byte   $8D
L617F:  brk
        jsr     $AD40
        bvs     $618C
        cmp     #$02
        beq     L6194
        cmp     #$01
        bne     L61C5
        lda     $0772
        cmp     #$03
        bne     L61C5
L6194:  lda     $0777
        beq     L619D
        dec     $0777
        rts

L619D:  lda     $06FC
        and     #$10
        beq     L61BD
        lda     $0776
        and     #$80
        bne     L61C5
        lda     #$2B
        sta     $0777
        lda     $0776
        tay
        iny
        sty     $FA
        eor     #$01
        ora     #$80
        bne     L61C2
L61BD:  lda     $0776
        and     #$7F
L61C2:  sta     $0776
L61C5:  rts

        ldy     $074E
        lda     #$28
        sta     L0000
        ldx     #$0E
L61CF:  lda     $06E4,x
        cmp     L0000
        bcc     L61E5
        ldy     $06E0
        clc
        adc     $06E1,y
        bcc     L61E2
        clc
        adc     L0000
L61E2:  sta     $06E4,x
L61E5:  dex
        bpl     L61CF
        ldx     $06E0
        inx
        cpx     #$03
        bne     L61F2
        ldx     #$00
L61F2:  stx     $06E0
        ldx     #$08
        ldy     #$02
L61F9:  lda     $06E9,y
L61FC:  sta     $06F1,x
        clc
        adc     #$08
        sta     $06F2,x
        clc
        adc     #$08
        sta     $06F3,x
        dex
        dex
        dex
        dey
        bpl     L61F9
        rts

        lda     $0770
        jsr     L8E04
        and     ($82),y
        .byte   $DC
        ldx     L838B
        clc
        .byte   $92
        ldy     #$00
        bit     $04A0
        lda     #$F8
L6227:  sta     $0200,y
        iny
        iny
        iny
        iny
        bne     L6227
        rts

        lda     $0772
        jsr     L8E04
        .byte   $CF
        .byte   $8F
        .byte   $67
        sta     $61
        bcc     L6283
        .byte   $82
        .byte   $04
        jsr     L0173
        brk
        brk
        ldy     #$00
        lda     $06FC
        ora     $06FD
        cmp     #$10
        beq     L6255
        cmp     #$90
        bne     L6258
L6255:  jmp     L82D8

L6258:  cmp     #$20
        beq     L6276
        ldx     $07A2
        bne     L626C
        sta     $0780
        jsr     L836B
        bcs     L62C9
        jmp     L82C0

L626C:  ldx     $07FC
        beq     L62BB
        cmp     #$40
        bne     L62BB
        iny
L6276:  lda     $07A2
        beq     L62C9
        lda     #$18
        sta     $07A2
        lda     $0780
L6283:  bne     L62BB
        lda     #$10
        sta     $0780
        cpy     #$01
        beq     L629C
        lda     $077A
        eor     #$01
        sta     $077A
        jsr     L8325
        jmp     L82BB

L629C:  ldx     $076B
        inx
        txa
        and     #$07
        sta     $076B
        jsr     L830E
L62A9:  lda     L823F,x
        sta     $0300,x
        inx
        cpx     #$06
        bmi     L62A9
        ldy     $075F
        iny
        sty     L0304
L62BB:  lda     #$00
        sta     $06FC
        jsr     LAEEA
        lda     $0E
        cmp     #$06
        bne     L630D
L62C9:  lda     #$00
        sta     $0770
        sta     $0772
        sta     $0722
        inc     $0774
        rts

        ldy     $07A2
        beq     L62C9
        asl     a
        bcc     L62E6
        lda     $07FD
        .byte   $20
        .byte   $0E
L62E5:  .byte   $83
L62E6:  jsr     L9C03
        inc     $075D
        inc     $0764
        inc     $0757
        inc     $0770
        lda     $07FC
        sta     $076A
        lda     #$00
        sta     $0772
        sta     $07A2
        ldx     #$17
        lda     #$00
L6307:  sta     $07DD,x
        dex
        bpl     L6307
L630D:  rts

        sta     $075F
        sta     $0766
        ldx     #$00
        stx     $0760
        stx     $0767
        rts

        .byte   $07
        .byte   $22
        eor     #$83
        dec     $2424
        brk
        ldy     #$07
L6327:  lda     L831D,y
        sta     $0300,y
L632D:  dey
        bpl     L6327
        lda     $077A
        beq     L633F
        lda     #$24
        sta     L0304
        lda     #$CE
        sta     $0306
L633F:  rts

        ora     ($80,x)
        .byte   $02
        sta     ($41,x)
        .byte   $80
        ora     ($42,x)
        .byte   $C2
        .byte   $02
        .byte   $80
        eor     ($C1,x)
        eor     ($C1,x)
        ora     ($C1,x)
        ora     ($02,x)
        .byte   $80
        brk
        .byte   $9B
        bpl     L6370
        ora     $2C
        jsr     L1524
        .byte   $5A
        bpl     L6380
        plp
        bmi     L6383
        bpl     L62E5
        jsr     L3030
        ora     ($FF,x)
        brk
        ldx     $0717
        .byte   $AD
        clc
L6370:  .byte   $07
        bne     L6380
        inx
        inc     $0717
        sec
        lda     L8354,x
        sta     $0718
        beq     L638A
L6380:  lda     L833F,x
L6383:  sta     $06FC
        dec     $0718
        clc
L638A:  rts

        jsr     L83A0
        lda     $0772
        beq     L639A
        ldx     #$00
        stx     $08
        jsr     LC04D
L639A:  jsr     LF131
        jmp     LEEF0

        lda     $0772
        jsr     L8E04
        ldy     $CF,x
        bcs     L632D
        lda     LF683,x
        .byte   $83
        adc     ($84,x)
        ldx     $071B
        inx
        stx     $34
        lda     #$08
        sta     $FC
        jmp     L874E

        ldy     #$00
        sty     $35
        lda     $6D
        cmp     $34
        bne     L63CD
        lda     $86
        cmp     #$60
        bcs     L63D0
L63CD:  inc     $35
        iny
L63D0:  tya
        jsr     LB0E6
        lda     $071A
        cmp     $34
        beq     L63F1
        lda     $0768
        clc
        adc     #$80
        sta     $0768
        lda     #$01
        adc     #$00
        tay
        jsr     LAFC4
        jsr     LAF6F
        inc     $35
L63F1:  lda     $35
        beq     L645D
        rts

        lda     $0749
        bne     L6443
        lda     $0719
        beq     L6418
        cmp     #$09
        bcs     L6443
        ldy     $075F
        cpy     #$07
        bne     L6414
        cmp     #$03
        bcc     L6443
        sbc     #$01
        jmp     L8418

L6414:  cmp     #$02
        bcc     L6443
L6418:  tay
        bne     L6423
        lda     $0753
        beq     L6434
        iny
        bne     L6434
L6423:  iny
        lda     $075F
        cmp     #$07
        beq     L6434
        dey
        cpy     #$04
        bcs     L6456
        cpy     #$03
        bcs     L6443
L6434:  cpy     #$03
        bne     L643C
        lda     #$04
        sta     $FC
L643C:  tya
        clc
        adc     #$0C
        sta     $0773
L6443:  lda     $0749
        clc
        adc     #$04
        sta     $0749
        lda     $0719
        adc     #$00
        sta     $0719
        cmp     #$07
L6456:  bcc     L6460
        lda     #$06
        sta     $07A1
L645D:  inc     $0772
L6460:  rts

        lda     $07A1
        bne     L6486
        ldy     $075F
        cpy     #$07
        bcs     L6487
        lda     #$00
        sta     $0760
        sta     $075C
        sta     $0772
        inc     $075F
        jsr     L9C03
        inc     $0757
        lda     #$01
        sta     $0770
L6486:  rts

L6487:  lda     $06FC
        ora     $06FD
        and     #$40
        beq     L649E
        lda     #$01
        sta     $07FC
        lda     #$FF
        sta     $075A
        jsr     L9248
L649E:  rts

        .byte   $FF
        .byte   $FF
        inc     $FB,x
        .byte   $F7
        .byte   $FB
        sed
        .byte   $FB
        .byte   $F9
L64A8:  .byte   $FB
        .byte   $FA
        .byte   $FB
L64AB:  inc     $50,x
        .byte   $F7
L64AE:  bvc     L64A8
        bvc     L64AB
        .byte   $50
L64B3:  .byte   $FA
        bvc     L64B3
        inc     $41FF,x
        .byte   $42
        .byte   $44
        eor     $48
        and     ($32),y
        .byte   $34
        and     $38,x
        brk
        lda     $0110,x
        beq     L6486
        cmp     #$0B
        bcc     L64D1
        lda     #$0B
        sta     $0110,x
L64D1:  tay
        lda     $012C,x
        bne     L64DB
        sta     $0110,x
        rts

L64DB:  dec     $012C,x
        cmp     #$2B
        bne     L6500
        cpy     #$0B
        bne     L64ED
        inc     $075A
        lda     #$40
        sta     $FE
L64ED:  lda     L84B7,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tax
        lda     L84B7,y
L64F8:  and     #$0F
        sta     $0134,x
        jsr     LBC2C
L6500:  ldy     L06E5,x
L6503:  lda     $16,x
        cmp     #$12
        beq     L652B
        cmp     #$0D
        beq     L652B
        cmp     #$05
        beq     L6523
        cmp     #$0A
        beq     L652B
        cmp     #$0B
        beq     L652B
        cmp     #$09
        bcs     L6523
        lda     $1E,x
        cmp     #$02
        bcs     L652B
L6523:  .byte   $AE
        .byte   $EE
L6525:  .byte   $03
        ldy     $06EC,x
        ldx     $08
L652B:  lda     $011E,x
L652E:  cmp     #$18
        bcc     L6537
        sbc     #$01
        sta     $011E,x
L6537:  lda     $011E,x
        sbc     #$08
        jsr     LE5C8
        lda     $0117,x
        sta     $0203,y
        clc
        adc     #$08
        sta     $0207,y
        lda     #$02
        .byte   $99
L654E:  .byte   $02
        .byte   $02
        sta     $0206,y
        lda     $0110,x
        asl     a
        tax
        lda     L849F,x
        sta     $0201,y
        lda     L84A0,x
        sta     $0205,y
        ldx     $08
        rts

        lda     $073C
        jsr     L8E04
        .byte   $8B
        sta     $9B
        sta     $52
        stx     $5A
        stx     $93
        stx     $9D
        dey
        tay
        stx     $9D
        dey
        inc     $86
        .byte   $BF
        sta     $E3
        sta     $43
        stx     $FF
        stx     $32
        .byte   $87
        eor     #$87
        jsr     L8220
        jsr     L8E19
        lda     $0770
        beq     L65C8
        ldx     #$03
        jmp     L85C5

        lda     $0744
        pha
        lda     $0756
        pha
        lda     #$00
        sta     $0756
        lda     #$02
        sta     $0744
        jsr     L85F1
        pla
        sta     $0756
        pla
        sta     $0744
        jmp     L8745

        ora     ($02,x)
        .byte   $03
        .byte   $04
        ldy     $074E
        ldx     L85BB,y
        stx     $0773
L65C8:  jmp     L8745

        brk
        ora     #$0A
        .byte   $04
        .byte   $22
        .byte   $22
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $22
        .byte   $0F
        .byte   $0F
        .byte   $22
        asl     $27,x
        clc
        .byte   $22
        bmi     L6605
        ora     $3722,y
        .byte   $27
        asl     $AC,x
        .byte   $44
        .byte   $07
        beq     L65EE
        lda     L85C7,y
        sta     $0773
L65EE:  inc     $073C
        ldx     $0300
        ldy     #$00
        lda     $0753
        beq     L65FD
        ldy     #$04
L65FD:  lda     $0756
        .byte   $C9
L6601:  .byte   $02
        bne     L6606
        .byte   $A0
L6605:  php
L6606:  lda     #$03
        sta     L0000
L660A:  lda     L85D7,y
        sta     L0304,x
        iny
        inx
        dec     L0000
        bpl     L660A
        ldx     $0300
        ldy     $0744
        bne     L6621
        ldy     $074E
L6621:  lda     L85CF,y
        sta     L0304,x
        lda     #$3F
        sta     $0301,x
        lda     #$10
        sta     $0302,x
        lda     #$04
        sta     $0303,x
        lda     #$00
        sta     $0308,x
        txa
        clc
        adc     #$07
        sta     $0300
        rts

        lda     $0733
        cmp     #$01
        bne     L664F
        lda     #$0B
        sta     $0773
L664F:  jmp     L8745

        lda     #$00
        jsr     L8808
        jmp     L8745

        jsr     LBC35
        ldx     $0300
        lda     #$20
        sta     $0301,x
        .byte   $A9
L6666:  .byte   $73
        sta     $0302,x
        lda     #$03
        .byte   $9D
        .byte   $03
L666E:  .byte   $03
        ldy     $075F
        iny
        tya
        sta     L0304,x
        lda     #$28
        sta     $0305,x
        ldy     $075C
        iny
        tya
L6681:  sta     $0306,x
        lda     #$00
        sta     $0307,x
        txa
        clc
        adc     #$06
        sta     $0300
        jmp     L8745

        lda     $0759
        beq     L66A2
        lda     #$00
        sta     $0759
        lda     #$02
        jmp     L86C7

L66A2:  inc     $073C
        jmp     L8745

        lda     $0770
        beq     L66E0
        cmp     #$03
        beq     L66D3
        lda     $0752
        bne     L66E0
        ldy     $074E
        cpy     #$03
        beq     L66C2
        lda     $0769
        bne     L66E0
L66C2:  jsr     LEFAB
        .byte   $A9
L66C6:  ora     (L0020,x)
        php
        dey
        jsr     L88A5
        lda     #$00
        sta     $0774
        rts

L66D3:  lda     #$12
        sta     $07A0
        lda     #$03
        jsr     L8808
        jmp     L874E

L66E0:  lda     #$08
        sta     $073C
        rts

        inc     $0774
L66E9:  jsr     L92B0
        lda     $071F
        bne     L66E9
        dec     $071E
        bpl     L66F9
        inc     $073C
L66F9:  lda     #$06
        sta     $0773
        rts

        lda     $0770
        bne     L674E
L6704:  lda     #$1E
        sta     $2006
        lda     #$C0
        sta     $2006
        lda     #$03
        sta     $01
        ldy     #$00
        sty     L0000
        lda     $2007
L6719:  lda     $2007
        sta     (L0000),y
        iny
        bne     L6723
        inc     $01
L6723:  lda     $01
        cmp     #$04
        bne     L6719
        cpy     #$3A
        bcc     L6719
        lda     #$05
        jmp     L864C

        lda     $0770
        bne     L674E
        ldx     #$00
L6739:  sta     $0300,x
        sta     $0400,x
        dex
        bne     L6739
        jsr     L8325
        inc     $073C
        rts

        lda     #$FA
        jsr     LBC3B
L674E:  inc     $0772
        rts

        jsr     L0543
        asl     $0A,x
        .byte   $1B
        .byte   $12
        clc
        jsr     L0B52
        jsr     L1B18
        ora     $0D,x
        bit     $24
        ora     $1612,x
        asl     L6820
        ora     L0000
        bit     $24
        rol     $2329
        cpy     #$7F
        tax
        .byte   $23
        .byte   $C2
        ora     ($EA,x)
        .byte   $FF
        and     ($CD,x)
        .byte   $07
        bit     $24
        and     #$24
        bit     $24
        bit     $21
        .byte   $4B
        ora     #$20
        clc
        .byte   $1B
        ora     $0D,x
        bit     $24
        plp
        bit     $22
        .byte   $0C
        .byte   $47
        bit     $23
        .byte   $DC
        ora     ($BA,x)
        .byte   $FF
        and     ($CD,x)
        ora     $16
        asl     a
        .byte   $1B
        .byte   $12
        clc
        .byte   $22
        .byte   $0C
        .byte   $07
        ora     $1612,x
        asl     $1E24
        ora     $21FF,y
        cmp     $1605
        asl     a
        .byte   $1B
        .byte   $12
        clc
        .byte   $22
        .byte   $0B
        ora     #$10
        asl     a
        asl     $0E,x
        bit     $18
        .byte   $1F
        asl     LFF1B
        and     $84
        ora     L0020,x
        asl     $0C15
        clc
        asl     $0E,x
        bit     $1D
        clc
        bit     L0020
        asl     a
        .byte   $1B
        ora     $2324,y
        clc
        .byte   $17
        asl     $262B
        and     $01
        bit     $26
        and     $2401
        rol     $35
        ora     ($24,x)
        .byte   $27
        cmp     LAA46,y
        .byte   $27
        sbc     ($45,x)
        tax
        .byte   $FF
        ora     $1E,x
        .byte   $12
        bpl     L6804
        .byte   $04
        .byte   $03
        .byte   $02
        brk
        bit     $05
        bit     L0000
        php
        .byte   $07
        asl     L0000
        brk
        brk
        .byte   $27
        .byte   $27
        lsr     $4E
L6804:  .byte   $59
L6805:  adc     ($6E,x)
        ror     $0A48
L680A:  tay
        cpy     #$04
        bcc     L681B
        cpy     #$08
        bcc     L6815
        ldy     #$08
L6815:  lda     $077A
        bne     L681B
        iny
L681B:  ldx     L87FE,y
        ldy     #$00
L6820:  lda     L8752,x
        cmp     #$FF
        beq     L682E
        sta     $0301,y
        inx
        iny
        bne     L6820
L682E:  lda     #$00
        sta     $0301,y
        pla
        tax
        cmp     #$04
        bcs     L6882
        dex
        bne     L685F
        lda     $075A
        clc
        adc     #$01
L6842:  cmp     #$0A
        bcc     L684D
        sbc     #$0A
        ldy     #$9F
        sty     $0308
L684D:  sta     $0309
        ldy     $075F
        iny
        sty     $0314
        ldy     $075C
        iny
        sty     $0316
        rts

L685F:  lda     $077A
        beq     L6881
        lda     $0753
        dex
        bne     L6873
        ldy     $0770
        cpy     #$03
        beq     L6873
        eor     #$01
L6873:  lsr     a
        bcc     L6881
        ldy     #$04
L6878:  lda     L87ED,y
        sta     L0304,y
        dey
        bpl     L6878
L6881:  rts

L6882:  sbc     #$04
        asl     a
        asl     a
        tax
        ldy     #$00
L6889:  lda     L87F2,x
        sta     $031C,y
        inx
        iny
        iny
        iny
        iny
        cpy     #$0C
        bcc     L6889
        lda     #$2C
        jmp     L863F

        lda     $07A0
        bne     L68AD
        jsr     L8220
        lda     #$07
        sta     $07A0
        inc     $073C
L68AD:  rts

        lda     $0726
        and     #$01
        sta     $05
        ldy     $0340
        sty     L0000
        lda     $0721
        sta     $0342,y
        lda     $0720
        sta     $0341,y
        lda     #$9A
        sta     $0343,y
        lda     #$00
        sta     $04
        tax
L68D0:  stx     $01
        lda     $06A1,x
        and     #$C0
        sta     $03
        asl     a
        rol     a
        rol     a
        tay
        lda     L8B08,y
        sta     L0006
        .byte   $B9
L68E3:  .byte   $0C
        .byte   $8B
        sta     $07
        lda     $06A1,x
        asl     a
        asl     a
        sta     $02
        lda     $071F
        and     #$01
        eor     #$01
        asl     a
        adc     $02
        tay
        ldx     L0000
        lda     (L0006),y
        sta     $0344,x
L6900:  iny
        lda     (L0006),y
        sta     $0345,x
        ldy     $04
        lda     $05
        bne     L691A
        lda     $01
        lsr     a
        bcs     L692A
        rol     $03
        rol     $03
        rol     $03
        .byte   $4C
L6918:  bmi     $68A3
L691A:  lda     $01
        lsr     a
        bcs     L692E
        lsr     $03
        lsr     $03
        lsr     $03
        lsr     $03
        jmp     L8930

L692A:  lsr     $03
        lsr     $03
L692E:  inc     $04
        lda     $03F9,y
        ora     $03
        sta     $03F9,y
        inc     L0000
        inc     L0000
        ldx     $01
        inx
        cpx     #$0D
        bcc     L68D0
        ldy     L0000
        iny
        iny
        iny
        lda     #$00
        sta     $0341,y
        sty     $0340
        inc     $0721
        lda     $0721
        and     #$1F
        bne     L6967
        lda     #$80
        sta     $0721
        lda     $0720
        eor     #$04
        sta     $0720
L6967:  .byte   $4C
        .byte   $BD
L6969:  .byte   $89
        lda     $0721
        and     #$1F
        sec
        sbc     #$04
        and     #$1F
        sta     $01
        lda     $0720
        bcs     L697D
        eor     #$04
L697D:  and     #$04
        ora     #$23
        sta     L0000
        lda     $01
        lsr     a
        lsr     a
        adc     #$C0
        sta     $01
        ldx     #$00
        ldy     $0340
L6990:  .byte   $A5
L6991:  brk
        sta     $0341,y
        lda     $01
        clc
        adc     #$08
        sta     $0342,y
        sta     $01
        lda     $03F9,x
        sta     $0344,y
        lda     #$01
        sta     $0343,y
        lsr     a
        sta     $03F9,x
        iny
        iny
        iny
        iny
        inx
        cpx     #$07
        bcc     L6990
        sta     $0341,y
        sty     $0340
        lda     #$06
        .byte   $8D
L69C0:  .byte   $73
        .byte   $07
        rts

        .byte   $27
        .byte   $27
        .byte   $27
        .byte   $17
        .byte   $07
        .byte   $17
        .byte   $3F
        .byte   $0C
        .byte   $04
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        .byte   $0F
        .byte   $07
        .byte   $12
        .byte   $0F
        .byte   $0F
        .byte   $07
        .byte   $17
        .byte   $0F
        .byte   $0F
        .byte   $07
        .byte   $17
        .byte   $1C
        .byte   $0F
        .byte   $07
        .byte   $17
        brk
        lda     $09
        and     #$07
        bne     L6A38
        ldx     $0300
        cpx     #$31
        bcs     L6A38
        tay
L69EF:  lda     L89C9,y
        sta     $0301,x
        inx
        iny
        cpy     #$08
        bcc     L69EF
        ldx     $0300
        lda     #$03
        sta     L0000
        lda     $074E
        asl     a
        asl     a
        tay
L6A08:  lda     L89D1,y
        sta     L0304,x
        iny
        inx
        dec     L0000
        bpl     L6A08
        ldx     $0300
        ldy     $06D4
        lda     L89C3,y
        sta     $0305,x
        .byte   $AD
        brk
L6A22:  .byte   $03
        clc
        adc     #$07
        sta     $0300
        inc     $06D4
        lda     $06D4
        cmp     #$06
        bcc     L6A38
        lda     #$00
        sta     $06D4
L6A38:  rts

        eor     $45
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
L6A40:  .byte   $47
        .byte   $57
        cli
        eor     $245A,y
        bit     $24
        bit     $26
        rol     $26
        rol     $A0
        eor     ($A9,x)
        .byte   $03
        ldx     $074E
        bne     L6A58
        lda     #$04
L6A58:  jsr     L8A97
        lda     #$06
        sta     $0773
        rts

        jsr     L8A6D
        inc     $03F0
        dec     $03EC,x
        rts

        lda     #$00
        ldy     #$03
        cmp     #$00
        beq     L6A87
        ldy     #$00
        cmp     #$58
        beq     L6A87
        cmp     #$51
        beq     L6A87
        iny
        cmp     #$5D
        beq     L6A87
        cmp     #$52
        beq     L6A87
        iny
L6A87:  tya
        ldy     $0300
        iny
        jsr     L8A97
        dey
        tya
        clc
        adc     #$0A
        jmp     L863F

        stx     L0000
        sty     $01
        asl     a
        asl     a
        tax
        ldy     #$20
        lda     L0006
        cmp     #$D0
        bcc     L6AA8
        ldy     #$24
L6AA8:  sty     $03
        and     #$0F
        asl     a
        sta     $04
        lda     #$00
        sta     $05
        lda     $02
        clc
L6AB6:  adc     #$20
        asl     a
        rol     $05
        asl     a
        rol     $05
        adc     $04
        sta     $04
        lda     $05
        adc     #$00
        clc
        adc     $03
        sta     $05
        ldy     $01
        lda     L8A39,x
        sta     $0303,y
        lda     L8A3A,x
        sta     L0304,y
        lda     L8A3B,x
        sta     $0308,y
        lda     L8A3C,x
        sta     $0309,y
        lda     $04
        sta     $0301,y
        clc
        adc     #$20
        sta     $0306,y
        lda     $05
        sta     $0300,y
        sta     $0305,y
        lda     #$02
        sta     $0302,y
        sta     $0307,y
        lda     #$00
        sta     $030A,y
        ldx     L0000
        rts

        bpl     L6AB6
        .byte   $64
        sty     L8B8B
        sty     $248C
        bit     $24
        bit     $27
        .byte   $27
        .byte   $27
        .byte   $27
        bit     $24
        bit     $35
        rol     $25,x
        .byte   $37
        and     $24
        sec
        bit     $24
        .byte   $24
L6B25:  bmi     $6B57
        rol     $26
        .byte   $26
L6B2A:  .byte   $34
        rol     $24
        and     ($24),y
        .byte   $32
        .byte   $33
        rol     $24
        .byte   $33
        .byte   $34
        rol     $26
        rol     $26
        rol     $26
        rol     $24
        cpy     #$24
        cpy     #$24
        .byte   $7F
        .byte   $7F
        bit     $B8
        tsx
        lda     LB8BB,y
        ldy     LBDB9,x
        tsx
        .byte   $BC
L6B4E:  .byte   $BB
        lda     L6460,x
        adc     ($65,x)
        .byte   $62
        ror     $63
        .byte   $67
        rts

        .byte   $64
        adc     ($65,x)
        .byte   $62
        ror     $63
        .byte   $67
        pla
        pla
        adc     #$69
        rol     $26
        ror     a
        ror     a
        .byte   $4B
        jmp     L4E4D

        eor     $4D4F
        .byte   $4F
        eor     $504E
        eor     ($6B),y
        bvs     L6BA3
        and     L716C
        adc     L6E72
        .byte   $73
        .byte   $6F
        .byte   $74
        stx     $8A
        .byte   $87
        .byte   $8B
        dey
        sty     L8C88
        .byte   $89
        sta     L6969
        stx     L8F91
        .byte   $92
        rol     $93
        rol     $93
        bcc     L6B2A
        adc     #$69
        ldy     $E9
        nop
        .byte   $EB
        bit     $24
        bit     $24
        bit     $2F
        .byte   $24
L6BA3:  and     LA2A2,x
        .byte   $A3
        .byte   $A3
        bit     $24
        bit     $24
        ldx     #$A2
        .byte   $A3
        .byte   $A3
        sta     L9924,y
        bit     $24
        ldx     #$3E
        .byte   $3F
        .byte   $5B
        .byte   $5C
        bit     $A3
        bit     $24
        bit     $24
        sta     L9E47,x
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $27
        .byte   $27
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $27
        .byte   $27
        .byte   $47
        .byte   $47
        lda     #$47
        tax
        .byte   $47
        .byte   $9B
        .byte   $27
        .byte   $9C
        .byte   $27
        .byte   $27
        .byte   $27
        .byte   $27
        .byte   $27
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $80
        ldy     #$81
        lda     ($BE,x)
        ldx     LBFBF,y
        adc     $BA,x
        ror     $BB,x
        tsx
        tsx
        .byte   $BB
        .byte   $BB
        eor     $47
        eor     $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        eor     $47
        eor     $47
        ldy     $B6,x
        lda     $B7,x
        eor     $47
        eor     $47
        eor     $47
        eor     $47
        eor     $47
        eor     $47
        eor     $47
        eor     $47
        eor     $47
        eor     $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        .byte   $AB
        ldy     LAEAD
        eor     $5D5E,x
        lsr     $24C1,x
        cmp     ($24,x)
        dec     $C8
        .byte   $C7
        cmp     #$CA
        cpy     LCDCB
        rol     a
        rol     a
        rti

        rti

        bit     $24
        bit     $24
        bit     $47
        bit     $47
        .byte   $82
        .byte   $83
        sty     $85
        bit     $47
        bit     $47
        stx     $8A
        .byte   $87
        .byte   $8B
        stx     L8F91
        .byte   $92
        bit     $2F
        bit     $3D
        bit     $24
        bit     $35
        rol     $25,x
        .byte   $37
        and     $24
        sec
L6C6E:  bit     $24
        bit     $24
        and     $3A24,y
        bit     $3B
        bit     $3C
        bit     $24
        bit     $41
        rol     $41
        rol     $26
        rol     $26
        rol     $B0
        lda     ($B2),y
        .byte   $B3
        .byte   $77
        adc     L7977,y
        .byte   $53
        eor     $54,x
        lsr     $53,x
        eor     $54,x
        lsr     $A5,x
        .byte   $A7
        ldx     $A8
        .byte   $C2
        cpy     $C3
        cmp     $57
        eor     $5A58,y
        .byte   $7B
        adc     L7E7C,x
        .byte   $3F
        brk
        jsr     L150F
        .byte   $12
        and     $0F
        .byte   $3A
        .byte   $1A
        .byte   $0F
        .byte   $0F
        bmi     L6CC4
        .byte   $0F
        .byte   $0F
        .byte   $27
        .byte   $12
        .byte   $0F
        .byte   $22
        asl     $27,x
        clc
        .byte   $0F
        bpl     L6CEE
        .byte   $27
        .byte   $0F
        asl     L0030,x
        .byte   $27
        .byte   $0F
L6CC4:  .byte   $0F
        bmi     L6CD7
        brk
        .byte   $3F
        brk
        jsr     L290F
        .byte   $1A
        .byte   $0F
        .byte   $0F
        rol     $17,x
        .byte   $0F
        .byte   $0F
        bmi     L6CF7
        .byte   $0F
L6CD7:  .byte   $0F
        .byte   $27
        .byte   $17
        .byte   $0F
        .byte   $0F
        asl     $27,x
        clc
        .byte   $0F
        .byte   $1A
        bmi     L6D0A
        .byte   $0F
        asl     L0030,x
        .byte   $27
        .byte   $0F
        .byte   $0F
        rol     $17,x
        brk
        .byte   $3F
        brk
L6CEE:  jsr     L290F
        .byte   $1A
        ora     #$0F
        .byte   $3C
        .byte   $1C
        .byte   $0F
L6CF7:  .byte   $0F
        bmi     L6D1B
        .byte   $1C
        .byte   $0F
        .byte   $27
        .byte   $17
        .byte   $1C
        .byte   $0F
        asl     $27,x
        clc
        .byte   $0F
        .byte   $1C
        rol     $17,x
        .byte   $0F
        asl     L0030,x
L6D0A:  .byte   $27
        .byte   $0F
        .byte   $0C
        .byte   $3C
        .byte   $1C
        brk
        .byte   $3F
        brk
        jsr     L300F
        bpl     L6D17
L6D17:  .byte   $0F
        bmi     L6D2A
        brk
L6D1B:  .byte   $0F
        bmi     L6D34
        brk
        .byte   $0F
        .byte   $27
        .byte   $17
        brk
        .byte   $0F
        asl     $27,x
        clc
        .byte   $0F
        .byte   $1C
        .byte   $36
L6D2A:  .byte   $17
        .byte   $0F
        asl     L0030,x
        .byte   $27
        .byte   $0F
        brk
        bmi     L6D43
        brk
L6D34:  .byte   $3F
        brk
        .byte   $04
        .byte   $22
        bmi     L6D3A
L6D3A:  bpl     L6D3C
L6D3C:  .byte   $3F
        brk
        .byte   $04
        .byte   $0F
        bmi     L6D42
L6D42:  .byte   $10
L6D43:  brk
        .byte   $3F
        brk
        .byte   $04
        .byte   $22
        .byte   $27
        asl     $0F,x
        brk
        .byte   $3F
        .byte   $14
        .byte   $04
        .byte   $0F
        .byte   $1A
        bmi     L6D7A
        brk
        and     $48
        bpl     L6D75
        ora     ($0A),y
        .byte   $17
        .byte   $14
        bit     $22
        clc
        asl     $1624,x
        asl     a
        .byte   $1B
        .byte   $12
        clc
        .byte   $2B
        brk
        and     $48
        bpl     L6D89
        ora     ($0A),y
        .byte   $17
        .byte   $14
        bit     $22
        clc
        .byte   $1E
        .byte   $24
L6D75:  ora     $1E,x
        .byte   $12
        bpl     L6D8C
L6D7A:  .byte   $2B
        brk
        and     $C5
        asl     $0B,x
        asl     $241D,x
        clc
        asl     $241B,x
        .byte   $19
        .byte   $1B
L6D89:  .byte   $12
        .byte   $17
        .byte   $0C
L6D8C:  asl     $1C1C
        bit     $12
        .byte   $1C
        bit     $12
        .byte   $17
        rol     $05
        .byte   $0F
        asl     a
        .byte   $17
        clc
        ora     $0E11,x
        .byte   $1B
        bit     $0C
        asl     a
        .byte   $1C
        ora     $0E15,x
        .byte   $2B
        brk
        and     $A7
        .byte   $13
        .byte   $22
        clc
        asl     $241B,x
        .byte   $1A
        asl     $1C0E,x
        ora     $1224,x
        .byte   $1C
        bit     $18
        .byte   $1F
        asl     LAF1B
        brk
        and     $E3
        .byte   $1B
        jsr     L240E
        ora     $0E1B,y
        .byte   $1C
        asl     $1D17
        bit     $22
        clc
        asl     $0A24,x
        bit     $17
        asl     $2420
        .byte   $1A
        asl     $1C0E,x
        ora     a:$AF,x
        rol     $4A
        ora     $1E19
        .byte   $1C
        ora     ($24),y
        .byte   $0B
        asl     $1D1D,x
        clc
        .byte   $17
        bit     $0B
        brk
        rol     $88
        ora     ($1D),y
        clc
        bit     $1C
        asl     $0E15
        .byte   $0C
        ora     $0A24,x
        bit     L0020
        clc
L6E00:  .byte   $1B
        ora     $0D,x
        brk
        asl     a
        tay
        pla
        sta     $04
        pla
        sta     $05
        iny
        lda     ($04),y
        sta     L0006
        iny
        lda     ($04),y
        sta     $07
        jmp     (L0006)

        lda     $2002
        lda     $0778
        ora     #$10
        and     #$F0
        jsr     L8EED
        lda     #$24
        jsr     L8E2D
        lda     #$20
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$04
        ldy     #$C0
        lda     #$24
L6E3B:  sta     $2007
        dey
        bne     L6E3B
        dex
        bne     L6E3B
        ldy     #$40
        txa
        sta     $0300
        sta     $0301
L6E4D:  sta     $2007
        dey
        bne     L6E4D
        sta     $073F
        sta     $0740
        jmp     L8EE6

        lda     #$01
        sta     $4016
L6E61:  lsr     a
        tax
        sta     $4016
        jsr     L8E6A
        inx
        ldy     #$08
L6E6C:  pha
        lda     $4016,x
        sta     L0000
L6E72:  lsr     a
        ora     L0000
        lsr     a
        pla
        rol     a
        dey
        bne     L6E6C
        sta     $06FC,x
        pha
        and     #$30
        and     $074A,x
        beq     L6E8D
        pla
        and     #$CF
        sta     $06FC,x
        rts

L6E8D:  pla
        sta     $074A,x
        rts

L6E92:  sta     $2006
        iny
        lda     (L0000),y
        sta     $2006
        iny
        lda     (L0000),y
        asl     a
        pha
        lda     $0778
        ora     #$04
        bcs     L6EA9
        and     #$FB
L6EA9:  jsr     L8EED
        pla
        asl     a
        bcc     L6EB3
        ora     #$02
        iny
L6EB3:  lsr     a
        lsr     a
        tax
L6EB6:  bcs     L6EB9
        iny
L6EB9:  lda     (L0000),y
        sta     $2007
        dex
        bne     L6EB6
        sec
        tya
        adc     L0000
        sta     L0000
        lda     #$00
        adc     $01
        sta     $01
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        sta     $2006
        sta     $2006
        ldx     $2002
        ldy     #$00
        lda     (L0000),y
        bne     L6E92
        sta     $2005
        sta     $2005
        rts

        sta     L2000
        sta     $0778
        rts

        beq     L6EFC
        .byte   $62
        asl     $62
        asl     $6D
        .byte   $02
L6EFC:  adc     L7A02
        .byte   $03
        asl     $0C
        .byte   $12
        clc
        .byte   $1E
        .byte   $24
L6F06:  sta     L0000
        jsr     L8F11
        lda     L0000
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$01
        and     #$0F
        cmp     #$06
        bcs     L6F5E
        pha
        asl     a
        tay
        ldx     $0300
        lda     #$20
        cpy     #$00
        bne     L6F28
        lda     #$22
L6F28:  sta     $0301,x
        lda     L8EF4,y
        sta     $0302,x
        lda     L8EF5,y
        sta     $0303,x
        sta     $03
        stx     $02
        pla
        tax
        lda     L8F00,x
        sec
        sbc     L8EF5,y
        tay
        ldx     $02
L6F47:  lda     L07D7,y
        sta     L0304,x
        inx
        iny
        dec     $03
        bne     L6F47
        lda     #$00
        sta     L0304,x
        inx
        inx
        inx
        stx     $0300
L6F5E:  rts

        lda     $0770
        cmp     #$00
        beq     L6F7C
        ldx     #$05
L6F68:  lda     $0134,x
L6F6B:  clc
        .byte   $79
L6F6D:  .byte   $D7
L6F6E:  .byte   $07
        bmi     L6F87
        cmp     #$0A
        bcs     L6F8E
L6F75:  sta     L07D7,y
        dey
        dex
        bpl     L6F68
L6F7C:  lda     #$00
        ldx     #$06
L6F80:  sta     $0133,x
        dex
        bpl     L6F80
        rts

L6F87:  dec     $0133,x
        lda     #$09
        bne     L6F75
L6F8E:  sec
        sbc     #$0A
        inc     $0133,x
        jmp     L8F75

        ldx     #$05
        jsr     L8F9E
        ldx     #$0B
        ldy     #$05
        sec
L6FA1:  lda     $07DD,x
        sbc     L07D7,y
        dex
        dey
        bpl     L6FA1
        bcc     L6FBB
        inx
        iny
L6FAF:  lda     $07DD,x
        sta     L07D7,y
        inx
        iny
        cpy     #$06
        bcc     L6FAF
L6FBB:  rts

        .byte   $04
        bmi     L7007
        rts

        sei
        bcc     L6F6B
        cpy     #$D8
        inx
        bit     $F8
        .byte   $FC
        plp
        bit     LFF18
        .byte   $23
        cli
        ldy     #$6F
        jsr     L90CC
        ldy     #$1F
L6FD6:  sta     $07B0,y
        dey
        bpl     L6FD6
        lda     #$18
        sta     $07A2
        jsr     L9C03
        ldy     #$4B
        jsr     L90CC
        ldx     #$21
        lda     #$00
L6FED:  sta     $0780,x
        dex
        bpl     L6FED
        lda     $075B
        ldy     $0752
        beq     L6FFE
        lda     $0751
L6FFE:  sta     $071A
        sta     $0725
        sta     $0728
L7007:  jsr     LB038
        ldy     #$20
        and     #$01
        beq     L7012
        ldy     #$24
L7012:  sty     $0720
        ldy     #$80
        sty     $0721
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $06A0
        dec     $0730
        dec     $0731
        dec     $0732
        lda     #$0B
        sta     $071E
        jsr     L9C22
        lda     $076A
        bne     L7047
        lda     $075F
        cmp     #$04
        bcc     L704A
        bne     L7047
        lda     $075C
        cmp     #$02
        bcc     L704A
L7047:  inc     $06CC
L704A:  lda     $075B
        beq     L7054
        lda     #$02
        sta     $0710
L7054:  lda     #$80
        sta     $FB
        lda     #$01
        sta     $0774
        inc     $0772
        rts

        lda     #$01
        sta     $0757
        sta     $0754
        lda     #$02
        sta     $075A
L706E:  sta     $0761
        lda     #$00
        sta     $0774
        tay
L7077:  sta     $0300,y
        iny
        bne     L7077
        sta     $0759
        sta     $0769
        sta     $0728
        lda     #$FF
        sta     $03A0
        lda     $071A
        lsr     $0778
        and     #$01
        ror     a
        rol     $0778
        jsr     L90ED
        lda     #$38
        sta     $06E3
        .byte   $A9
L70A0:  pha
        sta     $06E2
        lda     #$58
        sta     $06E1
        ldx     #$0E
L70AB:  .byte   $BD
        .byte   $BC
L70AD:  .byte   $8F
        sta     $06E4,x
        dex
        bpl     L70AB
        ldy     #$03
L70B6:  lda     L8FCB,y
        sta     $0200,y
        dey
        bpl     L70B6
        jsr     L92AF
        jsr     L92AA
        inc     $0722
        inc     $0772
        rts

        ldx     #$07
        lda     #$00
        sta     L0006
L70D2:  stx     $07
L70D4:  cpx     #$01
        bne     L70DC
        cpy     #$60
        bcs     L70DE
L70DC:  sta     (L0006),y
L70DE:  dey
        cpy     #$FF
        bne     L70D4
        dex
        bpl     L70D2
        rts

        .byte   $02
        ora     ($04,x)
        php
        bpl     L710D
        lda     $0770
        beq     L7115
        lda     $0752
        cmp     #$02
        beq     L7106
        ldy     #$05
        lda     $0710
        cmp     #$06
        beq     L7110
        cmp     #$07
        beq     L7110
L7106:  ldy     $074E
        lda     $0743
        .byte   $F0
L710D:  .byte   $02
        ldy     #$04
L7110:  lda     L90E7,y
        sta     $FB
L7115:  rts

        plp
        clc
        sec
        plp
        php
        brk
        brk
        jsr     L50B0
        brk
        brk
        bcs     L70D4
        beq     L7126
L7126:  jsr     L0000
        brk
        brk
        brk
        brk
        jsr     L0304
        .byte   $02
        lda     $071A
        sta     $6D
        lda     #$70
        .byte   $8D
L7139:  asl     a
        .byte   $07
        lda     #$01
        sta     $33
        sta     $B5
        lda     #$00
        sta     $1D
        dec     $0490
        ldy     #$00
        sty     $075B
        lda     $074E
        bne     L7153
        iny
L7153:  sty     $0704
        ldx     $0710
        ldy     $0752
        beq     L7165
        cpy     #$01
        beq     L7165
        ldx     L9118,y
L7165:  lda     L9116,y
        sta     $86
        .byte   $BD
        .byte   $1C
L716C:  sta     ($85),y
        dec     $25BD
        sta     ($8D),y
        cpy     $03
        jsr     L85F1
        ldy     $0715
        beq     L7197
        lda     $0757
        beq     L7197
        lda     L912D,y
        sta     $07F8
        lda     #$01
        sta     $07FA
        lsr     a
        sta     $07F9
        sta     $0757
        sta     $079F
L7197:  ldy     $0758
        beq     L71B0
        lda     #$03
        sta     $1D
        ldx     #$00
        jsr     LBD89
        lda     #$F0
        sta     $D7
        ldx     #$05
        ldy     #$00
        jsr     LB923
L71B0:  ldy     $074E
        bne     L71B8
        jsr     LB70B
L71B8:  .byte   $A9
L71B9:  .byte   $07
        sta     $0E
        rts

        lsr     $40,x
        adc     $70
        ror     $40
        ror     $40
        ror     $40
        ror     L0060
        adc     $70
        brk
        brk
        inc     $0774
        lda     #$00
        sta     $0722
        lda     #$80
        sta     $FC
        dec     $075A
        bpl     L71E9
        lda     #$00
        sta     $0772
        lda     #$03
        sta     $0770
        rts

L71E9:  lda     $075F
        asl     a
        tax
        lda     $075C
        and     #$02
        beq     L71F6
        inx
L71F6:  ldy     L91BD,x
        lda     $075C
        lsr     a
        tya
        bcs     L7204
        lsr     a
        lsr     a
        lsr     a
        lsr     a
L7204:  and     #$0F
        cmp     $071A
        beq     L720F
        bcc     L720F
        lda     #$00
L720F:  sta     $075B
        jsr     L9282
        jmp     L9264

        lda     $0772
        jsr     L8E04
        bit     $92
        .byte   $67
        sta     $37
        .byte   $92
        lda     #$00
        sta     $073C
        sta     $0722
        lda     #$02
        sta     $FC
        inc     $0774
        inc     $0772
        rts

        lda     #$00
        sta     $0774
        lda     $06FC
        and     #$10
        bne     L7248
        lda     $07A0
        bne     L7281
L7248:  lda     #$80
        sta     $FC
        jsr     L9282
        bcc     L7264
        lda     $075F
        sta     $07FD
        lda     #$00
        asl     a
        sta     $0772
        sta     $07A0
        sta     $0770
        rts

L7264:  jsr     L9C03
        lda     #$01
        sta     $0754
        inc     $0757
        lda     #$00
        sta     $0747
        sta     $0756
        sta     $0E
        sta     $0772
        lda     #$01
        sta     $0770
L7281:  rts

        sec
        lda     $077A
        beq     L72A9
        lda     $0761
        bmi     L72A9
        lda     $0753
        eor     #$01
        sta     $0753
        ldx     #$06
L7297:  lda     $075A,x
        pha
        lda     $0761,x
        sta     $075A,x
        pla
        sta     $0761,x
        dex
        bpl     L7297
        clc
L72A9:  rts

        lda     #$FF
        sta     $06C9
        rts

        ldy     $071F
        bne     L72BA
        ldy     #$08
        sty     $071F
L72BA:  dey
        tya
        jsr     L92C8
        dec     $071F
        bne     L72C7
        jsr     L896A
L72C7:  rts

        jsr     L8E04
        .byte   $DB
        .byte   $92
        ldx     LAE88
        dey
        .byte   $FC
        .byte   $93
        .byte   $DB
        .byte   $92
        ldx     LAE88
        dey
        .byte   $FC
        .byte   $93
        inc     $0726
        lda     $0726
        and     #$0F
        bne     L72EB
        sta     $0726
        inc     $0725
L72EB:  inc     $06A0
        lda     $06A0
        and     #$1F
        .byte   $8D
L72F4:  ldy     #$06
        rts

        brk
        bmi     L735A
        .byte   $93
        brk
        brk
        ora     ($12),y
        .byte   $12
        .byte   $13
        brk
        brk
        eor     ($52),y
        .byte   $53
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($02,x)
        .byte   $02
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        sta     ($92),y
        .byte   $93
        brk
        brk
        brk
        brk
        eor     ($52),y
        .byte   $53
        eor     ($42,x)
        .byte   $43
        brk
        brk
        brk
        brk
        brk
        sta     ($92),y
        .byte   $97
        .byte   $87
        dey
        .byte   $89
        sta     L0000,y
        brk
        ora     ($12),y
        .byte   $13
        ldy     $A5
        lda     $A5
        ldx     $97
        tya
        sta     $0201,y
        .byte   $03
        brk
        ldy     $A5
        ldx     L0000
        ora     ($12),y
        .byte   $12
        .byte   $12
        .byte   $13
        brk
        brk
        brk
        brk
        ora     ($02,x)
        .byte   $02
        .byte   $03
        brk
        ldy     $A5
        lda     $A6
        brk
        brk
        brk
L735A:  ora     ($12),y
        .byte   $12
        .byte   $13
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $9C
        brk
        .byte   $8B
        tax
        tax
        tax
        tax
        ora     ($12),y
        .byte   $13
        .byte   $8B
        brk
        .byte   $9C
        .byte   $9C
        brk
        brk
        ora     ($02,x)
        .byte   $03
        ora     ($12),y
        .byte   $12
        .byte   $13
        brk
        brk
        brk
        brk
        tax
        tax
        .byte   $9C
        tax
        brk
        .byte   $8B
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $80
        .byte   $83
        brk
        sta     ($84,x)
        brk
        .byte   $82
        sta     L0000
        .byte   $02
        brk
        brk
        .byte   $03
        brk
        brk
        .byte   $04
        brk
        brk
        brk
        ora     L0006
        .byte   $07
        asl     $0A
        brk
        php
        ora     #$4D
        brk
        brk
        ora     $4E0F
        asl     L4E4E
        brk
        ora     L861A
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        adc     #$69
        brk
        brk
        brk
        brk
        brk
        eor     $47
        .byte   $47
        .byte   $47
L73C7:  .byte   $47
        .byte   $47
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        stx     $87
        adc     #$54
        .byte   $52
        .byte   $62
        brk
        brk
        brk
        clc
        ora     ($18,x)
        .byte   $07
        clc
        .byte   $0F
        clc
        .byte   $FF
        clc
        ora     ($1F,x)
        .byte   $07
        .byte   $1F
        .byte   $0F
        .byte   $1F
        sta     ($1F,x)
        ora     (L0000,x)
        .byte   $8F
        .byte   $1F
        sbc     ($1F),y
        sbc     LF118,y
        clc
        .byte   $FF
        .byte   $1F
        lda     $0728
        .byte   $F0
L7400:  .byte   $03
        jsr     L9508
L7404:  ldx     #$0C
        lda     #$00
L7408:  sta     $06A1,x
        dex
        bpl     L7408
        ldy     $0742
        beq     L7455
        lda     $0725
L7416:  cmp     #$03
        bmi     L741F
        sec
        sbc     #$03
        bpl     L7416
L741F:  asl     a
        asl     a
        asl     a
        asl     a
        adc     L92F6,y
        adc     $0726
        tax
        lda     L92FA,x
        beq     L7455
        pha
        and     #$0F
        sec
        sbc     #$01
        sta     L0000
        asl     a
        adc     L0000
        tax
        pla
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tay
        lda     #$03
        sta     L0000
L7445:  lda     L938A,x
        sta     $06A1,y
        inx
        iny
        cpy     #$0B
        beq     L7455
        dec     L0000
        bne     L7445
L7455:  ldx     $0741
        beq     L746D
        ldy     L93AD,x
        ldx     #$00
L745F:  lda     L93B1,y
        beq     L7467
        sta     $06A1,x
L7467:  iny
        inx
        cpx     #$0D
        bne     L745F
L746D:  ldy     $074E
        bne     L747E
        lda     $075F
        cmp     #$07
        bne     L747E
        lda     #$62
        jmp     L9488

L747E:  lda     L93D8,y
        ldy     $0743
        beq     L7488
        lda     #$88
L7488:  sta     $07
        ldx     #$00
        lda     $0727
        asl     a
        tay
L7491:  lda     L93DC,y
        sta     L0000
        iny
        sty     $01
        lda     $0743
        beq     L74A8
        cpx     #$00
        beq     L74A8
        lda     L0000
        and     #$08
        sta     L0000
L74A8:  ldy     #$00
L74AA:  lda     LC690,y
        bit     L0000
        beq     L74B6
        lda     $07
        sta     $06A1,x
L74B6:  inx
        cpx     #$0D
        beq     L74D3
        lda     $074E
        cmp     #$02
        bne     L74CA
        cpx     #$0B
        bne     L74CA
        lda     #$54
        sta     $07
L74CA:  iny
        cpy     #$08
        bne     L74AA
        ldy     $01
        bne     L7491
L74D3:  jsr     L9508
        lda     $06A0
        jsr     L9BE3
        ldx     #$00
        ldy     #$00
L74E0:  sty     L0000
        lda     $06A1,x
        and     #$C0
        asl     a
        rol     a
        rol     a
        tay
        lda     $06A1,x
        cmp     L9504,y
        bcs     L74F5
        lda     #$00
L74F5:  ldy     L0000
        sta     (L0006),y
        tya
        clc
        adc     #$10
        tay
        inx
        cpx     #$0D
        bcc     L74E0
        rts

        bpl     L7557
        dey
        .byte   $C0
L7508:  ldx     #$02
L750A:  stx     $08
        lda     #$00
        sta     $0729
        ldy     $072C
        lda     ($E7),y
        cmp     #$FD
        beq     L7565
        lda     $0730,x
        bpl     L7565
        iny
        lda     ($E7),y
        asl     a
        bcc     L7530
        lda     $072B
        bne     L7530
        inc     $072B
        inc     $072A
L7530:  dey
        lda     ($E7),y
        and     #$0F
        cmp     #$0D
        bne     L7554
        iny
        lda     ($E7),y
        dey
        and     #$40
        bne     L755D
        lda     $072B
        bne     L755D
        iny
        lda     ($E7),y
        and     #$1F
        sta     $072A
        inc     $072B
        jmp     L956E

L7554:  cmp     #$0E
        .byte   $D0
L7557:  ora     $AD
        plp
        .byte   $07
        bne     L7565
L755D:  lda     $072A
        cmp     $0725
        bcc     L756B
L7565:  jsr     L9595
        jmp     L9571

L756B:  inc     $0729
        jsr     L9589
        ldx     $08
        lda     $0730,x
        bmi     L757B
        dec     $0730,x
L757B:  dex
        bpl     L750A
        lda     $0729
        bne     L7508
        lda     $0728
        bne     L7508
L7588:  rts

        inc     $072C
        inc     $072C
        lda     #$00
        sta     $072B
        rts

        lda     $0730,x
        bmi     L759D
        ldy     $072D,x
L759D:  ldx     #$10
        lda     ($E7),y
        cmp     #$FD
        beq     L7588
        and     #$0F
        cmp     #$0F
        beq     L75B3
        ldx     #$08
        cmp     #$0C
        beq     L75B3
        ldx     #$00
L75B3:  stx     $07
        ldx     $08
        cmp     #$0E
        bne     L75C3
        lda     #$00
        sta     $07
        lda     #$2E
        bne     L7616
L75C3:  cmp     #$0D
        bne     L75E2
        lda     #$22
        sta     $07
        iny
        lda     ($E7),y
        and     #$40
        beq     L7635
        lda     ($E7),y
        and     #$7F
        cmp     #$4B
        bne     L75DD
        inc     $0745
L75DD:  and     #$3F
        .byte   $4C
        .byte   $16
L75E1:  .byte   $96
L75E2:  cmp     #$0C
        bcs     L760D
        iny
        lda     ($E7),y
        and     #$70
        bne     L75F8
        lda     #$16
        sta     $07
        lda     ($E7),y
        and     #$0F
        jmp     L9616

L75F8:  sta     L0000
        cmp     #$70
        bne     L7608
        lda     ($E7),y
        and     #$08
        beq     L7608
        lda     #$00
        sta     L0000
L7608:  lda     L0000
        jmp     L9612

L760D:  iny
        lda     ($E7),y
        and     #$70
        lsr     a
        lsr     a
        lsr     a
        lsr     a
L7616:  sta     L0000
        lda     $0730,x
        bpl     L765F
        lda     $072A
        cmp     $0725
        beq     L7636
        ldy     $072C
        lda     ($E7),y
        and     #$0F
        cmp     #$0E
        bne     L7635
L7630:  .byte   $AD
        plp
L7632:  .byte   $07
        .byte   $D0
L7634:  .byte   $21
L7635:  rts

L7636:  lda     $0728
        beq     L7646
        lda     #$00
        sta     $0728
        sta     $0729
        sta     $08
        rts

L7646:  ldy     $072C
        lda     ($E7),y
        and     #$F0
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        cmp     $0726
        bne     L7635
L7656:  lda     $072C
        sta     $072D,x
        jsr     L9589
L765F:  lda     L0000
        clc
        adc     $07
        jsr     L8E04
        sbc     $98
        rti

        .byte   $97
        rol     $3E9A
        txs
        .byte   $F2
        sta     L9A50,y
        eor     LE59A,y
        tya
        .byte   $43
        .byte   $9B
        tsx
        .byte   $97
        adc     L7C99,y
        sta     L997F,y
        .byte   $57
        sta     L9968,y
        .byte   $6B
        sta     L99D0,y
        .byte   $D7
        sta     L9806,y
        .byte   $B7
        txs
        .byte   $AB
        tya
        sty     $99,x
        bpl     L7630
        bpl     L7632
        bpl     L7634
        .byte   $03
        .byte   $9B
        .byte   $1B
        .byte   $9B
        .byte   $1B
        .byte   $9B
        .byte   $1B
        .byte   $9B
        asl     $9B,x
        .byte   $1B
        .byte   $9B
        .byte   $6F
        tya
        ora     LD39A,y
        txs
        .byte   $82
        tya
        .byte   $9E
        sta     L9A09,y
        asl     L019A
        txs
        .byte   $F2
        stx     $0D,y
        .byte   $97
        ora     $2B97
        .byte   $97
        .byte   $2B
        .byte   $97
        .byte   $2B
        .byte   $97
        eor     $96
        cmp     $96
        ldy     $072D,x
        iny
        lda     ($E7),y
        pha
        and     #$40
        bne     L76E2
        pla
        pha
        and     #$0F
        sta     $0727
        pla
        and     #$30
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     $0742
        rts

L76E2:  pla
        and     #$07
        cmp     #$04
        bcc     L76EE
        sta     $0744
        lda     #$00
L76EE:  sta     $0741
        rts

        ldx     #$04
        lda     $075F
        beq     L7701
        inx
        ldy     $074E
        dey
        bne     L7701
        inx
L7701:  txa
        .byte   $8D
L7703:  dec     L0006,x
        jsr     L8808
        lda     #$0D
        jsr     L9716
        lda     $0723
        eor     #$01
        sta     $0723
        rts

        sta     L0000
        lda     #$00
        ldx     #$04
L771C:  ldy     $16,x
        cpy     L0000
        bne     L7724
        sta     $0F,x
L7724:  dex
        bpl     L771C
        rts

        .byte   $14
        .byte   $17
        clc
        ldx     L0000
        lda     L9720,x
        ldy     #$05
L7732:  dey
        bmi     L773C
        cmp     $16,y
        bne     L7732
        lda     #$00
L773C:  sta     $06CD
        rts

        lda     $0733
        jsr     L8E04
        jmp     L7897

        .byte   $97
        adc     #$9A
        jsr     L9BBD
        lda     $0730,x
        beq     L7773
        bpl     L7767
        tya
        sta     $0730,x
        lda     $0725
        ora     $0726
        beq     L7767
        lda     #$16
        jmp     L97B0

L7767:  ldx     $07
        lda     #$17
        sta     $06A1,x
        lda     #$4C
        jmp     L97AA

L7773:  lda     #$18
        .byte   $4C
        .byte   $B0
L7777:  .byte   $97
        jsr     L9BAE
        sty     L0006
        bcc     L778B
        lda     $0730,x
        lsr     a
        sta     $0736,x
        lda     #$19
        jmp     L97B0

L778B:  lda     #$1B
        ldy     $0730,x
        beq     L77B0
        lda     $0736,x
        sta     L0006
        ldx     $07
        lda     #$1A
        sta     $06A1,x
        cpy     L0006
        bne     L77CE
        inx
        lda     #$4F
        sta     $06A1,x
        lda     #$50
        inx
        ldy     #$0F
        jmp     L9B7F

L77B0:  ldx     $07
        ldy     #$00
        jmp     L9B7F

        .byte   $42
        eor     ($43,x)
        jsr     L9BAE
        ldy     #$00
        bcs     L77C8
        iny
        lda     $0730,x
        bne     L77C8
        iny
L77C8:  lda     L97B7,y
        sta     $06A1
L77CE:  rts

        brk
        eor     $45
        eor     L0000
        brk
        pha
        .byte   $47
        lsr     L0000
        eor     $49
        eor     #$49
        eor     $47
        .byte   $47
        lsr     a
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $4B
        .byte   $47
        .byte   $47
        eor     #$49
        eor     #$49
        eor     #$47
        lsr     a
        .byte   $47
        lsr     a
        .byte   $47
        .byte   $47
        .byte   $4B
        .byte   $47
        .byte   $4B
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        .byte   $47
        lsr     a
        .byte   $47
        lsr     a
        .byte   $47
        lsr     a
        .byte   $4B
        .byte   $47
        .byte   $4B
        .byte   $47
        .byte   $4B
        jsr     L9BBD
        sty     $07
        ldy     #$04
        jsr     L9BB1
        txa
        pha
        ldy     $0730,x
        ldx     $07
        lda     #$0B
        sta     L0006
L781B:  lda     L97CF,y
        .byte   $9D
        .byte   $A1
L7820:  asl     $E8
        lda     L0006
        beq     L782D
        iny
        iny
        iny
        iny
        iny
        dec     L0006
L782D:  cpx     #$0B
        bne     L781B
        pla
        tax
        lda     $0725
        beq     L786E
        lda     $0730,x
        cmp     #$01
        beq     L7869
        ldy     $07
        bne     L7847
        cmp     #$03
        beq     L7869
L7847:  cmp     #$02
        bne     L786E
        jsr     L9BCD
        pha
        jsr     L994A
        pla
        sta     $87,x
        lda     $0725
        sta     $6E,x
        lda     #$01
        sta     $B6,x
        sta     $0F,x
        .byte   $A9
L7861:  bcc     $77F8
        .byte   $CF
        lda     #$31
        sta     $16,x
        rts

L7869:  ldy     #$52
        sty     $06AB
L786E:  rts

        jsr     L9BBD
        ldy     $0730,x
        .byte   $A6
L7876:  .byte   $07
        lda     #$6B
        sta     $06A1,x
L787C:  lda     #$6C
        sta     $06A2,x
        rts

        ldy     #$03
        jsr     L9BB1
        ldy     #$0A
        jsr     L98B3
        bcs     L789E
        ldx     #$06
        lda     #$00
        sta     $06A1,x
        dex
        .byte   $10
L7897:  sed
        lda     L98DD,y
        sta     $06A8
L789E:  rts

        ora     $14,x
        brk
        brk
        ora     $1E,x
        ora     $151C,x
        and     (L0020,x)
        .byte   $1F
        ldy     #$03
        jsr     L9BB1
        jsr     L9BBD
        dey
        dey
        sty     $05
        ldy     $0730,x
        sty     L0006
        ldx     $05
        inx
        lda     L989F,y
        cmp     #$00
        beq     L78CE
        ldx     #$00
        ldy     $05
        jsr     L9B7F
        clc
L78CE:  ldy     L0006
        lda     L98A3,y
        sta     $06A1,x
        lda     L98A7,y
        sta     $06A2,x
        rts

        ora     ($10),y
        ora     $14,x
        .byte   $13
        .byte   $12
        ora     $14,x
        jsr     L9939
        lda     L0000
        beq     L78F0
        iny
        iny
        iny
        iny
L78F0:  tya
        pha
        lda     $0760
        ora     $075F
        beq     L7925
L78FA:  ldy     $0730,x
        beq     L7925
        jsr     L994A
        bcs     L7925
        jsr     L9BCD
        clc
        adc     #$08
        sta     $87,x
        lda     $0725
        adc     #$00
        sta     $6E,x
        lda     #$01
        sta     $B6,x
        sta     $0F,x
        jsr     L9BD5
        sta     $CF,x
        lda     #$0D
        sta     $16,x
        jsr     LC78D
L7925:  pla
        tay
        ldx     $07
        lda     L98DD,y
        sta     $06A1,x
        inx
        lda     L98DF,y
        ldy     L0006
        dey
        jmp     L9B7F

        ldy     #$01
        jsr     L9BB1
        jsr     L9BBD
        tya
        and     #$07
        sta     L0006
        ldy     $0730,x
        rts

        ldx     #$00
L794C:  clc
        lda     $0F,x
        beq     L7956
        inx
        cpx     #$05
        bne     L794C
L7956:  rts

        jsr     L9BAE
        lda     #$86
        sta     $06AB
        ldx     #$0B
        ldy     #$01
        lda     #$87
        jmp     L9B7F

        lda     #$03
        bit     $07A9
        pha
        jsr     L9BAE
        pla
        tax
        lda     #$C0
        .byte   $9D
        .byte   $A1
L7977:  asl     L0060
        lda     #$06
        bit     $07A9
        bit     $09A9
        pha
        jsr     L9BAE
        pla
        tax
        lda     #$0B
        sta     $06A1,x
        inx
        ldy     #$00
        lda     #$63
        jmp     L9B7F

        jsr     L9BBD
        ldx     #$02
        lda     #$6D
        jmp     L9B7F

        lda     #$24
        sta     $06A1
        ldx     #$01
        ldy     #$08
        lda     #$25
        jsr     L9B7F
        lda     #$61
        sta     $06AB
        jsr     L9BCD
        sec
        sbc     #$08
        sta     $8C
        lda     $0725
        sbc     #$00
        sta     $73
        lda     #$30
        sta     $D4
        lda     #$B0
        sta     $010D
        lda     #$30
        sta     $1B
        inc     $14
        rts

        ldx     #$00
        ldy     #$0F
        jmp     L99E9

        txa
        pha
        ldx     #$01
        ldy     #$0F
        lda     #$44
        jsr     L9B7F
        pla
        tax
        jsr     L9BBD
        ldx     #$01
        lda     #$40
        jmp     L9B7F

        .byte   $C3
        .byte   $C2
        .byte   $C2
        .byte   $C2
        ldy     $074E
        lda     L99EE,y
        jmp     L9A44

        asl     $07
        php
        cmp     $0C
        .byte   $89
        .byte   $A0
L7A02:  .byte   $0C
        jsr     L9BB1
        jmp     L9A0E

        lda     #$08
        sta     $0773
        ldy     L0000
        ldx     L99F9,y
        lda     L99FC,y
        jmp     L9A20

        jsr     L9BBD
        ldx     $07
        lda     #$C4
        ldy     #$00
        jmp     L9B7F

        adc     #$61
        adc     ($62,x)
        .byte   $22
        eor     ($52),y
        .byte   $52
        dey
        ldy     $074E
        lda     $0743
        beq     L7A38
        ldy     #$04
L7A38:  lda     L9A29,y
        jmp     L9A44

        ldy     $074E
        lda     L9A25,y
        pha
        jsr     L9BAE
        ldx     $07
        ldy     #$00
        pla
        jmp     L9B7F

        ldy     $074E
        lda     L9A29,y
        jmp     L9A5F

        ldy     $074E
        lda     L9A25,y
        pha
        jsr     L9BBD
        pla
        ldx     $07
        jmp     L9B7F

        jsr     L9BBD
        ldx     $07
        lda     #$64
        sta     $06A1,x
        inx
        dey
        bmi     L7A85
        lda     #$65
        sta     $06A1,x
        inx
        dey
        bmi     L7A85
        lda     #$66
        jsr     L9B7F
L7A85:  ldx     $046A
        jsr     L9BD5
        sta     $0477,x
        lda     $0725
        sta     $046B,x
        jsr     L9BCD
        sta     $0471,x
        inx
        cpx     #$06
        bcc     L7AA1
        ldx     #$00
L7AA1:  stx     $046A
        rts

        .byte   $07
        .byte   $07
        asl     $05
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        .byte   $03
        .byte   $03
        .byte   $04
        ora     L0006
        .byte   $07
        php
        ora     #$0A
        jsr     L9BAE
        bcc     L7AC1
        lda     #$09
        sta     $0734
L7AC1:  dec     $0734
        ldy     $0734
        ldx     L9AAE,y
        .byte   $B9
        .byte   $A5
L7ACC:  txs
        tay
        lda     #$61
        jmp     L9B7F

        jsr     L9BBD
        jsr     L994A
        bcs     L7B02
        jsr     L9BCD
        sta     $87,x
        lda     $0725
        sta     $6E,x
        jsr     L9BD5
        sta     $CF,x
        sta     $58,x
        lda     #$32
        sta     $16,x
        ldy     #$01
        sty     $B6,x
        inc     $0F,x
        ldx     $07
        lda     #$67
        sta     $06A1,x
        lda     #$68
        sta     $06A2,x
L7B02:  rts

        lda     $075D
        beq     L7B3E
        lda     #$00
        sta     $075D
        jmp     L9B1B

        jsr     L9B38
        jmp     L9B2E

        lda     #$00
        sta     $06BC
        jsr     L9B38
        sty     $07
        lda     #$00
        ldy     $074E
        dey
        beq     L7B2A
        lda     #$05
L7B2A:  clc
        adc     $07
        tay
        lda     LBDED,y
        pha
        jsr     L9BBD
        jmp     L9A48

        .byte   $A5
L7B39:  brk
        sec
        sbc     #$00
        tay
L7B3E:  rts

        .byte   $87
        brk
        brk
        brk
        jsr     L9BAE
        bcc     L7B75
        lda     $074E
        bne     L7B75
        ldx     $046A
        jsr     L9BCD
        sec
        sbc     #$10
        sta     $0471,x
        lda     $0725
        sbc     #$00
        sta     $046B,x
        iny
        iny
        tya
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $0477,x
        inx
        cpx     #$05
        bcc     L7B72
        ldx     #$00
L7B72:  stx     $046A
L7B75:  ldx     $074E
        lda     L9B3F,x
        ldx     #$08
        ldy     #$0F
L7B7F:  sty     $0735
        ldy     $06A1,x
        beq     L7B9F
        cpy     #$17
        beq     L7BA2
        cpy     #$1A
        beq     L7BA2
        cpy     #$C0
        beq     L7B9F
        cpy     #$C0
L7B95:  bcs     L7BA2
        cpy     #$54
        bne     L7B9F
        cmp     #$50
        beq     L7BA2
L7B9F:  sta     $06A1,x
L7BA2:  inx
        cpx     #$0D
        bcs     L7BAD
        ldy     $0735
        dey
        bpl     L7B7F
L7BAD:  rts

        jsr     L9BBD
        lda     $0730,x
        clc
        bpl     L7BBC
        tya
        sta     $0730,x
        sec
L7BBC:  rts

L7BBD:  ldy     $072D,x
        lda     ($E7),y
        and     #$0F
        sta     $07
        iny
        lda     ($E7),y
        and     #$0F
        tay
        rts

        lda     $0726
        asl     a
        asl     a
        asl     a
        asl     a
        rts

        lda     $07
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     #$20
        rts

        brk
        bne     L7BE7
        ora     $48
        lsr     a
        lsr     a
        lsr     a
L7BE7:  lsr     a
        tay
        lda     L9BE1,y
        sta     $07
        pla
        and     #$0F
        clc
        adc     L9BDF,y
        sta     L0006
        rts

        .byte   $12
        rol     $0E,x
        asl     $320E
        .byte   $32
L7BFF:  .byte   $32
        asl     a
        rol     $40
        jsr     L9C13
        sta     $0750
        and     #$60
        asl     a
        rol     a
        rol     a
        rol     a
        sta     $074E
        rts

        ldy     $075F
        lda     L9CB4,y
        clc
        adc     $0760
        tay
        lda     L9CBC,y
        rts

        lda     $0750
        jsr     L9C09
        tay
        lda     $0750
        and     #$1F
        sta     $074F
        lda     L9CE0,y
        clc
        adc     $074F
        tay
        lda     L9CE4,y
        sta     $E9
        lda     L9D06,y
        sta     $EA
        ldy     $074E
        lda     L9D28,y
        clc
        adc     $074F
        tay
        lda     L9D2C,y
        sta     $E7
        lda     L9D4E,y
        sta     $E8
        ldy     #$00
        lda     ($E7),y
        pha
        and     #$07
        cmp     #$04
        bcc     L7C68
        sta     $0744
        lda     #$00
L7C68:  sta     $0741
        pla
        pha
        and     #$38
        lsr     a
        lsr     a
        lsr     a
        sta     $0710
        pla
        and     #$C0
        clc
        rol     a
        rol     a
        rol     a
L7C7C:  .byte   $8D
L7C7D:  .byte   $15
L7C7E:  .byte   $07
        iny
        lda     ($E7),y
        pha
        and     #$0F
        sta     $0727
        pla
        pha
        and     #$30
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     $0742
        pla
        and     #$C0
        clc
        rol     a
        rol     a
L7C99:  rol     a
        cmp     #$03
        bne     L7CA3
        sta     $0743
        lda     #$00
L7CA3:  sta     $0733
        lda     $E7
        clc
        adc     #$02
        sta     $E7
        lda     $E8
        adc     #$00
        sta     $E8
        rts

        brk
        ora     $0A
        asl     $1713
        .byte   $1B
        jsr     L2925
        cpy     #$26
L7CC0:  rts

        plp
        and     #$01
        .byte   $27
        .byte   $62
        .byte   $24
L7CC7:  and     L0020,x
        .byte   $63
        .byte   $22
        and     #$41
        bit     $2A61
        and     ($26),y
        .byte   $62
        rol     $2D23
        rts

        .byte   $33
        and     #$01
        .byte   $27
        .byte   $64
        bmi     L7D10
        and     ($65,x)
        .byte   $1F
        asl     $1C
        brk
        bvs     L7C7D
        bcs     L7CC7
        asl     a
        .byte   $1F
        eor     L9B7E,y
        lda     #$D0
        ora     ($1F,x)
L7CF1:  .byte   $3C
        eor     ($7B),y
        .byte   $7C
        ldy     #$A9
        dec     LFAF1
        .byte   $FB
        and     L0060,x
        stx     LB3AA
        cld
L7D01:  ora     $33
        rts

        adc     ($9B),y
        sta     L9D9D,x
        sta     L9E9E,x
        .byte   $9E
        .byte   $9E
        .byte   $9E
        .byte   $9E
L7D10:  .byte   $9E
L7D11:  .byte   $9F
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
        lda     ($A1,x)
        lda     ($A1,x)
        lda     (L0000,x)
        .byte   $03
        ora     $061C,y
        eor     $C0
        .byte   $6B
        dec     L8A37
        ora     LF38E,y
        pha
        cmp     $3B32
        .byte   $7A
        .byte   $8F
        inc     $5B,x
        dec     L92FF
        ora     $7E
        .byte   $D7
        .byte   $02
        and     $D8,x
        adc     $10AF,y
        .byte   $8F
L7D4B:  .byte   $02
        .byte   $6F
        .byte   $FA
        ldx     LAEAE
        ldy     $A4
        lda     $A5
        ldx     $A6
        ldx     $A7
        .byte   $A7
        tay
        tay
        tay
        tay
        tay
        lda     #$A9
        lda     #$AA
        .byte   $AB
        .byte   $AB
        .byte   $AB
        ldy     LACAC
        lda     LA2A1
        ldx     #$A3
        .byte   $A3
        .byte   $A3
        ror     $DD,x
        .byte   $BB
        jmp     L1DEA

        .byte   $1B
        cpy     $5D56
        asl     $9D,x
        dec     $1D
        .byte   $36
L7D7F:  sta     $1DC9,x
        .byte   $04
        .byte   $DB
        eor     #$1D
        sty     $1B
        cmp     #$5D
        dey
        sta     $0F,x
        php
        bmi     L7DDC
        sei
        .byte   $2D
        .byte   $A6
L7D93:  plp
        bcc     L7D4B
        .byte   $FF
        .byte   $0F
        .byte   $03
        lsr     $1B,x
        cmp     #$1B
        .byte   $0F
        .byte   $07
        rol     $1B,x
        tax
        .byte   $1B
        pha
        sta     $0F,x
        asl     a
        rol     a
        .byte   $1B
        .byte   $5B
        .byte   $0C
        sei
        and     LB590
        .byte   $FF
        .byte   $0B
        sty     $4C4B
        .byte   $77
        .byte   $5F
        .byte   $EB
        .byte   $0C
        lda     $19DB,x
        sta     $1D75,x
L7DBE:  adc     LD95B,x
        ora     LDD3D,x
        sta     $261D,y
        sta     $2B5A,x
L7DCA:  txa
        bit     $1BCA
        jsr     L7B95
        .byte   $5C
        .byte   $DB
L7DD3:  jmp     LCC1B

        .byte   $3B
        cpy     $2D78
        ldx     $28
L7DDC:  bcc     L7D93
        .byte   $FF
        .byte   $0B
        sty     $1D3B
        .byte   $8B
        ora     $0CAB,x
        .byte   $DB
        ora     $030F,x
        adc     $1D
        .byte   $6B
        .byte   $1B
        ora     $9D
        .byte   $0B
        .byte   $1B
        ora     $9B
        .byte   $0B
        ora     $0C8B,x
        .byte   $1B
        sty     $1570
        .byte   $7B
        .byte   $0C
        .byte   $DB
        .byte   $0C
L7E01:  .byte   $0F
L7E02:  php
        sei
        .byte   $2D
        .byte   $A6
L7E06:  plp
        bcc     L7DBE
        .byte   $FF
        .byte   $27
        lda     #$4B
        .byte   $0C
        pla
        and     #$0F
        asl     $77
        .byte   $1B
        .byte   $0F
        .byte   $0B
        rts

        ora     $4B,x
        sty     $2D78
        bcc     L7DD3
        .byte   $FF
        .byte   $0F
        .byte   $03
        stx     LE165
        .byte   $BB
        sec
        adc     $3EA8
        sbc     $E7
        .byte   $0F
        php
        .byte   $0B
        .byte   $02
        .byte   $2B
        .byte   $02
        lsr     LE165,x
        .byte   $BB
        asl     $0EDB
        .byte   $BB
        stx     $0EDB
L7E3C:  inc     LEC65,x
        .byte   $0F
        ora     L654E
        sbc     ($0F,x)
        asl     $024E
        cpx     #$0F
L7E4A:  bpl     L7E4A
        sbc     $E1
        .byte   $1B
        sta     $7B
        .byte   $0C
        .byte   $5B
        sta     L0078,x
        and     LB590
        .byte   $FF
        lda     $86
        cpx     $28
        clc
        tay
        eor     $83
        adc     #$03
        dec     $29
        .byte   $9B
        .byte   $83
        asl     $A4,x
        dey
        bit     $E9
        plp
        ora     $A8
        .byte   $7B
        plp
        bit     $8F
        iny
        .byte   $03
        inx
        .byte   $03
L7E77:  lsr     $A8
        sta     $24
        iny
L7E7C:  bit     $FF
L7E7E:  .byte   $EB
L7E7F:  stx     $030F
        .byte   $FB
        ora     $17
        sta     $DB
L7E87:  stx     $070F
        .byte   $57
        ora     $7B
        ora     $9B
        .byte   $80
        .byte   $2B
        sta     $FB
        ora     $0F
        .byte   $0B
        .byte   $1B
        .byte   $05
L7E98:  .byte   $9B
L7E99:  ora     $FF
        rol     L66C2
        .byte   $E2
        ora     ($0F),y
        .byte   $07
        .byte   $02
        ora     ($0F),y
        .byte   $0C
        .byte   $12
        ora     ($FF),y
        asl     LA8C2
        .byte   $AB
        brk
        .byte   $BB
        stx     L826B
        dec     LA000,x
        .byte   $33
        stx     $43
        asl     $3E
        ldy     $A0,x
        .byte   $CB
        .byte   $02
        .byte   $0F
        .byte   $07
        ror     LA642,x
        .byte   $83
        .byte   $02
        .byte   $0F
        asl     a
        .byte   $3B
        .byte   $02
        .byte   $CB
        .byte   $37
        .byte   $0F
        .byte   $0C
        .byte   $E3
        asl     L9BFF
        stx     $0ECA
        inc     $4442
        .byte   $5B
        stx     $80
        clv
        .byte   $1B
        .byte   $80
        bvc     L7E99
        bpl     L7E98
        .byte   $5B
        brk
        .byte   $17
        sta     $4B
        ora     $FE
        .byte   $34
        rti

        .byte   $B7
        stx     $C6
        asl     $5B
        .byte   $80
L7EF0:  .byte   $83
        brk
        bne     L7F2C
        .byte   $5B
        stx     $0E8A
        ldx     L0000
        .byte   $BB
        asl     L80C5
L7EFE:  .byte   $F3
        brk
        .byte   $FF
        asl     a:$C2,x
        .byte   $6B
        asl     $8B
        stx     $63
        .byte   $B7
        .byte   $0F
        ora     $03
        asl     $23
        asl     $4B
        .byte   $B7
        .byte   $BB
        brk
        .byte   $5B
        .byte   $B7
        .byte   $FB
        .byte   $37
        .byte   $3B
        .byte   $B7
        .byte   $0F
        .byte   $0B
        .byte   $1B
        .byte   $37
        .byte   $FF
        .byte   $2B
        .byte   $D7
        .byte   $E3
        .byte   $03
        .byte   $C2
        stx     $E2
        asl     $76
        lda     $A3
        .byte   $8F
        .byte   $03
L7F2C:  stx     $2B
        .byte   $57
        pla
        plp
        sbc     #$28
        sbc     $83
        bit     $8F
        rol     $A8,x
        .byte   $5B
L7F3A:  .byte   $03
        .byte   $FF
        .byte   $0F
        .byte   $02
        sei
L7F3F:  rti

        pha
        dec     LC3F8
        sed
        .byte   $C3
        .byte   $0F
        .byte   $07
        .byte   $7B
        .byte   $43
        dec     $D0
        .byte   $0F
        txa
        iny
        .byte   $50
L7F50:  .byte   $FF
L7F51:  sta     $86
        .byte   $0B
        .byte   $80
        .byte   $1B
        brk
        .byte   $DB
        .byte   $37
        .byte   $77
        .byte   $80
        .byte   $EB
        .byte   $37
        inc     $202B,x
        .byte   $2B
        .byte   $80
        .byte   $7B
        sec
        .byte   $AB
        clv
        .byte   $77
        stx     $FE
        .byte   $42
        jsr     L8649
        .byte   $8B
        asl     $9B
        .byte   $80
        .byte   $7B
        stx     LB75B
        .byte   $9B
        asl     $0EBB
        .byte   $9B
        .byte   $80
L7F7B:  .byte   $FF
L7F7C:  .byte   $0B
        .byte   $80
L7F7E:  rts

L7F7F:  sec
L7F80:  bpl     L7F3A
        cpy     #$3B
        .byte   $DB
        stx     LB840
        beq     L7FC2
        .byte   $7B
        stx     LB8A0
        cpy     #$B8
        .byte   $FB
        brk
        ldy     #$B8
        bmi     L7F51
        inc     L8842
        .byte   $0F
        .byte   $0B
        .byte   $2B
        asl     $0E67
        .byte   $FF
        asl     a
        tax
        asl     $2A28
        asl     L8831
        .byte   $FF
        .byte   $C7
        .byte   $83
        .byte   $D7
        .byte   $03
        .byte   $42
        .byte   $8F
        .byte   $7A
        .byte   $03
        ora     $A4
        sei
        bit     $A6
        and     $E4
        and     $4B
        .byte   $83
        .byte   $E3
        .byte   $03
        ora     $A4
        .byte   $89
        .byte   $24
L7FC1:  .byte   $B5
L7FC2:  bit     $09
        ldy     $65
        bit     $C9
        bit     $0F
        php
        sta     $25
        .byte   $FF
        cmp     LB5A5
        tay
        .byte   $07
        tay
        ror     $28,x
        cpy     L6525
        ldy     $A9
        bit     $E5
        bit     $19
        ldy     $0F
        .byte   $07
        sta     $28,x
        inc     $24
        ora     LD7A4,y
        and     #$16
        lda     #$58
        and     #$97
        and     #$FF
        .byte   $0F
        .byte   $02
        .byte   $02
        ora     ($0F),y
        .byte   $07
        .byte   $02
        ora     ($FF),y
        .byte   $FF
        .byte   $2B
        .byte   $82
        .byte   $AB
        sec
L7FFF:  .byte   $DE
L8000:  .byte   $42
        .byte   $E2
        .byte   $1B
        clv
        .byte   $EB
        .byte   $3B
        .byte   $DB
        .byte   $80
        .byte   $8B
        clv
        .byte   $1B
        .byte   $82
        .byte   $FB
        clv
        .byte   $7B
        .byte   $80
        .byte   $FB
        .byte   $3C
        .byte   $5B
        ldy     LB87B,x
        .byte   $1B
        stx     $0ECB
        .byte   $1B
        stx     $0D0F
        .byte   $2B
        .byte   $3B
        .byte   $BB
        clv
        .byte   $EB
        .byte   $82
        .byte   $4B
        clv
        .byte   $BB
        sec
        .byte   $3B
        .byte   $B7
        .byte   $BB
        .byte   $02
        .byte   $0F
        .byte   $13
        .byte   $1B
        brk
        .byte   $CB
        .byte   $80
        .byte   $6B
        ldy     L7BFF,x
        .byte   $80
        ldx     L8000
        .byte   $8B
        .byte   $8E
L803C:  inx
        ora     $F9
        .byte   $86
L8040:  .byte   $17
        stx     $16
        sta     $4E
        .byte   $2B
        .byte   $80
        .byte   $AB
        stx     L8587
        .byte   $C3
        ora     $8B
        .byte   $82
        .byte   $9B
        .byte   $02
        .byte   $AB
        .byte   $02
        .byte   $BB
        stx     $CB
        .byte   $06
L8057:  .byte   $D3
        .byte   $03
        .byte   $3B
L805A:  stx     $0E6B
        .byte   $A7
        stx     $19FF
        stx     $1152
        .byte   $93
        asl     $030F
        .byte   $9B
        asl     L8E2B
        .byte   $5B
L806D:  asl     L8ECB
        .byte   $FB
        asl     L82FB
        .byte   $9B
        .byte   $82
        .byte   $BB
        .byte   $02
        inc     LE842,x
        .byte   $BB
        stx     $0A0F
        .byte   $AB
L8080:  .byte   $0E
        .byte   $CB
L8082:  asl     $0EF9
        dey
        stx     $A6
        asl     $DB
        .byte   $02
        ldx     $8E,y
        .byte   $FF
        .byte   $AB
        dec     $42DE
        cpy     #$CB
        dec     L8E5B
        .byte   $1B
        dec     L854B
        .byte   $67
        eor     $0F
        .byte   $07
        .byte   $2B
        brk
        .byte   $7B
        sta     $97
        ora     $0F
        asl     a
        .byte   $92
        .byte   $02
        .byte   $FF
        asl     a
        tax
        asl     $4A24
        asl     LAA23,x
        .byte   $FF
        .byte   $1B
        .byte   $80
        .byte   $BB
        sec
        .byte   $4B
        ldy     $3BEB,x
        .byte   $0F
        .byte   $04
        .byte   $2B
        brk
        .byte   $AB
L80C0:  sec
        .byte   $EB
        brk
        .byte   $CB
        .byte   $8E
L80C5:  .byte   $FB
        .byte   $80
        .byte   $AB
        clv
        .byte   $6B
        .byte   $80
        .byte   $FB
        .byte   $3C
        .byte   $9B
        .byte   $BB
        .byte   $5B
        ldy     a:$FB,x
        .byte   $6B
L80D4:  clv
        .byte   $FB
        sec
        .byte   $FF
        .byte   $0B
        stx     $1A
        asl     $DB
        asl     $DE
        .byte   $C2
        .byte   $02
        beq     L811E
        .byte   $BB
        .byte   $80
        .byte   $EB
        asl     $0B
        stx     $93
        asl     $F0
        and     $060F,y
        rts

        clv
        .byte   $1B
        stx     $A0
        lda     $27B7,y
        lda     $2B27,x
        .byte   $83
        lda     ($26,x)
        lda     #$26
L80FF:  inc     $0B25
        .byte   $27
        ldy     $FF,x
        .byte   $0F
        .byte   $02
        asl     L602F,x
        cpx     #$3A
        lda     $A7
        .byte   $DB
        .byte   $80
        .byte   $3B
        .byte   $82
        .byte   $8B
        .byte   $02
        inc     L6842,x
        bvs     L80D4
        and     $A7
        bit     LB227
L811E:  rol     $B9
        rol     $9B
        .byte   $80
        tay
        .byte   $82
        lda     $27,x
        ldy     LB027,x
        .byte   $BB
        .byte   $3B
        .byte   $82
        .byte   $87
        .byte   $34
        .byte   $EE
L8130:  and     $6B
        .byte   $FF
        asl     $0AA5,x
        rol     $2728
        rol     LC733
        .byte   $0F
        .byte   $03
        asl     $0740,x
        rol     LE730
        .byte   $0F
        ora     $1E
        bit     $44
        .byte   $0F
        .byte   $07
        asl     L6A22,x
        rol     LAB23
        .byte   $0F
        ora     #$1E
        eor     ($68,x)
        asl     L8A2A,x
        rol     LA223
        rol     LEA32
        .byte   $FF
        .byte   $3B
        .byte   $87
        ror     $27
        cpy     LEE27
        and     ($87),y
        inc     LA723
        .byte   $3B
        .byte   $87
        .byte   $DB
        .byte   $07
        .byte   $FF
        .byte   $0F
        ora     ($2E,x)
        and     $2B
        rol     $4B25
        lsr     LCB25
        .byte   $6B
        .byte   $07
        .byte   $97
        .byte   $47
        .byte   $E9
L8181:  .byte   $87
L8182:  .byte   $47
        .byte   $C7
        .byte   $7A
        .byte   $07
        dec     $C7,x
        sei
        .byte   $07
        sec
        .byte   $87
        .byte   $AB
        .byte   $47
        .byte   $E3
        .byte   $07
        .byte   $9B
        .byte   $87
        .byte   $0F
        ora     #$68
        .byte   $47
        .byte   $DB
        .byte   $C7
        .byte   $3B
        .byte   $C7
        .byte   $FF
        .byte   $47
        .byte   $9B
        .byte   $CB
        .byte   $07
        .byte   $FA
        ora     L9B86,x
        .byte   $3A
        .byte   $87
        lsr     $07,x
        dey
        .byte   $1B
        .byte   $07
        sta     L652E,x
        .byte   $F0
L81AE:  .byte   $FF
        .byte   $9B
        .byte   $07
        ora     $32
        asl     $33
        .byte   $07
        .byte   $34
        dec     LDC03
        eor     ($EE),y
        .byte   $07
        .byte   $73
        cpx     #$74
        asl     a
        ror     L9E06,x
        asl     a
        .byte   $CE
L81C6:  asl     $E4
        brk
        inx
        asl     a
        inc     $2E0A,x
        .byte   $89
        lsr     $540B
        asl     a
        .byte   $14
        txa
        cpy     $0A
        .byte   $34
        txa
        ror     LC706,x
        asl     a
        ora     ($E0,x)
        .byte   $02
        asl     a
        .byte   $47
        asl     a
        sta     (L0060,x)
        .byte   $82
        asl     a
        .byte   $C7
        asl     a
        asl     L7E87
        .byte   $02
        .byte   $A7
        .byte   $02
        .byte   $B3
        .byte   $02
        .byte   $D7
        .byte   $02
        .byte   $E3
        .byte   $02
        .byte   $07
        .byte   $82
        .byte   $13
        .byte   $02
        rol     L7E06,x
        .byte   $02
        ldx     LFE07
        asl     a
        ora     LCDC4
        .byte   $43
        dec     LDE09
        .byte   $0B
        cmp     LFE42,x
        .byte   $02
        eor     LFDC7,x
        .byte   $5B
        .byte   $07
L8212:  ora     $32
        asl     $33
        .byte   $07
        .byte   $34
        lsr     L680A,x
        .byte   $64
        tya
        .byte   $64
        tay
L821F:  .byte   $64
L8220:  dec     LFE06
L8223:  .byte   $02
        ora     $1E01
        asl     $027E
        sty     $63,x
L822C:  ldy     $63,x
        .byte   $D4
        .byte   $63
        .byte   $F4
        .byte   $63
        .byte   $14
        .byte   $E3
L8234:  rol     $5E0E
        .byte   $02
        .byte   $64
        and     $88,x
        .byte   $72
        .byte   $BE
        .byte   $0E
L823E:  .byte   $0D
L823F:  .byte   $04
        ldx     LCE02
        php
        cmp     LFE4B
        .byte   $02
        ora     L6805
        and     ($7E),y
        asl     a
        stx     $31,y
        lda     #$63
        tay
        .byte   $33
        cmp     L0030,x
        inc     LE602
        .byte   $62
        .byte   $F4
        adc     ($04,x)
        lda     ($08),y
        .byte   $3F
        .byte   $44
        .byte   $33
        sty     $63,x
        ldy     $31
        cpx     $31
        .byte   $04
        .byte   $BF
        php
L826B:  .byte   $3F
        .byte   $04
        .byte   $BF
        php
        .byte   $3F
        cmp     $034B
        cpx     $0E
        .byte   $03
        rol     L7E01
        asl     $BE
        .byte   $02
        .byte   $DE
L827D:  asl     $FE
        asl     a
        .byte   $0D
        .byte   $C4
L8282:  cmp     LCE43
        ora     #$DE
        .byte   $0B
        cmp     LFE42,x
        .byte   $02
        eor     LFDC7,x
        .byte   $9B
        .byte   $07
        ora     $32
        asl     $33
        .byte   $07
        .byte   $34
        inc     $2700,x
        lda     ($65),y
        .byte   $32
        adc     $0A,x
        adc     (L0000),y
        .byte   $B7
        and     ($08),y
        cpx     $18
        .byte   $64
        asl     $5704,x
        .byte   $3B
        .byte   $BB
        asl     a
        .byte   $17
        txa
        .byte   $27
        .byte   $3A
        .byte   $73
        asl     a
        .byte   $7B
        asl     a
        .byte   $D7
        asl     a
        .byte   $E7
        .byte   $3A
        .byte   $3B
        txa
L82BB:  .byte   $97
        asl     a
        inc     $2408,x
L82C0:  txa
        rol     $3E00
        rti

        sec
        .byte   $64
        .byte   $6F
        brk
        .byte   $9F
        brk
        ldx     LC843,y
        asl     a
        cmp     #$63
        dec     LFE07
        .byte   $07
        rol     L6681
L82D8:  .byte   $42
        ror     a
        .byte   $42
        adc     LBE0A,y
        brk
        iny
        .byte   $64
        sed
        .byte   $64
        php
        cpx     $2E
        .byte   $07
        ror     L9E03,x
        .byte   $07
        ldx     LDE03,y
        .byte   $07
        inc     $030A,x
        lda     $0D
        .byte   $44
        cmp     LCE43
        ora     #$DD
        .byte   $42
L82FB:  dec     LFE0B,x
        .byte   $02
        eor     LFDC7,x
L8302:  .byte   $9B
        .byte   $07
        ora     $32
        asl     $33
        .byte   $07
        .byte   $34
        inc     $0C06,x
        .byte   $81
L830E:  and     $5C0A,y
        ora     ($89,x)
        asl     a
        ldy     LD901
        asl     a
        .byte   $FC
        ora     ($2E,x)
        .byte   $83
        .byte   $A7
L831D:  ora     ($B7,x)
        brk
        .byte   $C7
        ora     ($DE,x)
        asl     a
        .byte   $FE
L8325:  .byte   $02
        lsr     $5A83
        .byte   $32
        .byte   $63
        asl     a
        adc     #$0A
        ror     LEE02,x
        .byte   $03
        .byte   $FA
        .byte   $32
        .byte   $03
        txa
        ora     #$0A
        asl     LEE02,x
        .byte   $03
        .byte   $FA
        .byte   $32
        .byte   $03
L833F:  txa
        ora     #$0A
        .byte   $14
        .byte   $42
        asl     L7E02,x
        asl     a
        .byte   $9E
        .byte   $07
        inc     $2E0A,x
        stx     $5E
        asl     a
        stx     LBE06
        asl     a
L8354:  inc     $3E07
        .byte   $83
        lsr     LFE07,x
        asl     a
        ora     $41C4
        .byte   $52
        eor     ($52),y
        cmp     LCE43
        ora     #$DE
        .byte   $0B
        cmp     LFE42,x
L836B:  .byte   $02
        eor     LFDC7,x
        .byte   $5B
        .byte   $07
        ora     $32
        asl     $33
        .byte   $07
        .byte   $34
        inc     LAE0A,x
        stx     $BE
        .byte   $07
        inc     $0D02,x
        .byte   $02
        .byte   $27
        .byte   $32
        lsr     $61
        eor     $62,x
        lsr     $1E0E,x
        .byte   $82
L838B:  pla
        .byte   $3C
        .byte   $74
        .byte   $3A
        adc     $5E4B,x
        stx     $4B7D
L8395:  ror     L8482,x
        .byte   $62
        sty     $61,x
        ldy     $31
        lda     LCE4B,x
L83A0:  asl     $FE
        .byte   $02
        ora     $3406
        and     ($3E),y
        asl     a
        .byte   $64
        .byte   $32
        adc     $0A,x
        .byte   $7B
        adc     ($A4,x)
        .byte   $33
        ldx     LDE02
        asl     L823E
        .byte   $64
        .byte   $32
        sei
        .byte   $32
        ldy     $36,x
        iny
        rol     $DD,x
        .byte   $4B
        .byte   $44
        .byte   $B2
        cli
        .byte   $32
        sty     $63,x
        ldy     $3E
        tsx
        bmi     L8395
        adc     ($CE,x)
L83CE:  asl     $DD
        .byte   $4B
        dec     LDD86
        .byte   $4B
        inc     $2E02,x
        stx     $5E
        .byte   $02
        ror     LFE06,x
        .byte   $02
        asl     $3E86,x
        .byte   $02
        lsr     L7E06,x
        .byte   $02
        .byte   $9E
        asl     $FE
        asl     a
        ora     LCDC4
        .byte   $43
        dec     LDE09
        .byte   $0B
        cmp     LFE42,x
        .byte   $02
        eor     LFDC7,x
        .byte   $5B
        asl     $05
        .byte   $32
        asl     $33
        .byte   $07
        .byte   $34
        lsr     LAE0A,x
        .byte   $02
        .byte   $0D
L8407:  ora     ($39,x)
        .byte   $73
        ora     $3903
        .byte   $7B
        eor     LDE4B
        asl     $1E
        txa
        ldx     LC406
        .byte   $33
L8418:  asl     $FE,x
        lda     $77
        inc     LFE02,x
        .byte   $82
        ora     $3907
        .byte   $73
        tay
        .byte   $74
        sbc     $494B
        .byte   $FB
        inx
        .byte   $74
L842C:  inc     $2E0A,x
        .byte   $82
        .byte   $67
        .byte   $02
        sty     $7A
        .byte   $87
        and     ($0D),y
        .byte   $0B
        inc     $0D02,x
        .byte   $0C
        and     $5E73,y
        asl     $C6
        ror     $45,x
        .byte   $FF
        ldx     LDD0A,y
        pha
        inc     $3D06,x
        .byte   $CB
        lsr     $7E
        lda     LFE4A
        .byte   $82
        and     LA9F3,y
        .byte   $7B
        lsr     L9E8A
        .byte   $07
        inc     $0D0A,x
        cpy     $CD
        .byte   $43
        dec     LDE09
        .byte   $0B
        cmp     LFE42,x
        .byte   $02
        eor     LFDC7,x
        sty     $11,x
        .byte   $0F
        rol     $FE
        bpl     L849A
        sty     $65,x
        ora     $EB,x
        .byte   $12
        .byte   $FA
        eor     ($4A,x)
        stx     $54,y
        rti

        ldy     $42
        .byte   $B7
        .byte   $13
        .byte   $E9
L8482:  ora     $15F5,y
L8485:  ora     ($80),y
        .byte   $47
        .byte   $42
        adc     ($13),y
        .byte   $80
        eor     ($15,x)
        .byte   $92
        .byte   $1B
        .byte   $1F
        bit     $40
        eor     $12,x
        .byte   $64
        rti

        sta     $12,x
        .byte   $A4
L849A:  rti

        .byte   $D2
        .byte   $12
L849D:  sbc     ($40,x)
L849F:  .byte   $13
L84A0:  cpy     #$2C
        .byte   $17
        .byte   $2F
        .byte   $12
        eor     #$13
        .byte   $83
        rti

        .byte   $9F
        .byte   $14
        .byte   $A3
        rti

        .byte   $17
        .byte   $92
        .byte   $83
        .byte   $13
        .byte   $92
        eor     ($B9,x)
        .byte   $14
        cmp     $12
L84B7:  iny
        rti

        .byte   $D4
        rti

        .byte   $4B
        .byte   $92
        sei
        .byte   $1B
        .byte   $9C
        sty     $9F,x
        .byte   $11
L84C3:  .byte   $DF
        .byte   $14
        inc     L7D11,x
        cmp     ($9E,x)
        .byte   $42
        .byte   $CF
        jsr     L90FD
        lda     ($0F),y
        rol     $29
        sta     ($7E),y
        .byte   $42
        inc     $2840,x
        .byte   $92
        lsr     $2E42
        cpy     #$57
        .byte   $73
        .byte   $C3
        and     $C7
        .byte   $27
        .byte   $23
        sty     $33
        jsr     L015C
        .byte   $77
        .byte   $63
        dey
        .byte   $62
        sta     LAA61,y
        rts

        ldy     LEE01,x
        .byte   $42
        lsr     L69C0
        ora     ($7E),y
        .byte   $42
        dec     LF840,x
        .byte   $62
        asl     LAEC2
        rti

L8504:  .byte   $D7
        .byte   $63
        .byte   $E7
        .byte   $63
        .byte   $33
        .byte   $A7
        .byte   $37
        .byte   $27
        .byte   $43
        .byte   $04
        cpy     LE701
        .byte   $73
        .byte   $0C
        sta     ($3E,x)
        .byte   $42
        ora     $5E0A
        rti

        dey
        .byte   $72
        ldx     LE742,y
        .byte   $87
        inc     $3940,x
        .byte   $E1
L8524:  lsr     L6900
        rts

        .byte   $87
        rts

        lda     L0060
        .byte   $C3
        and     ($FE),y
        .byte   $31
L8530:  adc     $BEC1
        .byte   $42
        .byte   $EF
        jsr     L52FD
        and     ($0F,x)
        jsr     L406E
        cli
        .byte   $F2
        .byte   $93
        ora     ($97,x)
        brk
        .byte   $0C
        sta     ($97,x)
        rti

        ldx     $41
        .byte   $C7
        rti

L854B:  ora     L0304
        ora     ($07,x)
        ora     ($23,x)
        ora     ($27,x)
        ora     ($EC,x)
        .byte   $03
        ldy     LC3F3
        .byte   $03
        sei
        .byte   $E2
        sty     $43,x
        .byte   $47
        .byte   $F3
        .byte   $74
        .byte   $43
        .byte   $47
        .byte   $FB
        .byte   $74
        .byte   $43
        bit     $4CF1
        .byte   $63
        .byte   $47
        brk
        .byte   $57
        and     ($5C,x)
        ora     ($7C,x)
        .byte   $72
        and     LECF1,y
        .byte   $02
        jmp     LD881

        .byte   $62
        cpx     $0D01
        ora     $380F
        .byte   $C7
        .byte   $07
        sbc     $1D4A
        .byte   $C1
L8587:  .byte   $5F
        rol     $FD
        .byte   $54
        and     ($0F,x)
        rol     $A7
        .byte   $22
        .byte   $37
        .byte   $FB
        .byte   $73
        jsr     L0783
        .byte   $87
        .byte   $02
        .byte   $93
        jsr     L73C7
        .byte   $04
        sbc     (L0006),y
L859F:  and     ($39),y
        adc     ($59),y
        adc     ($E7),y
        .byte   $73
        .byte   $37
        ldy     #$47
        .byte   $04
        stx     $7C
        sbc     $71
        .byte   $E7
        and     ($33),y
        ldy     $39
        adc     ($A9),y
        adc     ($D3),y
        .byte   $23
        php
        .byte   $F2
        .byte   $13
L85BB:  ora     $27
        .byte   $02
        eor     #$71
        adc     $75,x
        inx
        .byte   $72
        .byte   $67
L85C5:  .byte   $F3
        .byte   $99
L85C7:  adc     ($E7),y
        jsr     L72F4
        .byte   $F7
        and     ($17),y
L85CF:  ldy     #$33
        jsr     L7139
        .byte   $73
        plp
        .byte   $BC
L85D7:  ora     $39
        sbc     ($79),y
        adc     ($A6),y
        and     ($C3,x)
        asl     $D3
        jsr     L00DC
        .byte   $FC
        brk
        .byte   $07
        ldx     #$13
        and     ($5F,x)
        .byte   $32
        sty     L9800
        .byte   $7A
        .byte   $C7
L85F1:  .byte   $63
        cmp     $0361,y
        ldx     #$07
        .byte   $22
        .byte   $74
        .byte   $72
        .byte   $77
        and     ($E7),y
        .byte   $73
        and     $58F1,y
        .byte   $72
        .byte   $77
        .byte   $73
        cld
        .byte   $72
        .byte   $7F
        lda     ($97),y
        .byte   $73
        ldx     $64,y
        cmp     $65
        .byte   $D4
        ror     $E3
        .byte   $67
        .byte   $F3
        .byte   $67
        sta     LCFC1
        rol     $FD
        .byte   $52
L861A:  and     ($0F),y
        jsr     L666E
        .byte   $07
        sta     ($36,x)
        ora     ($66,x)
        brk
        .byte   $A7
        .byte   $22
        php
L8628:  .byte   $F2
        .byte   $67
        .byte   $7B
        .byte   $DC
        .byte   $02
        tya
        .byte   $F2
        .byte   $D7
L8630:  jsr     LF139
        .byte   $9F
        .byte   $33
        .byte   $DC
        .byte   $27
        .byte   $DC
        .byte   $57
        .byte   $23
        .byte   $83
        .byte   $57
        .byte   $63
        .byte   $6C
        .byte   $51
L863F:  .byte   $87
        .byte   $63
        sta     LA361,y
        asl     $B3
        and     ($77,x)
        .byte   $F3
L8649:  .byte   $F3
        and     ($F7,x)
L864C:  rol     a
        .byte   $13
        sta     ($23,x)
        .byte   $22
        .byte   $53
        brk
        .byte   $63
        .byte   $22
        sbc     #$0B
        .byte   $0C
        .byte   $83
        .byte   $13
        and     ($16,x)
        .byte   $22
        .byte   $33
        ora     $8F
        and     $EC,x
        ora     ($63,x)
        ldy     #$67
        jsr     L0173
        .byte   $77
        ora     ($83,x)
        jsr     L2087
        .byte   $B3
        jsr     L20B7
        .byte   $C3
        ora     ($C7,x)
        brk
        .byte   $D3
        jsr     L20D7
        .byte   $67
        ldy     #$77
        .byte   $07
        .byte   $87
        .byte   $22
        inx
        .byte   $62
        sbc     $65,x
        .byte   $1C
        .byte   $82
        .byte   $7F
        sec
        sta     LCFC1
        rol     $FD
L868E:  bvc     L86B1
        .byte   $07
        sta     ($47,x)
        bit     $57
        brk
        .byte   $63
        ora     ($77,x)
        ora     ($C9,x)
        adc     ($68),y
        .byte   $F2
        .byte   $E7
        .byte   $73
        .byte   $97
        .byte   $FB
        asl     $83
        .byte   $5C
        ora     ($D7,x)
        .byte   $22
        .byte   $E7
        brk
        .byte   $03
        .byte   $A7
        jmp     (LB302)

        .byte   $22
        .byte   $E3
L86B1:  ora     ($E7,x)
        .byte   $07
L86B4:  .byte   $47
        ldy     #$57
        asl     $A7
        ora     ($D3,x)
        brk
        .byte   $D7
        ora     ($07,x)
        sta     ($67,x)
        jsr     L2293
        .byte   $03
        .byte   $A3
        .byte   $1C
L86C7:  adc     ($17,x)
        and     ($6F,x)
        .byte   $33
        .byte   $C7
        .byte   $63
        cld
        .byte   $62
        sbc     #$61
        .byte   $FA
        rts

        .byte   $4F
        .byte   $B3
        .byte   $87
        .byte   $63
        .byte   $9C
        ora     ($B7,x)
        .byte   $63
        iny
        .byte   $62
        cmp     LEA61,y
        rts

        and     L87F1,y
        and     ($A7,x)
        ora     ($B7,x)
        jsr     LF139
        .byte   $5F
        sec
        adc     LAFC1
        rol     $FD
        bcc     L8706
        .byte   $0F
        rol     $FE
        bpl     L8724
        .byte   $93
        .byte   $87
        .byte   $17
        .byte   $A3
        .byte   $14
        .byte   $B2
        .byte   $42
        asl     a
        .byte   $92
        ora     $3640,y
L8706:  .byte   $14
        bvc     L874A
        .byte   $82
        asl     $2B,x
        .byte   $93
        bit     $41
        .byte   $BB
        .byte   $14
        clv
        brk
        .byte   $C2
        .byte   $43
        .byte   $C3
        .byte   $13
        .byte   $1B
        sty     $67,x
        .byte   $12
        cpy     $15
        .byte   $53
        cmp     ($D2,x)
        eor     ($12,x)
        cmp     ($29,x)
L8724:  .byte   $13
        sta     $17
        .byte   $1B
        .byte   $92
        .byte   $1A
        .byte   $42
        .byte   $47
        .byte   $13
        .byte   $83
        eor     ($A7,x)
        .byte   $13
        asl     LA791
        .byte   $63
        .byte   $B7
        .byte   $63
        cmp     $65
        cmp     $65,x
        cmp     LE34A,x
        .byte   $67
        .byte   $F3
        .byte   $67
        sta     LAEC1
        .byte   $42
L8745:  .byte   $DF
        jsr     L90FD
        .byte   $11
L874A:  .byte   $0F
        rol     $6E
        .byte   $10
L874E:  .byte   $8B
        .byte   $17
        .byte   $AF
        .byte   $32
L8752:  cld
        .byte   $62
        inx
        .byte   $62
        .byte   $FC
        .byte   $3F
        lda     LF8C8
        .byte   $64
        .byte   $0C
        ldx     $4343,y
        sed
        .byte   $64
        .byte   $0C
        .byte   $BF
        .byte   $73
        rti

        sty     $40
        .byte   $93
        rti

        ldy     $40
        .byte   $B3
        rti

        sed
        .byte   $64
        pha
        cpx     $5C
        and     $4083,y
        .byte   $92
        eor     ($B3,x)
        rti

        sed
        .byte   $64
        pha
        cpx     $5C
        and     L64F8,y
        .byte   $13
        .byte   $C2
        .byte   $37
        adc     $4C
        bit     $63
        brk
        .byte   $97
        adc     $C3
        .byte   $42
        .byte   $0B
        .byte   $97
        ldy     LF832
        .byte   $64
        .byte   $0C
        ldx     $4553,y
        sta     LF848,x
        .byte   $64
        rol     a
        .byte   $E2
        .byte   $3C
        .byte   $47
        lsr     $43,x
        tsx
        .byte   $62
        sed
        .byte   $64
        .byte   $0C
        .byte   $B7
        dey
        .byte   $64
        ldy     LD431,x
        eor     $FC
        and     ($3C),y
        lda     (L0078),y
        .byte   $64
        sty     $0B38
        .byte   $9C
        .byte   $1A
        .byte   $33
        clc
        adc     ($28,x)
        adc     ($39,x)
        rts

        eor     LEE4A,x
L87C3:  ora     ($0F),y
        clv
        ora     $3EC1,x
        .byte   $42
        .byte   $6F
        jsr     L52FD
        and     ($0F),y
        jsr     L406E
        .byte   $F7
        jsr     L8407
        .byte   $17
        jsr     L344F
        .byte   $C3
        .byte   $03
        .byte   $C7
        .byte   $02
        .byte   $D3
        .byte   $22
        .byte   $27
        .byte   $E3
        and     LE761,y
        .byte   $73
        .byte   $5C
        cpx     $57
        brk
        .byte   $6C
        .byte   $73
L87ED:  .byte   $47
        ldy     #$53
        .byte   $06
L87F1:  .byte   $63
L87F2:  .byte   $22
        .byte   $A7
        .byte   $73
        .byte   $FC
        .byte   $73
        .byte   $13
        lda     ($33,x)
        ora     $43
        and     ($5C,x)
L87FE:  .byte   $72
        .byte   $C3
        .byte   $23
        .byte   $CC
L8802:  .byte   $03
        .byte   $77
        .byte   $FB
        ldy     $3902
L8808:  sbc     ($A7),y
        .byte   $73
        .byte   $D3
        .byte   $04
        inx
L880E:  .byte   $72
        .byte   $E3
        .byte   $22
        rol     $F4
        ldy     L8C02,x
        sta     ($A8,x)
        .byte   $62
        .byte   $17
        .byte   $87
        .byte   $43
        bit     $A7
        ora     ($C3,x)
        .byte   $04
        php
        .byte   $F2
        .byte   $97
        and     ($A3,x)
        .byte   $02
        cmp     #$0B
        sbc     ($69,x)
        sbc     ($69),y
        sta     LCFC1
        .byte   $26
L8831:  sbc     $1138,x
        .byte   $0F
        rol     $AD
        rti

        and     LFDC7,x
        sta     $B1,x
        .byte   $0F
        rol     $0D
        .byte   $02
        iny
L8842:  .byte   $72
        .byte   $1C
        sta     ($38,x)
        .byte   $72
        ora     L9705
        .byte   $34
        tya
        .byte   $62
        .byte   $A3
        jsr     L06B3
        .byte   $C3
        jsr     L03CC
        sbc     $2C91,y
        sta     ($48,x)
        .byte   $62
        ora     $3709
        .byte   $63
        .byte   $47
        .byte   $03
        .byte   $57
        and     ($8C,x)
        .byte   $02
        cmp     $79
        .byte   $C7
        and     ($F9),y
        ora     ($39),y
        sbc     ($A9),y
        ora     ($6F),y
        ldy     $D3,x
        adc     $E3
        adc     $7D
        cmp     ($BF,x)
        rol     $FD
        brk
        cmp     ($4C,x)
        brk
        .byte   $F4
        .byte   $4F
        ora     $0202
        .byte   $42
        .byte   $43
        .byte   $4F
        .byte   $52
        .byte   $C2
        .byte   $DE
        brk
L888A:  .byte   $5A
        .byte   $C2
        eor     LFDC7
        bcc     L88E2
        .byte   $0F
        rol     $EE
        bpl     L88A1
        sty     $33,x
        .byte   $14
        .byte   $42
        .byte   $42
        .byte   $77
        asl     $86,x
        .byte   $44
        .byte   $02
        .byte   $92
L88A1:  lsr     a
        asl     $69,x
        .byte   $42
L88A5:  .byte   $73
        .byte   $14
        bcs     L88A9
L88A9:  .byte   $C7
        .byte   $12
        ora     $C0
        .byte   $1C
        .byte   $17
        .byte   $1F
        ora     ($36),y
        .byte   $12
        .byte   $8F
        .byte   $14
        sta     ($40),y
        .byte   $1B
        sty     $35,x
        .byte   $12
        .byte   $34
        .byte   $42
        rts

        .byte   $42
        adc     ($12,x)
        .byte   $87
        .byte   $12
        stx     $40,y
        .byte   $A3
        .byte   $14
        .byte   $1C
        tya
        .byte   $1F
        ora     ($47),y
        .byte   $12
        .byte   $9F
        ora     $CC,x
        ora     $CF,x
        ora     ($05),y
        cpy     #$1F
        ora     $39,x
        .byte   $12
        .byte   $7C
        asl     $7F,x
        ora     ($82),y
        rti

        tya
        .byte   $12
L88E1:  .byte   $DF
L88E2:  ora     $16,x
        cpy     $17
        .byte   $14
        .byte   $54
        .byte   $12
        .byte   $9B
        asl     $28,x
        sty     $CE,x
        ora     ($3D,x)
        cmp     ($5E,x)
        .byte   $42
        .byte   $8F
        jsr     L97FD
        ora     ($0F),y
        rol     $FE
        bpl     L8928
        .byte   $92
        .byte   $57
        .byte   $12
        .byte   $8B
        .byte   $12
        cpy     #$41
        .byte   $F7
        .byte   $13
        .byte   $5B
        .byte   $92
        adc     #$0B
        .byte   $BB
        .byte   $12
        .byte   $B2
        lsr     $19
        .byte   $93
        adc     (L0000),y
        .byte   $17
        sty     $7C,x
        .byte   $14
        .byte   $7F
        ora     ($93),y
        eor     ($BF,x)
        ora     $FC,x
        .byte   $13
        .byte   $FF
        ora     ($2F),y
        sta     $50,x
        .byte   $42
        eor     ($12),y
        cli
        .byte   $14
L8928:  ldx     $12
        .byte   $DB
        .byte   $12
        .byte   $1B
        .byte   $93
        lsr     $43
L8930:  .byte   $7B
        .byte   $12
        sta     LB749
        .byte   $14
        .byte   $1B
        sty     $49,x
        .byte   $0B
        .byte   $BB
        .byte   $12
        .byte   $FC
        .byte   $13
        .byte   $FF
        .byte   $12
        .byte   $03
        cmp     ($2F,x)
        ora     $43,x
        .byte   $12
        .byte   $4B
        .byte   $13
        .byte   $77
        .byte   $13
        sta     $154A,x
        cmp     ($A1,x)
        eor     ($C3,x)
        .byte   $12
        inc     L7D01,x
        cmp     ($9E,x)
        .byte   $42
        .byte   $CF
        jsr     L52FD
        and     ($0F,x)
        jsr     L446E
        .byte   $0C
        sbc     ($4C),y
        ora     ($AA,x)
        and     $D9,x
        .byte   $34
        .byte   $EE
L896A:  jsr     LB308
        .byte   $37
        .byte   $32
        .byte   $43
        .byte   $04
        lsr     $5321
        jsr     L017C
        .byte   $97
        and     ($B7,x)
        .byte   $07
        .byte   $9C
L897C:  sta     ($E7,x)
        .byte   $42
        .byte   $5F
        .byte   $B3
        .byte   $97
        .byte   $63
        ldy     LC502
        eor     ($49,x)
        cpx     #$58
        adc     ($76,x)
        .byte   $64
        sta     $65
        sty     $66,x
        ldy     $22
        ldx     $03
        iny
        .byte   $22
        .byte   $DC
        .byte   $02
        pla
        .byte   $F2
        stx     $42,y
        .byte   $13
        .byte   $82
        .byte   $17
        .byte   $02
        .byte   $AF
        .byte   $34
        inc     $21,x
        .byte   $FC
        asl     $26
        .byte   $80
        rol     a
        bit     $36
        ora     ($8C,x)
        brk
        .byte   $FF
        and     $4E,x
        ldy     #$55
        and     ($77,x)
        jsr     L0787
        .byte   $89
        .byte   $22
        .byte   $AE
        .byte   $21
L89BD:  jmp     L9F82

        .byte   $34
        .byte   $EC
        .byte   $01
L89C3:  .byte   $03
        .byte   $E7
        .byte   $13
        .byte   $67
        .byte   $8D
        lsr     a
L89C9:  lda     $0F41
        ldx     $FD
        bpl     L8A21
        .byte   $4C
L89D1:  brk
        .byte   $C7
        .byte   $12
        dec     $42
        .byte   $03
        .byte   $92
        .byte   $02
        .byte   $42
        and     #$12
        .byte   $63
        .byte   $12
        .byte   $62
        .byte   $42
        .byte   $69
L89E1:  .byte   $14
        lda     $12
        ldy     $42
        .byte   $E2
        .byte   $14
        sbc     ($44,x)
        sed
        asl     $37,x
        cmp     ($8F,x)
        sec
        .byte   $02
        .byte   $BB
        plp
        .byte   $7A
        pla
        .byte   $7A
        tay
        .byte   $7A
        cpx     #$6A
        beq     L8A66
        adc     LFDC5
        .byte   $92
        and     ($0F),y
        jsr     L406E
        ora     $3702
        .byte   $73
        cpx     $0C00
        .byte   $80
        .byte   $3C
        brk
        jmp     (L9C00)

        brk
        asl     $C0
        .byte   $C7
        .byte   $73
        asl     $83
        plp
        .byte   $72
        stx     $40,y
        .byte   $E7
        .byte   $73
        rol     $C0
L8A21:  .byte   $87
        .byte   $7B
        .byte   $D2
        eor     ($39,x)
        sbc     ($C8),y
        .byte   $F2
        .byte   $97
L8A2A:  .byte   $E3
        .byte   $A3
        .byte   $23
        .byte   $E7
        .byte   $02
        .byte   $E3
        .byte   $07
        .byte   $F3
        .byte   $22
        .byte   $37
        .byte   $E3
        .byte   $9C
        brk
L8A37:  .byte   $BC
        brk
L8A39:  .byte   $EC
L8A3A:  brk
L8A3B:  .byte   $0C
L8A3C:  .byte   $80
        .byte   $3C
        brk
        stx     $21
        ldx     L0006
        ldx     $24,y
        .byte   $5C
        .byte   $80
        .byte   $7C
        brk
        .byte   $9C
        brk
        and     #$E1
L8A4D:  .byte   $DC
        ora     $F6
        eor     (L00DC,x)
        .byte   $80
        inx
        .byte   $72
        .byte   $0C
        sta     ($27,x)
        .byte   $73
        jmp     L6601

        .byte   $74
        ora     $3F11
        .byte   $35
L8A61:  ldx     $41,y
        bit     $3682
L8A66:  rti

        .byte   $7C
        .byte   $02
        stx     $40
L8A6B:  .byte   $F9
        .byte   $61
L8A6D:  and     LACE1,y
        .byte   $04
        dec     $41
        .byte   $0C
        .byte   $83
        asl     $41,x
        dey
        .byte   $F2
        and     L7CF1,y
        brk
        .byte   $89
        adc     ($9C,x)
        brk
        .byte   $A7
        .byte   $63
        ldy     LC500,x
        adc     L00DC
        brk
        .byte   $E3
        .byte   $67
        .byte   $F3
        .byte   $67
        .byte   $8D
        .byte   $C1
L8A8F:  .byte   $CF
        rol     $FD
        eor     $B1,x
        .byte   $0F
        rol     $CF
L8A97:  .byte   $33
        .byte   $07
        .byte   $B2
        ora     $11,x
        .byte   $52
        .byte   $42
        sta     LAC0B,y
        .byte   $02
        .byte   $D3
        bit     $D6
        .byte   $42
        .byte   $D7
        and     $23
        sty     $CF
        .byte   $33
        .byte   $07
        .byte   $E3
        ora     L7861,y
        .byte   $7A
        .byte   $EF
        .byte   $33
        bit     $4681
        .byte   $64
L8AB8:  eor     $65,x
        adc     $65
        cpx     $4774
        .byte   $82
        .byte   $53
        ora     $63
        and     ($62,x)
        eor     ($96,x)
        .byte   $22
        txs
        eor     ($CC,x)
        .byte   $03
        .byte   $B9
L8ACD:  sta     ($39),y
        sbc     ($63),y
        rol     $67
        .byte   $27
        .byte   $D3
        asl     $FC
        ora     ($18,x)
        .byte   $E2
        cmp     LE907,y
        .byte   $04
        .byte   $0C
        stx     $37
        .byte   $22
        .byte   $93
        bit     $87
        sty     $AC
        .byte   $02
        .byte   $C2
        eor     ($C3,x)
        .byte   $23
        cmp     LFC71,y
        ora     ($7F,x)
        lda     ($9C),y
        brk
        .byte   $A7
        .byte   $63
        ldx     $64,y
        cpy     LD400
        ror     $E3
        .byte   $67
        .byte   $F3
        .byte   $67
        sta     LCFC1
        rol     $FD
        bvc     L8AB8
        .byte   $0F
L8B08:  rol     $FC
        brk
        .byte   $1F
L8B0C:  .byte   $B3
        .byte   $5C
        brk
        adc     $65
        .byte   $74
        ror     $83
        .byte   $67
        .byte   $93
        .byte   $67
        .byte   $DC
        .byte   $73
        jmp     LB380

        jsr     L0BC9
        .byte   $C3
        php
        .byte   $D3
        .byte   $2F
        .byte   $DC
        brk
        bit     $4C80
        brk
        sty     LD300
        rol     $4AED
        .byte   $FC
        brk
        .byte   $D7
        lda     ($EC,x)
        ora     ($4C,x)
        .byte   $80
        eor     LD811,y
        ora     ($DA),y
        bpl     L8B75
        ldy     #$47
        .byte   $04
        sta     LE711,y
        and     ($3A,x)
        bcc     L8BAF
        jsr     L1076
        .byte   $77
        rts

        .byte   $87
        .byte   $07
        cld
        .byte   $12
        and     LACF1,y
        brk
        sbc     #$71
        .byte   $0C
        .byte   $80
        bit     $4C00
        ora     $C7
        .byte   $7B
        and     LECF1,y
        brk
        sbc     $0C11,y
        .byte   $82
        .byte   $6F
        .byte   $34
        sed
        ora     ($FA),y
        bpl     L8BED
        .byte   $B2
        ldy     LB600
        .byte   $64
        .byte   $CC
        .byte   $01
L8B75:  .byte   $E3
        .byte   $67
        .byte   $F3
        .byte   $67
        sta     LCFC1
        rol     $FD
        .byte   $52
        .byte   $B1
L8B80:  .byte   $0F
        jsr     L456E
        and     LB391,y
        .byte   $04
        .byte   $C3
        and     ($C8,x)
L8B8B:  ora     ($CA),y
        bpl     L8BD8
        sta     ($7C),y
        .byte   $73
        inx
        .byte   $12
        dey
        sta     ($8A),y
        bpl     L8B80
        and     ($05,x)
        sta     ($07),y
        bmi     L8BB6
        .byte   $07
        .byte   $27
        jsr     L1149
        .byte   $9C
        ora     ($C8,x)
        .byte   $72
        .byte   $23
        ldx     $27
        rol     $D3
        .byte   $03
        cld
L8BAF:  .byte   $7A
        .byte   $89
        sta     ($D8),y
        .byte   $72
        .byte   $39
        .byte   $F1
L8BB6:  lda     #$11
        ora     #$F1
        .byte   $63
        bit     $67
        bit     $D8
        .byte   $62
        plp
        sta     ($2A),y
        bpl     L8C1B
        and     ($70,x)
        .byte   $04
        adc     L8C0B,y
        brk
        sty     $21,x
        .byte   $9F
        and     $2F,x
        clv
        and     L7FC1,x
        rol     $FD
        .byte   $06
L8BD8:  cmp     ($4C,x)
        brk
        .byte   $F4
        .byte   $4F
        ora     $0602
        jsr     L4F24
        and     $A0,x
        rol     L0020,x
        .byte   $53
        lsr     $D5
        jsr     L20D6
L8BED:  .byte   $34
        lda     ($73,x)
        eor     #$74
        jsr     L2094
        ldy     L0020,x
        .byte   $D4
        jsr     L20F4
        rol     $5980
        .byte   $42
        eor     LFDC7
L8C02:  stx     $31,y
        .byte   $0F
        rol     $0D
        .byte   $03
        .byte   $1A
        rts

        .byte   $77
L8C0B:  .byte   $42
L8C0C:  cpy     L0000
        iny
        .byte   $62
        lda     LD3E1,y
        asl     $D7
        .byte   $07
        sbc     $0C61,y
        sta     ($4E,x)
L8C1B:  lda     ($8E),y
        lda     ($BC),y
        ora     ($E4,x)
        bvc     L8C0C
        adc     ($0C,x)
        sta     ($0D,x)
        asl     a
        sty     $43
        tya
        .byte   $72
        ora     $0F0C
        sec
        ora     $5FC1,x
        rol     $FD
        pha
        .byte   $0F
        asl     $5E01
        .byte   $02
        .byte   $A7
        brk
        ldy     $1A73,x
        cpx     #$39
        adc     ($58,x)
        .byte   $62
        .byte   $77
        .byte   $63
        .byte   $97
        .byte   $63
        clv
        .byte   $62
        dec     $07,x
        sed
L8C4E:  .byte   $62
        ora     L75E1,y
        .byte   $52
        stx     $40
        .byte   $87
        bvc     L8BED
        .byte   $52
        .byte   $93
        .byte   $43
        lda     $21
        cmp     $52
        dec     $40,x
        .byte   $D7
        jsr     L06E5
        inc     $51
        rol     $5E8D,x
        .byte   $03
        .byte   $67
        .byte   $52
        .byte   $77
        .byte   $52
        ror     L9E02,x
        .byte   $03
        ldx     $43
        .byte   $A7
        .byte   $23
        dec     LFE05,x
        .byte   $02
        asl     $3383,x
        .byte   $54
        lsr     $40
        .byte   $47
        and     ($56,x)
        .byte   $04
        lsr     L8302,x
L8C88:  .byte   $54
        .byte   $93
        .byte   $52
        .byte   $96
L8C8C:  .byte   $07
        .byte   $97
        bvc     L8C4E
        .byte   $03
        .byte   $C7
        .byte   $23
        inc     $0C02,x
        .byte   $82
        .byte   $43
        eor     $45
        bit     $46
        bit     $90
        php
        sta     $51,x
        sei
        .byte   $FA
        .byte   $D7
        .byte   $73
        and     L8CF1,y
        ora     ($A8,x)
        .byte   $52
        clv
        .byte   $52
        cpy     $5F01
        .byte   $B3
        .byte   $97
        .byte   $63
        .byte   $9E
        brk
        asl     $1681
        bit     $66
        .byte   $04
        stx     LFE00
        ora     ($08,x)
        .byte   $D2
        asl     L6F06
        .byte   $47
        .byte   $9E
        .byte   $0F
        asl     $2D82
        .byte   $47
        plp
        .byte   $7A
        pla
        .byte   $7A
        tay
        .byte   $7A
        ldx     LDE01
        .byte   $0F
        adc     LFDC5
        pha
        .byte   $0F
        asl     $5E01
        .byte   $02
        ldy     LFC01,x
        ora     ($2C,x)
        .byte   $82
        eor     ($52,x)
        lsr     L6704
        and     $68
        bit     $69
        bit     $BA
        .byte   $42
        .byte   $C7
L8CF1:  .byte   $04
        dec     LB20B,x
        .byte   $87
        inc     $2C02,x
        sbc     ($2C,x)
        adc     ($67),y
        ora     ($77,x)
        brk
        .byte   $87
        ora     ($8E,x)
        brk
        inc     LF601
        .byte   $02
        .byte   $03
        sta     $05
        .byte   $02
        .byte   $13
        and     ($16,x)
        .byte   $02
        .byte   $27
        .byte   $02
        rol     L8802
        .byte   $72
        .byte   $C7
        jsr     L07D7
        cpx     $76
        .byte   $07
        ldy     #$17
        asl     $48
        .byte   $7A
        ror     L0020,x
        tya
        .byte   $72
        adc     L88E1,y
        .byte   $62
        .byte   $9C
        ora     ($B7,x)
        .byte   $73
        .byte   $DC
        ora     ($F8,x)
        .byte   $62
        inc     $0801,x
        .byte   $E2
        asl     L6E00
        .byte   $02
        .byte   $73
        jsr     L2377
        .byte   $83
        .byte   $04
        .byte   $93
        jsr     L00AE
        inc     $0E0A,x
        .byte   $82
        and     LA871,y
        .byte   $72
        .byte   $E7
        .byte   $73
        .byte   $0C
        sta     ($8F,x)
        .byte   $32
        ldx     LFE00
        .byte   $04
        .byte   $04
        cmp     ($17),y
        .byte   $04
        rol     $49
        .byte   $27
        and     #$DF
        .byte   $33
        inc     $4402,x
        inc     $7C,x
        ora     ($8E,x)
        asl     $BF
        .byte   $47
        .byte   $EE
L8D6B:  .byte   $0F
        eor     $0EC7
        .byte   $82
        pla
        .byte   $7A
        ldx     LDE01
        .byte   $0F
        adc     LFDC5
        pha
        ora     ($0E,x)
        ora     (L0000,x)
        .byte   $5A
        rol     $4506,x
        lsr     $47
        lsr     $53
        .byte   $44
        ldx     LDF01
        lsr     a
        .byte   $4D
        .byte   $C7
L8D8D:  asl     a:$81
        .byte   $5A
        .byte   $2E
        .byte   $04
L8D93:  .byte   $37
        plp
        .byte   $3A
        pha
        lsr     $47
        .byte   $C7
        .byte   $07
        dec     LDF0F
        lsr     a
        eor     $0EC7
        sta     (L0000,x)
        .byte   $5A
        .byte   $33
        .byte   $53
        .byte   $43
        eor     ($46),y
        rti

        .byte   $47
        bvc     L8E01
        .byte   $04
        eor     $40,x
        lsr     $50,x
        .byte   $62
        .byte   $43
        .byte   $64
        rti

        adc     $50
        adc     ($41),y
        .byte   $73
        eor     ($83),y
        eor     ($94),y
        rti

        sta     $50,x
        .byte   $A3
        bvc     L8D6B
        rti

        ldx     $50
        .byte   $B3
        eor     ($B6),y
        rti

        .byte   $B7
        bvc     L8D93
        .byte   $53
        .byte   $DF
        lsr     a
        eor     $0EC7
        sta     (L0000,x)
        .byte   $5A
L8DD9:  rol     $3602
        .byte   $47
        .byte   $37
        .byte   $52
        .byte   $3A
        eor     #$47
        and     $A7
        .byte   $52
        .byte   $D7
        .byte   $04
        .byte   $DF
        lsr     a
        eor     $0EC7
        sta     (L0000,x)
        .byte   $5A
        rol     $4402,x
        eor     ($53),y
        .byte   $44
        .byte   $54
        .byte   $44
        eor     $24,x
        lda     ($54,x)
        ldx     LB401
        and     ($DF,x)
        lsr     a
L8E01:  sbc     $07
        .byte   $4D
L8E04:  .byte   $C7
        sbc     $0141,x
        ldy     $34,x
        iny
        .byte   $52
        .byte   $F2
        eor     ($47),y
        .byte   $D3
        jmp     (L6503)

        eor     #$9E
        .byte   $07
        ldx     LCC01,y
L8E19:  .byte   $03
        inc     $0D07,x
        cmp     #$1E
        ora     ($6C,x)
        ora     ($62,x)
        and     $63,x
        .byte   $53
        txa
        eor     ($AC,x)
        ora     ($B3,x)
L8E2B:  .byte   $53
        .byte   $E9
L8E2D:  eor     ($26),y
        .byte   $C3
        .byte   $27
        .byte   $33
        .byte   $63
        .byte   $43
        .byte   $64
        .byte   $33
        tsx
        rts

        cmp     #$61
        dec     LDE0B
        .byte   $0F
        sbc     $09
        adc     L7DCA,x
        .byte   $47
        sbc     $0141,x
        clv
        .byte   $52
        nop
        eor     ($27,x)
        .byte   $B2
        .byte   $B3
        .byte   $42
        asl     $D4,x
        lsr     a
        .byte   $42
        lda     $51
        .byte   $A7
        and     ($27),y
        .byte   $D3
        php
        .byte   $E2
L8E5B:  .byte   $16
L8E5C:  .byte   $64
        bit     $3804
        .byte   $42
        ror     $64,x
        dey
        .byte   $62
        dec     LFE07,x
        ora     ($0D,x)
L8E6A:  cmp     #$23
        .byte   $32
        and     ($51),y
        tya
        .byte   $52
        ora     $59C9
        .byte   $42
        .byte   $63
        .byte   $53
        .byte   $67
        and     ($14),y
        .byte   $C2
        rol     $31,x
        .byte   $87
        .byte   $53
        .byte   $17
        .byte   $E3
        and     #$61
        bmi     L8EE7
        .byte   $3C
        php
        .byte   $42
        .byte   $37
        eor     L6A40,y
        .byte   $42
        sta     LC940,y
        adc     ($D7,x)
        .byte   $63
        and     $58D1,y
        .byte   $52
        .byte   $C3
        .byte   $67
        .byte   $D3
        and     (L00DC),y
        asl     $F7
        .byte   $42
        .byte   $FA
        .byte   $42
        .byte   $23
        lda     ($43),y
L8EA4:  .byte   $67
        .byte   $C3
        .byte   $34
        .byte   $C7
        .byte   $34
        cmp     ($51),y
        .byte   $43
        .byte   $B3
        .byte   $47
        .byte   $33
        txs
        bmi     L8E5B
        adc     ($B8,x)
        .byte   $62
        ldx     LCE0B,y
        .byte   $0F
        cmp     $09,x
        ora     L7DCA
        .byte   $47
        sbc     $0F49,x
        asl     $3901,x
        .byte   $73
        lsr     LAE07,x
        .byte   $0B
        .byte   $1E
L8ECB:  .byte   $82
        ror     L9E88
        .byte   $02
        ora     $2E04
L8ED3:  .byte   $0B
        rol     $450F,x
        ora     #$ED
        .byte   $47
        sbc     LADFF,x
L8EDD:  .byte   $72
        .byte   $07
        jsr     L8E04
        cpx     $8F
        .byte   $67
        .byte   $85
L8EE6:  .byte   $71
L8EE7:  bcc     L8ED3
        ldx     $53AE
        .byte   $07
L8EED:  lda     $06FC,x
        sta     $06FC
        .byte   $20
L8EF4:  lsr     a
L8EF5:  bcs     L8EA4
        .byte   $72
        .byte   $07
        cmp     #$03
        bcs     L8EFE
        rts

L8EFE:  .byte   $20
        .byte   $24
L8F00:  ldx     $A2,y
        brk
L8F03:  stx     $08
        .byte   $20
L8F06:  eor     $20C0
        .byte   $C3
        sty     $E8
        cpx     #$06
        bne     L8F03
        .byte   $20
L8F11:  .byte   $87
        sbc     (L0020),y
        and     ($F1),y
        jsr     LEEF0
        jsr     LBED9
        ldx     #$01
        stx     $08
        jsr     LBE75
        dex
        stx     $08
        jsr     LBE75
        jsr     LBB9B
        jsr     LB9C1
        jsr     LB7B8
        jsr     LB855
        jsr     LB74F
        jsr     L89E1
        lda     $B5
        cmp     #$02
        bpl     L8F52
        lda     $079F
        beq     L8F64
        cmp     #$04
        bne     L8F52
        lda     $077F
        bne     L8F52
        jsr     L90ED
L8F52:  ldy     $079F
        lda     $09
        cpy     #$08
        bcs     L8F5D
        lsr     a
        lsr     a
L8F5D:  lsr     a
        .byte   $20
L8F5F:  dey
        .byte   $B2
        jmp     LAF67

L8F64:  jsr     LB29A
        lda     $0A
        sta     $0D
        lda     #$00
        sta     $0C
        lda     $0773
        cmp     #$06
        .byte   $F0
L8F75:  .byte   $1C
        lda     $071F
        bne     L8F8F
        lda     $073D
        cmp     #$20
        bmi     L8F92
        lda     $073D
        sbc     #$20
        sta     $073D
        lda     #$00
        .byte   $8D
        rti

L8F8E:  .byte   $03
L8F8F:  .byte   $20
        .byte   $B0
L8F91:  .byte   $92
L8F92:  rts

        lda     $06FF
        clc
L8F97:  adc     $03A1
        sta     $06FF
        .byte   $AD
L8F9E:  .byte   $23
        .byte   $07
        bne     L8FFB
        lda     $0755
        cmp     #$50
        bcc     L8FFB
        lda     $0785
        bne     L8FFB
        ldy     $06FF
        dey
        bmi     L8FFB
        iny
        cpy     #$02
        bcc     L8FBA
        dey
L8FBA:  .byte   $AD
        .byte   $55
L8FBC:  .byte   $07
        cmp     #$70
        bcc     L8FC4
        ldy     $06FF
L8FC4:  tya
        sta     $0775
        clc
        .byte   $6D
        .byte   $3D
L8FCB:  .byte   $07
        sta     $073D
        tya
        clc
        adc     $071C
        sta     $071C
        sta     $073F
        lda     $071A
        adc     #$00
        sta     $071A
        and     #$01
        sta     L0000
        lda     $0778
        and     #$FE
        ora     L0000
        sta     $0778
        jsr     LB038
        lda     #$08
        sta     $0795
        jmp     LB000

L8FFB:  lda     #$00
        sta     $0775
        ldx     #$00
        jsr     LF1FD
        sta     L0000
        ldy     #$00
        asl     a
        bcs     L9013
        iny
        lda     L0000
        and     #$20
        beq     L902E
L9013:  lda     $071C,y
        sec
        sbc     LB034,y
        sta     $86
        lda     $071A,y
        sbc     #$00
        sta     $6D
        lda     $0C
        cmp     LB036,y
        beq     L902E
        lda     #$00
        sta     $57
L902E:  lda     #$00
        sta     $03A1
        rts

        brk
        bpl     L9038
        .byte   $02
L9038:  lda     $071C
        clc
        adc     #$FF
        sta     $071D
        lda     $071A
        adc     #$00
        sta     $071B
L9049:  rts

        lda     $0E
        jsr     L8E04
        and     ($91),y
        .byte   $C7
        lda     (L0006),y
        .byte   $B2
        sbc     $B1
        ldy     $B2
        dex
        .byte   $B2
        cmp     L6991
        bcs     L9049
        bcs     L9095
        .byte   $B2
        eor     $B2
        adc     #$B2
        adc     LADB2,x
        .byte   $52
        .byte   $07
        cmp     #$02
        beq     L909B
        lda     #$00
        .byte   $A4
L9073:  dec     $30C0
        bcc     L90E6
        lda     $0710
        cmp     #$06
        beq     L9083
        cmp     #$07
        bne     L90D3
L9083:  lda     $03C4
        bne     L908D
        lda     #$01
        jmp     LB0E6

L908D:  jsr     LB21F
        dec     $06DE
        bne     L90E5
L9095:  inc     $0769
        jmp     LB315

L909B:  lda     $0758
        bne     L90AC
        lda     #$FF
        jsr     LB200
        lda     $CE
        cmp     #$91
        bcc     L90D3
        rts

L90AC:  lda     $0399
        cmp     #$60
        bne     L90E5
        lda     $CE
        cmp     #$99
        ldy     #$00
        lda     #$01
        bcc     L90C7
        lda     #$03
        sta     $1D
        iny
        lda     #$08
        sta     $05B4
L90C7:  sty     $0716
        .byte   $20
        .byte   $E6
L90CC:  bcs     L9073
        stx     $C9
        pha
        bcc     L90E5
L90D3:  lda     #$08
        sta     $0E
        lda     #$01
        sta     $33
        lsr     a
        sta     $0752
        sta     $0716
        sta     $0758
L90E5:  rts

L90E6:  .byte   $8D
L90E7:  .byte   $FC
        asl     $A5
        asl     L0BC9
L90ED:  beq     L912B
        lda     $074E
        bne     L9104
        ldy     $B5
        dey
        bne     L90FF
        lda     $CE
        cmp     #$D0
L90FD:  bcc     L9104
L90FF:  lda     #$00
        sta     $06FC
L9104:  lda     $06FC
        and     #$C0
        sta     $0A
        lda     $06FC
        and     #$03
        sta     $0C
        lda     $06FC
        .byte   $29
L9116:  .byte   $0C
        .byte   $85
L9118:  .byte   $0B
        and     #$04
        beq     L912B
        lda     $1D
        bne     L912B
        ldy     $0C
        beq     L912B
        lda     #$00
        sta     $0C
        sta     $0B
L912B:  .byte   $20
        .byte   $29
L912D:  .byte   $B3
        ldy     #$01
        lda     $0754
        bne     L913E
        ldy     #$00
        lda     $0714
        beq     L913E
        ldy     #$02
L913E:  sty     $0499
        lda     #$01
        ldy     $57
        beq     L914C
        bpl     L914A
        asl     a
L914A:  sta     $45
L914C:  jsr     LAF93
        jsr     LF187
        jsr     LF131
        ldx     #$00
        jsr     LE2A4
        jsr     LDC66
        lda     $CE
        cmp     #$40
        bcc     L9179
        lda     $0E
        cmp     #$05
        beq     L9179
        cmp     #$07
        beq     L9179
        cmp     #$04
        bcc     L9179
        lda     $03C4
        and     #$DF
        sta     $03C4
L9179:  lda     $B5
        cmp     #$02
        bmi     L91BA
        ldx     #$01
        stx     $0723
        ldy     #$04
        sty     $07
        ldx     #$00
        ldy     $0759
        bne     L9194
        ldy     $0743
        bne     L91AA
L9194:  inx
        ldy     $0E
        cpy     #$0B
        beq     L91AA
        ldy     $0712
        bne     L91A6
        iny
        sty     $FC
        sty     $0712
L91A6:  ldy     #$06
        sty     $07
L91AA:  cmp     $07
        bmi     L91BA
        dex
        bmi     L91BB
        ldy     $07B1
        bne     L91BA
        lda     #$06
        sta     $0E
L91BA:  rts

L91BB:  lda     #$00
L91BD:  sta     $0758
        jsr     LB1DD
        inc     $0752
        rts

        lda     $B5
        bne     L91D1
        lda     $CE
        cmp     #$E4
        bcc     L91DD
L91D1:  lda     #$08
        sta     $0758
        ldy     #$03
        sty     $1D
        jmp     LB0E6

L91DD:  lda     #$02
        sta     $0752
        jmp     LB213

        lda     #$01
        jsr     LB200
        jsr     LAF93
        ldy     #$00
        lda     $06D6
        bne     L920B
        iny
        lda     $074E
        cmp     #$03
        bne     L920B
        iny
        jmp     LB20B

        clc
        adc     $CE
        sta     $CE
        rts

        jsr     LB21F
        ldy     #$02
L920B:  dec     $06DE
        bne     L921E
        sty     $0752
        inc     $0774
        lda     #$00
        sta     $0772
        sta     $0722
L921E:  rts

        lda     #$08
        sta     $57
        ldy     #$01
        lda     $86
        and     #$0F
        bne     L922E
        sta     $57
        tay
L922E:  tya
        jsr     LB0E6
        rts

        lda     $0747
        cmp     #$F8
        bne     L923D
        jmp     LB255

L923D:  cmp     #$C4
        bne     L9244
        jsr     LB273
L9244:  rts

        lda     $0747
L9248:  cmp     #$F0
        bcs     L9253
        cmp     #$C8
        beq     L9273
        jmp     LB0E9

L9253:  bne     L9268
        ldy     $070B
        bne     L9268
        sty     $070D
        inc     $070B
        lda     $0754
        .byte   $49
L9264:  ora     ($8D,x)
        .byte   $54
        .byte   $07
L9268:  rts

        lda     $0747
        cmp     #$F0
        bcs     L92A3
        jmp     LB0E9

L9273:  lda     #$00
        sta     $0747
        lda     #$08
        sta     $0E
        rts

        lda     $0747
        cmp     #$C0
L9282:  beq     L9297
        lda     $09
        lsr     a
        lsr     a
        and     #$03
        sta     L0000
        lda     $03C4
        and     #$FC
        ora     L0000
        sta     $03C4
        rts

L9297:  jsr     LB273
        lda     $03C4
        and     #$FC
        sta     $03C4
        rts

L92A3:  rts

        lda     $1B
        cmp     #$30
        bne     L92BF
L92AA:  lda     $0713
L92AD:  sta     $FF
L92AF:  .byte   $A9
L92B0:  brk
        sta     $0713
        ldy     $CE
        cpy     #$9E
        bcs     L92BC
        lda     #$04
L92BC:  jmp     LB0E6

L92BF:  inc     $0E
        rts

        ora     $23,x
        asl     $1B,x
        .byte   $17
        clc
L92C8:  .byte   $23
        .byte   $63
        lda     #$01
        jsr     LB0E6
        lda     $CE
        cmp     #$AE
        bcc     L92E3
        lda     $0723
        beq     L92E3
        lda     #$20
        sta     $FC
        lda     #$00
        sta     $0723
L92E3:  lda     $0490
        lsr     a
        bcs     L92F6
        lda     $0746
        bne     L92F1
        inc     $0746
L92F1:  lda     #$20
        sta     $03C4
L92F6:  lda     $0746
        .byte   $C9
L92FA:  ora     $D0
        .byte   $2B
        .byte   $EE
        .byte   $5C
L92FF:  .byte   $07
        lda     $075C
        cmp     #$03
        bne     L9315
        ldy     $075F
        lda     $0748
        cmp     LB2C2,y
        bcc     L9315
        inc     $075D
L9315:  inc     $0760
        jsr     L9C03
        inc     $0757
        jsr     LB213
        sta     $075B
        lda     #$80
        sta     $FC
        rts

        lda     #$00
        ldy     $0754
        bne     L9338
        lda     $1D
        bne     L933B
        lda     $0B
        and     #$04
L9338:  sta     $0714
L933B:  jsr     LB450
        lda     $070B
        bne     L9359
        lda     $1D
        cmp     #$03
        beq     L934E
        ldy     #$18
        sty     $0789
L934E:  jsr     L8E04
        .byte   $5A
        .byte   $B3
        ror     $B3,x
        adc     LCFB3
        .byte   $B3
L9359:  rts

        jsr     LB58F
        lda     $0C
        beq     L9363
        sta     $33
L9363:  jsr     LB5CC
        jsr     LBF0E
        sta     $06FF
        rts

        lda     $070A
        sta     $0709
        jmp     LB3AC

        ldy     $9F
        bpl     L938D
        lda     $0A
        and     #$80
        and     $0D
        bne     L9393
        lda     $0708
        sec
        sbc     $CE
        .byte   $CD
        .byte   $06
L938A:  .byte   $07
        bcc     L9393
L938D:  lda     $070A
        sta     $0709
L9393:  lda     $0704
        beq     L93AC
        jsr     LB58F
        lda     $CE
        cmp     #$14
        bcs     L93A6
        lda     #$18
        sta     $0709
L93A6:  lda     $0C
        beq     L93AC
        sta     $33
L93AC:  .byte   $A5
L93AD:  .byte   $0C
        beq     L93B3
        .byte   $20
L93B1:  .byte   $CC
        .byte   $B5
L93B3:  jsr     LBF0E
        sta     $06FF
        lda     $0E
        cmp     #$0B
        bne     L93C4
        lda     #$28
        sta     $0709
L93C4:  jmp     LBF52

        asl     LFC04
        .byte   $F2
        brk
        brk
        .byte   $FF
        .byte   $FF
        lda     $0416
        clc
        adc     $0433
        .byte   $8D
        .byte   $16
L93D8:  .byte   $04
        ldy     #$00
        .byte   $A5
L93DC:  .byte   $9F
        bpl     L93E0
        dey
L93E0:  sty     L0000
        adc     $CE
        sta     $CE
        lda     $B5
        adc     L0000
        sta     $B5
        lda     $0C
        and     $0490
        beq     L9420
        ldy     $0789
        bne     L941F
        ldy     #$18
        sty     $0789
        ldx     #$00
L93FF:  ldy     $33
        lsr     a
        bcs     L9406
        inx
        inx
L9406:  dey
        beq     L940A
        inx
L940A:  lda     $86
        clc
        adc     LB3C7,x
        sta     $86
        lda     $6D
        adc     LB3CB,x
        sta     $6D
        lda     $0C
        eor     #$03
        sta     $33
L941F:  rts

L9420:  sta     $0789
        rts

        bmi     L9456
L9426:  and     $3838
        ora     LA804
        tay
        bcc     L93FF
        bne     L943B
        ora     #$FB
        .byte   $FB
        .byte   $FB
        .byte   $FA
        .byte   $FA
        inc     $34FF,x
        .byte   $34
L943B:  .byte   $34
        brk
        brk
        .byte   $80
        brk
        bne     L9426
        sbc     L1C30
        .byte   $13
        asl     a:$C0
        .byte   $80
        brk
        .byte   $FF
        ora     (L0000,x)
        jsr     LA5FF
        ora     $03C9,x
        bne     L9479
L9456:  ldy     #$00
        lda     $0B
        and     $0490
        beq     L9465
        iny
        and     #$08
        bne     L9465
        iny
L9465:  ldx     LB44D,y
        stx     $0433
        lda     #$08
        ldx     LB44A,y
        stx     $9F
        bmi     L9475
        lsr     a
L9475:  sta     $070C
        rts

L9479:  lda     $070E
        bne     L9488
        lda     $0A
        and     #$80
        beq     L9488
        and     $0D
        beq     L948B
L9488:  jmp     LB51C

L948B:  lda     $1D
        beq     L94A0
        lda     $0704
        beq     L9488
        lda     $0782
        bne     L94A0
        lda     $9F
        bpl     L94A0
        jmp     LB51C

L94A0:  lda     #$20
        sta     $0782
        ldy     #$00
        sty     $0416
        sty     $0433
        lda     $B5
        sta     $0707
        lda     $CE
        sta     $0708
        lda     #$01
        sta     $1D
        lda     $0700
        cmp     #$0A
        bcc     L94D2
        iny
        cmp     #$12
        bcc     L94D2
        iny
        cmp     #$1D
        bcc     L94D2
        iny
        cmp     #$22
        bcc     L94D2
        iny
L94D2:  lda     #$01
        sta     $0706
        lda     $0704
        beq     L94E4
        ldy     #$05
        lda     $047D
        beq     L94E4
        iny
L94E4:  lda     LB424,y
        sta     $0709
        lda     LB42B,y
        sta     $070A
        lda     LB439,y
        sta     $0433
        lda     LB432,y
        sta     $9F
        lda     $0704
        beq     L9511
        lda     #$04
        sta     $FF
L9504:  lda     $CE
        cmp     #$14
L9508:  bcs     L951C
        lda     #$00
        sta     $9F
        jmp     LB51C

L9511:  lda     #$01
        ldy     $0754
        beq     L951A
        lda     #$80
L951A:  sta     $FF
L951C:  ldy     #$00
        sty     L0000
        lda     $1D
        beq     L952D
        lda     $0700
        cmp     #$1D
        bcs     L955E
        bcc     L9545
L952D:  iny
        lda     $074E
        beq     L9545
        dey
        lda     $0C
        cmp     $45
        bne     L9545
        lda     $0A
        and     #$40
        bne     L9559
        lda     L0783
        bne     L955E
L9545:  iny
        inc     L0000
        lda     $0703
        bne     L9554
        lda     $0700
        cmp     #$27
        bcc     L955E
L9554:  inc     L0000
        jmp     LB55E

L9559:  lda     #$0A
        sta     L0783
L955E:  lda     LB440,y
        sta     $0450
        lda     $0E
        cmp     #$07
        bne     L956C
        ldy     #$03
L956C:  .byte   $B9
        .byte   $43
L956E:  ldy     $8D,x
        .byte   $56
L9571:  .byte   $04
        ldy     L0000
        lda     LB447,y
        sta     $0702
        lda     #$01
        sta     $0701
        lda     $33
        cmp     $45
        beq     L958B
L9585:  asl     $0702
        .byte   $2E
L9589:  ora     ($07,x)
L958B:  rts

        .byte   $02
        .byte   $03
        ora     $A0
        brk
        lda     $0700
        .byte   $C9
L9595:  jsr     L15B0
        iny
        cmp     #$10
        .byte   $B0
L959C:  ora     ($C8,x)
L959E:  lda     $06FC
        and     #$7F
        beq     L95C5
        and     #$03
        cmp     $45
        bne     L95B3
        lda     #$00
        sta     $0703
        jmp     LB5C5

L95B3:  lda     $0700
        cmp     #$0D
        bcs     L95C5
        lda     $33
        sta     $45
        lda     #$00
        sta     $57
        sta     $0705
L95C5:  lda     LB58C,y
        sta     $070C
        rts

        and     $0490
        cmp     #$00
        bne     L95DB
        lda     $57
        beq     L9620
        bpl     L95FC
        bmi     L95DE
L95DB:  lsr     a
        bcc     L95FC
L95DE:  lda     $0705
        clc
        adc     $0702
        sta     $0705
        lda     $57
        adc     $0701
        sta     $57
        cmp     $0456
        bmi     L9617
        lda     $0456
        sta     $57
        jmp     LB620

L95FC:  lda     $0705
        sec
        sbc     $0702
        sta     $0705
        lda     $57
        sbc     $0701
        sta     $57
        cmp     $0450
        bpl     L9617
L9612:  lda     $0450
        .byte   $85
L9616:  .byte   $57
L9617:  cmp     #$00
        bpl     L9620
        eor     #$FF
        clc
        adc     #$01
L9620:  sta     $0700
        rts

        lda     $0756
        cmp     #$02
        bcc     L966E
        lda     $0A
        and     #$40
        beq     L9664
        and     $0D
        bne     L9664
        lda     $06CE
        and     #$01
        tax
        lda     $24,x
        bne     L9664
        ldy     $B5
        dey
        bne     L9664
        lda     $0714
        bne     L9664
        lda     $1D
        cmp     #$03
        beq     L9664
        lda     #$20
        sta     $FF
        lda     #$02
        sta     $24,x
        ldy     $070C
        sty     $0711
        dey
        sty     $0781
        inc     $06CE
L9664:  ldx     #$00
        jsr     LB689
        ldx     #$01
        jsr     LB689
L966E:  lda     $074E
        bne     L9686
        ldx     #$02
L9675:  stx     $08
        jsr     LB6F9
        jsr     LF138
        jsr     LF198
        jsr     LEDE8
        dex
        bpl     L9675
L9686:  rts

        jmp     L86B4

        php
        lda     $24,x
        asl     a
        bcs     L96F3
        ldy     $24,x
        beq     L96F2
        dey
        beq     L96BE
        lda     $86
        adc     #$04
        sta     $8D,x
        lda     $6D
        adc     #$00
        sta     $74,x
        lda     $CE
        sta     $D5,x
        lda     #$01
        sta     $BC,x
        ldy     $33
        dey
        lda     LB687,y
        sta     $5E,x
        lda     #$05
        sta     $A6,x
        lda     #$07
        sta     $04A0,x
        dec     $24,x
L96BE:  txa
        clc
        adc     #$07
        tax
        lda     #$60
        sta     L0000
        lda     #$05
        sta     $02
        lda     #$00
        jsr     LBFDC
        jsr     LBF14
        ldx     $08
        jsr     LF142
        jsr     LF18E
        jsr     LE235
        jsr     LE1D0
        lda     $03D2
        and     #$CC
        bne     L96EE
        jsr     LD6D9
        jmp     LECE5

L96EE:  lda     #$00
        sta     $24,x
L96F2:  rts

L96F3:  jsr     LF142
        jmp     LED10

        lda     $07A8,x
        and     #$01
        sta     $07
        lda     $E4,x
        cmp     #$F8
        .byte   $D0
L9705:  bit     L92AD
        .byte   $07
        bne     L974A
        ldy     #$00
        lda     $33
        lsr     a
        bcc     L9714
        ldy     #$08
L9714:  tya
        .byte   $65
L9716:  stx     $95
        .byte   $9C
        lda     $6D
        adc     #$00
        sta     $83,x
        .byte   $A5
L9720:  dec     L6918
        php
        sta     $E4,x
        lda     #$01
        sta     $CB,x
        ldy     $07
        lda     LB74D,y
        sta     $0792
        ldy     $07
        lda     $042C,x
        sec
        sbc     LB74B,y
        sta     $042C,x
        lda     $E4,x
        sbc     #$00
        cmp     #$20
        bcs     L9748
        lda     #$F8
L9748:  sta     $E4,x
L974A:  rts

        .byte   $FF
        bvc     L978E
        jsr     L70AD
        .byte   $07
        beq     L97A3
        lda     $0E
        cmp     #$08
        bcc     L97A3
        cmp     #$0B
        beq     L97A3
        lda     $B5
        cmp     #$02
        bcs     L97A3
        lda     L0787
        bne     L97A3
        lda     $07F8
        ora     $07F9
        ora     $07FA
        beq     L979A
        ldy     $07F8
        dey
        bne     L9786
        lda     $07F9
        ora     $07FA
        bne     L9786
        lda     #$40
        sta     $FC
L9786:  lda     #$14
        sta     L0787
        ldy     #$23
        .byte   $A9
L978E:  .byte   $FF
        sta     $0139
        jsr     L8F5F
        lda     #$A4
        jmp     L8F06

L979A:  sta     $0756
        jsr     LD932
        inc     $0759
L97A3:  rts

        lda     $0723
        beq     L97A3
        .byte   $A5
L97AA:  dec     LB525
        bne     L97A3
        .byte   $8D
L97B0:  .byte   $23
        .byte   $07
        inc     $06D6
        .byte   $4C
        .byte   $9E
L97B7:  cmp     #$AD
        lsr     LD007
        .byte   $37
        sta     $047D
        lda     $0747
        bne     L97F4
        ldy     #$04
L97C7:  lda     $0471,y
        clc
        adc     $0477,y
        .byte   $85
L97CF:  .byte   $02
        lda     $046B,y
        beq     L97F1
        adc     #$00
        sta     $01
        lda     $86
        sec
        sbc     $0471,y
        lda     $6D
        sbc     $046B,y
        bmi     L97F1
        lda     $02
        sec
        sbc     $86
        lda     $01
        sbc     $6D
        bpl     L97F5
L97F1:  dey
        bpl     L97C7
L97F4:  rts

L97F5:  lda     $0477,y
        lsr     a
        sta     L0000
        .byte   $B9
        .byte   $71
L97FD:  .byte   $04
        clc
        .byte   $65
L9800:  brk
        .byte   $85
L9802:  ora     ($B9,x)
        .byte   $6B
        .byte   $04
L9806:  adc     #$00
        sta     L0000
        lda     $09
        lsr     a
        bcc     L983B
        lda     $01
        sec
        sbc     $86
        lda     L0000
        sbc     $6D
        bpl     L9828
        lda     $86
        sec
        sbc     #$01
        sta     $86
        lda     $6D
        sbc     #$00
        jmp     LB839

L9828:  lda     $0490
        lsr     a
        bcc     L983B
        lda     $86
        clc
        adc     #$01
        sta     $86
        lda     $6D
        adc     #$00
        sta     $6D
L983B:  lda     #$10
        sta     L0000
        lda     #$01
        sta     $047D
        sta     $02
        lsr     a
        tax
        jmp     LBFDC

        ora     $02
        php
        .byte   $04
        ora     ($03,x)
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        ldx     #$05
        stx     $08
        lda     $16,x
        cmp     #$30
        bne     L98B5
        lda     $0E
        cmp     #$04
        bne     L9896
        lda     $1D
        cmp     #$03
        bne     L9896
        lda     $CF,x
        cmp     #$AA
        bcs     L9899
        lda     $CE
        cmp     #$A2
        bcs     L9899
        lda     $0417,x
        adc     #$FF
        sta     $0417,x
        lda     $CF,x
        adc     #$01
        sta     $CF,x
        lda     $010E
        sec
        sbc     #$FF
        sta     $010E
        lda     $010D
        sbc     #$01
        sta     $010D
L9896:  jmp     LB8AC

L9899:  ldy     $010F
L989C:  lda     LB84B,y
L989F:  ldx     LB850,y
        .byte   $9D
L98A3:  .byte   $34
        ora     (L0020,x)
        .byte   $2C
L98A7:  ldy     $05A9,x
        sta     $0E
        jsr     LF1B6
        jsr     LF159
        .byte   $20
L98B3:  .byte   $52
        .byte   $E5
L98B5:  rts

        php
        bpl     L98C1
        brk
        jsr     LF1B6
        lda     $0747
        .byte   $D0
L98C1:  eor     $AD
        asl     LF007
        rti

        tay
        dey
        tya
        and     #$02
        bne     L98D5
        inc     $CE
        inc     $CE
        jmp     LB8D9

L98D5:  dec     $CE
        dec     $CE
        lda     $58,x
        clc
        .byte   $79
L98DD:  ldx     $B8,y
L98DF:  sta     $CF,x
        cpy     #$01
        bcc     L98F4
        lda     $0A
        and     #$80
        beq     L98F4
        and     $0D
        bne     L98F4
        lda     #$F2
        sta     $06DB
L98F4:  cpy     #$03
        bne     L9907
        lda     $06DB
        sta     $9F
        lda     #$40
        sta     $0709
        lda     #$00
        sta     $070E
L9907:  jsr     LF159
        jsr     LE884
        jsr     LD642
        lda     $070E
        beq     L9922
        lda     $0786
        bne     L9922
        lda     #$04
        sta     $0786
        inc     $070E
L9922:  rts

        .byte   $A9
L9924:  .byte   $2F
        sta     $16,x
        lda     #$01
        sta     $0F,x
        lda     $76,y
        sta     $6E,x
        lda     $8F,y
        sta     $87,x
        lda     $D7,y
        .byte   $95
L9939:  .byte   $CF
        ldy     $0398
        bne     L9942
        sta     $039D
L9942:  txa
        sta     $039A,y
        inc     $0398
        .byte   $A9
L994A:  .byte   $04
        sta     $FE
        rts

        bmi     L99B0
        cpx     #$05
        bne     L99BC
        ldy     $0398
        dey
        lda     $0399
        cmp     LB94E,y
        beq     L996F
        lda     $09
        lsr     a
        lsr     a
        bcc     L996F
        lda     $D4
L9968:  sbc     #$01
        sta     $D4
        inc     $0399
L996F:  lda     $0399
        cmp     #$08
        bcc     L99BC
        jsr     LF159
        jsr     LF1B6
        ldy     #$00
L997E:  .byte   $20
L997F:  .byte   $3C
        cpx     $C8
        cpy     $0398
        bne     L997E
        lda     $03D1
        and     #$0C
        beq     L999E
        dey
L998F:  ldx     $039A,y
        jsr     LC99E
        dey
        bpl     L998F
        sta     $0398
        sta     $0399
L999E:  lda     $0399
        cmp     #$20
        bcc     L99BC
        ldx     #$06
        lda     #$01
        ldy     #$1B
        jsr     LE3F8
        ldy     $02
L99B0:  cpy     #$D0
        bcs     L99BC
        lda     (L0006),y
        bne     L99BC
        lda     #$26
        sta     (L0006),y
L99BC:  ldx     $08
        rts

        .byte   $0F
        .byte   $07
        lda     $074E
        beq     L9A35
        ldx     #$02
L99C8:  stx     $08
        lda     $0F,x
        bne     L9A1F
        .byte   $BD
        tay
L99D0:  .byte   $07
        ldy     $06CC
        and     LB9BF,y
        cmp     #$06
        bcs     L9A1F
        tay
        lda     $046B,y
        beq     L9A1F
        lda     $047D,y
        beq     L99EE
        sbc     #$00
        .byte   $99
L99E9:  adc     $4C04,x
        .byte   $1F
        tsx
L99EE:  lda     $0747
L99F1:  bne     L9A1F
        lda     #$0E
        sta     $047D,y
        .byte   $B9
L99F9:  .byte   $6B
        .byte   $04
        .byte   $95
L99FC:  ror     L71B9
        .byte   $04
        sta     $87,x
        lda     $0477,y
        sec
        sbc     #$08
        .byte   $95
L9A09:  .byte   $CF
        lda     #$01
        sta     $B6,x
L9A0E:  sta     $0F,x
        lsr     a
        sta     $1E,x
        lda     #$09
        sta     $049A,x
        lda     #$33
        sta     $16,x
        jmp     LBA32

L9A1F:  .byte   $B5
L9A20:  asl     $C9,x
        .byte   $33
        bne     L9A32
L9A25:  jsr     LD642
        .byte   $B5
L9A29:  .byte   $0F
        beq     L9A32
        jsr     LF1B6
        jsr     LBA38
L9A32:  dex
        bpl     L99C8
L9A35:  rts

        .byte   $1C
        cpx     $AD
        .byte   $47
        .byte   $07
        bne     L9A7B
        lda     $1E,x
        bne     L9A6F
        lda     $03D1
L9A44:  and     #$0C
        cmp     #$0C
L9A48:  beq     L9A8A
        ldy     #$01
        jsr     LE14B
        .byte   $30
L9A50:  ora     ($C8,x)
        sty     $46,x
        dey
        lda     LBA36,y
        sta     $58,x
        lda     L0000
        adc     #$28
        .byte   $C9
L9A5F:  bvc     L99F1
        plp
        lda     #$01
        sta     $1E,x
        lda     #$09
        sta     $078A,x
        lda     #$08
        sta     $FE
L9A6F:  lda     $1E,x
        and     #$20
        beq     L9A78
        jsr     LBF68
L9A78:  jsr     LBF07
L9A7B:  jsr     LF1B6
        jsr     LF159
        jsr     LE24B
        jsr     LD853
        jmp     LE884

L9A8A:  jsr     LC99E
        rts

        .byte   $04
        .byte   $04
        .byte   $04
        ora     $05
        ora     L0006
        asl     L0006
        .byte   $14
        cpx     LA8AD
        .byte   $07
        and     #$07
        bne     L9AA5
        lda     $07A8
        and     #$08
L9AA5:  tay
        lda     $2A,y
        bne     L9AC4
        ldx     LBA8E,y
L9AAE:  lda     $0F,x
        bne     L9AC4
        ldx     $08
        txa
        sta     $06AE,y
        lda     #$90
        sta     $2A,y
        lda     #$07
        sta     $04A2,y
        sec
        rts

L9AC4:  ldx     $08
        clc
        rts

        lda     $0747
        bne     L9B30
        lda     $2A,x
        and     #$7F
        ldy     $06AE,x
        cmp     #$02
        beq     L9AF8
        bcs     L9B0E
        txa
        clc
        adc     #$0D
        tax
        lda     #$23
        sta     L0000
        lda     #$0F
        sta     $01
        lda     #$04
        sta     $02
        lda     #$00
        jsr     LBFDC
        jsr     LBF14
        ldx     $08
        jmp     LBB2D

L9AF8:  lda     #$FD
        sta     $AC,x
        lda     $1E,y
        and     #$F7
        sta     $1E,y
        ldx     $46,y
        dex
        lda     LBA97,x
        ldx     $08
        sta     $64,x
L9B0E:  dec     $2A,x
        lda     $87,y
        clc
        adc     #$02
        sta     $93,x
        lda     $6E,y
L9B1B:  adc     #$00
        sta     $7A,x
        lda     $CF,y
        sec
        sbc     #$0A
        sta     $DB,x
        lda     #$01
        sta     $C2,x
        bne     L9B30
        .byte   $20
L9B2E:  cpy     $D7
L9B30:  jsr     LF1A2
        jsr     LF14F
        .byte   $20
        .byte   $3E
L9B38:  .byte   $E2
        jsr     LE4E3
        rts

        .byte   $20
        .byte   $89
L9B3F:  .byte   $BB
        lda     $76,x
        sta     $7A,y
        lda     $8F,x
        ora     #$05
        sta     $93,y
        lda     $D7,x
        sbc     #$10
        sta     $DB,y
        jmp     LBB71

        jsr     LBB89
        lda     $03EA,x
        sta     $7A,y
        lda     L0006
        asl     a
        asl     a
        asl     a
        asl     a
        ora     #$05
        sta     $93,y
        lda     $02
        adc     #$20
        sta     $DB,y
        lda     #$FB
        sta     $AC,y
        lda     #$01
        sta     $C2,y
        sta     $2A,y
L9B7E:  .byte   $85
L9B7F:  inc     $0886,x
        jsr     LBC03
        .byte   $EE
L9B86:  pha
        .byte   $07
        rts

        ldy     #$08
L9B8B:  lda     $2A,y
        beq     L9B97
        dey
        cpy     #$05
        bne     L9B8B
        ldy     #$08
L9B97:  sty     $06B7
L9B9A:  rts

        ldx     #$08
L9B9D:  stx     $08
        lda     $2A,x
        beq     L9BF9
        asl     a
        bcc     L9BAC
        jsr     LBAC8
        jmp     LBBF9

L9BAC:  ldy     $2A,x
L9BAE:  dey
        beq     L9BCE
L9BB1:  inc     $2A,x
        lda     $93,x
        clc
        adc     $0775
        sta     $93,x
        lda     $7A,x
L9BBD:  adc     #$00
        sta     $7A,x
        lda     $2A,x
        cmp     #$30
        bne     L9BED
        lda     #$00
        sta     $2A,x
        .byte   $4C
        .byte   $F9
L9BCD:  .byte   $BB
L9BCE:  txa
        clc
        adc     #$0D
        tax
        lda     #$50
L9BD5:  sta     L0000
        lda     #$06
        sta     $02
        lsr     a
        sta     $01
        .byte   $A9
L9BDF:  brk
        .byte   $20
L9BE1:  .byte   $DC
        .byte   $BF
L9BE3:  ldx     $08
        lda     $AC,x
        cmp     #$05
        bne     L9BED
        inc     $2A,x
L9BED:  jsr     LF14F
        jsr     LF1A2
        jsr     LE23E
        .byte   $20
        .byte   $8D
L9BF8:  .byte   $E6
L9BF9:  dex
        bpl     L9B9D
        rts

        .byte   $17
        .byte   $1D
L9BFF:  .byte   $0B
L9C00:  ora     ($02),y
        .byte   $13
L9C03:  lda     #$01
        sta     $0139
        .byte   $AE
L9C09:  .byte   $53
        .byte   $07
        ldy     LBBFD,x
        jsr     L8F5F
        .byte   $EE
        .byte   $5E
L9C13:  .byte   $07
        lda     $075E
        cmp     #$64
        bne     L9C27
        lda     #$00
        sta     $075E
        .byte   $EE
        .byte   $5A
L9C22:  .byte   $07
        lda     #$40
        sta     $FE
L9C27:  lda     #$02
        sta     $0138
        ldx     $0753
        ldy     LBBFF,x
        jsr     L8F5F
        ldy     $0753
        lda     LBC01,y
        jsr     L8F06
        ldy     $0300
        lda     $02FB,y
        bne     L9C4B
        lda     #$24
        sta     $02FB,y
L9C4B:  ldx     $08
        rts

        lda     #$2E
        sta     $1B
        lda     $76,x
        sta     $73
        lda     $8F,x
        sta     $8C
        lda     #$01
        sta     $BB
        lda     $D7,x
        sec
        sbc     #$08
        sta     $D4
        lda     #$01
        sta     $23
        sta     $14
        lda     #$03
        sta     $049F
        lda     $39
        cmp     #$02
        bcs     L9C80
        lda     $0756
        cmp     #$02
        bcc     L9C7E
        lsr     a
L9C7E:  sta     $39
L9C80:  lda     #$20
        .byte   $8D
        dex
L9C84:  .byte   $03
        lda     #$02
        .byte   $85
L9C88:  inc     $A260,x
        ora     $86
        php
        lda     $23
        beq     L9CEF
        asl     a
        .byte   $90
L9C94:  .byte   $23
        lda     $0747
        bne     L9CDD
        lda     $39
        beq     L9CAF
        cmp     #$03
        beq     L9CAF
        cmp     #$02
        bne     L9CDD
        jsr     LCAFF
        jsr     LE16B
        jmp     LBCDD

L9CAF:  jsr     LCA7D
        .byte   $20
        .byte   $C9
L9CB4:  .byte   $DF
        jmp     LBCDD

L9CB8:  lda     $09
        and     #$03
L9CBC:  bne     L9CD7
        dec     $D4
        lda     $23
        inc     $23
        cmp     #$11
        bcc     L9CD7
        lda     #$10
        sta     $58,x
        lda     #$80
        sta     $23
        asl     a
        sta     $03CA
        rol     a
        sta     $46,x
L9CD7:  lda     $23
        cmp     #$06
        bcc     L9CEF
L9CDD:  jsr     LF159
L9CE0:  jsr     LF1B6
        .byte   $20
L9CE4:  .byte   $4B
        .byte   $E2
        jsr     LE6D9
        jsr     LD853
        jsr     LD642
L9CEF:  rts

        .byte   $04
        .byte   $12
        pha
        lda     #$11
        ldx     $03EE
        ldy     $0754
        .byte   $D0
L9CFC:  .byte   $02
        lda     #$12
L9CFF:  sta     $26,x
        jsr     L8A6B
        .byte   $AE
        .byte   $EE
L9D06:  .byte   $03
        lda     $02
        sta     $03E4,x
        tay
        lda     L0006
        sta     $03E6,x
        lda     (L0006),y
        jsr     LBDFB
        sta     L0000
        ldy     $0754
        bne     L9D1F
        tya
L9D1F:  bcc     L9D46
        ldy     #$11
        sty     $26,x
        lda     #$C4
        .byte   $A4
L9D28:  brk
        cpy     #$58
        .byte   $F0
L9D2C:  .byte   $04
        cpy     #$5D
        bne     L9D46
        lda     $06BC
        bne     L9D3E
        lda     #$0B
        sta     $079D
        inc     $06BC
L9D3E:  lda     $079D
        bne     L9D45
        ldy     #$C4
L9D45:  tya
L9D46:  sta     $03E8,x
        jsr     LBD89
        ldy     $02
L9D4E:  lda     #$23
        sta     (L0006),y
        lda     #$0C
        sta     $0784
        pla
        sta     $05
        ldy     #$00
        lda     $0714
        bne     L9D66
        lda     $0754
        beq     L9D67
L9D66:  iny
L9D67:  lda     $CE
        clc
        adc     LBCF0,y
        and     #$F0
        sta     $D7,x
        ldy     $26,x
        cpy     #$11
        beq     L9D7D
        jsr     LBE07
        jmp     LBD80

L9D7D:  jsr     LBDA0
        lda     $03EE
        eor     #$01
        sta     $03EE
        rts

        lda     $86
        clc
        adc     #$08
        and     #$F0
        sta     $8F,x
        lda     $6D
        adc     #$00
        sta     $76,x
        sta     $03EA,x
        lda     $B5
L9D9D:  sta     $BE,x
        rts

        jsr     LBE24
        lda     #$02
        sta     $FF
        lda     #$00
        sta     L0060,x
        sta     $043C,x
        sta     $9F
        lda     #$FE
        sta     $A8,x
        lda     $05
        jsr     LBDFB
        bcc     L9DEC
        tya
        cmp     #$09
        bcc     L9DC2
        sbc     #$05
L9DC2:  jsr     L8E04
        .byte   $D7
        lda     LBB3D,x
        and     LDDBB,x
        lda     LBDD7,x
        cpx     $BD
        .byte   $DA
        lda     LBB3D,x
        cmp     LA9BD,x
        brk
        bit     $02A9
        bit     $03A9
        sta     $39
        jmp     LBC4E

        ldx     #$05
        ldy     $03EE
        jsr     LB923
L9DEC:  rts

        cmp     ($C0,x)
        .byte   $5F
        rts

        eor     $56,x
        .byte   $57
        cli
        eor     $5B5A,y
        .byte   $5C
        eor     LA05E,x
        .byte   $0D
L9DFD:  cmp     LBDED,y
        beq     L9E06
L9E02:  dey
L9E03:  bpl     L9DFD
        clc
L9E06:  rts

        jsr     LBE24
        lda     #$01
        sta     $03EC,x
        sta     $FD
        jsr     LBE46
        lda     #$FE
        sta     $9F
        lda     #$05
        sta     $0139
L9E1D:  jsr     LBC2C
        ldx     $03EE
        rts

        ldx     $03EE
L9E27:  ldy     $02
        beq     L9E45
        tya
        sec
        sbc     #$10
        sta     $02
        tay
        lda     (L0006),y
        cmp     #$C2
        bne     L9E45
        lda     #$00
        sta     (L0006),y
        jsr     L8A4D
        ldx     $03EE
        jsr     LBB56
L9E45:  rts

        .byte   $B5
L9E47:  .byte   $8F
        sta     $03F1,x
        lda     #$F0
        sta     L0060,x
        sta     $62,x
        lda     #$FA
        sta     $A8,x
        lda     #$FC
        sta     $AA,x
        lda     #$00
        sta     $043C,x
        sta     $043E,x
        lda     $76,x
        sta     L0078,x
        lda     $8F,x
        sta     $91,x
        lda     $D7,x
        clc
        adc     #$08
        sta     $D9,x
        lda     #$FA
        sta     $A8,x
        rts

        lda     $26,x
        beq     L9ED6
        and     #$0F
        pha
        tay
        txa
        clc
        adc     #$09
        tax
        dey
        beq     L9EB8
        jsr     LBFA9
L9E88:  .byte   $20
        .byte   $14
L9E8A:  .byte   $BF
        txa
        clc
        adc     #$02
        tax
        jsr     LBFA9
        jsr     LBF14
        ldx     $08
        jsr     LF160
        jsr     LF1BD
L9E9E:  jsr     LEC5A
        pla
        ldy     $BE,x
        beq     L9ED6
        pha
        lda     #$F0
        cmp     $D9,x
        bcs     L9EAF
        sta     $D9,x
L9EAF:  lda     $D7,x
        cmp     #$F0
        pla
        bcc     L9ED6
        bcs     L9ED4
L9EB8:  jsr     LBFA9
        ldx     $08
        jsr     LF160
        jsr     LF1BD
        jsr     LEBD8
        lda     $D7,x
        and     #$0F
        cmp     #$05
        pla
        bcs     L9ED6
        lda     #$01
        sta     $03EC,x
L9ED4:  lda     #$00
L9ED6:  sta     $26,x
        rts

        ldx     #$01
L9EDB:  stx     $08
        lda     $0301
        bne     L9F03
        lda     $03EC,x
        beq     L9F03
        lda     $03E6,x
        sta     L0006
        lda     #$05
        sta     $07
        lda     $03E4,x
        sta     $02
        tay
        lda     $03E8,x
        sta     (L0006),y
        jsr     L8A61
        lda     #$00
        sta     $03EC,x
L9F03:  dex
        bpl     L9EDB
        rts

        inx
        jsr     LBF14
        ldx     $08
        rts

        lda     $070E
        bne     L9F51
        tax
        lda     $57,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $01
        lda     $57,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        cmp     #$08
        bcc     L9F28
        ora     #$F0
L9F28:  sta     L0000
        ldy     #$00
        cmp     #$00
        bpl     L9F31
        dey
L9F31:  sty     $02
        lda     $0400,x
        clc
        adc     $01
        sta     $0400,x
        lda     #$00
        rol     a
        pha
        ror     a
        lda     $86,x
        adc     L0000
        sta     $86,x
        lda     $6D,x
        adc     $02
        sta     $6D,x
        pla
        clc
        adc     L0000
L9F51:  rts

        ldx     #$00
        lda     $0747
        bne     L9F5E
        lda     $070E
        bne     L9F51
L9F5E:  lda     $0709
        sta     L0000
        lda     #$05
        jmp     LBFB2

        ldy     #$3D
        lda     $1E,x
        cmp     #$05
        bne     L9F72
        ldy     #$20
L9F72:  jmp     LBF99

        ldy     #$00
        jmp     LBF7C

        ldy     #$01
        inx
        lda     #$03
        sta     L0000
        .byte   $A9
L9F82:  asl     $85
        ora     ($A9,x)
        .byte   $02
        sta     $02
        tya
        jmp     LBFD6

        ldy     #$7F
        bne     L9F93
        ldy     #$12
L9F93:  lda     #$02
        bne     L9F9B
        ldy     #$1F
        lda     #$04
L9F9B:  sty     L0000
        inx
        jsr     LBFB2
        ldx     $08
        rts

        asl     $08
        ldy     #$00
        bit     $01A0
        .byte   $A9
L9FAC:  cli
        sta     L0000
        lda     LBFA4,y
        sta     $02
        lda     #$00
        jmp     LBFDC

        lda     #$00
        bit     $01A9
        pha
        ldy     $16,x
        inx
        lda     #$05
        cpy     #$29
        bne     L9FCA
        lda     #$09
L9FCA:  sta     L0000
        lda     #$0A
        sta     $01
        lda     #$03
        sta     $02
        pla
        tay
        jsr     LBFDC
        ldx     $08
        rts

        pha
        lda     $0416,x
        clc
        adc     $0433,x
        sta     $0416,x
        ldy     #$00
        lda     $9F,x
        bpl     L9FEE
        dey
L9FEE:  sty     $07
        adc     $CE,x
        sta     $CE,x
        lda     $B5,x
        adc     $07
        sta     $B5,x
        lda     $0433,x
        clc
        adc     L0000
LA000:  sta     $0433,x
        lda     $9F,x
        adc     #$00
        sta     $9F,x
        cmp     $02
        bmi     LA01D
        lda     $0433,x
        cmp     #$80
        bcc     LA01D
        lda     $02
        sta     $9F,x
        lda     #$00
        sta     $0433,x
LA01D:  pla
        beq     LA04B
        lda     $02
        eor     #$FF
        tay
        iny
        sty     $07
        lda     $0433,x
        sec
        sbc     $01
        sta     $0433,x
        lda     $9F,x
        sbc     #$00
        sta     $9F,x
        .byte   $C5
LA038:  .byte   $07
        .byte   $10
LA03A:  bpl     $9FF9
        .byte   $33
        .byte   $04
        cmp     #$80
        bcs     LA04B
        lda     $07
        sta     $9F,x
        lda     #$FF
        sta     $0433,x
LA04B:  rts

        .byte   $FF
        lda     $0F,x
        pha
        asl     a
        bcs     LA065
        pla
        beq     LA059
        jmp     LC888

LA059:  lda     $071F
        and     #$07
LA05E:  cmp     #$07
LA060:  beq     LA070
        jmp     LC0D2

LA065:  pla
        and     #$0F
        tay
        lda     $0F,y
        bne     LA070
        sta     $0F,x
LA070:  rts

        .byte   $03
        .byte   $03
        asl     L0006
        asl     L0006
        asl     L0006
        .byte   $07
        .byte   $07
        .byte   $07
        ora     $09
        .byte   $04
        ora     L0006
LA081:  php
        ora     #$0A
        asl     $0B
        bpl     LA0C8
        bcs     LA03A
        .byte   $80
        rti

        rti

        .byte   $80
        rti

        beq     LA081
        beq     LA038
        adc     LE938
        .byte   $04
        sta     $6D
        lda     $0725
        sec
        sbc     #$04
        sta     $0725
        lda     $071A
        sec
        sbc     #$04
        sta     $071A
        lda     $071B
        sec
        sbc     #$04
        sta     $071B
        lda     $072A
        sec
        sbc     #$04
        sta     $072A
        lda     #$00
        sta     $073B
        sta     $072B
        sta     $0739
LA0C8:  sta     $073A
        lda     L9BF8,y
        sta     $072C
        rts

        lda     $0745
        beq     LA135
        lda     $0726
        bne     LA135
        ldy     #$0B
LA0DE:  dey
        bmi     LA135
        lda     $075F
        cmp     LC071,y
        bne     LA0DE
        lda     $0725
        cmp     LC07C,y
        bne     LA0DE
        lda     $CE
        cmp     LC087,y
        bne     LA11B
LA0F8:  lda     $1D
        cmp     #$00
        bne     LA11B
        lda     $075F
        cmp     #$06
        bne     LA128
        inc     $06D9
LA108:  inc     $06DA
        lda     $06DA
        cmp     #$03
        bne     LA130
        lda     $06D9
        cmp     #$03
        beq     LA128
        bne     LA122
LA11B:  lda     $075F
        cmp     #$06
        beq     LA108
LA122:  jsr     LC092
        jsr     LD039
LA128:  lda     #$00
        sta     $06DA
        sta     $06D9
LA130:  lda     #$00
        sta     $0745
LA135:  lda     $06CD
        beq     LA14A
        sta     $16,x
        lda     #$01
        sta     $0F,x
        lda     #$00
        sta     $1E,x
        sta     $06CD
        jmp     LC22C

LA14A:  ldy     $0739
        lda     ($E9),y
        cmp     #$FF
        bne     LA156
        jmp     LC21C

LA156:  and     #$0F
        cmp     #$0E
        beq     LA16A
        cpx     #$05
        bcc     LA16A
        iny
        lda     ($E9),y
        and     #$3F
        cmp     #$2E
        beq     LA16A
        rts

LA16A:  lda     $071D
        clc
        adc     #$30
        and     #$F0
        sta     $07
        lda     $071B
        adc     #$00
        sta     L0006
        ldy     $0739
        iny
        lda     ($E9),y
        asl     a
        bcc     LA18F
        lda     $073B
        bne     LA18F
        inc     $073B
        inc     $073A
LA18F:  dey
        lda     ($E9),y
        and     #$0F
        cmp     #$0F
        bne     LA1B1
        lda     $073B
        bne     LA1B1
        iny
        lda     ($E9),y
        .byte   $29
LA1A1:  .byte   $3F
        sta     $073A
        inc     $0739
        inc     $0739
        inc     $073B
        jmp     LC0D2

LA1B1:  lda     $073A
        sta     $6E,x
        lda     ($E9),y
        and     #$F0
        sta     $87,x
        cmp     $071D
        lda     $6E,x
        sbc     $071B
        bcs     LA1D1
        lda     ($E9),y
        and     #$0F
        cmp     #$0E
        beq     LA237
        jmp     LC256

LA1D1:  lda     $07
        cmp     $87,x
        lda     L0006
        sbc     $6E,x
        bcc     LA21C
        lda     #$01
        sta     $B6,x
        lda     ($E9),y
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $CF,x
        cmp     #$E0
        beq     LA237
        iny
        lda     ($E9),y
        and     #$40
        beq     LA1F7
        lda     $06CC
        beq     LA264
LA1F7:  lda     ($E9),y
        and     #$3F
        cmp     #$37
        bcc     LA203
        cmp     #$3F
        bcc     LA234
LA203:  cmp     #$06
        bne     LA20E
        ldy     $076A
        beq     LA20E
        lda     #$02
LA20E:  sta     $16,x
        lda     #$01
        sta     $0F,x
        jsr     LC22C
        lda     $0F,x
        bne     LA264
        rts

LA21C:  lda     $06CB
        bne     LA22A
        .byte   $AD
        tya
LA223:  .byte   $03
        cmp     #$01
        bne     LA233
        lda     #$2F
LA22A:  sta     $16,x
        lda     #$00
        sta     $1E,x
        jsr     LC272
LA233:  rts

LA234:  jmp     LC721

LA237:  iny
        iny
        lda     ($E9),y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        cmp     $075F
        bne     LA253
LA245:  dey
        lda     ($E9),y
        sta     $0750
        iny
        lda     ($E9),y
        and     #$1F
        sta     $0751
LA253:  jmp     LC261

        ldy     $0739
        lda     ($E9),y
        and     #$0F
        cmp     #$0E
        bne     LA264
        inc     $0739
LA264:  inc     $0739
        inc     $0739
        .byte   $A9
LA26B:  brk
        sta     $073B
        ldx     $08
        rts

        lda     $16,x
        cmp     #$15
        bcs     LA285
        tay
        lda     $CF,x
        adc     #$08
        sta     $CF,x
        lda     #$01
        sta     $03D8,x
        tya
LA285:  jsr     L8E04
        .byte   $14
        .byte   $C3
        .byte   $14
        .byte   $C3
        .byte   $14
        .byte   $C3
        bit     $C3
        inc     $C2,x
        rol     LF7C3
        .byte   $C2
        pha
        .byte   $C3
        adc     ($C3),y
        inc     $C2,x
        .byte   $7B
        .byte   $C3
        .byte   $7B
        .byte   $C3
        .byte   $FD
LA2A1:  .byte   $C2
LA2A2:  sta     LD7C7
        .byte   $C7
        bvc     LA26B
        .byte   $43
        .byte   $C3
        .byte   $8B
        .byte   $C3
        ldx     $C7
        inc     $C2,x
        ldx     $C7
        ldx     $C7
        ldx     $C7
        ldx     $C7
        ldx     LF6C7,y
        .byte   $C2
        inc     $C2,x
        .byte   $62
        cpy     $62
        cpy     $62
        cpy     $62
        cpy     $5F
        cpy     $F6
        .byte   $C2
        inc     $C2,x
        inc     $C2,x
        inc     $C2,x
        sbc     $C7
        clc
        iny
        eor     $C8
        .byte   $4B
        iny
LA2D8:  ora     ($C8),y
        ora     #$C8
        ora     ($C8),y
        eor     ($C8),y
        eor     $4FC8,x
        cmp     $65
        ldy     LB923,x
        inc     $C2,x
        inc     $C2,x
        inc     $C2,x
        inc     $C2,x
        inc     $C2,x
        ora     L87C3
        iny
        rts

        jsr     LC314
        jmp     LC34C

        lda     #$02
        sta     $B6,x
        sta     $CF,x
        lsr     a
        sta     $0796,x
        lsr     a
        sta     $1E,x
        jmp     LC34C

        lda     #$B8
        sta     $CF,x
        rts

        inc     $F1,x
        ldy     #$01
        lda     $076A
        bne     LA31C
        dey
LA31C:  lda     LC312,y
        sta     $58,x
        jmp     LC360

        jsr     LC314
        lda     #$01
        sta     $1E,x
        rts

        .byte   $80
        bvc     LA2D8
        brk
        sta     $03A2,x
        sta     $58,x
        ldy     $06CC
        lda     LC32C,y
        sta     $0796,x
        lda     #$0B
        jmp     LC362

        lda     #$00
        jmp     LC31F

        lda     #$00
        sta     $58,x
        lda     #$09
        bne     LA362
        ldy     #$30
        lda     $CF,x
        sta     $0401,x
        bpl     LA35B
        ldy     #$E0
LA35B:  tya
        adc     $CF,x
        sta     $58,x
        .byte   $A9
LA361:  .byte   $03
LA362:  sta     $049A,x
        lda     #$02
        sta     $46,x
        lda     #$00
        sta     $A0,x
        sta     L0434,x
        rts

        lda     #$02
        sta     $46,x
        lda     #$09
        sta     $049A,x
        rts

        jsr     LC34C
        lda     $07A7,x
        and     #$10
        sta     $58,x
        lda     $CF,x
        sta     L0434,x
        rts

        lda     $06CB
        bne     LA39B
        lda     #$00
        sta     $06D1
        jsr     LC343
        jmp     LC7DF

LA39B:  jmp     LC99E

        rol     $2C
        .byte   $32
        sec
        jsr     L2422
        rol     $13
        .byte   $14
        ora     $16,x
        lda     $078F
        bne     LA3EB
        cpx     #$05
        bcs     LA3EB
        lda     #$80
        sta     $078F
        ldy     #$04
LA3BA:  lda     $16,y
        cmp     #$11
        beq     LA3EC
        dey
        bpl     LA3BA
        inc     $06D1
        lda     $06D1
        cmp     #$07
        bcc     LA3EB
        ldx     #$04
LA3D0:  lda     $0F,x
        beq     LA3D9
        dex
        bpl     LA3D0
        bmi     LA3E9
LA3D9:  lda     #$00
        sta     $1E,x
        lda     #$11
        sta     $16,x
        jsr     LC390
        lda     #$20
        jsr     LC5DE
LA3E9:  ldx     $08
LA3EB:  rts

LA3EC:  lda     $CE
        cmp     #$2C
        bcc     LA3EB
        lda     $1E,y
        bne     LA3EB
        lda     $6E,y
        sta     $6E,x
        lda     $87,y
        sta     $87,x
        lda     #$01
        sta     $B6,x
        lda     $CF,y
        sec
        sbc     #$08
        sta     $CF,x
        lda     $07A7,x
        and     #$03
        tay
        ldx     #$02
LA415:  lda     LC39E,y
        sta     $01,x
        iny
        iny
        iny
        iny
        dex
        bpl     LA415
        ldx     $08
        jsr     LCF34
        ldy     $57
        cpy     #$0C
        bcs     LA43A
        tay
        lda     $07A8,x
        and     #$03
        beq     LA439
        tya
        eor     #$FF
        tay
        iny
LA439:  tya
LA43A:  jsr     LC34C
        ldy     #$02
        sta     $58,x
        cmp     #$00
        bmi     LA446
        dey
LA446:  sty     $46,x
        lda     #$FD
        sta     $A0,x
        lda     #$01
        sta     $0F,x
        lda     #$05
        sta     $1E,x
LA454:  rts

        bmi     LA49A
        bmi     LA49C
        bmi     LA45B
LA45B:  brk
        bpl     LA46E
        brk
        jsr     LC57B
        lda     #$00
        sta     $58,x
        lda     $16,x
        sec
        sbc     #$1B
        tay
        .byte   $B9
        .byte   $55
LA46E:  cpy     $9D
        dey
        .byte   $03
        lda     LC45A,y
        sta     $34,x
        lda     $CF,x
        clc
        adc     #$04
        sta     $CF,x
        lda     $87,x
        clc
        adc     #$04
        sta     $87,x
        lda     $6E,x
        adc     #$00
        sta     $6E,x
        jmp     LC7DF

        .byte   $80
        bmi     LA4D1
        .byte   $80
        bmi     LA4E4
        bvc     LA506
        jsr     L8040
        .byte   $A0
LA49A:  bvs     LA4DC
LA49C:  bcc     LA506
        ora     ($07),y
        php
        asl     a
        .byte   $23
        plp
        ora     $10,x
        .byte   $22
        bit     $1B1F
        bpl     LA50C
        jsr     LAD48
        .byte   $8F
        .byte   $07
        bne     LA454
        jsr     LC34C
        lda     $07A8,x
        and     #$03
        tay
        lda     LC4AA,y
        sta     $078F
        ldy     #$03
        lda     $06CC
        beq     LA4CA
        iny
LA4CA:  sty     L0000
        cpx     L0000
        bcs     LA454
        .byte   $BD
LA4D1:  .byte   $A7
        .byte   $07
        and     #$03
        sta     L0000
        sta     $01
        lda     #$FA
        .byte   $95
LA4DC:  ldy     #$A9
        brk
        ldy     $57
        beq     LA4EA
        .byte   $A9
LA4E4:  .byte   $04
        cpy     #$1D
        bcc     LA4EA
        asl     a
LA4EA:  pha
        clc
        adc     L0000
        sta     L0000
        lda     $07A8,x
        and     #$03
        beq     LA4FE
        lda     $07A9,x
        and     #$0F
        sta     L0000
LA4FE:  pla
        clc
        adc     $01
        tay
        lda     LC49E,y
LA506:  sta     $58,x
        lda     #$01
        sta     $46,x
LA50C:  lda     $57
        bne     LA522
        ldy     L0000
        tya
        and     #$02
        beq     LA522
        lda     $58,x
        eor     #$FF
        clc
        adc     #$01
        sta     $58,x
        inc     $46,x
LA522:  tya
        and     #$02
LA525:  beq     LA536
        lda     $86
        clc
        adc     LC48E,y
        sta     $87,x
        lda     $6D
        adc     #$00
        jmp     LC542

LA536:  .byte   $A5
LA537:  stx     $38
        sbc     LC48E,y
        sta     $87,x
        lda     $6D
        sbc     #$00
        sta     $6E,x
        lda     #$01
        sta     $0F,x
        sta     $B6,x
        lda     #$F8
        sta     $CF,x
        rts

        jsr     LC57B
        stx     $0368
        lda     #$00
        sta     $0363
        sta     $0369
        lda     $87,x
        sta     $0366
        lda     #$DF
        sta     $0790
        sta     $46,x
        lda     #$20
        sta     $0364
        sta     $078A,x
        lda     #$05
        sta     $0483
        lsr     a
        sta     $0365
        rts

        ldy     #$FF
LA57D:  iny
        lda     $0F,y
        bne     LA57D
        sty     $06CF
        txa
        ora     #$80
        sta     $0F,y
        lda     $6E,x
        sta     $6E,y
        lda     $87,x
        sta     $87,y
        lda     #$01
        sta     $0F,x
        sta     $B6,y
        lda     $CF,x
        sta     $CF,y
LA5A2:  rts

        bcc     LA525
        bvs     LA537
        .byte   $FF
        ora     ($AD,x)
        .byte   $8F
        .byte   $07
        bne     LA5A2
        sta     L0434,x
        lda     $FD
        ora     #$02
        sta     $FD
        ldy     $0368
        lda     $16,y
        cmp     #$2D
        beq     LA5F2
        jsr     LD1A1
        clc
        adc     #$20
        ldy     $06CC
        beq     LA5CF
        sec
        sbc     #$10
LA5CF:  sta     $078F
        lda     $07A7,x
        and     #$03
        sta     $0417,x
        tay
        lda     LC5A3,y
        sta     $CF,x
        lda     $071D
        clc
        adc     #$20
        sta     $87,x
        lda     $071B
        adc     #$00
        sta     $6E,x
        .byte   $4C
        .byte   $25
LA5F1:  .byte   $C6
LA5F2:  lda     $87,y
        sec
        sbc     #$0E
        sta     $87,x
        lda     $6E,y
        sta     $6E,x
LA5FF:  lda     $CF,y
        clc
        adc     #$08
        sta     $CF,x
        lda     $07A7,x
        and     #$03
        sta     $0417,x
        tay
        lda     LC5A3,y
        ldy     #$00
        cmp     $CF,x
        bcc     LA61A
        iny
LA61A:  lda     LC5A7,y
        sta     L0434,x
        lda     #$00
        sta     $06CB
        lda     #$08
        sta     $049A,x
        lda     #$01
        sta     $B6,x
        sta     $0F,x
        lsr     a
        sta     $0401,x
        sta     $1E,x
        rts

        brk
        bmi     LA69A
        rts

        brk
        jsr     L4060
        bvs     LA681
        rts

LA642:  bmi     LA5F1
        .byte   $8F
        .byte   $07
        bne     LA68F
        lda     #$20
        sta     $078F
        dec     $06D7
        ldy     #$06
LA652:  dey
        lda     $16,y
        cmp     #$31
        bne     LA652
        lda     $87,y
        sec
        sbc     #$30
        pha
        lda     $6E,y
        sbc     #$00
        sta     L0000
        lda     $06D7
        clc
        adc     $1E,y
        tay
        pla
        clc
        adc     LC637,y
        sta     $87,x
        lda     L0000
        adc     #$00
        sta     $6E,x
        lda     LC63D,y
        .byte   $95
LA681:  .byte   $CF
        lda     #$01
        sta     $B6,x
        sta     $0F,x
        lsr     a
        sta     $58,x
        lda     #$08
        sta     $A0,x
LA68F:  rts

        ora     ($02,x)
        .byte   $04
        php
        bpl     LA6B6
        rti

        .byte   $80
        rti

        .byte   $30
LA69A:  bcc     LA6EC
        jsr     LA060
        bvs     LA6AB
        .byte   $0B
        lda     $078F
        bne     LA716
        lda     $074E
        .byte   $D0
LA6AB:  .byte   $57
        cpx     #$03
        bcs     LA716
        ldy     #$00
        lda     $07A7,x
        .byte   $C9
LA6B6:  tax
        bcc     LA6BA
        iny
LA6BA:  lda     $075F
        cmp     #$01
        beq     LA6C2
        iny
LA6C2:  tya
        and     #$01
        tay
        lda     LC6A0,y
LA6C9:  sta     $16,x
        lda     $06DD
        cmp     #$FF
        bne     LA6D7
        lda     #$00
        sta     $06DD
LA6D7:  lda     $07A7,x
        and     #$07
        tay
        lda     LC690,y
        bit     $06DD
        beq     LA6EC
        iny
        tya
        and     #$07
        jmp     LC6DC

LA6EC:  ora     $06DD
        sta     $06DD
        lda     LC698,y
        jsr     LC5DE
        sta     $0417,x
        lda     #$20
        sta     $078F
        jmp     LC272

        ldy     #$FF
LA705:  iny
        cpy     #$05
        bcs     LA717
        lda     $0F,y
        beq     LA705
        lda     $16,y
        cmp     #$08
        bne     LA705
LA716:  rts

LA717:  lda     $FE
        ora     #$08
        sta     $FE
        lda     #$08
        bne     LA6C9
        ldy     #$00
LA723:  sec
        sbc     #$37
        pha
        cmp     #$04
        bcs     LA736
        pha
        ldy     #$06
        lda     $076A
        beq     LA735
        ldy     #$02
LA735:  pla
LA736:  sty     $01
        ldy     #$B0
        and     #$02
        beq     LA740
        ldy     #$70
LA740:  sty     L0000
        lda     $071B
        sta     $02
        lda     $071D
        sta     $03
        ldy     #$02
        pla
        lsr     a
        bcc     LA753
        iny
LA753:  sty     $06D3
LA756:  ldx     #$FF
LA758:  inx
        cpx     #$05
        bcs     LA78A
        lda     $0F,x
        bne     LA758
        lda     $01
        sta     $16,x
        lda     $02
        sta     $6E,x
        lda     $03
        sta     $87,x
        clc
        adc     #$18
        sta     $03
        lda     $02
        adc     #$00
        sta     $02
        lda     L0000
        sta     $CF,x
        lda     #$01
        sta     $B6,x
        sta     $0F,x
        jsr     LC272
        dec     $06D3
        bne     LA756
LA78A:  jmp     LC264

        lda     #$01
        sta     $58,x
LA791:  lsr     a
        sta     $1E,x
        sta     $A0,x
        lda     $CF,x
        sta     L0434,x
        sec
        sbc     #$18
        sta     $0417,x
        lda     #$09
        jmp     LC7E1

        lda     $16,x
        sta     $06CB
        sec
        sbc     #$12
        jsr     L8E04
        tax
        .byte   $C3
        lda     LAEC7,x
        cpy     $A9
        cmp     $43
        dec     $A2
        dec     L0060
        ldy     #$05
LA7C0:  lda     $16,y
        cmp     #$11
        bne     LA7CC
        lda     #$01
        sta     $1E,y
LA7CC:  dey
        bpl     LA7C0
        lda     #$00
        sta     $06CB
        sta     $0F,x
        rts

        lda     #$02
        sta     $46,x
        lda     #$F6
        sta     $58,x
        lda     #$03
        sta     $049A,x
        rts

        dec     $CF,x
        dec     $CF,x
        ldy     $06CC
        bne     LA7F3
        ldy     #$02
        jsr     LC877
LA7F3:  ldy     #$FF
        lda     $03A0
        sta     $1E,x
        bpl     LA7FE
        txa
        tay
LA7FE:  sty     $03A0
        lda     #$00
        .byte   $95
LA804:  lsr     $A8
        jsr     LC877
        lda     #$FF
        sta     $03A2,x
        jmp     LC82E

        lda     #$00
        sta     $58,x
        jmp     LC82E

        ldy     #$40
        lda     $CF,x
        bpl     LA825
        eor     #$FF
        clc
        adc     #$01
        ldy     #$C0
LA825:  sta     $0401,x
        tya
        clc
        adc     $CF,x
        sta     $58,x
        jsr     LC369
        lda     #$05
        ldy     $074E
        cpy     #$03
        beq     LA841
        ldy     $06CC
        bne     LA841
        lda     #$06
LA841:  sta     $049A,x
        rts

        jsr     LC851
        jmp     LC84E

        jsr     LC85D
        jmp     LC831

        lda     #$10
        sta     L0434,x
        .byte   $A9
LA857:  .byte   $FF
        sta     $A0,x
        jmp     LC866

        lda     #$F0
        sta     L0434,x
        lda     #$00
        sta     $A0,x
        ldy     #$01
        jsr     LC877
        lda     #$04
        sta     $049A,x
        rts

LA871:  php
        .byte   $0C
        sed
        brk
        brk
        .byte   $FF
        lda     $87,x
        clc
        adc     LC871,y
        sta     $87,x
        lda     $6E,x
        adc     LC874,y
        sta     $6E,x
        rts

        rts

        ldx     $08
        lda     #$00
        ldy     $16,x
        cpy     #$15
        bcc     LA895
        tya
        sbc     #$14
LA895:  jsr     L8E04
        inc     $C8
        .byte   $3B
        cmp     #$5D
        .byte   $D2
        .byte   $DC
        iny
        .byte   $DC
        iny
        .byte   $DC
        iny
        .byte   $DC
        iny
        eor     $4DC9
        cmp     #$4D
        cmp     #$4D
LA8AD:  cmp     #$4D
        cmp     #$4D
        cmp     #$4D
        cmp     #$4D
        cmp     #$DC
        iny
        .byte   $6B
        cmp     #$6B
        cmp     #$6B
        cmp     #$6B
        cmp     #$6B
        .byte   $C9
LA8C2:  .byte   $6B
        cmp     #$6B
        cmp     #$53
        cmp     #$53
        cmp     #$2D
        bne     LA857
        ldy     LB950,x
        .byte   $DC
        iny
        lda     ($D2,x)
        tsx
        clv
        .byte   $DC
        iny
        ldy     $B7
        cmp     L60C8,x
        jsr     LF1B6
        jsr     LF159
        jmp     LE884

        lda     #$00
        sta     $03C5,x
        jsr     LF1B6
        jsr     LF159
        .byte   $20
LA8F2:  sty     $E8
LA8F4:  jsr     LE24B
        jsr     LDFC9
        jsr     LDA35
        jsr     LD853
        .byte   $AC
        .byte   $47
LA902:  .byte   $07
        bne     LA908
        jsr     LC90B
LA908:  jmp     LD642

        lda     $16,x
        jsr     L8E04
        adc     L7DCA,x
        dex
        adc     L7DCA,x
        dex
        adc     LDECA,x
        cmp     #$7D
        dex
        .byte   $8F
        .byte   $CB
        .byte   $3C
        cpy     LC93A
        bvc     LA8F2
        bvc     LA8F4
        ldx     $C9,y
        sei
        .byte   $D3
        .byte   $FF
        dex
        ora     $CB
        .byte   $2B
        .byte   $CB
        beq     LA902
        adc     $3ACA,x
        cmp     #$DB
        dec     $2060
        .byte   $B3
        cmp     (L0020),y
        ldx     $F1,y
        jsr     LF159
        jsr     LE24B
        jsr     LD853
        jmp     LD642

        jsr     LCD42
        jmp     LD642

        jsr     LF1B6
        jsr     LF159
        jsr     LE254
        jsr     LDB7D
        jsr     LF159
        jsr     LED6D
        jsr     LD61D
        jmp     LD642

        jsr     LF1B6
        jsr     LF159
        jsr     LE27B
        jsr     LDB47
        lda     $0747
        bne     LA97F
        jsr     LC988
LA97F:  jsr     LF159
        jsr     LE5CF
        jmp     LD642

        lda     $16,x
        sec
        sbc     #$24
        jsr     L8E04
        .byte   $FA
        .byte   $D3
        .byte   $9B
        cmp     $17,x
        dec     $17,x
        dec     $CF,x
        cmp     $F9,x
        cmp     $05,x
        dec     $A9,x
        brk
        sta     $0F,x
        sta     $16,x
        sta     $1E,x
        sta     $0110,x
        sta     $0796,x
        sta     $0125,x
        sta     $03C5,x
        sta     $078A,x
        rts

        lda     $0796,x
        bne     LA9D1
        .byte   $20
        .byte   $FD
LA9BD:  .byte   $C2
        lda     $07A8,x
        ora     #$80
        sta     L0434,x
        and     #$0F
        ora     #$06
        sta     $0796,x
        lda     #$F9
        sta     $A0,x
LA9D1:  jmp     LBF97

        bmi     LA9F2
        brk
        inx
        brk
        clc
        php
        sed
        .byte   $0C
        .byte   $F4
        lda     $1E,x
        and     #$20
        beq     LA9E7
        jmp     LCAEB

LA9E7:  lda     $3C,x
        beq     LAA18
        dec     $3C,x
        lda     $03D1
        and     #$0C
LA9F2:  .byte   $D0
LA9F3:  ror     a
        lda     $03A2,x
        bne     LAA10
        ldy     $06CC
        lda     LC9D4,y
        sta     $03A2,x
        jsr     LBA99
        bcc     LAA10
        lda     $1E,x
        ora     #$08
        sta     $1E,x
        jmp     LCA5E

LAA10:  dec     $03A2,x
        jmp     LCA5E

        .byte   $20
        .byte   $37
LAA18:  lda     $1E,x
        and     #$07
        cmp     #$01
        beq     LAA5E
        lda     #$00
        .byte   $85
LAA23:  brk
        ldy     #$FA
        lda     $CF,x
        bmi     LAA3D
        ldy     #$FD
        cmp     #$70
        inc     L0000
        bcc     LAA3D
        dec     L0000
        lda     $07A8,x
        and     #$01
        bne     LAA3D
        ldy     #$FA
LAA3D:  sty     $A0,x
        lda     $1E,x
        ora     #$01
        sta     $1E,x
        .byte   $A5
LAA46:  brk
        and     $07A9,x
        tay
        lda     $06CC
        bne     LAA51
        tay
LAA51:  lda     LCA16,y
        sta     $078A,x
        lda     $07A8,x
        ora     #$C0
        sta     $3C,x
LAA5E:  ldy     #$FB
        .byte   $A5
LAA61:  ora     #$29
        rti

        bne     LAA68
        ldy     #$05
LAA68:  sty     $58,x
        ldy     #$01
        jsr     LE14B
        bmi     LAA7B
        iny
        lda     $0796,x
        bne     LAA7B
        lda     #$F6
        sta     $58,x
LAA7B:  sty     $46,x
        ldy     #$00
        lda     $1E,x
        and     #$40
        bne     LAA9E
        lda     $1E,x
        asl     a
        bcs     LAABA
        lda     $1E,x
        and     #$20
        bne     LAAEB
        lda     $1E,x
        and     #$07
        beq     LAABA
        cmp     #$05
        beq     LAA9E
        cmp     #$03
        bcs     LAACE
LAA9E:  jsr     LBF68
        ldy     #$00
        lda     $1E,x
        cmp     #$02
        beq     LAAB5
        .byte   $29
LAAAA:  rti

        beq     LAABA
        lda     $16,x
        cmp     #$2E
        beq     LAABA
        bne     LAAB8
LAAB5:  jmp     LBF07

LAAB8:  ldy     #$01
LAABA:  lda     $58,x
        pha
        bpl     LAAC1
        iny
        iny
LAAC1:  clc
        adc     LC9D6,y
        sta     $58,x
        jsr     LBF07
        pla
        sta     $58,x
        rts

LAACE:  lda     $0796,x
        bne     LAAF1
        sta     $1E,x
        lda     $09
        and     #$01
        tay
        iny
        sty     $46,x
LAADD:  dey
        lda     $076A
        beq     LAAE5
        iny
        iny
LAAE5:  lda     LC9DA,y
        sta     $58,x
        rts

LAAEB:  jsr     LBF68
        jmp     LBF07

LAAF1:  cmp     #$0B
        bne     LAAFE
        lda     $16,x
        cmp     #$06
        bne     LAAFE
        jsr     LC99E
LAAFE:  rts

        jsr     LBF97
        jmp     LBF07

        lda     $A0,x
        ora     L0434,x
        bne     LAB1F
        sta     $0417,x
        lda     $CF,x
        cmp     $0401,x
        bcs     LAB1F
        lda     $09
        and     #$07
        bne     LAB1E
        inc     $CF,x
LAB1E:  rts

LAB1F:  lda     $CF,x
        cmp     $58,x
LAB23:  bcc     LAB28
        jmp     LBF7A

LAB28:  jmp     LBF75

        jsr     LCB4B
        jsr     LCB6C
        ldy     #$01
        lda     $09
        and     #$03
        bne     LAB4A
        lda     $09
        and     #$40
        bne     LAB41
        ldy     #$FF
LAB41:  sty     L0000
        lda     $CF,x
        clc
        adc     L0000
        sta     $CF,x
LAB4A:  rts

        lda     #$13
        sta     $01
        lda     $09
        and     #$03
        bne     LAB62
        ldy     $58,x
        lda     $A0,x
        lsr     a
        bcs     LAB66
        cpy     $01
        beq     LAB63
        inc     $58,x
LAB62:  rts

LAB63:  inc     $A0,x
        rts

LAB66:  tya
        beq     LAB63
        dec     $58,x
        rts

        lda     $58,x
        pha
        ldy     #$01
        lda     $A0,x
        and     #$02
        bne     LAB82
        lda     $58,x
        eor     #$FF
        clc
        adc     #$01
        sta     $58,x
        ldy     #$02
LAB82:  sty     $46,x
        jsr     LBF07
        sta     L0000
        pla
        sta     $58,x
        rts

        .byte   $07
        ora     ($B5,x)
        asl     $2029,x
        bne     LABE2
        ldy     $06CC
        lda     $07A8,x
        and     LCB8D,y
        bne     LABB2
        txa
        lsr     a
        bcc     LABA8
        ldy     $45
        bcs     LABB0
LABA8:  ldy     #$02
        jsr     LE14B
        bpl     LABB0
        dey
LABB0:  sty     $46,x
LABB2:  jsr     LCBE5
        lda     $CF,x
        sec
        sbc     L0434,x
        cmp     #$20
        bcc     LABC1
        sta     $CF,x
LABC1:  ldy     $46,x
        dey
        bne     LABD4
        lda     $87,x
        clc
        adc     $58,x
        sta     $87,x
        lda     $6E,x
        adc     #$00
        sta     $6E,x
        rts

LABD4:  lda     $87,x
        sec
        sbc     $58,x
        sta     $87,x
        lda     $6E,x
        sbc     #$00
        sta     $6E,x
        rts

LABE2:  jmp     LBF91

        lda     $A0,x
        and     #$02
        bne     LAC22
        lda     $09
        and     #$07
        pha
        lda     $A0,x
        lsr     a
        bcs     LAC0A
        pla
        bne     LAC09
        lda     L0434,x
        clc
        adc     #$01
        sta     L0434,x
        sta     $58,x
        cmp     #$02
        bne     LAC09
        inc     $A0,x
LAC09:  rts

LAC0A:  pla
LAC0B:  bne     LAC21
        lda     L0434,x
        sec
        sbc     #$01
        sta     L0434,x
        sta     $58,x
        bne     LAC21
        inc     $A0,x
        lda     #$02
        sta     $0796,x
LAC21:  rts

LAC22:  lda     $0796,x
        beq     LAC2F
LAC27:  lda     $09
        lsr     a
        bcs     LAC2E
        inc     $CF,x
LAC2E:  rts

LAC2F:  lda     $CF,x
        adc     #$0C
        cmp     $CE
        bcc     LAC27
        lda     #$00
        sta     $A0,x
        rts

        lda     $1E,x
        and     #$20
        beq     LAC45
        jmp     LBF97

LAC45:  lda     #$E8
        sta     $58,x
        jmp     LBF07

        rti

        .byte   $80
        .byte   $04
        .byte   $04
        lda     $1E,x
        and     #$20
        beq     LAC59
        jmp     LBF91

LAC59:  sta     $03
        lda     $16,x
        sec
        sbc     #$0A
        tay
        lda     LCC4C,y
        sta     $02
        lda     $0401,x
        sec
        sbc     $02
        sta     $0401,x
        lda     $87,x
        sbc     #$00
        sta     $87,x
        lda     $6E,x
        sbc     #$00
        sta     $6E,x
        lda     #$20
        sta     $02
        cpx     #$02
        bcc     LACCC
        lda     $58,x
        cmp     #$10
        bcc     LAC9F
        lda     $0417,x
        clc
        adc     $02
        sta     $0417,x
        lda     $CF,x
        adc     $03
        sta     $CF,x
        lda     $B6,x
        adc     #$00
        jmp     LCCB2

LAC9F:  lda     $0417,x
        sec
        sbc     $02
        sta     $0417,x
        lda     $CF,x
        sbc     $03
LACAC:  sta     $CF,x
        lda     $B6,x
        sbc     #$00
        sta     $B6,x
        ldy     #$00
        lda     $CF,x
        sec
        sbc     L0434,x
        bpl     LACC5
        ldy     #$10
        eor     #$FF
        clc
        adc     #$01
LACC5:  cmp     #$0F
        bcc     LACCC
        tya
        sta     $58,x
LACCC:  rts

        brk
        ora     ($03,x)
        .byte   $04
        ora     L0006
        .byte   $07
        .byte   $07
        php
        brk
        .byte   $03
        asl     $09
        .byte   $0B
        ora     $0F0E
        bpl     LACE0
LACE0:  .byte   $04
LACE1:  ora     #$0D
        bpl     LACF8
        asl     $17,x
        clc
        brk
        asl     $0C
        .byte   $12
        asl     $1A,x
        ora     $201F,x
LACF1:  brk
        .byte   $07
        .byte   $0F
        asl     $1C,x
        and     ($25,x)
LACF8:  .byte   $27
        plp
        brk
        ora     #$12
        .byte   $1B
        and     ($27,x)
        bit     $302F
        brk
        .byte   $0B
        ora     $1F,x
        .byte   $27
        rol     $3733
        sec
        brk
        .byte   $0C
        clc
        .byte   $24
LAD10:  and     $3B35
        rol     a:$40,x
        asl     $281B
        .byte   $32
        .byte   $3B
        .byte   $42
        lsr     $48
        brk
        .byte   $0F
        .byte   $1F
        and     $4238
        lsr     a
        lsr     a:$50
        ora     ($22),y
        and     ($3E),y
        eor     #$51
        lsr     $58,x
        ora     ($03,x)
        .byte   $02
        brk
        brk
        ora     #$12
        .byte   $1B
        bit     $2D
        rol     $3F,x
        pha
        eor     ($5A),y
        .byte   $63
        .byte   $0C
        clc
        jsr     LF1B6
        lda     $03D1
LAD48:  and     #$08
        bne     LADC0
        lda     $0747
        bne     LAD5B
        lda     $0388,x
        jsr     LD3D8
        and     #$1F
        sta     $A0,x
LAD5B:  lda     $A0,x
        ldy     $16,x
        cpy     #$1F
        bcc     LAD70
        cmp     #$08
        beq     LAD6B
        cmp     #$18
        bne     LAD70
LAD6B:  clc
        adc     #$01
        sta     $A0,x
LAD70:  sta     $EF
        jsr     LF159
        jsr     LCE94
        ldy     L06E5,x
        lda     $03B9
        sta     $0200,y
        sta     $07
        lda     $03AE
        sta     $0203,y
        sta     L0006
        lda     #$01
        sta     L0000
        jsr     LCE0E
        ldy     #$05
        lda     $16,x
        cmp     #$1F
        bcc     LAD9C
        ldy     #$0B
LAD9C:  sty     $ED
        lda     #$00
        sta     L0000
LADA2:  lda     $EF
        jsr     LCE94
        jsr     LCDC1
        lda     L0000
        cmp     #$04
        bne     LADB8
        .byte   $AC
        .byte   $CF
LADB2:  asl     $B9
        sbc     L0006
        sta     L0006
LADB8:  inc     L0000
        lda     L0000
        cmp     $ED
        bcc     LADA2
LADC0:  rts

        lda     $03
        sta     $05
        ldy     L0006
        lda     $01
        lsr     $05
        bcs     LADD1
        eor     #$FF
        adc     #$01
LADD1:  clc
        adc     $03AE
        sta     $0203,y
        sta     L0006
        cmp     $03AE
        bcs     LADE8
        lda     $03AE
        sec
        sbc     L0006
        jmp     LCDEC

LADE8:  sec
        sbc     $03AE
        cmp     #$59
        bcc     LADF4
        lda     #$F8
        bne     LAE09
LADF4:  lda     $03B9
        cmp     #$F8
        beq     LAE09
        lda     $02
        lsr     $05
LADFF:  bcs     LAE05
        eor     #$FF
        adc     #$01
LAE05:  clc
        .byte   $6D
LAE07:  .byte   $B9
        .byte   $03
LAE09:  .byte   $99
LAE0A:  brk
        .byte   $02
        sta     $07
        jsr     LECF4
        tya
        pha
        lda     $079F
        ora     $0747
        bne     LAE8B
        sta     $05
        ldy     $B5
        dey
        bne     LAE8B
        ldy     $CE
        lda     $0754
        bne     LAE2E
        lda     $0714
        beq     LAE37
LAE2E:  inc     $05
        inc     $05
        tya
        clc
        adc     #$18
        tay
LAE37:  tya
        sec
        sbc     $07
        bpl     LAE42
        eor     #$FF
        clc
        adc     #$01
LAE42:  cmp     #$08
        bcs     LAE62
        lda     L0006
        cmp     #$F0
        bcs     LAE62
        lda     $0207
        clc
        adc     #$04
        sta     $04
        sec
        sbc     L0006
        bpl     LAE5E
        eor     #$FF
        clc
        adc     #$01
LAE5E:  cmp     #$08
        bcc     LAE75
LAE62:  lda     $05
        cmp     #$02
        beq     LAE8B
        ldy     $05
        lda     $CE
        clc
        adc     LCD40,y
        inc     $05
        jmp     LCE38

LAE75:  ldx     #$01
        lda     $04
        cmp     L0006
        bcs     LAE7E
        inx
LAE7E:  stx     $46
        ldx     #$00
        lda     L0000
        pha
        jsr     LD92D
LAE88:  pla
        sta     L0000
LAE8B:  pla
        clc
        adc     #$04
        sta     L0006
        ldx     $08
        rts

        pha
        and     #$0F
        cmp     #$09
        bcc     LAEA0
        eor     #$0F
        clc
        adc     #$01
LAEA0:  sta     $01
        ldy     L0000
        lda     LCD34,y
        clc
        adc     $01
        tay
        .byte   $B9
        .byte   $CD
LAEAD:  .byte   $CC
LAEAE:  sta     $01
        pla
        pha
        clc
        adc     #$08
        and     #$0F
        cmp     #$09
        bcc     LAEC0
        eor     #$0F
        clc
        adc     #$01
LAEC0:  .byte   $85
LAEC1:  .byte   $02
LAEC2:  ldy     L0000
        lda     LCD34,y
LAEC7:  clc
        adc     $02
        tay
        lda     LCCCD,y
        sta     $02
        pla
        lsr     a
        lsr     a
        lsr     a
        tay
        lda     LCD30,y
        sta     $03
        rts

        ldy     #$20
        lda     $1E,x
        and     #$20
        bne     LAEE8
        jsr     LBF07
        ldy     #$17
LAEE8:  lda     #$05
LAEEA:  jmp     LBF9B

        ora     L0030,x
        rti

        lda     $1E,x
        and     #$20
        beq     LAEF9
        jmp     LBF68

LAEF9:  lda     $1E,x
        beq     LAF08
        lda     #$00
        sta     $A0,x
        sta     $06CB
        lda     #$10
        bne     LAF1B
LAF08:  lda     #$12
        sta     $06CB
        ldy     #$02
LAF0F:  lda     LCEED,y
        sta     $01,y
        dey
        bpl     LAF0F
        jsr     LCF34
LAF1B:  sta     $58,x
        ldy     #$01
        lda     $A0,x
        and     #$01
        bne     LAF2F
        lda     $58,x
        eor     #$FF
        clc
        adc     #$01
        sta     $58,x
        iny
LAF2F:  sty     $46,x
        jmp     LBF07

        ldy     #$00
        jsr     LE14B
        bpl     LAF45
LAF3B:  iny
        lda     L0000
        eor     #$FF
        clc
        adc     #$01
        sta     L0000
LAF45:  lda     L0000
        cmp     #$3C
        bcc     LAF67
        lda     #$3C
        sta     L0000
        lda     $16,x
        cmp     #$11
        bne     LAF67
        tya
        cmp     $A0,x
        beq     LAF67
        lda     $A0,x
        beq     LAF64
        dec     $58,x
        lda     $58,x
        bne     LAFA4
LAF64:  tya
        sta     $A0,x
LAF67:  lda     L0000
        and     #$3C
        lsr     a
        lsr     a
        sta     L0000
LAF6F:  ldy     #$00
        lda     $57
        beq     LAF99
        lda     $0775
        beq     LAF99
        iny
        lda     $57
        cmp     #$1D
        bcc     LAF89
        lda     $0775
        cmp     #$02
        bcc     LAF89
        iny
LAF89:  lda     $16,x
        cmp     #$12
        bne     LAF93
        lda     $57
        bne     LAF99
LAF93:  lda     $A0,x
        bne     LAF99
        ldy     #$00
LAF99:  lda     $01,y
        ldy     L0000
LAF9E:  sec
        sbc     #$01
        dey
        bpl     LAF9E
LAFA4:  rts

        .byte   $1A
        cli
        tya
        stx     $94,y
        .byte   $92
        bcc     LAF3B
        sty     L888A
        stx     $84
        .byte   $82
        .byte   $80
        ldx     $0368
        lda     $16,x
        cmp     #$2D
        bne     LAFCD
        stx     $08
        lda     $1E,x
LAFC1:  beq     LAFDD
        .byte   $29
LAFC4:  rti

        beq     LAFCD
        lda     $CF,x
        cmp     #$E0
        bcc     LAFD7
LAFCD:  lda     #$80
        sta     $FC
        inc     $0772
        jmp     LD039

LAFD7:  jsr     LBF91
        jmp     LD143

LAFDD:  dec     $0364
        bne     LB026
        lda     #$04
        sta     $0364
        lda     $0363
        eor     #$01
        .byte   $8D
        .byte   $63
LAFEE:  .byte   $03
        lda     #$22
        sta     $05
        ldy     $0369
        lda     LCFA5,y
        sta     $04
        ldy     $0300
        iny
        .byte   $A2
LB000:  .byte   $0C
        jsr     L8ACD
        ldx     $08
        jsr     L8A8F
        lda     #$08
        sta     $FE
        lda     #$01
        sta     $FD
        inc     $0369
        lda     $0369
        cmp     #$0F
        bne     LB026
        jsr     LC369
        lda     #$40
        sta     $1E,x
        lda     #$80
        sta     $FE
LB026:  .byte   $4C
LB027:  .byte   $43
        cmp     ($21),y
        eor     ($11,x)
        and     ($B5),y
        asl     $2029,x
        beq     LB047
        .byte   $B5
LB034:  .byte   $CF
        .byte   $C9
LB036:  cpx     #$90
LB038:  .byte   $9E
        ldx     #$04
LB03B:  jsr     LC99E
        dex
        bpl     LB03B
        sta     $06CB
        ldx     $08
        rts

LB047:  lda     #$00
        sta     $06CB
        lda     $0747
        beq     LB054
        jmp     LD101

LB054:  lda     $0363
        bpl     LB05C
        jmp     LD0D7

LB05C:  dec     $0364
        bne     LB06E
        lda     #$20
        sta     $0364
        lda     $0363
        eor     #$01
        sta     $0363
LB06E:  lda     $09
        and     #$0F
        bne     LB078
        lda     #$02
        sta     $46,x
LB078:  lda     $078A,x
        beq     LB099
        jsr     LE14B
        bpl     LB099
        lda     #$01
        sta     $46,x
        lda     #$02
        sta     $0365
        lda     #$20
        sta     $078A,x
        sta     $0790
        lda     $87,x
        cmp     #$C8
        bcs     LB0D7
LB099:  lda     $09
        and     #$03
        bne     LB0D7
        lda     $87,x
        cmp     $0366
        bne     LB0B2
        lda     $07A7,x
        and     #$03
        tay
        lda     LD029,y
LB0AF:  sta     $06DC
LB0B2:  lda     $87,x
        clc
        adc     $0365
        sta     $87,x
        ldy     $46,x
        cpy     #$01
        beq     LB0D7
        ldy     #$FF
        sec
        sbc     $0366
        bpl     LB0CF
        eor     #$FF
        clc
        adc     #$01
        ldy     #$01
LB0CF:  cmp     $06DC
        bcc     LB0D7
        sty     $0365
LB0D7:  lda     $078A,x
        bne     LB104
        jsr     LBF91
        lda     $075F
        cmp     #$05
        bcc     LB0EF
LB0E6:  lda     $09
        .byte   $29
LB0E9:  .byte   $03
        bne     LB0EF
        jsr     LBA99
LB0EF:  lda     $CF,x
        cmp     #$80
        bcc     LB111
        lda     $07A7,x
        and     #$03
        tay
        lda     LD029,y
        sta     $078A,x
        jmp     LD111

LB104:  cmp     #$01
        bne     LB111
        dec     $CF,x
        jsr     LC369
        lda     #$FE
        sta     $A0,x
LB111:  lda     $075F
        cmp     #$07
        beq     LB11C
        cmp     #$05
        bcs     LB143
LB11C:  lda     $0790
        bne     LB143
        lda     #$20
        sta     $0790
        lda     $0363
        eor     #$80
        sta     $0363
        bmi     LB111
        jsr     LD1A1
        ldy     $06CC
        beq     LB13B
        sec
        sbc     #$10
LB13B:  sta     $0790
        lda     #$15
        sta     $06CB
LB143:  jsr     LD184
        ldy     #$10
        lda     $46,x
        lsr     a
        bcc     LB14F
        ldy     #$F0
LB14F:  tya
        clc
        adc     $87,x
        ldy     $06CF
        sta     $87,y
        lda     $CF,x
        clc
        adc     #$08
        sta     $CF,y
        lda     $1E,x
        sta     $1E,y
        lda     $46,x
        sta     $46,y
        lda     $08
        pha
        ldx     $06CF
        stx     $08
        lda     #$2D
        sta     $16,x
        jsr     LD184
        pla
        sta     $08
        tax
        lda     #$00
        sta     $036A
LB183:  rts

        inc     $036A
        jsr     LC8DD
        lda     $1E,x
        bne     LB183
        lda     #$0A
        sta     $049A,x
        jsr     LE24B
        jmp     LD853

        .byte   $80
        bmi     LB1CC
        .byte   $80
        .byte   $80
        .byte   $80
        bmi     LB1F1
        ldy     $0367
        inc     $0367
        lda     $0367
        and     #$07
        sta     $0367
        lda     LD199,y
LB1B2:  rts

        lda     $0747
        bne     LB1E8
        lda     #$70
        ldy     $06CC
        beq     LB1C1
        lda     #$90
LB1C1:  sta     L0000
        lda     $0401,x
        sec
        sbc     L0000
        sta     $0401,x
LB1CC:  lda     $87,x
        sbc     #$01
        sta     $87,x
        lda     $6E,x
        sbc     #$00
        sta     $6E,x
        ldy     $0417,x
        lda     $CF,x
LB1DD:  cmp     LC5A3,y
        beq     LB1E8
        clc
        adc     L0434,x
        sta     $CF,x
LB1E8:  jsr     LF159
        lda     $1E,x
        bne     LB1B2
        lda     #$51
LB1F1:  sta     L0000
        ldy     #$02
        lda     $09
        and     #$02
        beq     LB1FD
        ldy     #$82
LB1FD:  sty     $01
        .byte   $BC
LB200:  sbc     L0006
        ldx     #$00
LB204:  lda     $03B9
        sta     $0200,y
        .byte   $A5
LB20B:  brk
        sta     $0201,y
        inc     L0000
        lda     $01
LB213:  sta     $0202,y
        lda     $03AE
        sta     $0203,y
        clc
        adc     #$08
LB21F:  sta     $03AE
        iny
        iny
        iny
        iny
        inx
LB227:  cpx     #$03
        bcc     LB204
        ldx     $08
        jsr     LF1B6
        ldy     L06E5,x
        lda     $03D1
        lsr     a
        pha
        bcc     LB23F
        lda     #$F8
        sta     $020C,y
LB23F:  pla
        lsr     a
        pha
        bcc     LB249
        lda     #$F8
        sta     $0208,y
LB249:  pla
        lsr     a
        pha
        bcc     LB253
        lda     #$F8
        sta     $0204,y
LB253:  pla
        lsr     a
LB255:  bcc     LB25C
        lda     #$F8
        sta     $0200,y
LB25C:  rts

        dec     $A0,x
        bne     LB26D
        lda     #$08
        sta     $A0,x
        inc     $58,x
        lda     $58,x
        cmp     #$03
        bcs     LB285
LB26D:  jsr     LF159
        lda     $03B9
LB273:  sta     $03BA
        lda     $03AE
        sta     $03AF
        ldy     L06E5,x
        lda     $58,x
        jsr     LED1E
        rts

LB285:  lda     #$00
        .byte   $95
LB288:  .byte   $0F
        lda     #$08
        sta     $FE
        lda     #$05
        sta     $0138
        jmp     LD2FE

        brk
        brk
        php
        php
        brk
LB29A:  php
        brk
        php
        .byte   $54
        eor     $56,x
        .byte   $57
        lda     #$00
        sta     $06CB
        lda     $0746
        cmp     #$05
        bcs     LB2D9
        jsr     L8E04
        cmp     LBAD2,y
        .byte   $D2
        .byte   $DA
        .byte   $D2
        asl     $D3,x
        ror     a
        .byte   $D3
        ldy     #$05
        lda     $07FA
        cmp     #$01
        .byte   $F0
LB2C2:  asl     $03A0
        cmp     #$03
        beq     LB2D1
        ldy     #$00
        cmp     #$06
        beq     LB2D1
        lda     #$FF
LB2D1:  sta     $06D7
        sty     $1E,x
LB2D6:  inc     $0746
LB2D9:  rts

        lda     $07F8
        ora     $07F9
        ora     $07FA
        beq     LB2D6
        lda     $09
        and     #$04
        beq     LB2EF
        lda     #$10
        sta     $FE
LB2EF:  ldy     #$23
        lda     #$FF
        sta     $0139
        jsr     L8F5F
        lda     #$05
        sta     $0139
        ldy     #$0B
        .byte   $AD
        .byte   $53
LB302:  .byte   $07
        beq     LB307
        ldy     #$11
LB307:  .byte   $20
LB308:  .byte   $5F
        .byte   $8F
        lda     $0753
        asl     a
        asl     a
        asl     a
        asl     a
        ora     #$04
        .byte   $4C
        .byte   $3B
LB315:  ldy     LCFB5,x
        cmp     #$72
        bcc     LB321
        dec     $CF,x
        jmp     LD32D

LB321:  lda     $06D7
        beq     LB35E
        bmi     LB35E
        lda     #$16
        sta     $06CB
        jsr     LF159
        ldy     L06E5,x
        ldx     #$03
LB335:  lda     $03B9
        clc
        adc     LD295,x
        sta     $0200,y
        lda     LD29D,x
        sta     $0201,y
        lda     #$22
        sta     $0202,y
        lda     $03AE
        clc
        adc     LD299,x
        sta     $0203,y
        iny
        iny
        iny
        iny
        dex
        bpl     LB335
        ldx     $08
        rts

LB35E:  jsr     LD32D
        lda     #$06
        sta     $0796,x
LB366:  inc     $0746
        rts

        jsr     LD32D
        lda     $0796,x
        bne     LB377
        lda     $07B1
        beq     LB366
LB377:  rts

        lda     $1E,x
        bne     LB3D2
        lda     $078A,x
        .byte   $D0
LB380:  eor     ($B5),y
        ldy     #$D0
        .byte   $23
        lda     $58,x
        bmi     LB39D
        jsr     LE14B
        bpl     LB397
        lda     L0000
        .byte   $49
LB391:  .byte   $FF
        clc
        adc     #$01
        sta     L0000
LB397:  lda     L0000
        cmp     #$21
        bcc     LB3D2
LB39D:  lda     $58,x
        eor     #$FF
        clc
        adc     #$01
        sta     $58,x
        inc     $A0,x
        .byte   $BD
        .byte   $34
LB3AA:  .byte   $04
        .byte   $B4
LB3AC:  cli
        bpl     LB3B2
        lda     $0417,x
LB3B2:  sta     L0000
        lda     $09
        lsr     a
        bcc     LB3D2
        lda     $0747
        bne     LB3D2
        lda     $CF,x
        clc
        adc     $58,x
        sta     $CF,x
        cmp     L0000
LB3C7:  bne     LB3D2
        lda     #$00
LB3CB:  sta     $A0,x
        lda     #$40
        sta     $078A,x
LB3D2:  lda     #$20
        sta     $03C5,x
        rts

        sta     $07
        lda     $34,x
        bne     LB3EC
        ldy     #$18
        lda     $58,x
        clc
        adc     $07
        sta     $58,x
        lda     $A0,x
        adc     #$00
        rts

LB3EC:  ldy     #$08
        lda     $58,x
        sec
        sbc     $07
        sta     $58,x
        lda     $A0,x
        sbc     #$00
        rts

        lda     $B6,x
        cmp     #$03
        bne     LB403
        .byte   $4C
LB401:  .byte   $9E
        .byte   $C9
LB403:  lda     $1E,x
        bpl     LB408
        rts

LB408:  tay
        lda     $03A2,x
        sta     L0000
        lda     $46,x
        beq     LB415
        jmp     LD583

LB415:  lda     #$2D
        cmp     $CF,x
        bcc     LB42A
        cpy     L0000
        beq     LB427
        clc
        adc     #$02
        sta     $CF,x
LB424:  jmp     LD579

LB427:  jmp     LD560

LB42A:  .byte   $D9
LB42B:  .byte   $CF
        brk
        bcc     LB43C
        cpx     L0000
        .byte   $F0
LB432:  .byte   $F4
        clc
        adc     #$02
        sta     $CF,y
LB439:  jmp     LD579

LB43C:  lda     $CF,x
        pha
        .byte   $BD
LB440:  ldx     #$03
        bpl     LB45C
        lda     L0434,x
LB447:  clc
        adc     #$05
LB44A:  sta     L0000
        .byte   $B5
LB44D:  ldy     #$69
        brk
LB450:  bmi     LB46C
        bne     LB460
        lda     L0000
        cmp     #$0B
        bcc     LB466
        bcs     LB460
LB45C:  cmp     $08
        beq     LB46C
LB460:  jsr     LBFBC
        jmp     LD46F

LB466:  jsr     LD579
        jmp     LD46F

LB46C:  jsr     LBFB9
        ldy     $1E,x
        pla
        sec
        sbc     $CF,x
        clc
        adc     $CF,y
        sta     $CF,y
        lda     $03A2,x
        bmi     LB485
        tax
        jsr     LDC23
LB485:  ldy     $08
        lda     $A0,y
        ora     L0434,y
        beq     LB506
        ldx     $0300
        cpx     #$20
        bcs     LB506
        lda     $A0,y
        pha
        pha
        jsr     LD509
        lda     $01
        sta     $0301,x
        lda     L0000
        sta     $0302,x
        lda     #$02
        sta     $0303,x
        lda     $A0,y
        bmi     LB4BF
        lda     #$A2
        sta     L0304,x
        lda     #$A3
        sta     $0305,x
        jmp     LD4C7

LB4BF:  lda     #$24
        sta     L0304,x
        sta     $0305,x
        lda     $1E,y
        tay
        pla
        eor     #$FF
        jsr     LD509
        lda     $01
        sta     $0306,x
        lda     L0000
        sta     $0307,x
        lda     #$02
        sta     $0308,x
        pla
        bpl     LB4F0
        lda     #$A2
        sta     $0309,x
        lda     #$A3
        sta     $030A,x
        jmp     LD4F8

LB4F0:  lda     #$24
        sta     $0309,x
        sta     $030A,x
        lda     #$00
        sta     $030B,x
        .byte   $AD
LB4FE:  brk
        .byte   $03
        clc
        adc     #$0A
        sta     $0300
LB506:  ldx     $08
        rts

        pha
        lda     $87,y
        clc
        adc     #$08
        ldx     $06CC
        bne     LB518
        clc
        adc     #$10
LB518:  pha
        lda     $6E,y
LB51C:  adc     #$00
        sta     $02
        pla
        and     #$F0
        lsr     a
        lsr     a
LB525:  lsr     a
        sta     L0000
        ldx     $CF,y
        pla
        bpl     LB532
        txa
        clc
        adc     #$08
        tax
LB532:  txa
        ldx     $0300
        asl     a
        rol     a
        pha
        rol     a
        and     #$03
        ora     #$20
        sta     $01
        lda     $02
        and     #$01
        asl     a
        asl     a
        ora     $01
        sta     $01
        pla
        and     #$E0
        clc
        adc     L0000
        sta     L0000
        lda     $CF,y
        cmp     #$E8
        bcc     LB55F
        lda     L0000
        and     #$BF
        .byte   $85
LB55E:  brk
LB55F:  rts

        tya
        tax
        jsr     LF1B6
        lda     #$06
        jsr     LDA13
        lda     $03AD
        sta     $0117,x
        lda     $CE
        sta     $011E,x
        lda     #$01
        sta     $46,x
        jsr     LC369
        sta     $A0,y
        sta     L0434,y
        rts

        tya
        pha
        jsr     LBF70
        pla
        tax
        .byte   $20
        .byte   $70
LB58C:  .byte   $BF
        ldx     $08
LB58F:  .byte   $BD
LB590:  ldx     #$03
        bmi     LB598
        tax
        jsr     LDC23
LB598:  ldx     $08
        rts

        lda     $A0,x
        ora     L0434,x
        bne     LB5B7
        sta     $0417,x
LB5A5:  lda     $CF,x
        cmp     $0401,x
        bcs     LB5B7
        lda     $09
        and     #$07
        bne     LB5B4
        inc     $CF,x
LB5B4:  jmp     LD5C6

LB5B7:  lda     $CF,x
        cmp     $58,x
        bcc     LB5C3
        jsr     LBFBC
        jmp     LD5C6

LB5C3:  .byte   $20
        .byte   $B9
LB5C5:  .byte   $BF
        lda     $03A2,x
        bmi     LB5CE
        .byte   $20
LB5CC:  .byte   $23
        .byte   $DC
LB5CE:  rts

        lda     #$0E
        jsr     LCB4D
        jsr     LCB6C
        lda     $03A2,x
        bmi     LB5F8
        lda     $86
        clc
        adc     L0000
        sta     $86
        lda     $6D
        ldy     L0000
        bmi     LB5EE
        adc     #$00
        jmp     LD5F0

LB5EE:  sbc     #$00
        sta     $6D
        sty     $03A1
        jsr     LDC23
LB5F8:  rts

        lda     $03A2,x
        bmi     LB604
        .byte   $20
        .byte   $8D
LB600:  .byte   $BF
        jsr     LDC23
LB604:  rts

        jsr     LBF07
        sta     L0000
        lda     $03A2,x
        bmi     LB616
        lda     #$13
        sta     $58,x
        jsr     LD5DC
LB616:  rts

        jsr     LD623
        jmp     LD5C6

        jsr     LD623
LB620:  jmp     LD639

        lda     $0747
        bne     LB641
        lda     $0417,x
        clc
        adc     L0434,x
        sta     $0417,x
        lda     $CF,x
        adc     $A0,x
        sta     $CF,x
        rts

        lda     $03A2,x
        beq     LB641
        jsr     LDC1B
LB641:  rts

        lda     $16,x
        cmp     #$14
        beq     LB69D
        lda     $071C
        ldy     $16,x
        cpy     #$05
        beq     LB655
        cpy     #$0D
        bne     LB657
LB655:  adc     #$38
LB657:  sbc     #$48
        sta     $01
        lda     $071A
        sbc     #$00
        sta     L0000
        lda     $071D
        adc     #$48
        sta     $03
        lda     $071B
        adc     #$00
        sta     $02
        lda     $87,x
        cmp     $01
        lda     $6E,x
        sbc     L0000
        bmi     LB69A
        lda     $87,x
        cmp     $03
        lda     $6E,x
        sbc     $02
        bmi     LB69D
        lda     $1E,x
        .byte   $C9
LB687:  ora     $F0
LB689:  .byte   $13
        cpy     #$0D
        beq     LB69D
        cpy     #$30
        beq     LB69D
        cpy     #$31
        beq     LB69D
        cpy     #$32
        beq     LB69D
LB69A:  jsr     LC99E
LB69D:  rts

        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        lda     $24,x
        beq     LB733
        asl     a
        bcs     LB733
        lda     $09
        lsr     a
        bcs     LB733
        txa
        asl     a
        asl     a
        clc
        adc     #$1C
        tay
        ldx     #$04
LB6EE:  stx     $01
        tya
        pha
        lda     $1E,x
        and     #$20
        bne     LB72C
        .byte   $B5
LB6F9:  .byte   $0F
        beq     LB72C
        lda     $16,x
        cmp     #$24
        bcc     LB706
        cmp     #$2B
        bcc     LB72C
LB706:  cmp     #$06
        bne     LB710
        .byte   $B5
LB70B:  asl     $02C9,x
        bcs     LB72C
LB710:  lda     $03D8,x
        bne     LB72C
        txa
        asl     a
        asl     a
        clc
        adc     #$04
        tax
        jsr     LE32F
        ldx     $08
        bcc     LB72C
        lda     #$80
        sta     $24,x
        ldx     $01
        jsr     LD73E
LB72C:  pla
        tay
        ldx     $01
        dex
        bpl     LB6EE
LB733:  ldx     $08
        rts

        asl     L0000
        .byte   $02
        .byte   $12
        ora     ($07),y
        ora     $2D
        jsr     LF159
        ldx     $01
        lda     $0F,x
        bpl     LB752
        and     #$0F
LB749:  tax
        .byte   $B5
LB74B:  asl     $C9,x
LB74D:  .byte   $2D
        .byte   $F0
LB74F:  .byte   $0C
        ldx     $01
LB752:  lda     $16,x
        cmp     #$02
        beq     LB7C3
        cmp     #$2D
        .byte   $D0
LB75B:  and     L83CE
        .byte   $04
        bne     LB7C3
        jsr     LC369
        sta     $58,x
        sta     $06CB
        lda     #$FE
        sta     $A0,x
        ldy     $075F
        lda     LD736,y
        sta     $16,x
        lda     #$20
        cpy     #$03
        bcs     LB77D
        ora     #$03
LB77D:  sta     $1E,x
        lda     #$80
        sta     $FE
        ldx     $01
        lda     #$09
        bne     LB7BC
        cmp     #$08
        beq     LB7C3
        cmp     #$0C
        beq     LB7C3
        cmp     #$15
        bcs     LB7C3
        lda     $16,x
        cmp     #$0D
        bne     LB7A1
        lda     $CF,x
        adc     #$18
        sta     $CF,x
LB7A1:  jsr     LE023
        lda     $1E,x
        and     #$1F
        ora     #$20
        sta     $1E,x
LB7AC:  lda     #$02
        ldy     $16,x
        cpy     #$05
        bne     LB7B6
        lda     #$06
LB7B6:  cpy     #$06
LB7B8:  bne     LB7BC
        lda     #$01
LB7BC:  jsr     LDA13
        lda     #$08
        sta     $FF
LB7C3:  rts

        lda     $09
        lsr     a
        bcc     LB7FF
        lda     $0747
        ora     $03D6
        bne     LB7FF
        txa
        asl     a
        asl     a
        clc
        adc     #$24
        tay
        jsr     LE32D
        ldx     $08
        bcc     LB7FA
        lda     $06BE,x
        bne     LB7FF
        lda     #$01
        sta     $06BE,x
        lda     $64,x
        eor     #$FF
        clc
        adc     #$01
        sta     $64,x
        lda     $079F
        bne     LB7FF
        jmp     LD92D

LB7FA:  lda     #$00
        sta     $06BE,x
LB7FF:  rts

        jsr     LC99E
        lda     #$06
        jsr     LDA13
        lda     #$20
        sta     $FE
        lda     $39
        cmp     #$02
        bcc     LB820
        cmp     #$03
        beq     LB83A
        lda     #$23
        sta     $079F
        .byte   $A9
LB81C:  rti

        sta     $FB
        rts

LB820:  lda     $0756
        beq     LB840
        cmp     #$01
        bne     LB84C
        ldx     $08
        lda     #$02
        sta     $0756
        jsr     L85F1
        ldx     $08
        lda     #$0C
        .byte   $4C
        .byte   $47
LB839:  cld
LB83A:  lda     #$0B
        sta     $0110,x
        rts

LB840:  lda     #$01
        sta     $0756
        lda     #$09
        ldy     #$00
        .byte   $20
        lsr     a
LB84B:  .byte   $D9
LB84C:  rts

        clc
        inx
        sec
LB850:  iny
        php
        sed
        lda     $09
LB855:  lsr     a
        bcs     LB84C
        jsr     LDC43
        bcs     LB880
        lda     $03D8,x
        bne     LB880
        lda     $0E
        cmp     #$08
        bne     LB880
        lda     $1E,x
        and     #$20
        bne     LB880
        jsr     LDC54
        jsr     LE32D
        ldx     $08
        bcs     LB881
        lda     $0491,x
LB87B:  .byte   $29
LB87C:  inc     $919D,x
        .byte   $04
LB880:  rts

LB881:  ldy     $16,x
        cpy     #$2E
        bne     LB88A
        jmp     LD800

LB88A:  lda     $079F
        beq     LB895
        jmp     LD795

        asl     a
        asl     $04
LB895:  lda     $0491,x
        and     #$01
        ora     $03D8,x
        bne     LB8F8
        .byte   $A9
LB8A0:  ora     ($1D,x)
        sta     ($04),y
        sta     $0491,x
        cpy     #$12
        beq     LB8F9
        .byte   $C0
LB8AC:  ora     L7EF0
        cpy     #$0C
        beq     LB92D
        cpy     #$33
        beq     LB8F9
        cpy     #$15
        bcs     LB92D
LB8BB:  lda     $074E
        beq     LB92D
        lda     $1E,x
        asl     a
        bcs     LB8F9
        lda     $1E,x
        and     #$07
        cmp     #$02
        bcc     LB8F9
        lda     $16,x
        cmp     #$06
        beq     LB8F8
        lda     #$08
        sta     $FF
        lda     $1E,x
LB8D9:  ora     #$80
        sta     $1E,x
        jsr     LDA07
        lda     LD84F,y
        sta     $58,x
        lda     #$03
        clc
        adc     $0484
        ldy     $0796,x
        cpy     #$03
        bcs     LB8F5
        lda     LD892,y
LB8F5:  jsr     LDA13
LB8F8:  rts

LB8F9:  lda     $9F
        bmi     LB8FF
        bne     LB96B
LB8FF:  lda     #$14
        ldy     $16,x
        cpy     #$14
        bne     LB909
        lda     #$07
LB909:  adc     $CE
        cmp     $CF,x
        bcc     LB96B
        lda     $0791
        bne     LB96B
        lda     $079E
        bne     LB957
        lda     $03AD
        cmp     $03AE
        bcc     LB924
        .byte   $4C
        sed
LB923:  .byte   $D9
LB924:  lda     $46,x
        cmp     #$01
        bne     LB92D
        jmp     LDA01

LB92D:  lda     $079E
        bne     LB957
        ldx     $0756
        beq     LB95A
        sta     $0756
        lda     #$08
        sta     $079E
        lda     #$10
        sta     $FF
        jsr     L85F1
        lda     #$0A
LB948:  ldy     #$01
        sta     $0E
        sty     $1D
LB94E:  ldy     #$FF
LB950:  sty     $0747
        iny
        sty     $0775
LB957:  ldx     $08
        rts

LB95A:  stx     $57
        inx
        stx     $FC
        lda     #$FC
        sta     $9F
        lda     #$0B
        bne     LB948
        .byte   $02
        asl     $05
        .byte   $06
LB96B:  lda     $16,x
        cmp     #$12
        beq     LB92D
        lda     #$04
        sta     $FF
        lda     $16,x
        ldy     #$00
        cmp     #$14
        beq     LB998
        cmp     #$08
        beq     LB998
        cmp     #$33
        beq     LB998
        cmp     #$0C
        beq     LB998
        iny
        cmp     #$05
        beq     LB998
        iny
        cmp     #$11
        beq     LB998
        iny
        cmp     #$07
        bne     LB9B5
LB998:  lda     LD967,y
        jsr     LDA13
        lda     $46,x
        pha
        jsr     LE037
        pla
        sta     $46,x
        lda     #$20
        sta     $1E,x
        jsr     LC369
        sta     $58,x
        lda     #$FD
        sta     $9F
        rts

LB9B5:  cmp     #$09
        bcc     LB9D6
        and     #$01
        sta     $16,x
        ldy     #$00
LB9BF:  sty     $1E,x
LB9C1:  lda     #$03
        jsr     LDA13
        jsr     LC369
        jsr     LDA07
        lda     LD851,y
        sta     $58,x
        jmp     LD9F3

        .byte   $0D
        .byte   $09
LB9D6:  lda     #$04
        sta     $1E,x
        inc     $0484
        lda     $0484
        clc
        adc     $0791
        jsr     LDA13
        inc     $0791
        ldy     $076A
        lda     LD9D4,y
        sta     $0796,x
        lda     #$FC
        sta     $9F
        rts

        lda     $46,x
        cmp     #$01
        bne     LBA01
        jmp     LD92D

LBA01:  jsr     LDB1E
        jmp     LD92D

        ldy     #$01
        jsr     LE14B
        bpl     LBA0F
        iny
LBA0F:  sty     $46,x
        dey
        rts

        sta     $0110,x
        lda     #$30
        sta     $012C,x
        lda     $CF,x
        sta     $011E,x
        lda     $03AE
        sta     $0117,x
LBA26:  rts

        .byte   $80
        rti

        jsr     L0810
        .byte   $04
        .byte   $02
        .byte   $7F
        .byte   $BF
        .byte   $DF
        .byte   $EF
LBA32:  .byte   $F7
        .byte   $FB
        .byte   $FD
        .byte   $A5
LBA36:  ora     #$4A
LBA38:  bcc     LBA26
        lda     $074E
        beq     LBA26
        lda     $16,x
        cmp     #$15
        bcs     LBAB3
        cmp     #$11
        beq     LBAB3
        cmp     #$0D
        beq     LBAB3
        lda     $03D8,x
        bne     LBAB3
        jsr     LDC54
        dex
        bmi     LBAB3
LBA58:  stx     $01
        tya
        pha
        lda     $0F,x
        beq     LBAAC
        lda     $16,x
        cmp     #$15
        bcs     LBAAC
        cmp     #$11
        beq     LBAAC
        cmp     #$0D
        beq     LBAAC
        lda     $03D8,x
        bne     LBAAC
        txa
        asl     a
        asl     a
        clc
        adc     #$04
        tax
        jsr     LE32F
        ldx     $08
        ldy     $01
        bcc     LBAA3
        lda     $1E,x
        ora     $1E,y
        and     #$80
        bne     LBA9D
        .byte   $B9
        .byte   $91
LBA8E:  .byte   $04
        and     LDA27,x
        bne     LBAAC
        lda     $0491,y
LBA97:  .byte   $1D
        .byte   $27
LBA99:  .byte   $DA
        sta     $0491,y
LBA9D:  jsr     LDAB6
        jmp     LDAAC

LBAA3:  lda     $0491,y
        and     LDA2E,x
        sta     $0491,y
LBAAC:  pla
        tay
        ldx     $01
        dex
        bpl     LBA58
LBAB3:  ldx     $08
        rts

        lda     $1E,y
        ora     $1E,x
        and     #$20
        bne     LBAF2
        lda     $1E,x
        cmp     #$06
        bcc     LBAF3
        lda     $16,x
        .byte   $C9
LBAC8:  ora     $F0
        .byte   $27
        lda     $1E,y
        asl     a
        bcc     LBADB
        .byte   $A9
LBAD2:  asl     L0020
        .byte   $13
        .byte   $DA
        jsr     LD795
        ldy     $01
LBADB:  tya
        tax
        jsr     LD795
        ldx     $08
        lda     $0125,x
        clc
        adc     #$04
        ldx     $01
        jsr     LDA13
        ldx     $08
        inc     $0125,x
LBAF2:  rts

LBAF3:  lda     $1E,y
        cmp     #$06
        bcc     LBB17
        lda     $16,y
        cmp     #$05
        beq     LBAF2
        jsr     LD795
        ldy     $01
        lda     $0125,y
        clc
        adc     #$04
        ldx     $08
        jsr     LDA13
        ldx     $01
        inc     $0125,x
        rts

LBB17:  tya
        tax
        jsr     LDB1E
        ldx     $08
        lda     $16,x
        cmp     #$0D
        beq     LBB46
        cmp     #$11
        beq     LBB46
        cmp     #$05
        beq     LBB46
        .byte   $C9
LBB2D:  .byte   $12
        beq     LBB38
        cmp     #$0E
        beq     LBB38
        cmp     #$07
        bcs     LBB46
LBB38:  lda     $58,x
        .byte   $49
LBB3B:  .byte   $FF
        tay
LBB3D:  iny
        sty     $58,x
        lda     $46,x
        eor     #$03
        sta     $46,x
LBB46:  rts

        lda     #$FF
        sta     $03A2,x
        lda     $0747
        bne     LBB7A
        lda     $1E,x
        bmi     LBB7A
        .byte   $B5
LBB56:  asl     $C9,x
        bit     $D0
        asl     $B5
        asl     $20AA,x
        adc     ($DB,x)
        jsr     LDC43
        bcs     LBB7A
        txa
        jsr     LDC56
        lda     $CF,x
        sta     L0000
        txa
        pha
        .byte   $20
LBB71:  and     L68E3
        tax
        bcc     LBB7A
        jsr     LDBBE
LBB7A:  ldx     $08
        rts

        lda     $0747
        bne     LBBB9
        sta     $03A2,x
        jsr     LDC43
        .byte   $B0
LBB89:  .byte   $2F
        lda     #$02
        sta     L0000
LBB8E:  ldx     $08
        jsr     LDC54
        and     #$02
        bne     LBBB9
        lda     $04AD,y
        .byte   $C9
LBB9B:  jsr     L0590
        jsr     LE32D
        bcs     LBBBC
        lda     $04AD,y
        clc
        adc     #$80
        sta     $04AD,y
        lda     $04AF,y
        clc
        adc     #$80
        sta     $04AF,y
        dec     L0000
        .byte   $D0
LBBB8:  .byte   $D5
LBBB9:  ldx     $08
        rts

LBBBC:  ldx     $08
        lda     $04AF,y
        sec
        sbc     $04AD
        cmp     #$04
        bcs     LBBD1
        lda     $9F
        bpl     LBBD1
        lda     #$01
        sta     $9F
LBBD1:  lda     $04AF
        sec
        sbc     $04AD,y
        cmp     #$06
        bcs     LBBF7
        lda     $9F
        bmi     LBBF7
        lda     L0000
        ldy     $16,x
        cpy     #$2B
        beq     LBBED
        cpy     #$2C
        beq     LBBED
        txa
LBBED:  ldx     $08
        sta     $03A2,x
        lda     #$00
        .byte   $85
LBBF5:  .byte   $1D
        rts

LBBF7:  lda     #$01
LBBF9:  sta     L0000
        .byte   $AD
        .byte   $AE
LBBFD:  .byte   $04
        sec
LBBFF:  .byte   $F9
        .byte   $AC
LBC01:  .byte   $04
        .byte   $C9
LBC03:  php
        bcc     LBC13
        inc     L0000
        lda     $04AE,y
        clc
        sbc     $04AC
        cmp     #$09
        bcs     LBC16
LBC13:  jsr     LDF53
LBC16:  ldx     $08
        rts

        .byte   $80
        brk
        tay
        lda     $CF,x
        clc
        adc     LDC18,y
        bit     LCFB5
        ldy     $0E
        cpy     #$0B
        beq     LBC42
        .byte   $B4
LBC2C:  ldx     $C0,y
        ora     ($D0,x)
        ora     ($38),y
        sbc     #$20
        .byte   $85
LBC35:  dec     LE998
        brk
        sta     $B5
LBC3B:  lda     #$00
        sta     $9F
        sta     $0433
LBC42:  rts

        lda     $03D0
        cmp     #$F0
        bcs     LBC53
        ldy     $B5
        dey
        .byte   $D0
LBC4E:  .byte   $04
        lda     $CE
        cmp     #$D0
LBC53:  rts

        lda     $08
        asl     a
        asl     a
        clc
        adc     #$04
        tay
LBC5C:  lda     $03D1
        and     #$0F
        cmp     #$0F
        rts

        jsr     LAD10
        asl     $07,x
        bne     LBC99
        lda     $0E
        cmp     #$0B
        beq     LBC99
        cmp     #$04
        bcc     LBC99
        lda     #$01
        ldy     $0704
        bne     LBC86
        lda     $1D
        beq     LBC84
        cmp     #$03
        bne     LBC88
LBC84:  lda     #$02
LBC86:  sta     $1D
LBC88:  lda     $B5
        cmp     #$01
        bne     LBC99
        lda     #$FF
        sta     $0490
        lda     $CE
        cmp     #$CF
        bcc     LBC9A
LBC99:  rts

LBC9A:  ldy     #$02
        lda     $0714
        bne     LBCAD
        lda     $0754
        bne     LBCAD
        dey
        lda     $0704
        bne     LBCAD
        dey
LBCAD:  lda     LE3B5,y
        sta     $EB
        tay
        ldx     $0754
        lda     $0714
        beq     LBCBC
        inx
LBCBC:  lda     $CE
        cmp     LDC64,x
        bcc     LBCFE
        jsr     LE3F1
        beq     LBCFE
        jsr     LDFA9
        bcs     LBD22
        ldy     $9F
        bpl     LBCFE
        ldy     $04
        cpy     #$04
        bcc     LBCFE
        jsr     LDF97
        bcs     LBCEC
        .byte   $AC
LBCDD:  lsr     LF007
        .byte   $13
        ldy     $0784
        bne     LBCF4
        jsr     LBCF2
        jmp     LDCFE

LBCEC:  cmp     #$26
        beq     LBCF4
LBCF0:  lda     #$02
LBCF2:  sta     $FF
LBCF4:  ldy     #$01
        lda     $074E
        bne     LBCFC
        dey
LBCFC:  sty     $9F
LBCFE:  ldy     $EB
        lda     $CE
        cmp     #$CF
        bcs     LBD66
        jsr     LE3F0
        jsr     LDFA9
        bcs     LBD22
        pha
        jsr     LE3F0
        sta     L0000
        pla
        sta     $01
        bne     LBD25
        lda     L0000
        beq     LBD66
        jsr     LDFA9
        bcc     LBD25
LBD22:  jmp     LDE0D

LBD25:  jsr     LDFA2
        bcs     LBD66
        ldy     $9F
        bmi     LBD66
        cmp     #$C5
        bne     LBD35
        jmp     LDE16

LBD35:  jsr     LDEC5
        beq     LBD66
        ldy     $070E
        bne     LBD62
        ldy     $04
        cpy     #$06
        bcc     LBD4C
        lda     $45
        sta     L0000
        jmp     LDF53

LBD4C:  jsr     LDECC
        lda     #$F0
        and     $CE
        sta     $CE
        jsr     LDEF0
        lda     #$00
        sta     $9F
        sta     $0433
        sta     $0484
LBD62:  lda     #$00
        sta     $1D
LBD66:  ldy     $EB
        iny
        iny
        lda     #$02
        sta     L0000
LBD6E:  iny
        sty     $EB
        lda     $CE
        cmp     #$20
        bcc     LBD8D
        cmp     #$E4
        bcs     LBDA3
        jsr     LE3F4
        beq     LBD8D
LBD80:  cmp     #$1C
        beq     LBD8D
        cmp     #$6B
        beq     LBD8D
        .byte   $20
LBD89:  ldx     #$DF
        bcc     LBDA4
LBD8D:  ldy     $EB
        iny
        lda     $CE
        cmp     #$08
        bcc     LBDA3
        cmp     #$D0
        bcs     LBDA3
        jsr     LE3F4
        bne     LBDA4
        .byte   $C6
LBDA0:  brk
        bne     LBD6E
LBDA3:  rts

LBDA4:  jsr     LDEC5
        beq     LBE0A
        jsr     LDFA2
        bcc     LBDB1
        jmp     LDE36

LBDB1:  jsr     LDFA9
        bcs     LBE0D
        jsr     LDEE5
LBDB9:  bcc     LBDC3
        lda     $070E
        bne     LBE0A
        jmp     LDE07

LBDC3:  ldy     $1D
        cpy     #$00
        bne     LBE07
        ldy     $33
        dey
        bne     LBE07
        cmp     #$6C
        beq     LBDD6
        cmp     #$1F
        bne     LBE07
LBDD6:  .byte   $AD
LBDD7:  cpy     $03
        bne     LBDDF
LBDDB:  ldy     #$10
        sty     $FF
LBDDF:  ora     #$20
        sta     $03C4
        lda     $86
        and     #$0F
        beq     LBDF8
        ldy     #$00
        .byte   $AD
LBDED:  .byte   $1A
        .byte   $07
        beq     LBDF2
        iny
LBDF2:  lda     LDE0B,y
        sta     $06DE
LBDF8:  lda     $0E
        .byte   $C9
LBDFB:  .byte   $07
        beq     LBE0A
        cmp     #$08
        bne     LBE0A
        lda     #$02
        sta     $0E
LBE06:  rts

LBE07:  jsr     LDF53
LBE0A:  rts

        sta     $2B
LBE0D:  jsr     LDE24
        inc     $0748
        jmp     LBC03

        lda     #$00
        sta     $0772
        lda     #$02
        sta     $0770
        lda     #$18
        sta     $57
LBE24:  ldy     $02
        lda     #$00
        sta     (L0006),y
        jmp     L8A4D

        sbc     LFF07,y
        brk
        clc
        .byte   $22
        bvc     LBE9D
        bcc     LBDDB
        .byte   $04
        cpy     #$06
        bcc     LBE40
        cpy     #$0A
        bcc     LBE41
LBE40:  rts

LBE41:  cmp     #$24
        beq     LBE49
        .byte   $C9
LBE46:  and     $D0
        .byte   $39
LBE49:  lda     $0E
        cmp     #$05
        beq     LBE90
        lda     #$01
        sta     $33
        inc     $0723
        lda     $0E
        cmp     #$04
        beq     LBE7B
        lda     #$33
        jsr     L9716
        lda     #$80
        sta     $FC
        lsr     a
        sta     $0713
        ldx     #$04
        lda     $CE
        sta     $070F
LBE70:  cmp     LDE31,x
        bcs     LBE78
LBE75:  dex
        bne     LBE70
LBE78:  stx     $010F
LBE7B:  lda     #$04
        sta     $0E
        jmp     LDE90

        cmp     #$26
        bne     LBE90
        lda     $CE
        cmp     #$20
        bcs     LBE90
        lda     #$01
        sta     $0E
LBE90:  lda     #$03
        sta     $1D
        lda     #$00
        sta     $57
        sta     $0705
        lda     $86
LBE9D:  sec
        sbc     $071C
        cmp     #$10
        bcs     LBEA9
        lda     #$02
        sta     $33
LBEA9:  ldy     $33
        lda     L0006
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     LDE2C,y
        sta     $86
        lda     L0006
        bne     LBEC4
        lda     $071B
LBEBE:  clc
        adc     LDE2E,y
        sta     $6D
LBEC4:  rts

        cmp     #$5F
        beq     LBECB
        cmp     #$60
LBECB:  rts

        jsr     LDEE5
        bcc     LBEE4
        lda     #$70
        sta     $0709
        lda     #$F8
        .byte   $8D
LBED9:  .byte   $DB
        asl     $A9
        .byte   $03
        sta     $0786
        lsr     a
        sta     $070E
LBEE4:  rts

        cmp     #$67
        beq     LBEEE
        cmp     #$68
        clc
        bne     LBEEF
LBEEE:  sec
LBEEF:  rts

        lda     $0B
        and     #$04
        beq     LBF52
        lda     L0000
        cmp     #$11
        bne     LBF52
        lda     $01
        cmp     #$10
        bne     LBF52
LBF02:  lda     #$28
        sta     $06DE
LBF07:  lda     #$03
        sta     $0E
        lda     #$10
        .byte   $85
LBF0E:  .byte   $FF
        lda     #$20
        sta     $03C4
LBF14:  lda     $06D6
        beq     LBF52
        and     #$03
        asl     a
        asl     a
        tax
        lda     $86
        cmp     #$60
        bcc     LBF2A
        inx
        cmp     #$A0
        bcc     LBF2A
        inx
LBF2A:  ldy     L87F2,x
        dey
        sty     $075F
        ldx     L9CB4,y
        lda     L9CBC,x
        sta     $0750
        .byte   $A9
LBF3B:  .byte   $80
        sta     $FC
        lda     #$00
        sta     $0751
        sta     $0760
        sta     $075C
        sta     $0752
        inc     $075D
        inc     $0757
LBF52:  rts

        lda     #$00
        ldy     $57
        ldx     L0000
        dex
        bne     LBF66
        inx
        cpy     #$00
        bmi     LBF89
        lda     #$FF
        jmp     LDF6E

LBF66:  ldx     #$02
LBF68:  cpy     #$01
        bpl     LBF89
        lda     #$01
        ldy     #$10
LBF70:  sty     $0785
        ldy     #$00
LBF75:  sty     $57
        cmp     #$00
        .byte   $10
LBF7A:  ora     ($88,x)
LBF7C:  sty     L0000
        clc
LBF7F:  adc     $86
        sta     $86
        lda     $6D
        adc     L0000
        sta     $6D
LBF89:  txa
        eor     #$FF
        and     $0490
        .byte   $8D
        .byte   $90
LBF91:  .byte   $04
        rts

        bpl     LBFF6
        dey
        .byte   $C4
LBF97:  .byte   $20
        clv
LBF99:  .byte   $DF
        .byte   $DD
LBF9B:  .byte   $93
        .byte   $DF
        rts

LBF9E:  bit     $6D
        txa
        dec     L0020
        clv
LBFA4:  .byte   $DF
        cmp     LDF9E,x
        rts

LBFA9:  cmp     #$C2
        beq     LBFB3
        cmp     #$C3
        beq     LBFB3
        clc
LBFB2:  rts

LBFB3:  lda     #$01
        sta     $FE
        rts

        tay
LBFB9:  and     #$C0
        asl     a
LBFBC:  rol     a
        rol     a
        tax
LBFBF:  tya
LBFC0:  rts

        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        ora     $10
        beq     LBF7F
        asl     $2029,x
        bne     LBFC0
        jsr     LE163
        bcc     LBFC0
        ldy     $16,x
LBFD6:  cpy     #$12
        bne     LBFE0
        lda     $CF,x
LBFDC:  cmp     #$25
        bcc     LBFC0
LBFE0:  cpy     #$0E
        bne     LBFE7
        jmp     LE16B

LBFE7:  cpy     #$05
        bne     LBFEE
        jmp     LE18D

LBFEE:  cpy     #$12
        beq     LBFFA
        cpy     #$2E
        beq     LBFFA
LBFF6:  cpy     #$07
        bcs     LC06E
LBFFA:  jsr     LE1B6
        bne     LC002
LBFFF:  jmp     LE0EA

LC002:  jsr     LE1BD
        beq     LBFFF
        cmp     #$23
        bne     LC06F
        ldy     $02
        lda     #$00
        sta     (L0006),y
        lda     $16,x
        cmp     #$15
        bcs     LC023
        cmp     #$06
        bne     LC01E
        jsr     LE196
LC01E:  lda     #$01
LC020:  jsr     LDA13
LC023:  cmp     #$09
        bcc     LC037
        cmp     #$11
        bcs     LC037
        cmp     #$0A
        bcc     LC033
        cmp     #$0D
        bcc     LC037
LC033:  and     #$01
        sta     $16,x
LC037:  lda     $1E,x
        and     #$F0
        ora     #$02
        sta     $1E,x
        dec     $CF,x
        dec     $CF,x
        lda     $16,x
        cmp     #$07
        beq     LC050
        lda     #$FD
        .byte   $AC
        .byte   $4E
LC04D:  .byte   $07
        bne     LC052
LC050:  lda     #$FF
LC052:  sta     $A0,x
        ldy     #$01
        jsr     LE14B
        bpl     LC05C
        iny
LC05C:  lda     $16,x
        cmp     #$33
LC060:  beq     LC068
        cmp     #$08
        beq     LC068
        sty     $46,x
LC068:  dey
        lda     LDFC7,y
        sta     $58,x
LC06E:  rts

LC06F:  lda     $04
LC071:  sec
        sbc     #$08
        cmp     #$05
        bcs     LC0EA
        lda     $1E,x
        and     #$40
LC07C:  bne     LC0D5
        lda     $1E,x
        asl     a
        bcc     LC086
        jmp     LE106

LC086:  .byte   $B5
LC087:  asl     LF9F0,x
        cmp     #$05
        beq     LC0AD
        cmp     #$03
        bcs     LC0AC
LC092:  lda     $1E,x
        cmp     #$02
        bne     LC0AD
        lda     #$10
        ldy     $16,x
        cpy     #$12
        bne     LC0A2
        lda     #$00
LC0A2:  sta     $0796,x
        lda     #$03
        sta     $1E,x
        jsr     LE157
LC0AC:  rts

LC0AD:  lda     $16,x
        cmp     #$06
        beq     LC0D5
        cmp     #$12
        bne     LC0C5
        lda     #$01
        sta     $46,x
        lda     #$08
        sta     $58,x
        .byte   $A5
LC0C0:  .byte   $09
LC0C1:  and     #$07
        beq     LC0D5
LC0C5:  ldy     #$01
        jsr     LE14B
        bpl     LC0CD
        iny
LC0CD:  tya
        cmp     $46,x
        bne     LC0D5
LC0D2:  jsr     LE12C
LC0D5:  jsr     LE157
        lda     $1E,x
        and     #$80
        bne     LC0E3
        lda     #$00
        sta     $1E,x
        rts

LC0E3:  lda     $1E,x
        and     #$BF
        sta     $1E,x
        rts

LC0EA:  lda     $16,x
        cmp     #$03
        bne     LC0F4
LC0F0:  lda     $1E,x
        beq     LC12C
LC0F4:  lda     $1E,x
        tay
        asl     a
        bcc     LC101
        lda     $1E,x
        ora     #$40
        jmp     LE104

LC101:  lda     LDFC1,y
        sta     $1E,x
        lda     $CF,x
        cmp     #$20
        bcc     LC12B
        ldy     #$16
        lda     #$02
        sta     $EB
LC112:  lda     $EB
        cmp     $46,x
        bne     LC124
        lda     #$01
        jsr     LE390
        beq     LC124
        jsr     LE1BD
        bne     LC12C
LC124:  dec     $EB
        iny
        cpy     #$18
        bcc     LC112
LC12B:  rts

LC12C:  cpx     #$05
        beq     LC139
        lda     $1E,x
        asl     a
        bcc     LC139
        lda     #$02
        sta     $FF
LC139:  lda     $16,x
        cmp     #$05
        bne     LC148
        lda     #$00
        sta     L0000
        ldy     #$FA
        jmp     LCA3D

LC148:  jmp     LDB38

        lda     $87,x
        sec
        sbc     $86
        sta     L0000
        lda     $6E,x
        sbc     $6D
        rts

        jsr     LC369
        lda     $CF,x
        and     #$F0
        ora     #$08
        sta     $CF,x
        rts

        lda     $CF,x
        clc
        adc     #$3E
        cmp     #$44
        rts

        jsr     LE163
        bcc     LC18A
        lda     $A0,x
        clc
        adc     #$02
        cmp     #$03
        bcc     LC18A
        jsr     LE1B6
        beq     LC18A
        jsr     LE1BD
        beq     LC18A
        jsr     LE157
        lda     #$FD
        sta     $A0,x
LC18A:  jmp     LE106

        jsr     LE1B6
        beq     LC1AF
        cmp     #$23
        bne     LC19E
        jsr     LD795
        lda     #$FC
        sta     $A0,x
        rts

LC19E:  lda     $078A,x
        bne     LC1AF
        lda     $1E,x
        and     #$88
        sta     $1E,x
        jsr     LE157
        jmp     LE106

LC1AF:  lda     $1E,x
        ora     #$01
        sta     $1E,x
        rts

        lda     #$00
        ldy     #$15
        jmp     LE390

        cmp     #$26
        beq     LC1CF
        cmp     #$C2
        beq     LC1CF
        cmp     #$C3
        beq     LC1CF
        cmp     #$5F
        beq     LC1CF
        cmp     #$60
LC1CF:  rts

        lda     $D5,x
        cmp     #$18
        bcc     LC1F7
        jsr     LE3A4
        beq     LC1F7
        jsr     LE1BD
        beq     LC1F7
        lda     $A6,x
        bmi     LC1FC
        lda     $3A,x
        bne     LC1FC
        lda     #$FD
        sta     $A6,x
        lda     #$01
        sta     $3A,x
        lda     $D5,x
        and     #$F8
        sta     $D5,x
        rts

LC1F7:  lda     #$00
        sta     $3A,x
        rts

LC1FC:  lda     #$80
        sta     $24,x
        lda     #$02
        sta     $FF
        rts

        .byte   $02
        php
        asl     $0320
        .byte   $14
        ora     $0220
        .byte   $14
        asl     $0220
        ora     #$0E
        ora     L0000,x
        brk
        clc
        asl     L0000
        brk
        .byte   $20
LC21C:  ora     a:L0000
        bmi     LC22E
        brk
        brk
        php
        php
        asl     $04
        asl     a
        php
        .byte   $03
        .byte   $0C
        .byte   $0D
LC22C:  .byte   $14
        brk
LC22E:  .byte   $02
        bpl     LC246
        .byte   $04
        .byte   $04
        .byte   $0C
        .byte   $1C
        txa
        clc
        adc     #$07
        tax
        ldy     #$02
        bne     LC245
        txa
        clc
        adc     #$09
        tax
        ldy     #$06
LC245:  .byte   $20
LC246:  ldy     $E2
        jmp     LE2E6

        ldy     #$48
        sty     L0000
        ldy     #$44
        jmp     LE25A

        ldy     #$08
LC256:  sty     L0000
        ldy     #$04
        lda     $87,x
        sec
        sbc     $071C
        .byte   $85
LC261:  ora     ($B5,x)
        .byte   $6E
LC264:  sbc     $071A
        bmi     LC26F
        ora     $01
        beq     LC26F
        ldy     L0000
LC26F:  tya
        .byte   $2D
        .byte   $D1
LC272:  .byte   $03
        sta     $03D8,x
        bne     LC291
        jmp     LE284

        inx
        jsr     LF1FD
        dex
        cmp     #$FE
        bcs     LC291
        txa
        clc
        adc     #$01
        tax
        ldy     #$01
        jsr     LE2A4
        jmp     LE2E6

LC291:  txa
        asl     a
        asl     a
        tay
        lda     #$FF
        sta     $04B0,y
        sta     $04B1,y
        sta     $04B2,y
        sta     $04B3,y
        rts

        stx     L0000
        lda     $03B8,y
        sta     $02
        lda     $03AD,y
        sta     $01
        txa
        asl     a
        asl     a
        pha
        tay
        lda     $0499,x
        asl     a
        asl     a
        tax
        lda     $01
        clc
        adc     LE205,x
        sta     $04AC,y
        lda     $01
        clc
        adc     LE207,x
        sta     $04AE,y
        inx
        iny
        lda     $02
        clc
        adc     LE205,x
        sta     $04AC,y
        lda     $02
        clc
        adc     LE207,x
        sta     $04AE,y
        pla
        tay
        ldx     L0000
        rts

        lda     $071C
        clc
        adc     #$80
        sta     $02
        lda     $071A
        adc     #$00
        sta     $01
        lda     $86,x
        cmp     $02
        lda     $6D,x
        sbc     $01
        bcc     LC314
        lda     $04AE,y
        bmi     LC311
        lda     #$FF
        ldx     $04AC,y
        bmi     LC30E
        sta     $04AC,y
LC30E:  sta     $04AE,y
LC311:  .byte   $A6
LC312:  php
        rts

LC314:  lda     $04AC,y
        bpl     LC32A
        cmp     #$A0
LC31B:  bcc     LC32A
        lda     #$00
LC31F:  ldx     $04AE,y
        bpl     LC327
        sta     $04AE,y
LC327:  sta     $04AC,y
LC32A:  ldx     $08
LC32C:  rts

        ldx     #$00
        sty     L0006
        lda     #$01
        sta     $07
LC335:  lda     $04AC,y
        cmp     $04AC,x
        bcs     LC367
        cmp     $04AE,x
        bcc     LC354
        .byte   $F0
LC343:  .byte   $42
        lda     $04AE,y
        cmp     $04AC,y
        bcc     LC386
LC34C:  cmp     $04AC,x
        bcs     LC386
        ldy     L0006
        rts

LC354:  lda     $04AE,x
        cmp     $04AC,x
        bcc     LC386
        lda     $04AE,y
        .byte   $DD
LC360:  .byte   $AC
        .byte   $04
LC362:  bcs     LC386
        ldy     L0006
        rts

LC367:  .byte   $DD
        .byte   $AC
LC369:  .byte   $04
        beq     LC386
        cmp     $04AE,x
        bcc     LC386
        beq     LC386
        cmp     $04AE,y
        bcc     LC382
        beq     LC382
        lda     $04AE,y
        cmp     $04AC,x
        bcs     LC386
LC382:  clc
        ldy     L0006
        rts

LC386:  inx
        iny
        dec     $07
        bpl     LC335
        sec
        ldy     L0006
        rts

LC390:  pha
        txa
        clc
        adc     #$01
        tax
        pla
        jmp     LE3AD

        txa
        clc
        adc     #$0D
LC39E:  tax
        ldy     #$1B
        jmp     LE3AB

        ldy     #$1A
        txa
        clc
        adc     #$07
        tax
        lda     #$00
        jsr     LE3F8
        ldx     $08
        cmp     #$00
        rts

        brk
        .byte   $07
        .byte   $0E
        php
LC3B9:  .byte   $03
        .byte   $0C
        .byte   $02
        .byte   $02
        ora     $080D
        .byte   $03
LC3C1:  .byte   $0C
        .byte   $02
        .byte   $02
        ora     $080D
        .byte   $03
        .byte   $0C
        .byte   $02
        .byte   $02
        ora     $080D
        brk
        bpl     LC3D5
        .byte   $14
        .byte   $04
        .byte   $04
        .byte   $04
LC3D5:  jsr     L0820
        clc
        php
        clc
        .byte   $02
        jsr     L0820
        clc
        php
        clc
        .byte   $12
        jsr     L1820
        clc
        clc
        clc
        clc
        .byte   $14
        .byte   $14
        asl     L0006
        php
        bpl     LC3B9
        lda     #$00
LC3F3:  bit     $01A9
        ldx     #$00
LC3F8:  pha
        sty     $04
        lda     LE3B8,y
        clc
        adc     $86,x
        sta     $05
        lda     $6D,x
        .byte   $69
LC406:  brk
        and     #$01
        lsr     a
        ora     $05
        ror     a
        lsr     a
        lsr     a
        lsr     a
        jsr     L9BE3
        ldy     $04
        lda     $CE,x
        clc
        adc     LE3D4,y
        and     #$F0
        sec
        sbc     #$20
        sta     $02
        tay
        lda     (L0006),y
        sta     $03
        ldy     $04
        pla
        bne     LC431
        lda     $CE,x
        jmp     LE433

LC431:  lda     $86,x
        and     #$0F
        sta     $04
        lda     $03
        rts

        brk
        bmi     LC3C1
        brk
        lda     $03B9
        clc
        adc     LE43A,y
        ldx     $039A,y
        ldy     L06E5,x
        sty     $02
        jsr     LE4B5
        lda     $03AE
        sta     $0203,y
        sta     $020B,y
        .byte   $99
LC45A:  .byte   $13
        .byte   $02
        clc
        adc     #$06
        sta     $0207,y
        sta     $020F,y
        sta     $0217,y
        lda     #$21
        sta     $0202,y
        sta     $020A,y
        sta     $0212,y
        ora     #$40
        sta     $0206,y
        sta     $020E,y
        sta     $0216,y
        ldx     #$05
LC480:  lda     #$E1
        sta     $0201,y
        iny
        iny
        iny
        iny
        dex
        bpl     LC480
        ldy     $02
LC48E:  lda     L0000
        bne     LC497
        lda     #$E0
        sta     $0201,y
LC497:  ldx     #$00
LC499:  lda     $039D
        sec
        .byte   $F9
LC49E:  brk
        .byte   $02
        cmp     #$64
        bcc     LC4A9
        lda     #$F8
        sta     $0200,y
LC4A9:  iny
LC4AA:  iny
        iny
        iny
        inx
        cpx     #$06
        bne     LC499
        ldy     L0000
        rts

        ldx     #$06
LC4B7:  sta     $0200,y
        clc
        adc     #$08
        iny
        iny
        iny
        iny
        dex
        bne     LC4B7
        ldy     $02
        rts

        .byte   $04
        brk
        .byte   $04
        brk
        brk
        .byte   $04
        brk
        .byte   $04
        brk
        php
        brk
        php
        php
        brk
        php
        brk
        .byte   $80
        .byte   $82
        sta     ($83,x)
        sta     ($83,x)
        .byte   $80
        .byte   $82
        .byte   $03
        .byte   $03
        .byte   $C3
        .byte   $C3
        ldy     $06F3,x
        lda     $0747
        bne     LC4F3
        lda     $2A,x
        and     #$7F
        cmp     #$01
        beq     LC4F7
LC4F3:  ldx     #$00
        beq     LC4FE
LC4F7:  lda     $09
        lsr     a
        lsr     a
        and     #$03
        tax
LC4FE:  .byte   $AD
        .byte   $BE
LC500:  .byte   $03
        clc
LC502:  adc     LE4CB,x
        sta     $0200,y
        clc
        adc     LE4D3,x
        sta     $0204,y
        lda     $03B3
        clc
        adc     LE4C7,x
        sta     $0203,y
        clc
        adc     LE4CF,x
        sta     $0207,y
        lda     LE4D7,x
        sta     $0201,y
        lda     LE4DB,x
        sta     $0205,y
        lda     LE4DF,x
        sta     $0202,y
        sta     $0206,y
        ldx     $08
        lda     $03D6
        and     #$FC
        beq     LC547
        lda     #$00
        sta     $2A,x
LC542:  lda     #$F8
        jsr     LE5C8
LC547:  rts

        sbc     LF750,y
        bvc     LC547
        .byte   $FB
        sed
        .byte   $FB
        inc     $FB,x
        ldy     L06E5,x
        lda     $03AE
        sta     $0203,y
        clc
        adc     #$08
        sta     $0207,y
        sta     $020B,y
        clc
        adc     #$0C
        sta     $05
        lda     $CF,x
        jsr     LE5C8
        adc     #$08
        sta     $0208,y
        lda     $010D
        sta     $02
        lda     #$01
        .byte   $85
LC57B:  .byte   $03
        sta     $04
        sta     $0202,y
        sta     $0206,y
        sta     $020A,y
        lda     #$7E
        sta     $0201,y
        sta     $0209,y
        lda     #$7F
        sta     $0205,y
        lda     $070F
        beq     LC5AE
        tya
        clc
        adc     #$0C
        tay
        lda     $010F
        asl     a
        tax
LC5A3:  lda     LE548,x
        .byte   $85
LC5A7:  brk
        lda     LE549,x
        jsr     LEBB9
LC5AE:  ldx     $08
        ldy     L06E5,x
        lda     $03D1
        and     #$0E
        beq     LC5CE
        lda     #$F8
        sta     $0214,y
        sta     $0210,y
        sta     $020C,y
        sta     $0208,y
        sta     $0204,y
        sta     $0200,y
LC5CE:  rts

        ldy     L06E5,x
        sty     $02
        iny
        iny
        iny
        lda     $03AE
        jsr     LE4B5
        .byte   $A6
LC5DE:  php
        lda     $CF,x
        jsr     LE5C2
        ldy     $074E
        cpy     #$03
        beq     LC5F0
        ldy     $06CC
        beq     LC5F2
LC5F0:  lda     #$F8
LC5F2:  ldy     L06E5,x
        sta     $0210,y
        sta     $0214,y
        lda     #$5B
        ldx     $0743
        beq     LC604
        lda     #$75
LC604:  ldx     $08
        iny
        jsr     LE5BC
        lda     #$02
        iny
        jsr     LE5BC
        inx
        jsr     LF1FD
        dex
        ldy     L06E5,x
        asl     a
        pha
        bcc     LC621
        lda     #$F8
        sta     $0200,y
LC621:  pla
        asl     a
        pha
        .byte   $90
LC625:  ora     $A9
        sed
        sta     $0204,y
        pla
        asl     a
        pha
        bcc     LC635
        lda     #$F8
        sta     $0208,y
LC635:  pla
        asl     a
LC637:  pha
        bcc     LC63F
        lda     #$F8
        .byte   $99
LC63D:  .byte   $0C
        .byte   $02
LC63F:  pla
        asl     a
        pha
        bcc     LC649
        lda     #$F8
        sta     $0210,y
LC649:  pla
        asl     a
        bcc     LC652
        lda     #$F8
        sta     $0214,y
LC652:  lda     $03D1
        asl     a
        bcc     LC65B
        jsr     LE5BA
LC65B:  rts

LC65C:  lda     $09
        lsr     a
        bcs     LC663
        dec     $DB,x
LC663:  lda     $DB,x
        jsr     LE5C8
        lda     $03B3
        sta     $0203,y
        clc
        adc     #$08
        sta     $0207,y
        lda     #$02
        sta     $0202,y
        sta     $0206,y
        lda     #$F7
        sta     $0201,y
        lda     #$FB
        sta     $0205,y
        jmp     LE6C4

        rts

        adc     ($62,x)
        .byte   $63
        ldy     $06F3,x
LC690:  lda     $2A,x
        cmp     #$02
        bcs     LC65C
        lda     $DB,x
LC698:  sta     $0200,y
        clc
        adc     #$08
        .byte   $99
        .byte   $04
LC6A0:  .byte   $02
        lda     $03B3
        sta     $0203,y
        sta     $0207,y
        lda     $09
        lsr     a
        and     #$03
        tax
        lda     LE689,x
        iny
        jsr     LE5C8
        dey
        lda     #$02
        sta     $0202,y
        lda     #$82
        sta     $0206,y
        ldx     $08
        rts

        .byte   $76
LC6C6:  .byte   $77
        sei
        adc     LD6D6,y
        cmp     L8DD9,y
LC6CE:  sta     LE4E4
        ror     $77,x
        sei
        adc     $0102,y
        .byte   $02
        ora     ($AC,x)
        nop
        .byte   $06
LC6DC:  lda     $03B9
        clc
        adc     #$08
        sta     $02
        lda     $03AE
        sta     $05
        ldx     $39
        lda     LE6D5,x
LC6EE:  ora     $03CA
        sta     $04
        txa
        pha
        asl     a
        asl     a
        tax
        lda     #$01
        sta     $07
LC6FC:  sta     $03
LC6FE:  lda     LE6C5,x
        sta     L0000
        lda     LE6C6,x
LC706:  jsr     LEBB9
        dec     $07
        bpl     LC6FE
        ldy     $06EA
        pla
        beq     LC742
        cmp     #$03
        beq     LC742
        sta     L0000
        lda     $09
        lsr     a
        and     #$03
        ora     $03CA
LC721:  sta     $0202,y
        sta     $0206,y
        ldx     L0000
        dex
        beq     LC732
        sta     $020A,y
        sta     $020E,y
LC732:  .byte   $B9
LC733:  asl     $02
        ora     #$40
        sta     $0206,y
        lda     $020E,y
        ora     #$40
        sta     $020E,y
LC742:  jmp     LEB6B

        .byte   $FC
        .byte   $FC
        tax
        .byte   $AB
        ldy     LFCAD
        .byte   $FC
        ldx     LB0AF
        lda     ($FC),y
        lda     $A6
        .byte   $A7
        tay
        lda     #$FC
        ldy     #$A1
        ldx     #$A3
        ldy     $69
        lda     $6A
        .byte   $A7
        tay
        lda     #$6B
        ldy     #$6C
        ldx     #$A3
        ldy     $FC
        .byte   $FC
        stx     $97,y
        tya
        sta     LFCFC,y
        txs
        .byte   $9B
        .byte   $9C
        sta     LFCFC,x
        .byte   $8F
        stx     L8F8E
        .byte   $FC
        .byte   $FC
        sta     $94,x
        sty     $95,x
        .byte   $FC
        .byte   $FC
LC783:  .byte   $DC
        .byte   $DC
        .byte   $DF
        .byte   $DF
        .byte   $DC
        .byte   $DC
        cmp     LDEDD,x
        .byte   $DE
LC78D:  .byte   $FC
        .byte   $FC
        .byte   $B2
        .byte   $B3
        ldy     $B5,x
        .byte   $FC
        .byte   $FC
        ldx     $B3,y
        .byte   $B7
        lda     $FC,x
        .byte   $FC
        bvs     LC80E
        .byte   $72
        .byte   $73
        .byte   $FC
        .byte   $FC
        ror     L6F6E
        .byte   $6F
        .byte   $FC
        .byte   $FC
        adc     L6F6D
        .byte   $6F
        .byte   $FC
        .byte   $FC
        .byte   $6F
        .byte   $6F
        ror     LFC6E
        .byte   $FC
        .byte   $6F
        .byte   $6F
        adc     LFC6D
        .byte   $FC
        .byte   $F4
        .byte   $F4
        sbc     $F5,x
        .byte   $FC
        .byte   $FC
        .byte   $F4
        .byte   $F4
        sbc     $F5,x
        .byte   $FC
        .byte   $FC
        sbc     $F5,x
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $FC
        sbc     $F5,x
        .byte   $F4
        .byte   $F4
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $EF
        .byte   $EF
        lda     LBBB8,y
        tsx
        ldy     LFCBC,x
        .byte   $FC
        .byte   $BD
        .byte   $BD
LC7DF:  .byte   $BC
        .byte   $BC
LC7E1:  .byte   $7A
        .byte   $7B
        .byte   $DA
        .byte   $DB
LC7E5:  cld
        cld
        cmp     LCECD
        dec     LCFCF
        adc     LD17C,x
        sty     LD2D3
        adc     L897C,x
        dey
        .byte   $8B
        txa
        cmp     $D4,x
        .byte   $E3
        .byte   $E2
        .byte   $D3
        .byte   $D2
        cmp     $D4,x
        .byte   $E3
        .byte   $E2
        .byte   $8B
        txa
        sbc     $E5
        inc     $E6
        .byte   $EB
        .byte   $EB
        cpx     LEDEC
LC80E:  sbc     LEEEE
        .byte   $FC
        .byte   $FC
        bne     LC7E5
        .byte   $D7
        .byte   $D7
        .byte   $BF
        ldx     LC0C1,y
        .byte   $C2
        .byte   $FC
        cpy     $C3
        dec     $C5
        iny
        .byte   $C7
        .byte   $BF
        ldx     LC9CA,y
        .byte   $C2
LC828:  .byte   $FC
        cpy     $C3
        dec     $C5
        .byte   $CC
LC82E:  .byte   $CB
        .byte   $FC
        .byte   $FC
LC831:  inx
        .byte   $E7
LC833:  nop
        sbc     #$F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F2
        .byte   $F2
        sbc     ($F1),y
        sbc     ($F1),y
        .byte   $FC
        .byte   $FC
        beq     LC833
LC843:  .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $0C
        .byte   $0C
        brk
        .byte   $0C
        .byte   $0C
        tay
        .byte   $54
LC84E:  .byte   $3C
        nop
        clc
LC851:  pha
        pha
        cpy     $18C0
        clc
LC857:  clc
        bcc     LC87E
        .byte   $FF
        pha
        .byte   $9C
LC85D:  .byte   $D2
        cld
        beq     LC857
        .byte   $FC
        ora     ($02,x)
        .byte   $03
        .byte   $02
LC866:  ora     ($01,x)
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($01,x)
        .byte   $02
        .byte   $02
        and     ($01,x)
LC871:  .byte   $02
        ora     ($01,x)
LC874:  .byte   $02
        .byte   $FF
        .byte   $02
LC877:  .byte   $02
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $02
        php
LC87E:  clc
        clc
        ora     $191A,y
        clc
        lda     $CF,x
        sta     $02
LC888:  lda     $03AE
        sta     $05
        ldy     L06E5,x
        sty     $EB
        lda     #$00
        sta     $0109
        lda     $46,x
        sta     $03
        lda     $03C5,x
        sta     $04
        lda     $16,x
        cmp     #$0D
        bne     LC8B0
        ldy     $58,x
        bmi     LC8B0
        ldy     $078A,x
        beq     LC8B0
        rts

LC8B0:  lda     $1E,x
        sta     $ED
        and     #$1F
        tay
        lda     $16,x
        cmp     #$35
        bne     LC8C5
        ldy     #$00
        lda     #$01
        sta     $03
        lda     #$15
LC8C5:  cmp     #$33
        bne     LC8DC
        dec     $02
        lda     #$03
        ldy     $078A,x
        beq     LC8D4
        ora     #$20
LC8D4:  sta     $04
        ldy     #$00
        sty     $ED
        lda     #$08
LC8DC:  .byte   $C9
LC8DD:  .byte   $32
        bne     LC8E8
        ldy     #$03
        ldx     $070E
        lda     LE87F,x
LC8E8:  sta     $EF
        sty     $EC
        ldx     $08
        cmp     #$0C
        bne     LC8F9
        lda     $A0,x
        bmi     LC8F9
        inc     $0109
LC8F9:  lda     $036A
        beq     LC907
        ldy     #$16
        cmp     #$01
        beq     LC905
        iny
LC905:  sty     $EF
LC907:  ldy     $EF
        cpy     #$06
LC90B:  bne     LC92A
        lda     $1E,x
        cmp     #$02
        bcc     LC917
        ldx     #$04
        stx     $EC
LC917:  and     #$20
        ora     $0747
        bne     LC92A
        lda     $09
        and     #$08
        bne     LC92A
        lda     $03
        eor     #$03
        sta     $03
LC92A:  lda     LE862,y
        ora     $04
        sta     $04
        lda     LE847,y
        tax
        ldy     $EC
        lda     $036A
LC93A:  beq     LC96C
        cmp     #$01
        bne     LC953
LC940:  lda     $0363
        bpl     LC947
        ldx     #$DE
LC947:  lda     $ED
        and     #$20
        beq     LC950
        stx     $0109
LC950:  jmp     LEA52

LC953:  lda     $0363
        and     #$01
        beq     LC95C
        ldx     #$E4
LC95C:  lda     $ED
        and     #$20
        beq     LC950
        lda     $02
        sec
        sbc     #$10
        sta     $02
        jmp     LE94D

LC96C:  cpx     #$24
        bne     LC981
        cpy     #$05
        bne     LC97E
        ldx     #$30
        lda     #$02
        sta     $03
        lda     #$05
        sta     $EC
LC97E:  jmp     LE9D1

LC981:  cpx     #$90
        bne     LC997
        lda     $ED
        .byte   $29
LC988:  jsr     L09D0
        lda     $078F
        cmp     #$10
        bcs     LC994
        ldx     #$96
LC994:  jmp     LEA3E

LC997:  lda     $EF
        cmp     #$04
        bcs     LC9AD
        .byte   $C0
LC99E:  .byte   $02
        bcc     LC9AD
        ldx     #$5A
        ldy     $EF
        cpy     #$02
        bne     LC9AD
        ldx     #$7E
        inc     $02
LC9AD:  lda     $EC
        cmp     #$04
        bne     LC9D1
        ldx     #$72
        inc     $02
        ldy     $EF
        cpy     #$02
        beq     LC9C1
        ldx     #$66
        inc     $02
LC9C1:  cpy     #$06
        bne     LC9D1
        ldx     #$54
        lda     $ED
        .byte   $29
LC9CA:  jsr     L04D0
        ldx     #$8A
        dec     $02
LC9D1:  ldy     $08
        .byte   $A5
LC9D4:  .byte   $EF
        .byte   $C9
LC9D6:  ora     $D0
        .byte   $0C
        .byte   $A5
LC9DA:  sbc     $24F0
        and     #$08
        beq     LCA3E
        .byte   $A2
LC9E2:  ldy     $D0,x
        .byte   $1C
        cpx     #$48
        beq     LCA01
        lda     $0796,y
        cmp     #$05
        bcs     LCA3E
        cpx     #$3C
        bne     LCA01
        cmp     #$01
        beq     LCA3E
        inc     $02
        inc     $02
        inc     $02
        jmp     LEA30

LCA01:  lda     $EF
        cmp     #$06
        beq     LCA3E
        cmp     #$08
        beq     LCA3E
        cmp     #$0C
        beq     LCA3E
        cmp     #$18
        bcs     LCA3E
        ldy     #$00
        .byte   $C9
LCA16:  ora     $D0,x
        bpl     LC9E2
        lda     $075F
        cmp     #$07
        bcs     LCA3E
        ldx     #$A2
        lda     #$03
        sta     $EC
        bne     LCA3E
        lda     $09
        and     LE87D,y
        bne     LCA3E
        lda     $ED
        and     #$A0
        ora     $0747
        bne     LCA3E
        txa
        clc
        adc     #$06
LCA3D:  tax
LCA3E:  lda     $ED
        and     #$20
        beq     LCA52
        lda     $EF
        cmp     #$04
        bcc     LCA52
        ldy     #$01
        sty     $0109
        dey
        sty     $EC
LCA52:  ldy     $EB
        jsr     LEBB1
        jsr     LEBB1
        jsr     LEBB1
        .byte   $A6
LCA5E:  php
        ldy     L06E5,x
        lda     $EF
        cmp     #$08
        bne     LCA6B
LCA68:  jmp     LEB6B

LCA6B:  lda     $0109
        beq     LCAAD
        lda     $0202,y
        ora     #$80
        iny
        iny
        jsr     LE5BC
        dey
        dey
        tya
LCA7D:  tax
        lda     $EF
        cmp     #$05
        beq     LCA91
        cmp     #$11
        beq     LCA91
        cmp     #$15
        bcs     LCA91
        txa
        clc
        adc     #$08
        tax
LCA91:  lda     $0201,x
        pha
        lda     $0205,x
        pha
        lda     $0211,y
        sta     $0201,x
        lda     $0215,y
        sta     $0205,x
        pla
        sta     $0215,y
        pla
        sta     $0211,y
LCAAD:  lda     $036A
        bne     LCA68
        lda     $EF
        ldx     $EC
        cmp     #$05
        bne     LCABD
        jmp     LEB6B

LCABD:  cmp     #$07
        beq     LCADE
        cmp     #$0D
        beq     LCADE
        cmp     #$0C
        beq     LCADE
        cmp     #$12
        bne     LCAD1
        cpx     #$05
        bne     LCB19
LCAD1:  cmp     #$15
        bne     LCADA
        lda     #$42
        sta     $0216,y
LCADA:  cpx     #$02
        bcc     LCB19
LCADE:  lda     $036A
        bne     LCB19
        lda     $0202,y
        and     #$A3
        sta     $0202,y
LCAEB:  .byte   $99
LCAEC:  asl     a
        .byte   $02
        sta     $0212,y
        ora     #$40
        cpx     #$05
        bne     LCAF9
        ora     #$80
LCAF9:  sta     $0206,y
        sta     $020E,y
LCAFF:  sta     $0216,y
        cpx     #$04
        bne     LCB19
        lda     $020A,y
        ora     #$80
        sta     $020A,y
        sta     $0212,y
        ora     #$40
        sta     $020E,y
        sta     $0216,y
LCB19:  lda     $EF
        cmp     #$11
        bne     LCB55
        lda     $0109
        bne     LCB45
        .byte   $B9
LCB25:  .byte   $12
        .byte   $02
        and     #$81
        sta     $0212,y
        lda     $0216,y
        ora     #$41
        sta     $0216,y
        ldx     $078F
        cpx     #$10
        bcs     LCB6B
        sta     $020E,y
        and     #$81
        sta     $020A,y
        bcc     LCB6B
LCB45:  lda     $0202,y
        and     #$81
        .byte   $99
LCB4B:  .byte   $02
        .byte   $02
LCB4D:  lda     $0206,y
        ora     #$41
        sta     $0206,y
LCB55:  lda     $EF
        cmp     #$18
        bcc     LCB6B
        lda     #$82
        sta     $020A,y
        sta     $0212,y
        ora     #$40
        sta     $020E,y
        sta     $0216,y
LCB6B:  .byte   $A6
LCB6C:  php
        lda     $03D1
        lsr     a
        lsr     a
        lsr     a
        pha
        bcc     LCB7B
        lda     #$04
        jsr     LEBC8
LCB7B:  pla
        lsr     a
        pha
        bcc     LCB85
        lda     #$00
        jsr     LEBC8
LCB85:  pla
        lsr     a
        lsr     a
        pha
        bcc     LCB90
        lda     #$10
LCB8D:  jsr     LEBBE
LCB90:  pla
        lsr     a
        pha
        bcc     LCB9A
        lda     #$08
        jsr     LEBBE
LCB9A:  pla
        lsr     a
        bcc     LCBB0
        jsr     LEBBE
        lda     $16,x
        cmp     #$0C
        beq     LCBB0
        lda     $B6,x
        cmp     #$02
        bne     LCBB0
        jsr     LC99E
LCBB0:  rts

        lda     LE745,x
        sta     L0000
        lda     LE746,x
        sta     $01
        jmp     LF289

        clc
        adc     L06E5,x
        tay
        lda     #$F8
        jmp     LE5C8

        clc
        adc     L06E5,x
        tay
        jsr     LEC51
        sta     $0210,y
        rts

        sta     $85
        stx     $86
        lda     $03BC
        sta     $02
        lda     $03B1
        sta     $05
        lda     #$03
        .byte   $85
LCBE5:  .byte   $04
        lsr     a
        sta     $03
        ldy     $06EC,x
        ldx     #$00
LCBEE:  lda     LEBD4,x
        sta     L0000
        lda     LEBD5,x
        jsr     LEBB9
        cpx     #$04
        bne     LCBEE
        ldx     $08
        .byte   $BC
        .byte   $EC
LCC01:  asl     $AD
        lsr     LC907
        ora     ($F0,x)
        php
        lda     #$86
        sta     $0201,y
        sta     $0205,y
        lda     $03E8,x
        cmp     #$C4
        bne     LCC3C
        lda     #$87
        iny
LCC1B:  jsr     LE5C2
        dey
        lda     #$03
        ldx     $074E
        dex
        beq     LCC28
        lsr     a
LCC28:  ldx     $08
        sta     $0202,y
        ora     #$40
        sta     $0206,y
        ora     #$80
        sta     $020E,y
        and     #$83
        sta     $020A,y
LCC3C:  lda     $03D4
        pha
        and     #$04
        beq     LCC4C
        lda     #$F8
        sta     $0204,y
        sta     $020C,y
LCC4C:  pla
        and     #$08
        beq     LCC59
        lda     #$F8
        sta     $0200,y
        sta     $0208,y
LCC59:  rts

        lda     #$02
        sta     L0000
        lda     #$75
        ldy     $0E
        cpy     #$05
        beq     LCC6C
        lda     #$03
        sta     L0000
        lda     #$84
LCC6C:  ldy     $06EC,x
        iny
        jsr     LE5C2
        lda     $09
        asl     a
        asl     a
        asl     a
        asl     a
        and     #$C0
        ora     L0000
        iny
        jsr     LE5C2
        dey
        dey
        lda     $03BC
        jsr     LE5C8
        lda     $03B1
        sta     $0203,y
        lda     $03F1,x
        sec
        sbc     $071C
        sta     L0000
        sec
        sbc     $03B1
        adc     L0000
        adc     #$06
        sta     $0207,y
        lda     $03BD
        sta     $0208,y
        sta     $020C,y
        lda     $03B2
        sta     $020B,y
LCCB2:  lda     L0000
        sec
        sbc     $03B2
        adc     L0000
        adc     #$06
        sta     $020F,y
        lda     $03D4
        jsr     LEC4D
        lda     $03D4
        asl     a
        bcc     LCCD0
        lda     #$F8
LCCCD:  jsr     LE5C8
LCCD0:  lda     L0000
        bpl     LCCE4
        lda     $0203,y
        cmp     $0207,y
        bcc     LCCE4
        lda     #$F8
        sta     $0204,y
        sta     $020C,y
LCCE4:  rts

        ldy     $06F1,x
        lda     $03BA
        sta     $0200,y
        lda     $03AF
        sta     $0203,y
        lda     $09
        lsr     a
        lsr     a
        pha
        and     #$01
        eor     #$64
        sta     $0201,y
        pla
        lsr     a
        lsr     a
        lda     #$02
        bcc     LCD09
        ora     #$C0
LCD09:  sta     $0202,y
        rts

        pla
        .byte   $67
        ror     $BC
        cpx     LB506
        bit     $F6
        bit     $4A
        and     #$07
        cmp     #$03
        bcs     LCD68
        tax
        lda     LED0D,x
        iny
        jsr     LE5C2
        dey
        ldx     $08
        lda     $03BA
        sec
        sbc     #$04
        .byte   $99
LCD30:  brk
        .byte   $02
        .byte   $99
        php
LCD34:  .byte   $02
        clc
        adc     #$08
        sta     $0204,y
        sta     $020C,y
        .byte   $AD
        .byte   $AF
LCD40:  .byte   $03
        sec
LCD42:  sbc     #$04
        sta     $0203,y
        sta     $0207,y
        clc
        adc     #$08
        sta     $020B,y
        sta     $020F,y
        lda     #$02
        sta     $0202,y
        lda     #$82
        sta     $0206,y
        lda     #$42
        sta     $020A,y
        lda     #$C2
        sta     $020E,y
        rts

LCD68:  lda     #$00
        sta     $24,x
        rts

        ldy     L06E5,x
        lda     #$5B
        iny
        jsr     LE5BC
        iny
        lda     #$02
        jsr     LE5BC
        dey
        dey
        lda     $03AE
        sta     $0203,y
        sta     $020F,y
        clc
        adc     #$08
        sta     $0207,y
        sta     $0213,y
        clc
        adc     #$08
        sta     $020B,y
        sta     $0217,y
        lda     $CF,x
        tax
        pha
        cpx     #$20
        bcs     LCDA3
        lda     #$F8
LCDA3:  jsr     LE5C5
        pla
        clc
        adc     #$80
        tax
        cpx     #$20
        bcs     LCDB1
        lda     #$F8
LCDB1:  sta     $020C,y
        sta     $0210,y
        sta     $0214,y
        lda     $03D1
        pha
        and     #$08
        .byte   $F0
LCDC1:  php
        lda     #$F8
LCDC4:  sta     $0200,y
        sta     $020C,y
        pla
LCDCB:  pha
        and     #$04
        beq     LCDD8
        lda     #$F8
        sta     $0204,y
        sta     $0210,y
LCDD8:  pla
        and     #$02
        beq     LCDE5
        lda     #$F8
        .byte   $99
LCDE0:  php
        .byte   $02
        sta     $0214,y
LCDE5:  ldx     $08
        rts

        ldy     $B5
        dey
        .byte   $D0
LCDEC:  jsr     LD3AD
        .byte   $03
        and     #$08
        bne     LCE0D
        ldy     $06EE,x
        lda     $03B0
        sta     $0203,y
        lda     $03BB
        .byte   $99
        brk
LCE02:  .byte   $02
        lda     #$74
        sta     $0201,y
        lda     #$02
        .byte   $99
LCE0B:  .byte   $02
        .byte   $02
LCE0D:  rts

LCE0E:  jsr     LC828
        clc
        brk
        rti

        bvc     LCE6E
        .byte   $80
        dey
        clv
        sei
        rts

        ldy     #$B0
        clv
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     L0006
        .byte   $07
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     $0F0E
        bpl     LCE41
        .byte   $12
        .byte   $13
        .byte   $14
        ora     $16,x
        .byte   $17
        clc
        .byte   $19
LCE38:  .byte   $1A
        .byte   $1B
        .byte   $1C
        ora     $1F1E,x
        jsr     L2221
LCE41:  .byte   $23
        .byte   $24
LCE43:  and     $26
        .byte   $27
        php
        ora     #$28
        and     #$2A
LCE4B:  .byte   $2B
        bit     $082D
        ora     #$0A
        .byte   $0B
        .byte   $0C
        bmi     LCE81
        .byte   $2D
        php
LCE57:  ora     #$0A
        .byte   $0B
        rol     $2C2F
        and     $0908
        plp
        and     #$2A
        .byte   $2B
        .byte   $5C
        eor     $0908,x
        asl     a
        .byte   $0B
        .byte   $0C
        ora     $5F5E
LCE6E:  .byte   $FC
        .byte   $FC
        php
        ora     #$58
        eor     $5A5A,y
        php
        ora     #$28
        and     #$2A
        .byte   $2B
        asl     LFC0F
        .byte   $FC
        .byte   $FC
LCE81:  .byte   $FC
        .byte   $32
        .byte   $33
        .byte   $34
        and     $FC,x
        .byte   $FC
        .byte   $FC
        .byte   $FC
        rol     $37,x
        sec
        and     LFCFC,y
        .byte   $FC
        .byte   $FC
        .byte   $3A
        .byte   $37
LCE94:  .byte   $3B
        .byte   $3C
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        and     $3F3E,x
        rti

        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $32
        eor     ($42,x)
        .byte   $43
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $32
        .byte   $33
        .byte   $44
        eor     $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $32
        .byte   $33
        .byte   $44
        .byte   $47
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $32
        .byte   $33
        pha
        .byte   $49
LCEBE:  .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $32
        .byte   $33
        bcc     LCE57
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $3A
        .byte   $37
        .byte   $92
LCECD:  .byte   $93
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $9E
        .byte   $9E
        .byte   $9F
        .byte   $9F
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $3A
        .byte   $37
        .byte   $4F
        .byte   $4F
        .byte   $FC
        .byte   $FC
        brk
        ora     ($4C,x)
        eor     L4E4E
        brk
        ora     ($4C,x)
        eor     $4A4A
        .byte   $4B
LCEED:  .byte   $4B
        and     ($46),y
        lda     $079E
        beq     LCEFA
        lda     $09
        lsr     a
        bcs     LCF3A
LCEFA:  lda     $0E
        cmp     #$0B
        beq     LCF47
        lda     $070B
        bne     LCF41
        ldy     $0704
        beq     LCF3B
        lda     $1D
        cmp     #$00
        beq     LCF3B
        jsr     LEF3B
        lda     $09
        and     #$04
        bne     LCF3A
        tax
        ldy     $06E4
        lda     $33
        lsr     a
        bcs     LCF26
        iny
        iny
        iny
        iny
LCF26:  lda     $0754
        beq     LCF34
        lda     $0219,y
        cmp     LEEBC
        beq     LCF3A
        inx
LCF34:  lda     LEEEE,x
        sta     $0219,y
LCF3A:  rts

LCF3B:  jsr     LEFF3
        jmp     LEF4C

LCF41:  jsr     LF0B7
        jmp     LEF4C

LCF47:  ldy     #$0E
        lda     LEE0E,y
        sta     $06D5
        lda     #$04
        jsr     LEFC5
        jsr     LF0F0
        lda     $0711
        beq     LCF81
        ldy     #$00
        lda     $0781
        cmp     $0711
        sty     $0711
        bcs     LCF81
        sta     $0711
        ldy     #$07
        lda     LEE0E,y
        sta     $06D5
        ldy     #$04
        lda     $57
        ora     $0C
        beq     LCF7D
        dey
LCF7D:  tya
        jsr     LEFC5
LCF81:  lda     $03D0
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     L0000
        ldx     #$03
        lda     $06E4
        clc
        adc     #$18
        tay
LCF93:  lda     #$F8
        lsr     L0000
        bcc     LCF9C
        jsr     LE5C8
LCF9C:  tya
        sec
        sbc     #$08
        tay
        dex
        bpl     LCF93
        rts

LCFA5:  cli
        ora     (L0000,x)
        rts

        .byte   $FF
        .byte   $04
        ldx     #$05
LCFAD:  lda     LEFA5,x
        sta     $02,x
        dex
LCFB3:  bpl     LCFAD
LCFB5:  ldx     #$B8
        ldy     #$04
        jsr     LEFE3
        lda     $0226
        ora     #$40
LCFC1:  sta     $0222
        rts

        sta     $07
        lda     $03AD
        sta     $0755
        sta     $05
LCFCF:  lda     $03B8
        sta     $02
        lda     $33
        sta     $03
        lda     $03C4
        sta     $04
        ldx     $06D5
        ldy     $06E4
LCFE3:  lda     LEE1E,x
        sta     L0000
        lda     LEE1F,x
        jsr     LEBB9
        dec     $07
        bne     LCFE3
        rts

        lda     $1D
        cmp     #$03
        beq     LD04B
        cmp     #$02
        beq     LD03B
        cmp     #$01
LCFFF:  bne     LD012
        lda     $0704
        bne     LD057
        .byte   $A0
LD007:  asl     $AD
        .byte   $14
        .byte   $07
        bne     LD02F
        ldy     #$00
        jmp     LF02F

LD012:  ldy     #$06
        lda     $0714
        bne     LD02F
        ldy     #$02
        lda     $57
        ora     $0C
        beq     LD02F
LD021:  lda     $0700
        cmp     #$0A
        bcc     LD043
        .byte   $A5
LD029:  eor     $25
        .byte   $33
        bne     LD043
        iny
LD02F:  jsr     LF098
        lda     #$00
        sta     $070D
        .byte   $B9
        .byte   $0E
LD039:  .byte   $EE
        rts

LD03B:  ldy     #$04
        jsr     LF098
        jmp     LF069

LD043:  ldy     #$04
        jsr     LF098
        jmp     LF06F

LD04B:  ldy     #$05
        lda     $9F
        beq     LD02F
        jsr     LF098
        jmp     LF074

LD057:  ldy     #$01
        jsr     LF098
        lda     $0782
        ora     $070D
        bne     LD06F
        lda     $0A
        asl     a
        bcs     LD06F
        lda     $070D
        jmp     LF0D7

LD06F:  lda     #$03
        jmp     LF076

        lda     #$02
        sta     L0000
        jsr     LF069
        pha
        lda     $0781
        bne     LD096
        lda     $070C
        sta     $0781
        lda     $070D
        clc
        adc     #$01
        cmp     L0000
        bcc     LD093
        lda     #$00
LD093:  sta     $070D
LD096:  pla
        rts

        lda     $0754
        beq     LD0A2
        tya
        clc
        adc     #$08
        tay
LD0A2:  rts

        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     ($02,x)
        brk
        ora     ($02,x)
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        .byte   $02
        brk
        ldy     $070D
        lda     $09
        and     #$03
        bne     LD0CD
        iny
        cpy     #$0A
        bcc     LD0CA
        ldy     #$00
        sty     $070B
LD0CA:  sty     $070D
LD0CD:  lda     $0754
        .byte   $D0
LD0D1:  .byte   $0C
        lda     LF0A3,y
        ldy     #$0F
LD0D7:  asl     a
        asl     a
        asl     a
        adc     LEE0E,y
        rts

LD0DE:  tya
        clc
        adc     #$0A
        tax
        ldy     #$09
        lda     LF0A3,x
        bne     LD0EC
        ldy     #$01
LD0EC:  lda     LEE0E,y
        rts

        ldy     $06E4
        lda     $0E
        cmp     #$0B
        beq     LD10C
        lda     $06D5
        cmp     #$50
        beq     LD11E
LD100:  .byte   $C9
LD101:  clv
        beq     LD11E
        cmp     #$C0
        beq     LD11E
        cmp     #$C8
        bne     LD130
LD10C:  lda     $0212,y
        and     #$3F
LD111:  sta     $0212,y
        lda     $0216,y
        and     #$3F
        ora     #$40
        sta     $0216,y
LD11E:  lda     $021A,y
        and     #$3F
        sta     $021A,y
        lda     $021E,y
        and     #$3F
        ora     #$40
        sta     $021E,y
LD130:  rts

        ldx     #$00
        ldy     #$00
        jmp     LF149

        ldy     #$01
        jsr     LF1AF
        ldy     #$03
        jmp     LF149

        .byte   $A0
LD143:  brk
        jsr     LF1AF
        ldy     #$02
        jsr     LF178
        ldx     $08
        rts

        ldy     #$02
        jsr     LF1AF
        ldy     #$06
        jmp     LF149

        lda     #$01
        ldy     #$01
        jmp     LF16C

        lda     #$09
        ldy     #$04
        jsr     LF16C
        inx
        inx
        lda     #$09
        iny
        stx     L0000
        clc
        adc     L0000
        tax
        jsr     LF178
        ldx     $08
        rts

        lda     $CE,x
        .byte   $99
        clv
LD17C:  .byte   $03
        lda     $86,x
        sec
        sbc     $071C
        .byte   $99
LD184:  lda     L6003
        ldx     #$00
        ldy     #$00
        jmp     LF1C7

        ldy     #$00
        jsr     LF1AF
        ldy     #$02
        jmp     LF1C7

        .byte   $A0
LD199:  ora     (L0020,x)
        .byte   $AF
        sbc     ($A0),y
        .byte   $03
        .byte   $4C
        .byte   $C7
LD1A1:  sbc     ($A0),y
        .byte   $02
        jsr     LF1AF
        ldy     #$06
        jmp     LF1C7

        .byte   $07
        asl     $0D,x
        txa
        clc
        adc     LF1AC,y
        tax
        rts

        lda     #$01
        ldy     #$01
        jmp     LF1C1

        lda     #$09
        ldy     #$04
        stx     L0000
        clc
        adc     L0000
        tax
        tya
        pha
        jsr     LF1DE
        asl     a
        asl     a
        asl     a
        asl     a
        ora     L0000
        sta     L0000
        pla
        tay
        lda     L0000
        sta     $03D0,y
        ldx     $08
        rts

        jsr     LF1FD
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     L0000
        jmp     LF240

        .byte   $7F
        .byte   $3F
        .byte   $1F
        .byte   $0F
        .byte   $07
LD1EF:  .byte   $03
        ora     (L0000,x)
        .byte   $80
        cpy     #$E0
        beq     LD1EF
        .byte   $FC
        inc     $07FF,x
        .byte   $0F
        .byte   $07
        stx     $04
        ldy     #$01
LD201:  lda     $071C,y
        sec
        sbc     $86,x
        sta     $07
        lda     $071A,y
        sbc     $6D,x
        ldx     LF1FA,y
        cmp     #$00
        bmi     LD225
        ldx     LF1FB,y
        cmp     #$01
        bpl     LD225
        lda     #$38
        sta     L0006
        lda     #$08
        jsr     LF274
LD225:  lda     LF1EA,x
        ldx     $04
        cmp     #$00
        bne     LD231
        dey
        bpl     LD201
LD231:  rts

        brk
        php
        .byte   $0C
        asl     $070F
        .byte   $03
        ora     (L0000,x)
        .byte   $04
        brk
        .byte   $04
        .byte   $FF
        brk
        stx     $04
        ldy     #$01
LD244:  lda     LF23E,y
        sec
        sbc     $CE,x
        sta     $07
        lda     #$01
        sbc     $B5,x
        ldx     LF23B,y
        cmp     #$00
        bmi     LD267
        ldx     LF23C,y
        cmp     #$01
        bpl     LD267
        lda     #$20
        sta     L0006
        lda     #$04
        jsr     LF274
LD267:  lda     LF232,x
        ldx     $04
        cmp     #$00
        bne     LD273
        dey
        bpl     LD244
LD273:  rts

        sta     $05
        lda     $07
        cmp     L0006
        bcs     LD288
        lsr     a
        lsr     a
        lsr     a
        and     #$07
        cpy     #$01
        bcs     LD287
        adc     $05
LD287:  tax
LD288:  rts

        lda     $03
        lsr     a
        lsr     a
        lda     L0000
        bcc     LD29D
        sta     $0205,y
        .byte   $A5
LD295:  ora     ($99,x)
        ora     ($02,x)
LD299:  lda     #$40
        bne     LD2A7
LD29D:  sta     $0201,y
        lda     $01
        sta     $0205,y
        lda     #$00
LD2A7:  ora     $04
        sta     $0202,y
        sta     $0206,y
        lda     $02
        sta     $0200,y
        sta     $0204,y
        lda     $05
        sta     $0203,y
        clc
        adc     #$08
        sta     $0207,y
        lda     $02
        clc
        adc     #$08
        sta     $02
        tya
        clc
        adc     #$08
        tay
        inx
        inx
        rts

        .byte   $AD
        .byte   $70
LD2D3:  .byte   $07
        bne     LD2DA
        sta     $4015
        rts

LD2DA:  lda     #$FF
        sta     $4017
        lda     #$0F
        sta     $4015
        lda     $07C6
        bne     LD2EF
        lda     $FA
        cmp     #$01
        bne     LD34C
LD2EF:  lda     $07B2
        bne     LD317
        lda     $FA
        beq     LD35E
        sta     $07B2
        sta     $07C6
LD2FE:  lda     #$00
LD300:  sta     $4015
        sta     $F1
        sta     $F2
        sta     $F3
        lda     #$0F
        sta     $4015
        lda     #$2A
        sta     $07BB
LD313:  lda     #$44
        bne     LD328
LD317:  lda     $07BB
        cmp     #$24
        beq     LD326
        cmp     #$1E
        beq     LD313
        cmp     #$18
        bne     LD32F
LD326:  lda     #$64
LD328:  ldx     #$84
        ldy     #$7F
        .byte   $20
LD32D:  .byte   $89
        .byte   $F3
LD32F:  dec     $07BB
        bne     LD35E
        lda     #$00
        sta     $4015
        lda     $07B2
        cmp     #$02
        bne     LD345
        lda     #$00
        sta     $07C6
LD345:  lda     #$00
        sta     $07B2
        .byte   $F0
LD34B:  .byte   $12
LD34C:  jsr     LF41C
        jsr     LF57D
        jsr     LF668
        jsr     LF695
        lda     #$00
        sta     $FB
        sta     $FC
LD35E:  lda     #$00
        sta     $FF
        sta     $FE
        sta     $FD
        sta     $FA
        ldy     $07C0
        lda     $F4
        and     #$03
        beq     LD378
        inc     $07C0
        cpy     #$30
        bcc     LD37E
LD378:  tya
        beq     LD37E
        dec     $07C0
LD37E:  sty     $4011
        rts

        sty     $4001
        stx     $4000
        rts

        jsr     LF382
        ldx     #$00
LD38E:  tay
        lda     LFF01,y
        beq     LD39F
        sta     $4002,x
        lda     LFF00,y
LD39A:  ora     #$08
        sta     $4003,x
LD39F:  rts

        stx     $4004
        sty     $4005
        rts

        jsr     LF3A0
        ldx     #$04
        .byte   $D0
LD3AD:  cpx     #$A2
        php
        bne     LD38E
        .byte   $9F
        .byte   $9B
        tya
        stx     $95,y
        sty     $92,x
        bcc     LD34B
        txs
        .byte   $97
        sta     $93,x
        .byte   $92
LD3C0:  lda     #$40
        sta     $07BB
        lda     #$62
        jsr     LF38C
        ldx     #$99
        bne     LD3F3
LD3CE:  lda     #$26
        bne     LD3D4
LD3D2:  lda     #$18
LD3D4:  ldx     #$82
        ldy     #$A7
LD3D8:  jsr     LF389
        lda     #$28
        sta     $07BB
LD3E0:  .byte   $AD
LD3E1:  .byte   $BB
        .byte   $07
        cmp     #$25
        bne     LD3ED
        ldx     #$5F
        ldy     #$F6
        bne     LD3F5
LD3ED:  cmp     #$20
        bne     LD41A
        ldx     #$48
LD3F3:  ldy     #$BC
LD3F5:  jsr     LF382
        bne     LD41A
LD3FA:  lda     #$05
        ldy     #$99
        bne     LD404
LD400:  lda     #$0A
        ldy     #$93
LD404:  ldx     #$9E
        sta     $07BB
        lda     #$0C
        jsr     LF389
LD40E:  lda     $07BB
        cmp     #$06
        bne     LD41A
        lda     #$BB
        sta     $4001
LD41A:  bne     LD47C
        ldy     $FF
        beq     LD440
        sty     $F1
        bmi     LD3CE
        lsr     $FF
        bcs     LD3D2
        lsr     $FF
        bcs     LD400
        lsr     $FF
        bcs     LD45C
        .byte   $46
LD431:  .byte   $FF
        bcs     LD47E
        lsr     $FF
        bcs     LD4B7
        lsr     $FF
        bcs     LD3FA
        lsr     $FF
        bcs     LD3C0
LD440:  lda     $F1
        beq     LD45B
        bmi     LD3E0
        lsr     a
        bcs     LD3E0
        lsr     a
        bcs     LD40E
        lsr     a
        bcs     LD46A
        lsr     a
        bcs     LD48E
        lsr     a
        bcs     LD4BC
        lsr     a
        bcs     LD40E
        lsr     a
        bcs     LD4A3
LD45B:  rts

LD45C:  lda     #$0E
        sta     $07BB
        ldy     #$9C
        ldx     #$9E
        lda     #$26
        jsr     LF389
LD46A:  ldy     $07BB
        .byte   $B9
        .byte   $B1
LD46F:  .byte   $F3
        sta     $4000
        cpy     #$06
        bne     LD47C
        lda     #$9E
        sta     $4002
LD47C:  bne     LD4A3
LD47E:  lda     #$0E
        ldy     #$CB
        ldx     #$9F
        sta     $07BB
        lda     #$28
        jsr     LF389
        bne     LD4A3
LD48E:  ldy     $07BB
        cpy     #$08
        bne     LD49E
        lda     #$A0
        sta     $4002
        lda     #$9F
        bne     LD4A0
LD49E:  lda     #$90
LD4A0:  sta     $4000
LD4A3:  dec     $07BB
        bne     LD4B6
        ldx     #$00
        stx     $F1
        ldx     #$0E
        stx     $4015
        ldx     #$0F
        stx     $4015
LD4B6:  rts

LD4B7:  lda     #$2F
        sta     $07BB
LD4BC:  lda     $07BB
        lsr     a
        bcs     LD4D2
        lsr     a
        bcs     LD4D2
        and     #$02
LD4C7:  beq     LD4D2
        ldy     #$91
        ldx     #$9A
        lda     #$44
        jsr     LF389
LD4D2:  jmp     LF4A3

        cli
        .byte   $02
        .byte   $54
        lsr     $4E,x
        .byte   $44
        jmp     L4C52

        pha
        rol     $3E36,x
        rol     L0030,x
        plp
        lsr     a
        bvc     LD532
        .byte   $64
        .byte   $3C
        .byte   $32
        .byte   $3C
        .byte   $32
        bit     $3A24
        .byte   $64
        .byte   $3A
        .byte   $34
        bit     $2C22
        .byte   $22
        .byte   $1C
LD4F8:  .byte   $14
        .byte   $14
        .byte   $04
        .byte   $22
        bit     $16
        .byte   $04
        bit     $26
        clc
        .byte   $04
        rol     $28
        .byte   $1A
        .byte   $04
        plp
        rol     a
LD509:  .byte   $1C
        .byte   $04
        rol     a
        bit     L041E
        bit     $202E
        .byte   $04
        rol     $2230
        .byte   $04
        bmi     LD54B
LD519:  lda     #$35
        ldx     #$8D
        bne     LD523
LD51F:  lda     #$06
        ldx     #$98
LD523:  sta     $07BD
        ldy     #$7F
        lda     #$42
        jsr     LF3A7
        lda     $07BD
        cmp     #$30
LD532:  bne     LD539
        lda     #$4E
        sta     $4006
LD539:  bne     LD569
LD53B:  lda     #$20
        sta     $07BD
        ldy     #$94
        lda     #$5E
        bne     LD551
LD546:  lda     $07BD
        cmp     #$18
LD54B:  bne     LD569
        ldy     #$93
        lda     #$18
LD551:  bne     LD5D2
LD553:  lda     #$36
        sta     $07BD
LD558:  lda     $07BD
        lsr     a
        bcs     LD569
        tay
        .byte   $B9
LD560:  .byte   $DA
        .byte   $F4
        ldx     #$5D
        ldy     #$7F
LD566:  jsr     LF3A7
LD569:  dec     $07BD
        bne     LD57C
        ldx     #$00
        stx     $F2
        ldx     #$0D
        stx     $4015
        ldx     #$0F
LD579:  stx     $4015
LD57C:  rts

        lda     $F2
        and     #$40
        bne     LD5E8
LD583:  ldy     $FE
        beq     LD5A7
        sty     $F2
        bmi     LD5C9
        lsr     $FE
        bcs     LD519
        lsr     $FE
        bcs     LD5FD
        lsr     $FE
        bcs     LD601
        lsr     $FE
        bcs     LD53B
        lsr     $FE
        bcs     LD51F
        lsr     $FE
        bcs     LD553
        lsr     $FE
        bcs     LD5E3
LD5A7:  lda     $F2
        beq     LD5C2
        bmi     LD5D4
        lsr     a
        bcs     LD5C3
        lsr     a
        bcs     LD610
        lsr     a
        bcs     LD610
        lsr     a
        bcs     LD546
        lsr     a
        bcs     LD5C3
        lsr     a
        bcs     LD558
        lsr     a
        bcs     LD5E8
LD5C2:  rts

LD5C3:  jmp     LF52D

LD5C6:  jmp     LF569

LD5C9:  lda     #$38
        sta     $07BD
        ldy     #$C4
        lda     #$18
LD5D2:  bne     LD5DF
LD5D4:  lda     $07BD
        cmp     #$08
        bne     LD569
        .byte   $A0
LD5DC:  ldy     $A9
        .byte   $5A
LD5DF:  ldx     #$9F
LD5E1:  bne     LD566
LD5E3:  lda     #$30
        sta     $07BD
LD5E8:  lda     $07BD
        ldx     #$03
LD5ED:  lsr     a
        bcs     LD5C6
LD5F0:  dex
        bne     LD5ED
        tay
        lda     LF4D4,y
        ldx     #$82
        ldy     #$7F
        bne     LD5E1
LD5FD:  lda     #$10
        bne     LD603
LD601:  lda     #$20
LD603:  sta     $07BD
        lda     #$7F
        sta     $4005
        lda     #$00
        sta     $07BE
LD610:  inc     $07BE
        lda     $07BE
        lsr     a
        tay
        cpy     $07BD
        beq     LD629
LD61D:  lda     #$9D
        sta     $4004
        .byte   $B9
LD623:  sbc     L20F4,y
        tax
        .byte   $F3
        rts

LD629:  jmp     LF56E

        ora     ($0E,x)
        asl     $0B0D
        asl     $0C
        .byte   $0F
        asl     a
        ora     #$03
        .byte   $0D
        php
LD639:  ora     $0C06
LD63C:  lda     #$20
        sta     $07BF
LD641:  .byte   $AD
LD642:  .byte   $BF
        .byte   $07
        lsr     a
        bcc     LD659
        tay
        ldx     LF62C,y
        lda     LFFEA,y
LD64E:  sta     $400C
        stx     $400E
        lda     #$18
        sta     $400F
LD659:  dec     $07BF
        bne     LD667
        lda     #$F0
        sta     $400C
        lda     #$00
        sta     $F3
LD667:  rts

        ldy     $FD
        beq     LD676
        sty     $F3
        lsr     $FD
        bcs     LD63C
        lsr     $FD
        bcs     LD681
LD676:  lda     $F3
        beq     LD680
        lsr     a
        bcs     LD641
        lsr     a
        bcs     LD686
LD680:  rts

LD681:  lda     #$40
        sta     $07BF
LD686:  lda     $07BF
        lsr     a
        tay
        ldx     #$0F
        lda     LFFC9,y
        bne     LD64E
LD692:  jmp     LF73B

        lda     $FC
        bne     LD6A5
        lda     $FB
        bne     LD6C9
        lda     $07B1
        ora     $F4
        bne     LD692
        rts

LD6A5:  sta     $07B1
        cmp     #$01
        bne     LD6B2
        jsr     LF4A8
        jsr     LF572
LD6B2:  ldx     $F4
        stx     $07C5
        ldy     #$00
        sty     $07C4
        sty     $F4
        cmp     #$40
        bne     LD6F2
        ldx     #$08
        stx     $07C4
        bne     LD6F2
LD6C9:  cmp     #$04
        bne     LD6D0
        jsr     LF4A8
LD6D0:  ldy     #$10
LD6D2:  sty     $07C7
        .byte   $A0
LD6D6:  brk
        .byte   $8C
        .byte   $B1
LD6D9:  .byte   $07
        sta     $F4
        cmp     #$01
        bne     LD6EE
        inc     $07C7
        ldy     $07C7
        cpy     #$32
        bne     LD6F6
        ldy     #$11
        bne     LD6D2
LD6EE:  ldy     #$08
        sty     $F7
LD6F2:  iny
        lsr     a
        bcc     LD6F2
LD6F6:  lda     LF90D,y
        tay
        lda     LF90E,y
        .byte   $85
LD6FE:  beq     $D6B9
        .byte   $0F
        sbc     $F585,y
        lda     LF910,y
        sta     $F6
        lda     LF911,y
        sta     $F9
        lda     LF912,y
        sta     $F8
        lda     LF913,y
        sta     $07B0
        sta     $07C1
        lda     #$01
        sta     $07B4
        sta     $07B6
        sta     $07B9
        sta     $07BA
        lda     #$00
        sta     $F7
        sta     $07CA
        lda     #$0B
        sta     $4015
LD736:  lda     #$0F
        sta     $4015
        dec     $07B4
LD73E:  bne     LD79F
        ldy     $F7
        inc     $F7
        lda     ($F5),y
        beq     LD74C
        bpl     LD787
        bne     LD77B
LD74C:  lda     $07B1
        cmp     #$40
        bne     LD758
        lda     $07C5
        bne     LD775
LD758:  and     #$04
        bne     LD778
        lda     $F4
        and     #$5F
        bne     LD775
        lda     #$00
        sta     $F4
        sta     $07B1
        sta     $4008
        lda     #$90
        sta     $4000
        sta     $4004
        rts

LD775:  jmp     LF6D5

LD778:  jmp     LF6A5

LD77B:  jsr     LF8CC
        sta     $07B3
        ldy     $F7
        inc     $F7
        lda     ($F5),y
LD787:  ldx     $F2
        bne     LD799
        jsr     LF3AA
        beq     LD793
        jsr     LF8D9
LD793:  .byte   $8D
        .byte   $B5
LD795:  .byte   $07
        jsr     LF3A0
LD799:  lda     $07B3
        sta     $07B4
LD79F:  lda     $F2
        bne     LD7BD
        .byte   $AD
LD7A4:  lda     ($07),y
        and     #$91
        bne     LD7BD
        ldy     $07B5
        beq     LD7B2
        dec     $07B5
LD7B2:  jsr     LF8F5
        sta     $4004
        ldx     #$7F
        stx     $4005
LD7BD:  ldy     $F8
        beq     LD81B
        dec     $07B6
        bne     LD7F8
LD7C6:  .byte   $A4
LD7C7:  sed
        inc     $F8
        lda     ($F5),y
        bne     LD7DD
        lda     #$83
        sta     $4000
        lda     #$94
        sta     $4001
        sta     $07CA
        bne     LD7C6
LD7DD:  jsr     LF8C6
        sta     $07B6
        ldy     $F1
        bne     LD81B
        txa
        and     #$3E
        jsr     LF38C
        beq     LD7F2
        jsr     LF8D9
LD7F2:  sta     $07B7
        jsr     LF382
LD7F8:  lda     $F1
        bne     LD81B
        lda     $07B1
        .byte   $29
LD800:  sta     ($D0),y
        asl     LB7AC
        .byte   $07
        beq     LD80B
        dec     $07B7
LD80B:  jsr     LF8F5
        sta     $4000
LD811:  lda     $07CA
        bne     LD818
        lda     #$7F
LD818:  sta     $4001
LD81B:  lda     $F9
        dec     $07B9
        bne     LD86E
        ldy     $F9
        inc     $F9
        lda     ($F5),y
        beq     LD86B
        bpl     LD83F
        jsr     LF8CC
        sta     $07B8
        lda     #$1F
        sta     $4008
        ldy     $F9
        inc     $F9
        lda     ($F5),y
        beq     LD86B
LD83F:  jsr     LF3AE
        ldx     $07B8
        stx     $07B9
        lda     $07B1
        and     #$6E
        bne     LD855
LD84F:  lda     $F4
LD851:  and     #$0A
LD853:  beq     LD86E
LD855:  txa
        cmp     #$12
        bcs     LD869
        lda     $07B1
        .byte   $29
LD85E:  php
        beq     LD865
        lda     #$0F
        bne     LD86B
LD865:  lda     #$1F
        bne     LD86B
LD869:  lda     #$FF
LD86B:  sta     $4008
LD86E:  lda     $F4
        and     #$F3
        beq     LD8C5
        dec     $07BA
        bne     LD8C5
LD879:  ldy     $07B0
        inc     $07B0
        lda     ($F5),y
LD881:  bne     LD88B
        lda     $07C1
        sta     $07B0
        bne     LD879
LD88B:  jsr     LF8C6
        sta     $07BA
        txa
LD892:  and     #$3E
        beq     LD8BA
        cmp     #$30
        beq     LD8B2
        cmp     #$20
        beq     LD8AA
        and     #$10
        beq     LD8BA
        lda     #$1C
        ldx     #$03
        ldy     #$18
        bne     LD8BC
LD8AA:  lda     #$1C
        ldx     #$0C
        ldy     #$18
        bne     LD8BC
LD8B2:  lda     #$1C
        ldx     #$03
        ldy     #$58
        bne     LD8BC
LD8BA:  lda     #$10
LD8BC:  sta     $400C
        stx     $400E
        sty     $400F
LD8C5:  rts

        tax
        ror     a
        txa
        rol     a
        rol     a
        rol     a
        and     #$07
        clc
        adc     $F0
        adc     $07C4
        tay
        lda     LFF66,y
        rts

        lda     $07B1
        and     #$08
        beq     LD8E4
        lda     #$04
        bne     LD8F0
LD8E4:  lda     $F4
        and     #$7D
        beq     LD8EE
        lda     #$08
        bne     LD8F0
LD8EE:  lda     #$28
LD8F0:  ldx     #$82
        ldy     #$7F
        rts

        lda     $07B1
        and     #$08
        beq     LD900
        lda     LFF96,y
        rts

LD900:  .byte   $A5
LD901:  .byte   $F4
        and     #$7D
        beq     LD90A
        lda     LFF9A,y
        rts

LD90A:  lda     LFFA2,y
        rts

        lda     $59
        .byte   $54
        .byte   $64
        eor     $313C,y
        .byte   $4B
        adc     #$5E
        lsr     $4F
        rol     $8D,x
        rol     $4B,x
        sta     L6969
        .byte   $6F
        adc     $6F,x
        .byte   $7B
        .byte   $6F
        adc     $6F,x
        .byte   $7B
        sta     ($87,x)
        sta     ($8D,x)
LD92D:  adc     #$69
        .byte   $93
        .byte   $99
        .byte   $93
LD932:  .byte   $9F
        .byte   $93
        sta     L9F93,y
        sta     ($87,x)
        sta     ($8D,x)
        .byte   $93
        sta     L9F93,y
        php
        .byte   $73
        .byte   $FC
        .byte   $27
        clc
        jsr     LF9B9
        rol     $401A
        jsr     LFCB1
        and     $2021,x
        cmp     $FC
        .byte   $3F
        ora     $1218,x
        sbc     a:L0000,x
        php
        .byte   $1D
LD95B:  .byte   $FA
        brk
        brk
        lda     $FB
        .byte   $93
        .byte   $62
        bpl     LD92D
        inc     $1424,x
LD967:  clc
        lsr     $FC
        asl     $0814,x
        .byte   $53
        sbc     L70A0,x
LD971:  pla
        php
        .byte   $52
        inc     $244C,x
        clc
        .byte   $02
        .byte   $FA
        and     LB81C
        clc
        lsr     a
        .byte   $FA
        jsr     L7012
        clc
        ror     $FA,x
        .byte   $1B
        bpl     LD9CD
        clc
        .byte   $9E
        .byte   $FA
        ora     ($0A),y
        .byte   $1C
        clc
        .byte   $C3
        .byte   $FA
        and     $5810
        clc
        .byte   $DC
        .byte   $FA
        .byte   $14
        ora     $183F
        .byte   $FA
        .byte   $FA
        ora     $0D,x
        and     ($18,x)
        rol     $FB
        clc
        bpl     LDA21
        clc
        jmp     L19FB

        .byte   $0F
        .byte   $54
        clc
        adc     $FB,x
        asl     $2B12,x
        clc
        .byte   $73
        .byte   $FB
        asl     $2D0F,x
        sty     $2C
        bit     L822C
        .byte   $04
        bit     L8504
        bit     $2C84
        bit     $2A2A
        rol     a
        .byte   $82
        .byte   $04
        rol     a
        .byte   $04
LD9CD:  sta     $2A
        sty     $2A
        rol     a
        brk
        .byte   $1F
LD9D4:  .byte   $1F
        .byte   $1F
        tya
        .byte   $1F
        .byte   $1F
        tya
        .byte   $9E
        tya
        .byte   $1F
        ora     $1D1D,x
        sty     $1D,x
        ora     L9C94,x
        sty     $1D,x
        stx     $18
        sta     $26
        bmi     LD971
        .byte   $04
        rol     L0030
        stx     $14
        .byte   $85
LD9F3:  .byte   $22
        bit     $0484
        .byte   $22
        bit     LD021
        cpy     $D0
        and     ($D0),y
        cpy     $D0
LDA01:  brk
        sta     $2C
        .byte   $22
        .byte   $1C
        .byte   $84
LDA07:  rol     $2A
        .byte   $82
        plp
        rol     $04
        .byte   $87
        .byte   $22
        .byte   $34
        .byte   $3A
        .byte   $82
        rti

LDA13:  .byte   $04
        rol     $84,x
        .byte   $3A
        .byte   $34
        .byte   $82
        bit     L8530
        rol     a
        brk
        eor     $4D55,x
LDA21:  ora     $19,x
        stx     $15,y
        cmp     $E3,x
LDA27:  .byte   $EB
        and     $2BA6
        .byte   $27
        .byte   $9C
        .byte   $9E
LDA2E:  eor     $2285,y
        .byte   $1C
        .byte   $14
        sty     $1E
LDA35:  .byte   $22
        .byte   $82
        jsr     L041E
        .byte   $87
        .byte   $1C
        bit     L8234
        rol     $04,x
        bmi     LDA77
        .byte   $04
        bit     $2604
        rol     a
        sta     $22
        sty     $04
        .byte   $82
        .byte   $3A
        sec
        rol     $32,x
        .byte   $04
        .byte   $34
        .byte   $04
        bit     $26
        bit     $2604
        bit     a:L0030
        ora     $B4
        .byte   $B2
        bcs     LDA8C
        ldy     L9C84
        .byte   $9E
        ldx     #$84
        sty     $9C,x
        .byte   $9E
LDA6A:  sta     $14
        .byte   $22
        sty     $2C
        sta     $1E
        .byte   $82
        bit     $2C84
        .byte   $1E
        .byte   $84
LDA77:  .byte   $04
        .byte   $82
        .byte   $3A
        sec
        rol     $32,x
        .byte   $04
        .byte   $34
        .byte   $04
        .byte   $64
        .byte   $04
        .byte   $64
        stx     $64
        brk
        ora     $B4
        .byte   $B2
        bcs     LDAB6
        .byte   $AC
LDA8C:  sty     $37
        ldx     $B6,y
        eor     $85
        .byte   $14
        .byte   $1C
        .byte   $82
        .byte   $22
        sty     $2C
        lsr     $4E82
        sty     $4E
        .byte   $22
        sty     $04
        sta     $32
        sta     L0030
        stx     $2C
        .byte   $04
        brk
        ora     $A4
        ora     $9E
LDAAC:  ora     $9D
        sta     $84
        .byte   $14
        sta     $24
        plp
LDAB4:  .byte   $2C
        .byte   $82
LDAB6:  .byte   $22
        sty     $22
        .byte   $14
        and     ($D0,x)
        cpy     $D0
        and     ($D0),y
        cpy     $D0
        brk
        .byte   $82
        bit     $2C84
        bit     $2C82
        bmi     LDAD0
        .byte   $34
        bit     $2604
LDAD0:  stx     $22
        brk
        ldy     $25
        and     $A4
        and     #$A2
        ora     L959C,x
        .byte   $82
        bit     $042C
        bit     $2C04
        bmi     LDA6A
        .byte   $34
        .byte   $04
        .byte   $04
        brk
        ldy     $25
        and     $A4
        tay
        .byte   $63
        .byte   $04
        sta     $0E
        .byte   $1A
        sty     $24
        sta     $22
        .byte   $14
        sty     $0C
        .byte   $82
        .byte   $34
        sty     $34
        .byte   $34
        .byte   $82
        bit     $3484
        stx     $3A
LDB05:  .byte   $04
        brk
        ldy     #$21
        and     ($A0,x)
        and     ($2B,x)
        ora     $A3
        .byte   $82
        clc
        sty     $18
        clc
        .byte   $82
        clc
        clc
        .byte   $04
        stx     $3A
        .byte   $22
        and     ($90),y
        .byte   $31
LDB1E:  bcc     LDB51
        adc     ($31),y
        bcc     LDAB4
        bcc     LDB26
LDB26:  .byte   $82
        .byte   $34
        sty     $2C
        sta     $22
        sty     $24
        .byte   $82
        rol     $36
        .byte   $04
        rol     $86,x
        rol     L0000
        .byte   $AC
        .byte   $27
LDB38:  eor     L9E1D,x
        and     L9FAC
        sta     $14
        .byte   $82
        .byte   $20
        .byte   $84
LDB43:  .byte   $22
        bit     $1E1E
LDB47:  .byte   $82
        bit     $1E2C
        .byte   $04
        .byte   $87
        rol     a
        rti

        rti

        rti

LDB51:  .byte   $3A
        rol     $82,x
        .byte   $34
        bit     $2604
        stx     $22
        brk
        .byte   $E3
        .byte   $F7
        .byte   $F7
        .byte   $F7
        sbc     $F1,x
        ldy     L9E27
        sta     $1885,x
        .byte   $82
        asl     L2284,x
        rol     a
        .byte   $22
        .byte   $22
        .byte   $82
        bit     $222C
        .byte   $04
        stx     $04
        .byte   $82
        rol     a
        rol     $04,x
        rol     $87,x
        rol     $34,x
LDB7D:  bmi     LDB05
        bit     a:$04
        brk
        pla
        ror     a
        jmp     (LA245)

        and     ($B0),y
        sbc     ($ED),y
        .byte   $EB
        ldx     #$1D
        .byte   $9C
        sta     $86,x
        .byte   $04
        sta     $22
        .byte   $82
        .byte   $22
        .byte   $87
        .byte   $22
        rol     $2A
        sty     $2C
        .byte   $22
        stx     $14
        eor     ($90),y
        and     ($11),y
        brk
        .byte   $80
        .byte   $22
        plp
        .byte   $22
        rol     $22
        bit     $22
        rol     $22
        plp
        .byte   $22
        rol     a
        .byte   $22
        plp
        .byte   $22
        rol     $22
        plp
        .byte   $22
        rol     $22
        bit     $22
        .byte   $26
LDBBE:  .byte   $22
        plp
        .byte   $22
        rol     a
        .byte   $22
        plp
        .byte   $22
        rol     L0020
        rol     L0020
        bit     L0020
        rol     L0020
        plp
        jsr     L2026
        plp
        jsr     L2026
        bit     L0020
        rol     L0020
        bit     L0020
LDBDB:  rol     L0020
        plp
        .byte   $20
LDBDF:  rol     L0020
        plp
        jsr     L2026
        bit     $28
        bmi     LDC11
        .byte   $32
        plp
        bmi     LDC15
        rol     $3028
        plp
        rol     $2C28
        plp
        rol     $3028
        plp
        .byte   $32
        plp
        bmi     LDC25
        rol     $3028
        plp
        .byte   $2E
        plp
LDC03:  bit     $2E28
        brk
        .byte   $04
        bvs     LDC78
        jmp     (L706E)

        .byte   $72
        bvs     LDC7E
        .byte   $70
LDC11:  ror     L6E6C
        .byte   $70
LDC15:  .byte   $72
        bvs     LDC86
LDC18:  ror     L6E6C
LDC1B:  bvs     LDC8B
        bvs     LDC8D
        jmp     (L6C6E)

        .byte   $6E
LDC23:  bvs     LDC93
LDC25:  bvs     LDC95
        jmp     (L7876)

        ror     $74,x
        ror     $74,x
        .byte   $72
        .byte   $74
        ror     L0078,x
        ror     $74,x
        ror     $74,x
        .byte   $72
        .byte   $74
        sty     $1A
        .byte   $83
        clc
        jsr     L1E84
        .byte   $83
        .byte   $1C
        plp
        .byte   $26
LDC43:  .byte   $1C
        .byte   $1A
        .byte   $1C
        .byte   $82
        bit     $0404
        .byte   $22
        .byte   $04
        .byte   $04
        sty     $1C
        .byte   $87
        rol     $2A
        rol     $84
LDC54:  bit     $28
LDC56:  bit     $80
        .byte   $22
        brk
        .byte   $9C
        ora     $94
        ora     $0D
        .byte   $9F
        asl     L989C,x
        .byte   $9D
LDC64:  .byte   $82
        .byte   $22
LDC66:  .byte   $04
        .byte   $04
        .byte   $1C
        .byte   $04
        .byte   $04
        sty     $14
        stx     $1E
        .byte   $80
        asl     $80,x
        .byte   $14
        sta     ($1C,x)
        bmi     LDC7B
        .byte   $30
LDC78:  bmi     LDC7E
        .byte   $1E
LDC7B:  .byte   $32
        .byte   $04
        .byte   $32
LDC7E:  .byte   $32
        .byte   $04
        jsr     L0434
        .byte   $34
        .byte   $34
        .byte   $04
LDC86:  rol     $04,x
        sty     $36
        brk
LDC8B:  lsr     $A4
LDC8D:  .byte   $64
        ldy     $48
        .byte   $A6
LDC91:  ror     $A6
LDC93:  lsr     a
        tay
LDC95:  pla
        tay
        ror     a
        .byte   $44
        .byte   $2B
        sta     ($2A,x)
        .byte   $42
        .byte   $04
        .byte   $42
        .byte   $42
        .byte   $04
        bit     $0464
        .byte   $64
        .byte   $64
        .byte   $04
        rol     $0446
        lsr     $46
        .byte   $04
        .byte   $22
        .byte   $04
        sty     $22
        .byte   $87
        .byte   $04
        asl     $0C
        .byte   $14
        .byte   $1C
        .byte   $22
        stx     $2C
        .byte   $22
        .byte   $87
        .byte   $04
        rts

        asl     $1A14
        bit     $86
        bit     L8724
        .byte   $04
        php
        bpl     LDCE2
        asl     L8628,x
        bmi     LDCFF
        .byte   $80
        .byte   $64
        brk
        cmp     LDDD5
        .byte   $E3
        sbc     LBBF5
        lda     $CF,x
LDCDB:  cmp     $DB,x
        sbc     $ED
        .byte   $F3
        .byte   $BD
        .byte   $B3
LDCE2:  cmp     ($D9),y
        .byte   $DF
        sbc     #$F1
        .byte   $F7
        .byte   $BF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $34
        brk
        stx     $04
        .byte   $87
        .byte   $14
        .byte   $1C
        .byte   $22
        stx     $34
        sty     $2C
LDCF8:  .byte   $04
        .byte   $04
        .byte   $04
        .byte   $87
        .byte   $14
        .byte   $1A
LDCFE:  .byte   $24
LDCFF:  stx     $32
        sty     $2C
        .byte   $04
        stx     $04
        .byte   $87
        clc
        .byte   $1E
        plp
LDD0A:  stx     $36
        .byte   $87
        bmi     LDD3F
        bmi     LDC91
        bit     $1482
        bit     $2662
        bpl     LDD41
        .byte   $80
        .byte   $04
        .byte   $82
        .byte   $14
        bit     $2662
        bpl     LDD4A
        .byte   $80
        .byte   $04
        .byte   $82
        php
        asl     $185E,x
        rts

        .byte   $1A
        .byte   $80
        .byte   $04
        .byte   $82
        php
        asl     $185E,x
        rts

        .byte   $1A
        stx     $04
        .byte   $83
        .byte   $1A
        clc
        asl     $84,x
        .byte   $14
        .byte   $1A
LDD3D:  clc
        .byte   $0E
LDD3F:  .byte   $0C
        .byte   $16
LDD41:  .byte   $83
        .byte   $14
LDD43:  jsr     L1C1E
        plp
        rol     $87
        .byte   $24
LDD4A:  .byte   $1A
        .byte   $12
        bpl     LDDB0
        asl     $0480
        .byte   $04
        brk
        .byte   $82
        clc
        .byte   $1C
        jsr     L2622
        plp
        sta     ($2A,x)
        rol     a
        rol     a
        .byte   $04
        rol     a
        .byte   $04
        .byte   $83
        rol     a
        .byte   $82
        .byte   $22
        stx     $34
        .byte   $32
        .byte   $34
        sta     ($04,x)
        .byte   $22
        rol     $2A
        bit     L8630
        .byte   $34
        .byte   $83
        .byte   $32
        .byte   $82
        rol     $84,x
        .byte   $34
        sta     $04
        sta     ($22,x)
        stx     L0030
        rol     L8130
        .byte   $04
        .byte   $22
        rol     $2A
        .byte   $2C
LDD86:  rol     $3086
        .byte   $83
        .byte   $22
        .byte   $82
        rol     $84,x
        .byte   $34
        sta     $04
        sta     ($22,x)
        stx     $3A
        .byte   $3A
        .byte   $3A
        .byte   $82
        .byte   $3A
        sta     ($40,x)
        .byte   $82
        .byte   $04
        sta     ($3A,x)
        stx     $36
        rol     $36,x
        .byte   $82
        rol     $81,x
        .byte   $3A
        .byte   $82
        .byte   $04
        sta     ($36,x)
        stx     $34
        .byte   $82
        rol     $2A
LDDB0:  rol     $81,x
        .byte   $34
        .byte   $34
        sta     $34
        sta     ($2A,x)
        stx     $2C
        brk
LDDBB:  sty     $90
        bcs     LDD43
        bvc     LDE11
        bcs     LDDC3
LDDC3:  tya
        stx     $94,y
        .byte   $92
        sty     $96,x
        cli
        cli
        cli
        .byte   $44
        .byte   $5C
        .byte   $44
        .byte   $9F
        .byte   $A3
        lda     ($A3,x)
        sta     $A3
LDDD5:  cpx     #$A6
        .byte   $23
        cpy     $9F
        sta     L859F,x
        .byte   $9F
        .byte   $D2
        ldx     $23
        cpy     $B5
        lda     ($AF),y
        sta     $B1
        .byte   $AF
        lda     L9585
        .byte   $9E
        ldx     #$AA
        ror     a
        ror     a
        .byte   $6B
        lsr     L849D,x
        .byte   $04
        .byte   $04
        .byte   $82
        .byte   $22
        stx     $22
        .byte   $82
        .byte   $14
        .byte   $22
        bit     $2212
        rol     a
LDE01:  .byte   $14
LDE02:  .byte   $22
LDE03:  bit     $221C
        .byte   $2C
LDE07:  .byte   $14
        .byte   $22
LDE09:  .byte   $2C
        .byte   $12
LDE0B:  .byte   $22
        rol     a
LDE0D:  .byte   $14
        .byte   $22
        .byte   $2C
        .byte   $1C
LDE11:  .byte   $22
        bit     $2218
        rol     a
LDE16:  asl     L0020,x
        plp
        clc
        .byte   $22
        rol     a
        .byte   $12
        .byte   $22
        rol     a
        clc
        .byte   $22
        rol     a
        .byte   $12
        .byte   $22
LDE24:  rol     a
        .byte   $14
        .byte   $22
        bit     $220C
        .byte   $2C
        .byte   $14
LDE2C:  .byte   $22
        .byte   $34
LDE2E:  .byte   $12
        .byte   $22
        .byte   $30
LDE31:  bpl     LDE55
        rol     $2216
LDE36:  .byte   $34
        clc
        rol     $36
        asl     $26,x
        rol     $14,x
        rol     $36
        .byte   $12
        .byte   $22
        rol     $5C,x
        .byte   $22
        .byte   $34
        .byte   $0C
        .byte   $22
        .byte   $22
        sta     ($1E,x)
LDE4B:  .byte   $1E
        .byte   $85
LDE4D:  asl     $1281,x
        stx     $14
        sta     ($2C,x)
        .byte   $22
LDE55:  .byte   $1C
        bit     $1C22
        sta     $2C
        .byte   $04
        sta     ($2E,x)
        bit     $1E
        rol     $1E24
        sta     $2E
        .byte   $04
        sta     ($32,x)
        plp
        .byte   $22
        .byte   $32
        plp
        .byte   $22
        sta     $32
        .byte   $87
        rol     $36,x
        rol     $84,x
        .byte   $3A
        brk
        .byte   $5C
        .byte   $54
        jmp     L545C

        jmp     L1C5C

        .byte   $1C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        lsr     $4E56,x
        lsr     $4E56,x
        lsr     $1E1E,x
        lsr     $5E5E,x
        .byte   $5E
LDE90:  .byte   $62
        .byte   $5A
        bvc     LDEF6
        .byte   $5A
        bvc     LDEF9
        .byte   $22
        .byte   $22
        .byte   $62
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $2B
        stx     $14
        sta     ($14,x)
        .byte   $80
        .byte   $14
        .byte   $14
        sta     ($14,x)
        .byte   $14
        .byte   $14
        .byte   $14
        stx     $16
        sta     ($16,x)
        .byte   $80
        asl     $16,x
        sta     ($16,x)
        asl     $16,x
        asl     $81,x
        plp
        .byte   $22
        .byte   $1A
        plp
        .byte   $22
        .byte   $1A
        plp
        .byte   $80
        plp
        plp
        sta     ($28,x)
        .byte   $87
        .byte   $2C
LDEC5:  bit     L842C
        bmi     LDE4D
LDECA:  .byte   $04
        .byte   $84
LDECC:  .byte   $0C
        .byte   $83
        .byte   $62
        bpl     LDE55
        .byte   $12
        .byte   $83
        .byte   $1C
        .byte   $22
        asl     L2622,x
        clc
        asl     $1C04,x
        brk
LDEDD:  .byte   $E3
        sbc     ($E3,x)
        ora     LE0DE,x
        .byte   $23
        .byte   $EC
LDEE5:  adc     $74,x
        beq     LDEDD
        inc     $EA,x
        and     ($2D),y
        .byte   $83
        .byte   $12
        .byte   $14
LDEF0:  .byte   $04
        clc
        .byte   $1A
        .byte   $1C
        .byte   $14
        .byte   $26
LDEF6:  .byte   $22
        .byte   $1E
        .byte   $1C
LDEF9:  clc
        asl     $0C22,x
        .byte   $14
        .byte   $FF
        .byte   $FF
        brk
LDF01:  dey
        brk
        .byte   $2B
        brk
        brk
        .byte   $02
        .byte   $72
        .byte   $02
        .byte   $4F
        .byte   $02
        rol     $0E02
        .byte   $01
LDF0F:  sbc     ($01),y
        tsx
        ora     ($A1,x)
        ora     ($8A,x)
        ora     ($74,x)
        ora     ($5F,x)
        ora     ($4B,x)
        ora     ($39,x)
        ora     ($27,x)
        ora     ($17,x)
        ora     ($07,x)
        brk
        sed
        brk
        nop
        brk
        cmp     LD100,x
        brk
        cmp     L0000
        tsx
LDF30:  brk
        .byte   $AF
        brk
        lda     L0000
LDF35:  .byte   $9C
        brk
        sty     L0000,x
        .byte   $8B
        brk
        .byte   $83
        brk
        .byte   $7C
        brk
        ror     L7400
        brk
        pla
        brk
        lsr     $5C00
        brk
        cli
        brk
        .byte   $52
        brk
        lsr     a
        brk
        .byte   $42
        brk
        .byte   $3E
        brk
LDF53:  rol     L0000,x
        and     (L0000),y
        .byte   $27
        brk
        jsr     L1D04
        .byte   $03
        ora     $02,x
        ldx     L9802,y
        ora     ($D5,x)
        brk
        .byte   $62
        .byte   $04
        php
        bpl     LDF8A
        rti

        clc
        bmi     LDF7A
LDF6E:  .byte   $03
        asl     $0C
        clc
        bmi     LDF86
        bit     $08
        .byte   $03
        asl     $0C
        clc
LDF7A:  bmi     LDF8E
        bit     $08
        bit     $02
        asl     $04
        .byte   $0C
        .byte   $12
        clc
        php
LDF86:  .byte   $1B
        ora     ($05,x)
        .byte   $03
LDF8A:  ora     #$0D
        .byte   $12
        .byte   $06
LDF8E:  .byte   $12
        ora     ($03,x)
        .byte   $02
        asl     $09
        .byte   $0C
        .byte   $04
        tya
LDF97:  sta     L9B9A,y
        bcc     LDF30
        sty     $95,x
LDF9E:  sta     $96,x
        .byte   $97
        tya
LDFA2:  bcc     LDF35
        .byte   $92
        .byte   $92
        .byte   $93
        .byte   $93
        .byte   $93
LDFA9:  sty     $94,x
        sty     $94,x
        sty     $94,x
        sta     $95,x
        sta     $95,x
        sta     $95,x
        stx     $96,y
        stx     $96,y
        stx     $96,y
        stx     $96,y
        stx     $96,y
LDFBF:  stx     $96,y
LDFC1:  stx     $96,y
        stx     $96,y
        stx     $95,y
LDFC7:  sta     $94,x
LDFC9:  .byte   $93
        ora     $16,x
        asl     $17,x
        .byte   $17
        clc
        ora     $1A19,y
        .byte   $1A
        .byte   $1C
        ora     $1E1D,x
        asl     $1F1F,x
        .byte   $1F
        .byte   $1F
        .byte   $1E
        .byte   $1D
LDFDF:  .byte   $1C
        asl     $1F1F,x
        asl     $1C1D,x
        .byte   $1A
        clc
        asl     $14,x
        ora     $16,x
        asl     $17,x
        .byte   $17
        clc
        ora     $1A19,y
        .byte   $1A
        .byte   $1C
        ora     $1E1D,x
        asl     L821F,x
        .byte   $80
        brk
        .byte   $80
        .byte   $F0
LDFFF:  .byte   $FF
        .byte   $03
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1C
        bit     $26
        ror     L0000
        brk
        brk
        brk
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $7F
        cpx     #$C0
        .byte   $80
        .byte   $FC
        .byte   $80
        cpy     #$00
        jsr     L2000
LE01A:  rts

        brk
        beq     LE01A
        inc     L60FE,x
        bvs     LE03B
LE023:  .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $1F
        .byte   $07
        brk
        asl     L7F3F,x
        .byte   $FC
        .byte   $7C
        brk
        brk
        cpx     #$F0
        sed
LE037:  sed
        .byte   $FC
        .byte   $FC
        sed
LE03B:  cpy     #$C2
        .byte   $67
        .byte   $2F
        .byte   $37
LE040:  .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $07
        .byte   $07
        .byte   $0F
        .byte   $0F
        .byte   $7F
        ror     LF0FC,x
        sed
        sed
        beq     LE0C0
        sbc     LB4FE,x
        sed
        sed
        sbc     LFFFB,y
        .byte   $37
        rol     $5C,x
        brk
        brk
        ora     ($03,x)
        .byte   $1F
        .byte   $1F
        .byte   $3F
        .byte   $FF
        .byte   $FF
        .byte   $FC
LE065:  bvs     LE0D7
        sec
        php
        bit     $E3
        beq     LE065
        bvs     LE0DF
        sec
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $1F
LE074:  brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($07,x)
        .byte   $0F
        .byte   $0F
        asl     a:$12
        brk
        brk
        brk
        brk
        brk
        .byte   $0F
        .byte   $1F
        brk
        brk
        beq     LE074
        cpy     #$FE
        rti

        rts

        brk
        brk
        brk
        bpl     LE0CD
        brk
        sed
        inc     $3313,x
        bmi     LE0BC
        .byte   $04
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $07
        php
LE0AE:  .byte   $17
        .byte   $17
        brk
        bpl     LE131
        rol     a:L0000,x
        cpy     #$E0
        .byte   $FF
        .byte   $FF
        .byte   $FE
        .byte   $FE
LE0BC:  .byte   $FC
        cpx     #$40
        .byte   $A0
LE0C0:  .byte   $3F
        .byte   $3F
LE0C2:  .byte   $3F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $37
        .byte   $27
        .byte   $23
        .byte   $03
LE0CC:  .byte   $01
LE0CD:  brk
        brk
        brk
        beq     LE0C2
        beq     LE0CC
        sed
        sed
        sed
LE0D7:  sed
        .byte   $CC
        .byte   $FF
LE0DA:  .byte   $FF
        .byte   $FF
LE0DC:  .byte   $FF
        .byte   $70
LE0DE:  brk
LE0DF:  php
LE0E0:  .byte   $FF
        .byte   $FF
LE0E2:  .byte   $FF
        inc     LC0F0,x
        .byte   $80
        brk
        beq     LE0DA
LE0EA:  beq     LE0DC
        beq     LE0AE
        .byte   $80
        brk
LE0F0:  .byte   $FC
        .byte   $FC
        sed
        sei
        sei
        sei
        ror     $107E,x
        rts

        .byte   $80
        brk
LE0FC:  sei
        sei
        ror     a:$7E,x
        .byte   $03
        .byte   $0F
        .byte   $1F
LE104:  .byte   $1F
        .byte   $1C
LE106:  bit     $26
        brk
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $3F
        .byte   $3F
        brk
        cpx     #$C0
        .byte   $80
        .byte   $FC
        .byte   $80
        cpy     #$00
        brk
        brk
        .byte   $20
LE11B:  rts

        brk
        beq     LE11B
        inc     L6066,x
        bmi     LE13C
        .byte   $0F
LE125:  .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $3F
        .byte   $1F
LE12C:  brk
LE12D:  asl     $2F,x
        .byte   $2F
        .byte   $20
LE131:  .byte   $FC
        .byte   $7C
        brk
        brk
        cpx     #$E0
LE137:  beq     LE137
        .byte   $FC
        .byte   $FC
        sed
LE13C:  cpy     #$60
LE13E:  jsr     L3F30
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $2F
        .byte   $2F
LE14A:  .byte   $2F
LE14B:  .byte   $0F
LE14C:  .byte   $07
        .byte   $03
        brk
        brk
        beq     LE0E2
        brk
LE153:  php
        .byte   $0C
        .byte   $1C
        .byte   $FC
LE157:  sed
        bpl     LE14A
        .byte   $F0
LE15B:  beq     $E14D
        cpx     #$C0
        cpx     #$0F
        .byte   $0F
        .byte   $07
LE163:  .byte   $07
        .byte   $07
LE165:  .byte   $0F
        .byte   $0F
        .byte   $03
        ora     ($03,x)
        .byte   $01
LE16B:  .byte   $04
        .byte   $07
        .byte   $0F
        .byte   $0F
        .byte   $03
        sed
        beq     LE153
        beq     LE125
        .byte   $80
        cpx     #$E0
        sed
        beq     LE15B
        bvs     LE12D
        .byte   $80
        cpx     #$E0
        .byte   $03
        .byte   $3F
        .byte   $7F
        ora     $0909,y
        plp
        .byte   $5C
        brk
        bmi     LE1FB
        .byte   $7F
        .byte   $FF
LE18D:  .byte   $FF
        .byte   $F7
        .byte   $F3
        sed
        cpx     #$E0
        .byte   $FC
        rol     L0030
LE196:  .byte   $80
        bpl     LE199
LE199:  clc
        bpl     LE19C
LE19C:  sed
        sed
        inc     $3EFF,x
        asl     $383F,x
        bmi     LE1D6
        brk
        .byte   $3A
        .byte   $E7
        .byte   $0F
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $0F
        .byte   $07
        sei
        asl     LFE80,x
        .byte   $7E
        .byte   $7E
LE1B6:  .byte   $7F
        .byte   $7F
        .byte   $FF
        inc     LC6FC,x
        .byte   $8E
LE1BD:  inc     LFFFF
        .byte   $3C
        .byte   $3F
        .byte   $1F
        .byte   $0F
        .byte   $07
        .byte   $3F
        and     (L0020,x)
        .byte   $03
        brk
        brk
        asl     $3F07
        .byte   $3F
        .byte   $3F
LE1D0:  .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     LFEFE,x
LE1D6:  .byte   $FC
        .byte   $70
LE1D8:  .byte   $FF
        .byte   $7F
        .byte   $3F
        asl     LC0C0
        cpx     #$E0
        .byte   $0F
        .byte   $9F
        .byte   $CF
        .byte   $FF
        .byte   $7F
        .byte   $3F
        asl     a:$0E,x
        .byte   $80
        iny
        inc     $3F7F,x
        asl     $200E,x
        cpy     #$80
        .byte   $80
        brk
        brk
        brk
        brk
        cpx     #$00
        brk
LE1FB:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $0F
        .byte   $1F
LE205:  .byte   $1F
        .byte   $1C
LE207:  bit     L0000
        brk
        brk
        brk
LE20C:  brk
        brk
        .byte   $1F
        .byte   $3F
        brk
        .byte   $04
        inc     $E0
        .byte   $FF
        .byte   $FF
        .byte   $8F
        .byte   $83
        asl     $1F1F
        .byte   $1F
        .byte   $1F
        .byte   $03
        .byte   $FF
        .byte   $FF
        rol     $26
        rts

        sei
        clc
        .byte   $0F
        .byte   $7F
        .byte   $FF
        .byte   $3F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $1F
        brk
        ror     $01FF,x
        and     ($FE,x)
        .byte   $7A
        .byte   $06
LE235:  inc     LFCFC,x
        .byte   $FF
        .byte   $FF
        inc     LFEFE,x
        .byte   $DE
LE23E:  .byte   $5C
        jmp     (LCFFF)

LE242:  .byte   $87
        .byte   $07
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $FF
        .byte   $FF
LE24A:  .byte   $FE
LE24B:  .byte   $FC
        sed
        bcs     LE2AF
        brk
        sed
        sed
        beq     LE20C
LE254:  sed
        .byte   $F9
LE256:  .byte   $FB
        .byte   $FF
        plp
        .byte   $30
LE25A:  clc
        rti

        brk
        ora     ($03,x)
        .byte   $0F
        .byte   $1F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FE
LE266:  cpy     #$80
        bpl     LE256
        .byte   $E3
        cpx     #$E0
        cpx     #$C0
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $3F
        brk
LE275:  brk
        brk
        brk
        .byte   $0F
        .byte   $0F
        .byte   $0F
LE27B:  .byte   $0F
        brk
        brk
        brk
        brk
        .byte   $13
        .byte   $33
        bmi     LE29C
LE284:  .byte   $04
        .byte   $0F
        .byte   $1F
LE287:  .byte   $1F
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $07
        ora     #$13
        .byte   $17
        brk
        bpl     LE311
        bmi     LE275
        beq     LE287
        cpx     #$FF
        .byte   $FF
        .byte   $FE
        .byte   $FF
LE29C:  inc     LF8FC,x
        cpx     #$1F
        .byte   $1F
LE2A2:  .byte   $0F
        .byte   $0F
LE2A4:  .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $17
LE2A9:  .byte   $17
        .byte   $03
        brk
        brk
        brk
        brk
LE2AF:  brk
        beq     LE2A2
LE2B2:  sed
        sed
        clv
        sed
        sed
        sed
        bne     LE24A
LE2BA:  clc
        php
        rti

LE2BD:  brk
        brk
        brk
        .byte   $3F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $C6,x
        sty     L0000
        .byte   $30
LE2C9:  beq     $E2BB
        sbc     ($F6),y
        dec     $84
        brk
LE2D0:  beq     LE2B2
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE2DB:  brk
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
LE2E2:  .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $0F
LE2E6:  .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $3F
        rol     L787C,x
        beq     LE2D0
        beq     LE2E2
        sed
        sed
LE2F4:  clv
        sed
LE2F6:  sed
        beq     LE2A9
        bcc     LE313
        php
        rti

        brk
        brk
LE2FF:  brk
        cpx     #$F0
        beq     LE2F4
        beq     LE2F6
        sed
        beq     LE2C9
        cpx     #$FC
        inc     L7FFF,x
        .byte   $03
        brk
        .byte   $1F
LE311:  .byte   $1F
        .byte   $1F
LE313:  .byte   $3F
LE314:  rol     $383C,x
        clc
        brk
        brk
        bpl     LE354
        rol     $383C,x
        clc
        brk
        .byte   $03
        .byte   $07
        .byte   $07
        asl     a
        .byte   $0B
        .byte   $0C
        brk
        brk
        brk
        brk
        .byte   $07
        .byte   $0F
LE32D:  .byte   $0F
        .byte   $0F
LE32F:  .byte   $03
        brk
        cpx     #$FC
        jsr     L1020
LE336:  .byte   $3C
        brk
        brk
LE339:  brk
        brk
        beq     LE339
        inc     LF8FC,x
LE340:  .byte   $07
        .byte   $07
        .byte   $07
        .byte   $1F
        .byte   $1F
        rol     $0121,x
LE348:  .byte   $07
        .byte   $0F
LE34A:  .byte   $1B
        clc
        bpl     LE37E
        and     ($01,x)
        cpx     #$E0
        cpx     #$F0
LE354:  beq     LE336
        cpy     #$E0
        tay
        .byte   $FC
        sed
        brk
        brk
        brk
        cpy     #$E0
        .byte   $07
        .byte   $0F
        asl     $1614
        clc
        brk
        .byte   $3F
        brk
        brk
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $07
        .byte   $3C
        cpy     #$F8
        rti

        rti

        jsr     L0078
        cpy     #$00
        brk
        cpx     #$F8
        .byte   $FC
        sed
LE37E:  beq     LE340
        .byte   $3F
        asl     $1F0F
        .byte   $3F
        .byte   $7C
        bvs     LE3C0
        .byte   $FC
        .byte   $ED
LE38A:  cpy     #$00
        brk
        rts

        bvs     LE3C8
LE390:  beq     LE38A
        cpx     $FC
        .byte   $FC
        .byte   $7C
        brk
        brk
        ror     L041E,x
        .byte   $0C
        .byte   $0C
        .byte   $0C
        brk
        brk
        .byte   $07
        .byte   $0F
        .byte   $0E
        .byte   $14
LE3A4:  asl     $18,x
        brk
        .byte   $0F
        brk
        brk
        .byte   $0F
LE3AB:  .byte   $1F
        .byte   $1F
LE3AD:  .byte   $1F
        .byte   $07
        ora     $1F1F
        .byte   $1F
        .byte   $1C
        .byte   $0C
LE3B5:  .byte   $07
        .byte   $07
        .byte   $07
LE3B8:  asl     $1E1C,x
        .byte   $0F
        .byte   $07
        brk
        .byte   $07
        .byte   $07
LE3C0:  cpx     #$60
        beq     LE434
        cpx     #$E0
        beq     LE348
LE3C8:  rts

        bcc     LE3CB
LE3CB:  .byte   $80
        brk
        cpx     #$F0
        .byte   $80
        .byte   $07
        .byte   $1F
        .byte   $3F
        .byte   $12
LE3D4:  .byte   $13
        php
        .byte   $1F
        and     (L0000),y
        bpl     LE41A
        .byte   $7F
        .byte   $7F
        .byte   $3F
        .byte   $03
        .byte   $0F
        cpy     #$F0
        rti

        brk
LE3E4:  bmi     LE3FE
        cpy     #$F8
        brk
        brk
        cpx     #$F8
        .byte   $FC
        sed
        bcs     LE428
LE3F0:  .byte   $31
LE3F1:  and     $1F1F,y
LE3F4:  .byte   $0F
        .byte   $5F
        .byte   $7E
        .byte   $3C
LE3F8:  .byte   $1F
        .byte   $07
        brk
        asl     $530F
LE3FE:  .byte   $7C
        .byte   $3C
        sed
        sed
        beq     LE3E4
        cpx     #$C0
        brk
        brk
        sed
        sed
        beq     LE40C
LE40C:  brk
        .byte   $80
        brk
        brk
        brk
        cpx     #$FC
        .byte   $27
        .byte   $27
        ora     ($3E),y
        .byte   $04
        .byte   $07
        .byte   $07
LE41A:  .byte   $03
        .byte   $F7
        .byte   $FF
        .byte   $FF
        inc     $3FFC,x
        .byte   $7F
        .byte   $3F
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $4F
LE428:  rol     LFF7F,x
        .byte   $E2
        bvc     LE466
        bvs     LE470
        sed
        .byte   $F9
        .byte   $F9
LE433:  .byte   $B7
LE434:  .byte   $FF
        .byte   $FF
        cpx     #$00
        inx
        .byte   $71
LE43A:  ora     ($4B,x)
        .byte   $03
        .byte   $03
        brk
        brk
        .byte   $07
        .byte   $07
LE442:  .byte   $0F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        rol     $04
        ora     $03
        ora     (L0030,x)
        bmi     LE47E
        rol     $04
        beq     LE442
        beq     LE434
        cpy     #$00
        brk
        brk
        inc     LE0FC,x
        brk
        brk
        brk
        brk
        brk
        .byte   $07
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $0F
LE466:  .byte   $1C
        clc
        ora     $03
        ora     ($10,x)
        bmi     LE47A
        .byte   $1C
        clc
LE470:  cpx     #$E0
        cpx     #$E0
        cpy     #$80
        brk
        brk
        cpy     #$E0
LE47A:  beq     LE4F4
        clc
        php
LE47E:  brk
        brk
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $0F
        .byte   $3F
        .byte   $0F
        .byte   $1C
        clc
        .byte   $07
        .byte   $0F
        rol     $307C,x
        .byte   $0C
        .byte   $1C
        clc
        cpx     #$E0
        cpx     #$40
        cpy     #$80
        brk
        brk
        rts

        rts

        rts

        .byte   $80
        brk
        brk
LE49E:  brk
        brk
LE4A0:  .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FB
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $1F
        .byte   $73
        .byte   $F3
        beq     LE4A0
        beq     LE49E
        bvs     LE510
        .byte   $3F
        ror     L7C7C,x
        .byte   $3C
LE4B5:  .byte   $3C
        .byte   $FC
        .byte   $FC
        brk
        brk
        brk
        brk
        .byte   $3C
        .byte   $3C
        .byte   $FC
        .byte   $FC
        rts

        bvs     LE4DB
        php
        .byte   $0F
        .byte   $1F
        .byte   $3F
LE4C7:  .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $1F
LE4CB:  .byte   $07
        .byte   $0B
        .byte   $1B
        .byte   $3B
LE4CF:  .byte   $7B
        .byte   $FC
        .byte   $7C
        brk
LE4D3:  jsr     LF8F0
        .byte   $FC
LE4D7:  inc     LFCFC,x
        sed
LE4DB:  cpx     #$D0
        cld
        .byte   $DC
LE4DF:  dec     $0F0B,x
        .byte   $1F
LE4E3:  .byte   $1E
LE4E4:  .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $7C
        cpy     $E0
        cpx     #$40
        brk
        .byte   $3C
        .byte   $3C
        .byte   $7C
        .byte   $1F
        .byte   $3F
        .byte   $0D
        .byte   $07
LE4F4:  .byte   $0F
        asl     $3C1C
        ora     $3A3C,x
        sec
        bmi     LE4FE
LE4FE:  .byte   $1C
        .byte   $3C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $22
        eor     $55,x
        eor     $55,x
        eor     $77,x
        .byte   $22
LE510:  brk
        .byte   $07
        .byte   $1F
        .byte   $FF
        .byte   $07
        .byte   $1F
        .byte   $0F
        asl     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FB
        ror     L0000,x
        brk
        .byte   $CF
        .byte   $07
        .byte   $7F
        brk
        brk
        brk
        jsr     LFFF8
        .byte   $C3
        sbc     LF0FE,x
        rti

        brk
        brk
        .byte   $3C
        .byte   $FC
        inc     a:$E0,x
        brk
        rti

        cpx     #$40
        rti

        eor     ($41,x)
        .byte   $4F
        .byte   $47
LE548:  rti

LE549:  cpx     #$40
        .byte   $3F
        rol     $303E,x
        sec
        brk
        brk
        brk
        brk
        brk
        brk
        cpx     #$C0
        brk
        brk
        brk
        sed
        sed
        sed
        clc
        sec
        .byte   $43
        lsr     $44
        rti

        rti

        rti

        rti

        rti

        .byte   $3C
        and     $3F3B,y
        brk
        brk
        brk
        brk
        .byte   $80
        cpy     #$40
        brk
        brk
        brk
        brk
        brk
        sei
        sec
        clv
        sed
        brk
        brk
        brk
        brk
        and     (L0030),y
        sec
        .byte   $7C
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FB
        .byte   $3F
        .byte   $3F
        .byte   $0F
        .byte   $77
        .byte   $77
        .byte   $F7
        .byte   $F7
        .byte   $F7
        bpl     LE610
        rol     $1E00,x
        inc     LFFFF,x
        .byte   $FF
        .byte   $FE
LE59A:  inc     LFAFE,x
        .byte   $FA
        .byte   $F3
        .byte   $E7
        .byte   $FF
        .byte   $FF
LE5A2:  .byte   $E3
        .byte   $C3
        .byte   $87
        pha
        .byte   $3C
        .byte   $FC
        beq     LE5A2
        .byte   $FC
        .byte   $7C
        sei
        sec
        .byte   $3C
        .byte   $FC
        brk
        .byte   $FF
        .byte   $C3
        .byte   $83
        .byte   $83
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
LE5BA:  .byte   $C3
        .byte   $81
LE5BC:  sta     ($C3,x)
        .byte   $FF
        brk
        .byte   $1F
        .byte   $1F
LE5C2:  .byte   $0F
        .byte   $07
        .byte   $01
LE5C5:  brk
        brk
        brk
LE5C8:  brk
        brk
        brk
        brk
        brk
LE5CD:  brk
        brk
LE5CF:  brk
        beq     LE5CD
        .byte   $FF
        .byte   $FF
        inc     $0C3E,x
        .byte   $04
        brk
        .byte   $0B
        .byte   $1F
        .byte   $1F
        asl     $0C3E,x
        .byte   $04
        .byte   $1F
        .byte   $1F
        .byte   $0F
        .byte   $0F
        .byte   $07
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FB
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        .byte   $03
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        brk
        brk
        brk
        brk
        clc
LE602:  .byte   $3C
        ror     LDF6E,x
        .byte   $DF
        .byte   $DF
        brk
        clc
        .byte   $3C
        ror     LFB76,x
        .byte   $FB
        .byte   $FB
LE610:  brk
        clc
        clc
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $1C
        brk
        bpl     LE62B
        jsr     L2020
        jsr     L0020
        php
        php
        php
        php
        php
        php
        brk
        brk
        php
        php
LE62B:  php
        php
        php
        php
        php
        brk
        php
        php
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        brk
        bpl     LE64B
        sec
        sec
        sec
        sec
        sec
        .byte   $3C
        ror     LFB77,x
        .byte   $9F
        .byte   $5F
        stx     a:L0020
        clc
        .byte   $3C
LE64B:  asl     $040E
        brk
        brk
        .byte   $5C
        rol     $3F8F
        .byte   $7B
        .byte   $77
        ror     a:$3C,x
        brk
        .byte   $04
        asl     $1E
        .byte   $3C
        clc
        brk
        .byte   $13
        .byte   $4F
        .byte   $3F
        .byte   $BF
        .byte   $3F
        .byte   $7A
        sed
        sed
        brk
        brk
        ora     ($0A,x)
        .byte   $17
        .byte   $0F
        .byte   $2F
        .byte   $1F
        brk
        php
        ora     $0F
        .byte   $2F
        ora     $3C1C,x
        brk
        brk
        brk
        brk
        ora     $07
        .byte   $0F
        .byte   $07
        brk
        brk
        brk
        brk
        .byte   $02
        .byte   $0B
        .byte   $07
        .byte   $0F
        brk
LE689:  brk
        brk
        brk
        brk
LE68D:  brk
        ora     ($03,x)
        brk
        brk
        brk
        brk
LE694:  brk
        php
        .byte   $04
        .byte   $04
        brk
        rts

        beq     LE694
        .byte   $7C
        rol     L7F7E,x
        .byte   $02
        .byte   $02
        .byte   $02
        ora     $71
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $3F
        .byte   $5F
        .byte   $7F
        rol     $0A0E,x
        eor     (L0020),y
        brk
        brk
        brk
        brk
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
        asl     $021F
        .byte   $02
        brk
        .byte   $01
LE6C4:  .byte   $13
LE6C5:  .byte   $3F
LE6C6:  .byte   $7F
        .byte   $7F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        inc     LCAEC,x
        eor     (L0020),y
        brk
        rti

        rts

        bvs     LE748
LE6D5:  .byte   $27
        .byte   $0F
        .byte   $1F
        brk
LE6D9:  rti

        .byte   $63
        .byte   $77
        .byte   $7C
        sec
        sed
        cpx     L0000
        brk
        brk
        brk
        .byte   $03
        .byte   $07
        .byte   $0F
        .byte   $1F
        brk
        brk
        .byte   $03
        .byte   $07
        .byte   $0C
        clc
        sed
        cpx     $7F
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $1F
        .byte   $0F
        .byte   $07
        .byte   $03
        .byte   $44
        plp
        bpl     LE705
        .byte   $04
        .byte   $03
        .byte   $04
        .byte   $03
LE701:  .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
LE705:  .byte   $77
        .byte   $77
        sbc     $03,x
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $27
        .byte   $7B
        sei
        .byte   $FB
        .byte   $C0
LE711:  cpx     #$F0
        sed
LE714:  .byte   $FC
        inc     LAFEE
        cpy     #$E0
        beq     LE714
        cpx     $DE
        asl     LF1DF,x
        .byte   $FF
        sei
        brk
        brk
        clc
        .byte   $1C
        asl     LFFFF
        .byte   $7F
        .byte   $0F
        .byte   $0F
        .byte   $07
        .byte   $03
        brk
LE730:  .byte   $8F
        .byte   $FF
        asl     $0C00,x
        rol     L7C7E,x
        .byte   $FF
        .byte   $FF
        inc     LF0F0,x
        cpy     #$80
        brk
        brk
        brk
LE742:  brk
        brk
        brk
LE745:  brk
LE746:  brk
        brk
LE748:  brk
        brk
        clc
        bit     $24
        clc
        brk
        brk
        brk
        .byte   $02
        eor     ($41,x)
        adc     ($33,x)
        asl     $3C
        .byte   $3C
        ror     LFFFF,x
        .byte   $FF
        .byte   $FF
        ror     $033C,x
LE761:  .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $03
        .byte   $07
        .byte   $0F
        .byte   $1F
LE76C:  .byte   $3F
        .byte   $63
        eor     ($C1,x)
        cpy     #$E0
        beq     LE76C
        .byte   $FC
        inc     LFFFE,x
        cpy     #$80
        brk
        brk
        sty     LFEFE
        .byte   $F3
LE780:  .byte   $FF
        .byte   $FF
        .byte   $FF
        sei
        brk
        brk
        brk
        brk
        cmp     ($E3,x)
        .byte   $FF
        .byte   $47
        .byte   $0F
        .byte   $0F
LE78E:  .byte   $0F
        .byte   $07
        .byte   $FF
        .byte   $FF
        .byte   $FF
        asl     L2000,x
        jsr     LF140
        sbc     LE2FF,y
        beq     LE78E
        beq     LE780
        asl     $1F,x
        .byte   $3F
        .byte   $7F
        .byte   $3D
        .byte   $1D
LE7A6:  .byte   $3F
        .byte   $1F
        asl     $1F,x
        brk
        brk
        ora     $0D
        .byte   $3F
        .byte   $1F
LE7B0:  .byte   $80
        .byte   $80
        cpy     #$E0
        beq     LE7A6
        beq     LE7B0
        .byte   $80
        .byte   $80
        brk
        brk
        brk
        ldy     #$A0
        cpx     #$3C
        .byte   $FA
        lda     ($72),y
        .byte   $F2
        .byte   $DB
        .byte   $DF
        .byte   $5F
        brk
        .byte   $04
        lsr     $0C8C
        .byte   $7F
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        ora     ($01,x)
        ora     (L0006,x)
        asl     a:L0000,x
        brk
        brk
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
LE7E7:  brk
        .byte   $FF
        .byte   $7F
        .byte   $3F
        .byte   $1F
        .byte   $0F
        .byte   $07
        .byte   $03
        ora     (L0000,x)
        .byte   $7C
        dec     $92,x
        tsx
        inc     $38FE
        .byte   $FF
        .byte   $83
        and     #$6D
        eor     $11
        ora     ($C7,x)
        brk
        ora     $3F,x
        .byte   $62
        .byte   $5F
        .byte   $FF
        .byte   $9F
        adc     $0808,x
        .byte   $02
        .byte   $1F
        .byte   $22
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
        php
        php
        php
        php
        php
        php
        php
        php
        .byte   $2F
        asl     $2F2F,x
        .byte   $2F
        ora     $0D,x
        asl     $1E10
        bpl     LE87C
        bpl     LE836
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE836:  brk
        brk
        brk
        brk
        brk
        inc     a:L0000,x
        brk
        brk
        .byte   $1C
        .byte   $3E
LE842:  .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FE
        .byte   $7C
LE847:  sec
        .byte   $1C
        rol     a
        .byte   $77
LE84B:  inc     LAADD
        .byte   $74
        plp
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     a:$FE,x
        .byte   $EF
        .byte   $EF
        .byte   $EF
        brk
        .byte   $FF
        .byte   $FF
LE862:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     LFEFE,x
        brk
        .byte   $EF
        .byte   $EF
        .byte   $EF
        brk
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        .byte   $7F
        .byte   $5F
        .byte   $7F
LE87C:  .byte   $7F
LE87D:  .byte   $7F
        .byte   $7F
LE87F:  .byte   $7F
        pla
        lsr     LE0E0
LE884:  cpx     #$F0
        sed
LE887:  .byte   $FC
        clv
        .byte   $9E
        .byte   $80
        cpy     #$E0
        beq     LE887
        .byte   $7C
        .byte   $3F
        .byte   $5C
        .byte   $39
LE893:  .byte   $3B
        .byte   $BB
LE895:  sbc     LFEFC,y
        brk
        .byte   $23
        .byte   $57
        .byte   $4F
        .byte   $57
LE89D:  .byte   $27
        .byte   $C3
        .byte   $21
LE8A0:  cpy     #$F0
        beq     $E894
        beq     $E886
        cpy     #$00
        brk
        bmi     LE91B
        bvs     LE89D
        cpx     #$C0
        brk
        inc     L61FC,x
        .byte   $0F
        .byte   $FF
        inc     LE0F0,x
        .byte   $13
        .byte   $0F
        asl     LFCF0,x
        sed
        beq     LE8A0
        ror     LE040
        cpx     #$E0
        cpx     #$E0
        cpy     #$BE
        bcc     LE84B
        cpy     #$C0
        .byte   $80
        brk
        brk
        ora     ($01,x)
        .byte   $03
        .byte   $03
        .byte   $07
        .byte   $7F
        .byte   $7F
        .byte   $3F
        ora     ($01,x)
        .byte   $03
        .byte   $03
        .byte   $07
        .byte   $7F
        adc     $063D,x
        .byte   $07
        .byte   $3F
        .byte   $3C
        ora     L7F7B,y
        .byte   $3F
LE8E8:  asl     $04
        bmi     LE90F
        asl     $64
        rts

        brk
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $07
        asl     L0000
        rts

        rts

        brk
        jsr     L0430
        asl     $03
        .byte   $07
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $07
LE907:  .byte   $03
        brk
        ora     ($01,x)
        brk
        brk
        brk
        brk
LE90F:  brk
        sed
        sed
        sed
        ldy     #$E1
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     LFFFF,x
LE91B:  rti

        ora     ($03,x)
        .byte   $03
        .byte   $03
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1F
        .byte   $0F
        .byte   $07
        ora     ($01,x)
        brk
        brk
        brk
        brk
        brk
        brk
        cpx     #$F8
        sed
        sed
        .byte   $FF
        inc     LC0F0,x
LE938:  cpx     #$FE
        .byte   $FF
        .byte   $7F
        .byte   $03
        .byte   $02
        brk
        brk
        ora     ($0F,x)
        .byte   $0F
        .byte   $1F
        and     $3733,y
        .byte   $7F
        ora     ($0D,x)
        php
        brk
        .byte   $36
LE94D:  bit     L6008
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $0F
        .byte   $0F
        ora     (L0060,x)
        brk
        jsr     L0030
        php
        ora     a:$01
        brk
        .byte   $03
        .byte   $03
        .byte   $47
        .byte   $67
        .byte   $77
        .byte   $77
        ora     ($01,x)
        .byte   $03
        .byte   $43
        .byte   $67
        .byte   $77
        .byte   $7B
        sei
        brk
        brk
        brk
        brk
        dey
        tya
        sed
        beq     LE979
LE979:  brk
        .byte   $80
        sty     $CC
        .byte   $DC
        ldy     L7E3C,x
        .byte   $7F
        .byte   $FF
        .byte   $1F
        .byte   $07
        bmi     LE9A3
        .byte   $0C
        .byte   $33
        .byte   $07
        .byte   $07
        .byte   $E3
        sec
        .byte   $3F
        .byte   $1C
        .byte   $0C
        ror     LF638,x
        sbc     $38DF
LE996:  bvs     LE9F8
LE998:  tya
        .byte   $C7
        iny
        .byte   $92
        bmi     LE996
        bvs     LEA00
        brk
        brk
        brk
LE9A3:  .byte   $03
        .byte   $03
        .byte   $47
        .byte   $67
        .byte   $77
        brk
        ora     ($01,x)
        .byte   $03
        .byte   $43
        .byte   $67
        .byte   $77
        .byte   $7B
        brk
        brk
        brk
        brk
        brk
        dey
        tya
        sed
LE9B8:  brk
        brk
        brk
        .byte   $80
        sty     $CC
        .byte   $DC
        .byte   $BC
        .byte   $77
LE9C1:  ror     LFF7F,x
        .byte   $1F
        .byte   $07
        bvs     LE9B8
        sei
        .byte   $33
        .byte   $07
        .byte   $07
        .byte   $E3
        sec
        .byte   $7F
        beq     LE9C1
LE9D1:  ror     LF638,x
        sbc     $38DF
LE9D7:  .byte   $3C
        .byte   $3C
        tya
        .byte   $C7
        iny
        .byte   $92
        bmi     LE9D7
        .byte   $3C
        .byte   $03
        .byte   $07
        asl     a
        .byte   $1A
        .byte   $1C
        asl     $080B,x
        brk
        bpl     LEA6A
        .byte   $7F
        .byte   $7F
        .byte   $1F
        .byte   $0F
        .byte   $0F
        .byte   $1C
        .byte   $3F
        .byte   $3F
        and     $1F3F,x
        brk
        brk
LE9F8:  .byte   $03
        .byte   $33
        and     $383A,y
LE9FD:  clc
        brk
        brk
LEA00:  brk
        brk
        .byte   $04
        jmp     L4E4E

        lsr     $6F
        bpl     LEA42
        .byte   $3C
        .byte   $74
        ror     $76,x
        ror     a:$7D,x
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $4F
        .byte   $5F
        .byte   $7F
        .byte   $7F
        brk
        brk
        ora     ($0A),y
        .byte   $34
        rol     a
        eor     (L0020),y
        .byte   $7F
        .byte   $67
        .byte   $A3
        bcs     LE9FD
        dec     LC8DC,x
        .byte   $7F
        .byte   $67
        .byte   $63
        bvs     LEA65
        rol     LB87C,x
LEA30:  .byte   $7F
        .byte   $7F
LEA32:  .byte   $7F
        .byte   $1F
        .byte   $47
        bvs     LEAA7
        and     L0A51,y
        .byte   $04
        nop
        .byte   $79
        .byte   $7F
LEA3E:  bvs     LEA79
        inx
        inx
LEA42:  cpx     #$C0
        bpl     LEAB6
        cpx     #$C0
        cli
        sec
        bpl     LEA7C
        beq     LEA3E
        cpx     #$C0
        brk
        brk
LEA52:  brk
        jsr     L6666
        ror     $62
        brk
        php
        .byte   $1C
        .byte   $3C
        .byte   $7A
        .byte   $7A
        .byte   $7A
        .byte   $7E
        brk
LEA61:  brk
        .byte   $1F
        .byte   $3F
        .byte   $7F
LEA65:  .byte   $4F
        .byte   $5F
        .byte   $7F
        brk
        brk
LEA6A:  brk
        ora     ($0A),y
        .byte   $34
        rol     a
        eor     ($77),y
        .byte   $7F
        .byte   $3F
        .byte   $B7
        .byte   $B3
        .byte   $DB
        .byte   $DA
        cld
LEA78:  .byte   $7F
LEA79:  adc     $373F,x
LEA7C:  .byte   $33
        .byte   $3B
        .byte   $3A
        sei
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $1F
        .byte   $07
        bvs     LEA78
        jsr     L0A51
        .byte   $04
        nop
        and     LF07F,y
        cpy     LE8E8
        cpx     #$C0
        clc
        .byte   $7C
        rol     $58BC,x
        sec
        bpl     LEACD
        sed
        .byte   $FC
        rol     $0F03,x
        .byte   $1F
        .byte   $3F
        .byte   $3B
        .byte   $3F
        .byte   $7F
LEAA7:  .byte   $7F
        brk
        brk
        brk
LEAAB:  asl     $0E
        .byte   $0C
        brk
        brk
        .byte   $80
        beq     LEAAB
        .byte   $FC
        .byte   $FE
        .byte   $FE
LEAB6:  .byte   $FF
        inc     a:L0000,x
        brk
        brk
        brk
        brk
        .byte   $0F
        clc
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $0F
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        sed
LEACD:  rol     $183B,x
        inc     LFFFB,x
        .byte   $FF
        inc     $E0,x
        cpy     #$00
        bpl     LEAEE
        bpl     LEAEC
        sec
        sei
        sed
        bmi     LEAE1
LEAE1:  .byte   $03
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $3B
        .byte   $3F
        .byte   $7F
        brk
        brk
        brk
        brk
LEAEC:  asl     $0E
LEAEE:  .byte   $0C
        brk
        brk
        cpy     #$F0
        sed
        .byte   $FC
        inc     LFFFE,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $0F
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        sed
        ror     LFEF3,x
        inc     LFFFB,x
        .byte   $FF
        inc     $E0,x
        cpy     #$18
        bpl     LEB2F
        bpl     LEB2D
        sec
        .byte   $7C
        dec     $0100,x
        ora     ($01,x)
        ora     (L0000,x)
        brk
        php
        brk
        .byte   $0D
        .byte   $1E
LEB2B:  .byte   $1E
        .byte   $1E
LEB2D:  .byte   $1F
        .byte   $0F
LEB2F:  .byte   $07
        sei
        beq     LEB2B
        cpx     $C0
        dex
        dex
        cpy     #$78
        beq     LEB3B
LEB3B:  .byte   $1A
        .byte   $3F
        and     $35,x
        .byte   $3F
        .byte   $0F
        .byte   $1F
        .byte   $9F
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $74
        jsr     L0000
        .byte   $80
        cpx     #$E0
        bvs     LEBC2
        and     ($E4,x)
        .byte   $FF
        inc     L9CFC,x
        asl     a:L0000,x
        .byte   $1A
        .byte   $07
        .byte   $0C
        clc
LEB5C:  sei
        .byte   $FE
LEB5E:  .byte   $FC
        beq     $EB61
        ora     ($03,x)
        .byte   $03
        .byte   $07
        .byte   $03
        ora     (L0000,x)
        brk
        ora     ($02,x)
LEB6B:  brk
        sec
        .byte   $7C
        ror     a:$3F,x
        .byte   $5F
        .byte   $7F
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $14
        brk
        .byte   $3F
        rti

        rts

        rts

        jsr     L1330
        ora     ($C0,x)
        cpx     #$F0
        bmi     LEBBD
        .byte   $3C
        .byte   $3C
        .byte   $FC
        cpy     #$E0
        bmi     LEB5C
        bne     LEB5E
        bne     LEB90
LEB90:  .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $22
        jsr     L2525
        .byte   $1F
        .byte   $07
        .byte   $0F
        .byte   $02
        ora     $1A1F,x
        .byte   $1A
        .byte   $02
        inc     L7EFE,x
        .byte   $3A
        .byte   $02
        ora     ($41,x)
        eor     ($38,x)
LEBA9:  .byte   $7C
        .byte   $FC
        .byte   $FC
        .byte   $FC
        inc     LBEBE,x
        .byte   $1F
LEBB1:  .byte   $3F
        ror     $405C,x
        .byte   $80
        .byte   $82
        .byte   $82
        .byte   $1C
LEBB9:  rol     $3F3F,x
        .byte   $3F
LEBBD:  .byte   $7F
LEBBE:  adc     L827D,x
        .byte   $80
LEBC2:  ldy     #$44
        .byte   $43
        rti

        and     ($1E,x)
LEBC8:  adc     $5F7F,x
        .byte   $3B
        .byte   $3C
        .byte   $3F
        asl     $1C00,x
        .byte   $3F
        .byte   $3E
        .byte   $3C
LEBD4:  rti

LEBD5:  .byte   $80
        .byte   $82
        .byte   $82
LEBD8:  .byte   $1C
        rol     $1F3F,x
        .byte   $3F
        .byte   $7F
        adc     a:$7D,x
        brk
        .byte   $80
        .byte   $80
        .byte   $92
        sta     LEFC7,x
        brk
        brk
        brk
        rts

        .byte   $62
        adc     $3F
        .byte   $1F
        brk
        .byte   $23
        .byte   $33
        .byte   $3F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        bvs     LEC36
        .byte   $3C
        clc
        brk
        brk
        .byte   $02
        .byte   $07
        inc     LA0F8,x
        brk
        brk
        brk
        .byte   $80
        .byte   $80
        .byte   $CF
        .byte   $7A
        .byte   $5A
        bpl     LEC0D
LEC0D:  brk
        cpy     #$80
        ror     L7D7F,x
        .byte   $3F
        asl     L8F8F,x
LEC17:  ora     L8485,y
        stx     $C6
        .byte   $E7
        .byte   $73
        .byte   $73
        sbc     ($E0,x)
        asl     LF373
        sbc     LF8F9,y
        bvs     LEBA9
        lsr     LF377
        .byte   $FB
        sbc     L78FA,y
        asl     LE266
        inc     $FF,x
        .byte   $FF
LEC36:  .byte   $1F
        tya
        ora     ($39),y
        adc     a:$39,x
        brk
        cpx     #$E7
        brk
        brk
        brk
        .byte   $04
        .byte   $0F
        .byte   $0F
        .byte   $1F
        .byte   $07
        brk
        brk
        .byte   $07
        .byte   $07
        .byte   $16
LEC4D:  bpl     LEC4F
LEC4F:  sec
        .byte   $F3
LEC51:  .byte   $E7
        inc     LCDEC
        .byte   $CF
        .byte   $CF
        .byte   $DF
        .byte   $CF
        .byte   $1F
LEC5A:  .byte   $17
        bpl     LEC90
        bmi     LEC8F
        jsr     L3F27
        .byte   $3F
        sei
        .byte   $3C
LEC65:  .byte   $1F
        .byte   $1F
        .byte   $73
        sec
        bmi     LECAB
        .byte   $C7
        .byte   $07
        ror     $E0
        jmp     (L3E9F)

        .byte   $7C
        .byte   $FC
        sed
        sed
        cpy     #$40
LEC78:  rts

        cpy     #$80
        .byte   $04
        .byte   $9E
        .byte   $FF
        beq     LEC78
        .byte   $7F
        ror     $0178,x
        .byte   $07
        .byte   $1F
        .byte   $3C
        .byte   $7C
        bit     $01
        .byte   $07
        inc     L7FFF,x
        .byte   $3F
LEC8F:  .byte   $7F
LEC90:  .byte   $FC
        sed
        ldy     #$FE
        .byte   $FC
        beq     LEC17
        brk
        .byte   $CF
        .byte   $7A
        asl     a
        inc     a:$FC,x
        brk
        brk
        ror     L7F7F,x
        .byte   $3F
        .byte   $1F
        .byte   $8F
        .byte   $8F
        clc
        sta     $86
        .byte   $83
LECAB:  .byte   $C3
        sbc     ($70,x)
LECAE:  bvs     LEC90
        .byte   $9F
        rol     LF87C,x
        sed
        .byte   $3C
        clc
        sed
        rts

        cpy     #$80
        brk
        tya
        .byte   $FC
        inc     L7FFF,x
        .byte   $7F
        sei
        ora     ($07,x)
        .byte   $13
        sbc     ($03),y
        bit     L0000
        .byte   $07
        inc     L7FFF,x
        .byte   $FF
        .byte   $03
        brk
        brk
        .byte   $1C
        ora     LC31B,x
        .byte   $E3
        sbc     ($03,x)
        .byte   $0F
        .byte   $23
        .byte   $62
        .byte   $64
        .byte   $3C
        .byte   $1C
        asl     LCDE0,x
        ora     LEE4F,x
LECE5:  .byte   $FF
        .byte   $3F
        .byte   $3F
        .byte   $1F
        and     $4F6D,x
        inc     $20F3
        .byte   $03
        .byte   $3F
LECF1:  .byte   $3F
        brk
        brk
LECF4:  bvs     LECAE
        .byte   $FC
        .byte   $FC
        .byte   $07
        .byte   $07
        .byte   $1F
        .byte   $3F
        .byte   $0F
        .byte   $47
        .byte   $03
        brk
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        rol     L787C,x
        sei
        brk
        brk
        .byte   $03
        .byte   $07
        .byte   $0F
LED0D:  .byte   $0F
        .byte   $1F
        .byte   $1F
LED10:  .byte   $3F
        .byte   $5C
        and     LBF3B,y
        .byte   $FF
        inc     a:$FE,x
        .byte   $23
        .byte   $57
        .byte   $4F
        .byte   $57
        .byte   $2F
LED1E:  .byte   $DF
        and     ($C0,x)
        cpy     #$80
        .byte   $80
        .byte   $80
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $80
        .byte   $80
        brk
        brk
        inc     L61FC,x
        .byte   $0F
        .byte   $7F
        .byte   $3F
        .byte   $1F
        asl     $0F23,x
        asl     $1CF0,x
        .byte   $3F
        .byte   $1F
        asl     L78F0,x
        cpx     $C8
        cpy     LBEBE
        rol     L8000,x
        clc
        bmi     LED81
        inc     LFEFE,x
        brk
        ora     (L0000,x)
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $1F
        brk
        brk
        ora     ($04,x)
        asl     L0006
        .byte   $07
        .byte   $07
        brk
        brk
        .byte   $0F
        .byte   $3F
        .byte   $3F
        .byte   $0F
        brk
        brk
        .byte   $0F
        .byte   $3F
        .byte   $7F
        sed
        sed
LED6D:  .byte   $7F
        .byte   $3F
        .byte   $0F
        sei
        .byte   $7C
        ror     $3F7F,x
        .byte   $3F
        .byte   $1B
        ora     #$1F
        .byte   $1F
        .byte   $1F
        .byte   $0B
        ora     ($01,x)
        brk
        brk
        .byte   $0C
LED81:  brk
        brk
        brk
        .byte   $07
        .byte   $7F
        .byte   $7C
        brk
        .byte   $03
        .byte   $1F
        .byte   $3F
        .byte   $3F
        sei
        brk
        .byte   $03
        .byte   $FF
        ora     ($E1,x)
        adc     ($79),y
        and     $1F3D,x
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $1B
        rol     L0030,x
        .byte   $7F
        .byte   $3F
        .byte   $23
        .byte   $27
        .byte   $1F
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $7F
        .byte   $3F
        sed
        sed
        sed
        clv
        clc
        cld
        cld
        clv
        cpx     #$80
        .byte   $80
        rti

        cpx     #$E0
        cpx     #$C0
        ora     ($02,x)
        .byte   $04
        .byte   $04
        php
        php
        bpl     LEDD8
        .byte   $03
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $FF
        .byte   $1F
        brk
        .byte   $0F
        .byte   $13
        ora     $130D
        .byte   $0C
        .byte   $20
LEDD8:  .byte   $1F
LEDD9:  bpl     LEDE7
        .byte   $12
        .byte   $12
        bit     $3F3F
        brk
        bit     L0000
        bit     L0000
        .byte   $04
        brk
LEDE7:  brk
LEDE8:  .byte   $37
        rol     $36,x
        .byte   $36
LEDEC:  asl     $16,x
        .byte   $12
        .byte   $02
        .byte   $0F
        eor     (L0000,x)
        dey
        brk
        .byte   $44
        brk
        brk
        bpl     LEE78
        .byte   $FF
        .byte   $FF
        inc     $76,x
        .byte   $3A
        .byte   $1A
        sec
LEE01:  .byte   $7C
LEE02:  inc     $3BFE,x
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        brk
        sec
        .byte   $04
        brk
        brk
LEE0E:  brk
        brk
        .byte   $03
        .byte   $33
        .byte   $7B
        .byte   $7F
        .byte   $FF
        .byte   $FB
        .byte   $03
        .byte   $03
        brk
        brk
        brk
        sec
        rti

        brk
LEE1E:  brk
LEE1F:  brk
        .byte   $DC
        cpy     #$E0
        cpx     #$E0
        cpx     #$E0
LEE27:  cpy     #$FC
        ldy     #$80
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $3F
        .byte   $5F
        .byte   $3F
        .byte   $3F
        .byte   $BB
        sed
        inc     $07FE,x
        .byte   $27
        .byte   $57
        .byte   $4F
        .byte   $57
        .byte   $27
        cmp     ($21,x)
        .byte   $1F
        .byte   $0F
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1E
LEE46:  sec
        bmi     $EE66
        .byte   $0F
LEE4A:  .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $1E
        sec
LEE4F:  bmi     LEE51
LEE51:  jsr     L6060
        bvs     LEE46
        sed
LEE57:  sed
        brk
        brk
        sec
        bpl     LEEA9
        clc
        stx     $24
        sed
        .byte   $FC
        .byte   $FC
        ror     $3E7E,x
        .byte   $1F
        .byte   $07
        brk
        .byte   $42
        asl     a
        rti

        bpl     LEE70
        php
        .byte   $02
LEE70:  brk
        cpy     #$70
        clv
        .byte   $F4
        .byte   $F2
        sbc     $7B,x
LEE78:  brk
        brk
        .byte   $80
        rti

        php
        .byte   $0C
        asl     a
        sty     L0000
        .byte   $DF
        .byte   $10
LEE83:  .byte   $FF
        .byte   $DF
        .byte   $FF
        .byte   $FF
        sbc     L0000,y
        .byte   $CF
        jsr     L2020
        rol     $2E
        .byte   $1F
        .byte   $1F
        rol     LF8FC,x
        beq     LEE57
        brk
        cpx     #$E0
        cpy     #$00
        brk
        brk
        brk
        brk
        sed
        .byte   $FC
        inc     LFFFF,x
        .byte   $DF
        .byte   $DF
        brk
        .byte   $2F
LEEA9:  .byte   $23
        and     (L0020,x)
        jsr     L0000
        brk
        cmp     ($F1,x)
        adc     $3D7D,y
        .byte   $3F
        .byte   $1F
        .byte   $03
        cmp     ($B1,x)
        .byte   $59
        .byte   $6D
LEEBC:  and     $3B,x
        .byte   $1F
        .byte   $03
        .byte   $02
        asl     $0E
        asl     $1E1E
        rol     a:$3E,x
        .byte   $02
        brk
        php
        .byte   $02
        brk
        plp
        brk
        rol     $3E3E,x
        rol     $1E1E,x
        asl     $0402
        bpl     LEEDD
        bpl     LEEE1
LEEDD:  brk
        asl     a
        brk
        .byte   $C1
LEEE1:  sbc     ($79),y
        adc     $3F3D,x
        .byte   $1F
        .byte   $03
        cmp     ($B1,x)
        eor     $356D,y
        .byte   $3B
LEEEE:  .byte   $1F
        .byte   $03
LEEF0:  .byte   $7C
        brk
        brk
        .byte   $FF
        .byte   $C3
        .byte   $7F
        .byte   $1F
        .byte   $03
        brk
        .byte   $0F
        .byte   $1F
        .byte   $FF
        .byte   $FC
        .byte   $63
        .byte   $1F
        .byte   $03
        .byte   $FF
        .byte   $FF
        .byte   $7C
        brk
        brk
        .byte   $7C
        .byte   $FF
        .byte   $FF
        brk
        brk
        inc     LC6C6,x
        inc     a:L0000,x
        .byte   $FF
        .byte   $FF
        brk
        .byte   $04
        .byte   $0C
        clc
        bmi     LEF18
LEF18:  brk
        brk
        asl     L0006
        .byte   $0C
        clc
        bvs     LEF80
        .byte   $FF
        .byte   $FF
        brk
        .byte   $04
        .byte   $04
        .byte   $04
        php
        php
        brk
        brk
        asl     L0006
        .byte   $04
        .byte   $04
        php
        php
        php
        bpl     LEF43
        brk
        brk
        bpl     LEF47
        php
        php
        bpl     LEF6B
LEF3B:  bmi     LEF6D
        bmi     LEF4F
        php
        .byte   $7F
        .byte   $3F
        .byte   $3F
LEF43:  rol     $0F1F,x
        .byte   $03
LEF47:  brk
        brk
        brk
        ora     ($03,x)
LEF4C:  ora     (L0000,x)
        brk
LEF4F:  brk
        .byte   $03
        .byte   $0F
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $03
        asl     a:$F8
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $22
        adc     $25
LEF6B:  and     $25
LEF6D:  and     $77
        .byte   $72
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $62
        sta     $15,x
        and     $45
        sta     $F7
        .byte   $F2
LEF80:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ldx     #$A5
        lda     $A5
        sbc     $F5,x
        .byte   $27
        .byte   $22
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $F2
        sta     $85
        sbc     $15
        ora     $F7,x
        .byte   $E2
        brk
        brk
        brk
        brk
        brk
LEFA5:  brk
        brk
        brk
        .byte   $62
        sta     $55,x
LEFAB:  adc     $B5
        sta     $97,x
        .byte   $62
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        jsr     L5050
        bvc     LF00D
        bvc     LF02F
        jsr     L0000
        brk
        brk
        brk
LEFC5:  brk
        brk
LEFC7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ror     $E6
        ror     $66
        ror     $67
        .byte   $F3
        brk
        brk
        brk
        brk
LEFE3:  brk
        brk
        brk
        brk
        brk
        lsr     $5959,x
        eor     LD85E,y
        tya
        brk
        brk
        brk
        brk
LEFF3:  brk
        brk
        .byte   $7C
        sec
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        php
LEFFF:  brk
        sec
        jmp     LC6C6

        dec     $64
        sec
LF007:  brk
        brk
        brk
        brk
        brk
        brk
LF00D:  brk
        brk
        brk
        clc
        sec
        clc
        clc
        clc
        clc
        ror     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $7C
        dec     $0E
        .byte   $3C
        sei
        cpx     #$FE
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF02F:  brk
        ror     $180C,x
        .byte   $3C
        asl     $C6
        .byte   $7C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        .byte   $3C
        jmp     (LFECC)

        .byte   $0C
        .byte   $0C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        cpy     #$FC
        asl     L0006
        dec     $7C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        rts

        cpy     #$FC
        dec     $C6
        .byte   $7C
        brk
        brk
LF069:  brk
        brk
        brk
        brk
        brk
        brk
LF06F:  brk
        inc     $0CC6,x
        clc
LF074:  bmi     LF0A6
LF076:  bmi     LF078
LF078:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LF07F:  brk
        .byte   $7C
        dec     $C6
        .byte   $7C
        dec     $C6
        .byte   $7C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $7C
        dec     $C6
        ror     $0C06,x
        sei
        brk
LF098:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sec
        .byte   $6C
        .byte   $C6
LF0A3:  dec     $FE
        .byte   $C6
LF0A6:  dec     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        dec     $C6
        .byte   $FC
        dec     $C6
        .byte   $FC
LF0B7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3C
        ror     $C0
        cpy     #$C0
        ror     $3C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sed
        cpy     LC6C6
        dec     $CC
        sed
LF0D7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        inc     LC0C0,x
        .byte   $FC
        cpy     #$C0
        inc     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF0F0:  inc     LC0C0,x
        .byte   $FC
        cpy     #$C0
        cpy     #$00
        brk
        brk
        brk
        brk
LF0FC:  brk
        brk
LF0FE:  brk
        brk
        rol     LC060,x
        dec     L66C6
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        dec     $C6
        dec     $FE
        dec     $C6
        dec     L0000
LF118:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ror     $1818,x
        clc
        clc
        clc
        ror     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $1E
LF131:  asl     L0006
        asl     $C6
        dec     $7C
        brk
LF138:  brk
LF139:  brk
        brk
        brk
        brk
LF13D:  brk
        brk
        brk
LF140:  dec     $CC
LF142:  cld
        beq     LF13D
        .byte   $DC
        dec     a:L0000
LF149:  brk
        brk
        brk
        brk
        brk
        brk
LF14F:  brk
        rts

        rts

        rts

        rts

        rts

        rts

        ror     a:L0000,x
LF159:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LF160:  dec     $EE
        inc     LD6FE,x
        dec     $C6
        brk
        brk
        brk
        brk
        brk
LF16C:  brk
        brk
        brk
        brk
        dec     $E6
        inc     $FE,x
        dec     LC6CE,x
        brk
LF178:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $7C
        dec     $C6
        dec     $C6
        dec     $7C
LF187:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LF18E:  brk
        brk
        .byte   $FC
        dec     $C6
        dec     $FC
        cpy     #$C0
        brk
LF198:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $7C
        .byte   $C6
LF1A2:  dec     $C6
        dec     L7ACC,x
        brk
        brk
        brk
        brk
        brk
LF1AC:  brk
        brk
        brk
LF1AF:  brk
        .byte   $FC
        dec     $C6
        dec     LDCF8
LF1B6:  dec     a:L0000
        brk
        brk
        brk
        brk
LF1BD:  brk
        brk
        brk
        sei
LF1C1:  cpy     L7CC0
        asl     $C6
        .byte   $7C
LF1C7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ror     $1818,x
        clc
        clc
        clc
        clc
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF1DE:  brk
LF1DF:  brk
        dec     $C6
        dec     $C6
        dec     $C6
        .byte   $7C
        brk
        brk
        brk
LF1EA:  brk
        brk
        brk
        brk
        brk
        brk
        dec     $C6
        dec     $EE
        .byte   $7C
        sec
        bpl     LF1F8
LF1F8:  brk
        brk
LF1FA:  brk
LF1FB:  brk
        brk
LF1FD:  brk
        brk
        brk
        dec     $C6
        dec     $FE,x
        inc     LC6EE,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        dec     $EE
        .byte   $7C
        sec
        .byte   $7C
        .byte   $EE
LF216:  dec     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ror     $66
        ror     $3C
        clc
        clc
        clc
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FE
        .byte   $0E
LF232:  .byte   $1C
        sec
        bvs     LF216
        inc     a:L0000,x
        brk
        brk
LF23B:  brk
LF23C:  brk
        brk
LF23E:  brk
        brk
LF240:  brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LF274:  .byte   $FF
        .byte   $FF
        .byte   $FF
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
        ror     a:$7E,x
        brk
        brk
        brk
LF289:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $44
        plp
        bpl     LF2BE
        .byte   $44
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
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        clc
        .byte   $3C
        .byte   $3C
        .byte   $3C
        clc
        clc
        brk
        clc
        brk
        brk
        brk
        brk
        brk
        brk
LF2BE:  brk
        brk
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $E3
        cmp     ($FF,x)
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        brk
        .byte   $1C
        .byte   $3E
        .byte   $80
LF2D1:  .byte   $80
        .byte   $80
        cmp     ($E3,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        rol     a:$1C,x
        brk
        .byte   $FF
        sec
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $7C
        sec
        brk
        php
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        php
        brk
        .byte   $03
        asl     $0C
        .byte   $0C
        php
        php
        .byte   $04
        .byte   $03
        .byte   $03
        ora     $0B
        .byte   $0B
        .byte   $0F
        .byte   $0F
        .byte   $07
        .byte   $03
        ora     ($02,x)
        .byte   $04
        php
        bpl     LF326
        rti

        .byte   $80
        ora     ($03,x)
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        .byte   $07
        sec
        cpy     #$00
        brk
        brk
        brk
        brk
        .byte   $07
        .byte   $3F
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        .byte   $E0
LF326:  .byte   $1C
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        cpx     #$FC
        .byte   $FF
        .byte   $80
        rti

        jsr     L0810
LF335:  .byte   $04
        .byte   $02
        ora     ($80,x)
        cpy     #$E0
        beq     LF335
        .byte   $FC
        inc     $04FF,x
        asl     $0E0E
        ror     L6064
        rts

        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $07
        php
        bpl     LF35C
LF35C:  rts

        .byte   $80
        .byte   $80
        rti

        .byte   $03
        .byte   $07
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        adc     $03F7,y
        .byte   $04
        clc
        jsr     L2020
        lsr     $88
        cpy     #$E0
        .byte   $F0
LF373:  .byte   $F4
        inc     LDFBF,x
LF377:  .byte   $FF
        cpy     #$20
        bpl     LF390
        asl     a
        eor     ($21,x)
        ora     ($90,x)
        clv
LF382:  sed
        .byte   $FA
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FE
        .byte   $90
LF389:  tay
        pha
        asl     a
LF38C:  ora     $01
LF38E:  ora     ($02,x)
LF390:  .byte   $3B
        ora     $0F0E,x
        .byte   $07
        brk
        brk
        brk
        bit     $12
        ora     #$08
        .byte   $07
        brk
        brk
        brk
LF3A0:  .byte   $FF
        .byte   $BF
        .byte   $1C
        cpy     #$F3
        .byte   $FF
        .byte   $7E
LF3A7:  .byte   $1C
        brk
        rti

LF3AA:  .byte   $E3
        .byte   $3F
        .byte   $0C
        .byte   $81
LF3AE:  .byte   $62
        .byte   $1C
        .byte   $BF
        .byte   $7F
        and     LC783,x
        .byte   $FF
        .byte   $FF
        .byte   $3C
        rti

        .byte   $80
        .byte   $C2
        .byte   $7C
        sec
        brk
        .byte   $C3
LF3BF:  .byte   $3C
        .byte   $FC
        inc     LFEFF,x
        inc     L60F8,x
        brk
        .byte   $04
        .byte   $02
        ora     (L0000,x)
        .byte   $06
LF3CD:  tya
        rts

        brk
        cpy     #$20
        bpl     LF3E4
        bpl     LF3E6
        jsr     LC0C0
        cpx     #$F0
        beq     LF3CD
        beq     LF3BF
        cpy     #$00
        brk
        brk
        brk
LF3E4:  .byte   $3F
        .byte   $7F
LF3E6:  cpx     #$C0
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        rol     L9C88,x
        dey
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $7F
        .byte   $7F
        .byte   $7F
        rol     a:$1C,x
        brk
        brk
        inc     LFEFE,x
        inc     LFEFE,x
        inc     LFFFE,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        php
        .byte   $14
        bit     $C4
        .byte   $03
        rti

        lda     ($26,x)
        brk
        php
        clc
        sec
LF41C:  .byte   $FC
        .byte   $BF
        lsr     LFFD9,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
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
        ora     ($01,x)
        ora     ($01,x)
        .byte   $7F
        .byte   $80
        .byte   $80
        tya
        .byte   $9C
        sty     L8080
        brk
        .byte   $7F
        .byte   $7F
        .byte   $67
        .byte   $67
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        ora     ($01,x)
        .byte   $FF
        bpl     LF466
        .byte   $10
LF457:  .byte   $FF
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
LF466:  .byte   $80
        .byte   $80
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        ora     ($01,x)
        ora     ($FF,x)
        bpl     LF486
        .byte   $10
LF477:  .byte   $FF
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
LF486:  brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $0101,x
        ora     $0D1D,y
        ora     ($01,x)
        brk
        .byte   $FF
        .byte   $FF
        .byte   $E7
        .byte   $E7
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ora     ($01,x)
        .byte   $01
LF4A3:  ora     ($01,x)
        ora     ($01,x)
        .byte   $01
LF4A8:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $3F
        rts

        rti

        cpy     #$80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ror     L803C,x
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        sta     ($42,x)
        .byte   $3C
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF4D4:  .byte   $FF
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     a:$7C,x
        brk
        brk
        brk
        brk
        ora     ($82,x)
        .byte   $7C
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     a:$7C,x
        brk
        brk
        brk
        brk
        ora     ($83,x)
        .byte   $FF
        sed
        .byte   $FC
        inc     LFFFE,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        sed
        .byte   $04
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ror     $013C,x
        ora     ($01,x)
        ora     ($01,x)
        sta     ($42,x)
        .byte   $3C
        brk
        php
        php
        php
        bpl     LF536
        bpl     LF528
LF528:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF52D:  .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        .byte   $7F
        .byte   $7F
        sei
        .byte   $73
        .byte   $73
LF536:  .byte   $73
        .byte   $7F
        .byte   $7F
        .byte   $80
        ldy     #$87
        .byte   $8F
        stx     L868E
        brk
        .byte   $FF
        .byte   $FF
        .byte   $3F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $1F
        inc     $0501,x
        cmp     ($E1,x)
        adc     ($71),y
        sbc     ($7E),y
        ror     L7E7F,x
        ror     L7F7F,x
        .byte   $FF
        sta     ($81,x)
        .byte   $80
        sta     ($81,x)
        ldy     #$80
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $F1
LF569:  cmp     ($C1,x)
        sta     ($C1,x)
        .byte   $C5
LF56E:  ora     ($FF,x)
        .byte   $7F
        .byte   $80
LF572:  ldy     #$80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF57D:  .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $0501,x
        ora     ($01,x)
        ora     ($01,x)
        ora     ($FE,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        ldy     #$80
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        ora     ($01,x)
        ora     ($01,x)
        ora     ($05,x)
        ora     ($FE,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     a:L0000,x
        brk
        brk
        .byte   $FC
        inc     $0307,x
        brk
        brk
        brk
        brk
        brk
        brk
        sec
        .byte   $7C
        ora     ($39),y
        ora     ($01),y
        ora     ($01,x)
        ora     ($01,x)
        inc     LFEFE,x
        .byte   $7C
        sec
        brk
        brk
        brk
        .byte   $EF
        plp
        plp
        plp
        plp
        plp
        .byte   $EF
        brk
        jsr     LE7E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $EF
        brk
        inc     L8282,x
        .byte   $82
        .byte   $82
        .byte   $82
        inc     $0200,x
        ror     L7E7E,x
        ror     LFE7E,x
        brk
        .byte   $80
        .byte   $80
        .byte   $80
        tya
        .byte   $9C
        sty     L7F80
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $67
        .byte   $67
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
LF601:  .byte   $FF
        .byte   $83
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $FF
        .byte   $80
LF60A:  .byte   $FC
        sty     L8C8C
        sty     LFF8C
        .byte   $FF
        beq     LF60A
        inc     $F6,x
        inc     $F6,x
        .byte   $FF
        brk
        .byte   $0F
        ora     #$09
        ora     #$09
        ora     #$FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        brk
        .byte   $FF
        .byte   $FF
LF62C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ora     ($57,x)
        .byte   $2F
        .byte   $57
        .byte   $2F
        .byte   $57
LF638:  .byte   $FF
        ora     ($FF,x)
        lda     #$D1
        lda     #$D1
        lda     #$F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $FF
        .byte   $3F
        sty     L8C8C
        sty     L8C8C
        .byte   $FF
        .byte   $3F
        inc     $F6,x
        inc     $F6,x
        inc     $F6,x
        .byte   $FF
        .byte   $FF
        ora     #$09
        ora     #$09
        ora     #$09
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
LF668:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $2F
        .byte   $57
        .byte   $2F
        .byte   $57
        .byte   $2F
        .byte   $57
        .byte   $FF
        .byte   $FC
        cmp     ($A9),y
        cmp     ($A9),y
        cmp     ($A9),y
        .byte   $FF
        .byte   $FC
        .byte   $3C
        .byte   $3C
        .byte   $3C
LF683:  .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $23
        .byte   $23
        .byte   $23
        .byte   $23
        .byte   $23
        .byte   $23
        .byte   $23
        .byte   $23
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FB
LF695:  .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ldy     LBC5C,x
        .byte   $5C
        .byte   $BC
LF6A5:  .byte   $5C
        ldy     $445C,x
        ldy     $44
        ldy     $44
        ldy     $44
        ldy     $1F
        jsr     L4040
        .byte   $80
        .byte   $80
        .byte   $80
        sta     ($1F,x)
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     L80FF,x
        .byte   $80
        cpy     #$FF
        .byte   $FF
        .byte   $FE
LF6C7:  inc     L7FFF,x
        .byte   $7F
        .byte   $3F
        brk
        brk
        ora     ($01,x)
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
LF6D5:  .byte   $07
        .byte   $03
        .byte   $03
        .byte   $FF
        .byte   $80
        .byte   $80
        brk
        brk
        sed
        .byte   $FC
        .byte   $FC
        .byte   $FF
        brk
        brk
        brk
        brk
        sta     ($C3,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ror     a:$3C,x
        sed
        .byte   $FC
        inc     LE3FE,x
        cmp     ($81,x)
        sta     ($F8,x)
        .byte   $04
        .byte   $02
        .byte   $02
        ora     L7F3F,x
        .byte   $7F
        .byte   $83
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $1F
        .byte   $FC
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        rts

        .byte   $1F
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        inc     LFFFE,x
        .byte   $FF
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     ($01,x)
        brk
        .byte   $FF
        ora     ($01,x)
        ora     ($01,x)
        .byte   $03
        .byte   $03
        .byte   $07
        .byte   $FF
        inc     LFEFE,x
        inc     LFCFC,x
        sed
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
LF73B:  brk
        brk
        brk
        brk
        .byte   $FF
        sta     ($C1,x)
        .byte   $E3
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $3F7F,x
        ora     $0101,x
        ora     ($03,x)
        .byte   $FE
LF750:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FB
        lda     $CE,x
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        sty     $CA
        lda     ($FF),y
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $DF
        lda     L0173
        ora     ($01,x)
        ora     ($01,x)
        and     ($53,x)
        sta     L7777
        .byte   $77
        .byte   $77
        .byte   $77
        .byte   $77
        .byte   $77
        .byte   $77
        brk
        brk
        brk
        brk
        .byte   $77
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $77
        .byte   $77
        .byte   $77
        .byte   $77
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $77
        .byte   $77
        .byte   $77
        .byte   $77
        .byte   $77
        ora     ($01,x)
        ora     ($19,x)
        ora     $010D,x
        inc     LFFFF,x
        .byte   $FF
        .byte   $E7
        .byte   $E7
        .byte   $FF
        .byte   $FF
        inc     L7820,x
        .byte   $7F
        inc     LFEFE,x
        inc     a:$FE,x
        and     ($21,x)
        eor     ($41,x)
        eor     ($41,x)
        eor     ($04,x)
        txs
        .byte   $FA
LF7C3:  sbc     LFDFD,x
        sbc     a:$FD,x
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        ror     $2138,x
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        and     ($21,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $FA
        txa
        sty     $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
LF7E9:  .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $02
        .byte   $04
        brk
        bpl     LF7F5
LF7F5:  rti

        .byte   $80
        brk
        ora     ($01,x)
        asl     $08
        clc
        jsr     LC020
        .byte   $0B
        .byte   $0B
        .byte   $3B
        .byte   $0B
        .byte   $FB
        .byte   $0B
        .byte   $0B
        asl     a
        .byte   $04
        .byte   $04
        .byte   $C4
LF80B:  .byte   $F4
        .byte   $F4
        .byte   $04
        .byte   $04
LF80F:  ora     $90
        bpl     LF832
        .byte   $10
LF814:  .byte   $1F
        bpl     LF827
        bcc     LF889
        beq     LF80B
        .byte   $FF
        .byte   $FF
        beq     LF80F
        bvs     LF860
        sei
        .byte   $E7
        .byte   $CF
        cli
        cli
        .byte   $50
LF827:  bcc     LF7E9
        .byte   $87
        clc
        bcs     LF814
        .byte   $E7
LF82E:  .byte   $EF
        .byte   $EF
        bcs     LF82E
LF832:  .byte   $E2
        .byte   $C1
LF834:  cmp     ($83,x)
        .byte   $8F
        ror     $436F,x
        eor     $3F3F,x
        .byte   $7F
        .byte   $7F
        .byte   $FF
LF840:  inc     $0F03,x
        sta     ($70),y
        rts

        .byte   $20
        .byte   $31
LF848:  .byte   $03
        .byte   $FF
        sbc     ($6E),y
        .byte   $CF
        .byte   $DF
        .byte   $FF
        .byte   $FF
        .byte   $3F
        .byte   $3F
        ora     L7B39,x
        .byte   $F3
        stx     $FE
        sbc     LFBFB,x
        .byte   $F7
        .byte   $F7
        .byte   $0F
        .byte   $7F
        .byte   $FF
LF860:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $80
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        .byte   $03
        .byte   $03
        .byte   $FF
        inc     $0303,x
        .byte   $03
LF87C:  .byte   $03
        .byte   $FF
        .byte   $FF
        .byte   $03
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
LF889:  .byte   $FF
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $3C
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $FC
        .byte   $04
        .byte   $04
        .byte   $23
        .byte   $F3
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $07
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $03
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $FF
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
LF8C6:  .byte   $FF
        .byte   $FF
LF8C8:  brk
        brk
        brk
        brk
LF8CC:  brk
        .byte   $FF
        brk
        brk
        .byte   $FC
        .byte   $FC
        inc     LFEFE,x
        .byte   $02
        inc     $07FE,x
LF8D9:  .byte   $07
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $FF
        .byte   $03
        .byte   $03
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF8F0:  .byte   $FF
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LF8F5:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LF8F9:  .byte   $FF
        .byte   $FF
        .byte   $FF
LF8FC:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $04
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF90D:  .byte   $FF
LF90E:  .byte   $FF
LF90F:  .byte   $FF
LF910:  .byte   $80
LF911:  .byte   $80
LF912:  tax
LF913:  cmp     $AA,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        cmp     $AA,x
        cmp     $80,x
        .byte   $80
        .byte   $FF
        .byte   $03
        .byte   $03
        .byte   $AB
        .byte   $57
        .byte   $AB
        .byte   $FF
        .byte   $FF
        inc     LFFFF,x
        .byte   $57
        .byte   $AB
        .byte   $57
        .byte   $03
        .byte   $03
        inc     $5500,x
        tax
        eor     $FF,x
        .byte   $FF
        .byte   $FF
        brk
        .byte   $FF
        tax
        eor     $AA,x
        brk
        brk
        .byte   $FF
        brk
        .byte   $04
        .byte   $54
        ldy     LFC5C
        .byte   $FC
        .byte   $FC
        .byte   $3C
        .byte   $FF
        .byte   $AF
        .byte   $57
        .byte   $AB
        .byte   $0B
        .byte   $0B
        .byte   $F3
        .byte   $23
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
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
        ror     L7C7C,x
        sei
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
        .byte   $1F
        .byte   $0F
        .byte   $0F
        .byte   $07
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
        inc     LFCFC,x
        sed
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
        brk
        brk
        brk
        brk
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
        clc
        clc
LF9A2:  clc
        clc
        clc
        clc
        clc
LF9A7:  clc
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $07
        .byte   $1F
        .byte   $3F
        .byte   $FF
LF9B4:  .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF9B9:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        sbc     ($F9,x)
        sbc     LFEFF,x
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        beq     LF9E2
        bpl     LF9E4
        bpl     LF9E6
        .byte   $10
LF9D7:  .byte   $FF
        brk
        cpx     #$E0
        cpx     #$E0
        cpx     #$E0
        cpx     #$1F
        .byte   $10
LF9E2:  bpl     LF9F4
LF9E4:  bpl     LF9F6
LF9E6:  .byte   $10
LF9E7:  .byte   $FF
        brk
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
LF9F0:  .byte   $92
        .byte   $92
        .byte   $92
        .byte   $FE
LF9F4:  .byte   $FE
        brk
LF9F6:  brk
        brk
        pha
        pha
        jmp     (L0000)

        brk
        inc     $0A00,x
        asl     a
        .byte   $3A
        asl     a
        .byte   $FB
        .byte   $0B
        .byte   $0B
        .byte   $0B
        ora     $05
        cmp     $F5
        .byte   $F4
        .byte   $04
        .byte   $04
        .byte   $04
        bcc     LF9A2
        .byte   $9F
        bcc     LF9B4
        bcc     LF9A7
        bcc     LFA89
        bvs     LFA8B
        .byte   $7F
        .byte   $7F
        bvs     LFA8F
        bvs     LFA22
        .byte   $01
LFA22:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        brk
LFA39:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        php
        dey
        sta     ($D1),y
        .byte   $53
        .byte   $53
        .byte   $73
        .byte   $3F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     LCEBE,x
        brk
        brk
        .byte   $07
        .byte   $0F
        .byte   $0C
        .byte   $1B
        .byte   $1B
        .byte   $1B
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $04
LFA5E:  .byte   $04
        .byte   $04
        brk
        brk
        cpx     #$F0
        beq     LFA5E
        sed
        sed
        brk
        brk
        rts

        bmi     LFA9D
        tya
        tya
        tya
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $0F
        .byte   $0F
LFA77:  .byte   $07
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        brk
        brk
        sed
        sed
        sed
        sed
        sed
        beq     LFA77
        cpx     #$98
LFA89:  tya
        tya
LFA8B:  tya
        tya
        bmi     LFABF
LFA8F:  rts

        sbc     ($11),y
        ora     ($1F),y
        bpl     LFAA6
        .byte   $10
LFA97:  .byte   $FF
        .byte   $0F
        .byte   $EF
        .byte   $EF
        .byte   $EF
        .byte   $EF
LFA9D:  .byte   $EF
        .byte   $EF
        cpx     #$1F
        bpl     LFAB3
        beq     LFAB5
        .byte   $10
LFAA6:  .byte   $10
LFAA7:  .byte   $FF
        cpx     #$EF
        .byte   $EF
        .byte   $EF
        .byte   $EF
        .byte   $EF
        .byte   $EF
        .byte   $0F
        .byte   $7F
        .byte   $BF
LFAB2:  .byte   $DF
LFAB3:  .byte   $EF
LFAB4:  .byte   $F0
LFAB5:  beq     LFAA7
        beq     LFA39
        rti

        jsr     L0F10
        .byte   $0F
        .byte   $0F
LFABF:  .byte   $0F
        beq     LFAB2
        beq     LFAB4
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        ora     ($03,x)
        .byte   $07
        .byte   $0F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $F7
        .byte   $FB
        sbc     LFFFE,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
LFAF1:  brk
        brk
        brk
        brk
        brk
        clc
        clc
        brk
        brk
        brk
LFAFB:  brk
        brk
        brk
LFAFE:  brk
        brk
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $1F
        jsr     L4040
        rti

        .byte   $80
        .byte   $82
        .byte   $82
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $3F
        asl     L8082,x
        ldy     #$44
        .byte   $43
        rti

        and     ($1E,x)
        sed
        .byte   $FC
        inc     LFEFE,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        sed
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($41,x)
        eor     ($FF,x)
        .byte   $FF
        .byte   $FF
        inc     LFEFE,x
        .byte   $FC
        sei
        eor     ($01,x)
        ora     $22
        .byte   $C2
        .byte   $02
        sty     L0078
        .byte   $7F
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        dec     L6161,x
        adc     ($71,x)
        lsr     L617F,x
        adc     ($DF,x)
        .byte   $DF
        .byte   $DF
        .byte   $DF
        .byte   $FF
        cmp     ($DF,x)
        .byte   $80
        .byte   $80
        cpy     #$F0
        .byte   $BF
        .byte   $8F
        sta     ($7E,x)
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $3F
        .byte   $4F
        adc     ($7F),y
        .byte   $FF
        adc     ($61,x)
        cmp     ($C1,x)
        sta     ($81,x)
LFB76:  .byte   $83
LFB77:  inc     LDFDF,x
        .byte   $BF
        .byte   $BF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        brk
        brk
LFB82:  .byte   $03
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        brk
        brk
        .byte   $03
        .byte   $0C
        bpl     LFBAE
        rti

        rti

        brk
        brk
        cpy     #$F0
        sed
        .byte   $FC
        inc     a:$FE,x
        brk
        cpy     #$30
        php
        .byte   $04
        .byte   $02
LFB9F:  .byte   $02
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
LFBAE:  .byte   $80
        .byte   $80
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
        ora     ($01,x)
        ora     ($01,x)
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $0F
        .byte   $07
LFBC8:  rti

        rti

        rti

        jsr     L1C30
        .byte   $0F
        .byte   $07
LFBD0:  inc     LFEFE,x
        .byte   $FC
        .byte   $FC
        sed
        beq     LFBC8
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        .byte   $0C
        sec
        beq     LFBD0
        .byte   $0F
        .byte   $0F
LFBE2:  .byte   $0F
        .byte   $0F
LFBE4:  .byte   $0F
        .byte   $0F
LFBE6:  .byte   $07
        .byte   $0F
        php
        php
        php
        php
        php
        .byte   $0C
        ora     $0A
        beq     LFBE2
        beq     LFBE4
        beq     LFBE6
        cpx     #$F0
        bpl     LFC4A
        .byte   $50
LFBFB:  bvc     LFC4D
        bmi     LFB9F
        bvc     LFB82
LFC01:  cmp     ($A3,x)
        .byte   $A3
LFC04:  sta     L8181,x
        sta     (L0000,x)
        eor     ($22,x)
        .byte   $22
        .byte   $1C
        brk
        brk
LFC0F:  brk
        .byte   $E3
        .byte   $F7
        cmp     ($C1,x)
        cmp     ($C1,x)
        .byte   $F7
        .byte   $E3
        .byte   $E3
        .byte   $14
        rol     $3E3E,x
LFC1D:  rol     LE314,x
        brk
        brk
        .byte   $07
        .byte   $0F
        .byte   $0C
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $FF
        .byte   $FF
        sed
        beq     LFC1D
        .byte   $E0
LFC2E:  cpx     #$E0
        brk
        brk
        cpx     #$F0
        beq     LFC2E
        sed
        sed
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $9F
        .byte   $9F
        .byte   $9F
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $0F
        .byte   $0F
LFC47:  .byte   $07
LFC48:  cpx     #$E0
LFC4A:  cpx     #$E0
        .byte   $E0
LFC4D:  .byte   $F3
        beq     LFC48
        sed
        sed
        sed
        sed
        sed
        beq     LFC47
        cpx     #$9F
        .byte   $9F
        .byte   $9F
        .byte   $9F
LFC5C:  .byte   $9F
        .byte   $3F
        .byte   $3F
        .byte   $7F
        cpx     #$FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        bvs     LFC8A
        bpl     LFCDD
LFC6D:  .byte   $7F
LFC6E:  .byte   $7F
        .byte   $7F
        .byte   $07
LFC71:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        .byte   $03
        sed
        brk
        .byte   $03
        .byte   $FB
        .byte   $FB
        .byte   $FB
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     LEFFF,x
        .byte   $7C
        .byte   $7B
LFC8A:  ror     $75,x
        adc     $77,x
        .byte   $17
        .byte   $67
        .byte   $FF
        .byte   $DF
        .byte   $EF
        .byte   $AF
        .byte   $AF
        .byte   $6F
        .byte   $EF
        .byte   $E7
        .byte   $3B
        .byte   $FB
        .byte   $7B
        .byte   $FB
        .byte   $FB
        .byte   $F3
        sed
        .byte   $F3
        .byte   $1F
        .byte   $1F
        .byte   $3F
        .byte   $3F
        bvs     LFD09
        .byte   $E7
        sbc     $0F
        .byte   $0F
        .byte   $1F
LFCAB:  .byte   $1F
        .byte   $3F
LFCAD:  .byte   $3C
        sei
        .byte   $7A
        .byte   $F0
LFCB1:  beq     LFCAB
        sed
        .byte   $0C
        cpy     $E4
        ldx     $F8
        sed
        .byte   $FC
        .byte   $FC
LFCBC:  inc     $1E3E,x
        .byte   $5F
        sbc     #$E9
        sbc     #$EF
        .byte   $E2
        .byte   $E3
        .byte   $F0
LFCC7:  .byte   $FF
        ror     $76,x
        ror     $70,x
        adc     L7F7C,x
        .byte   $7F
        stx     $96,y
        stx     $F6,y
        lsr     $C6
        asl     L6FFE
        .byte   $6F
        .byte   $6F
        .byte   $0F
        .byte   $BF
LFCDD:  .byte   $3F
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        ror     $3C3C,x
        ror     LFF7E,x
        .byte   $FF
        .byte   $FF
        .byte   $42
        brk
LFCF0:  .byte   $3C
        .byte   $42
        sta     LA1A1,y
        sta     $3C42,y
        brk
        brk
        brk
        brk
LFCFC:  brk
        brk
        brk
        brk
        .byte   $0F
        .byte   $1F
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $F0
LFD09:  .byte   $E0
LFD0A:  cpx     #$C0
        cpy     #$80
        .byte   $80
        .byte   $80
        beq     LFD0A
        sed
        .byte   $FC
        .byte   $FC
        inc     LFEFE,x
        .byte   $0F
        .byte   $07
        .byte   $07
        .byte   $03
        .byte   $03
        ora     ($01,x)
        ora     ($7F,x)
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $1F
        .byte   $80
        .byte   $80
        cpy     #$C0
        cpx     #$F8
        inc     LFEFF,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FC
        .byte   $FC
        inc     LFFFE,x
        .byte   $7F
        .byte   $1F
        .byte   $07
        .byte   $03
        .byte   $03
        ora     ($81,x)
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $80
        .byte   $80
        .byte   $80
        cpy     #$C0
        cpx     #$E0
LFD4F:  beq     LFD4F
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $0101,x
        ora     ($03,x)
        .byte   $03
        .byte   $07
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $0F
        .byte   $0F
        .byte   $07
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
        inc     LFCFC,x
        sed
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
        ror     L7E7E,x
        ror     L7F7F,x
        .byte   $7F
        .byte   $7F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $0101,x
        ora     ($03,x)
        .byte   $03
        .byte   $07
        .byte   $07
        .byte   $0F
        inc     LFEFE,x
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FC
LFDC5:  .byte   $FE
        .byte   $FE
LFDC7:  ror     $03FF,x
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $0101,x
        ora     ($03,x)
        .byte   $07
LFDFD:  .byte   $03
        ora     ($01,x)
LFE00:  .byte   $7E
        .byte   $7E
LFE02:  .byte   $7F
        .byte   $7F
        .byte   $7F
LFE05:  .byte   $7F
LFE06:  .byte   $7F
LFE07:  .byte   $7F
        sta     ($81,x)
        .byte   $81
LFE0B:  sta     ($81,x)
        sta     ($81,x)
        sta     ($3F,x)
        .byte   $3F
        .byte   $3F
        .byte   $3F
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
        ror     L7C7C,x
        sei
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
        inc     LFFFE,x
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        .byte   $7F
        .byte   $7F
LFE42:  .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $1F
        .byte   $80
        .byte   $80
LFE4A:  .byte   $C0
LFE4B:  cpy     #$E0
        sed
        inc     $3FFF,x
        .byte   $BF
        .byte   $FF
        .byte   $FF
        .byte   $FC
        .byte   $FC
        inc     LFFFE,x
        .byte   $7F
        .byte   $1F
        .byte   $07
        .byte   $03
        .byte   $03
        ora     ($81,x)
        .byte   $7F
        .byte   $7F
        ror     L7F7E,x
        .byte   $7F
        .byte   $7F
        .byte   $7F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
        ror     L7E7E,x
        ror     L7F7F,x
        .byte   $7F
        .byte   $7F
        sta     ($81,x)
        sta     ($81,x)
        sta     ($81,x)
LFE7E:  sta     ($81,x)
LFE80:  sta     ($C3,x)
        .byte   $C3
        .byte   $E7
        .byte   $E7
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ror     $3C3C,x
        clc
        clc
        brk
        brk
        brk
        .byte   $0F
        .byte   $43
        .byte   $5B
        .byte   $53
        and     ($19),y
        .byte   $0F
        .byte   $07
        .byte   $F2
        inc     LFFFE,x
        .byte   $FF
        .byte   $EF
        .byte   $F7
        sed
        cmp     ($C3,x)
        dec     $84
        .byte   $FC
        .byte   $FC
        asl     LBF02
        ldx     L7BBD,y
        .byte   $7B
        .byte   $07
        .byte   $F3
        sbc     $2010,x
        .byte   $22
        tsx
        inc     $E1
        cpy     #$C0
        .byte   $FF
        .byte   $FF
LFEBA:  .byte   $FF
        .byte   $67
        eor     LBF9E,y
        .byte   $BF
        jsr     L54A6
        rol     L0020
        dec     $54
        rol     L0020
        inc     $54
        .byte   $26
LFECC:  and     (L0006,x)
        .byte   $54
        rol     L0020
        sta     $01
        .byte   $44
        jsr     L5486
        pha
        jsr     L019A
        eor     #$20
        lda     $C9
        lsr     L0020
        tsx
        cmp     #$4A
        jsr     L0AA6
        bne     LFEBA
        cld
        cld
        dec     LD0D1,x
        .byte   $DA
        dec     $20D1,x
        .byte   $C6
LFEF3:  asl     a
        .byte   $D2
        .byte   $D3
LFEF6:  .byte   $DB
        .byte   $DB
        .byte   $DB
        cmp     LDCDB,y
LFEFC:  .byte   $DB
        .byte   $DF
LFEFE:  .byte   $20
LFEFF:  .byte   $E6
LFF00:  asl     a
LFF01:  .byte   $D4
        cmp     $D4,x
        .byte   $D9
LFF05:  .byte   $DB
        .byte   $E2
LFF07:  .byte   $D4
        .byte   $DA
        .byte   $DB
        cpx     #$21
        asl     $0A
        dec     $D7,x
        dec     $D7,x
        sbc     ($26,x)
        dec     $DD,x
        sbc     ($E1,x)
LFF18:  and     ($26,x)
        .byte   $14
LFF1B:  bne     LFF05
        cmp     ($D0),y
        cmp     ($DE),y
        cmp     ($D8),y
        bne     LFEF6
        rol     $DE
        cmp     ($DE),y
        cmp     ($D0),y
        cmp     ($D0),y
        cmp     ($26),y
        and     ($46,x)
        .byte   $14
        .byte   $DB
        .byte   $42
        .byte   $42
        .byte   $DB
        .byte   $42
        .byte   $DB
        .byte   $42
        .byte   $DB
        .byte   $DB
        .byte   $42
        rol     $DB
        .byte   $42
        .byte   $DB
        .byte   $42
        .byte   $DB
        .byte   $42
        .byte   $DB
        .byte   $42
        rol     $21
        ror     $46
        .byte   $DB
        and     ($6C,x)
        asl     LDBDF
        .byte   $DB
        .byte   $DB
        rol     $DB
        .byte   $DF
        .byte   $DB
        .byte   $DF
        .byte   $DB
        .byte   $DB
        cpx     $E5
        rol     $21
        stx     $14
        .byte   $DB
        .byte   $DB
        .byte   $DB
        dec     LDB43,x
        cpx     #$DB
LFF66:  .byte   $DB
        .byte   $DB
        rol     $DB
        .byte   $E3
        .byte   $DB
        cpx     #$DB
        .byte   $DB
        inc     $E3
        rol     $21
        ldx     $14
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $42
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $D4
LFF7E:  .byte   $D9
LFF7F:  rol     $DB
        cmp     LDBDB,y
        .byte   $D4
        cmp     LD9D4,y
        .byte   $E7
        and     ($C5,x)
        .byte   $16
LFF8C:  .byte   $5F
        sta     $95,x
        sta     $95,x
        sta     $95,x
        sta     $95,x
        .byte   $97
LFF96:  tya
        sei
        sta     $96,x
LFF9A:  sta     $95,x
        .byte   $97
        tya
        .byte   $97
        tya
        sta     $7A,x
LFFA2:  and     ($ED,x)
        asl     $01CF
        ora     #$08
        ora     $24
        .byte   $17
        .byte   $12
        .byte   $17
        ora     $170E,x
        ora     $2218
        .byte   $4B
        ora     $2401
        ora     $0A15,y
        .byte   $22
        asl     $241B
        bpl     LFFCB
        asl     $0E,x
        .byte   $22
        .byte   $8B
        ora     $2402
        .byte   $19
LFFC9:  ora     $0A,x
LFFCB:  .byte   $22
        asl     $241B
        bpl     LFFDB
        asl     $0E,x
        .byte   $22
        cpx     L1D04
        clc
        .byte   $19
LFFD9:  plp
        .byte   $22
LFFDB:  inc     $01,x
        brk
        .byte   $23
        cmp     #$56
        eor     $23,x
        .byte   $E2
        .byte   $04
        sta     LAAAA,y
        tax
        .byte   $23
LFFEA:  nop
        .byte   $04
        sta     LAAAA,y
        tax
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LFFF8:  .byte   $FF
        .byte   $FF
        .byte   $FF
LFFFB:  .byte   $FF
        .byte   $FF
        .byte   $FF
LFFFE:  .byte   $FF
LFFFF:  .byte   $FF
