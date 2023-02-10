; da65 V2.18 - N/A
; Created:    2023-02-10 01:23:34
; Input file: newGame.nes
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0020           := $0020
L0100           := $0100
L0101           := $0101
L0810           := $0810
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
        lda     #$0A
        sta     a:$25
        lda     #$04
        sta     a:$27
        lda     #$01
        sta     a:$1A
        lda     #$00
        sta     a:$15
        lda     #$00
        sta     a:$19
        sta     a:$1A
        sta     $14
        rts

        jsr     LC06A
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
LA04F:  lda     #$0A
        sta     $2004
        lda     #$06
        sta     $2004
        lda     #$17
        sta     $2004
        lda     LD300,x
        adc     #$0A
        sta     $2004
        dex
        bne     LA04F
        rts

        lda     a:$23
        cmp     #$00
LA06F:  rts

        bne     LA06F
        lda     #$01
        sta     a:$1A
        inc     a:$25
        inc     a:$25
        lda     #$00
        sta     a:$22
        rts

        lda     $14
        cmp     #$00
        beq     LA08F
        cmp     a:$25
LA08C:  rts

        bne     LA08C
LA08F:  lda     #$00
        sta     a:$1A
        sta     a:$19
        sta     a:$18
        lda     #$01
        sta     a:$22
        rts

        jsr     LC222
        jsr     LC22C
        ldx     a:$3B
        cpx     #$40
        beq     LA0E1
        cpx     #$80
        beq     LA0D5
        cpx     #$20
        beq     LA0ED
        cpx     #$10
        beq     LA0F3
        cpx     #$02
        beq     LA0CF
        cpx     #$82
        beq     LA0F9
        cpx     #$81
        beq     LA111
        cpx     #$41
        beq     LA11D
        cpx     #$42
        beq     LA105
        bne     LA14D
LA0CF:  jsr     LC89B
        jmp     LC153

LA0D5:  jsr     LC232
        jsr     LC213
        jsr     LC218
        jmp     LC153

LA0E1:  jsr     LC20E
        jsr     LC679
        jsr     LC218
        jmp     LC153

LA0ED:  jsr     LC178
        jmp     LC153

LA0F3:  jsr     LC182
        jmp     LC153

LA0F9:  jsr     LC89B
        jsr     LC232
        jsr     LC213
        jmp     LC153

LA105:  jsr     LC89B
        jsr     LC679
        jsr     LC20E
        jmp     LC153

LA111:  jsr     LC21D
        jsr     LC232
        jsr     LC213
        jmp     LC153

LA11D:  jsr     LC21D
        jsr     LC679
        jsr     LC20E
        jmp     LC153

        jsr     LC21D
        jsr     LC232
        jsr     LC213
        jsr     LC89B
        jmp     LC153

        jsr     LC21D
        jsr     LC679
        jsr     LC20E
        jsr     LC89B
        jmp     LC153

        jsr     LC21D
        jmp     LC153

LA14D:  jsr     LC227
        jmp     LC153

        rts

        lda     a:$22
        cmp     #$01
        beq     LA15D
        bne     LA165
LA15D:  inc     a:$25
        lda     a:$25
        sta     $14
LA165:  rts

        lda     a:$22
        cmp     #$01
        beq     LA16F
        bne     LA177
LA16F:  dec     a:$25
        lda     a:$25
        sta     $14
LA177:  rts

        jsr     LC20E
        jsr     LC154
        jsr     LC218
        rts

        jsr     LC20E
        jsr     LC166
        jsr     LC218
        rts

        jsr     LC8A5
        jsr     LC193
        rts

        jsr     LC1F0
        jsr     LC19D
        jsr     LC1D7
        rts

        lda     $11
        cmp     #$01
        beq     LA1A5
        bne     LA1D6
LA1A5:  lda     a:$18
        cmp     #$01
        beq     LA1D6
        bne     LA1AE
LA1AE:  lda     $12
        cmp     #$01
        beq     LA1B6
        bne     LA1C6
