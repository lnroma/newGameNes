; da65 V2.18 - N/A
; Created:    2023-02-22 12:01:12
; Input file: newGame.nes
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0020           := $0020
L0100           := $0100
L0101           := $0101
L0810           := $0810
L1111           := $1111
L1121           := $1121
L2020           := $2020
L3021           := $3021
L3078           := $3078
L3660           := $3660
L3838           := $3838
L4021           := $4021
        lsr     $5345
        .byte   $1A
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
        rts

        lda     #$64
        sta     a:$24
        lda     #$00
        sta     a:$26
        sta     a:$45
        lda     #$C8
        sta     a:$25
        sta     a:$4F
        lda     #$04
        sta     a:$27
        lda     #$01
        sta     a:$15
        lda     #$00
        sta     a:$10
        lda     #$00
        sta     a:$14
        rts

        jsr     LC07D
        rts

        lda     #$00
        sta     a:$38
        lda     #$00
        sta     a:$37
        lda     #$00
        sta     a:$36
        rts

        lda     a:$36
        sta     $2005
        lda     #$00
        sta     $2005
        rts

        ldx     a:$27
LA04E:  lda     #$0A
        sta     $2004
        lda     #$06
        sta     $2004
        lda     #$17
        sta     $2004
        lda     LD400,x
        adc     #$0A
        sta     $2004
        dex
        bne     LA04E
        rts

        rts

        jsr     LCF6F
        lda     a:L0020
        cmp     #$03
        bne     LA076
        beq     LA07C
LA076:  inc     a:$25
        inc     a:$25
LA07C:  rts

        lda     a:$4F
        cmp     a:$25
        bne     LA087
        beq     LA088
LA087:  rts

LA088:  lda     #$00
        sta     a:$15
        sta     a:$14
        sta     a:$13
        rts

        jsr     LC2BB
        jsr     LC2C7
        jsr     LC2AF
        ldx     a:$3B
        jsr     LC0EE
        rts

        cpx     #$02
        beq     LA0BC
        cpx     #$82
        beq     LA0C0
        cpx     #$81
        beq     LA0D4
        cpx     #$41
        beq     LA0D8
        cpx     #$42
        beq     LA0CA
        jsr     LC2C1
        rts

LA0BC:  jsr     LC961
        rts

LA0C0:  jsr     LC961
        jsr     LC2CE
        jsr     LC2A3
        rts

LA0CA:  jsr     LC961
        jsr     LC724
        jsr     LC29D
        rts

LA0D4:  jsr     LC13C
        rts

LA0D8:  jsr     LC2B5
        jsr     LC724
        jsr     LC29D
        rts

        jsr     LC150
        rts

        jsr     LC15D
        rts

        jsr     LC2B5
        rts

        cpx     #$40
        beq     LA126
        cpx     #$60
        beq     LA116
        cpx     #$A0
        beq     LA11A
        cpx     #$50
        beq     LA112
        cpx     #$90
        beq     LA11E
        cpx     #$80
        beq     LA122
        cpx     #$20
        beq     LA12A
        cpx     #$10
        beq     LA12E
        jsr     LC0A4
        rts

LA112:  jsr     LC184
        rts

LA116:  jsr     LC177
        rts

LA11A:  jsr     LC16A
        rts

LA11E:  jsr     LC18B
        rts

LA122:  jsr     LC146
        rts

LA126:  jsr     LC132
        rts

LA12A:  jsr     LC1E2
        rts

LA12E:  jsr     LC1FB
        rts

        jsr     LC29D
        jsr     LC2A9
        jsr     LC724
        rts

        jsr     LC2B5
        jsr     LC2CE
        jsr     LC2A3
        rts

        jsr     LC2CE
        jsr     LC2A3
        jsr     LC2A9
        rts

        jsr     LC2B5
        jsr     LC2CE
        jsr     LC2A3
        jsr     LC961
        rts

        jsr     LC2B5
        jsr     LC724
        jsr     LC29D
        jsr     LC961
        rts

        jsr     LC2A3
        jsr     LC2CE
        jsr     LC2A9
        jsr     LC1E2
        rts

        jsr     LC29D
        jsr     LC724
        jsr     LC2A9
        jsr     LC1E2
        rts

        jsr     LC724
        jsr     LC1FB
        rts

        jsr     LC2A3
        jsr     LC2CE
        jsr     LC2A9
        jsr     LC1FB
        rts

        lda     a:$25
        clc
        adc     #$01
        sta     a:$1F
        lda     a:$24
        sta     a:$1E
        jsr     LCF6F
        lda     a:L0020
        cmp     #$03
        beq     LA1B3
        bne     LA1BC
LA1B3:  inc     a:$25
        lda     a:$25
        sta     a:$4F
LA1BC:  rts

        lda     a:$25
        clc
        sbc     #$01
        sta     a:$1F
        lda     a:$24
        sta     a:$1E
        jsr     LCF6F
        lda     a:L0020
        cmp     #$03
        beq     LA1D8
        bne     LA1E1
LA1D8:  dec     a:$25
        lda     a:$25
        sta     a:$4F
LA1E1:  rts

        lda     a:$4B
        cmp     #$01
        beq     LA1EB
        bne     LA1F1
LA1EB:  jsr     LC29D
        jmp     LC1F4

LA1F1:  jsr     LC2A3
        jsr     LC198
        jsr     LC2A9
        rts

        lda     a:$4B
        cmp     #$01
        beq     LA204
        bne     LA20A
LA204:  jsr     LC29D
        jmp     LC20D

LA20A:  jsr     LC2A3
        jsr     LC1BD
        jsr     LC2A9
        rts

        jsr     LC96B
        jsr     LC21B
        rts

        jsr     LC27E
        jsr     LC225
        jsr     LC263
        rts

        lda     a:$4C
        cmp     #$01
        beq     LA22E
        bne     LA262
LA22E:  lda     a:$13
        cmp     #$01
        beq     LA262
        bne     LA237
LA237:  lda     a:$4D
        cmp     #$01
        beq     LA240
        bne     LA251
LA240:  lda     a:$4B
        cmp     #$01
        beq     LA24D
        bne     LA249
LA249:  jsr     LCAF1
        rts

LA24D:  jsr     LCD19
        rts

LA251:  lda     a:$4B
        cmp     #$01
        beq     LA25E
        bne     LA25A
LA25A:  jsr     LC2FD
        rts

LA25E:  jsr     LC743
        rts

LA262:  rts

        lda     a:$4E
        cmp     #$01
        bne     LA27D
        beq     LA26C
LA26C:  lda     a:$4B
        cmp     #$01
        beq     LA279
        bne     LA275
LA275:  jsr     LC521
        rts

LA279:  jsr     LC623
        rts

LA27D:  rts

        lda     a:$13
        cmp     #$01
        beq     LA287
        bne     LA298
