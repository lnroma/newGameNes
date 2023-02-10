; da65 V2.18 - N/A
; Created:    2023-02-07 15:59:11
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
        sta     a:$1D
        lda     #$00
        sta     a:$1F
        sta     a:$3E
        lda     #$0A
        sta     a:$1E
        lda     #$04
        sta     a:L0020
        lda     #$01
        sta     a:$19
        lda     #$00
        sta     a:$14
        lda     #$00
        sta     a:$18
        sta     a:$19
        rts

        lda     #$00
        sta     a:$31
        lda     #$00
        sta     a:$30
        lda     #$00
        sta     a:$2F
        rts

        lda     a:$2F
        sta     $2005
        lda     #$00
        sta     $2005
        rts

        ldx     a:L0020
L804A:  lda     #$0A
        sta     $2004
        lda     #$06
        sta     $2004
        lda     #$17
        sta     $2004
        lda     LD300,x
        adc     #$0A
        sta     $2004
        dex
        bne     L804A
        rts

        jsr     LC19B
        jsr     LC1A5
        ldx     a:$34
        cpx     #$40
        beq     L809E
        cpx     #$80
        beq     L8092
        cpx     #$02
        beq     L808C
        cpx     #$82
        beq     L80AA
        cpx     #$81
        beq     L80C2
        cpx     #$41
        beq     L80CE
        cpx     #$42
        beq     L80B6
        bne     L80FE
L808C:  jsr     LC814
        jmp     LC104

L8092:  jsr     LC1AB
        jsr     LC18C
        jsr     LC191
        jmp     LC104

L809E:  jsr     LC187
        jsr     LC5F2
        jsr     LC191
        jmp     LC104

L80AA:  jsr     LC814
        jsr     LC1AB
        jsr     LC18C
        jmp     LC104

L80B6:  jsr     LC814
        jsr     LC5F2
        jsr     LC187
        .byte   $4C
L80C0:  .byte   $04
        .byte   $C1
L80C2:  jsr     LC196
        jsr     LC1AB
        jsr     LC18C
        jmp     LC104

L80CE:  jsr     LC196
        jsr     LC5F2
        jsr     LC187
        jmp     LC104

        jsr     LC196
        jsr     LC1AB
        jsr     LC18C
        jsr     LC814
        jmp     LC104

        jsr     LC196
        jsr     LC5F2
        jsr     LC187
        jsr     LC814
        jmp     LC104

        jsr     LC196
        jmp     LC104

L80FE:  jsr     LC1A0
        jmp     LC104

        rts

        jsr     LC81E
        jsr     LC10C
        rts

        jsr     LC169
        jsr     LC116
        jsr     LC150
        rts

        lda     $11
        cmp     #$01
        beq     L811E
        bne     L814F
L811E:  lda     a:$17
        cmp     #$01
        beq     L814F
        bne     L8127
L8127:  lda     $12
        cmp     #$01
        beq     L812F
        bne     L813F
L812F:  lda     $10
        cmp     #$01
        beq     L813B
        bne     L8137
L8137:  jsr     LC9A4
        rts

L813B:  jsr     LCBCC
        rts

L813F:  lda     $10
        cmp     #$01
        beq     L814B
        bne     L8147
L8147:  jsr     LC1CB
        rts

L814B:  jsr     LC5F6
        rts

L814F:  rts

        lda     $13
        cmp     #$01
        bne     L8168
        beq     L8158
L8158:  lda     $10
        cmp     #$01
        beq     L8164
        bne     L8160
L8160:  jsr     LC3EF
        rts

L8164:  jsr     LC4F1
        rts

L8168:  rts

        lda     a:$17
        cmp     #$01
        beq     L8172
        bne     L8182
L8172:  lda     $10
        cmp     #$01
        beq     L817A
        bne     L817E
L817A:  jsr     LC8E9
        rts

L817E:  jsr     LC83E
        rts

L8182:  rts

        jsr     LC49A
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

        lda     a:$1D
        cmp     #$7A
        bcs     L81B4
        bne     L81B8
L81B4:  jsr     LC1BC
        rts