LA1B6:  lda     $10
        cmp     #$01
        beq     LA1C2
        bne     LA1BE
LA1BE:  jsr     LCA2B
        rts

LA1C2:  jsr     LCC53
        rts

LA1C6:  lda     $10
        cmp     #$01
        beq     LA1D2
        bne     LA1CE
LA1CE:  jsr     LC252
        rts

LA1D2:  jsr     LC67D
        rts

LA1D6:  rts

        lda     $13
        cmp     #$01
        bne     LA1EF
        beq     LA1DF
LA1DF:  lda     $10
        cmp     #$01
        beq     LA1EB
        bne     LA1E7
LA1E7:  jsr     LC476
        rts

LA1EB:  jsr     LC578
        rts

LA1EF:  rts

        lda     a:$18
        cmp     #$01
        beq     LA1F9
        bne     LA209
LA1F9:  lda     $10
        cmp     #$01
        beq     LA201
        bne     LA205
LA201:  jsr     LC970
        rts

LA205:  jsr     LC8C5
        rts

LA209:  rts

        jsr     LC521
        rts

        lda     #$01
        sta     $10
        rts

        lda     #$02
        sta     $10
        rts

        lda     #$01
        sta     $11
        rts

        lda     #$01
        sta     $12
        rts

        lda     #$00
        sta     $12
        rts

        lda     #$01
        sta     $13
        rts

        lda     #$00
        sta     $13
        rts

        rts

        lda     a:$24
        cmp     #$7A
        bcs     LA23B
        bne     LA23F
LA23B:  jsr     LC243
        rts

LA23F:  inc     a:$24
        rts

        lda     $16
        and     #$02
        beq     LA24B
        bne     LA251
LA24B:  inc     a:$36
        jmp     LC251

LA251:  rts

        lda     $16
        and     #$08
        cmp     #$01
        beq     LA262
        and     #$08
        beq     LA268
        and     #$0A
        beq     LA26E
LA262:  jsr     LC274
        inc     $15
        rts

LA268:  jsr     LC31F
        inc     $15
        rts

LA26E:  jsr     LC3CA
        inc     $15
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

        rts

        dec     a:$24
        rts

        lda     $16
        and     #$08
        cmp     #$01
        beq     LA68D
        and     #$08
        beq     LA693
        and     #$0A
        beq     LA699
LA68D:  jsr     LC69F
        inc     $17
        rts

LA693:  jsr     LC748
        inc     $17
        rts

LA699:  jsr     LC7F1
        inc     $17
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
LA6CE:  sta     $0207
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
        lda     #$16
        sta     $021A
        lda     a:$24
        sta     $021B
        rts

        rts

        lda     #$01
        sta     $18
        rts

        lda     #$00
        sta     $18
        rts

        lda     $18
        cmp     #$01
        bne     LA8C4
        beq     LA8AD
LA8AD:  lda     $19
        cmp     #$20
        beq     LA8C4
        bne     LA8B5
LA8B5:  dec     a:$25
        dec     a:$25
        dec     a:$25
        dec     a:$25
        inc     $19
        rts

LA8C4:  rts

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
LA9B3:  adc     #$08
        sta     $020B
        lda     a:$25
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
        bcs     LAA23
        bne     LAA27
LAA23:  jsr     LC243
        rts

LAA27:  inc     a:$24
        rts

        lda     $16
        and     #$08
        cmp     #$01
        beq     LAA3B
        and     #$08
        beq     LAA41
        and     #$0A
        beq     LAA47
LAA3B:  jsr     LCA4D
        inc     $15
        rts

LAA41:  jsr     LCAF8
        inc     $15
        rts

LAA47:  jsr     LCBA3
        inc     $15
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

        lda     $16
        and     #$08
        cmp     #$01
        beq     LAC63
        and     #$08
        beq     LAC69
        and     #$0A
        beq     LAC6F
LAC63:  jsr     LCC75
        inc     $15
        rts