LA287:  lda     a:$4B
        cmp     #$01
        beq     LA290
        bne     LA294
LA290:  jsr     LCA36
        rts

LA294:  jsr     LC98B
        rts

LA298:  rts

        jsr     LC5CC
        rts

        lda     #$01
        sta     a:$4B
        rts

        lda     #$02
        sta     a:$4B
        rts

        lda     #$01
        sta     a:$4C
        rts

        lda     #$00
        sta     a:$4C
        rts

        lda     #$01
        sta     a:$4D
        rts

        lda     #$00
        sta     a:$4D
        rts

        lda     #$01
        sta     a:$4E
        rts

        lda     #$00
        sta     a:$4E
        rts

        rts

        lda     a:$25
        sta     a:$1F
        lda     a:$24
        clc
        adc     #$01
        sta     a:$1E
        jsr     LCF6F
        lda     a:L0020
        cmp     #$03
        beq     LA2E8
        rts

LA2E8:  lda     a:$24
        cmp     #$7A
        bcs     LA2F1
        bne     LA2F5
LA2F1:  jsr     LC2F9
        rts

LA2F5:  inc     a:$24
        rts

        inc     a:$36
        rts

        lda     $11
        and     #$08
        cmp     #$01
        beq     LA30D
        and     #$08
        beq     LA313
        and     #$0A
        beq     LA319
LA30D:  jsr     LC31F
        inc     $10
        rts

LA313:  jsr     LC3CA
        inc     $10
        rts

LA319:  jsr     LC475
        inc     $10
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        adc     #$08
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        adc     #$06
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        adc     #$08
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$15
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        adc     #$06
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        adc     #$08
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$17
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        adc     #$06
        sta     $021B
        rts

        rts

        lda     a:$25
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$16
        sta     $0202
        lda     a:$24
        adc     #$06
        sta     $0203
        lda     a:$25
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$08
        sta     $0208
        lda     #$10
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        adc     #$10
        sta     $020C
        lda     #$20
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$08
        sta     $0214
        lda     #$10
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        adc     #$10
        sta     $0218
        lda     #$20
        sta     $0219
        lda     #$57
        sta     $021A
        lda     a:$24
        adc     #$08
        sta     $021B
        rts

        lda     #$00
        sta     $0200
        sta     $0201
        sta     $0202
        sta     $0203
        sta     $0204
        sta     $0205
        sta     $0206
        sta     $0207
        sta     $0208
        sta     $0209
        sta     $020A
        sta     $020B
        sta     $020C
        sta     $020D
        sta     $020E
        sta     $020F
        sta     $0210
        sta     $0211
        sta     $0212
        sta     $0213
        sta     $0214
        sta     $0215
        sta     $0216
        sta     $0217
        sta     $0218
        sta     $0219
        sta     $021A
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$56
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$07
        sta     $0207
        lda     a:$25
        adc     #$08
        sta     $0208
        lda     #$10
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        adc     #$10
        sta     $020C
        lda     #$20
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$08
        sta     $0214
        lda     #$10
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        adc     #$10
        sta     $0218
        lda     #$20
        sta     $0219
        lda     #$57
        sta     $021A
        lda     a:$24
        adc     #$08
        sta     $021B
        rts

        lda     #$00
LA6CE:  sta     $0200
        sta     $0201
        sta     $0202
        sta     $0203
        sta     $0204
        sta     $0205
        sta     $0206
        sta     $0207
        sta     $0208
        sta     $0209
        sta     $020A
        sta     $020B
        sta     $020C
        sta     $020D
        sta     $020E
        sta     $020F
        sta     $0210
        sta     $0211
        sta     $0212
        sta     $0213
        sta     $0214
        sta     $0215
        sta     $0216
        sta     $0217
        sta     $0218
        sta     $0219
        sta     $021A
        sta     $021B
        rts

        rts

        lda     a:$25
        sta     a:$1F
        lda     a:$24
        clc
        sbc     #$01
        sta     a:$1E
        jsr     LCF6F
        lda     a:L0020
        cmp     #$03
        beq     LA73F
        bne     LA742
LA73F:  dec     a:$24
LA742:  rts

        lda     $11
        and     #$08
        cmp     #$01
        beq     LA753
        and     #$08
        beq     LA759
        and     #$0A
        beq     LA75F
LA753:  jsr     LC765
        inc     $12
        rts

LA759:  jsr     LC80E
        inc     $12
        rts

LA75F:  jsr     LC8B7
        inc     $12
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$24
        adc     #$07
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$08
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$24
        adc     #$08
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$56
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$24
        adc     #$07
        sta     $0203
        lda     a:$25
        adc     #$08
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$08
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$24
        adc     #$08
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$15
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$56
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$24
        adc     #$08
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$08
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$24
        adc     #$08
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$17
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$56
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        rts

        lda     #$01
        sta     $13
        rts

        lda     #$00
        sta     $13
        rts

        lda     $13
        cmp     #$01
        bne     LA98A
        beq     LA973
LA973:  lda     $14
        cmp     #$20
        beq     LA98A
        bne     LA97B
LA97B:  dec     a:$25
        dec     a:$25
        dec     a:$25
        dec     a:$25
        inc     $14
        rts

LA98A:  rts

        lda     a:$25
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$16
        sta     $0202
        lda     a:$24
        adc     #$06
        sta     $0203
        lda     a:$25
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$17
        sta     $0206
LA9B3:  lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$08
        sta     $0208
        lda     #$18
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        adc     #$10
        sta     $020C
        lda     #$28
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$08
        sta     $0214
        lda     #$19
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        adc     #$10
        sta     $0218
        lda     #$29
        sta     $0219
        lda     #$17
        sta     $021A
        lda     a:$24
        adc     #$08
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$56
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$07
        sta     $0207
        lda     a:$25
        adc     #$08
        sta     $0208
        lda     #$18
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$24
        adc     #$08
        sta     $020B
        .byte   $AD
        .byte   $25
LAA80:  brk
        adc     #$10
        sta     $020C
        lda     #$28
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$24
        adc     #$08
        sta     $020F
        lda     a:$25
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$08
        sta     $0214
        lda     #$19
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        sta     $0217
        lda     a:$25
        adc     #$10
        sta     $0218
        lda     #$29
        sta     $0219
        lda     #$57
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        rts

        lda     a:$24
        cmp     #$7A
        bcs     LAAE9
        bne     LAAED
LAAE9:  jsr     LC2F9
        rts

LAAED:  inc     a:$24
        rts

        lda     $11
        and     #$08
        cmp     #$01
        beq     LAB01
        and     #$08
        beq     LAB07
        and     #$0A
        beq     LAB0D
LAB01:  jsr     LCB13
        inc     $10
        rts

LAB07:  jsr     LCBBE
        inc     $10
        rts