L81B8:  inc     a:$1D
        rts

        lda     $15
        and     #$02
        beq     L81C4
        bne     L81CA
L81C4:  inc     a:$2F
        jmp     LC1CA

L81CA:  rts

        lda     $15
        and     #$08
        cmp     #$01
        beq     L81DB
        and     #$08
        beq     L81E1
        and     #$0A
        beq     L81E7
L81DB:  jsr     LC1ED
        inc     $14
        rts

L81E1:  jsr     LC298
        inc     $14
        rts

L81E7:  jsr     LC343
        inc     $14
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        adc     #$08
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        adc     #$06
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        adc     #$08
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$15
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        adc     #$06
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        adc     #$08
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$17
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        adc     #$06
        sta     $021B
        rts

        rts

        lda     a:$1E
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$16
        sta     $0202
        lda     a:$1D
        adc     #$06
        sta     $0203
        lda     a:$1E
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$08
        sta     $0208
        lda     #$10
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        adc     #$10
        sta     $020C
        lda     #$20
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$08
        sta     $0214
        lda     #$10
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        adc     #$10
        sta     $0218
        lda     #$20
        sta     $0219
        lda     #$57
        sta     $021A
        lda     a:$1D
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

        lda     a:$1E
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$56
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$07
        sta     $0207
        lda     a:$1E
        adc     #$08
        sta     $0208
        lda     #$10
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        adc     #$10
        sta     $020C
        lda     #$20
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$08
        sta     $0214
        lda     #$10
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        adc     #$10
        sta     $0218
        lda     #$20
        sta     $0219
        lda     #$57
        sta     $021A
        lda     a:$1D
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

        dec     a:$1D
        rts

        lda     $15
        and     #$08
        cmp     #$01
        beq     L8606
        and     #$08
        beq     L860C
        and     #$0A
        beq     L8612
L8606:  jsr     LC618
        inc     $16
        rts

L860C:  jsr     LC6C1
        inc     $16
        rts

L8612:  jsr     LC76A
        inc     $16
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$1D
        adc     #$08
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$08
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$1D
        adc     #$08
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$1D
        adc     #$07
        sta     $0203
        lda     a:$1E
        adc     #$08
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$08
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$1D
        adc     #$08
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$15
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        .byte   $8D
L8778:  .byte   $02
        .byte   $02
        lda     a:$1D
        adc     #$08
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$08
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$1D
        adc     #$08
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$17
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        sta     $021B
        rts

        rts

        lda     #$01
        sta     $17
        rts

        lda     #$00
        sta     $17
        rts

        lda     $17
        cmp     #$01
        bne     L883D
        beq     L8826
L8826:  lda     $18
        cmp     #$20
        beq     L883D
        bne     L882E
L882E:  dec     a:$1E
        dec     a:$1E
        dec     a:$1E
        dec     a:$1E
        inc     $18
        rts

L883D:  rts

        lda     a:$1E
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$16
        sta     $0202
        lda     a:$1D
        adc     #$06
        sta     $0203
        lda     a:$1E
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$08
        sta     $0208
        lda     #$18
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        adc     #$10
        sta     $020C
        lda     #$28
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$08
        sta     $0214
        lda     #$19
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        adc     #$10
        sta     $0218
        lda     #$29
        sta     $0219
        lda     #$17
        sta     $021A
        lda     a:$1D
        adc     #$08
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$04
        sta     $0201
        lda     #$56
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        sta     $0204
        lda     #$00
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$07
        sta     $0207
        lda     a:$1E
        adc     #$08
        sta     $0208
        lda     #$18
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$1D
        adc     #$08
        sta     $020B
        lda     a:$1E
        adc     #$10
        sta     $020C
        lda     #$28
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$1D
        adc     #$08
        sta     $020F
        lda     a:$1E
        sta     $0210
        lda     #$01
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$08
        sta     $0214
        lda     #$19
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        sta     $0217
        lda     a:$1E
        adc     #$10
        sta     $0218
        lda     #$29
        sta     $0219
        lda     #$57
        sta     $021A
        lda     a:$1D
        sta     $021B
        rts

        rts

        lda     a:$1D
        cmp     #$7A
        bcs     L899C
        bne     L89A0