LAC69:  jsr     LCD1E
        inc     $15
        rts

LAC6F:  jsr     LCDC7
        inc     $15
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

        lda     a:$36
        and     #$07
        beq     LAE7A
        inc     a:$45
LAE7A:  rts

        lda     a:$36
        clc
        adc     a:$24
        sta     $21
        rts

        lda     $21
        cmp     #$FF
LAE89:  rts

        bne     LAE89
        lda     L0020
        cmp     #$01
LAE90:  lda     #$00
        sta     L0020
        beq     LAE90
LAE96:  lda     #$01
        sta     L0020
        beq     LAE96
        rts

        lda     L0020
        cmp     #$01
LAEA1:  lda     #$00
        sta     $1F
        rts

        beq     LAEA1
        lda     #$04
        sta     $1F
        rts

        jsr     LCE7B
        jsr     LCE85
        jsr     LCE9D
        lda     a:$25
        clc
        adc     #$18
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$20
        adc     $1F
        tax
        lda     $21
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     $1E
        sta     $1E
        lda     a:$25
        clc
        adc     #$18
        lsr     a
        lsr     a
        lsr     a
        and     #$07
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     $1E
        tay
        lda     $2002
        stx     $2006
        sty     $2006
        lda     $2007
        cmp     #$29
        beq     LAF00
        cmp     #$2A
        beq     LAF00
        bne     LAEFC
LAEFC:  jsr     LCF04
        rts

LAF00:  jsr     LCF09
        rts

        lda     #$01
        sta     $1A
        rts

        lda     #$00
        sta     $1A
        sta     $19
        sta     $18
        rts

        jsr     LCE70
        lda     a:$45
        asl     a
        asl     a
        tay
        lda     a:$25
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
        lda     a:$24
        lsr     a
        lsr     a
        lsr     a
        asl     a
        asl     a
        clc
        adc     a:$43
        tay
        lda     a:$25
        clc
        adc     #$12
        lsr     a
        lsr     a
        lsr     a
        and     #$07
        tax
        lda     a:$36
        lsr     a
        lsr     a
        lsr     a
        asl     a
        asl     a
        sta     a:$48
        tya
        clc
        adc     a:$48
        tay
        lda     LD30C,y
        and     LD304,x
        beq     LAF5F
        bne     LAF66
LAF5F:  lda     #$00
        sta     $23
        jmp     LCF6D

LAF66:  lda     #$01
        sta     $23
        jmp     LCF6D

        lda     LD40C,y
        and     LD304,x
        beq     LAF77
        bne     LAF78
LAF77:  rts

LAF78:  lda     $23
        eor     #$02
        rts

        ldx     #$00
        lda     #$01
        sta     $4016
        lda     #$00
        sta     $4016
        ldy     #$08
LAF8B:  lda     $4016,x
        lsr     a
        ror     a:$3B,x
        dey
        bne     LAF8B
        rts

        ldy     #$13
LAF98:  lda     LD50C,y
        sta     $4000,y
        dey
        bpl     LAF98
        lda     #$0F
        sta     $4015
        lda     #$40
        sta     $4017
        rts

        pla
        tax
        lda     LD570,x
        lsr     a
        sta     $400B
        lda     LD520,x
        ror     a
        sta     $400A
        inx
        txa
        cmp     #$14
        beq     LAFC4
        bne     LAFC7
LAFC4:  ldx     #$00
        txa
LAFC7:  pha
        rts

        lda     a:$36
        cmp     #$FD
        beq     LAFD2
        bne     LAFD8
LAFD2:  inc     a:$38
        jmp     LCFD8

LAFD8:  lda     a:$38
        cmp     #$00
        beq     LAFEF
        cmp     #$01
        beq     LB006
        cmp     #$02
        beq     LB01D
        cmp     #$03
        beq     LB02A
        cmp     #$04
        beq     LB037