LAB0D:  jsr     LCC69
        inc     $10
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        adc     #$08
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        adc     #$06
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        adc     #$08
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        adc     #$06
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$24
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$24
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$24
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$24
        adc     #$08
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$24
        adc     #$08
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$24
        adc     #$08
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        adc     #$06
        sta     $021B
        rts

        rts

        dec     a:$24
        rts

        lda     $11
        and     #$08
        cmp     #$01
        beq     LAD29
        and     #$08
        beq     LAD2F
        and     #$0A
        beq     LAD35
LAD29:  jsr     LCD3B
        inc     $10
        rts

LAD2F:  jsr     LCDE4
        inc     $10
        rts

LAD35:  jsr     LCE8D
        inc     $10
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$24
        adc     #$08
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$08
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$24
        adc     #$08
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$24
        adc     #$07
        sta     $0203
        lda     a:$25
        adc     #$08
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$08
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$24
        adc     #$08
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        lda     a:$25
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$24
        adc     #$08
        sta     $0203
        lda     a:$25
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$24
        adc     #$08
        sta     $0207
        lda     a:$25
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$24
        adc     #$08
        sta     $020B
        lda     a:$25
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$24
        sta     $020F
        lda     a:$25
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$24
        sta     $0213
        lda     a:$25
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$24
        sta     $0217
        lda     a:$25
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        lda     #$00
        sta     $23
        rts

        lda     a:$36
        and     #$07
        beq     LAF45
        inc     a:$45
LAF45:  rts

        lda     a:$36
        clc
        adc     $1E
        cmp     #$FF
        beq     LAF51
        rts

LAF51:  inc     $23
        rts

        ldy     $23
        lda     LD60C,y
        sta     $21
        lda     LD60E,y
        sta     $22
        rts

        lda     #$01
        sta     $15
        rts

        lda     #$00
        sta     $15
        sta     $14
        sta     $13
        rts

        jsr     LCF46
        jsr     LCF54
        lda     a:$45
        asl     a
        asl     a
        tay
        lda     $1F
        clc
        adc     #$12
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        sta     a:$43
        lda     $1E
        lsr     a
        lsr     a
        lsr     a
        asl     a
        asl     a
        clc
        adc     a:$43
        tay
        lda     $1F
        clc
        adc     #$12
        lsr     a
        lsr     a
        lsr     a
        and     #$07
        tax
        lda     ($21),y
        and     LD404,x
        beq     LAFAA
        bne     LAFB1
LAFAA:  lda     #$00
        sta     L0020
        jmp     LCFB8

LAFB1:  lda     #$01
        sta     L0020
        jmp     LCFB8

        lda     ($22),y
        and     LD404,x
        beq     LAFC1
        bne     LAFC2
LAFC1:  rts

LAFC2:  lda     L0020
        eor     #$02
        sta     L0020
        rts

        ldx     #$00
        lda     #$01
        sta     $4016
        lda     #$00
        sta     $4016
        ldy     #$08
LAFD7:  lda     $4016,x
        lsr     a
        ror     a:$3B,x
        dey
        bne     LAFD7
        rts

        ldy     #$13
LAFE4:  lda     LD610,y
        sta     $4000,y
        dey
        bpl     LAFE4
        lda     #$0F
        sta     $4015
        lda     #$40
        sta     $4017
        rts

        pla
        tax
        lda     LD674,x
        lsr     a
        sta     $400B
        lda     LD624,x
        ror     a
        sta     $400A
        inx
        txa
        cmp     #$14
        beq     LB010
        bne     LB013
LB010:  ldx     #$00
        txa
LB013:  pha
        rts

        lda     a:$36
        cmp     #$FD
        beq     LB01E
        bne     LB024
LB01E:  inc     a:$38
        jmp     LD024

LB024:  lda     a:$38
        cmp     #$00
        beq     LB03B
        cmp     #$01
        beq     LB052
        cmp     #$02
        beq     LB069
        cmp     #$03
        beq     LB076
        cmp     #$04
        beq     LB083
LB03B:  ldx     #$E3
        stx     a:$39
        ldx     #$DA
        stx     a:$3A
        ldx     #$23
        stx     a:$41
        ldx     #$EB
        stx     a:$42
        jmp     LD08B

LB052:  ldx     #$E3
        stx     a:$39
        .byte   $A2
LB058:  dec     $3A8E,x
        brk
        ldx     #$63
        stx     a:$41
        ldx     #$EB
        stx     a:$42
        jmp     LD08B

LB069:  ldx     #$E3
        stx     a:$39
        ldx     #$E2
        stx     a:$3A
        jmp     LD08B

LB076:  ldx     #$E3
        stx     a:$39
        ldx     #$E6
        stx     a:$3A
        jmp     LD08B

LB083:  ldx     #$00
        stx     a:$38
        jmp     LD024

        rts

        lda     #$C4
        sta     a:$28
        lda     #$D6
        sta     a:$29
        lda     a:$36
        cmp     #$FD
        beq     LB09F
        bne     LB0A5
LB09F:  inc     a:$38
        jmp     LD0A5

LB0A5:  lda     a:$38
        cmp     #$00
        beq     LB0B8
        cmp     #$01
        beq     LB0CF
        cmp     #$02
        beq     LB0E6
        cmp     #$03
        beq     LB0F3
LB0B8:  ldx     #$83
        stx     a:$39
        ldx     #$EF
        stx     a:$3A
        ldx     #$63
        stx     a:$41
        ldx     #$FB
        stx     a:$42
        jmp     LD0FB

LB0CF:  ldx     #$23
        stx     a:$39
        ldx     #$F3
        stx     a:$3A
        ldx     #$A3
        stx     a:$41
        ldx     #$FB
        stx     a:$42
        jmp     LD0FB

LB0E6:  ldx     #$23
        stx     a:$39
        ldx     #$F7
        stx     a:$3A
        jmp     LD0FB

LB0F3:  ldx     #$00
        stx     a:$38
        jmp     LD0A5

        rts

        lda     #$C3
        sta     a:$28
        lda     #$EB
        sta     a:$29
        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
LB115:  lda     LEBA3,x
        sta     $2007
        inx
        cpx     #$20
        bne     LB115
        rts

        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
LB130:  lda     LFBE3,x
        sta     $2007
        inx
        cpx     #$20
        bne     LB130
        rts

        sei
        ldx     #$00
        stx     $2000
        stx     $2001
        stx     $4010
        dex
        txs
LB14A:  bit     $2002
        bpl     LB14A
        rts

        lda     #$00
        sta     a:$40
        rts

        rts

        lda     $2002
        lda     #$20
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
        ldy     #$00