L899C:  jsr     LC1BC
        rts

L89A0:  inc     a:$1D
        rts

        lda     $15
        and     #$08
        cmp     #$01
        beq     L89B4
        and     #$08
        beq     L89BA
        and     #$0A
        beq     L89C0
L89B4:  jsr     LC9C6
        inc     $14
        rts

L89BA:  jsr     LCA71
        inc     $14
        rts

L89C0:  jsr     LCB1C
        inc     $14
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        adc     #$08
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        adc     #$06
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        adc     #$08
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        adc     #$06
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$17
        sta     $0202
        lda     a:$1D
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$17
        sta     $0206
        lda     a:$1D
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$17
        sta     $020A
        lda     a:$1D
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$17
        sta     $020E
        lda     a:$1D
        adc     #$08
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$17
        sta     $0212
        lda     a:$1D
        adc     #$08
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$17
        sta     $0216
        lda     a:$1D
        adc     #$08
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        adc     #$06
        sta     $021B
        rts

        rts

        dec     a:$1D
        rts

        lda     $15
        and     #$08
        cmp     #$01
        beq     L8BDC
        and     #$08
        beq     L8BE2
        and     #$0A
        beq     L8BE8
L8BDC:  jsr     LCBEE
        inc     $14
        rts

L8BE2:  jsr     LCC97
        inc     $14
        rts

L8BE8:  jsr     LCD40
        inc     $14
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$1D
        adc     #$08
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$12
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$08
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$22
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$1D
        adc     #$08
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$23
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$1D
        adc     #$07
        sta     $0203
        lda     a:$1E
        adc     #$08
        sta     $0204
        lda     #$14
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$08
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$24
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$1D
        adc     #$08
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$25
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        sta     $021B
        rts

        lda     a:$1E
        sta     $0200
        lda     #$02
        sta     $0201
        lda     #$57
        sta     $0202
        lda     a:$1D
        adc     #$08
        sta     $0203
        lda     a:$1E
        adc     #$07
        sta     $0204
        lda     #$16
        sta     $0205
        lda     #$57
        sta     $0206
        lda     a:$1D
        adc     #$08
        sta     $0207
        lda     a:$1E
        adc     #$10
        sta     $0208
        lda     #$26
        sta     $0209
        lda     #$57
        sta     $020A
        lda     a:$1D
        adc     #$08
        sta     $020B
        lda     a:$1E
        sta     $020C
        lda     #$03
        sta     $020D
        lda     #$57
        sta     $020E
        lda     a:$1D
        sta     $020F
        lda     a:$1E
        adc     #$08
        sta     $0210
        lda     #$13
        sta     $0211
        lda     #$57
        sta     $0212
        lda     a:$1D
        sta     $0213
        lda     a:$1E
        adc     #$10
        sta     $0214
        lda     #$27
        sta     $0215
        lda     #$57
        sta     $0216
        lda     a:$1D
        sta     $0217
        lda     a:$1E
        sta     $0218
        lda     #$04
        sta     $0219
        lda     #$16
        sta     $021A
        lda     a:$1D
        sta     $021B
        rts

        lda     a:$2F
        and     #$07
        beq     L8DF3
        inc     a:$3E
L8DF3:  rts

        jsr     LCDE9
        lda     a:$3E
        asl     a
        asl     a
        tay
        lda     a:$1D
        lsr     a
        lsr     a
        lsr     a
        sta     $1A
        lda     a:$1E
        lsr     a
        lsr     a
        lsr     a
        and     #$07
        clc
        adc     #$20
        sta     $1B
        lda     a:$1E
        asl     a
        asl     a
        asl     a
        clc
        adc     $1A
        sta     $1C
        lda     $2002
        lda     $1B
        sta     $2006
        lda     $1C
        sta     $2006
        lda     $2007
        cmp     #$00
        bne     L8E33
        beq     L8E3E
L8E33:  lda     #$01
        sta     $19
        inc     a:$1E
        inc     a:$1E
        rts