LAFEF:  ldx     #$DF
        stx     a:$39
        ldx     #$D9
        stx     a:$3A
        ldx     #$1F
        stx     a:$41
        ldx     #$EA
        stx     a:$42
        jmp     LD03F

LB006:  ldx     #$DF
        stx     a:$39
        ldx     #$DD
        stx     a:$3A
        ldx     #$5F
        stx     a:$41
        ldx     #$EA
        stx     a:$42
        jmp     LD03F

LB01D:  ldx     #$DF
        stx     a:$39
        ldx     #$E1
        stx     a:$3A
        jmp     LD03F

LB02A:  ldx     #$DF
        stx     a:$39
        ldx     #$E5
        stx     a:$3A
        jmp     LD03F

LB037:  ldx     #$00
        stx     a:$38
        jmp     LCFD8

        rts

        lda     #$C0
        sta     a:$28
        lda     #$D5
        sta     a:$29
        lda     a:$36
        cmp     #$FD
        beq     LB053
        bne     LB059
LB053:  inc     a:$38
        jmp     LD059

LB059:  lda     a:$38
        cmp     #$00
        beq     LB06C
        cmp     #$01
        beq     LB083
        cmp     #$02
        beq     LB09A
        cmp     #$03
        beq     LB0A7
LB06C:  ldx     #$DE
        stx     a:$39
        ldx     #$EE
        stx     a:$3A
        ldx     #$1E
        stx     a:$41
        ldx     #$FB
        stx     a:$42
        jmp     LD0AF

LB083:  ldx     #$DE
        stx     a:$39
        ldx     #$F2
        stx     a:$3A
        ldx     #$5E
        stx     a:$41
        ldx     #$FB
        stx     a:$42
        jmp     LD0AF

LB09A:  ldx     #$DE
        stx     a:$39
        ldx     #$F6
        stx     a:$3A
        jmp     LD0AF

LB0A7:  ldx     #$00
        stx     a:$38
        jmp     LD059

        rts

        lda     #$BF
        sta     a:$28
        lda     #$EA
        sta     a:$29
        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
LB0C9:  lda     LEA9F,x
        sta     $2007
        inx
        cpx     #$20
        bne     LB0C9
        rts

        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
LB0E4:  lda     LFB9E,x
        sta     $2007
        inx
        cpx     #$20
        bne     LB0E4
        rts

        sei
        ldx     #$00
        stx     $2000
        stx     $2001
        stx     $4010
        dex
        txs
LB0FE:  bit     $2002
        bpl     LB0FE
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
LB11C:  lda     ($28),y
        sta     $2007
        iny
        cpy     #$00
        bne     LB11C
        inc     a:$29
        inx
        cpx     #$04
        bne     LB11C
        rts

        lda     $2002
        lda     #$23
        sta     $2006
        lda     #$C0
        sta     $2006
        ldx     #$00
LB13E:  lda     LFADE,x
        sta     $2007
        inx
        cpx     #$42
        bne     LB13E
        lda     $2002
        lda     #$27
        sta     $2006
        lda     #$C0
        sta     $2006
        ldx     #$00
LB158:  lda     LFADE,x
        sta     $2007
        inx
        cpx     #$42
        bne     LB158
        rts

        lda     a:$36
        and     #$0F
        bne     LB1DA
        jmp     LD16E

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
        beq     LB1D9
        lda     a:$31
        clc
        adc     #$08
        sta     a:$31
        jmp     LD1B7

LB1D9:  rts

LB1DA:  rts

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
        lda     #$44
        eor     a:$37
        sta     $2000
        lda     $2002
        lda     a:$32
        sta     $2006
        lda     a:$31
        sta     $2006
        ldx     #$1E
        ldy     #$00
LB234:  lda     ($33),y
        sta     $2007
        iny
        dex
        bne     LB234
        lda     #$90
        eor     a:$37
        sta     $2000
        rts

        lda     a:$36
        and     #$07
        bne     LB25B
        jsr     LD1DB
        lda     a:$35
        clc
        adc     #$01
        and     #$7F
        sta     a:$35