LB168:  lda     ($28),y
        sta     $2007
        iny
        cpy     #$00
        bne     LB168
        inc     a:$29
        inx
        cpx     #$04
        bne     LB168
        rts

        lda     $2002
        lda     #$23
        sta     $2006
        lda     #$C0
        sta     $2006
        ldx     #$00
LB18A:  lda     LFB23,x
        sta     $2007
        inx
        cpx     #$42
        bne     LB18A
        lda     $2002
        lda     #$27
        sta     $2006
        lda     #$C0
        sta     $2006
        ldx     #$00
LB1A4:  lda     LFB23,x
        sta     $2007
        inx
        cpx     #$42
        bne     LB1A4
        rts

        lda     a:$36
        and     #$0F
        bne     LB226
        jmp     LD1BA

        lda     a:$37
        eor     #$01
        asl     a
        asl     a
        clc
        adc     #$23
        sta     a:$32
        lda     a:$36
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$C0
        sta     a:$31
        lda     a:$35
        and     #$FC
        asl     a
        sta     a:$33
        lda     a:$35
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     a:$34
        lda     a:$33
        clc
        adc     a:$41
        sta     a:$33
        lda     a:$34
        adc     a:$42
        sta     a:$34
        ldy     #$00
        lda     $2002
        lda     a:$32
        sta     $2006
        lda     a:$31
        sta     $2006
        lda     ($33),y
        sta     $2007
        iny
        cpy     #$08
        beq     LB225
        lda     a:$31
        clc
        adc     #$08
        sta     a:$31
        jmp     LD203

LB225:  rts

LB226:  rts

        lda     a:$36
        lsr     a
        lsr     a
        lsr     a
        sta     a:$31
        sta     a:$35
        lda     a:$37
        asl     a
        asl     a
        clc
        adc     #$24
        sta     a:$32
        lda     a:$35
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        sta     a:$33
        lda     a:$35
        lsr     a
        lsr     a
        lsr     a
        sta     a:$34
        lda     a:$33
        clc
        adc     a:$39
        sta     a:$33
        lda     a:$34
        adc     a:$3A
        sta     a:$34
        lda     #$84
        eor     a:$37
        sta     $2000
        lda     $2002
        lda     a:$32
        sta     $2006
        lda     a:$31
        sta     $2006
        ldx     #$1E
        ldy     #$00
LB280:  lda     ($33),y
        sta     $2007
        iny
        dex
        bne     LB280
        lda     #$90
        eor     a:$37
        sta     $2000
        rts

        lda     a:$36
        and     #$07
        bne     LB2A4
        jsr     LD227
        lda     a:$35
        and     #$7F
        sta     a:$35
LB2A4:  lda     #$90
        ora     a:$37
        sta     $2000
        lda     #$1E
        sta     $2001
        rts

        lda     a:$36
        cmp     #$FF
        bne     LB2C2
        lda     a:$37
        eor     #$01
        sta     a:$37
        rts

LB2C2:  rts

        lda     #$90
        sta     $2000
        rts

        lda     #$18
        sta     $2001
        rts

        lda     #$00
        sta     $2001
        rts

        rts

        lda     $2002
        lda     #$20
        sta     $2006
        lda     #$ED
        sta     $2006
        lda     #$2F
        sta     $2007
        rts

        lda     $2002
        lda     #$20
        sta     $2006
        lda     #$ED
        sta     $2006
        lda     #$16
        sta     $2007
        rts

        lda     #$00
        sta     $2003
        lda     #$02
        sta     $4014
        rts

        inc     $11
        rts

        jsr     LD307
        jsr     LC214
        jsr     LD096
        jsr     LD2B2
        jsr     LD1B0
        jsr     LD292
        jsr     LC03F
        jsr     LD2FC
        jsr     LCFC9
        jsr     LC094
        jsr     LC02B
        jsr     LC03F
        rti

        rti

        sei
        ldx     #$00
        stx     $2000
        stx     $2001
        stx     $4010
        dex
        txs
LB33E:  bit     $2002
        bpl     LB33E
        jsr     LC001
        jsr     LD150
        jsr     LD0FC
        jsr     LD106
        jsr     LD157
        jsr     LD17B
        jsr     LC02F
        jsr     LD2C3
        jsr     LD2C9
        jmp     LD35E

        rti

        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        php
        bpl     LB41B
        .byte   $80
        rti

        jsr     L0810
        .byte   $04
        .byte   $02
        ora     (L0000,x)
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
LB41B:  sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        ora     ($FF,x)
        sed
        brk
        brk
        .byte   $FF
        sed
        brk
        brk
        .byte   $7F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $7F
        cpx     #$00
        brk
        .byte   $FF
        sed
        brk
        ora     ($FF,x)
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        clv
        brk
        brk
        .byte   $3F
        clv
        brk
        brk
        .byte   $07
        clv
        brk
        brk
        .byte   $0F
        clv
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        ora     ($FF,x)
        sed
        brk
        brk
        .byte   $FF
        sed
        brk
        brk
        .byte   $7F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $7F
        cpx     #$00
        brk
        .byte   $FF
        sed
        brk
        ora     ($FF,x)
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $FF
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        .byte   $03
        .byte   $3F
        sed
        brk
        brk
        .byte   $3F
        sed
        brk
        brk
        .byte   $1F
        beq     LB57D
LB57D:  brk
        .byte   $1F
        beq     LB581
LB581:  brk
        .byte   $1F
        beq     LB585
LB585:  brk
        .byte   $1F
        beq     LB589
LB589:  brk
        .byte   $1F
        beq     LB58D
LB58D:  brk
        .byte   $1F
        beq     LB591
LB591:  brk
        .byte   $1F
        beq     LB595
LB595:  brk
        .byte   $1F
        bcs     LB599
LB599:  brk
        .byte   $1F
        bcs     LB59D
LB59D:  brk
        .byte   $1F
        bcs     LB5A1
LB5A1:  brk
        .byte   $1F
        bcs     LB5A5
LB5A5:  brk
        .byte   $1F
        beq     LB5A9
LB5A9:  brk
        .byte   $1F
        beq     LB5AD
LB5AD:  brk
        .byte   $1F
        beq     LB5B1
LB5B1:  brk
        .byte   $1F
        beq     LB5B5
LB5B5:  brk
        .byte   $1F
        beq     LB5B9
LB5B9:  brk
        .byte   $1F
        beq     LB5BD
LB5BD:  brk
        .byte   $1F
        beq     LB5C1
LB5C1:  brk
        .byte   $1F
        beq     LB5C5
LB5C5:  brk
        .byte   $1F
        beq     LB5C9
LB5C9:  brk
        .byte   $1F
        beq     LB5CD
LB5CD:  brk
        .byte   $1F
        beq     LB5D1
LB5D1:  brk
        .byte   $1F
        beq     LB5D5
LB5D5:  brk
        .byte   $1F
        beq     LB5D9