L8E3E:  lda     #$00
        sta     $19
        sta     $18
        sta     $17
        rts

        jsr     LCDE9
        lda     a:$3E
        asl     a
        asl     a
        tay
        lda     a:$1E
        clc
        adc     #$12
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        sta     a:$3C
        lda     a:$1D
        lsr     a
        lsr     a
        lsr     a
        asl     a
        asl     a
        clc
        adc     a:$3C
        tay
        lda     a:$1E
        clc
        adc     #$12
        lsr     a
        lsr     a
        lsr     a
        and     #$07
        tax
        lda     a:$2F
        lsr     a
        lsr     a
        lsr     a
        asl     a
        asl     a
        sta     a:$41
        tya
        clc
        adc     a:$41
        tay
        lda     LD30C,y
        sta     a:$41
        lda     a:$41
        and     LD304,x
        beq     L8E9A
        bne     L8EA5
L8E9A:  lda     #$01
        sta     $19
        inc     a:$1E
        inc     a:$1E
        rts

L8EA5:  lda     #$00
        sta     $19
        sta     $18
        sta     $17
        rts

        ldx     #$00
        lda     #$01
        sta     $4016
        lda     #$00
        sta     $4016
        ldy     #$08
L8EBC:  lda     $4016,x
        lsr     a
        ror     a:$34,x
        dey
        bne     L8EBC
        rts

        ldy     #$13
L8EC9:  lda     LD40C,y
        sta     $4000,y
        dey
        bpl     L8EC9
        lda     #$0F
        sta     $4015
        lda     #$40
        sta     $4017
        rts

        pla
        tax
        lda     LD470,x
        lsr     a
        sta     $400B
        lda     LD420,x
        ror     a
        sta     $400A
        inx
        txa
        cmp     #$14
        beq     L8EF5
        bne     L8EF8
L8EF5:  ldx     #$00
        txa
L8EF8:  pha
        rts

        lda     a:$2F
        cmp     #$FD
        beq     L8F03
        bne     L8F09
L8F03:  inc     a:$31
        jmp     LCF09

L8F09:  lda     a:$31
        cmp     #$00
        beq     L8F20
        cmp     #$01
        beq     L8F37
        cmp     #$02
        beq     L8F4E
        cmp     #$03
        beq     L8F5B
        cmp     #$04
        beq     L8F68
L8F20:  ldx     #$DF
        stx     a:$32
        ldx     #$D8
        stx     a:$33
        ldx     #$1F
        stx     a:$3A
        ldx     #$E9
        stx     a:$3B
        jmp     LCF70

L8F37:  ldx     #$DF
        stx     a:$32
        ldx     #$DC
        stx     a:$33
        ldx     #$5F
        stx     a:$3A
        ldx     #$E9
        stx     a:$3B
        jmp     LCF70

L8F4E:  ldx     #$DF
        stx     a:$32
        ldx     #$E0
        stx     a:$33
        jmp     LCF70

L8F5B:  ldx     #$DF
        stx     a:$32
        ldx     #$E4
        stx     a:$33
        jmp     LCF70

L8F68:  ldx     #$00
        stx     a:$31
        jmp     LCF09

        rts

        lda     #$C0
        sta     a:$21
        lda     #$D4
        sta     a:$22
        lda     a:$2F
        cmp     #$FD
        beq     L8F84
        bne     L8F8A
L8F84:  inc     a:$31
        jmp     LCF8A

L8F8A:  lda     a:$31
        cmp     #$00
        beq     L8FA1
        cmp     #$01
        beq     L8FB8
        cmp     #$02
        beq     L8FCF
        cmp     #$03
        beq     L8FDC
        cmp     #$04
        beq     L8FE9
L8FA1:  ldx     #$BE
        stx     a:$32
        ldx     #$ED
        stx     a:$33
        ldx     #$FE
        stx     a:$3A
        ldx     #$FD
        stx     a:$3B
        jmp     LCFF1

L8FB8:  ldx     #$BE
        stx     a:$32
        ldx     #$F1
        stx     a:$33
        ldx     #$3E
        stx     a:$3A
        ldx     #$FE
        stx     a:$3B
        jmp     LCFF1