LB25B:  lda     #$90
        ora     a:$37
        sta     $2000
        lda     #$1E
        sta     $2001
        rts

        clc
        lda     a:$36
        cmp     #$FD
        bne     LB27A
        lda     a:$37
        eor     #$01
        sta     a:$37
        rts

LB27A:  rts

        lda     #$90
        sta     $2000
        rts

        lda     #$18
        sta     $2001
        rts

        lda     #$00
        sta     $2001
        rts

        lda     #$00
        sta     $2003
        lda     #$02
        sta     $4014
        rts

        inc     $16
        rts

        jsr     LD298
        jsr     LCF7D
        jsr     LC0A0
        jsr     LC18C
        jsr     LD04A
        jsr     LD269
        jsr     LD164
        jsr     LD246
        jsr     LCF12
        jsr     LC040
        jsr     LD28D
        jsr     LC02D
        rti

        rti

        sei
        ldx     #$00
        stx     $2000
        stx     $2001
        stx     $4010
        dex
        txs
LB2CF:  bit     $2002
        bpl     LB2CF
        jsr     LC001
        jsr     LD104
        jsr     LD0B0
        jsr     LD0BA
        jsr     LD10B
        jsr     LD12F
        jsr     LC030
        jsr     LD27B
        jsr     LD281
        jmp     LD2EF

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
        brk
        php
        bpl     LB31B
        .byte   $80
        rti

        jsr     L0810
        .byte   $04
        .byte   $02
        ora     (L0000,x)
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
LB31B:  sed
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
        .byte   $3F
        clv
        brk
        brk
        .byte   $3F
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
        brk
        .byte   $1F
        beq     LB411
LB411:  brk
        .byte   $1F
        beq     LB415
LB415:  brk
        .byte   $1F
        beq     LB419
LB419:  brk
        .byte   $1F
        beq     LB41D
LB41D:  brk
        .byte   $1F
        beq     LB421
LB421:  brk
        .byte   $1F
        beq     LB425
LB425:  brk
        .byte   $1F
        beq     LB429
LB429:  brk
        .byte   $1F
        beq     LB42D
LB42D:  brk
        .byte   $1F
        beq     LB431
LB431:  brk
        .byte   $1F
        beq     LB435
LB435:  brk
        .byte   $1F
        beq     LB439
LB439:  brk
        .byte   $1F
        beq     LB43D
LB43D:  brk
        .byte   $1F
        beq     LB441
LB441:  brk
        .byte   $1F
        beq     LB445
LB445:  brk
        .byte   $1F
        beq     LB449
LB449:  brk
        .byte   $1F
        beq     LB44D
LB44D:  brk
        .byte   $1F
        beq     LB451
LB451:  brk
        .byte   $1F
        beq     LB455
LB455:  brk
        .byte   $1F
        beq     LB459
LB459:  brk
        .byte   $1F
        beq     LB45D
LB45D:  brk
        .byte   $1F
        beq     LB461
LB461:  brk
        .byte   $1F
        beq     LB465
LB465:  brk
        .byte   $1F
        beq     LB469
LB469:  brk
        .byte   $1F
        beq     LB46D
LB46D:  brk
        .byte   $1F
        beq     LB471
LB471:  brk
        .byte   $1F
        beq     LB475
LB475:  brk
        .byte   $1F
        beq     LB479
LB479:  brk
        .byte   $1F
        beq     LB47D
LB47D:  brk
        .byte   $1F
        beq     LB481
LB481:  brk
        .byte   $1F
        beq     LB485
LB485:  brk
        .byte   $1F
        beq     LB489
LB489:  brk
        .byte   $1F
        beq     LB48D
LB48D:  brk
        .byte   $1F
        beq     LB491
LB491:  brk
        .byte   $1F
        beq     LB495
LB495:  brk
        .byte   $1F
        bcs     LB499
LB499:  brk
        .byte   $1F
        bcs     LB49D