LB5D9:  brk
        .byte   $1F
        beq     LB5DD
LB5DD:  brk
        .byte   $1F
        beq     LB5E1
LB5E1:  brk
        .byte   $1F
        beq     LB5E5
LB5E5:  brk
        .byte   $1F
        beq     LB5E9
LB5E9:  brk
        .byte   $1F
        beq     LB5ED
LB5ED:  brk
        .byte   $1F
        beq     LB5F1
LB5F1:  brk
        .byte   $1F
        beq     LB5F5
LB5F5:  brk
        .byte   $1F
        beq     LB5F9
LB5F9:  brk
        .byte   $1F
        beq     LB5FD
LB5FD:  brk
        .byte   $1F
        beq     LB601
LB601:  brk
        .byte   $1F
        beq     LB605
LB605:  brk
        .byte   $1F
        beq     LB609
LB609:  brk
        .byte   $1F
        beq     LB619
        .byte   $0C
        .byte   $0C
        sty     $0830
        brk
        brk
        bmi     LB61E
        brk
        brk
        .byte   $80
LB619:  brk
        brk
        brk
        bmi     LB61E
LB61E:  brk
        brk
        brk
        brk
        brk
        brk
        sbc     ($7F),y
        .byte   $13
        lda     LF34D
        sta     a:$4C,x
        clv
        .byte   $74
        .byte   $34
        sed
        .byte   $BF
        .byte   $89
        lsr     $26,x
        sbc     LA6CE,y
        .byte   $80
        .byte   $5C
        .byte   $3A
        .byte   $1A
        .byte   $FB
        .byte   $DF
        cpy     $AB
        .byte   $93
        .byte   $7C
        .byte   $67
        .byte   $52
        .byte   $3F
        and     $0C1C
        sbc     LE1EF,x
        cmp     $C9,x
        lda     LA9B3,x
        .byte   $9F
        stx     $8E,y
        stx     $7E
        .byte   $77
        bvs     LB6C2
        .byte   $64
        lsr     $5459,x
        .byte   $4F
        .byte   $4B
        lsr     $42
        .byte   $3F
        .byte   $3B
        sec
        .byte   $34
        and     ($2F),y
        bit     $2729
        and     $23
        and     ($1F,x)
        ora     $1A1B,x
        clc
        .byte   $17
        ora     $14,x
        .byte   $07
        .byte   $07
        .byte   $07
        asl     $06
        ora     $05
        ora     $05
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LB6C2:  brk
        brk
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $03
        .byte   $04
        ora     $06
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $13
        .byte   $14
        ora     $16,x
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $03
        .byte   $04
        ora     $06
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $13
        .byte   $14
        ora     $16,x
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $03
        .byte   $04
        ora     $06
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $13
        .byte   $14
        ora     $16,x
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     (L0020),y
        and     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($30),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($30),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($30),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($30),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($30),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($40),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        jsr     L1121
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        rti

        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        rti

        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        jsr     L1121
        ora     ($11),y
        ora     ($40),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     (L0020),y
        and     ($11,x)
        rti

        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        rti

        eor     ($11,x)
        ora     ($11),y
        ora     ($40),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($30),y
        and     ($11),y
        rti

        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        jsr     L3021
        and     ($11),y
        ora     ($11),y
        ora     ($40),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($40),y
        eor     ($11,x)
        rti

        eor     (L0020,x)
        and     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        bmi     LB9E6
        bmi     LB9E8
        ora     ($11),y
        jsr     L4021
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($40),y
        eor     ($11,x)
        rti

        eor     ($40,x)
        eor     (L0020,x)
        and     ($11,x)
        ora     ($11),y
        ora     ($11),y
        rti

        eor     ($30,x)
        and     (L0020),y
        and     ($30,x)
        and     ($40),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($40),y
LB9E6:  eor     ($11,x)
LB9E8:  rti

        eor     ($40,x)
        eor     ($30,x)
        and     ($11),y
        ora     ($11),y
        ora     ($11),y
        rti

        eor     ($30,x)
        and     ($30),y
        and     ($30),y
        and     ($40),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($02),y
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $03
        .byte   $13
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        .byte   $04
        .byte   $14
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     $15
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        asl     $16
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        .byte   $01
LBC20:  ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        .byte   $03
        .byte   $13
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        .byte   $04
        .byte   $14
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     $15
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        asl     $16
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LBE7E:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $03
        .byte   $13
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        .byte   $04
        .byte   $14
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     $15
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        asl     $16
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
LC001:  ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC02B:  ora     ($11),y
        ora     ($11),y
LC02F:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
LC03F:  ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
LC07D:  .byte   $01
LC07E:  ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC094:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $11
LC0A4:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        .byte   $01
LC0E0:  ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC0EE:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC132:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
LC13C:  .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        .byte   $11
LC146:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC150:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
LC15D:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC16A:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC177:  ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $11
LC184:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC18B:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC198:  ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
LC1BD:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        .byte   $01
LC1E2:  ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC1F4:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC1FB:  ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC20D:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC214:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC21B:  ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
LC225:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC263:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $01
LC27E:  ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
LC29D:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
LC2A3:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC2A9:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC2AF:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC2B5:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC2BB:  ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
LC2C1:  ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
LC2C7:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC2CE:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC2F9:  ora     ($11),y
        ora     ($02),y
LC2FD:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
LC31F:  ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC3CA:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC475:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
LC521:  ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC5CC:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
LC623:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $11
LC724:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC743:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC765:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC80E:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC8B7:  ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($11),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($11),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
LC961:  ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC96B:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC98B:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LCA36:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        brk
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
LCAF1:  brk
        brk
        brk
        brk
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
        eor     $55,x
        brk
        brk
        eor     $55,x
        brk
        brk
        eor     $55,x
        brk
        eor     $55,x
        eor     $55,x
        eor     $55,x
        eor     L0000,x
LCB13:  lda     $A5
        lda     $A5
        lda     $A5
        lda     $AA
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        and     (L0000),y
        bpl     LCBD4
        and     ($1D),y
        .byte   $27
        .byte   $37
        bpl     LCBCA
        .byte   $27
        bpl     LCBE1
        .byte   $3F
        .byte   $3C
        .byte   $02
        .byte   $32
        bpl     LCBD0
        .byte   $0F
        .byte   $32
        rol     $17,x
        .byte   $0F
        bpl     LCBED
        .byte   $21
LCBBE:  .byte   $0F
        .byte   $32
        and     #$05
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LCBCA:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LCBD0:  ora     ($11),y
        ora     ($11),y
LCBD4:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LCBE1:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LCBED:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $03
        .byte   $04
        ora     $06
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $13
        .byte   $14
        ora     $16,x
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LCC69:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     (L0020),y
        and     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($30),y
        eor     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2F
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        and     $113D,x
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($2C),y
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        rol     $112F
        ora     ($11),y
        ora     ($11),y
        ora     ($3D),y
        rol     $292E
        rol     a
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2E2E
        .byte   $2F
        ora     ($11),y
        ora     ($11),y
        and     $2E2E,x
        rol     $2B2C