L8FCF:  ldx     #$BE
        stx     a:$32
        ldx     #$F5
        stx     a:$33
        jmp     LCFF1

L8FDC:  ldx     #$BE
        stx     a:$32
        ldx     #$F9
        stx     a:$33
        jmp     LCFF1

L8FE9:  ldx     #$00
        stx     a:$31
        jmp     LCF8A

        rts

        lda     #$BF
        sta     a:$21
        lda     #$E9
        sta     a:$22
        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
L900B:  lda     LE99F,x
        sta     $2007
        inx
        cpx     #$20
        bne     L900B
        rts

        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
L9026:  lda     LFE7E,x
        sta     $2007
        inx
        cpx     #$20
        bne     L9026
        rts

        sei
        ldx     #$00
        stx     $2000
        stx     $2001
        stx     $4010
        dex
        txs
L9040:  bit     $2002
        bpl     L9040
        rts

        lda     #$00
        sta     a:$39
        rts

        rts

        lda     $2002
        lda     #$20
        sta     $2006
        lda     #$00
        sta     $2006
        ldx     #$00
        ldy     #$00
L905E:  lda     ($21),y
        sta     $2007
        iny
        cpy     #$00
        bne     L905E
        inc     a:$22
        inx
        cpx     #$04
        bne     L905E
        rts

        lda     $2002
        lda     #$23
        sta     $2006
        lda     #$C0
        sta     $2006
        ldx     #$00
L9080:  lda     LFDBE,x
        sta     $2007
        inx
        cpx     #$42
        bne     L9080
        lda     $2002
        lda     #$27
        sta     $2006
        lda     #$C0
        sta     $2006
        ldx     #$00
L909A:  lda     LFDBE,x
        sta     $2007
        inx
        cpx     #$42
        bne     L909A
        rts

        lda     a:$2F
        and     #$0F
        bne     L911C
        jmp     LD0B0

        lda     a:$30
        eor     #$01
        asl     a
        asl     a
        clc
        adc     #$23
        sta     a:$2B
        lda     a:$2F
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$C0
        sta     a:$2A
        lda     a:$2E
        and     #$FC
        asl     a
        sta     a:$2C
        lda     a:$2E
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     a:$2D
        lda     a:$2C
        clc
        adc     a:$3A
        sta     a:$2C
        lda     a:$2D
        adc     a:$3B
        sta     a:$2D
        ldy     #$00
        lda     $2002
        lda     a:$2B
        sta     $2006
        lda     a:$2A
        sta     $2006
        lda     ($2C),y
        sta     $2007
        iny
        cpy     #$08
        beq     L911B
        lda     a:$2A
        clc
        adc     #$08
        sta     a:$2A
        jmp     LD0F9

L911B:  rts

L911C:  rts

        lda     a:$2F
        lsr     a
        lsr     a
        lsr     a
        sta     a:$2A
        sta     a:$2E
        lda     a:$30
        asl     a
        asl     a
        clc
        adc     #$24
        sta     a:$2B
        lda     a:$2E
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        sta     a:$2C
        lda     a:$2E
        lsr     a
        lsr     a
        lsr     a
        sta     a:$2D
        lda     a:$2C
        clc
        adc     a:$32
        sta     a:$2C
        lda     a:$2D
        adc     a:$33
        sta     a:$2D
        lda     #$44
        eor     a:$30
        sta     $2000
        lda     $2002
        lda     a:$2B
        sta     $2006
        lda     a:$2A
        sta     $2006
        ldx     #$1E
        ldy     #$00
L9176:  lda     ($2C),y
        sta     $2007
        iny
        dex
        bne     L9176
        lda     #$90
        eor     a:$30
        sta     $2000
        rts

        lda     a:$2F
        and     #$07
        bne     L919D
        jsr     LD11D
        lda     a:$2E
        clc
        adc     #$01
        and     #$7F
        sta     a:$2E
L919D:  lda     #$90
        ora     a:$30
        sta     $2000
        lda     #$1E
        sta     $2001
        rts

        clc
        lda     a:$2F
        cmp     #$FD
        bne     L91BC
        lda     a:$30
        eor     #$01
        sta     a:$30
        rts