LB49D:  brk
        .byte   $1F
        bcs     LB4A1
LB4A1:  brk
        .byte   $1F
        bcs     LB4A5
LB4A5:  brk
        .byte   $1F
        beq     LB4A9
LB4A9:  brk
        .byte   $1F
        beq     LB4AD
LB4AD:  brk
        .byte   $1F
        beq     LB4B1
LB4B1:  brk
        .byte   $1F
        beq     LB4B5
LB4B5:  brk
        .byte   $1F
        beq     LB4B9
LB4B9:  brk
        .byte   $1F
        beq     LB4BD
LB4BD:  brk
        .byte   $1F
        beq     LB4C1
LB4C1:  brk
        .byte   $1F
        beq     LB4C5
LB4C5:  brk
        .byte   $1F
        beq     LB4C9
LB4C9:  brk
        .byte   $1F
        beq     LB4CD
LB4CD:  brk
        .byte   $1F
        beq     LB4D1
LB4D1:  brk
        .byte   $1F
        beq     LB4D5
LB4D5:  brk
        .byte   $1F
        beq     LB4D9
LB4D9:  brk
        .byte   $1F
        beq     LB4DD
LB4DD:  brk
        .byte   $1F
        beq     LB4E1
LB4E1:  brk
        .byte   $1F
        beq     LB4E5
LB4E5:  brk
        .byte   $1F
        beq     LB4E9
LB4E9:  brk
        .byte   $1F
        beq     LB4ED
LB4ED:  brk
        .byte   $1F
        beq     LB4F1
LB4F1:  brk
        .byte   $1F
        beq     LB4F5
LB4F5:  brk
        .byte   $1F
        beq     LB4F9
LB4F9:  brk
        .byte   $1F
        beq     LB4FD
LB4FD:  brk
        .byte   $1F
        beq     LB501
LB501:  brk
        .byte   $1F
        beq     LB505
LB505:  brk
        .byte   $1F
        beq     LB509
LB509:  brk
        .byte   $1F
        beq     LB53D
        php
        brk
        brk
        bmi     LB51A
        brk
        brk
        .byte   $80
        brk
        brk
        brk
        bmi     LB51A
LB51A:  brk
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
LB53D:  .byte   $7C
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
        bvs     LB5BE
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
LB5BE:  brk
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
        bmi     LB8E2
        bmi     LB8E4
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
LB8E2:  eor     ($11,x)
LB8E4:  rti

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
        .byte   $11
LBC20:  ora     ($11),y
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
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        .byte   $01
LBE7E:  ora     ($11,x)
        ora     ($11),y
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
LC001:  ora     ($11),y
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
LC02D:  ora     ($11),y
        .byte   $11
LC030:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $11
LC040:  ora     ($11),y
        ora     ($11),y
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC06A:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        .byte   $11
LC0A0:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        .byte   $11
LC0E0:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LC153:  .byte   $11
LC154:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC166:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC178:  .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        .byte   $11
LC182:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC18C:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC193:  ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
        ora     ($01,x)
LC19D:  ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LC1D7:  ora     ($02),y
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
LC1F0:  ora     ($11),y
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
        .byte   $11
LC20E:  ora     ($11),y
        ora     ($11),y
        .byte   $11
LC213:  ora     ($11),y
        ora     ($11),y
        .byte   $11
LC218:  .byte   $02
        ora     ($01,x)
        ora     ($01,x)
LC21D:  ora     ($01,x)
        ora     ($11),y
        .byte   $11
LC222:  ora     ($11),y
        ora     ($11),y
        .byte   $11
LC227:  ora     ($11),y
        ora     ($11),y
        .byte   $11
LC22C:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC232:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LC243:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC251:  .byte   $11
LC252:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC274:  ora     ($11),y
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
LC31F:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LC3CA:  ora     ($11),y
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
LC476:  .byte   $02
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
LC521:  ora     ($11),y
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
        .byte   $11