LCD19:  bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        rol     $2E2E
        .byte   $2F
        ora     ($29),y
        rol     a
        rol     $2E2E
        rol     $2B2C
        .byte   $2C
        .byte   $2B
LCD3B:  bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2E2E
        rol     $2A2E
        bit     $2E2B
        rol     $2E2E
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        .byte   $27
        plp
        .byte   $27
        plp
        .byte   $27
        plp
        .byte   $27
        plp
        .byte   $27
        rol     $2E2E
        rol     $2C2B
        .byte   $2B
        rol     $2E2E
        rol     $2827
        .byte   $27
        plp
        .byte   $27
        plp
        .byte   $27
        plp
        .byte   $27
        plp
        .byte   $27
        plp
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        and     $2E2E
        rol     $2C2B
        .byte   $2B
        rol     $2E2E
        .byte   $3F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        asl     a
        and     $2E2E
        .byte   $2B
        bit     $2E2B
        rol     $0A3F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        and     $2B2E
        bit     $2E2B
        .byte   $3F
        asl     a
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCDE4:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        asl     a
        and     $2728
        plp
        .byte   $3F
        asl     a
        asl     a
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCE8D:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3B
        .byte   $3B
        .byte   $3B
        brk
        brk
        .byte   $3B
        .byte   $3B
        .byte   $3B
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3B
        .byte   $3B
        .byte   $3B
        brk
        brk
        .byte   $3B
        .byte   $3B
        .byte   $3B
        .byte   $3B
        brk
        brk
        brk
        .byte   $3B
        .byte   $3B
        .byte   $3B
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $3B
        .byte   $3B
        .byte   $3B
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        lsr     $4D4D
        eor     $3C4D
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $4B
        jmp     L1111

        ora     ($3E),y
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $4B
        jmp     L1111

        ora     ($3E),y
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        eor     $4D4D
LCF46:  eor     $4D4D
        eor     $4D4D
        eor     $4D4D
        .byte   $4F
        jmp     L1111

        .byte   $11
LCF54:  ora     ($4A),y
        eor     $4D4D
        eor     $4D4D
        eor     $4D4D
        eor     $4D4D
        eor     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCF6F:  .byte   $4B
        jmp     L1111

        ora     ($11),y
        ora     (L0000),y
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LCFB8:  ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LCFC9:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LCFE3:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $03
        .byte   $13
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $11
LD024:  ora     ($11),y
        ora     ($04),y
        .byte   $14
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        asl     $16
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD08B:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD096:  ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
LD0A5:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD0FB:  .byte   $11
LD0FC:  .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        .byte   $11
LD106:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD150:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD157:  ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
LD17B:  .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD1B0:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD1BA:  .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        .byte   $03
        .byte   $13
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        .byte   $04
        .byte   $14
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
LD203:  ora     ($11),y
        ora     $15
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        asl     $16
LD227:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD292:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD2B2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD2C3:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD2C9:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD2FC:  .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        brk
        brk