L91BC:  rts

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

        inc     $15
        rts

        jsr     LD1DA
        jsr     LCEAE
        jsr     LC065
        jsr     LC105
        jsr     LCF7B
        jsr     LD1AB
        jsr     LD0A6
        jsr     LD188
        jsr     LCDF4
        jsr     LC03B
        jsr     LD1CF
        rti

        rti

        sei
        ldx     #$00
        stx     $2000
        stx     $2001
        stx     $4010
        dex
        txs
L920E:  bit     $2002
        bpl     L920E
        jsr     LC001
        jsr     LD046
        jsr     LCFF2
        jsr     LCFFC
        jsr     LD04D
        jsr     LD071
        jsr     LC02B
        jsr     LD1BD
        jsr     LD1C3
        jmp     LD22E

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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
        bpl     L931B
        .byte   $80
        rti

        jsr     L0810
        .byte   $04
        .byte   $02
        ora     (L0000,x)
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
L931B:  rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        brk
        brk
        brk
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

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        brk
        brk
        brk
        rti

        bmi     L9416
        brk
        brk
        bmi     L941A
        brk
        brk
        .byte   $80
        brk
L9416:  brk
        brk
        bmi     L941A
L941A:  brk
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
        bvs     L94BE
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
L94BE:  brk
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
        bmi     L97E2
        bmi     L97E4
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
L97E2:  eor     ($11,x)
L97E4:  rti

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
        ora     ($11),y
        ora     ($11),y
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
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($11),y
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
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        .byte   $11
LA6CE:  ora     ($11),y
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        bpl     LA9CC
        .byte   $0F
LA9B3:  .byte   $32
        rol     $17,x
        .byte   $0F
        .byte   $32
        bmi     LA9DB
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
LA9CC:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        .byte   $11
LA9DB:  ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($11),y
        ora     ($11),y
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
        ora     ($11),y
        ora     ($11),y
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
        bit     $24
        bit     $24
        bit     $24
        bit     $24
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($11),y
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
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($11),y
        ora     ($11),y
        ora     ($11),y
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
        ora     ($11),y
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
LBE7E:  ora     #$0A
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
        bpl     LBEAB
        .byte   $0F
        .byte   $32
        rol     $17,x
        .byte   $0F
        .byte   $32
        bmi     LBEBA
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
LBEAB:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LBEBA:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LBFF8:  .byte   $FF
        .byte   $FF
        cmp     a:$D1,x
        .byte   $D2
        .byte   $FF
        cmp     (L0000),y
LC001:  brk
        ora     ($03,x)
        .byte   $07
        .byte   $07
LC006:  .byte   $03
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
        beq     LC006
        beq     LBFF8
        brk
        cpx     #$B8
        php
        php
        php
        php
        clc
        brk
        brk
        .byte   $03
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $03
        ora     ($01,x)
        .byte   $07
        .byte   $0C
LC02B:  php
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
        bpl     LC0AB
LC03B:  cpy     #$80
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
        .byte   $1E
        .byte   $3C
LC065:  .byte   $3C
        bpl     LC068
LC068:  brk
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
        bpl     LC0B4
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
LC0AB:  clc
        clc
        clc
        .byte   $1C
        brk
        brk
        brk
        brk
        brk
LC0B4:  brk
        brk
        brk
        brk
        brk
        asl     $0E07
        clc
        bvs     LC0EF
        brk
        brk
        brk
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
LC0E0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC0EF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LC104:  .byte   $05
LC105:  ora     ($01,x)
        ora     ($06,x)
        .byte   $04
        .byte   $0C
        php
LC10C:  asl     a
        asl     $0202
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
LC116:  .byte   $80
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
        bpl     LC16A
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
LC150:  cpy     #$C0
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
LC169:  .byte   $02
LC16A:  asl     $0E
        asl     $1F1E,x
        asl     L80C0,x
        .byte   $80
        .byte   $80
        .byte   $80
        beq     LC177
LC177:  cpy     #$20
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
LC187:  ora     ($03,x)
        ror     $7E40,x