LC578:  .byte   $02
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
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LC679:  ora     ($01,x)
        ora     ($01,x)
LC67D:  ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LC69F:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        .byte   $11
LC748:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
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
LC7F1:  ora     ($11),y
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
LC89B:  ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LC8A5:  ora     ($11),y
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
LC8C5:  ora     ($11),y
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
LC970:  ora     ($11),y
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
        lda     $A5
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
LCA2B:  brk
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
LCA4D:  tax
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
        .byte   $0F
        ora     ($37,x)
        asl     a
        and     ($0C,x)
        php
        plp
        and     ($1C,x)
        and     #$07
        and     ($3F),y
        .byte   $3C
        .byte   $02
        .byte   $32
        bpl     LCACC
        .byte   $0F
        .byte   $32
        rol     $17,x
        .byte   $0F
        .byte   $32
        bmi     LCADB
        .byte   $0F
        .byte   $32
        .byte   $27
        .byte   $17
        .byte   $0F
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LCACC:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LCADB:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LCAF8:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LCBA3:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LCC53:  ora     ($11),y
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
LCC75:  ora     ($30),y
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
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        and     #$2A
        .byte   $29
LCD1E:  rol     a
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
        bit     $2C2B
        .byte   $2B
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
        plp
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
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
LCDC7:  brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bit     $24
        bit     $24
        and     $24
        bit     $24
        and     $24
        bit     $24
        bit     $24
        bit     $24
        .byte   $24
LCE70:  bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        .byte   $24
LCE7B:  bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
LCE85:  bit     $24
        bit     $24
        bit     $24
        brk
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        brk
        bit     $24
LCE9D:  bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        brk
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        brk
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        brk
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        brk
        bit     $24
        bit     $11
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
LCF04:  ora     ($11),y
        ora     ($11),y
        .byte   $11
LCF09:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LCF12:  ora     ($11),y
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
        .byte   $11
LCF6D:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        .byte   $01
LCF7D:  ora     ($11,x)
        ora     ($11),y
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
LCFD8:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LCFE3:  ora     ($11),y
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
        ora     ($01,x)
        ora     ($01,x)
        .byte   $11
LD03F:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD04A:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        .byte   $01
LD059:  ora     ($01,x)
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
        .byte   $11
LD0AF:  .byte   $11
LD0B0:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($02),y
        ora     ($01,x)
LD0BA:  ora     ($01,x)
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
LD104:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LD10B:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        .byte   $11
LD12F:  ora     ($11),y
        ora     ($11),y
        ora     ($02),y
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
LD164:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD16E:  ora     ($11),y
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
        .byte   $11
LD1B7:  .byte   $02
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
        .byte   $01
LD1DB:  ora     ($01,x)
        ora     ($11,x)
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
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD246:  ora     ($11),y
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
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        .byte   $24
LD269:  bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
LD27B:  bit     $24
        bit     $11
        ora     ($11),y
LD281:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD28D:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
LD298:  ora     ($01,x)
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
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        bit     $02
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
LD2EF:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
LD300:  ora     ($11),y
        ora     ($11),y
LD304:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD30C:  ora     ($11),y
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
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
LD40C:  ora     ($11),y
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
LD50C:  ora     ($11),y
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
LD520:  ora     ($11),y
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
LD570:  ora     ($11),y
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
        brk
        brk
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
        eor     $55,x
        eor     $55,x
        eor     L0000,x
        lda     $A5
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
        bpl     LDBCB
        .byte   $0F
        .byte   $32
        rol     $17,x
        .byte   $0F
        .byte   $32
        bmi     LDBDA
        .byte   $0F
        .byte   $32
LDBBB:  .byte   $27
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
LDBCB:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LDBDA:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        .byte   $9B
        .byte   $D2
        cmp     ($D2,x)
        cpy     #$D2
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
LEA9F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        tax
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
        and     LFF7D,x
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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

        cpy     #$00
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF4C8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LFADE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFB9E:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        brk
LFFFE:  brk
LFFFF:  brk