LD307:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $01
LD35E:  ora     ($01,x)
        ora     ($01,x)
        ora     ($11,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($03),y
        .byte   $13
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        .byte   $04
        .byte   $14
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     $15
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        .byte   $01
LD400:  ora     ($01,x)
        ora     ($11,x)
LD404:  ora     ($11),y
        ora     ($06),y
        asl     $11,x
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD60C:  ora     ($11),y
LD60E:  ora     ($11),y
LD610:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $11
LD624:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD674:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $FF
        brk
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        eor     $55,x
        eor     $55,x
        eor     $55,x
        eor     $55,x
        ora     $05
        lda     $55
        lda     $05
        ora     $05
        brk
        brk
        php
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
LDBBB:  brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        tax
        tax
        tax
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        brk
        brk
        brk
        brk
        brk
        brk
        tax
        tax
        ora     #$0A
        .byte   $0C
        ora     $0C21
        php
        plp
        and     ($1C,x)
        and     #$07
        and     ($3F),y
        .byte   $3C
        .byte   $02
        .byte   $32
        bpl     LDC10
        .byte   $0F
        .byte   $32
        rol     $17,x
        .byte   $0F
        .byte   $32
        bmi     LDC1F
        .byte   $0F
        .byte   $32
        .byte   $27
        .byte   $17
        .byte   $0F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LDC10:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LDC1F:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LDFD1:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LDFF8:  .byte   $FF
        .byte   $FF
        asl     a
        .byte   $D3
        bmi     LDFD1
        .byte   $2F
        .byte   $D3
        brk
        brk
        ora     ($03,x)
        .byte   $07
        .byte   $07
LE006:  .byte   $03
        .byte   $03
        brk
        .byte   $03
        .byte   $07
        asl     $0C0C
        .byte   $0C
        .byte   $04
        brk
        brk
        cpy     #$F0
        beq     LE006
        beq     LDFF8
        brk
        cpx     #$B8
        php
        php
        php
        php
        clc
LE020:  brk
        brk
        .byte   $03
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $03
        ora     ($01,x)
        .byte   $07
        .byte   $0C
        php
        php
        php
        .byte   $0C
        asl     L0000
        cpx     #$80
        brk
        brk
        brk
        brk
        cpy     #$F0
        bpl     LE0AB
        cpy     #$80
        .byte   $80
        cpx     #$30
        brk
        brk
        asl     $1D1F
        .byte   $1F
        asl     a:L0000
        asl     $383D,x
        .byte   $3A
        sec
        and     a:$1E,x
        brk
        asl     $3D1F
        .byte   $1F
        asl     a:L0000,x
        .byte   $1C
        sec
        sei
        .byte   $7A
        sei
        sec
        sec
        brk
        brk
        .byte   $02
        asl     $3C3C,x
        bpl     LE068
LE068:  brk
        .byte   $07
        and     $5361,x
        ror     a
        ror     a:$38
        brk
        clc
        clc
        .byte   $3C
        .byte   $3C
        brk
        brk
        brk
        .byte   $3C
        bit     $66
        .byte   $42
        lsr     $7E,x
        brk
        brk
        brk
        .byte   $1C
        .byte   $3C
        .byte   $3C
        .byte   $1C
        brk
        brk
        brk
        rol     $4662,x
        .byte   $42
        ror     $3E
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bpl     LE0B4
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
        brk
        brk
        .byte   $3C
        sec
        clc
LE0AB:  clc
        clc
        clc
        .byte   $1C
        brk
        brk
        brk
        brk
        brk
LE0B4:  brk
        brk
        brk
        brk
        brk
        asl     $0E07
        clc
        bvs     LE0EF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        jsr     L3078
        jsr     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE0EF:  brk
LE0F0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($03,x)
        .byte   $03
        .byte   $07
        ora     $01
        ora     ($01,x)
        asl     $04
        .byte   $0C
        php
        asl     a
        asl     $0202
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($01,x)
        ora     ($03,x)
        .byte   $07
        asl     $010C
        .byte   $02
        .byte   $02
        asl     $0C
        clc
        ora     ($13),y
        asl     LC0E0,x
        cpy     #$C0
        rti

        cli
        cpy     #$C0
        bpl     LE16A
        jsr     LBC20
        ldy     $203C,x
        ora     ($01,x)
        ora     (L0000,x)
        brk
        brk
        brk
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $02
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        brk
        cpy     #$20
        jsr     L2020
        jsr     LE020
        jsr     L0101
        ora     ($01,x)
        ora     $0D
        .byte   $0C
        ora     ($02,x)
        .byte   $02
LE16A:  asl     $0E
        asl     $1F1E,x
        asl     $80C0,x
        .byte   $80
        .byte   $80
        .byte   $80
        beq     LE177
LE177:  cpy     #$20
        rts

        rts

        rts

        sei
        php
        sed
        jsr     L0100
        .byte   $3F
        ora     ($01,x)
        ora     ($01,x)
        ora     ($03,x)
        ror     $7E40,x
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        .byte   $80
        .byte   $80
        cpy     #$D8
        iny
        cld
        .byte   $80
        cpx     #$60
        rts

        jsr     L3838
        sec
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE1EF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $03
        asl     $0C
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        asl     $0C
        ora     LFEB3,y
        .byte   $80
        .byte   $80
        .byte   $80
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
        brk
        brk
        ora     (L0000,x)
        .byte   $02
        asl     $0C
        clc
        php
        brk
        .byte   $02
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        ror     $1F3C,x
        cpy     #$80
        cpy     #$60
        sec
        brk
        brk
        brk
        jsr     L3660
        .byte   $9E
        dec     $7E
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
LE250:  cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$00
        jsr     L2020
        jsr     L2020
        bmi     LE250
        ora     ($01,x)
        .byte   $03
        asl     $0C
        clc
        php
        brk
        .byte   $02
        asl     $0C
        ora     $6633,y
        .byte   $34
        .byte   $1F
        cpy     #$80
        brk
        rts

        sec
        brk
        brk
        brk
        jsr     LF660
        inc     $7EFE,x
        brk
        brk
        ora     ($07,x)
        .byte   $04
        .byte   $0C
        .byte   $0C
        brk
        brk
        brk
        asl     $1B18
        .byte   $12
        .byte   $12
        asl     a:L0000,x
        .byte   $80
        cpy     #$30
        bmi     LE2C5
        bmi     LE2A7
        brk
        rts

        sed
        inx
        pla
        pla
        pla
        pla
        .byte   $7C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE2A7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE2C5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE7F3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LEBA3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LEEDD:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $EF
        brk
        .byte   $FB
        .byte   $FB
        brk
        .byte   $DF
        .byte   $DF
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
        cmp     LDBBB,y
        brk
        .byte   $BF
        .byte   $BF
        brk
        brk
        rol     $BF
        .byte   $DF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        ora     ($03,x)
        asl     $0D
        .byte   $1B
        asl     $10,x
        brk
        brk
        brk
        ora     ($03,x)
        .byte   $07
        .byte   $0F
        .byte   $0F
        brk
        brk
        .byte   $FF
        sbc     ($E0),y
        bvs     LF047
LF047:  brk
        brk
        brk
        brk
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        brk
        .byte   $03
        asl     $FC
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($03,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        cpy     #$F0
        .byte   $1C
        inc     $7B
        and     $09,y
        brk
        brk
        cpx     #$F8
        .byte   $FC
        inc     $01FE,x
        .byte   $03
        asl     $04
        php
        clc
        jsr     L0020
        brk
        ora     ($03,x)
        .byte   $07
        .byte   $07
        .byte   $1F
        .byte   $1F
        brk
        cpy     #$60
        bmi     LF09D
        .byte   $0C
        .byte   $06
LF087:  .byte   $03
        brk
        brk
        .byte   $80
        cpy     #$E0
        beq     LF087
        .byte   $FC
        ora     ($06,x)
        .byte   $0C
        clc
        .byte   $34
        .byte   $62
        .byte   $C2
        .byte   $82
        brk
        ora     ($03,x)
        .byte   $07
        .byte   $0F
LF09D:  .byte   $1F
        .byte   $3F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF0E8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $1F
        rol     LF87E,x
        beq     LF0E8
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     LF142
        clc
        php
        .byte   $04
        .byte   $02
        .byte   $03
        brk
        .byte   $0F
        .byte   $0F
        .byte   $07
        .byte   $07
        .byte   $03
        ora     (L0000,x)
        brk
        brk
        brk
LF142:  brk
        brk
        .byte   $02
        asl     $86
        .byte   $FB
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        sbc     $79F9,x
        brk
        brk
        brk
        brk
        brk
        .byte   $04
        .byte   $0C
        .byte   $1C
        .byte   $F7
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FB
        .byte   $F3
        .byte   $E3
        brk
        ora     $663B,x
        cpy     $18
        rts

        cpy     #$80
        inc     LF8FC,x
        sed
        cpx     #$80
        brk
LF16F:  brk
        rts

        pha
        pha
        lsr     $43
        rts

        sec
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $1F
        .byte   $07
        brk
        ora     ($31,x)
        adc     ($42,x)
        stx     $8C
        tya
LF187:  bvs     LF187
        inc     LFCFE,x
        sed
        beq     LF16F
        .byte   $80
        .byte   $C2
        .byte   $42
        .byte   $32
        clc
        asl     $0103
        ora     ($3F,x)
        .byte   $3F
        .byte   $0F
        .byte   $07
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $80
        .byte   $80
        tax
        .byte   $80
        .byte   $B2
        .byte   $80
        .byte   $80
        brk
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        ora     ($01,x)
        .byte   $B3
        .byte   $03
        .byte   $03
        and     #$01
        brk
        inc     LFCFE,x
        .byte   $FC
        .byte   $FC
        inc     a:$FE,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($03,x)
        asl     $0C
        clc
        bmi     LF297
        cpy     #$FE
        .byte   $FC
        sbc     LE7F3,y
        .byte   $CF
        .byte   $9F
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ora     ($03,x)
        asl     $0C
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     LF9FC,x
        .byte   $F3
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
        .byte   $FF
        .byte   $FF
        brk
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        brk
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        ora     ($FF,x)
        inc     LFEFE,x
        inc     LFEFE,x
        inc     LFF00,x
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
LF297:  .byte   $80
        brk
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        ora     ($01,x)
        ora     ($07,x)
        .byte   $07
        .byte   $07
        .byte   $07
        brk
        inc     LFEFE,x
        inc     LFEFE,x
        inc     $0707,x
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        inc     LFEFE,x
        inc     LFEFE,x
        inc     $80FE,x
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
        .byte   $7F
        .byte   $87
        .byte   $C7
        .byte   $E7
        .byte   $F3
        sbc     LFFFD,y
        .byte   $FF
        ror     $9E3E,x
        dec     LF2E6
        sed
        .byte   $FC
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
LF2E6:  .byte   $87
        .byte   $87
        ror     $7E7E,x
        ror     $7E7E,x
        ror     LC07E,x
        cpx     #$B0
        tya
        sty     $8786
        .byte   $87
        brk
        brk
        rti

        rts

        bvs     LF376
        .byte   $7C
        ror     LAA80,x
        .byte   $80
        lda     $80
        .byte   $80
        lda     #$80
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        ora     ($A1,x)
        ora     ($29,x)
        ora     ($01,x)
        and     #$01
        inc     LFEFE,x
        inc     LFEFE,x
        inc     a:$FE,x
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $80
        .byte   $80
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $07
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $07
        .byte   $03
        .byte   $03
        ora     ($01,x)
        .byte   $01
LF347:  brk
        .byte   $E3
        .byte   $FB
        sbc     LFEFC,x
LF34D:  inc     LFFFE,x
        sbc     LCFE3,y
        .byte   $9C
        sed
        beq     LF347
        cpx     #$FF
        inc     LFBFC,x
        .byte   $E7
        .byte   $EF
        .byte   $4F
        .byte   $5F
        .byte   $FF
        sta     (L0000,x)
        brk
        .byte   $07
        .byte   $1F
        rol     $8778,x
        ror     LFFFF,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        inc     $1E3E,x
        .byte   $1C
LF376:  and     LFF7D,x
        .byte   $7F
        .byte   $3F
        .byte   $DF
        .byte   $FF
        .byte   $EF
        .byte   $CF
        .byte   $8F
        .byte   $FF
        .byte   $80
        .byte   $0F
        .byte   $1F
        .byte   $7F
        sed
        cpx     #$E0
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        cpx     #$C0
        .byte   $80
        brk
        .byte   $8F
        .byte   $03
        .byte   $FF
        .byte   $FF
        inc     $0222,x
        .byte   $12
        .byte   $7F
        inc     LBE7E,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $FF
        asl     $1008
        rts

        cpy     #$FF
        .byte   $FF
        brk
        ora     ($07,x)
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $03
        .byte   $07
        ora     $3319
        .byte   $67
        .byte   $C7
        .byte   $87
        brk
        brk
        .byte   $02
        asl     $0E
        asl     $7E3E,x
        ora     ($03,x)
        asl     $0C
        clc
        bmi     LF447
        cpy     #$00
        brk
        ora     ($03,x)
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $8F
        .byte   $9F
        .byte   $BF
        .byte   $FF
        .byte   $FF
        ror     $797C,x
        .byte   $73
        .byte   $67
        .byte   $4F
        .byte   $1F
        .byte   $3F
        .byte   $80
        cmp     #$C0
        sbc     $90
        lda     #$80
        .byte   $80
        .byte   $7F
        .byte   $3F
        .byte   $3F
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        ora     ($29,x)
        ora     ($47,x)
        ora     ($29,x)
        ora     ($01,x)
        inc     LFEFE,x
        sed
        inc     LFEFE,x
        inc     a:L0000,x
        brk
LF423:  brk
        brk
        brk
        brk
        brk
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
        .byte   $80
        .byte   $80
        .byte   $AF
        sbc     #$DD
        sta     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($07,x)
        .byte   $1C
        rts

LF447:  cpy     #$00
        brk
        brk
        brk
        brk
        brk
LF44E:  brk
        brk
        cpx     #$E1
        sbc     ($F1,x)
        beq     LF44E
        sed
        .byte   $7C
        .byte   $5F
        .byte   $5F
        .byte   $1F
        .byte   $0F
        .byte   $0F
        .byte   $07
        .byte   $07
        .byte   $03
        beq     LF423
        .byte   $8F
        .byte   $9F
        .byte   $3F
        .byte   $7C
        bvs     LF4C8
        .byte   $FF
        inc     LE0F0,x
        cpy     #$80
        .byte   $80
        .byte   $80
        .byte   $FF
        .byte   $FF
        .byte   $EF
        .byte   $CF
        .byte   $0F
        asl     $06
        asl     $0F
        .byte   $0F
        .byte   $07
        asl     L0000
        brk
        brk
        brk
        cpy     #$80
        tya
        .byte   $FC
        asl     $06
        .byte   $07
        .byte   $07
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $0109,x
        ora     ($F9,x)
        .byte   $CB
        .byte   $8F
        .byte   $8F
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$80
        .byte   $FF
        iny
        .byte   $FA
        ldy     #$CF
        .byte   $FF
        .byte   $3F
        .byte   $7F
        brk
        .byte   $3F
        .byte   $7F
        .byte   $7F
        .byte   $33
        brk
        ora     ($07,x)
        asl     $0D
        .byte   $1C
        .byte   $32
        .byte   $6B
LF4B7:  bne     LF4B7
        sed
        .byte   $FB
        .byte   $F3
        .byte   $E7
        cmp     $3F97
        adc     #$37
        cpx     LB058
        rts

        cpy     #$80
LF4C8:  dec     $70E8,x
        cpx     #$40
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $FF
        cpy     #$00
        cmp     ($54,x)
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $DF
        brk
        brk
        brk
        .byte   $1F
        and     ($64),y
        sbc     ($8E,x)
        .byte   $3F
        .byte   $FF
        .byte   $FF
        cpx     #$CF
        .byte   $9F
        .byte   $3F
        adc     $E0,x
        .byte   $03
        .byte   $0F
        .byte   $FF
        .byte   $FF
        .byte   $FB
        .byte   $BF
        .byte   $FF
        .byte   $FF
        .byte   $FC
        sbc     ($07),y
        inc     LEEDD,x
        .byte   $FC
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        .byte   $02
        asl     $0C
        ora     $6333,y
        .byte   $C3
        brk
        ora     ($01,x)
        .byte   $03
        .byte   $07
        .byte   $0F
        .byte   $1F
        .byte   $3F
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        .byte   $87
        ror     $7E7E,x
        ror     $7E7E,x
        ror     a:$7E,x
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF660:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        brk
        brk
        brk
        brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF87E:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF8FC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF9FC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFB23:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFBE3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFBFC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFCFE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFEB3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFEFC:  brk
        brk
LFEFE:  brk
        brk
LFF00:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFF7D:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFFFD:  brk
LFFFE:  brk
LFFFF:  brk