LC18C:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
LC191:  .byte   $80
        .byte   $80
        cpy     #$D8
        iny
LC196:  cld
        .byte   $80
        cpx     #$60
        rts

LC19B:  jsr     L3838
        sec
        rts

LC1A0:  brk
        brk
        brk
        brk
        brk
LC1A5:  brk
        brk
        brk
        brk
        brk
        brk
LC1AB:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC1BC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC1CA:  brk
LC1CB:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC1ED:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LC250:  cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        cpy     #$00
        jsr     L2020
        jsr     L2020
        bmi     LC250
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
        bmi     LC2C5
        bmi     LC2A7
        brk
LC298:  rts

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
LC2A7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC2C5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC343:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC3EF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC49A:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC4F1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC5F2:  brk
        brk
        brk
        brk
LC5F6:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC618:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC6C1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC76A:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC814:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC81E:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC83E:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC8E9:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC9A4:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LC9C6:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCA71:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCB1C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCBCC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCBEE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCC97:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCCCC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCD40:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCDE9:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCDF4:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCEAE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCF09:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCF70:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCF7B:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCF8A:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCFE3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCFF1:  brk
LCFF2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCFFC:  brk
        brk
        brk
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
        .byte   $70
LD046:  brk
        brk
        brk
        brk
        brk
        .byte   $FE
        .byte   $FF
LD04D:  .byte   $FF
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
LD071:  .byte   $03
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
        bmi     LD09D
        .byte   $0C
        .byte   $06
LD087:  .byte   $03
        brk
        brk
        .byte   $80
        cpy     #$E0
        beq     LD087
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
LD09D:  .byte   $1F
        .byte   $3F
        .byte   $7F
        brk
        brk
        brk
        brk
        brk
        brk
LD0A6:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD0B0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD0E8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD0F9:  brk
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
        beq     LD0E8
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD11D:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     LD142
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
LD142:  brk
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
LD16F:  brk
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
        .byte   $70
LD188:  inc     LFEFE,x
        .byte   $FC
        sed
        beq     LD16F
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
LD1AB:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD1BD:  brk
        brk
        brk
        brk
        brk
        brk
LD1C3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD1CF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD1DA:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LD22E:  brk
        brk
        ora     ($03,x)
        asl     $0C
        clc
        bmi     LD297
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
LD297:  .byte   $80
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
        inc     L80FE,x
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
LD300:  .byte   $80
        tax
        .byte   $80
        .byte   $A5
LD304:  .byte   $80
        .byte   $80
        lda     #$80
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
LD30C:  .byte   $7F
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
LD347:  brk
        .byte   $E3
        .byte   $FB
        sbc     LFEFC,x
        inc     LFFFE,x
        sbc     LCFE3,y
        .byte   $9C
        sed
        beq     LD347
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
        rol     L8778,x
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
LD40C:  .byte   $7F
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
        .byte   $FE
LD420:  brk
        brk
        brk
LD423:  brk
        brk
        brk
        brk
        brk
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
LD44E:  brk
        brk
        cpx     #$E1
        sbc     ($F1,x)
        beq     LD44E
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
        beq     LD423
        .byte   $8F
        .byte   $9F
        .byte   $3F
        .byte   $7C
        bvs     LD4C8
        .byte   $FF
        inc     LE0F0,x
        cpy     #$80
        .byte   $80
        .byte   $80
LD470:  .byte   $FF
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
LD4C8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDBBB:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
        .byte   $CC
LE020:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
LE0F0:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
LE1EF:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
LE7F3:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
        .byte   $CC
LE99F:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
LF34D:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
LF660:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
        .byte   $CC
LF87E:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
LF8FC:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
LF9FC:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
        .byte   $CC
LFBFC:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
LFCFE:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
LFDBE:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
LFE7E:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
        .byte   $CC
LFEB3:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
LFEFC:  .byte   $CC
        .byte   $CC
LFEFE:  .byte   $CC
        .byte   $CC
LFF00:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        .byte   $CC
        .byte   $CC
LFF7D:  cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
        cpy     LCCCC
LFFFE:  .byte   $CC
LFFFF:  .byte   $CC
