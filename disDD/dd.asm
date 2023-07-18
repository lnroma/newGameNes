; da65 V2.18 - N/A
; Created:    2023-07-17 10:48:35
; Input file: dd.nes
; Page:       1


        .setcpu "6502"

L0000:  .byte   $4E
L0001:  .byte   $45
L0002:  .byte   $53
L0003:  .byte   $1A
L0004:  php
L0005:  .byte   $10
L0006:  .byte   $10
L0007:  brk
L0008:  brk
L0009:  brk
L000A:  brk
L000B:  brk
L000C:  brk
L000D:  brk
L000E:  brk
L000F:  brk
L0010:  brk
L0011:  .byte   $01
L0012:  .byte   $02
L0013:  .byte   $03
L0014:  .byte   $04
L0015:  .byte   $05
L0016:  .byte   $05
L0017:  .byte   $05
L0018:  .byte   $01
L0019:  .byte   $06
L001A:  .byte   $02
L001B:  .byte   $07
L001C:  php
L001D:  .byte   $09
L001E:  asl     a
L001F:  .byte   $05
L0020:  .byte   $06
L0021:  .byte   $06
L0022:  .byte   $02
L0023:  .byte   $0B
L0024:  .byte   $0B
L0025:  .byte   $03
L0026:  .byte   $09
L0027:  .byte   $0C
L0028:  .byte   $0D
L0029:  .byte   $0D
L002A:  .byte   $0E
L002B:  .byte   $0F
L002C:  .byte   $0F
L002D:  .byte   $0F
L002E:  .byte   $10
L002F:  .byte   $11
L0030:  .byte   $12
L0031:  .byte   $13
L0032:  .byte   $12
L0033:  .byte   $13
L0034:  .byte   $12
L0035:  .byte   $13
L0036:  .byte   $12
L0037:  .byte   $13
L0038:  .byte   $14
L0039:  .byte   $15
L003A:  .byte   $16
L003B:  .byte   $17
L003C:  clc
L003D:  .byte   $19
L003E:  .byte   $1A
L003F:  .byte   $1B
L0040:  .byte   $1C
L0041:  .byte   $1D
L0042:  .byte   $1E
L0043:  .byte   $1F
L0044:  .byte   $20
L0045:  .byte   $21
L0046:  .byte   $1F
L0047:  .byte   $1C
L0048:  .byte   $22
L0049:  .byte   $23
L004A:  .byte   $24
L004B:  .byte   $22
L004C:  .byte   $22
L004D:  .byte   $22
L004E:  .byte   $22
L004F:  .byte   $22
L0050:  .byte   $25
L0051:  .byte   $0C
L0052:  .byte   $26
L0053:  .byte   $27
L0054:  plp
L0055:  .byte   $29
L0056:  .byte   $05
L0057:  .byte   $05
L0058:  .byte   $0C
L0059:  .byte   $26
L005A:  .byte   $0B
L005B:  rol     a
L005C:  .byte   $2B
L005D:  plp
L005E:  .byte   $29
L005F:  .byte   $2C
L0060:  .byte   $26
L0061:  .byte   $0B
L0062:  .byte   $0B
L0063:  .byte   $2D
L0064:  .byte   $25
L0065:  .byte   $05
L0066:  plp
L0067:  .byte   $29
L0068:  .byte   $0F
L0069:  .byte   $2E
L006A:  .byte   $0F
L006B:  .byte   $2F
L006C:  .byte   $05
L006D:  .byte   $05
L006E:  .byte   $05
L006F:  .byte   $30
L0070:  .byte   $12
L0071:  .byte   $31
L0072:  .byte   $32
L0073:  .byte   $33
L0074:  .byte   $05
L0075:  .byte   $34
L0076:  .byte   $35
L0077:  .byte   $31
L0078:  .byte   $15
L0079:  .byte   $36
L007A:  .byte   $37
L007B:  sec
L007C:  .byte   $15
L007D:  .byte   $39
L007E:  .byte   $17
L007F:  .byte   $36
L0080:  .byte   $3A
L0081:  .byte   $36
L0082:  .byte   $3B
L0083:  .byte   $3C
L0084:  .byte   $3D
L0085:  .byte   $3E
L0086:  .byte   $3F
L0087:  rti

L0088:  .byte   $22
L0089:  .byte   $36
L008A:  .byte   $41
L008B:  .byte   $41
L008C:  .byte   $42
L008D:  .byte   $42
L008E:  .byte   $43
L008F:  .byte   $42
L0090:  .byte   $05
L0091:  .byte   $05
L0092:  .byte   $05
L0093:  .byte   $44
L0094:  .byte   $45
L0095:  .byte   $02
L0096:  .byte   $46
L0097:  .byte   $09
L0098:  .byte   $05
L0099:  .byte   $25
L009A:  brk
L009B:  .byte   $47
L009C:  .byte   $05
L009D:  .byte   $02
L009E:  .byte   $25
L009F:  .byte   $46
L00A0:  .byte   $05
L00A1:  brk
L00A2:  .byte   $45
L00A3:  pha
L00A4:  .byte   $05
L00A5:  .byte   $49
L00A6:  lsr     a
L00A7:  lsr     a
L00A8:  .byte   $4B
L00A9:  .byte   $4C
L00AA:  .byte   $4D
L00AB:  .byte   $4E
L00AC:  .byte   $05
L00AD:  .byte   $02
L00AE:  .byte   $05
L00AF:  .byte   $05
L00B0:  .byte   $32
L00B1:  .byte   $05
L00B2:  .byte   $4F
L00B3:  .byte   $50
L00B4:  .byte   $2C
L00B5:  .byte   $02
L00B6:  .byte   $05
L00B7:  .byte   $35
L00B8:  .byte   $3B
L00B9:  .byte   $51
L00BA:  .byte   $52
L00BB:  .byte   $14
L00BC:  .byte   $15
L00BD:  .byte   $16
L00BE:  .byte   $19
L00BF:  .byte   $1A
L00C0:  .byte   $41
L00C1:  .byte   $43
L00C2:  .byte   $53
L00C3:  .byte   $54
L00C4:  .byte   $3C
L00C5:  .byte   $3E
L00C6:  .byte   $54
L00C7:  .byte   $3C
L00C8:  .byte   $41
L00C9:  .byte   $43
L00CA:  .byte   $42
L00CB:  .byte   $42
L00CC:  .byte   $41
L00CD:  .byte   $42
L00CE:  .byte   $42
L00CF:  .byte   $41
L00D0:  .byte   $05
L00D1:  .byte   $05
L00D2:  .byte   $05
L00D3:  .byte   $25
L00D4:  .byte   $55
L00D5:  .byte   $56
L00D6:  .byte   $57
L00D7:  cli
L00D8:  .byte   $09
L00D9:  .byte   $2C
L00DA:  .byte   $05
L00DB:  .byte   $0C
L00DC:  .byte   $59
L00DD:  .byte   $5A
L00DE:  .byte   $57
L00DF:  .byte   $5B
L00E0:  .byte   $5C
L00E1:  .byte   $09
L00E2:  .byte   $0C
L00E3:  .byte   $26
L00E4:  .byte   $5B
L00E5:  .byte   $05
L00E6:  .byte   $57
L00E7:  .byte   $25
L00E8:  .byte   $05
L00E9:  .byte   $5D
L00EA:  .byte   $5E
L00EB:  .byte   $05
L00EC:  .byte   $35
L00ED:  .byte   $5F
L00EE:  .byte   $57
L00EF:  .byte   $05
L00F0:  rts

L00F1:  .byte   $05
L00F2:  .byte   $34
L00F3:  .byte   $05
L00F4:  .byte   $4F
L00F5:  .byte   $61
L00F6:  .byte   $33
L00F7:  .byte   $05
L00F8:  .byte   $1B
L00F9:  .byte   $15
L00FA:  .byte   $39
L00FB:  .byte   $62
L00FC:  .byte   $17
L00FD:  .byte   $63
L00FE:  .byte   $32
L00FF:  .byte   $64
L0100:  .byte   $65
L0101:  .byte   $3F
L0102:  .byte   $3C
        ror     L001F
L0105:  .byte   $36
L0106:  .byte   $3B
        .byte   $3E
        .byte   $42
L0109:  .byte   $43
L010A:  eor     (L0067,x)
        .byte   $22
        .byte   $36
L010E:  .byte   $41
L010F:  .byte   $42
        and     #$68
        ora     L0068
        pha
        and     L0000
        .byte   $45
L0118:  plp
        adc     #$25
        pla
        pha
        brk
        ror     a
        ora     L0005
        .byte   $6B
        and     #$6C
        adc     L6E45
        ora     L0005
        .byte   $05
L012A:  bmi     $0177
        jmp     L6F05

        ora     L0035
        .byte   $5F
        ora     L0070
        .byte   $71
L0135:  ora     L006F
L0137:  ora     L0017
        clc
        ora     L1B1A,y
        ora     L0039,x
        ora     L3C65,y
        ror     L001F
        .byte   $72
        .byte   $3C
        .byte   $3F
        and     L4142,x
        .byte   $67
        .byte   $22
        .byte   $73
        eor     (L0043,x)
        .byte   $42
        .byte   $74
        adc     L0076,x
        .byte   $77
        sei
        adc     L7B7A,y
        .byte   $74
        adc     L0076,x
        .byte   $77
        sei
        adc     L7B7C,y
        .byte   $74
        adc     L0076,x
        adc     L797E,x
        adc     L007B,x
        .byte   $74
        adc     L0076,x
L016B:  ora     L002C
        adc     L7B7F,y
        .byte   $80
        adc     L0076,x
        and     L005F,x
        .byte   $79
L0176:  adc     L007B,x
        sta     (L0075,x)
        ror     L0017,x
        clc
        .byte   $82
        adc     L0083,x
L0180:  ror     L0075
        sty     L0085
        jsr     L7586
        .byte   $87
        .byte   $67
        .byte   $22
        .byte   $73
L018B:  .byte   $67
        .byte   $22
        .byte   $22
        .byte   $22
L018F:  .byte   $22
        .byte   $74
        adc     L0088,x
        .byte   $89
        sei
        .byte   $79
L0196:  adc     L007B,x
L0198:  .byte   $74
L0199:  adc     L0076,x
        .byte   $77
        sei
        adc     L7B75,y
L01A0:  .byte   $74
        .byte   $7F
L01A2:  ror     L0077,x
        sei
        adc     L7B75,y
        .byte   $74
        adc     L0076,x
        .byte   $77
        sei
        adc     L7B75,y
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $79
L01B6:  adc     L007B,x
        txa
        .byte   $7C
        .byte   $8B
        sty     L828D
        adc     L007B,x
        .byte   $74
        adc     L0076,x
        .byte   $77
        sei
        stx     L0075
        .byte   $7B
        .byte   $74
L01C9:  adc     L0076,x
        .byte   $77
        sei
        adc     L7B75,y
        stx     L908F
        sta     (L0092),y
        ora     L008E
        sta     (L0093),y
        .byte   $8F
        sta     (L0005),y
        .byte   $93
        ora     L0091
        .byte   $92
        .byte   $92
        sty     L0095,x
        .byte   $92
        .byte   $93
        sta     (L0005),y
        ora     L0096
        .byte   $97
        tya
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        adc     L0076,x
        sty     L868D
        .byte   $7C
        sta     L9A8A,y
        .byte   $9B
        .byte   $77
        sei
        adc     L7B75,y
L0200:  .byte   $74
L0201:  .byte   $7C
L0202:  .byte   $8B
L0203:  .byte   $77
L0204:  sei
L0205:  adc     L7B75,y
L0208:  .byte   $74
L0209:  adc     L0076,x
        .byte   $77
L020C:  sei
        .byte   $79
L020E:  adc     L007B,x
        stx     L0592
        pla
        pha
L0215:  ora     L0068
        .byte   $9C
        .byte   $93
        ora     L0091
        .byte   $9C
        pha
        .byte   $92
        pla
        pla
        .byte   $95
L0221:  .byte   $92
        stx     L9D68
        stx     L6C9C
        .byte   $12
        .byte   $13
L022A:  .byte   $05
L022B:  jmp     ($0548)

L022E:  jmp     ($9005)

L0231:  stx     L0592
        .byte   $9E
        ora     L008E
        sta     (L0093),y
        .byte   $91
L023A:  .byte   $93
        ora     L0005
        .byte   $05
L023E:  sta     L0092,x
        sta     L0092,x
        stx     L9591
        sta     (L0005),y
        ora     L0005
        ora     L0005
        sta     L0092,x
        stx     L0505
        sta     L6805,x
        pla
        sta     L4848,x
        ora     L0048
        stx     L6868
        pha
        pha
        sta     L5A05,x
        ora     L009C
        pla
        sta     L5A9E,x
        .byte   $05
L0268:  .byte   $93
L0269:  .byte   $92
L026A:  pla
L026B:  .byte   $9C
L026C:  pha
L026D:  .byte   $8E
L026E:  .byte   $93
L026F:  .byte   $05
L0270:  .byte   $95
L0271:  .byte   $93
L0272:  pla
L0273:  .byte   $5B
L0274:  .byte   $5A
L0275:  .byte   $05
L0276:  .byte   $05
L0277:  .byte   $8E
L0278:  .byte   $8E
L0279:  .byte   $05
L027A:  .byte   $6C
L027B:  .byte   $05
L027C:  .byte   $05
L027D:  .byte   $05
L027E:  .byte   $90
L027F:  .byte   $93
L0280:  .byte   $05
L0281:  ora     L0090
        .byte   $91
L0284:  .byte   $92
L0285:  .byte   $05
L0286:  .byte   $8E
L0287:  .byte   $91
L0288:  .byte   $05
L0289:  .byte   $05
L028A:  .byte   $05
L028B:  .byte   $95
L028C:  .byte   $05
L028D:  .byte   $05
L028E:  .byte   $05
L028F:  .byte   $05
L0290:  pla
L0291:  .byte   $05
L0292:  .byte   $8E
L0293:  ora     L0090
        stx     L9105
        pla
        bcc     L022E
        .byte   $92
        stx     L0591
        .byte   $8E
L02A0:  .byte   $5B
        .byte   $93
        ora     L0095
        ora     L0090
        .byte   $8E
        .byte   $91
L02A8:  ora     L009F
        .byte   $3C
        ldy     #$A1
        ldy     #$A2
        .byte   $A1
L02B0:  sta     L00A3,x
        .byte   $A4
L02B3:  lda     L00A6
        ldx     L00A7
        tay
        .byte   $92
        lda     #$A8
        tax
        .byte   $AB
        rol     LAC2E
        ora     L009F
        .byte   $3F
        adc     L003E
        .byte   $3C
        lda     L05AE
L02C9:  rol     L0043,x
        .byte   $42
        .byte   $42
        eor     (L0042,x)
        .byte   $AF
        ora     L00B0
        stx     LB192
        sta     (L0005),y
        bcs     L026B
        .byte   $B0
L02DA:  .byte   $B2
        .byte   $B3
        .byte   $B2
L02DD:  .byte   $B3
L02DE:  .byte   $B2
L02DF:  bcs     L02E6
L02E1:  ora     L0093
        ora     L0005
        .byte   $91
L02E6:  .byte   $05
L02E7:  .byte   $05
L02E8:  .byte   $3E
L02E9:  lda     (L00B4,x)
L02EB:  .byte   $95
L02EC:  .byte   $92
L02ED:  stx     L9105
L02F0:  lda     L00B2,x
L02F2:  .byte   $B3
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $B0
L02F7:  sta     L00B6,x
        .byte   $93
L02FA:  sta     (L0095),y
        sta     (L0005),y
L02FE:  bcs     L02B3
L0300:  .byte   $B7
L0301:  clv
L0302:  .byte   $95
L0303:  sta     (L0005),y
        sta     (L00B0),y
L0307:  .byte   $05
L0308:  lda     L05BA,y
        sta     L0092,x
L030D:  .byte   $8E
L030E:  bcs     $0315
L0310:  bcc     L02A0
        bcs     L0319
        ora     L00B0
        ora     L0005
        .byte   $91
L0319:  ora     L00B0
        sta     L0091,x
        bcs     L02B0
        .byte   $95
L0320:  sta     L0091,x
        bcs     $02B6
        stx     L95B0
        sta     (L0005),y
        sta     L00B0,x
L032B:  stx     LBB05
        .byte   $B2
        .byte   $B3
L0330:  sta     L0092,x
        .byte   $BB
        .byte   $B2
        .byte   $B3
        .byte   $B2
        .byte   $B2
        sta     (L00B2),y
        .byte   $B2
        .byte   $B3
        .byte   $B2
        sta     (L0095),y
        sta     (L0005),y
        sta     (L0095),y
        sta     (L0005),y
        sta     L0092,x
        stx     L95BC
        .byte   $92
        stx     L0505
        ora     L0005
        lda     L8E05,x
        ora     L0092
        ora     L0005
        ora     L0036
        sta     (L0093),y
        ora     L0091
        ora     L0091
        .byte   $8E
L035F:  .byte   $36
L0360:  .byte   $05
L0361:  .byte   $92
L0362:  .byte   $8E
L0363:  .byte   $05
L0364:  .byte   $34
L0365:  .byte   $05
L0366:  .byte   $BC
L0367:  rol     L00B2,x
        .byte   $05
L036A:  ora     L0005
        and     $BE05,y
        .byte   $42
        sta     L0091,x
        .byte   $34
        stx     L8E61
        sta     (L0036),y
        .byte   $92
        .byte   $05
L037A:  .byte   $39
L037B:  .byte   $95
L037C:  .byte   $BF
L037D:  cpy     #$8E
        .byte   $36
L0380:  ldy     $9FBC,x
        .byte   $3C
L0384:  .byte   $C1
L0385:  .byte   $C2
L0386:  .byte   $C3
L0387:  rol     L00C4,x
        cpy     L0042
        eor     (L0042,x)
        .byte   $67
L038E:  .byte   $AB
        .byte   $36
L0390:  .byte   $42
L0391:  cmp     L00C5
        dec     L00C5
        .byte   $C7
        .byte   $AB
        rol     L0067,x
        ldx     L00A6
        .byte   $A7
        tay
L039D:  iny
L039E:  .byte   $AB
        rol     L0067,x
        .byte   $AB
        .byte   $AB
        .byte   $2E
L03A4:  .byte   $AC
L03A5:  .byte   $C9
L03A6:  .byte   $AB
        rol     L0067,x
        .byte   $AB
        dex
        ldx     #$A1
        ldy     #$A1
        .byte   $CB
        .byte   $67
L03B1:  .byte   $AB
        ldx     L00A7
        tay
        iny
        ldx     L00CC
        .byte   $67
        .byte   $AB
        .byte   $AB
        cmp     LC92E
        .byte   $AB
        dec     L5453
        .byte   $3F
        .byte   $3F
L03C4:  adc     L003E
        .byte   $54
        .byte   $3C
        .byte   $42
        .byte   $42
        .byte   $43
        .byte   $43
        .byte   $42
        .byte   $42
        .byte   $42
        eor     (L0037,x)
        .byte   $02
        lsr     L00CF
        ora     L0005
        ora     L0025
        .byte   $37
        .byte   $02
        bit     L09D0
L03DD:  .byte   $25
L03DE:  ora     L000C
        .byte   $3B
        .byte   $3C
        cmp     (L0094),y
        .byte   $03
        ora     #$0C
L03E7:  rol     L00C6
        ldy     L0005
        ora     L000F
        bpl     L0400
        .byte   $0F
        ora     L0002
        and     L005F,x
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        ora     L1716,y
        .byte   $9F
        .byte   $32
        .byte   $D2
        .byte   $19
        .byte   $1A
L0400:  .byte   $3E
L0401:  .byte   $3D
L0402:  .byte   $54
L0403:  rti

L0404:  .byte   $37
L0405:  .byte   $D3
        and     (L001F,x)
L0408:  .byte   $42
        .byte   $42
        .byte   $42
        .byte   $42
        .byte   $37
L040D:  .byte   $22
L040E:  .byte   $22
        .byte   $22
L0410:  .byte   $0C
L0411:  rol     L0027
        .byte   $D4
        and     #$25
        .byte   $8F
L0417:  ora     L0026
        .byte   $0B
        .byte   $27
        asl     L00D4
        .byte   $29
L041E:  .byte   $8F
        .byte   $2C
L0420:  .byte   $0B
        .byte   $0B
L0422:  .byte   $27
L0423:  .byte   $06
L0424:  asl     L00D4
        cmp     L0005,x
L0428:  .byte   $0F
        .byte   $0F
        dec     L000D,x
        .byte   $0D
        .byte   $0D
L042E:  bmi     $047B
L0430:  .byte   $13
L0431:  .byte   $12
        .byte   $13
        .byte   $12
        .byte   $13
        .byte   $12
        bvs     L04A9
        .byte   $1B
        ora     L00D7,x
        .byte   $17
        clc
        .byte   $19
L043E:  .byte   $1A
        .byte   $1B
        .byte   $1C
        .byte   $3A
        cld
        cmp     L2120,y
        .byte   $1F
        .byte   $1C
        .byte   $22
        .byte   $22
        .byte   $DA
        .byte   $DB
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $8F
        ora     L0000
        eor     L00DC
        lsr     L00DD
        .byte   $05
L0458:  .byte   $8F
        brk
        ror     a
        ora     L00DC
        ora     L00DE
        .byte   $04
L0460:  .byte   $DF
        eor     L00E0
        ora     L00DC
        ora     L00E0
        lsr     L00E1
        bit     L056F
L046C:  .byte   $E2
        ora     L006F
L046F:  .byte   $05
L0470:  sty     L0005,x
        .byte   $6F
        bvs     L0458
        ora     L006F
        cpx     L0015
        adc     (L0039),y
        .byte   $1A
        sbc     L0015
        .byte   $39
        .byte   $E6
L0480:  .byte   $3A
        jsr     L66E7
        inx
        .byte   $E7
        adc     L003E
        .byte   $22
        .byte   $22
        sbc     #$67
        bit     L00E9
L048E:  .byte   $42
L048F:  .byte   $42
L0490:  ora     L0025
        ora     L00DD
        rol     L0057
        plp
        rol     L00EA,x
        ora     L000C
        dec     L5705,x
        .byte   $05
L049F:  .byte   $36
L04A0:  cpx     #$0C
        rol     L006F
        and     L0057
        ora     L0036
        .byte   $6F
L04A9:  lsr     LEB05,x
L04AC:  ora     L00EC
L04AE:  .byte   $ED
L04AF:  .byte   $36
L04B0:  .byte   $6F
        and     L005F,x
        .byte   $6F
        ora     L00EE
L04B6:  clc
L04B7:  .byte   $EF
        and     L182E,y
        .byte   $39
L04BC:  .byte   $19
L04BD:  .byte   $2E
L04BE:  .byte   $1B
        .byte   $F0
L04C0:  .byte   $3F
        and     L3E54,x
        .byte   $3F
        .byte   $3C
        and     L43F1,x
        .byte   $42
        .byte   $42
        .byte   $42
L04CC:  .byte   $43
        .byte   $41
L04CE:  .byte   $42
        .byte   $42
L04D0:  .byte   $05
L04D1:  nop
L04D2:  .byte   $05
L04D3:  .byte   $05
L04D4:  nop
L04D5:  ora     L0005
        nop
        .byte   $F2
        .byte   $F3
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F2
        .byte   $F2
        .byte   $F3
L04E0:  and     L006F
        bit     L6F05
        ora     L002C
        .byte   $6F
        .byte   $F4
        sbc     L00F6,x
        .byte   $F4
        sbc     L00F6,x
L04EE:  .byte   $F4
        .byte   $F5
L04F0:  .byte   $05
L04F1:  .byte   $6F
L04F2:  .byte   $05
L04F3:  .byte   $71
L04F4:  .byte   $6F
        bit     L6F05
        .byte   $F7
        sbc     L00F8,x
        sbc     LF8F5,y
        .byte   $FA
L04FF:  .byte   $F5
L0500:  .byte   $FB
L0501:  .byte   $39
L0502:  .byte   $FC
L0503:  .byte   $FD
L0504:  .byte   $39
L0505:  .byte   $1A
        .byte   $1B
        and     L3E3E,y
        rol     L3E3E,x
        .byte   $3E
L050E:  .byte   $3E
L050F:  .byte   $3E
L0510:  .byte   $22
L0511:  .byte   $22
L0512:  .byte   $22
L0513:  .byte   $22
L0514:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L051F:  .byte   $22
L0520:  .byte   $22
L0521:  .byte   $22
L0522:  .byte   $22
L0523:  .byte   $22
L0524:  .byte   $22
L0525:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L052F:  .byte   $22
L0530:  .byte   $22
L0531:  .byte   $22
L0532:  .byte   $22
        .byte   $22
L0534:  .byte   $22
L0535:  .byte   $22
L0536:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0540:  .byte   $22
L0541:  .byte   $22
L0542:  .byte   $22
        .byte   $22
L0544:  .byte   $22
L0545:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0550:  .byte   $22
        .byte   $22
        .byte   $22
L0553:  .byte   $22
        .byte   $22
L0555:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L055E:  .byte   $22
        .byte   $22
L0560:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0565:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L056F:  .byte   $22
L0570:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0580:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L058E:  .byte   $22
L058F:  .byte   $22
L0590:  .byte   $22
L0591:  .byte   $22
L0592:  .byte   $22
L0593:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L05A0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L05AE:  .byte   $22
        .byte   $22
L05B0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L05B7:  .byte   $22
        .byte   $22
        .byte   $22
L05BA:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L05C4:  .byte   $22
        .byte   $22
L05C6:  .byte   $22
        .byte   $22
L05C8:  .byte   $22
        .byte   $22
L05CA:  .byte   $22
        .byte   $22
L05CC:  .byte   $22
        .byte   $22
L05CE:  .byte   $22
        .byte   $22
L05D0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L05E4:  .byte   $22
        .byte   $22
L05E6:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L05F2:  .byte   $22
L05F3:  .byte   $22
L05F4:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L05FF:  .byte   $22
L0600:  .byte   $22
        .byte   $22
L0602:  .byte   $22
        .byte   $22
L0604:  .byte   $22
L0605:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0609:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L060F:  .byte   $22
L0610:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0614:  .byte   $22
        .byte   $22
        .byte   $22
L0617:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L061C:  .byte   $22
        .byte   $22
        .byte   $22
L061F:  .byte   $22
L0620:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L062F:  .byte   $22
L0630:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L063F:  .byte   $22
L0640:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L064D:  .byte   $22
        .byte   $22
L064F:  .byte   $22
L0650:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L065F:  .byte   $22
L0660:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L066F:  .byte   $22
L0670:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L067F:  .byte   $22
L0680:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L068F:  .byte   $22
L0690:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L069F:  .byte   $22
L06A0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06A5:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06AD:  .byte   $22
        .byte   $22
L06AF:  .byte   $22
L06B0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06BF:  .byte   $22
L06C0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06C9:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06CF:  .byte   $22
L06D0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06DF:  .byte   $22
L06E0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06E8:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06EF:  .byte   $22
L06F0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L06FF:  .byte   $22
L0700:  .byte   $22
        .byte   $22
L0702:  .byte   $22
        .byte   $22
L0704:  .byte   $22
        .byte   $22
        .byte   $22
L0707:  .byte   $22
L0708:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L070C:  .byte   $22
        .byte   $22
L070E:  .byte   $22
        .byte   $22
L0710:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0714:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0718:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L071C:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0720:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0724:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0728:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L072C:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0730:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0734:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0738:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L073C:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0740:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0744:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0750:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0754:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L077C:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L07A0:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L07A5:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0802:  .byte   $22
L0803:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L0807:  .byte   $22
L0808:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L080C:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        brk
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        ora     (L0004,x)
        ora     L0006
        ora     (L0002,x)
        .byte   $03
L081C:  ora     (L0001,x)
        ora     (L0007,x)
        brk
        ora     (L0001,x)
        .byte   $02
        php
        .byte   $09
L0826:  asl     a
        .byte   $0B
        brk
        .byte   $0C
        ora     (L0001,x)
        .byte   $0D
        .byte   $0E
L082E:  .byte   $0F
        bpl     L0837
        ora     (L0001),y
        .byte   $12
        .byte   $13
        .byte   $14
        .byte   $15
L0837:  .byte   $07
        asl     L0017,x
        .byte   $17
        clc
        ora     L1B1A,y
        .byte   $1C
        ora     L1D1D,x
        ora     L1D1D,x
        ora     L1E1D,x
        asl     L1E1E,x
        .byte   $1E
L084D:  asl     L1E1E,x
        .byte   $1F
        jsr     $0121
        ora     (L0004,x)
        .byte   $22
        .byte   $23
        jsr     L211F
        .byte   $02
        ora     (L0004,x)
        .byte   $22
L085F:  .byte   $23
        .byte   $24
L0861:  .byte   $1F
        and     (L0001,x)
        php
        asl     a
        and     L0023
        rol     L0027
L086A:  and     (L0001,x)
        plp
        and     #$2A
        .byte   $23
        .byte   $2B
L0871:  .byte   $2B
        and     (L002C,x)
        and     L222E
        .byte   $2F
        bmi     L08AA
        and     (L0017),y
        .byte   $32
L087D:  .byte   $33
        .byte   $34
        and     L001D,x
        ora     L1D1D,x
        ora     L1D36,x
        rol     L001E,x
        .byte   $1E
L088A:  asl     L1E1E,x
        asl     L1E1E,x
        .byte   $37
        ora     (L0038,x)
        jsr     L1F20
        jsr     L3724
        .byte   $01
L089A:  sec
        .byte   $1F
        .byte   $20
        .byte   $26
L089E:  .byte   $27
        jsr     L0137
        sec
        jsr     L2B24
        .byte   $2B
        bit     L0037
        .byte   $2C
L08AA:  sec
        bit     L0020
        jsr     L1F24
        .byte   $2F
        and     L1F3A,y
        .byte   $1F
        jsr     L201F
        and     L0035,x
L08BA:  .byte   $3B
        .byte   $3C
        and     L3D3C,x
        .byte   $3C
L08C0:  rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        asl     L1E1E,x
        asl     L1E1E,x
L08CE:  asl     L201E,x
        .byte   $1F
        bit     L0021
        ora     (L0001,x)
        ora     (L0038,x)
        .byte   $1F
        jsr     L211F
        ora     (L0002,x)
        .byte   $03
        sec
        rol     L2024,x
        and     (L0002,x)
        ora     (L0001,x)
        sec
        .byte   $2B
        jsr     L211F
        ora     (L0012,x)
        .byte   $3B
        sec
        bit     L0024
        jsr     L3921
        .byte   $2F
        .byte   $3F
        .byte   $3A
        .byte   $3C
        and     L3B3C,x
        and     L003F,x
        and     L0040,x
        rol     L0036,x
L0902:  .byte   $36
L0903:  rol     L0036,x
        .byte   $36
L0906:  rol     L001D,x
        .byte   $1E
        .byte   $1E
L090A:  .byte   $1E
L090B:  asl     L1E1E,x
        .byte   $1E
        .byte   $1E
L0910:  .byte   $20
L0911:  .byte   $1F
        jsr     L201F
        eor     (L0042,x)
        .byte   $42
        bit     L0020
        .byte   $1F
        .byte   $43
        jsr     L2B2B
        .byte   $2B
        jsr     L2024
L0923:  .byte   $1F
        .byte   $1F
        .byte   $44
        eor     L001F
        jsr     L1F1F
        jsr     L201F
        bit     L0024
        lsr     L0044
        .byte   $44
        .byte   $44
        .byte   $47
        .byte   $47
        pha
        .byte   $47
        bmi     L096D
        eor     #$4A
        and     L0035,x
        and     L003F,x
        ora     L1D36,x
        ora     L3636,x
        rol     L0036,x
        asl     L1E1E,x
        asl     L1E1E,x
        asl     L4B1E,x
        jmp     L4E4D

        .byte   $4F
        jmp     L504B

        jmp     L5150

        .byte   $52
        .byte   $53
        eor     L504C
        jmp     L5050

        .byte   $54
        eor     L0051,x
        .byte   $4B
        bvc     L09B9
        jmp     L5050

L096C:  .byte   $4C
L096D:  bvc     L09BF
L096F:  .byte   $4B
        lsr     L0056,x
        lsr     L0056,x
        lsr     L0056,x
        lsr     L0056,x
        jmp     L504C

        .byte   $4B
        jmp     L4C50

        .byte   $4B
        .byte   $57
        bvc     L09CE
        cli
        eor     L5057,y
        jmp     L4C4B

        bvc     L09D8
        bvc     L09DA
        bvc     L09E0
        bit     L0020
        .byte   $1F
        jsr     L2420
        .byte   $1F
        jsr     L1F20
L099A:  jsr     L5B5A
        .byte   $5C
        bit     L001F
        eor     L5E5D,x
        .byte   $5F
        rts

L09A5:  adc     (L0062,x)
        .byte   $63
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $20
        .byte   $1F
L09AD:  jsr     L2B2B
        eor     L5D5D,x
        lsr     L241F,x
        jsr     L2B1F
L09B9:  .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     L0020
        .byte   $1F
L09BF:  bit     L005D
        eor     L5E5D,x
        jsr     L1F1F
        .byte   $1F
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $1F
        .byte   $1F
L09CE:  .byte   $1F
        .byte   $24
L09D0:  and     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
L09D8:  and     (L0001,x)
L09DA:  ora     (L0001,x)
        .byte   $02
        .byte   $03
        ora     (L0001,x)
L09E0:  and     (L0001,x)
        .byte   $02
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        ora     (L0021,x)
        ora     (L0001,x)
        ora     (L0064,x)
        .byte   $64
        ora     (L0001,x)
        and     (L0064,x)
        .byte   $64
        ora     (L0065,x)
        ror     L0001
        ora     (L0021,x)
        adc     L0066
        ora     (L0067,x)
        pla
L09FE:  ora     (L0064,x)
        .byte   $21
L0A01:  .byte   $67
        pla
L0A03:  .byte   $2C
L0A04:  adc     #$6A
        .byte   $12
        .byte   $6B
        .byte   $21
L0A09:  adc     #$6A
        .byte   $17
        jmp     (L186D)

        .byte   $6E
L0A10:  ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L006F,x)
        ora     (L0002,x)
        .byte   $03
        .byte   $01
L0A1C:  ora     (L0001,x)
        ora     (L006F,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L006F,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0070,x)
        ora     (L0001,x)
        adc     (L0072),y
        .byte   $73
        .byte   $74
        ora     (L0075,x)
        .byte   $64
        .byte   $64
        ror     L0077,x
        .byte   $77
        sei
        adc     L7B7A,y
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7C
        adc     L7F7E,x
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $80
        sta     (L0082,x)
        .byte   $83
        sty     L0084
        sty     L0084
        sta     L0086
        .byte   $87
        .byte   $80
        dey
        dey
        dey
        dey
        dey
        .byte   $89
        .byte   $82
        sei
        txa
        .byte   $8B
        txa
        txa
        txa
        txa
        .byte   $7A
        sty     L8E8D
        .byte   $8F
        bcc     L09FE
        bcc     L0A01
        .byte   $80
        adc     L9392,x
        .byte   $93
        sty     L0094,x
        .byte   $93
        sei
        sta     L0096,x
        sta     (L0097,x)
        tya
        tya
        sta     (L0099,x)
        .byte   $7B
        .byte   $7B
        .byte   $7B
        txs
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $9B
        ora     (L0002,x)
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $9C
        sta     L0101,x
        ora     (L0002,x)
        .byte   $03
        .byte   $01
L0AA0:  .byte   $9E
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L009F,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L00A0,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L00A1,x)
        ora     (L0001,x)
        ora     (L0065,x)
        ldx     #$A2
        ldx     #$7B
        .byte   $7B
        .byte   $A3
        .byte   $12
        .byte   $67
        ldy     L00A4
        ldy     L007F
        .byte   $7F
        .byte   $9C
        clc
        adc     #$A5
        lda     L00A5
        .byte   $02
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
L0AEE:  ora     (L0001,x)
        ora     (L00A6,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ldx     #$A2
        ror     L0001
        .byte   $A7
        tay
        ora     (L00A7,x)
        ldy     L00A4
        pla
        .byte   $2C
L0B04:  lda     #$AA
        .byte   $0C
        lda     #$A5
L0B09:  lda     L006A
L0B0B:  .byte   $17
        .byte   $AB
        .byte   $AC
L0B0E:  ora     (L00AB),y
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0002,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        lda     L0101
        ldx     L0012
        adc     L00A2
        ldx     #$A2
        ldx     #$A2
        ldx     #$18
        .byte   $67
        ldy     L00A4
        ldy     L00A4
        ldy     L00A4
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $02
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0002,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L00A7,x)
        ora     (L000C,x)
        ora     (L00A8,x)
        ora     (L0066,x)
        bit     LAEA9
        ora     (L00AF),y
        tax
        .byte   $12
        pla
        .byte   $17
        .byte   $AB
        ldy     LAB17
        ldy     L0118
        ora     (L00B0,x)
        .byte   $93
        .byte   $93
        lda     (L0001),y
        ora     (L0001,x)
        ora     (L00B2,x)
        .byte   $B3
        .byte   $B3
        ldy     L0001,x
        .byte   $01
L0BA0:  ora     (L0001,x)
        lda     L0093,x
        .byte   $93
        ldx     L0001,y
        ora     (L0001,x)
        ora     (L00B7,x)
        clv
        clv
        lda     L0101,y
        ora     (L0001,x)
        tsx
        .byte   $BB
        adc     L01A0,x
        .byte   $0C
        .byte   $AF
        .byte   $6B
        .byte   $7C
        tya
        sta     L00A1,x
        .byte   $12
        ora     (L00BC),y
        .byte   $6B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $AB
        ror     L7F7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
        ora     (L0001,x)
        ora     (L0002,x)
        .byte   $03
        ora     (L0001,x)
        ora     (L0002,x)
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0002,x)
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $01
L0BF0:  ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L006B,x)
        .byte   $7B
        .byte   $A3
        ora     (L0001,x)
        .byte   $7B
L0C01:  .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7F
        .byte   $7F
        .byte   $7F
        .byte   $7F
L0C0C:  .byte   $7F
L0C0D:  .byte   $7F
        .byte   $7F
        .byte   $7F
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
L0C1C:  ora     (L0002,x)
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ldx     LAF01
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L00AA,x)
        .byte   $0C
        ldy     LBEBD,x
        .byte   $BF
        .byte   $12
        .byte   $A3
        tax
        ora     (L00A9),y
        cpy     #$C1
        .byte   $C2
        ldx     #$9C
        ldy     LAB17
        jmp     (LC4C3)

        ldy     L0001
        ora     (L00C5,x)
        dec     L00C6
        dec     L00C7
        iny
        ora     (L0001,x)
        cmp     L00C7
        .byte   $C7
        dec     L00C6
        cmp     #$01
        ora     (L00CA,x)
        .byte   $CB
        cpy     LC7CD
        dec     LD0CF
        dex
        .byte   $C7
        dec     L00C7
        dec     L00C7
        cmp     (L00D2),y
        dex
        dec     L00C7
        dec     L00C7
        .byte   $C7
        and     LCA2E
        adc     L00A2
        ror     L00C7
        .byte   $C6
L0C80:  ldx     #$A2
        ldx     #$D3
        ldy     L0068
        dec     L00C7
        ldy     L00A4
        ldy     L00D4
        lda     L006A
        .byte   $C7
L0C8F:  .byte   $C7
        cmp     L0001,x
        .byte   $02
        .byte   $03
        ora     (L0001,x)
        dec     L00D7,x
        cmp     L0002,x
        ora     (L0001,x)
L0C9C:  ora     (L0001,x)
        cld
        .byte   $7F
        cmp     L0001,x
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        cmp     LADDA,y
        ora     (L0001,x)
        lda     L0101
        ora     (L00D6,x)
        adc     L00A2
        ldx     #$DB
        ora     (L0001,x)
        ora     (L00D8,x)
        .byte   $67
        ldy     L00A4
        pla
        ora     (L000C,x)
        ora     (L00DC,x)
        adc     #$A5
        lda     L006A
        .byte   $12
        ora     (L006B),y
        .byte   $7B
        jmp     (LC3C3)

        adc     L1718
        cld
        .byte   $7F
        cmp     LDDDD,x
        cmp     LDDDE,x
        cmp     LDDDD,x
        .byte   $DF
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LE0DD,x
        sbc     (L00DD,x)
        cmp     LDDDD,x
        dec     LE2E0,x
        cmp     LE0E0,x
        cmp     LE2DD,x
        cmp     LDDDD,x
        sbc     (L00DD,x)
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0D00:  .byte   $7B
        .byte   $7B
        .byte   $E3
        cmp     LE4DD,x
        .byte   $7B
        .byte   $7B
L0D08:  .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
L0D0C:  .byte   $7B
L0D0D:  .byte   $7B
L0D0E:  .byte   $7B
        .byte   $7B
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        sbc     L00DD
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0D24:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LE7E6,x
        cmp     LDDDD,x
        inx
        sbc     #$EA
        .byte   $EB
        cpx     LEDEA
        inc     LDDEF
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0D44:  .byte   $DD
        .byte   $DD
L0D46:  .byte   $DD
        .byte   $DD
L0D48:  .byte   $DD
        .byte   $DD
L0D4A:  .byte   $DD
        .byte   $DD
L0D4C:  .byte   $DD
        .byte   $DD
L0D4E:  .byte   $DD
        .byte   $DD
L0D50:  beq     $0D42
L0D52:  beq     L0D44
L0D54:  beq     L0D46
L0D56:  beq     L0D48
L0D58:  beq     L0D4A
L0D5A:  beq     L0D4C
L0D5C:  beq     L0D4E
L0D5E:  beq     L0D50
L0D60:  beq     L0D52
L0D62:  beq     L0D54
L0D64:  beq     L0D56
L0D66:  beq     L0D58
L0D68:  beq     L0D5A
L0D6A:  beq     L0D5C
L0D6C:  beq     L0D5E
L0D6E:  beq     L0D60
L0D70:  beq     L0D62
L0D72:  beq     L0D64
L0D74:  beq     L0D66
L0D76:  beq     L0D68
L0D78:  beq     L0D6A
L0D7A:  beq     L0D6C
L0D7C:  beq     L0D6E
L0D7E:  beq     L0D70
L0D80:  beq     L0D72
L0D82:  beq     L0D74
        .byte   $F0
L0D85:  beq     $0D77
L0D87:  beq     $0D79
L0D89:  beq     $0D7B
L0D8B:  beq     $0D7D
L0D8D:  beq     $0D7F
L0D8F:  beq     $0D81
L0D91:  beq     $0D83
L0D93:  sbc     (L00F2),y
L0D95:  beq     L0D87
L0D97:  beq     L0D89
L0D99:  beq     L0D8B
L0D9B:  beq     L0D8D
L0D9D:  beq     L0D8F
L0D9F:  beq     L0D91
L0DA1:  beq     L0D93
L0DA3:  beq     L0D95
L0DA5:  beq     L0D97
L0DA7:  beq     L0D99
L0DA9:  beq     L0D9B
L0DAB:  beq     L0D9D
L0DAD:  .byte   $F0
L0DAE:  .byte   $F0
L0DAF:  beq     L0DA1
L0DB1:  beq     L0DA3
L0DB3:  beq     L0DA5
L0DB5:  beq     L0DA7
L0DB7:  beq     L0DA9
L0DB9:  beq     L0DAB
L0DBB:  beq     L0DAD
L0DBD:  beq     L0DAF
L0DBF:  beq     L0DB1
        beq     L0DB3
        beq     L0DB5
        beq     L0DB7
        beq     L0DB9
        beq     L0DBB
        beq     L0DBD
        beq     L0DBF
        .byte   $F0
L0DD0:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0E04:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0E0D:  .byte   $DD
L0E0E:  .byte   $DD
L0E0F:  .byte   $DD
L0E10:  cmp     LDDDD,x
        .byte   $DD
L0E14:  cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0E1B:  .byte   $DD
L0E1C:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0E28:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0E40:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0E50:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
L0E6A:  .byte   $DD
        .byte   $DD
L0E6C:  cmp     LDDDD,x
L0E6F:  cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0E76:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
L0E96:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0F00:  .byte   $DD
        .byte   $DD
L0F02:  cmp     LDDDD,x
        cmp     LDDDD,x
L0F08:  cmp     LDDDD,x
        cmp     LDDDD,x
L0F0E:  .byte   $DD
L0F0F:  .byte   $DD
        .byte   $DD
L0F11:  cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
L0F16:  cmp     LDDDD,x
        .byte   $DD
L0F1A:  cmp     LDDDD,x
L0F1D:  .byte   $DD
L0F1E:  cmp     LDDDD,x
        cmp     LDDDD,x
L0F24:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0F40:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0F5F:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0F6B:  .byte   $DD
L0F6C:  .byte   $DD
        .byte   $DD
L0F6E:  .byte   $DD
L0F6F:  cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L0F76:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0F7F:  .byte   $DD
L0F80:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0F8C:  .byte   $DD
        .byte   $DD
L0F8E:  .byte   $DD
L0F8F:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0FAD:  .byte   $DD
        .byte   $DD
L0FAF:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
L0FBD:  .byte   $DD
        .byte   $DD
L0FBF:  .byte   $DD
L0FC0:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
L0FCF:  cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L1000:  .byte   $DD
L1001:  cmp     LDDDD,x
        cmp     LDDDD,x
        .byte   $DD
L1008:  cmp     LDDDD,x
        .byte   $DD
        .byte   $DD
L100D:  .byte   $DD
L100E:  .byte   $DD
L100F:  .byte   $DD
        brk
L1011:  ora     (L0002,x)
        brk
        ora     (L0000,x)
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        ora     L0006
        .byte   $07
        asl     L0006
        .byte   $07
        .byte   $04
        .byte   $04
        php
        .byte   $03
        ora     #$0A
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $0B
        .byte   $04
        .byte   $0C
        ora     L0B04
        asl     L0F0E
        asl     L100E
        .byte   $0E
        .byte   $0F
L1040:  brk
        brk
        ora     (L0000),y
        brk
        brk
        brk
        .byte   $12
L1048:  .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $14
        ora     L0013,x
        asl     L0000,x
        brk
        brk
        .byte   $17
        ora     (L0000,x)
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        asl     L0018
        .byte   $04
        .byte   $04
L1064:  .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     L0504,y
        clc
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $1A
        .byte   $1B
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L0E1C
        ora     L0E0F,x
        .byte   $1C
        asl     L1F1E
        jsr     L0000
        and     (L001F,x)
        jsr     L2200
        brk
        brk
        brk
        .byte   $23
        .byte   $22
        brk
        brk
        brk
        brk
        brk
        .byte   $12
        bit     L0025
        brk
        .byte   $03
        rol     L0003
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $27
L10A0:  .byte   $04
        plp
        asl     L2904
        .byte   $04
        asl     L0400
        bpl     L10CB
        asl     L0404
        rol     a
        brk
        asl     a:L002A
        brk
        asl     L2704
        brk
        .byte   $2B
        brk
        ora     (L0000,x)
        brk
        .byte   $04
        .byte   $27
        brk
        bit     a:L0000
        brk
        rol     a
        .byte   $04
        .byte   $27
        brk
L10C8:  brk
        brk
        brk
L10CB:  brk
        .byte   $23
        ora     a:L0027
        brk
        brk
        brk
        brk
        and     L2E28
        brk
        .byte   $2F
        .byte   $03
        bmi     L110C
        bmi     L10EE
        and     (L0000),y
        and     (L000D,x)
        .byte   $32
        and     L0000
        brk
        bit     L0025
L10E8:  .byte   $33
        plp
        .byte   $03
        bmi     L111D
        .byte   $30
L10EE:  bmi     L1120
        and     L0428
        .byte   $34
        and     a:L0000
        brk
        and     L0E28
        bmi     L1124
        brk
        brk
        brk
        and     (L0028,x)
        and     L0000,x
L1104:  and     L1315
        .byte   $13
L1108:  and     (L0028,x)
        rol     L0000,x
L110C:  brk
        brk
        ora     L0013,x
L1110:  brk
L1111:  brk
        brk
L1113:  and     (L0037,x)
        sec
        and     L0004,y
        brk
        brk
        and     (L000D,x)
L111D:  .byte   $3A
        .byte   $3B
        .byte   $0E
L1120:  .byte   $27
        brk
        brk
        .byte   $21
L1124:  plp
        .byte   $3C
        brk
        and     L3030,x
        .byte   $03
        ora     (L0028,x)
        rol     a:L003F,x
        and     L0E40
        .byte   $30
L1134:  plp
        .byte   $27
        eor     (L0003,x)
        brk
L1139:  brk
        brk
        asl     L3010,x
        bmi     L114E
        .byte   $14
        .byte   $42
        asl     L002D,x
        .byte   $43
        brk
        .byte   $12
        and     L1313,x
        .byte   $44
        .byte   $13
        .byte   $14
        .byte   $42
L114E:  asl     L0000,x
        .byte   $04
        .byte   $04
        brk
        bit     L0045
        lsr     L0004
L1157:  .byte   $27
        .byte   $04
        .byte   $04
        .byte   $47
        .byte   $03
        .byte   $30
L115D:  .byte   $30
L115E:  .byte   $04
        .byte   $27
        .byte   $04
        .byte   $04
        pha
L1163:  .byte   $04
        .byte   $27
        eor     #$4A
        .byte   $4B
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
L116C:  .byte   $27
        .byte   $21
L116E:  .byte   $04
        .byte   $27
        .byte   $04
L1171:  .byte   $04
        .byte   $04
        .byte   $04
        jmp     L4A4D

        lsr     L0404
        .byte   $04
        .byte   $04
        .byte   $47
        .byte   $03
        .byte   $04
        .byte   $4F
L1180:  asl     L0E0E
        asl     L0E50
        asl     L2227
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $27
        and     (L0028,x)
        .byte   $27
        brk
        brk
        brk
        ora     (L0000,x)
        and     (L0028,x)
        .byte   $27
        brk
        .byte   $12
        and     (L0009,x)
        .byte   $03
L11A0:  and     (L0028,x)
        .byte   $27
        and     (L0003,x)
        .byte   $03
        eor     (L000B),y
        and     (L0028,x)
        .byte   $03
        .byte   $03
        .byte   $04
        asl     L0F1D
        rol     L0E10,x
        asl     L2B0E
        .byte   $3F
        brk
        brk
        brk
        .byte   $3F
        brk
        .byte   $52
        .byte   $53
        brk
        brk
        brk
        rol     a:L0000,x
        .byte   $54
        brk
        brk
        eor     L0000,x
        brk
        lsr     L0057,x
        cli
        brk
        eor     L0058,y
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        .byte   $03
        .byte   $5A
        .byte   $03
        .byte   $03
        ora     #$0A
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $0C
        ora     L0404
        asl     L040E
        .byte   $04
        .byte   $04
        plp
        .byte   $04
        .byte   $04
        .byte   $3F
        and     L0404,x
        .byte   $0B
        plp
        .byte   $04
        .byte   $5B
        .byte   $5C
        eor     L0004,x
        asl     L100F
        asl     L5E5D
        .byte   $57
        .byte   $1F
        .byte   $5F
        brk
        .byte   $3F
        brk
        .byte   $53
        cli
        cli
        .byte   $22
        rts

        brk
        brk
        brk
        brk
        brk
L1211:  brk
        .byte   $61
L1213:  brk
        brk
        brk
        brk
        brk
        .byte   $5A
        ora     #$0A
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $62
        .byte   $04
L1221:  .byte   $0C
        ora     L0605
        clc
        .byte   $04
        .byte   $03
        asl     L2804
        php
        .byte   $03
        ora     L0404,y
        and     L2804,x
        .byte   $0B
        .byte   $04
        .byte   $04
        asl     L2D0E
        .byte   $04
        bpl     L124B
        asl     L3C0E
        brk
        .byte   $63
        .byte   $1F
        .byte   $64
        brk
        brk
        brk
        brk
        brk
        adc     L0022
        .byte   $66
L124B:  brk
        brk
        brk
        brk
        eor     L6700,y
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        ora     (L0026,x)
        .byte   $5A
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $5A
        .byte   $03
        pla
        adc     #$69
        adc     #$6A
        ror     a
        .byte   $04
        .byte   $04
        asl     L0404
        asl     L0135
        asl     L3D04
        asl     L2B04
        brk
        brk
        brk
        .byte   $6B
        jmp     (L1F3D)

        .byte   $53
        brk
        brk
L1280:  eor     L006D,x
        ror     L226F
        brk
        brk
L1287:  bvs     L12E1
        cli
        cli
        cli
        .byte   $22
        brk
        brk
L128F:  adc     (L0012),y
        brk
        brk
        brk
        brk
        brk
        ora     (L0000,x)
        .byte   $03
        .byte   $03
        .byte   $03
        rol     L0303
        bmi     L12C7
        ror     a
        adc     #$0D
        .byte   $5A
        .byte   $04
        .byte   $04
        .byte   $72
        brk
        and     L280E,x
        .byte   $04
        asl     L030E
        .byte   $73
        .byte   $74
        .byte   $27
        adc     L000E,x
        brk
        bvs     L12BB
        ror     L0077,x
        brk
        .byte   $01
L12BB:  brk
        brk
        sei
        .byte   $04
        adc     L7A78,y
        brk
        brk
        .byte   $7B
        .byte   $7C
        .byte   $04
L12C7:  adc     L667E,x
        brk
        brk
        .byte   $7F
L12CD:  .byte   $80
        .byte   $04
        brk
        brk
        brk
        ora     (L0081,x)
        .byte   $82
        .byte   $83
        .byte   $04
        sty     L0000
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        sta     L0004
        .byte   $01
L12E0:  brk
L12E1:  ror     a
        ora     L0E0E
        bmi     L12F5
        brk
        brk
        stx     L0028
        and     L0001,x
        brk
        brk
        brk
        brk
        and     L8728
        .byte   $21
L12F5:  .byte   $03
        .byte   $03
        .byte   $03
        dey
        bmi     L130B
        bmi     L132D
        .byte   $0E
L12FE:  asl     a:L000E
        .byte   $87
        brk
        brk
        brk
        and     L0000,x
        .byte   $89
        brk
        brk
        brk
L130B:  brk
        brk
        brk
        brk
        brk
        .byte   $42
        .byte   $13
        .byte   $16
L1313:  sty     L0088
L1315:  brk
L1316:  .byte   $12
        ora     (L0000,x)
        brk
        txa
        .byte   $8B
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        ora     (L0082,x)
        sty     L040D
        ora     L0006
        dey
        sta     L8E8D
        plp
L132D:  .byte   $04
        php
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        plp
        plp
        asl     L0B04
        asl     L040E
        bpl     L134D
        .byte   $2B
        asl     a:L000F
        .byte   $8F
        bcc     L12CD
        ora     (L002C),y
        brk
        brk
        brk
        and     (L0091,x)
        dey
        brk
L134D:  bit     a:L0000
        brk
        brk
        brk
        ora     (L0000,x)
        brk
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        asl     L0006
        clc
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L030E
        .byte   $03
        ora     L0E04,y
        .byte   $04
        .byte   $3C
        brk
        .byte   $04
        .byte   $04
        asl     L2B04
        asl     L3030
        asl     L9204
        asl     L882C
        ora     (L0081),y
        .byte   $89
        bcc     L1316
        sty     L0053,x
        brk
        brk
        brk
        and     (L0091,x)
        sta     L0000,x
        brk
        .byte   $42
        .byte   $13
        .byte   $42
        brk
        and     L9796
        tya
        .byte   $97
        tya
        .byte   $97
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L040E
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L1104
        sta     L9B9A,y
        .byte   $9C
        .byte   $9B
        sta     L8896,x
        asl     L0428
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $04
        brk
        and     (L0028,x)
        and     #$29
        .byte   $04
        asl     a:L0004
        and     (L009E,x)
        .byte   $9F
        .byte   $9F
        .byte   $9F
        ldy     #$9F
        asl     L0021,x
        sta     (L0091),y
        sta     (L0091),y
        lda     (L0091,x)
        tya
L13D1:  .byte   $97
        tya
        .byte   $97
        tya
        .byte   $97
        tya
        tya
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ldx     #$04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
L13E4:  .byte   $04
        .byte   $A3
        .byte   $04
L13E7:  .byte   $04
        tya
        stx     L0098,y
        stx     L0098,y
        ldy     L0098
        .byte   $97
        .byte   $04
        .byte   $04
        lda     L0004
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ldx     L00A6
        .byte   $04
        asl     L9F90
        .byte   $9F
        .byte   $A7
        tay
        tay
        .byte   $9F
        lda     #$91
        sta     (L0091),y
        sta     (L0091),y
        sta     (L0091),y
        lda     (L00AA,x)
        .byte   $04
        .byte   $04
        .byte   $04
L1414:  .byte   $AB
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9B
        ldy     L9896
        ldy     L000E
        .byte   $04
        .byte   $04
L1423:  .byte   $04
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        .byte   $04
        .byte   $04
        ldx     #$04
        .byte   $04
        lda     LABAE
        .byte   $AF
        .byte   $9C
        bcs     L13D1
        .byte   $9C
        lda     (L00AB),y
        .byte   $30
L1439:  asl     L0404
        .byte   $04
        .byte   $04
        pha
        .byte   $03
        .byte   $B2
        .byte   $B3
        .byte   $9F
        bcc     L13E4
        .byte   $9F
        bcc     L13E7
L1448:  lda     (L00A1,x)
        sta     (L0091),y
        sta     (L0091),y
        sta     (L0091),y
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        tya
        tya
        tya
        tya
        ldy     L00B5,x
        ldx     L00B7,y
        .byte   $04
        clv
        lda     L0404,y
        .byte   $04
        lda     L0003
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        ldx     #$04
        .byte   $04
        .byte   $04
        .byte   $AF
        .byte   $9C
        .byte   $9C
        .byte   $9B
        .byte   $B7
        .byte   $AF
        .byte   $9C
        .byte   $9C
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        stx     L0098,y
L147F:  tya
        .byte   $9F
        .byte   $9F
        bcc     L1423
L1484:  tsx
        .byte   $9F
        .byte   $A7
        .byte   $9F
        sta     (L0091),y
        sta     (L0091),y
        lda     (L0091,x)
        sta     (L0091),y
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $AB
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        stx     L0098,y
        .byte   $97
        sta     L00A4
        tya
        tya
        tya
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        lda     L04AE
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $BB
        ldy     L9DBD,x
        .byte   $AF
        tya
        tya
        tya
        ldx     L48BF,y
        .byte   $AB
        .byte   $04
        .byte   $9F
        .byte   $9F
        bcc     L1484
        tsx
        .byte   $9F
        tsx
        .byte   $A7
        sta     (L0091),y
        sta     (L0091),y
        lda     (L0091,x)
        lda     (L0091,x)
        .byte   $04
        .byte   $04
        .byte   $AB
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        tya
        ldy     L00C1
        .byte   $C2
        .byte   $C3
        stx     L00C4,y
        tya
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        cmp     L0004
        .byte   $04
        asl     L0E0E
        .byte   $04
        asl     LC604
        .byte   $9B
        .byte   $C7
        and     L001E
        .byte   $04
        and     L0004,x
        iny
        .byte   $04
        .byte   $27
        brk
        .byte   $AB
        .byte   $04
        .byte   $AB
        .byte   $04
        iny
        .byte   $9F
        cmp     #$C9
        cmp     #$9F
L1505:  tsx
        .byte   $9F
        dex
        sta     (L00A1),y
        .byte   $A1
L150B:  .byte   $A1
L150C:  sta     (L00A1),y
        sta     (L00CB),y
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
L1515:  .byte   $04
        .byte   $04
        .byte   $27
        tya
        tya
        tya
        tya
        tya
        tya
        .byte   $97
        .byte   $27
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        asl     L04CC
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $35
L152F:  brk
        .byte   $04
        cmp     L04CE
        dec     LCF04
        brk
        .byte   $04
        bne     L150C
        .byte   $04
        cmp     (L0004),y
        .byte   $27
        brk
        .byte   $9F
        dex
        .byte   $D2
        .byte   $9F
        .byte   $D2
        .byte   $9F
        .byte   $C9
L1547:  cmp     #$91
        .byte   $CB
        .byte   $D3
        sta     (L00D3),y
L154D:  sta     (L00A1),y
        lda     (L0028,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $D4
        .byte   $39
L1558:  .byte   $D4
        and     L0404,y
        .byte   $04
        .byte   $04
        .byte   $0C
        adc     #$51
        cmp     L0004,x
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        eor     (L00D5),y
        ora     L0006
        .byte   $07
        clc
        .byte   $04
        .byte   $04
        dec     L00D7,x
        cld
        cld
        cld
        cld
        cmp     LDA1F,y
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
        .byte   $DA
L1580:  .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DC
        cmp     LDDDD,x
        cmp     LDDDD,x
        cmp     LDEDE,x
L1592:  dec     LDEDE,x
        dec     LDEDE,x
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $DF
        cpx     #$E1
        .byte   $E2
        .byte   $E3
        .byte   $22
        .byte   $22
        cpx     L00E5
        inc     L00E7
        inx
        sbc     #$EA
L15A9:  .byte   $EB
        cpx     LEEED
        .byte   $EF
        beq     L15D2
        .byte   $22
        sbc     (L00F2),y
        .byte   $F3
        .byte   $F4
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        sbc     L00F6,x
        .byte   $F7
        sed
        sbc     LFBFA,y
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
L15D2:  dec     LDEDE,x
        dec     LDEDE,x
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        dec     LDEDE,x
        .byte   $DE
L160D:  dec     LDEDE,x
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L1626:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L1649:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L166C:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L16AE:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L1708:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L1716:  .byte   $22
        .byte   $22
L1718:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L173E:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L177C:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L1791:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L17E5:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L17F6:  .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
        .byte   $22
L180F:  .byte   $22
        brk
        brk
L1812:  ora     (L0002,x)
L1814:  .byte   $03
        .byte   $04
        ora     L0006
        brk
        .byte   $07
        ora     (L0008,x)
        ora     #$0A
        ora     L000B
        brk
        brk
        .byte   $01
L1823:  .byte   $02
        .byte   $03
        .byte   $04
        ora     L0007
        .byte   $0C
        brk
        ora     L0F0E
        .byte   $10
L182E:  ora     (L0000),y
        brk
        brk
        .byte   $12
        .byte   $13
        .byte   $03
        .byte   $14
        ora     L0000,x
        asl     L0016,x
        .byte   $17
        clc
        ora     L1B1A,y
        asl     L001C,x
        .byte   $1C
        ora     L1E1E,x
        asl     L1C1F,x
        jsr     L2020
        and     (L0021,x)
        and     (L0020,x)
        jsr     L000B
        .byte   $22
        .byte   $23
        bit     L0025
        brk
        rol     L000C
        brk
        .byte   $22
        .byte   $27
        plp
        and     L0000
        .byte   $29
L1860:  brk
        brk
        rol     a
        .byte   $2B
        bit     a:L002D
        rol     a:L0000
        .byte   $22
        .byte   $2F
        .byte   $30
L186D:  and     (L0032),y
        .byte   $33
        .byte   $07
        brk
        .byte   $22
        .byte   $34
        bmi     L18A7
        and     L0036,x
        asl     L0016,x
        .byte   $37
        sec
        bmi     L18B7
        and     L0036,x
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        jsr     L2020
        jsr     L2020
        jsr     L3A20
        .byte   $3A
        .byte   $3A
        .byte   $3A
        .byte   $3A
        .byte   $3B
        .byte   $3C
        and     L003C,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3B
        and     L3E35,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3B
        .byte   $3C
L18A7:  and     L003F,x
        brk
        brk
        brk
        brk
        rti

        eor     (L0042,x)
        .byte   $43
        rol     L0700,x
        asl     L0000
        brk
L18B7:  and     L0036,x
        .byte   $44
        asl     L0016,x
        asl     L0016,x
        asl     L0035,x
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        .byte   $1C
        jsr     L2020
        jsr     L2020
        jsr     L4520
        lsr     L0047
        pha
        .byte   $47
        pha
        eor     #$45
        eor     L0045
        eor     L0045
        eor     L0045
        eor     L0045
        eor     L004A
        .byte   $4B
        .byte   $4B
        .byte   $4B
        .byte   $4B
        jmp     L4545

        eor     L4D4D
        eor     L4D4D
        eor     L0045
        eor     L0045
        eor     L0045
        eor     L0045
        eor     L004E
        lsr     L4E4E
        lsr     L454F
        bvc     L1952
        .byte   $52
        eor     (L0051),y
        .byte   $52
        .byte   $53
        .byte   $47
        .byte   $54
        eor     L0055,x
        eor     L0055,x
        .byte   $55
L190D:  .byte   $53
        eor     L0054
        .byte   $3A
        .byte   $3A
        .byte   $3A
        .byte   $3C
        .byte   $3C
        .byte   $3A
        .byte   $3A
L1917:  .byte   $3A
L1918:  .byte   $3C
L1919:  .byte   $3C
        .byte   $3C
        lsr     L0057,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        cli
        eor     L3C3C,y
        .byte   $3C
        .byte   $3C
        .byte   $5A
        cli
        .byte   $3A
        .byte   $3A
        .byte   $3C
        .byte   $5B
        .byte   $5C
        .byte   $3C
        .byte   $3A
        .byte   $3A
        .byte   $3C
        .byte   $3C
        eor     L3A3A,x
        lsr     L3C3C,x
        .byte   $3C
        .byte   $3C
        .byte   $5F
        .byte   $3C
L193C:  .byte   $3C
        rts

        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $4B
        .byte   $4B
L1952:  .byte   $4B
        and     L0044,x
        eor     L0061
        eor     L004D
        eor     L424D
        .byte   $3F
        eor     L004D
        eor     L0045
        eor     L0045
        .byte   $62
        .byte   $63
        eor     L0045
        eor     L0045
        .byte   $64
        eor     L004D
        eor     L6445
        eor     L0065
        ror     L0065
        adc     L0066
        adc     L0065
        adc     L0067
        .byte   $67
        pla
        brk
        .byte   $0C
        .byte   $32
        .byte   $67
        .byte   $67
        eor     (L0051),y
        adc     #$47
        pha
        .byte   $54
        eor     (L0051),y
        eor     L0055,x
        ror     a
        eor     L0045
        .byte   $6B
        eor     L0055,x
        .byte   $44
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        and     L0044,x
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $3C
        and     L003F,x
        brk
        brk
L19A3:  brk
        brk
        brk
        .byte   $0B
        and     L0044,x
        brk
        jmp     (L6D6D)

        ror     L350B
        .byte   $63
        .byte   $6F
        .byte   $62
        eor     (L0051),y
        .byte   $63
        .byte   $6F
        .byte   $62
        brk
        .byte   $07
        brk
        .byte   $54
        adc     #$00
        .byte   $0B
        brk
        and     L3D70,x
        .byte   $54
        adc     #$3D
        bvs     L1A05
        .byte   $3C
        .byte   $3C
        .byte   $3C
        .byte   $54
        adc     #$3C
        .byte   $3C
        .byte   $3C
        adc     #$00
        asl     L0071
        brk
        .byte   $0B
        brk
        brk
        adc     #$00
        .byte   $07
        brk
        .byte   $07
        brk
        .byte   $07
        asl     L0069
        .byte   $07
        brk
        brk
        bvc     L1A35
        .byte   $0C
        brk
        adc     #$00
        brk
        bvc     L1A5F
        .byte   $72
        .byte   $73
        lsr     L4769
        pha
        rti

        eor     L4D4D
        .byte   $54
        adc     #$45
        eor     L004D
        eor     L0045
        eor     L0054
        adc     #$45
        eor     L0045
        .byte   $45
L1A05:  eor     L0045
        .byte   $54
L1A08:  adc     #$45
        eor     L0045
        .byte   $45
L1A0D:  eor     L0045
        .byte   $54
        brk
        .byte   $07
        .byte   $74
        adc     L0076,x
L1A15:  adc     L0077,x
        .byte   $3C
        brk
L1A19:  brk
        sei
        bmi     L1A96
        bmi     L1A96
        .byte   $3C
        .byte   $07
        .byte   $0B
        sei
        .byte   $30
L1A24:  .byte   $7A
        bmi     L1A9E
        .byte   $5A
        .byte   $4F
        brk
        .byte   $7B
        bmi     L1AA9
        bmi     L1AA6
        .byte   $3A
        adc     #$00
        adc     L7C30,x
L1A35:  bmi     L1AAE
        .byte   $3C
        eor     (L004F),y
        adc     L7C30,x
        bmi     L1AB6
        .byte   $3C
        eor     (L0069),y
        ror     L7E7E,x
        ror     L7E7F,x
        eor     (L0069),y
        adc     L7C30,x
        bmi     L1A8A
        .byte   $3C
        .byte   $3B
        .byte   $3C
        .byte   $80
        .byte   $07
        .byte   $22
        sta     (L0025,x)
        ora     (L003B,x)
        .byte   $3C
        .byte   $80
        .byte   $0C
        rol     a
        .byte   $2C
        .byte   $2D
L1A5F:  ora     (L0082,x)
        .byte   $59
L1A62:  .byte   $80
        brk
L1A64:  .byte   $22
        bmi     L1A98
L1A67:  ora     (L003A,x)
        .byte   $3A
        .byte   $80
        .byte   $83
        .byte   $22
        bmi     L1AA0
        sty     L003C
        .byte   $3C
        .byte   $80
        adc     L3022,x
        and     (L0085),y
        .byte   $3C
        .byte   $3C
        .byte   $7F
        adc     L8622,x
        and     (L0087),y
        ror     L442E,x
        ror     L7E7E,x
        ror     L3C88,x
        .byte   $35
L1A8A:  .byte   $44
        adc     L3022,x
        and     (L0087),y
        .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        .byte   $03
        .byte   $04
L1A96:  .byte   $03
        .byte   $89
L1A98:  php
        ora     #$0A
        php
        ora     #$0A
L1A9E:  .byte   $09
L1A9F:  .byte   $87
L1AA0:  .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        .byte   $03
        .byte   $04
L1AA6:  .byte   $03
        .byte   $89
        txa
L1AA9:  ora     #$0A
        php
        ora     #$8B
L1AAE:  ora     #$87
        sty     L0403
        .byte   $02
        .byte   $89
        .byte   $8D
L1AB6:  .byte   $03
        .byte   $89
        stx     L0A09
        .byte   $87
        .byte   $8F
        stx     L8709
        dey
        dey
        dey
        dey
        dey
        sty     L8903
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        stx     L8709
        bcc     L1A62
        bcc     L1A64
        bcc     L1A67
        ora     #$92
        .byte   $93
        sty     L0095,x
        .byte   $93
        sty     L0095,x
        sty     L0096,x
        php
        ora     #$0A
        php
        ora     #$0A
        ora     #$92
        .byte   $97
        sty     L0096,x
        tya
        tya
        tya
        tya
        tya
        php
        ora     #$99
        txs
        ora     #$99
        ora     #$99
        .byte   $97
        sty     L009B,x
        .byte   $97
        sty     L009B,x
        sty     L009B,x
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        sta     L9D9D,x
        sta     L9D9D,x
        .byte   $9D
        .byte   $9D
L1B10:  .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
L1B15:  .byte   $9C
        .byte   $9C
        .byte   $9C
        tya
L1B19:  .byte   $9E
L1B1A:  .byte   $94
L1B1B:  sta     L0094,x
        sta     L0094,x
        stx     L009F,y
        ldy     #$09
L1B23:  lda     (L000F,x)
        ldx     #$09
        .byte   $92
        .byte   $9E
        .byte   $A3
        sty     L0095,x
        sty     L0095,x
        sty     L0096,x
        ora     #$A4
        .byte   $09
L1B33:  asl     a
        ora     #$0A
        ora     #$99
        sty     L009B,x
        lda     L00A3
        sty     L00A5,x
        sty     L009B,x
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
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9F
        ldx     L0008
        ora     #$0A
        .byte   $A7
        tay
        tya
        .byte   $9E
        .byte   $A3
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$9C
        .byte   $9F
        ldx     L0008
        ora     #$AA
        .byte   $AB
        ldy     L9E98
        .byte   $A3
        .byte   $97
        sty     L009B,x
        .byte   $93
        lda     L099A
        ldy     L00AE
        ora     #$AF
        php
        bcs     L1B10
        sty     L009B,x
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$9C
        .byte   $9C
        .byte   $9F
        lda     (L00B2),y
        .byte   $B3
        lda     (L00B1),y
L1B88:  sta     L9D9D,x
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $8F
        .byte   $02
        .byte   $03
        .byte   $B4
L1B93:  lda     L00B6,x
        .byte   $B7
        .byte   $02
        clv
L1B98:  php
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     L1BA3
        .byte   $03
        .byte   $A1
L1BA3:  lda     LA20F,y
        .byte   $02
        clv
        php
        ora     #$99
        txs
        ora     #$99
        php
        bcs     L1BB3
        .byte   $03
        .byte   $04
L1BB3:  .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        clv
        sta     LA68A,x
        tsx
        .byte   $BB
        ldy     LB008,x
        lda     LBE8D,x
        .byte   $13
        .byte   $03
        .byte   $BF
        .byte   $02
L1BC7:  clv
        cpy     #$C1
        ldx     L0008
        ora     #$0A
        php
        bcs     L1B93
        .byte   $C3
        cpy     L00C5
L1BD4:  dec     L00C7
        .byte   $C2
        iny
        txs
        ora     #$99
L1BDB:  txs
        ora     #$99
        txs
        cmp     #$C5
        dex
        .byte   $CB
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$9A
L1BE9:  ora     #$A4
        php
        ora     #$0A
        php
        bcs     L1B88
        sty     L009B,x
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$08
L1BF9:  ora     #$CC
L1BFB:  tay
        cmp     L08CE
        bcs     L1B98
L1C01:  sty     L009B,x
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$08
        ora     #$0A
        php
        .byte   $09
L1C0D:  asl     a
        php
        bcs     L1C19
        ora     #$CF
        php
        .byte   $09
L1C15:  asl     a
        php
        bcs     L1BE9
L1C19:  .byte   $03
        .byte   $D1
L1C1B:  .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
L1C1F:  clv
        .byte   $D2
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     L1BD4
        .byte   $D3
        .byte   $D4
L1C2B:  lda     LD50F,y
        .byte   $AB
        ldy     L099A
        sta     L099A,y
        sta     LC99A,y
        .byte   $02
        .byte   $03
        .byte   $04
        .byte   $02
        .byte   $03
        dec     L0002,x
        clv
        php
        ora     #$0A
        php
        ora     #$0A
        php
        .byte   $D7
        php
        ora     #$0A
        php
        ora     #$0A
L1C4E:  php
L1C4F:  bcs     L1BDB
        cld
        ldy     L09A5,x
        asl     a
        ldx     L91B0
        sty     L00D9,x
        .byte   $93
        sty     L009B,x
        .byte   $DA
        lda     #$8A
        ora     #$0A
        lda     L0009
        asl     a
        .byte   $D2
        .byte   $B0
L1C68:  bcc     $1BFA
        bcc     $1BFD
        sty     L009B,x
        .byte   $97
        .byte   $A9
L1C70:  txs
        ora     #$99
        txs
        ora     #$CC
        tay
        .byte   $DB
        .byte   $97
        sty     L009B,x
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$AB
        .byte   $D3
        .byte   $D4
        lda     LD50F,y
        .byte   $AB
        ldy     L9493
        sta     L0093,x
        sty     L0095,x
        .byte   $93
        lda     L0302
        .byte   $04
        .byte   $DC
        .byte   $03
        .byte   $04
        .byte   $02
        clv
L1C98:  php
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     L1C2B
        .byte   $03
        .byte   $04
        lda     L0003
        .byte   $04
        .byte   $02
        clv
        sty     LDDCD
        dec     LDDCD,x
        .byte   $DB
        tay
        stx     L0403
        .byte   $8B
        .byte   $03
        .byte   $04
        bne     L1C70
        sty     LD50F
        dec     L0A09,x
        .byte   $D2
        bcs     L1C4F
        .byte   $03
L1CC2:  .byte   $14
        .byte   $8B
        .byte   $03
        .byte   $04
        .byte   $DF
        clv
        sty     L0A09
        dec     L0A09,x
        php
        bcs     L1C68
        sty     L009B,x
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$E0
        ora     #$0A
        php
        ora     #$0A
        php
        bcs     L1CC2
        sty     L0096,x
        tya
        tya
        tya
        tya
        tya
        ldx     L9909
        txs
        ora     #$99
        txs
        cmp     #$97
L1CF1:  .byte   $E2
        .byte   $E3
        .byte   $97
        sty     L009B,x
        .byte   $97
L1CF7:  lda     #$08
        ora     #$E4
        php
        sbc     L000A
        php
        bcs     L1C98
        sty     L009B,x
        .byte   $97
        .byte   $94
L1D05:  .byte   $9B
        .byte   $97
        lda     #$08
        ora     #$0A
        ldx     L0A09
        php
        bcs     L1CF7
        .byte   $E7
        brk
        .byte   $0B
        brk
        brk
        ora     (L0084,x)
        inc     L000B
        brk
L1D1B:  brk
        brk
L1D1D:  brk
        ora     (L0092,x)
        tya
        inx
        brk
        stx     L0098,y
        tya
        tya
        tya
        inc     L0000
        .byte   $0B
        brk
        .byte   $0B
        brk
        .byte   $12
        .byte   $92
        inc     L000B
        .byte   $E7
        brk
        brk
        brk
L1D36:  ora     (L0084,x)
        inc     L0000
        sbc     #$06
        brk
        brk
        ora     (L00EA,x)
        inc     L0007
        .byte   $EB
        brk
        cpx     L8400
        sta     a:L00E6,x
        .byte   $EB
        brk
        ora     (L0000,x)
        .byte   $92
L1D4F:  .byte   $9C
        ora     #$0A
        php
        sbc     L0AEE
        php
        .byte   $09
L1D58:  ora     #$EF
        php
        sbc     L0AEE
        .byte   $F0
L1D5F:  ora     #$C6
        sbc     (L00C2),y
        .byte   $F2
        .byte   $F3
        .byte   $C7
        .byte   $F4
        .byte   $C3
        .byte   $09
L1D69:  sta     LF59A,y
        inc     L0099,x
        txs
        ora     #$94
        .byte   $F7
        .byte   $97
        sed
        sbc     LFA9B,y
        sty     L0009,x
        asl     a
        php
        .byte   $FB
        .byte   $FC
        asl     a
        php
        ora     #$9D
        sta     L9D9D,x
        sta     L9D9D,x
        sta     L9C9C,x
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        .byte   $FD
L1DA6:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        .byte   $FD
        .byte   $FD
L1DD8:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
L1DEA:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
L1E02:  sbc     LFDFD,x
        sbc     LFDFD,x
        .byte   $FD
        .byte   $FD
L1E0A:  sbc     LFDFD,x
        sbc     LFDFD,x
        .byte   $97
        .byte   $94
L1E12:  .byte   $9B
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$E0
        ora     #$0A
        php
        .byte   $09
L1E1D:  asl     a
L1E1E:  php
        bcs     L1E02
        sty     L0096,x
        tya
        tya
        tya
L1E26:  tya
        tya
        ldx     L9909
        txs
        ora     #$99
        txs
        cmp     #$97
        .byte   $E2
        .byte   $E3
        .byte   $97
        sty     L009B,x
        .byte   $97
L1E37:  lda     #$08
        ora     #$E4
        php
        sbc     L000A
        php
        bcs     L1DD8
        sty     L009B,x
        .byte   $97
        sty     L009B,x
        .byte   $97
        lda     #$08
        ora     #$0A
        ldx     L0A09
        php
        bcs     L1E37
        .byte   $E7
        brk
        .byte   $0B
        brk
        brk
        ora     (L0084,x)
        inc     L000B
        brk
        brk
        brk
        brk
        ora     (L0092,x)
        tya
        inx
        brk
        stx     L0098,y
        tya
        tya
        tya
        inc     L0000
        .byte   $0B
        brk
        .byte   $0B
        brk
        .byte   $12
        .byte   $92
        inc     L000B
        .byte   $E7
        brk
        brk
        brk
        ora     (L0084,x)
        inc     L0000
        sbc     #$06
        brk
        brk
        ora     (L00EA,x)
        inc     L0007
        .byte   $EB
        brk
        cpx     L8400
        sta     a:L00E6,x
        .byte   $EB
        brk
        ora     (L0000,x)
        .byte   $92
        .byte   $9C
        ora     #$0A
        php
        sbc     L0AEE
        php
        ora     #$09
        .byte   $EF
        php
        sbc     L0AEE
        beq     L1EA9
        dec     L00F1
        .byte   $C2
        .byte   $F2
        .byte   $F3
        .byte   $C7
        .byte   $F4
        .byte   $C3
        .byte   $09
L1EA9:  sta     LF59A,y
        inc     L0099,x
        txs
        ora     #$94
        .byte   $F7
        .byte   $97
        sed
        sbc     LFA9B,y
        sty     L0009,x
        asl     a
        php
        .byte   $FB
        .byte   $FC
        asl     a
        php
        ora     #$9D
        sta     L9D9D,x
        sta     L9D9D,x
        sta     L9C9C,x
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
L1F00:  sbc     LFDFD,x
        sbc     LFDFD,x
L1F06:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
L1F1E:  .byte   $FD
L1F1F:  .byte   $FD
L1F20:  .byte   $FD
L1F21:  sbc     LFDFD,x
L1F24:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        .byte   $FD
L1F3A:  sbc     LFDFD,x
L1F3D:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        .byte   $FD
        .byte   $FD
L2002:  .byte   $FD
        .byte   $FD
L2004:  .byte   $FD
        .byte   $FD
L2006:  sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     LFDFD,x
        sbc     L0100,x
L2012:  brk
        .byte   $02
        brk
        brk
        ora     (L0000,x)
        ora     (L0003,x)
        .byte   $04
        .byte   $02
        .byte   $03
        .byte   $02
L201E:  .byte   $05
L201F:  .byte   $06
L2020:  .byte   $07
        .byte   $07
        php
        .byte   $07
L2024:  .byte   $07
        .byte   $03
        ora     #$07
        asl     a
L2029:  .byte   $0B
        .byte   $0C
        .byte   $0B
        asl     a
        ora     L0B0E
        .byte   $0F
        bpl     L2044
        bpl     L2044
        .byte   $12
        .byte   $13
        bpl     L204D
        ora     L0016,x
        .byte   $15
L203C:  .byte   $17
        clc
        ora     L1A15,y
        .byte   $1A
        .byte   $1A
        .byte   $1A
L2044:  .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1A
L2048:  .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
L204D:  .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $03
        ora     (L0000,x)
        .byte   $04
        brk
        .byte   $03
        asl     L0003
        asl     L0005
        .byte   $03
        php
        asl     L0005
        .byte   $07
        .byte   $02
        .byte   $03
        ora     #$07
        .byte   $0C
        ora     L0A1C
        .byte   $12
        .byte   $1D
L2069:  .byte   $1C
        asl     a
        .byte   $11
L206C:  asl     $0F1F,x
        jsr     L1F21
        .byte   $0F
        asl     L0022,x
        .byte   $23
        .byte   $17
        bit     L0022
        ora     L2418,y
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $02
        brk
        brk
        ora     (L0004,x)
        brk
        ora     #$00
        ora     L0203,x
        ora     L0008
        asl     L0009
        and     L0021
        ora     L0903
        rol     L000D
        .byte   $27
        plp
        .byte   $22
        .byte   $23
        clc
        ora     L1E26,y
        ora     #$29
        .byte   $1A
        .byte   $1A
        rol     a
        .byte   $17
        asl     L0023,x
        ora     L1B23,y
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1A
L20BD:  .byte   $1A
        rol     a
        .byte   $23
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $2B
        bit     L1B1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $2B
        and     L0301
        .byte   $02
        ora     (L002E,x)
        brk
        ora     L0000
        asl     L0002
        .byte   $03
        .byte   $03
        php
        asl     L0009
        asl     L002F
        bmi     L2114
        bmi     L2117
        .byte   $03
        .byte   $1C
        ora     L0D0D
        ora     L0803,x
        clc
        .byte   $1F
        .byte   $12
        asl     L2112,x
        .byte   $14
        asl     L0014,x
        ora     L1814,y
        .byte   $14
        .byte   $17
        .byte   $23
        bit     L001A
        rol     a
        clc
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $34
        and     L001B,x
        .byte   $1B
        .byte   $1A
        rol     L0037,x
        rol     L0038,x
        and     L001B,x
        .byte   $1B
        .byte   $1B
        .byte   $03
        .byte   $06
L2112:  ora     #$00
L2114:  ora     (L0000,x)
        .byte   $01
L2117:  .byte   $03
        .byte   $05
L2119:  .byte   $07
        and     L0006,y
        ora     L0006
L211F:  .byte   $05
L2120:  .byte   $1C
L2121:  asl     a
        .byte   $3A
        .byte   $3B
        .byte   $3B
        .byte   $3C
        .byte   $3B
        .byte   $3C
        .byte   $1F
        .byte   $0F
        .byte   $27
        bmi     L215C
        and     L3D2F,x
        ora     L0923,y
        .byte   $17
        and     (L000E,x)
L2136:  .byte   $14
        asl     L2223
        ora     L1823,y
        ora     L1917,y
        .byte   $1A
        .byte   $1A
        rol     a
        bit     L3E33
        .byte   $33
        .byte   $33
        .byte   $1B
        .byte   $1B
        .byte   $2B
        and     L3F37
        rol     L0037,x
        ora     (L0000,x)
        ora     (L0006,x)
        ora     (L002E,x)
        brk
        .byte   $03
        .byte   $02
        asl     L0006
        brk
L215C:  .byte   $03
        php
        .byte   $02
        rti

        .byte   $3B
        .byte   $3B
        .byte   $3B
        .byte   $3B
        .byte   $3B
        eor     (L0007,x)
        .byte   $03
        bmi     L21AC
        bmi     L219B
        bmi     L21A0
        asl     a
        ora     L0902
        .byte   $43
        .byte   $03
        asl     L0F08,x
        asl     L1918,x
        .byte   $22
        .byte   $14
        .byte   $14
        asl     L0022,x
        .byte   $22
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $34
        bit     L001A
        .byte   $1A
        .byte   $1A
        rol     L0036,x
        .byte   $37
        sec
        and     L001B,x
        .byte   $1B
        .byte   $1B
        .byte   $03
        ora     L0001
        .byte   $44
        brk
        ora     (L002E,x)
        brk
        .byte   $03
        ora     #$06
L219B:  .byte   $02
        ora     (L0003,x)
        php
        .byte   $06
L21A0:  asl     L0039
        .byte   $02
        ora     L0006
        ora     L0008
        eor     L000D
        lsr     L003B
        .byte   $47
L21AC:  .byte   $3B
        .byte   $47
        eor     (L001E,x)
        asl     L1213,x
        .byte   $13
        .byte   $12
        pha
        asl     L0014,x
        .byte   $17
        ora     L1918,y
        .byte   $17
        ora     L1A24,y
        rol     a
        bit     L3E33
        rol     L3534,x
        .byte   $1B
        .byte   $2B
        and     L3F37
        .byte   $3F
        sec
        and     L001B,x
        .byte   $03
        .byte   $04
        brk
        ora     (L0000,x)
        .byte   $03
        brk
        brk
        asl     L0008
        .byte   $02
        .byte   $03
        asl     L0002
        .byte   $03
        .byte   $02
        eor     #$0C
        .byte   $02
        .byte   $07
        asl     L0003
        .byte   $07
        .byte   $03
        lsr     a
        .byte   $4B
        .byte   $4C
L21EB:  eor     $4C4E
        bit     L001A
        clc
        .byte   $16
L21F2:  jmp     $4F22

        .byte   $23
        and     L001B,x
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1A
        .byte   $1B
        .byte   $1B
L2200:  .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        ora     (L0000,x)
        .byte   $03
        .byte   $02
        ora     #$06
        ora     #$07
        ora     L0006
        .byte   $02
        ora     L070E,x
        .byte   $0E
        .byte   $0B
L2220:  .byte   $09
L2221:  .byte   $07
L2222:  .byte   $12
L2223:  and     (L0013,x)
        .byte   $0B
        .byte   $13
L2227:  bvc     L2243
        rol     a
        clc
        .byte   $23
        .byte   $19
        .byte   $24
L222E:  rol     a
        clc
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
L2243:  .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        eor     (L0009),y
        .byte   $04
        php
        ora     (L0000,x)
        .byte   $52
        .byte   $53
        ora     L081C,x
        .byte   $0C
        brk
        ora     (L0052,x)
        .byte   $53
        and     (L001F,x)
        .byte   $0C
        .byte   $0C
        asl     L0002
        .byte   $52
        .byte   $53
        .byte   $23
        .byte   $23
L226A:  asl     L0011,x
        .byte   $03
        ora     L0054
L226F:  eor     L001A,x
        rol     a
        clc
        .byte   $4B
        asl     L0609,x
        lsr     L001B,x
        .byte   $2B
        .byte   $23
        asl     L0023,x
        .byte   $23
        .byte   $17
        .byte   $57
        .byte   $1B
        .byte   $2B
        cli
        eor     L5B5A,y
        .byte   $5C
        .byte   $5A
        .byte   $1B
        .byte   $2B
        eor     L5352,x
        .byte   $53
        .byte   $53
        .byte   $53
        lsr     L5E5F,x
        .byte   $5F
        lsr     L5E5F,x
        .byte   $53
        .byte   $53
        .byte   $5F
L229A:  .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        rts

        .byte   $5F
        adc     (L005F,x)
        rts

L22AD:  .byte   $5F
        eor     L0060,x
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $63
        .byte   $64
        .byte   $63
        adc     L0066
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $63
        .byte   $64
        .byte   $63
        adc     L0057
        lsr     L5B5F,x
        .byte   $5F
        lsr     L5E5F,x
        .byte   $5B
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        .byte   $67
        .byte   $06
L22D2:  .byte   $03
        eor     L6802,x
L22D6:  .byte   $02
        .byte   $03
        .byte   $67
        adc     #$69
        adc     #$69
        adc     #$69
        adc     #$6A
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        jmp     (L6B6B)

        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        lsr     L006D,x
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        ror     L576B
        .byte   $6F
        ror     L6B6B
        bvs     L2370
        adc     L5E5A
        .byte   $72
        adc     L6B6B
        .byte   $73
        .byte   $6B
        .byte   $53
        .byte   $53
        .byte   $67
        adc     L6B6B
        .byte   $6B
        .byte   $6B
        eor     L0602,x
        .byte   $03
        eor     L0602,x
        .byte   $03
        adc     #$69
        adc     #$69
        adc     #$69
        .byte   $74
        .byte   $69
L2320:  .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        bvs     L2398
        adc     L6B6B
        ror     L6B6B
        .byte   $6B
        .byte   $73
        .byte   $6B
        .byte   $6B
        bvs     L23A4
        adc     L6B6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $73
        .byte   $6B
        .byte   $6B
        .byte   $6B
        ror     L6B6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        bvs     L23B8
        adc     L6B6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $73
        .byte   $6B
        eor     L0602,x
        asl     L0057
        .byte   $62
        .byte   $63
        .byte   $64
        adc     #$69
        .byte   $74
        .byte   $74
        adc     L0062,x
        .byte   $63
        .byte   $64
        .byte   $6B
        bvs     L23D4
        eor     L7676,y
        .byte   $5F
        ror     L006B,x
        .byte   $6B
        .byte   $73
        .byte   $77
        sei
        adc     L7963,y
L2370:  .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $6B
        .byte   $57
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $6B
        .byte   $6B
        ror     L577A
        .byte   $62
        .byte   $63
        .byte   $64
        .byte   $6B
        bvs     L23DC
        .byte   $7B
        .byte   $7B
        lsr     L7C5F,x
        .byte   $6B
        bvs     L23DD
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $63
        .byte   $64
        .byte   $63
        adc     L007D
        .byte   $57
        .byte   $7E
        .byte   $7F
L2398:  .byte   $63
        .byte   $64
        .byte   $63
        adc     L0057
        ror     L5F57,x
        .byte   $5F
        ror     L0063,x
        .byte   $76
L23A4:  ror     L0080,x
        sta     (L005F,x)
        .byte   $63
        adc     L7963,y
        sei
        .byte   $82
        .byte   $83
        .byte   $5F
        .byte   $63
        .byte   $64
        .byte   $63
        adc     L0057
        .byte   $57
        .byte   $7D
        .byte   $5F
L23B8:  .byte   $63
        .byte   $64
        .byte   $63
        adc     L0057
        ror     L5F57,x
        .byte   $5F
        lsr     L7C5F,x
        .byte   $80
        sta     (L007E,x)
        .byte   $5F
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $67
        .byte   $83
        .byte   $57
        .byte   $5F
        sty     L0085
        sty     L0085
L23D4:  stx     L0081
        .byte   $87
        sty     L0084
        adc     (L0084,x)
        .byte   $55
L23DC:  dey
L23DD:  .byte   $83
        ror     L8984,x
        .byte   $64
        .byte   $89
        adc     L0066
        ror     L0087
        sty     L0089
        .byte   $64
        .byte   $89
        adc     L008A
        .byte   $8B
        sty     L8984
        .byte   $64
        .byte   $89
        adc     L0066
        ror     L0062
        .byte   $89
        .byte   $89
        .byte   $64
        .byte   $89
        adc     L0087
        .byte   $57
        adc     L0084,x
        sty     L008D
        .byte   $89
        .byte   $8D
        .byte   $8D
L2405:  sta     $848D
        sty     L0053
        .byte   $89
        sta     L0085
        sta     L0085
        sty     L0084
        sty     L0084
        ror     L8E8E,x
        .byte   $7E
        .byte   $8E
L2418:  sty     L0084
        sty     L0057
        .byte   $8F
        .byte   $57
        .byte   $57
L241F:  .byte   $8F
L2420:  sty     L0084
L2422:  sty     L0090
        .byte   $57
L2425:  .byte   $57
        .byte   $57
        sta     (L0084),y
        sty     L0084
        adc     L0057
L242D:  .byte   $92
        .byte   $93
        sty     L0089,x
        .byte   $89
        .byte   $89
        adc     L008F
        sta     L0066,x
        .byte   $87
        sty     L0084
        sty     L0072
        stx     L8757
        .byte   $57
        sty     L0084
        sty     L0067
        .byte   $8F
        stx     L0097,y
        tya
        sty     L0084
        sty     L0067
        eor     L5D5D,x
        sta     L878E,y
        .byte   $87
        ror     L8F57,x
        .byte   $57
        .byte   $52
        .byte   $57
        ror     L667E,x
        .byte   $87
        sta     (L0066),y
        .byte   $52
        .byte   $8F
        .byte   $57
        txs
        .byte   $87
        .byte   $9B
        sta     (L0057),y
        .byte   $52
        .byte   $57
        .byte   $92
        .byte   $9C
        ror     L8F57,x
        .byte   $87
        .byte   $52
        .byte   $57
        sta     L5794,x
        .byte   $9E
        .byte   $8F
        ror     L5752,x
        .byte   $57
        .byte   $57
        .byte   $87
        ror     L009F
        .byte   $57
        .byte   $52
        .byte   $97
        .byte   $96
L2482:  .byte   $97
        .byte   $8F
        .byte   $97
        stx     L0059,y
        .byte   $53
        eor     L5D5D,x
L248B:  eor     L5D5D,x
        .byte   $52
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $63
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $5F
        .byte   $53
        .byte   $63
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $5F
        rts

        .byte   $63
        adc     (L0055,x)
        rts

        eor     L005F,x
        .byte   $63
        .byte   $64
        .byte   $63
        adc     L0066
        ldy     #$62
        .byte   $63
        .byte   $63
        .byte   $64
        .byte   $63
        adc     L0075
        lda     (L0062,x)
        .byte   $63
        .byte   $63
        .byte   $64
        .byte   $63
        adc     L0057
        adc     L0062,x
        .byte   $63
        .byte   $5F
        lsr     L5E5F,x
        lsr     L5E5E,x
        .byte   $5F
        .byte   $5F
        .byte   $53
        .byte   $5F
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $5F
        .byte   $67
        brk
        ora     (L0000,x)
        .byte   $02
        brk
        brk
        ora     (L0067,x)
        ora     (L0003,x)
        asl     L0002
        .byte   $03
        .byte   $02
        .byte   $02
        rts

        ldx     #$A3
        ldy     L003B
L24E5:  .byte   $A3
        .byte   $3B
        .byte   $3B
        lda     L00A6
        .byte   $0B
        asl     L00A7
        .byte   $0B
        asl     L0002
        adc     L00A8
        bpl     L2512
        .byte   $43
        lda     #$23
        eor     LABAA,y
        ora     L0023,x
        clc
        eor     L535E,y
        lsr     L5E5E,x
        lsr     L535E,x
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
        brk
        .byte   $03
L2512:  ora     (L0000,x)
        asl     L0001
        brk
        .byte   $03
        asl     L0006
        ora     L0003
        ora     L0003
        .byte   $03
        .byte   $02
        .byte   $A3
        .byte   $3B
        .byte   $3A
L2523:  .byte   $3B
L2524:  .byte   $3C
        ldy     L3B3B
        lda     LAE06
        .byte   $0D
        .byte   $0E
L252D:  ldx     $0206
        .byte   $72
        .byte   $AF
        bcs     L24E5
        .byte   $B2
        .byte   $B3
        lda     (L0098),y
        .byte   $67
        .byte   $22
        ora     LB5B4,y
        ldx     L00B4,y
        sta     L5E53,y
        .byte   $72
        .byte   $B7
        .byte   $33
        clv
        lda     L5399,y
        .byte   $53
        .byte   $67
        and     L3637
        sec
        sta     L0000,y
        brk
        brk
        .byte   $52
        .byte   $53
        .byte   $53
        .byte   $53
        brk
        .byte   $03
        ora     L0003
        .byte   $52
L255D:  .byte   $53
        .byte   $53
        .byte   $53
        .byte   $3B
        .byte   $A3
        .byte   $3C
        .byte   $3B
        .byte   $54
        eor     L0055,x
        tsx
        .byte   $03
        lda     L0609
        .byte   $03
        ora     L520D
        asl     L0910,x
        .byte   $44
        asl     L1E12,x
        .byte   $54
        .byte   $17
        ora     L0019,x
        .byte   $BB
        .byte   $14
        .byte   $14
        .byte   $17
        .byte   $BC
L2580:  .byte   $B7
        .byte   $33
        clv
        lda     L59BE,x
        lsr     L2D5E,x
L2589:  rol     L0036,x
        .byte   $37
        sec
        .byte   $52
        .byte   $53
        .byte   $53
        rol     L0100
        .byte   $03
        asl     L0000
        ora     (L0005,x)
        .byte   $BF
        bmi     L25CB
        bmi     L255D
        bmi     L25CF
        cmp     (L0008,x)
        .byte   $03
        asl     L0002
        ora     #$06
        .byte   $02
        ora     #$08
        .byte   $C2
        ora     L0906
        .byte   $C3
        ora     L4109
        cpy     L00B1
L25B3:  cpy     L00B2
        lda     (L00C4),y
        lsr     L0016
        cmp     L00B4
        cmp     L00B5
        ldy     L00C5,x
        ora     L5E5E,y
        lsr     L5E5E,x
        lsr     L5E5E,x
        .byte   $53
        .byte   $53
        .byte   $53
L25CB:  .byte   $53
        .byte   $53
        .byte   $53
        .byte   $53
L25CF:  .byte   $53
        dec     L00C7
        iny
        dec     L00C7
        iny
        cmp     #$CA
        .byte   $CB
        cpy     LCBCD
        cpy     LCECD
        .byte   $CF
        bne     L25B3
        .byte   $D2
        .byte   $D3
        cmp     (L00D4),y
        cmp     L00D6,x
        .byte   $D7
        cld
        cmp     LDBDA,y
        cmp     LDDDC,y
        dec     LE0DF,x
        sbc     (L00DF,x)
        cpx     #$E1
        .byte   $E2
        .byte   $E3
        cpx     L00E5
        .byte   $E3
        cpx     L00E5
        .byte   $E3
        cpx     L00E6
        inc     L00E6
        .byte   $E6
L2604:  inc     L00E6
        inc     L00E6
L2608:  .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        .byte   $E7
        inx
        inx
L2612:  inx
        inx
        inx
        inx
        inx
        inx
        sbc     #$EA
        .byte   $EB
        cpx     LEEED
        .byte   $EF
L261F:  beq     L2612
        sbc     (L00F1),y
        .byte   $F1
L2624:  sbc     (L00F1),y
        sbc     (L00F1),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
L262D:  .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        eor     LF55D,x
        inc     L00F7,x
        eor     L5D5D,x
        sbc     (L00F1),y
        sed
        sbc     LF1FA,y
        sbc     (L00F1),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        inx
L2698:  eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        .byte   $FB
        .byte   $FC
        .byte   $5D
L26A4:  eor     L5D5D,x
L26A7:  eor     $F1F1,x
        sbc     (L00F1),y
L26AC:  sbc     (L00F1),y
        sbc     (L00F1),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        inx
        eor     L5D5D,x
        eor     L5D5D,x
        eor     LF15D,x
        sbc     (L00F1),y
        sbc     (L00F1),y
        sbc     (L00F1),y
        sbc     (L00F2),y
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F2
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
L2704:  .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
        .byte   $F4
L270F:  .byte   $F4
        eor     L5D5D,x
        eor     L5D5D,x
L2716:  eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        .byte   $5D
L2726:  eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
L272F:  eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        .byte   $5D
        .byte   $5D
L27E5:  eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
L2800:  eor     L5D5D,x
        .byte   $5D
L2804:  eor     L5D5D,x
        eor     L5D5D,x
        eor     L5D5D,x
        .byte   $5D
L280E:  eor     a:L005D,x
        .byte   $01
L2812:  .byte   $02
L2813:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $04
        ora     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $07
        php
        .byte   $09
L2821:  asl     a
        .byte   $02
L2823:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0B
        .byte   $0C
        asl     a
        .byte   $02
        ora     L020E
        .byte   $02
        .byte   $0B
        .byte   $0F
        asl     a
        .byte   $02
        bpl     L2846
        .byte   $12
        .byte   $13
        .byte   $0B
        .byte   $14
        ora     L0014,x
        ora     L0014,x
        asl     L0017,x
        clc
        ora     L1919,y
        ora     L1A19,y
L2846:  .byte   $1B
        .byte   $1C
        ora     L1D1D,x
        ora     L1E1D,x
        .byte   $1F
        jsr     L0100
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        ora     L0006
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     #$0A
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0C
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $0F
        asl     a
        .byte   $02
        .byte   $02
        ora     L1221
        .byte   $13
        ora     L0016,x
        .byte   $02
        and     (L0010,x)
        .byte   $22
        .byte   $23
        and     (L0019,x)
        .byte   $1A
        bit     L0025
        .byte   $1B
        and     L001B
        and     L001D
        asl     L261F,x
        .byte   $1F
        .byte   $27
        .byte   $1F
        rol     L0002
        plp
        and     #$29
        and     #$29
        rol     a
        rol     a
        .byte   $02
        .byte   $02
        .byte   $03
        brk
        ora     (L0002,x)
        .byte   $2B
        .byte   $2B
        .byte   $02
        .byte   $02
        bit     L2D04
        .byte   $02
        rol     L022B
        .byte   $02
        .byte   $0B
        ora     #$0A
        .byte   $02
        .byte   $02
        .byte   $2F
        .byte   $02
        .byte   $02
        .byte   $0B
        .byte   $0C
        asl     a
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bmi     L28D0
        .byte   $14
        ora     L0016,x
        and     (L0032),y
        bit     L0033
        ora     L1919,y
        .byte   $1A
        .byte   $34
L28C7:  and     L001F,x
        rol     L001D,x
        ora     L1E1D,x
        .byte   $1F
        .byte   $1F
L28D0:  and     #$37
        sec
        and     L393A,y
        and     L023A,y
        .byte   $3B
        .byte   $3C
        and     L3D3C,x
        and     L023E,x
        .byte   $3F
        rti

        eor     (L0042,x)
        eor     (L0041,x)
        .byte   $37
        .byte   $02
        .byte   $43
        .byte   $44
        eor     L0046
        eor     L0047
        pha
        clc
        .byte   $14
        asl     L0049,x
        lsr     a
        .byte   $4B
        jmp     L3748

        and     L393A,y
        and     L4E4D,y
        .byte   $37
        .byte   $37
        and     L3939,y
L2904:  and     L4E4F,y
        pha
        .byte   $37
        and     L3950,y
        sec
        .byte   $4F
        lsr     L3937
        eor     (L0052),y
        .byte   $53
        .byte   $54
        eor     (L004E),y
        pha
        eor     L0056,x
        .byte   $44
        .byte   $57
        cli
        .byte   $57
        eor     L553B,y
        lsr     L4746
        lsr     L0047
        .byte   $47
        .byte   $3B
        .byte   $3A
        .byte   $5A
        lsr     L005B
        .byte   $5C
        eor     L5E5C,x
        eor     L005F,x
        lsr     L0047
        lsr     L0047
        lsr     L0047
        eor     L464E
        .byte   $47
        rts

        adc     (L0046,x)
        .byte   $62
        and     L6463,y
        adc     L0066
        .byte   $67
        .byte   $64
        pla
        and     L6A69,y
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        .byte   $54
        .byte   $54
        eor     (L004E),y
        .byte   $3F
        lsr     L4746
        .byte   $52
        .byte   $57
        cli
        eor     L5958,y
        lsr     L0047
        .byte   $6B
        .byte   $47
        lsr     L0047
        lsr     L0047
        lsr     L0047
        .byte   $6B
        .byte   $47
        lsr     L0047
        lsr     L0047
        lsr     L006C
        lsr     L0047
        rts

        .byte   $47
        lsr     L0047
        lsr     L0057
        adc     L6E47
        .byte   $47
        lsr     L0047
        lsr     L0047
        .byte   $6F
        adc     L0064
        adc     L0064
        clc
        .byte   $14
        .byte   $14
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        .byte   $37
        and     L4639,y
        .byte   $47
        lsr     L0070
        adc     (L0071),y
        adc     (L0071),y
        lsr     L0047
        lsr     L0070
        adc     (L0071),y
        adc     (L0071),y
        lsr     L0047
        lsr     L0070
        adc     (L0071),y
        adc     (L0071),y
        .byte   $72
        .byte   $47
        lsr     L0070
        adc     (L0073),y
        adc     (L0071),y
        .byte   $44
        .byte   $74
        adc     L0016,x
        ror     L0077,x
        sei
        .byte   $73
        lsr     L0048
        and     L1439,y
        .byte   $14
        asl     L0079,x
        .byte   $14
        and     L393A,y
        and     L393A,y
        .byte   $14
        sec
        and     L3939,y
        and     L3939,y
        and     L7171,y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L007A),y
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7B
        .byte   $7C
        adc     (L0071),y
        adc     L7D7D,x
        adc     L7D7D,x
        adc     (L0071),y
        .byte   $73
        adc     (L0078),y
        ror     L007E,x
        .byte   $7F
        adc     (L0076),y
        .byte   $77
        sei
        .byte   $74
        .byte   $14
        .byte   $14
        asl     L0080,x
        .byte   $14
        .byte   $14
        adc     L0039,x
        and     L3939,y
        .byte   $14
        and     L3939,y
        and     L3939,y
        .byte   $39
L2A0F:  and     L7171,y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L007A),y
        .byte   $7C
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     L717D,x
        adc     (L0081),y
        .byte   $82
        adc     (L0071),y
L2A29:  adc     (L0071),y
        adc     (L0081),y
L2A2D:  .byte   $83
        .byte   $83
        sty     L0071
        adc     (L0071),y
        sta     (L0085,x)
        stx     L0086
        .byte   $87
        dey
        sei
        .byte   $89
        txa
        .byte   $8B
L2A3D:  .byte   $87
        sty     L147F
        .byte   $14
        sta     L8D8D
        sta     L758D
        and     L3939,y
        and     L3839,y
        and     L7139,y
        .byte   $3F
        adc     (L0053),y
        .byte   $54
        eor     (L0071),y
        adc     (L0071),y
        adc     L7D71,x
        adc     L717D,x
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        .byte   $7A
        .byte   $7B
        .byte   $7B
        .byte   $8E
        .byte   $8F
L2A6A:  adc     (L0071),y
        adc     (L007D),y
        adc     $8B7D,x
        bcc     L2AE4
        adc     (L0071),y
        .byte   $73
        adc     (L0071),y
        adc     L7171,y
        adc     (L0021),y
        adc     L8880,y
        .byte   $14
        sta     (L0092),y
        .byte   $92
        pha
        .byte   $14
        .byte   $14
        adc     L0039,x
        adc     #$6A
        ror     a
        pha
        sec
        and     L7139,y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L0071),y
        adc     (L007B),y
        .byte   $7B
        .byte   $7B
        .byte   $7C
        adc     (L0071),y
        adc     (L0071),y
        adc     L7D7D,x
        adc     L7171,x
        adc     (L0071),y
        .byte   $73
        adc     (L0093),y
        adc     (L0071),y
        adc     (L0071),y
        sty     L0079,x
        sei
        sta     L0080,x
        ror     L007E,x
        .byte   $7F
        .byte   $74
        .byte   $14
        .byte   $14
        sta     L1414
        .byte   $14
        .byte   $14
        and     L3996,y
        and     L3939,y
        and     L3939,y
        sty     L0097,x
        .byte   $3B
        tya
        tya
        lsr     L0047
        lsr     L0094
        .byte   $97
        .byte   $3B
        sta     L4699,y
        .byte   $47
        lsr     L0094
        .byte   $97
        .byte   $3F
        txs
L2AE4:  .byte   $9B
        .byte   $42
        eor     (L0042,x)
        sty     L0097,x
        .byte   $57
        eor     L4647,y
        .byte   $9C
        lsr     L0074
        .byte   $14
        .byte   $14
        sta     L9E9C,x
        tya
        .byte   $9E
        and     L393A,y
        .byte   $9F
        tya
        ldy     #$98
        ldy     #$3A
        and     LA139,y
L2B04:  ldx     #$A3
        ldx     #$A3
        and     L3939,y
        adc     #$A4
        .byte   $A4
L2B0E:  ldy     L00A4
        .byte   $47
        lsr     L0047
        lsr     L0047
        .byte   $3B
        lsr     L4746
        lsr     L0047
        lsr     L0047
        .byte   $3B
        .byte   $4E
L2B1F:  lsr     L0041
        .byte   $42
        eor     (L0042,x)
L2B24:  eor     (L003F,x)
        lsr     L4746
        lda     L0047
L2B2B:  lda     L0047
        cli
        eor     LA646,y
        ldy     #$A6
        .byte   $A7
        eor     (L0042,x)
        eor     (L0042,x)
        tya
        ldy     #$98
        ldy     #$47
        lsr     L0047
        lsr     L00A2
        .byte   $A3
        ldx     #$A3
        adc     L0064
        and     (L00A8,x)
        ldy     L00A4
        ldy     L00A4
        ror     a
L2B4D:  ror     a
        .byte   $3B
        ror     a
        .byte   $3B
        bvs     L2BC4
        sty     L0097,x
        .byte   $47
        lsr     L0047
        .byte   $3B
        bvs     L2BCC
        sty     L0097,x
        .byte   $47
        lsr     L0047
        .byte   $3F
        lda     #$AA
        .byte   $AB
        ldy     LAEAD
        .byte   $AF
        cli
        bvs     L2BDC
        sty     L0097,x
        .byte   $47
        lsr     L0053
        .byte   $42
        bcs     L2B24
        sty     L0097,x
        .byte   $47
        lsr     L0057
        lsr     L0070
        adc     (L00B2),y
        asl     L004E,x
        lsr     L0047
        .byte   $B3
        asl     L0092,x
        ldy     L003A,x
        lda     L00B6,x
        .byte   $B7
        clv
        eor     L006A,x
        clv
        and     L3939,y
        and     L4746,y
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lda     L6B16,y
        .byte   $47
        lsr     L0047
        .byte   $74
        adc     L0054,x
        .byte   $54
        tsx
        tsx
        tsx
        tsx
        .byte   $BB
        bvc     L2C09
        .byte   $57
        cli
        .byte   $57
        cli
        .byte   $57
        cli
        eor     L4746,y
        lsr     L0047
        lsr     L0047
        lsr     L0047
        ldy     LBDB7,x
        .byte   $BE
L2BC4:  ldy     LBCB7,x
        .byte   $B7
        and     L3939,y
        sec
L2BCC:  sec
        and     L3939,y
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0047
L2BDC:  lsr     L0047
        lsr     L0047
        .byte   $BF
        cpy     #$C1
        clc
        .byte   $14
        .byte   $14
        asl     L004E,x
        .byte   $C2
        .byte   $57
        cli
        .byte   $C3
        cpy     L0050
        cmp     L00BA
        lsr     L00C6
        lsr     L0047
        lsr     L0047
        cli
        .byte   $57
        lsr     L0061
        lsr     L0047
        lsr     L0047
        lsr     L0047
        .byte   $C7
        .byte   $67
        .byte   $64
L2C03:  .byte   $AF
        ldy     LBDB7,x
        .byte   $BE
        .byte   $69
L2C09:  ror     a
        ror     a
        pha
        and     L3939,y
        and     L4746,y
        lsr     L0070
        .byte   $53
        eor     (L00C8),y
        .byte   $53
        lsr     L0047
        lsr     L0070
        adc     L717D,x
L2C1F:  cmp     #$46
        and     (L006B,x)
        bvs     L2C96
        adc     (L0071),y
        sty     L00BA,x
        dex
        .byte   $6B
        bvs     L2C9E
L2C2D:  adc     (L0071),y
L2C2F:  sty     L0058,x
        .byte   $57
        .byte   $44
        bvs     L2CA6
        adc     (L0071),y
L2C37:  sty     L0046,x
        .byte   $47
        lsr     L0070
        .byte   $74
        .byte   $CB
        adc     (L00B2),y
        ldy     LBCB7,x
        cpy     LCECD
        .byte   $92
        ldy     L0039,x
        and     L3939,y
        sec
        adc     #$6A
        clv
        dex
        .byte   $6B
        .byte   $47
        lsr     L0047
        lsr     L0047
        lsr     L00CF
        .byte   $44
        .byte   $47
        lsr     L0047
        bne     L2C1F
        cmp     (L0097,x)
        lsr     L0047
        lsr     L0047
        cli
        .byte   $57
        cli
        .byte   $97
        lsr     L0047
        lsr     L0047
        lsr     L00C6
        lsr     L0097
        lsr     L0047
        lsr     L0047
        rts

        .byte   $47
        lsr     L0075
        asl     L004E,x
        lsr     L0047
        ror     L4647
        and     L1439,y
        asl     L00D1,x
        .byte   $64
        adc     L0064
        and     L3938,y
        eor     L6A6A
        ror     a
        ror     a
        eor     L0046
        eor     L0046
        eor     L0046
L2C96:  eor     L0046
        .byte   $47
        lsr     L0047
        lsr     L0047
        .byte   $46
L2C9E:  .byte   $47
        lsr     L00C0
        cmp     (L00C0,x)
        .byte   $74
        tsx
        tsx
L2CA6:  tsx
        tsx
        .byte   $D2
        cli
        .byte   $D2
        .byte   $3F
        lsr     L0058,x
        .byte   $D2
        cli
        .byte   $47
        lsr     L0047
        cli
        eor     L4746,y
        lsr     L0016
        .byte   $6B
        .byte   $47
        lsr     L0047
        lsr     L0047
        lsr     L0055
        .byte   $D3
        cpy     #$C1
        cpy     #$C1
        cpy     #$C1
        eor     L0052,x
        .byte   $57
        cli
        .byte   $57
        cli
        .byte   $57
        cli
        eor     L0046
        eor     L0046
        eor     L0046
        .byte   $47
        pha
        .byte   $47
        lsr     L0047
        .byte   $D4
        .byte   $47
        lsr     L0047
        .byte   $37
        adc     L0016,x
        lsr     LC646
        lsr     L00D5
        and     L5537,y
        lsr     L4546
        lsr     L0057
        pha
        dec     L0039,x
        asl     L006B,x
        .byte   $47
        lsr     L0047
        .byte   $D7
        .byte   $37
        and     L6B4D,y
        .byte   $47
        lsr     L0047
        cld
        pha
        sec
L2D02:  .byte   $39
        .byte   $14
L2D04:  .byte   $14
        .byte   $14
        .byte   $14
L2D07:  .byte   $14
        pha
        and     L3939,y
        .byte   $39
        .byte   $39
L2D0E:  and     L4639,y
        .byte   $47
        lsr     L0047
        lsr     L0047
        lsr     L0047
        lsr     L0045
        lsr     L0045
        lsr     L0045
        lsr     L0045
        cmp     LDBDA,y
        .byte   $47
        lsr     L00DC
        cmp     L46DA,y
        eor     L0046
        .byte   $C6
L2D2C:  .byte   $D4
        eor     L0046
L2D2F:  eor     L00D9
        .byte   $DA
        .byte   $DB
        .byte   $47
        lsr     L00DC
L2D36:  cmp     L46DA,y
        .byte   $47
        lsr     L0047
        lsr     L0047
        lsr     L0047
        .byte   $14
        adc     L0014,x
        .byte   $14
        .byte   $14
        .byte   $14
        .byte   $14
        .byte   $14
        and     L9639,y
        and     L3939,y
        sec
        and     L6A6A,y
        cmp     L6A6A,x
        ror     a
        ror     a
        dec     L6A6A,x
        ror     a
        cmp     LDE6A,x
L2D5E:  ror     a
        ror     a
        ror     a
        dec     L6A6A,x
        .byte   $DF
        cpx     #$DF
        .byte   $E0
L2D68:  ror     a
        ror     a
        ror     a
        ror     a
        sbc     (L00E2,x)
        sbc     (L00E2,x)
        ror     a
        ror     a
        .byte   $E3
        ror     a
        cpx     L00E5
        inc     L00E7
        inx
        sbc     #$EA
        .byte   $EB
        cpx     LEEED
        sbc     LF0EF
        sbc     (L00F2),y
        .byte   $F3
        .byte   $F4
        sbc     L00F6,x
        .byte   $F7
        sed
        sbc     LFBFA,y
        .byte   $FC
        sbc     L6AFE,x
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        cmp     L6A6A,x
        dec     L6A6A,x
        ror     a
        ror     a
        ror     a
        ror     a
        dec     L6A6A,x
        ror     a
        cmp     L6A6A,x
        ror     a
        cmp     L6A6A,x
        dec     LDD6A,x
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        dec     L6ADE,x
        ror     a
        ror     a
        cmp     L6ADE,x
        ror     a
        cmp     L6A6A,x
        cmp     L6A6A,x
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E01:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E10:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E19:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E28:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E2D:  ror     a
        ror     a
L2E2F:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E35:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E3C:  ror     a
L2E3D:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E60:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2E6D:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2F01:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2F0F:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2F2E:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2F36:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L2FB2:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L3000:  ror     a
        ror     a
        ror     a
L3003:  ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
L300D:  ror     a
        ror     a
        ror     a
L3010:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L3022:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L302E:  .byte   $FF
        .byte   $FF
L3030:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L304E:  brk
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
L3090:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L3106:  brk
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
L312F:  .byte   $FF
L3130:  brk
L3131:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L314E:  brk
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
L3195:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L3206:  brk
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
L3211:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L32F0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L33B7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L3400:  brk
        brk
        brk
        brk
        brk
L3405:  brk
        brk
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
L341A:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L3482:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L348C:  brk
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
L350B:  brk
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
L352C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
L3534:  brk
        brk
L3536:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L3625:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L362F:  .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
L3636:  brk
L3637:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L368C:  brk
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
        php
        .byte   $67
        .byte   $67
        .byte   $63
        .byte   $63
        bit     L0008
        bit     L002E
        php
        rol     L0008
        pla
        ror     L0024
        rts

        stx     L0097,y
        ror     L0008
        php
        php
        php
        php
        php
        bit     L0008
        bit     L0024
        php
        bmi     L3741
        pla
        ror     L0031
        .byte   $32
        php
        php
        ror     L0008
        .byte   $93
        sty     L009B,x
        .byte   $9C
        bit     L0008
        .byte   $24
L371F:  php
L3720:  php
        php
        php
        .byte   $67
L3724:  php
        bit     L002D
        bit     L082E
        rol     L002D
        bit     L0008
        bit     L692D
        ror     a
        bit     L6B2D
        jmp     (L2D2C)

        .byte   $22
        .byte   $23
        plp
        and     #$20
        and     (L0028,x)
        and     #$A2
L3741:  .byte   $A3
        tax
        ldy     L00AD
        ldx     LB6A5
L3748:  rol     L2608
        ldy     LA9A8
        .byte   $BB
        lda     #$A2
        .byte   $A3
        tax
        .byte   $AB
        lda     LB5AE
        ldx     L00A0,y
        lda     (L00A8,x)
        lda     #$AA
        .byte   $AB
        tax
        ldy     L00B2
        ldx     L00B9
        clv
        ldx     L00B6,y
        lda     L2E35,y
        ldy     L0036,x
        .byte   $37
        bcs     L371F
        clv
        lda     LB3B2,y
        clv
        lda     LB6BD,y
        tsx
        lda     L0000,y
        brk
        brk
        brk
        and     a:L0000,x
        rol     a:L003F,x
        brk
        php
        php
        stx     L0097,y
        .byte   $67
        .byte   $63
        .byte   $63
        php
        bit     L002E
        bit     L0026
        php
        rts

        php
        php
        ror     L0008
        rts

        ror     L0024
        rol     L3130
        php
        php
        and     (L0032),y
        stx     L0097,y
        php
        php
        bit     L002E
        bit     L002E
        .byte   $04
        ora     L000C
        ora     L2624
        bit     L002E
        php
        adc     (L0008,x)
        php
        rti

        eor     (L0048,x)
        .byte   $5A
        eor     (L0042,x)
        .byte   $4B
        lsr     a
        txs
        rol     L00AB
        rol     L0033
        .byte   $34
        .byte   $3B
        .byte   $3C
        tya
        sta     LA1A0,y
        .byte   $43
        .byte   $5A
        .byte   $43
        .byte   $5A
        .byte   $5B
        lsr     a
        .byte   $5B
        lsr     a
        .byte   $AB
        rol     L26A4
        ror     L0077,x
        ror     LB67F,x
        ldx     L00B9,y
        lda     L595B,y
        .byte   $5B
        .byte   $5A
        eor     (L0041,x)
        .byte   $4B
        eor     #$41
        eor     (L004F,x)
        eor     #$41
        eor     (L0049,x)
        eor     #$41
        eor     (L0049,x)
        .byte   $4B
        cli
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        php
        bvs     L386A
        .byte   $73
        .byte   $63
        php
        php
        php
        rts

        ror     L0008
        rts

        .byte   $63
        bvs     L3817
        bvs     L3819
        bvs     L381B
        bvs     L3843
        php
        .byte   $30
L3817:  and     (L0008),y
L3819:  php
        .byte   $31
L381B:  and     (L006A),y
        .byte   $6B
        php
        php
        jmp     (L0808)

        php
        php
        php
        tya
L3827:  sta     L1008,y
        txs
        php
        ldy     #$A1
        ldy     #$A1
        ldx     LBE08,y
        php
        eor     (L0041,x)
        .byte   $5A
        .byte   $4B
        .byte   $41
L3839:  .byte   $42
        .byte   $5A
        lsr     a
        .byte   $5A
        eor     L5A5A,y
        eor     (L0041,x)
        .byte   $49
L3843:  .byte   $4F
        bvs     L384E
        bvs     L38AF
        .byte   $67
        .byte   $73
        .byte   $63
        bvs     L3855
        .byte   $2E
L384E:  php
        rol     L0070
        rts

        bvs     L385C
        .byte   $70
L3855:  .byte   $63
        .byte   $73
        php
        php
        bpl     L3863
        php
L385C:  bpl     L3866
        php
        php
        rts

        ror     L0031
L3863:  .byte   $32
        adc     (L006A,x)
L3866:  php
        php
        .byte   $6B
        .byte   $6C
L386A:  php
        php
        txs
        php
        ldx     L9A08,y
        php
        ldx     #$A3
        rti

        .byte   $42
        pha
        lsr     a
        php
        php
        php
        ldy     L5943
        .byte   $43
        .byte   $5A
        php
        tay
        php
        .byte   $BB
        eor     (L0041,x)
        .byte   $4F
        .byte   $4F
        eor     (L0042,x)
        eor     #$4A
        .byte   $5A
        lsr     a
        .byte   $5A
        lsr     a
        bvs     L389A
        bvs     L389C
        bvs     L389E
        .byte   $72
        ror     L0063
        php
L389A:  .byte   $64
        .byte   $65
L389C:  bpl     L38FE
L389E:  php
        php
        bvs     L38AA
        bpl     L38AC
        php
        bpl     L390E
        .byte   $63
        .byte   $6E
        .byte   $6F
L38AA:  bmi     L38DE
L38AC:  ror     L0077,x
        .byte   $76
L38AF:  .byte   $77
        php
        php
        tya
        txs
        sta     (L009A),y
        tax
        .byte   $AB
        .byte   $B2
        rti

        clv
        pha
        brk
        .byte   $43
        brk
        .byte   $43
        php
        .byte   $44
        php
        .byte   $44
        eor     L0045
        eor     L0045
        eor     L0046
        eor     L0046
        .byte   $54
        eor     L0054,x
        eor     L0055,x
        eor     L0055,x
        eor     L0044,x
        eor     L0044
        eor     L0045
        eor     L0030
        .byte   $32
        lsr     L0008
L38DE:  lsr     L0008
        eor     L454D
        eor     L0056
        .byte   $57
        php
        php
        lsr     L085F,x
        php
        bmi     L3920
        eor     L084D
        .byte   $44
        tya
        .byte   $44
        ldy     #$44
        tay
        .byte   $44
        .byte   $44
        eor     L0030
        .byte   $32
        lsr     L00AD
L38FE:  .byte   $46
L38FF:  lda     L0045
        rti

        eor     L0048
L3904:  eor     (L0042,x)
        .byte   $4F
        lsr     a
        jmp     L444D

        eor     L0046
        .byte   $B6
L390E:  lsr     L00B9
        bmi     L3943
        eor     L314E
        .byte   $32
        .byte   $5C
        .byte   $5D
        php
L3919:  jmp     $4408

        eor     L454E
        .byte   $46
L3920:  .byte   $5C
L3921:  eor     L5554,x
        eor     L555D,x
        eor     L0095,x
        php
        php
        .byte   $9E
        php
        adc     (L0008),y
        adc     (L0095),y
        php
        sta     L0808,x
        php
        php
L3937:  .byte   $95
L3938:  .byte   $95
L3939:  php
L393A:  .byte   $9D
L393B:  .byte   $9E
        php
        sta     L0008,x
        php
        php
        .byte   $79
        php
L3943:  php
        sta     L0008,x
        php
        php
        php
        php
        php
        asl     L1708,x
        .byte   $1F
        .byte   $45
L3950:  asl     L0014,x
        eor     L0046
        lsr     L4608
        php
        eor     L0045
        bmi     L398D
        eor     L0046
        and     (L0032),y
        bvs     L38FF
        bvs     L396C
        php
        bvs     L3904
        bvs     L3971
        bvs     L3973
        .byte   $10
L396C:  rti

        eor     (L0048,x)
        eor     #$41
L3971:  eor     (L0051,x)
L3973:  eor     (L0041),y
        eor     (L0053,x)
        eor     (L0041),y
        eor     (L0051,x)
        .byte   $53
        .byte   $43
        .byte   $5A
        bvc     L39D1
        .byte   $5B
        lsr     a
        .byte   $53
        .byte   $52
        .byte   $8B
        sty     L8483
        stx     L868E
        stx     L008A
L398D:  .byte   $8B
        .byte   $82
        .byte   $83
        .byte   $8B
        .byte   $8B
        .byte   $83
        .byte   $83
        php
        txa
L3996:  php
        .byte   $82
        .byte   $83
        sty     L0083
        sty     L0086
        stx     L0086
        stx     L0083
        .byte   $83
        .byte   $83
        .byte   $83
        eor     (L0042,x)
        eor     #$59
        .byte   $83
        .byte   $83
        eor     (L0041,x)
        eor     #$4B
        .byte   $5A
        .byte   $5B
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $03
        php
        php
        php
        .byte   $9E
        ora     L0015,x
        php
        php
        ora     L0015,x
        sta     L4108,x
        .byte   $42
        eor     (L0052),y
        .byte   $43
        lsr     a
        bvc     L3A1A
        sty     L8408
        php
        sty     L0008
        eor     (L0041,x)
        php
L39D1:  php
        eor     (L0042,x)
L39D4:  .byte   $4B
        eor     #$5B
        .byte   $5A
        eor     #$4A
        .byte   $5A
        lsr     a
        .byte   $02
        .byte   $03
        php
        php
        clc
        clc
        ora     L3819,y
        and     L5A43,y
        sec
        and     L5150,y
        .byte   $43
        lsr     a
        .byte   $43
        lsr     a
        php
        php
        clc
        clc
        cli
        lsr     a
        .byte   $5A
        .byte   $5A
        ora     L3919,y
        .byte   $3A
        sta     (L0081,x)
        stx     L0086
        and     L5A39,y
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $51
L3A07:  eor     (L005B),y
        .byte   $5A
        .byte   $53
        eor     (L005A),y
        lsr     a
        .byte   $51
L3A0F:  .byte   $52
        sty     L848E
        stx     L0084
        stx     L0084
        stx     L0040
        .byte   $41
L3A1A:  bvc     L3A6D
        cli
        .byte   $5A
        eor     (L0051),y
L3A20:  stx     L868F
        .byte   $87
        .byte   $82
        .byte   $83
        .byte   $82
        .byte   $83
        stx     L0087
        stx     L0087
        php
        adc     (L0066),y
        adc     (L0060),y
        adc     (L0008),y
        adc     L0042,x
        php
        .byte   $52
        php
        php
        php
L3A3A:  lda     L00AC
        ldx     L00B4,y
        lda     L08BA,y
        pla
        php
        bit     L0066
        adc     L6660,y
        bit     L002E
        bit     L0826
        rol     L26AC
        ldy     L002E,x
        and     L0036,x
        bcs     L3A07
        .byte   $37
        tsx
        and     a:L003E,x
        brk
        .byte   $3F
        brk
        brk
        brk
        rol     L2624
        bit     L0008
        php
        .byte   $64
        adc     L006E
        .byte   $6F
        ror     L0077,x
        php
L3A6D:  adc     (L0067),y
        .byte   $7B
        bmi     L3AA4
        ror     L0077,x
        jmp     (L0871)

        adc     (L002E),y
        bit     L0030
        .byte   $32
L3A7C:  .byte   $26
L3A7D:  php
        rol     L089A
L3A81:  php
        sta     (L009A),y
        rol     L00AB
        rol     LAAA4
        .byte   $AB
        tax
        .byte   $AB
        rti

        eor     (L0048,x)
        .byte   $4B
        rol     L00A6
        rol     L0037,x
        .byte   $43
        .byte   $5B
        .byte   $43
        .byte   $5B
        .byte   $64
        adc     L006E
        .byte   $6F
        ror     L0077,x
        bmi     L3AD2
        php
        rol     L2698
L3AA4:  php
        php
        txs
        php
        ldy     #$2E
        ldy     #$26
        .byte   $43
        .byte   $5A
        bvc     L3B0A
        asl     a
        .byte   $5A
        asl     a
        .byte   $5A
        eor     (L0058,x)
        eor     #$5A
        .byte   $1A
        .byte   $1A
        .byte   $1B
        .byte   $1B
        .byte   $1A
        .byte   $1A
        ror     L0077,x
        and     (L0031),y
        php
        php
        and     (L0031),y
        ror     L0077,x
        .byte   $32
        bmi     L3AD3
        php
        .byte   $32
        bmi     L3A7C
        ldx     L3131
L3AD2:  .byte   $A0
L3AD3:  lda     (L0032,x)
        bmi     L3A81
        .byte   $AB
        .byte   $32
        bmi     L3A7D
        .byte   $A3
        lda     L00B6
        ldx     L00B6,y
        tay
        lda     #$B0
L3AE3:  lda     (L00AA),y
        .byte   $A4
L3AE6:  .byte   $B2
        ldx     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $0F
        .byte   $04
        asl     L00AB
        ldy     L0F0F
        ora     (L000F),y
        .byte   $34
        .byte   $0F
        ldx     L0FAF
        .byte   $0F
L3B00:  bit     L0F0F
        .byte   $0F
        .byte   $27
        ora     (L0036),y
        ora     (L0011),y
        .byte   $2E
L3B0A:  rol     L006A
        .byte   $0F
        .byte   $0F
        ora     (L008E),y
        rti

        .byte   $42
        .byte   $42
        .byte   $42
        adc     LB90F,y
        .byte   $0F
        rts

        .byte   $62
        .byte   $0F
        .byte   $0F
        and     (L0020,x)
        lda     #$0F
        php
L3B21:  asl     a
        asl     a
        cpy     L00C6
        brk
        cmp     #$CB
        cpy     #$C2
        .byte   $C2
        cpx     L00E6
        brk
        sbc     #$EB
        cpy     #$C2
        .byte   $C2
        cpx     #$8D
        stx     L0F8E
        cpx     #$10
L3B3A:  .byte   $10
L3B3B:  .byte   $10
L3B3C:  brk
        brk
        brk
        bpl     L3B21
        bpl     L3B53
        bpl     L3AE3
        .byte   $9F
        .byte   $80
        .byte   $82
        ldy     L0010
        bpl     L3B5C
        brk
        brk
        sty     L0086
        dey
        dey
        .byte   $0F
L3B53:  txa
        ora     (L0011),y
        ora     (L0011),y
        sei
        sei
        ora     (L0011),y
L3B5C:  txa
        .byte   $0F
        eor     L1C4E
        .byte   $0C
        .byte   $47
        lsr     a
        .byte   $0F
        lsr     L006C,x
        ror     L2A0F
        .byte   $0F
        eor     L000F
        .byte   $0F
        jmp     (L0F6E)

        ora     (L006B),y
        lsr     L115E,x
        eor     L0F6B,x
        .byte   $0F
        .byte   $5B
        and     L1139,y
        sec
        .byte   $6B
        .byte   $0F
        ora     (L000F),y
        .byte   $64
        ror     L0011
        ora     (L0011),y
        ora     (L0011),y
        ora     (L0077),y
        pla
        ora     (L0011),y
        .byte   $0F
        ora     (L00DD),y
        dec     LCE11,x
        dec     L0FCF
        .byte   $DC
        brk
        sbc     LCCA6
        ora     (L0011),y
        .byte   $0F
        .byte   $A7
        brk
        ldx     L00A6
        .byte   $DF
        ora     (L00CF),y
        .byte   $0F
        ldy     #$A2
        .byte   $92
        cpx     a:L000F
        dec     a:L000F,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L3BC3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L3BEF:  brk
        brk
        .byte   $0F
        ora     L0007
        ldy     L0FAD
        .byte   $0F
        ora     (L000F),y
        and     L000F,x
        .byte   $AF
        eor     #$0F
        .byte   $0F
        and     L0F0F
        .byte   $0F
        ora     (L0011),y
        .byte   $37
        ora     (L0011),y
        .byte   $2F
        rol     L006A
        .byte   $0F
        .byte   $0F
L3C0E:  rol     L0037,x
        eor     (L0042,x)
        eor     (L0043,x)
        ora     (L000F),y
        tsx
        .byte   $0F
        adc     (L0063,x)
        .byte   $0F
        .byte   $0F
        jsr     LAA20
        .byte   $0F
        ora     #$09
        .byte   $0B
        cmp     L00C7
        iny
        dex
        brk
        cmp     (L00C1,x)
        .byte   $C3
        sbc     L00E7
        inx
        nop
        brk
        cmp     (L00C1,x)
        .byte   $C3
        bpl     L3BC3
        stx     L0F8F
        sbc     (L00E1,x)
        .byte   $E3
        .byte   $E2
L3C3C:  brk
        brk
L3C3E:  brk
        .byte   $E2
        bpl     L3C52
        .byte   $E3
        .byte   $F2
        .byte   $9F
        .byte   $9F
        sta     (L0083,x)
        bpl     L3BEF
        bpl     L3C3E
        brk
        brk
        sta     L0087
        .byte   $89
        .byte   $89
L3C52:  .byte   $0F
        .byte   $8B
L3C54:  ora     (L0011),y
        ora     (L0011),y
        .byte   $89
        .byte   $89
        ora     (L0011),y
L3C5C:  .byte   $8B
        .byte   $0F
        lsr     L1D4F
        ora     L4B1D
        .byte   $0F
L3C65:  .byte   $44
        adc     L0F6F
        .byte   $2B
        .byte   $0F
        lsr     L000F
        .byte   $0F
        adc     L0F6F
        ora     (L005D),y
        eor     L6B6B,x
        lsr     L0F11,x
        .byte   $0F
        sec
        sec
        .byte   $5B
        .byte   $5B
        and     L0F11,y
        ora     (L000F),y
        adc     L0011
        ora     (L0011),y
        .byte   $11
L3C88:  ora     (L0011),y
        ora     (L0067),y
        ora     (L0032),y
        .byte   $33
        .byte   $0F
        cmp     a:L00DD,x
        ora     (L00CE),y
        brk
        .byte   $CF
        .byte   $0F
        .byte   $DC
        clv
        ldx     L0000
        cpy     L1111
L3C9F:  .byte   $0F
        .byte   $A7
        cmp     a:L00ED,x
        .byte   $EF
        tay
        brk
        .byte   $0F
        lda     (L00A3,x)
        .byte   $93
        .byte   $A7
        .byte   $0F
        .byte   $CF
        brk
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
L3CC2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L3CF1:  .byte   $0F
        .byte   $14
        asl     L00BB,x
        ldy     L0F0F,x
        ora     (L000F),y
        .byte   $34
        .byte   $0F
        ldx     L0FBF,y
        .byte   $0F
        .byte   $3C
        .byte   $0F
        .byte   $0F
        .byte   $0F
L3D04:  sty     L8C0E
        .byte   $11
L3D08:  ldx     L003E,y
        .byte   $57
        ora     (L000F),y
        .byte   $0F
        sta     L508C
        .byte   $52
        bvc     L3D66
        adc     LB90F,y
        .byte   $0F
        bvs     L3D8C
        .byte   $0F
        .byte   $0F
        and     (L0030),y
        lda     L180F,y
        .byte   $1A
        .byte   $1A
        .byte   $D4
        dec     L0000,x
        cmp     LF0DB,y
        bpl     L3D3B
        .byte   $F4
        inc     L0000,x
        .byte   $F9
L3D2F:  .byte   $FB
        bne     L3D04
        .byte   $D2
        beq     L3CC2
        sty     L0F8C
        beq     L3D4A
        .byte   $10
L3D3B:  .byte   $10
L3D3C:  .byte   $8D
        .byte   $8C
L3D3E:  sty     $B010
        .byte   $B2
        .byte   $B2
        .byte   $B2
        .byte   $9E
        .byte   $9F
        bcc     L3D59
        ldy     L0010,x
L3D4A:  bpl     L3D5C
        sty     L0095,x
        ora     (L0096),y
        ora     (L0011),y
        .byte   $0F
        .byte   $8B
        jmp     L7A11

        ora     (L0079),y
L3D59:  adc     L9B99,y
L3D5C:  sta     L5C0F,x
        lsr     L0C1C,x
        .byte   $1C
        .byte   $5A
        .byte   $0F
        .byte   $0C
L3D66:  .byte   $5C
        lsr     L3A0F,x
        .byte   $0F
        eor     L000F,x
        .byte   $0F
        .byte   $7C
        .byte   $7E
L3D70:  .byte   $0F
        adc     #$6B
        ror     L116E
        adc     L0F6B
        .byte   $0F
        .byte   $6B
        ror     L116E
        adc     L0F6B
        .byte   $12
        .byte   $0F
        .byte   $74
        ror     L0011,x
        .byte   $22
        bit     L0011
        .byte   $13
        .byte   $13
        .byte   $11
L3D8C:  ora     (L0028),y
        and     #$0F
        ora     (L00DD),y
        inc     LCFCC
        .byte   $CF
        tay
        .byte   $0F
        .byte   $A7
        brk
        ldx     L00ED
        .byte   $DF
        ora     (L00CE),y
        .byte   $0F
        .byte   $FC
        brk
        sbc     LFEFD,x
        ora     (L00A8),y
        .byte   $0F
        .byte   $92
        brk
        brk
        cpx     a:L000F
        dec     a:L000F,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L3DC1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        ora     L0017,x
        ldy     L0FBD,x
        .byte   $0F
        ora     (L000F),y
        and     L000F,x
        .byte   $BF
        .byte   $59
        .byte   $0F
L3DFF:  .byte   $0F
        and     L0F0F,x
        .byte   $0F
        .byte   $8F
        asl     L368C
        .byte   $B7
        .byte   $3F
        .byte   $57
        ora     (L000F),y
        .byte   $0F
        sty     L518C
        .byte   $53
        eor     (L0053),y
        ora     (L000F),y
        tsx
        .byte   $0F
        adc     (L0073),y
        .byte   $0F
        .byte   $0F
        bmi     L3E4E
        tsx
        .byte   $0F
        ora     L1B19,y
        cmp     L00D7,x
        cld
        .byte   $DA
        brk
        bpl     L3E3A
        .byte   $F3
        sbc     L00F7,x
L3E2D:  sed
        bpl     L3E30
L3E30:  cmp     (L00D1),y
        .byte   $D3
L3E33:  bpl     L3DC1
L3E35:  sty     L0F8F
        bpl     L3E4A
L3E3A:  .byte   $F3
        .byte   $F2
        .byte   $8C
        .byte   $8C
L3E3E:  .byte   $8F
        .byte   $FA
        lda     (L00B1),y
        .byte   $B3
        sbc     (L009F),y
        .byte   $9F
        sta     (L0011),y
        bpl     L3DFF
L3E4A:  bpl     L3E3E
        sta     L0095,x
L3E4E:  ora     (L0097),y
        dey
        tya
        .byte   $0F
        .byte   $11
L3E54:  ora     (L0003),y
        ora     (L007B),y
        dey
        tya
        txs
        .byte   $9C
        ora     (L000F),y
        eor     L1D5F,x
        ora     L1D58
        .byte   $0F
        .byte   $54
        eor     L0F5F,x
        .byte   $3B
L3E6A:  .byte   $0F
        ora     L0F0F
        adc     L0F7F,x
        adc     #$6D
        adc     L6B6B
        ror     L0F11
        .byte   $0F
        adc     L6B6D
        .byte   $6B
        ror     L0F11
        .byte   $12
        .byte   $0F
        adc     L0011,x
        asl     L2523,x
        .byte   $12
        cpy     L1113
        ora     (L0011),y
        ora     (L000F),y
        clv
        clv
        brk
        cpy     a:L00A8
        .byte   $CF
        .byte   $0F
        cpx     LEDDD
        brk
        .byte   $EF
        dec     L0F00
        .byte   $FC
        brk
        sbc     LFF00,x
        .byte   $CF
        brk
        .byte   $0F
        .byte   $93
        brk
        brk
        cpx     LCF0F
        brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L3EF0:  brk
        bmi     L3F23
        bmi     L3F27
        .byte   $32
        bpl     L3EF8
L3EF8:  ora     (L0030,x)
        eor     (L0000),y
        .byte   $32
        .byte   $32
        brk
        brk
        and     (L0010,x)
        brk
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        and     (L0040,x)
        rti

        ora     (L0010,x)
        bpl     L3F10
        .byte   $01
L3F10:  bmi     L3F42
        bmi     L3F44
        ora     (L0000,x)
        ora     (L0000,x)
        bmi     L3F4A
        brk
        brk
        ora     (L0001,x)
        ora     (L0000,x)
        bpl     L3F32
        .byte   $10
L3F23:  ora     (L0001,x)
        ora     (L0001,x)
L3F27:  ora     (L0032,x)
        .byte   $32
        .byte   $32
        .byte   $03
        ora     (L0002,x)
        .byte   $02
        .byte   $02
        .byte   $32
        .byte   $32
L3F32:  .byte   $32
        .byte   $32
        ora     (L0001,x)
        .byte   $01
L3F37:  brk
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        ora     (L0001,x)
L3F3E:  ora     (L0002,x)
        .byte   $32
        .byte   $32
L3F42:  .byte   $32
        .byte   $32
L3F44:  ora     (L0001,x)
        ora     (L0001,x)
        .byte   $32
        .byte   $32
L3F4A:  .byte   $32
        .byte   $32
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        ora     (L0003,x)
        .byte   $03
        .byte   $03
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0000,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        bpl     L3F67
        .byte   $01
L3F67:  ora     (L0010,x)
        and     (L0010,x)
        ora     (L0010,x)
        bpl     L3F70
        .byte   $01
L3F70:  brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0000,x)
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        .byte   $03
        brk
        ora     (L0001,x)
        ora     (L0003,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     (L0001,x)
        ora     (L0003,x)
        brk
        ora     (L0001,x)
        ora     (L0003,x)
        ora     (L0001,x)
        ora     (L0000,x)
        brk
        ora     (L0002,x)
        .byte   $02
        ora     (L0001,x)
        .byte   $01
L3F9F:  brk
        brk
        ora     (L0002,x)
        .byte   $02
        ora     (L0001,x)
        ora     (L0000,x)
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        brk
        .byte   $01
L3FAE:  ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L3FF1:  inc     LFFE1
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
L4000:  php
L4001:  brk
        brk
        brk
        brk
L4005:  brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$E0
        .byte   $FF
        cpx     #$FF
        brk
        ora     (L0002,x)
        .byte   $03
        .byte   $04
L4015:  ora     L0004
        .byte   $06
L4018:  ora     (L0007,x)
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     L0802
        asl     L100F
        ora     L1104
        php
        asl     L0307
        asl     a
        .byte   $0B
        .byte   $12
        .byte   $0F
        .byte   $13
        .byte   $14
        php
        ora     L0016,x
        .byte   $17
        clc
        .byte   $17
        ora     L1B1A,y
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1B
        .byte   $1C
        ora     L1F1E,x
        jsr     L2020
        jsr     L1C01
        ora     L2121,x
        and     (L0021,x)
        and     (L000C,x)
        .byte   $22
        .byte   $04
        .byte   $23
        brk
        ora     (L0002,x)
        ora     (L0004,x)
        .byte   $04
        asl     a
        bit     L0001
        .byte   $07
        ora     (L0025,x)
        asl     a
        .byte   $12
        .byte   $07
        rol     L0027
        plp
        ora     (L0029,x)
        ora     (L0002,x)
        ora     (L002A,x)
        .byte   $2B
        bit     L2A2D
        clc
        rol     L2F01
        bmi     L40A6
        and     (L0032),y
        .byte   $1B
        .byte   $33
        ora     (L0034,x)
        and     L0036,x
        .byte   $37
        and     L0020,x
        sec
        and     L3939,y
        and     L3939,y
        and     (L0021,x)
        and     (L0021,x)
        and     (L0021,x)
        .byte   $21
L408F:  and     (L0001,x)
        .byte   $07
        .byte   $23
        brk
        ora     (L0007,x)
        brk
        ora     (L0001,x)
        brk
        bit     L0002
        ora     (L0001,x)
        ora     (L0025,x)
        .byte   $27
        .byte   $27
        .byte   $3A
        plp
        brk
        .byte   $3B
L40A6:  .byte   $27
        .byte   $3C
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     L2A3D
        .byte   $2B
        .byte   $2B
        bmi     L40E2
        rol     L3130,x
        .byte   $32
        bmi     L40F6
        rol     L0035,x
        .byte   $3F
        rti

        rti

        eor     (L0040,x)
        .byte   $42
        and     L4339,y
        .byte   $44
        eor     L0046
        eor     L0047
        and     (L0021,x)
        and     (L0021,x)
        and     (L0021,x)
        and     (L0021,x)
        .byte   $02
        ora     (L0001,x)
        brk
        .byte   $07
        pha
        eor     #$49
        ora     (L0000,x)
        .byte   $07
        .byte   $02
        ora     (L004A,x)
        .byte   $4B
        .byte   $4B
        .byte   $27
        .byte   $27
L40E2:  .byte   $27
        plp
        ora     (L004C,x)
        eor     L2B4D
        .byte   $2B
        .byte   $2B
        bit     L2A2D
        bit     L304E
        bmi     L4123
        bmi     L4126
        .byte   $32
L40F6:  rol     L504F,x
        rti

        eor     (L0040,x)
        eor     (L0052),y
        .byte   $53
        .byte   $54
        .byte   $3C
        eor     L0046
        eor     L0055
        lsr     L0057,x
        .byte   $57
L4108:  .byte   $21
L4109:  and     (L0021,x)
        and     (L0021,x)
        cli
        eor     L4959,y
        .byte   $2B
        .byte   $2B
        bit     L5B5A
        .byte   $5A
        cli
        .byte   $5C
        .byte   $5D
L411A:  lsr     L5F5D,x
        .byte   $4F
        .byte   $5F
        cli
        rts

        adc     (L0062,x)
L4123:  adc     (L0062,x)
        .byte   $61
L4126:  .byte   $62
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
        rol     L655F
        .byte   $5F
        cli
        ror     L002E
        ror     L0064
        ror     L0067
        ror     L0058
        .byte   $57
        .byte   $57
L4142:  .byte   $57
        pla
        .byte   $57
        adc     #$5A
        cli
        ror     a
        .byte   $6B
        jmp     (L6D6B)

        ror     L585F
        .byte   $6F
        lsr     L4E63
        bvs     L41A4
        .byte   $5A
        cli
        .byte   $6F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        adc     L0071
        .byte   $72
        .byte   $73
        .byte   $6F
        .byte   $54
        ror     L0054
        .byte   $74
        .byte   $54
        ror     L0070
        .byte   $6F
        .byte   $5B
        adc     L0076,x
        .byte   $77
        sei
        adc     L6F7A,y
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $7B
        .byte   $7C
        .byte   $7D
        .byte   $6F
L4179:  adc     (L0072),y
        .byte   $64
        ror     L0067
        .byte   $63
        lsr     L7E6F
        .byte   $7F
        .byte   $80
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $6F
        sta     (L0081,x)
        cli
        eor     L5959,y
        eor     L6F59,y
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $7C
        adc     L8382,x
        .byte   $82
        .byte   $83
        .byte   $82
        .byte   $83
        sty     L0085
        .byte   $62
        .byte   $61
L41A4:  .byte   $62
        adc     (L0062,x)
        adc     (L005A,x)
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
        stx     L0066
        .byte   $54
        ror     L0087
        .byte   $87
        dey
        .byte   $87
        .byte   $89
L41C0:  .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        eor     L5959,y
        eor     L5959,y
        eor     L5A59,y
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        bvs     L4231
        .byte   $5B
        .byte   $82
        .byte   $83
        .byte   $82
        .byte   $83
        .byte   $82
        bvs     L423E
        .byte   $4F
        .byte   $62
        adc     (L0062,x)
        adc     (L0062,x)
        bvs     L424D
        .byte   $54
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        bvs     L4179
        lsr     L008B,x
        stx     L008B
        .byte   $4F
        sty     L8165
        cli
        sta     L8D89
        .byte   $54
        ror     L0081
        sta     (L0058,x)
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        stx     L5959
        eor     L5959,y
        eor     L5959,y
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
        sty     L585F
        ror     L0088
        ror     L0054
        ror     L0054
        ror     L0058
        .byte   $57
        adc     #$8A
        .byte   $8F
        txa
        bcc     L41C0
        .byte   $8E
        .byte   $59
L4231:  .byte   $92
        .byte   $57
        adc     #$81
        sta     (L007B,x)
        .byte   $7C
        eor     L5959,y
        .byte   $6F
        sta     (L0081,x)
L423E:  .byte   $93
        lsr     L5959
        eor     L816F,y
        sta     (L0056,x)
        .byte   $57
        eor     L5959,y
        .byte   $6F
        .byte   $81
L424D:  sta     (L0058,x)
        eor     L6F59,y
        sta     (L0094,x)
        sta     L0096,x
        sta     L0058,x
        eor     L816F,y
        sty     L004F,x
        .byte   $5F
        .byte   $4F
        cli
        eor     L816F,y
        sty     L008C,x
        ror     L0097
        tya
        sta     L9A7D,y
        .byte   $9B
        txs
        .byte   $9C
        .byte   $7B
        sta     L5E7D,x
        .byte   $9E
        .byte   $62
        .byte   $97
        .byte   $9F
        ldy     #$58
        lsr     L5466
        ror     L0070
        sta     (L0081,x)
        cli
        .byte   $57
        lda     (L00A2,x)
        adc     LA4A3,y
        .byte   $9C
        cli
        eor     L5959,y
        eor     L6F59,y
        .byte   $5F
        cli
        ror     a
        .byte   $6B
        jmp     (L6C6B)

        ror     L585A
        .byte   $6F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        cli
        .byte   $6F
        adc     (L0072),y
        adc     (L0072),y
        adc     (L0072),y
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
        lda     L00A6
        .byte   $A7
        ldx     L00A7
        tay
        .byte   $6F
        .byte   $54
        .byte   $74
        lsr     L4E63
        .byte   $63
        lsr     L5792
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        .byte   $57
        eor     L5959,y
        eor     L5959,y
        eor     L6F59,y
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
        ldy     LABAB
        .byte   $AB
        .byte   $AB
        ldy     L526F
        .byte   $53
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $53
        adc     LAEAD,x
        lda     LAD87
        lda     L63AE
        and     L0087,x
        and     L0087,x
        dey
        .byte   $AF
        bcs     L436A
        lda     (L00B1),y
        lda     (L00B1),y
        lda     (L00B1),y
        lda     (L006F),y
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
        ldy     LABAB
        .byte   $AB
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $52
        .byte   $53
        .byte   $52
        .byte   $52
        .byte   $52
        lda     LADAD
        .byte   $B2
        ldx     LADAD
        .byte   $AD
        .byte   $B3
L4339:  rol     L0035,x
        ldy     L0087,x
        .byte   $87
        and     L0036,x
        lda     (L00B1),y
L4342:  lda     (L00B1),y
        lda     (L00B1),y
        lda     (L00B1),y
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
        ldy     LB561
        adc     (L0062,x)
        adc     (L0062,x)
        .byte   $52
        .byte   $53
L436A:  ldx     L00B7,y
        ldx     L0087,y
        dey
        .byte   $87
        lda     L4FAE
        .byte   $5F
        .byte   $4F
        stx     L008B
        stx     L0035
        .byte   $3F
        .byte   $54
        ror     L0087
        .byte   $89
        sta     LB189
        lda     (L00B1),y
        lda     (L00B1),y
        lda     (L00B1),y
        lda     (L00A9),y
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
        adc     (L0062,x)
        adc     (L0062,x)
        adc     (L0062,x)
        .byte   $61
L43A3:  clv
        adc     (L0062,x)
        adc     (L00B5,x)
        .byte   $87
        .byte   $87
        ldx     L00B7,y
        ldx     L00B7,y
        lda     L8BB7,y
        .byte   $87
        .byte   $4F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        adc     (L0062,x)
        sta     LB0AF
        .byte   $B3
        .byte   $87
        ror     L0054
        ror     L00B1
        lda     (L00B1),y
        lda     (L00B1),y
        .byte   $7F
        ror     LA97F,x
        lda     #$A9
        lda     #$A9
        sta     (L0081,x)
        sta     (L005B,x)
        .byte   $5A
        .byte   $5B
        tsx
        .byte   $6F
        .byte   $5A
        .byte   $5B
        .byte   $5A
        adc     (L0062,x)
        .byte   $9E
        .byte   $BB
        .byte   $6F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        adc     (L00B8,x)
        .byte   $54
        ldy     LBD6E,x
        adc     (L0062,x)
        ldx     L00B7,y
        ldx     L00B7,y
        .byte   $5B
        .byte   $5A
        ldx     L619C,y
L43F1:  .byte   $62
        adc     (L0062,x)
        .byte   $BF
        .byte   $62
        .byte   $9E
        .byte   $62
        adc     (L0062,x)
        .byte   $9E
        .byte   $62
        adc     (L00B5,x)
        adc     (L0062,x)
        ror     L7E7F,x
        .byte   $7F
        ror     L7E7F,x
        .byte   $7F
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
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
        adc     (L0062,x)
        .byte   $9E
L4425:  .byte   $62
        adc     (L0062,x)
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
L442E:  lsr     L0057,x
        adc     (L0062,x)
        adc     (L0062,x)
        adc     (L0062,x)
        cli
        eor     L6261,y
        adc     (L0056,x)
        adc     #$66
        cli
        eor     L647E,y
        ror     L6F58,x
        .byte   $7F
        cli
        eor     L7081,y
        sta     (L0058,x)
        .byte   $6F
L444D:  sta     (L0058,x)
        eor     L5A5B,y
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
        adc     (L0062,x)
        adc     (L0062,x)
        .byte   $9E
        .byte   $62
        adc     (L0062,x)
        cpy     #$77
        ror     L00C1,x
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
        adc     L00C3
        .byte   $6F
        ror     L0054
        ror     L0054
        ror     L0067
        ror     L0092
        .byte   $57
        adc     #$C4
        cmp     L00C4
        lsr     L0057,x
        eor     L6F59,y
        sta     (L0081,x)
        sta     (L0058,x)
        eor     L5A5B,y
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $9E
        .byte   $62
        dec     L00C3
        .byte   $4F
        .byte   $5F
        dec     L00C3
        .byte   $54
        ror     L0054
        ror     L0054
        ror     L0054
        ror     L00C2
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $C7
        iny
        .byte   $5B
        .byte   $5A
        bvs     L4511
        .byte   $4F
        .byte   $5F
        cmp     #$5E
        .byte   $4F
        .byte   $5F
        bvs     L4520
        .byte   $54
        ror     L0054
        ror     L0054
        ror     L00CA
        .byte   $7F
        .byte   $CB
        .byte   $CB
        ror     LCB7F,x
        .byte   $CB
        .byte   $6F
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L005B,x)
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        .byte   $5A
        .byte   $5B
        cli
        cpy     L4F5F
        .byte   $5F
        .byte   $4F
        .byte   $5F
        .byte   $4F
        cli
        .byte   $54
        ror     L0054
        ror     L0090
        sta     (L0057),y
        stx     LC8C7
        .byte   $C7
        .byte   $5A
        cmp     L7C7B
        .byte   $7C
        cmp     #$5E
        eor     L4F5F,x
        dec     LCF5D
        .byte   $54
        ror     L0054
        ror     L0054
        bne     L4553
        cmp     (L00CB),y
        .byte   $7F
        ror     LB17F,x
        lda     (L00B1),y
        lda     (L0081),y
        sta     (L0081,x)
        sta     (L00A9,x)
        lda     #$A9
        lda     #$D2
L4511:  .byte   $D2
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
L4520:  .byte   $D2
        cmp     L00D6,x
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
        .byte   $DD
        .byte   $DE
L4545:  .byte   $DF
L4546:  cpx     #$E1
        .byte   $E2
        .byte   $E2
        .byte   $E2
        .byte   $E2
L454C:  .byte   $E3
L454D:  .byte   $D2
L454E:  .byte   $E4
L454F:  sbc     L00E6
        .byte   $E7
        .byte   $E6
L4553:  .byte   $E7
        inc     L00E7
        inc     L00E7
        inx
        sbc     #$EA
        sbc     #$EB
        cpx     LEEED
        .byte   $EF
        inc     L00E7
        beq     L454C
        beq     L454E
        sbc     (L00EC),y
        .byte   $EB
        cpx     LF2ED
        nop
        sbc     #$EA
        .byte   $F3
        .byte   $F4
        sbc     L00F6,x
        .byte   $F7
        inc     L00F5,x
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
        sbc     L81FD,x
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
L45AF:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $81
L4608:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $81
L4639:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
L4647:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $81
L464E:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
L4674:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $81
L4699:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $81
L46C0:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
L46DA:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
L4746:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $81
L4769:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $81
L4800:  sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        sta     (L0081,x)
        .byte   $A9
L4811:  rti

        sta     L0099
        ldx     #$01
        stx     L004D
        lda     L04D0,x
        bpl     L4837
        ldy     L04E0,x
        cpy     #$47
        bcc     L4837
        lda     L8836,y
        sta     L0000
        lda     L88B6,y
        sta     L0001
        lda     #$88
        pha
        lda     #$26
        pha
        jmp     (L0000)

L4837:  inc     L004D
        ldx     L004D
        cpx     #$10
        bne     L4842
        jmp     L8835

L4842:  jmp     L8808

        rts

        rol     L0036,x
L4848:  rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        rol     L0036,x
        .byte   $89
        .byte   $F7
        bit     LBD46
        .byte   $BD
        .byte   $B3
L4895:  sed
        rol     L0036,x
        inc     L004C
        adc     (L00EC),y
        inc     L00A7
        dec     L775A,x
        bcc     L4895
        .byte   $E2
        bvc     L4837
        sta     (L00D4),y
        .byte   $6F
        and     LE623,x
        .byte   $37
        inc     L007A
        sty     L00C5,x
        cmp     L003E
        .byte   $89
        .byte   $89
        .byte   $89
        cmp     #$C9
        cmp     #$C9
        cmp     #$C9
        cmp     #$C9
        .byte   $C9
L48BF:  cmp     #$C9
        .byte   $C9
L48C2:  cmp     #$C9
        .byte   $83
        adc     (L0089),y
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
L48D5:  .byte   $89
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
        .byte   $89
        .byte   $89
        lda     L00A1
        tay
        ldy     L00A4
        ldy     L00B3
        .byte   $97
        tya
        .byte   $97
L4919:  sta     L9B99,x
        sty     L9F9D
        ldy     #$A9
        ldy     L94AC
        .byte   $93
        .byte   $AF
        .byte   $AF
        lda     (L00AD),y
        .byte   $93
        lda     L898C
        sty     L968E
        bcc     L48C2
        .byte   $92
        .byte   $89
        .byte   $89
        .byte   $89
        stx     L0096,y
        stx     L0096,y
        stx     L0096,y
        stx     L0096,y
        stx     L0096,y
        stx     L0096,y
        stx     L0096,y
        bcc     L48D5
        rts

        lda     L04D0,x
        and     #$0F
        bne     L495B
        lda     #$1E
        sta     L0480,x
        lda     #$3C
        sta     L0490,x
        .byte   $FE
L4959:  bne     L495F
L495B:  lda     L04D0,x
        .byte   $29
L495F:  .byte   $02
        bne     L498A
        lda     L0480,x
        beq     L496E
        jsr     LF4FD
        dec     L0480,x
        rts

L496E:  lda     L0490,x
        bne     L4986
        inc     L04D0,x
        lda     #$80
        sta     L0530,x
        lda     #$00
        sta     L0540,x
        lda     #$3C
        sta     L0480,x
        rts

L4986:  dec     L0490,x
        rts

L498A:  lda     L0480,x
        beq     L4996
        jsr     LF51B
        dec     L0480,x
        rts

L4996:  jmp     LFA9A

        lda     L04D0,x
        and     #$0F
        bne     L49B6
        sta     L0560,x
        lda     #$80
        sta     L0550,x
        lda     #$10
        sta     L0490,x
        inc     L04D0,x
        lda     L0510,x
        sta     L04B0,x
L49B6:  lda     L04E0,x
        cmp     #$48
        beq     L49D3
        cmp     #$6D
        beq     L49CA
        cmp     #$6E
        beq     L49CD
        cmp     #$6F
        beq     L49D0
        rts

L49CA:  jmp     L8B23

L49CD:  jmp     L8C04

L49D0:  jmp     L8C05

L49D3:  lda     L0050
        cmp     #$07
        beq     L4A12
        lda     L0050
        cmp     #$0B
        bne     L49E2
        jmp     L8A5E

L49E2:  lda     L0480,x
        bne     L4A30
        jsr     LF928
        cmp     #$0C
        bcs     L4A12
        jsr     LF919
        bcc     L4A12
        cmp     #$14
        bcs     L4A12
        cmp     #$0C
        bcc     L4A12
        lda     L0560
        bmi     L4A13
L4A00:  lda     L0050
        cmp     #$04
        beq     L4A12
        lda     #$04
        sta     L0050
        lda     #$12
        jsr     LF850
        inc     L0480,x
L4A12:  rts

L4A13:  lda     L0520
        cmp     L0520,x
        bne     L4A12
        jsr     LF919
        bcc     L4A12
        cmp     #$0F
        bcc     L4A12
        cmp     #$14
        bcs     L4A12
        jsr     LF928
        cmp     #$08
        bcc     L4A00
        rts

L4A30:  lda     L04D0,x
        and     #$02
        bne     L4A56
        lda     L0490,x
        beq     L4A84
        jsr     LF539
        lda     L0460
        clc
        adc     #$80
        sta     L0460
        lda     L0510
        adc     #$00
L4A4D:  sta     L0510
        cmp     #$F0
        dec     L0490,x
        rts

L4A56:  lda     L0050
        beq     L4A73
        lda     L0050
        beq     L4A83
        cmp     #$04
        beq     L4A83
        cmp     #$01
        beq     L4A73
        cmp     #$02
        beq     L4A73
        cmp     #$06
        beq     L4A73
        lda     L0560
        bmi     L4A13
L4A73:  lda     L04B0,x
        sta     L0510,x
        lda     #$80
        sta     L04D0,x
        lda     #$00
        sta     L0480,x
L4A83:  rts

L4A84:  inc     L04D0,x
        jsr     L8AD1
        lda     L04A0,x
        bne     L4A83
        jsr     LFA4C
        bcs     L4A83
        sty     L000F
        lda     L04F0,x
        clc
        adc     #$1C
        pha
        lda     L0500,x
        adc     #$00
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     #$78
        .byte   $99
L4AAE:  bpl     $4AB5
        lda     L0520,x
        sta     L0520,y
        jsr     L8AAF
        lda     #$80
        sta     L0590,y
        rts

        lda     #$33
        jsr     LFA84
        lda     #$F0
        sta     L0400,y
        lda     #$66
        sta     L04E0,y
        lda     #$8E
        sta     L0570,y
        lda     #$00
        sta     L0530,y
        sta     L05A0,y
        lda     #$01
        sta     L0540,y
        rts

        lda     L04E0,x
        cmp     #$48
        beq     L4AF5
        cmp     #$6D
        beq     L4AF9
        cmp     #$6E
        beq     L4AFD
        cmp     #$6F
        beq     L4B01
        rts

L4AF5:  lda     #$80
        bne     L4B03
L4AF9:  lda     #$81
        bne     L4B03
L4AFD:  lda     #$82
        bne     L4B03
L4B01:  lda     #$83
L4B03:  sta     L0001
        lda     #$00
        sta     L0000
        ldy     #$0F
L4B0B:  lda     L04D0,y
        bmi     L4B27
L4B10:  dey
        cpy     #$04
        bne     L4B0B
        lda     L0000
        cmp     #$01
        beq     L4B21
        lda     #$00
L4B1D:  .byte   $9D
L4B1E:  ldy     #$04
        rts

L4B21:  lda     #$FF
        sta     L04A0,x
        rts

L4B27:  lda     L0001
        cmp     L0590,y
        bne     L4B10
        inc     L0000
        jmp     L8B00

        lda     L0050
        cmp     #$07
        beq     L4B72
        lda     L0050
        cmp     #$0B
        bne     L4B42
        jmp     L8BB4

L4B42:  lda     L0480,x
        bne     L4B88
        jsr     LF928
        cmp     #$0C
L4B4C:  bcs     L4B72
        jsr     LF919
        bcc     L4B72
        cmp     #$14
        bcs     L4B72
        cmp     #$0C
        bcc     L4B72
        lda     L0560
        bmi     L4B73
L4B60:  lda     L0050
        cmp     #$04
        beq     L4B72
        lda     #$04
        sta     L0050
        lda     #$12
        jsr     LF850
        .byte   $FE
        .byte   $80
L4B71:  .byte   $04
L4B72:  rts

L4B73:  jsr     LF919
        bcc     L4B72
        cmp     #$0E
        bcc     L4B72
        cmp     #$14
        bcs     L4B72
        jsr     LF928
        cmp     #$08
        bcc     L4B60
        rts

L4B88:  lda     L04D0,x
        and     #$02
        bne     L4BAC
        lda     L0490,x
        beq     L4BDA
        jsr     LF539
        lda     L0460
        clc
        adc     #$80
        sta     L0460
        lda     L0510
        adc     #$00
        sta     L0510
        dec     L0490,x
        rts

L4BAC:  lda     L0050
        beq     L4BD9
        lda     L0050
        beq     L4BD9
        cmp     #$04
        beq     L4BD9
        cmp     #$01
        beq     L4BC9
        cmp     #$02
        beq     L4BC9
        cmp     #$06
        beq     L4BC9
        lda     L0560
        bmi     L4B73
L4BC9:  lda     L04B0,x
        sta     L0510,x
        lda     #$80
        sta     L04D0,x
        lda     #$00
        sta     L0480,x
L4BD9:  rts

L4BDA:  inc     L04D0,x
        jsr     L8AD1
        lda     L04A0,x
        bne     L4BD9
        jsr     LFA4C
        bcs     L4BD9
        sty     L000F
        lda     L04F0,x
        sec
        sbc     #$44
        pha
        lda     L0500,x
L4BF6:  sec
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     #$C8
        sta     L0510,y
        lda     L0520,x
L4C08:  sta     L0520,y
        jsr     L8AAF
        lda     #$81
        sta     L0590,y
        rts

        rts

        lda     L0050
        cmp     #$07
        beq     L4C54
        lda     L0050
        cmp     #$0B
        bne     L4C24
        jmp     L8C96

L4C24:  lda     L0480,x
        bne     L4C6A
        jsr     LF928
        cmp     #$0C
        bcs     L4C54
        jsr     LF919
        bcc     L4C54
        cmp     #$14
        bcs     L4C54
        cmp     #$0C
        bcc     L4C54
        lda     L0560
        bmi     L4C55
L4C42:  lda     L0050
        cmp     #$04
        beq     L4C54
        lda     #$04
        .byte   $85
L4C4B:  bvc     L4BF6
        .byte   $12
        .byte   $20
        .byte   $50
L4C50:  sed
        inc     L0480,x
L4C54:  rts

L4C55:  jsr     LF919
        bcc     L4C54
        cmp     #$0E
        bcc     L4C54
        cmp     #$12
        bcs     L4C54
        jsr     LF928
        cmp     #$08
        bcc     L4C42
        rts

L4C6A:  lda     L04D0,x
        and     #$02
        bne     L4C8E
        lda     L0490,x
        beq     L4CBC
        jsr     LF539
        lda     L0460
        clc
        adc     #$80
        .byte   $8D
L4C80:  rts

        .byte   $04
        lda     L0510
        adc     #$00
        sta     L0510
        dec     L0490,x
        rts

L4C8E:  lda     L0050
        beq     L4CBB
        lda     L0050
        beq     L4CBB
        cmp     #$04
        beq     L4CBB
        cmp     #$01
        beq     L4CAB
        cmp     #$02
        beq     L4CAB
        cmp     #$06
        beq     L4CAB
        lda     L0560
        .byte   $30
L4CAA:  tax
L4CAB:  lda     L04B0,x
        sta     L0510,x
        lda     #$80
        sta     L04D0,x
        lda     #$00
        sta     L0480,x
L4CBB:  rts

L4CBC:  inc     L04D0,x
        jsr     L8AD1
        lda     L04A0,x
        bne     L4CBB
        jsr     LFA4C
        bcs     L4CBB
        sty     L000F
        lda     L04F0,x
        sec
        sbc     #$08
        pha
        lda     L0500,x
        sec
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     #$A7
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        jsr     L8AAF
        lda     #$83
        sta     L0590,y
        rts

        lda     L04D0,x
        and     #$0F
        tay
        lda     L8E74,y
        sta     L0000
L4D01:  lda     L8E77,y
        sta     L0001
        jmp     (L0000)

        lda     #$00
        sta     L0540,x
        sta     L0480,x
        lda     #$80
        sta     L0530,x
        lda     L04E0,x
        cmp     #$56
        beq     L4D21
        lda     #$01
        bne     L4D23
L4D21:  lda     #$02
L4D23:  sta     L0580,x
        inc     L04D0,x
        rts

        lda     L0500,x
        .byte   $CD
        brk
L4D2F:  ora     L00D0
        ora     (L0020),y
        ora     $C9F9,y
        ora     L00B0,x
        asl     a
        jsr     LF928
        cmp     #$10
        bcs     L4D43
        inc     L04D0,x
L4D43:  rts

        .byte   $A0
L4D45:  .byte   $02
        lda     L0580,x
        cmp     #$02
        beq     L4D55
L4D4D:  lda     #$5C
        jsr     LF200
        jmp     L8D4A

L4D55:  lda     #$5F
        jsr     LF254
        .byte   $A5
L4D5B:  bpl     L4D4D
        .byte   $1F
        lda     L0580,x
        eor     #$03
        sta     L0580,x
        lda     L0480,x
        beq     L4D7D
        lda     L0580,x
        cmp     #$02
        bne     L4D7D
        inc     L04F0
        lda     L04F0
        bne     L4D7D
        .byte   $EE
L4D7B:  brk
        .byte   $05
L4D7D:  lda     #$00
        sta     L0480,x
        lda     L0520,x
        cmp     L0520
        bne     L4D43
        jsr     LF919
        cmp     #$15
        bcs     L4D43
        jsr     LF928
        cmp     #$10
        bcs     L4D43
        lda     L0050
        cmp     #$0E
        bne     L4DB3
        jsr     LF919
        cmp     #$10
        bcs     L4DB3
        lda     #$01
        sta     L0050
        jsr     LF607
        lda     #$00
        sta     L0570,x
        beq     L4DBD
L4DB3:  lda     L0560
        bmi     L4DBD
        lda     #$8E
        sta     L0570,x
L4DBD:  lda     L0050
        cmp     #$0E
        beq     L4DD4
        cmp     #$00
        beq     L4DD4
        cmp     #$02
        beq     L4DD4
        cmp     #$03
        beq     L4DD4
        cmp     #$06
        beq     L4DD4
        rts

L4DD4:  lda     #$01
        sta     L0480,x
        lda     L0580,x
        cmp     #$02
        beq     L4E23
        lda     L0470
        clc
        adc     #$80
        sta     L0470
        lda     L04F0
        adc     #$00
        sta     L04F0
        bcc     L4DFB
        lda     L0500
        adc     #$00
        sta     L0500
L4DFB:  stx     L0013
        lda     #$00
        sta     L0040
        ldy     #$02
        sty     L0041
        ldx     #$00
        jsr     LEB52
        lda     L0010
        cmp     #$04
        bcc     L4E17
        lda     L007C
        bne     L4E1D
        jsr     L8E56
L4E17:  lda     L0010
        cmp     #$03
        bcc     L4E20
L4E1D:  jsr     LED85
L4E20:  ldx     L0013
        rts

L4E23:  lda     L0470
        sec
        sbc     #$80
        sta     L0470
        lda     L04F0
        sbc     #$00
        sta     L04F0
        bcs     L4E3E
        lda     L0500
        sbc     #$00
        sta     L0500
L4E3E:  stx     L0013
        lda     #$03
        sta     L0040
        .byte   $A0
L4E45:  .byte   $02
        sty     L0041
        ldx     #$00
        jsr     LEB52
L4E4D:  .byte   $A5
L4E4E:  .byte   $10
L4E4F:  cmp     #$04
        bcc     L4E5A
        lda     L007C
        bne     L4E60
        jsr     L8E56
L4E5A:  lda     L0010
        cmp     #$03
        bcc     L4E63
L4E60:  jsr     LED9D
L4E63:  ldx     L0013
        rts

L4E66:  lda     L007C
        bne     L4E83
        lda     #$06
        sta     L0050
        lda     #$0F
        sta     L0051
        lda     #$09
        jsr     LFA78
        lda     #$15
        jsr     LF850
        lda     #$3C
        sta     L007C
        jsr     LF9C2
L4E83:  rts

        sbc     L341A,y
        sty     L8D8D
        lda     L04D0,x
        and     #$0F
        bne     L4EA4
        sta     L0480,x
        sta     L0560,x
        lda     #$80
        sta     L0550,x
        inc     L04D0,x
        lda     #$1E
        sta     L0490,x
L4EA4:  lda     L0480,x
        bne     L4EB5
        lda     L0490,x
        bne     L4EB1
        inc     L0480,x
L4EB1:  dec     L0490,x
        rts

L4EB5:  jsr     LF919
        cmp     #$19
        bcs     L4F2F
        jsr     LF928
        cmp     #$13
        bcs     L4F2F
        lda     #$06
        sta     L0040
        ldy     #$02
        sty     L0041
        stx     L000F
        ldx     #$00
        jsr     LEB52
        lda     L0010
        cmp     #$03
        bcc     L4EE0
        jsr     LEDD2
        ldx     L000F
        jmp     L8F1F

L4EE0:  ldx     L000F
        lda     L0050
        cmp     #$03
        bne     L4F0D
        lda     L0460
        clc
        adc     #$80
        sta     L0460
        lda     L0510
        adc     #$00
        sta     L0510
        cmp     #$F0
        bcc     L4F2F
        adc     #$0F
        .byte   $8D
L4F00:  bpl     $4F07
L4F02:  lda     L0520
        adc     #$00
        sta     L0520
        jmp     L8F1F

L4F0D:  lda     L0460
        clc
        adc     #$00
        sta     L0460
        lda     L0510
        adc     #$01
        sta     L0510
        cmp     #$F0
        bcc     L4F2F
        adc     #$0F
        sta     L0510
        lda     L0520
        adc     #$00
        sta     L0520
L4F2F:  jsr     LF539
        lda     L0510,x
        cmp     #$E8
        bcc     L4F49
        lda     L0050
        cmp     #$03
        bne     L4F43
        lda     #$00
        sta     L0050
L4F43:  jsr     L8F3A
        jsr     LFA9A
L4F49:  rts

        jsr     LFA4C
        bcs     L4F49
L4F4F:  lda     L04F0,x
        sta     L04F0,y
        lda     L0500,x
        sta     L0500,y
        lda     #$08
        .byte   $99
        .byte   $10
L4F5F:  ora     L00BD
        jsr     L9905
        jsr     LA905
        .byte   $33
        jsr     LFA84
        lda     #$68
        sta     L04E0,y
        lda     L0590,x
        sta     L0590,y
        lda     #$8E
        sta     L0570,y
        lda     #$00
        sta     L05A0,y
        rts

        lda     L04D0,x
        and     #$0F
        bne     L4FB6
        sta     L0490,x
        sta     L0540,x
        lda     #$62
        sta     L0550,x
        lda     #$01
        sta     L0560,x
        lda     #$92
        sta     L0530,x
        inc     L04D0,x
        lda     #$3C
        sta     L0480,x
        ldy     L0022
        lda     (L0032),y
        cmp     #$27
        bne     L4FB6
        .byte   $A5
L4FAE:  .byte   $2F
        cmp     #$02
        bne     L4FB6
        jmp     LFA9A

L4FB6:  lda     L0095
        and     #$03
        bne     L4FC1
        lda     #$2A
        jsr     LF850
L4FC1:  lda     L0420,x
        cmp     #$A5
        beq     L4FD1
        cmp     #$A4
        beq     L5005
        lda     #$A5
        jsr     LFA6C
L4FD1:  lda     L0400,x
        cmp     #$50
        beq     L5004
        cmp     #$10
        beq     L5004
        lda     L0410,x
        cmp     #$10
        bne     L4FFB
        lda     L0430,x
        cmp     #$02
        bne     L4FFB
        lda     L0580,x
        sta     L0000
        jsr     LF81D
        jsr     L9039
        lda     L0000
        sta     L0580,x
        rts

L4FFB:  cmp     #$15
        bne     L5004
        lda     #$A4
        jsr     LFA6C
L5004:  rts

L5005:  lda     L0480,x
        bne     L501C
        lda     #$3D
        sta     L0480,x
        lda     L0490,x
        eor     #$01
        sta     L0490,x
        lda     #$A5
        jsr     LFA6C
L501C:  dec     L0480,x
        lda     L0580,x
        and     #$01
        beq     L5039
        jsr     LF4FD
        jsr     LF24B
        lda     L0490,x
        and     #$01
        bne     L5036
        jmp     LF539

L5036:  jmp     LF55E

L5039:  jsr     LF51B
        jsr     LF2A6
        lda     L0490,x
        and     #$01
        bne     L5036
        jmp     LF539

        .byte   $20
        .byte   $4C
L504B:  .byte   $FA
L504C:  bcs     L508E
        .byte   $84
L504F:  .byte   $0F
L5050:  lda     L0580,x
        sta     L0580,y
        .byte   $29
L5057:  .byte   $02
        tay
        lda     L04F0,x
        clc
        adc     L907F,y
        pha
        lda     L0500,x
        adc     L9080,y
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     L0510,x
        clc
        adc     #$04
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$A6
        jsr     LFA84
        lda     #$7E
        sta     L04E0,y
        lda     #$0A
        .byte   $99
L508C:  bvs     L5093
L508E:  rts

        .byte   $0C
        brk
        .byte   $F4
        .byte   $FF
L5093:  lda     L04D0,x
        and     #$0F
        bne     L50AF
        sta     L0530,x
        lda     #$6E
        sta     L0550,x
        lda     #$01
        sta     L0560,x
        lda     #$01
        sta     L0540,x
        inc     L04D0,x
L50AF:  lda     L0580,x
        and     #$01
        beq     L50BC
        jsr     LF4FD
        jmp     L90AF

L50BC:  jsr     LF51B
        lda     #$28
        ldy     #$01
        jsr     LF2D7
        lda     L0010
        beq     L50D4
        lda     #$14
        jsr     LFA6C
        lda     #$00
        sta     L04E0,x
L50D4:  rts

        lda     L04D0,x
        and     #$0F
        bne     L50F2
        sta     L0560,x
        lda     #$80
        sta     L0550,x
        lda     #$10
        sta     L0490,x
        inc     L04D0,x
        lda     L0510,x
        sta     L04B0,x
L50F2:  lda     L0050
        cmp     #$07
        beq     L5131
        lda     L0050
        cmp     #$0B
        bne     L5101
        .byte   $4C
        .byte   $7C
L5100:  .byte   $91
L5101:  lda     L0480,x
        bne     L5147
        jsr     LF928
        cmp     #$0C
        bcs     L5131
        jsr     LF919
        bcc     L5131
        cmp     #$14
        bcs     L5131
        cmp     #$0C
        bcc     L5131
        lda     L0560
        bmi     L5132
L511F:  lda     L0050
        cmp     #$04
        beq     L5131
        lda     #$04
        sta     L0050
        lda     #$12
        jsr     LF850
        inc     L0480,x
L5131:  rts

L5132:  jsr     LF919
        bcc     L5131
        cmp     #$0F
        bcc     L5131
        cmp     #$14
        bcs     L5131
        jsr     LF928
        cmp     #$08
        bcc     L511F
        rts

L5147:  lda     L04D0,x
        and     #$02
        bne     L5174
        .byte   $BD
        .byte   $90
L5150:  .byte   $04
        beq     L51A2
        jsr     LF539
        lda     L0460
        clc
        adc     #$80
        sta     L0460
        lda     L0510
        adc     #$00
        sta     L0510
        cmp     #$F0
        bcc     L5170
        adc     #$0F
        sta     L0510
L5170:  dec     L0490,x
        rts

L5174:  lda     L0050
        beq     L5191
        cmp     #$04
        beq     L51A1
        cmp     #$01
        beq     L5191
        cmp     #$02
        beq     L5191
        cmp     #$03
        beq     L5191
        cmp     #$06
        beq     L5191
L518C:  lda     L0560
        bmi     L5132
L5191:  lda     L04B0,x
        sta     L0510,x
        lda     #$80
        sta     L04D0,x
        lda     #$00
        sta     L0480,x
L51A1:  rts

L51A2:  inc     L04D0,x
        lda     L04E0,x
        cmp     #$6A
        bne     L51B0
        jsr     L91AA
        rts

L51B0:  jsr     L9201
        lda     L04A0,x
        bne     L51A1
        beq     L51C2
        jsr     L9201
        lda     L04A0,x
        bne     L51A1
L51C2:  jsr     LFA4C
        bcs     L51A1
        sty     L000F
        lda     L04F0,x
        clc
        adc     #$20
        pha
        lda     L0500,x
L51D3:  adc     #$00
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     #$18
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$34
        jsr     LFA84
        lda     #$B0
        sta     L0400,y
        lda     #$00
        sta     L0570,y
        sta     L05A0,y
        lda     #$6C
        sta     L04E0,y
        lda     L04E0,x
        cmp     #$6A
        bne     L520B
        lda     #$90
        bne     L520D
L520B:  lda     #$91
L520D:  sta     L0590,y
        rts

        lda     #$00
        sta     L0000
        lda     L04E0,x
        cmp     #$6A
        bne     L5220
        lda     #$90
        bne     L5222
L5220:  lda     #$91
L5222:  sta     L0001
        ldy     #$0F
L5226:  lda     L04D0,y
        bmi     L5242
L522B:  dey
        cpy     #$04
        .byte   $D0
L522F:  inc     L00A5,x
        brk
        cmp     #$01
        beq     L523C
        lda     #$00
        sta     L04A0,x
        rts

L523C:  lda     #$FF
        sta     L04A0,x
        rts

L5242:  lda     L0001
        cmp     L0590,y
        bne     L522B
        inc     L0000
        jmp     L921B

        lda     L04D0,x
        and     #$0F
        tay
        lda     L9337,y
        sta     L0000
        lda     L933A,y
        sta     L0001
        jmp     (L0000)

        sta     L0480,x
        sta     L04B0,x
        sta     L0550,x
        lda     #$01
        sta     L0560,x
L526F:  inc     L04D0,x
        lda     #$01
        sta     L04A0,x
        lda     #$08
        sta     L0490,x
        rts

        jsr     LF539
        jsr     L92C3
        lda     L0510,x
        cmp     #$50
        bcc     L5297
        inc     L04D0,x
        lda     #$80
        sta     L0550,x
        lda     #$00
        sta     L0560,x
L5297:  dec     L0490,x
        bne     L52A6
        lda     #$2E
        jsr     LF850
        lda     #$08
        sta     L0490,x
L52A6:  rts

        jsr     LF55E
        jsr     L92C3
        lda     L0510,x
        cmp     #$14
        bne     L52C3
        lda     L0480,x
        beq     L52C0
        jsr     LF607
        lda     #$01
        sta     L0050
L52C0:  jmp     LFA9A

L52C3:  dec     L0490,x
        bne     L52D2
        lda     #$2E
        jsr     LF850
        lda     #$10
        sta     L0490,x
L52D2:  rts

        dec     L04A0,x
        bne     L5337
        lda     L0480,x
        beq     L52ED
        lda     L0560
        bpl     L5332
        lda     #$00
        sta     L0480,x
        lda     L0014
        cmp     #$04
        beq     L5338
L52ED:  lda     L0050
        cmp     #$07
        beq     L5332
        lda     L0500,x
        cmp     L0500
        bne     L5332
        jsr     LF928
        cmp     #$08
        bpl     L5332
        lda     L0510
        sta     L04B0,x
        sec
        sbc     #$10
        sta     L0510
        jsr     LF919
        ldy     L04B0,x
        sty     L0510
        cmp     #$11
        bpl     L5332
        lda     #$04
        sta     L0050
        lda     L0510,x
        clc
        adc     #$10
        sta     L0510
        lda     #$01
        sta     L0480,x
        lda     #$FF
        sta     L0560
L5332:  lda     #$01
        sta     L04A0,x
L5337:  rts

L5338:  lda     #$1E
        sta     L04A0,x
        lda     #$01
        sta     L0050
        lda     #$00
        .byte   $9D
        .byte   $80
L5345:  .byte   $04
        rts

        eor     (L006D),y
        .byte   $97
        .byte   $92
        .byte   $92
        .byte   $92
        jsr     LF928
        cmp     #$18
L5352:  bcs     L535F
        jsr     LF919
        cmp     #$10
        bcs     L535F
        lda     #$FF
        .byte   $85
L535E:  .byte   $9E
L535F:  rts

        lda     L04D0,x
        and     #$0F
        bne     L5384
        sta     L04A0,x
        lda     L0031
        cmp     #$02
        bne     L5376
        jsr     LB487
        jmp     L9369

L5376:  jsr     LB454
        lda     #$3C
        sta     L0480,x
        sta     L0490,x
        inc     L04D0,x
L5384:  lda     L0490,x
        bne     L539D
        lda     #$3C
        sta     L0490,x
        lda     L0066
        cmp     #$FF
        bne     L539A
        jsr     L93D6
        .byte   $4C
        .byte   $8D
L5399:  .byte   $93
L539A:  jsr     L9440
L539D:  dec     L0490,x
        lda     L0480,x
        bne     L53D9
        lda     #$3C
        sta     L0480,x
        lda     L04D0,x
        and     #$02
        bne     L53CC
        lda     L04A0,x
        bne     L53DD
        lda     #$79
        sta     L05F4
        dec     L05F2
        lda     L05F2
L53C1:  cmp     #$70
        bne     L53C8
        inc     L04A0,x
L53C8:  inc     L04D0,x
        rts

L53CC:  dec     L05F4
        lda     L05F4
        cmp     #$70
        bne     L53D9
        dec     L04D0,x
L53D9:  .byte   $DE
        .byte   $80
L53DB:  .byte   $04
        rts

L53DD:  lda     L009C
        sta     L005B
        lda     #$00
        sta     L0066
        rts

        jsr     LFA4C
        bcs     L542F
        sty     L000F
        lda     #$04
        sta     L0580,y
        lda     L0500
        sta     L0500,y
        lda     L0520
        sta     L0520,y
        lda     #$00
L5400:  sta     L0510,y
        sta     L0550,y
        sta     L05A0,y
        lda     #$38
        jsr     LFA84
        lda     #$0B
        sta     L04E0,y
        lda     #$50
        sta     L0570,y
        lda     #$01
        sta     L0560,y
        lda     L00E6
        clc
        adc     L00E5
        sta     L00E5
        and     #$1F
        tay
        lda     L9420,y
        ldy     L000F
        .byte   $99
L542D:  beq     $5433
L542F:  rts

        bpl     L5492
        jsr     L3090
        ldy     #$80
        cpx     #$30
        bpl     L547B
        cpy     #$50
L543D:  ldy     #$E0
        bmi     L53C1
        bvs     L5453
        ldy     #$40
        cpx     #$80
        rti

        .byte   $80
        bvs     L53DB
        bpl     L542D
        rts

        cpy     #$80
        lda     L04AF
L5453:  .byte   $C9
L5454:  ora     L00F0
        rol     L00A5
        cpx     L0065
        sbc     L004D
        beq     $5462
        sta     L00E4
        sta     L00E6
        and     #$07
        tay
        .byte   $B9
L5466:  ror     LCD94
        .byte   $9F
        .byte   $04
        bne     L5474
        iny
        cpy     #$06
        bcc     L5474
        ldy     #$00
L5474:  lda     L946E,y
        .byte   $8D
        .byte   $9F
L5479:  .byte   $04
L547A:  .byte   $20
L547B:  ror     L0094,x
L547D:  rts

        brk
        ora     (L0002,x)
        .byte   $03
        .byte   $04
        ora     L0001
        .byte   $04
        sty     L000F
        jsr     LFA4C
        bcs     L54E3
        stx     L000E
        ldx     L049F
L5492:  lda     L94D6,x
        .byte   $99
L5496:  beq     $549C
        lda     L94DC,x
        sta     L0510,y
        ldx     L000E
        lda     L050F
        sta     L0500,y
        lda     L052F
        sta     L0520,y
        stx     L0008
        tya
        tax
        lda     #$3D
        jsr     LFA6C
        ldx     L0008
        lda     #$5D
        sta     L04E0,y
        lda     #$10
        sta     L0570,y
        lda     #$80
        sta     L04D0,y
        inc     L04AF
        lda     #$00
        sta     L0530,y
        lda     #$01
        sta     L0540,y
        lda     L04F0,y
        cmp     #$E8
        beq     L54DE
        lda     #$01
        bne     L54E0
L54DE:  lda     #$02
L54E0:  sta     L0580,y
L54E3:  ldy     L000F
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
        lda     L04D0,x
        and     #$0F
        bne     L552E
        sta     L04B0,x
        lda     L0580,x
        .byte   $29
L5500:  ora     (L00F0,x)
        .byte   $0C
L5503:  jsr     LF4FD
        lda     L04F0,x
        cmp     #$F8
        beq     L556E
        bne     L5519
L550F:  jsr     LF51B
        lda     L04F0,x
        cmp     #$08
        beq     L556E
L5519:  lda     L0580,x
        sta     L0490,x
        lda     #$02
        sta     L0580,x
        lda     L0490,x
        sta     L0580,x
        jsr     L9564
        rts

L552E:  cmp     #$02
        beq     L5560
        jsr     LF5C9
        .byte   $BD
        .byte   $10
L5537:  ora     L00DD
        bcs     L553F
L553B:  bpl     L554C
        .byte   $BD
        .byte   $80
L553F:  ora     L0029
        ora     (L00F0,x)
        .byte   $04
        jsr     LF4FD
        rts

        jsr     LF51B
        rts

L554C:  lda     #$01
        sta     L0560,x
        lda     #$00
        .byte   $9D
L5554:  bmi     L555B
        sta     L0540,x
        .byte   $9D
        .byte   $50
L555B:  ora     L00FE
L555D:  bne     L5563
        rts

L5560:  jsr     LF539
L5563:  lda     L0510,x
        cmp     #$E8
        beq     L556E
        jsr     L9595
        rts

L556E:  dec     L04AF
        jmp     LFA9A

        lda     L0420
        cmp     #$0D
        bne     L55A4
        jsr     LFB7B
        bcs     L55A4
        lda     L0510,x
        sta     L04B0,x
        sta     L0530,x
        lda     #$6E
        sta     L0550,x
        lda     #$01
        sta     L0560,x
        lda     L0580,x
        eor     #$03
        sta     L0580,x
        jsr     L965B
        inc     L04D0,x
        jsr     L960E
L55A4:  rts

        lda     L0510
        sta     L0490,x
        lda     L051F
        clc
        adc     #$10
        sta     L0510
        jsr     LF919
        cmp     #$08
        bcs     L55ED
        lda     L04F0
        sta     L0480,x
        lda     L058F
        and     #$01
        beq     L55D4
        lda     L04FF
        sec
        sbc     #$0C
        sta     L04F0
        jmp     L95CD

L55D4:  lda     L04FF
        clc
        adc     #$0C
        sta     L04F0
        jsr     LF928
        cmp     #$18
        bcs     L55E7
        jmp     L95E4

L55E7:  lda     L0480,x
        sta     L04F0
L55ED:  lda     L0490,x
        sta     L0510
        rts

        lda     L0480,x
        sta     L04F0
        lda     L0490,x
        sta     L0510
        dec     L04AF
        lda     L0420,x
        cmp     #$1C
        beq     L5618
        cmp     #$1D
        .byte   $F0
L560D:  asl     a
        cmp     #$1E
        beq     L5618
        lda     #$31
        sta     L04E0,x
        rts

L5618:  lda     #$3F
        sta     L04E0,x
        rts

        lda     #$00
        sta     L0480,x
        lda     L00E4
        adc     L00E5
        sbc     L00E6
        sta     L00E4
        eor     L00E7
        sta     L00E6
        cmp     #$34
        bcc     L5659
        inc     L0480,x
        cmp     #$60
        bcc     L5659
        inc     L0480,x
        cmp     #$80
        .byte   $90
L5640:  clc
        inc     L0480,x
        cmp     #$9A
        bcc     L5659
        inc     L0480,x
        cmp     #$9E
        bcc     L5659
        inc     L0480,x
        cmp     #$C4
        bcc     L5659
        jmp     L955E

L5659:  lda     L0480,x
L565C:  tay
        lda     L9654,y
        sta     L0420,x
        rts

        .byte   $1C
        ora     L2425,x
        asl     a:L0023,x
        jsr     LFA4C
        bcs     L56A3
        sty     L000F
        lda     L04F0,x
        sta     L04F0,y
        lda     L0510,x
        sta     L0510,y
        lda     L0500,x
        sta     L0500,y
        lda     L0520,x
        sta     L0520,y
        lda     #$00
        sta     L0570,y
        sta     L0540,y
        sta     L0530,y
        sta     L0560,y
        sta     L0550,y
        sta     L04E0,y
        lda     #$14
        jsr     LFA84
L56A3:  rts

        lda     L04D0,x
        and     #$0F
        bne     L56B6
        lda     L0050
        bne     L56B5
        sta     L04A0,x
        inc     L04D0,x
L56B5:  rts

L56B6:  lda     L0014
        and     #$02
        beq     L56C4
        lda     #$01
        sta     L0580,x
        jsr     LF808
L56C4:  lda     L0014
        and     #$01
        beq     L56D2
        lda     #$02
        sta     L0580,x
        jsr     LF808
L56D2:  lda     L04F0
        sta     L04F0,x
        rts

        lda     L04D0,x
        and     #$0F
        bne     L56F3
        jsr     LFAAE
        bcs     L56F2
        lda     #$90
        sta     L0400,x
        inc     L04D0,x
        lda     #$1C
        jsr     LF850
L56F2:  rts

L56F3:  jsr     LFB7B
        bcs     L56F2
        lda     #$23
        jsr     LF850
        lda     #$14
        sta     L0050
        lda     L04E0,x
L5704:  .byte   $29
L5705:  .byte   $0F
        tay
        lda     L970C,y
        sta     L005B
        lda     L971A,y
        sta     L009C
        lda     L9728,y
        sta     L0066
        jsr     LFC29
        jmp     LFA9A

        .byte   $0F
        ora     (L0013),y
        ora     L0017,x
        ora     L1D1B,y
        .byte   $1F
        and     (L0023,x)
        and     L0027
        and     #$10
        .byte   $12
        .byte   $14
        asl     L0018,x
        .byte   $1A
        .byte   $1C
        asl     L2220,x
        bit     L0026
        plp
        rol     a
        .byte   $FF
        .byte   $F0
L573A:  .byte   $FF
        .byte   $F0
L573C:  .byte   $FF
        .byte   $F0
L573E:  .byte   $FF
        .byte   $F0
L5740:  .byte   $FF
        .byte   $F0
L5742:  .byte   $FF
        .byte   $F0
L5744:  .byte   $FF
        beq     L5704
        bne     L574D
        and     #$0F
        bne     L5762
L574D:  sta     L0530,x
        lda     #$01
L5752:  sta     L0540,x
        lda     #$2D
        sta     L0480,x
L575A:  lda     #$78
        sta     L0490,x
        inc     L04D0,x
L5762:  lda     L0490,x
        beq     L576B
        dec     L0490,x
        rts

L576B:  lda     L04D0,x
        and     #$02
        bne     L5799
        jsr     LF928
        cmp     #$0C
        bcs     L5785
        .byte   $A9
L577A:  .byte   $93
        jsr     LFA6C
        jsr     L97B0
        inc     L04D0,x
        rts

L5785:  lda     L0580,x
        and     #$01
        beq     L5792
        jsr     LF4FD
        jmp     L9785

L5792:  .byte   $20
        .byte   $1B
L5794:  sbc     L0020,x
        php
        sed
        rts

L5799:  lda     L0420,x
        cmp     #$93
        bne     L57AC
        lda     L0430,x
        cmp     #$08
        bne     L57AC
        lda     #$92
        jsr     LFA6C
L57AC:  lda     L0480,x
        bne     L57BC
        lda     #$2E
        sta     L0480,x
        dec     L04D0,x
        jsr     LF81D
L57BC:  dec     L0480,x
        rts

        jsr     LFA4C
        bcs     L57F5
        lda     L0580,x
        sta     L0580,y
        lda     L04F0,x
        sta     L04F0,y
        lda     L0500,x
        sta     L0500,y
        lda     L0510,x
        sec
        sbc     #$0C
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$47
        jsr     LFA84
        lda     #$52
        sta     L04E0,y
        lda     #$0A
        sta     L0570,y
L57F5:  rts

        lda     L04D0,x
        and     #$0F
        bne     L5812
        sta     L0530,x
        lda     #$2E
        sta     L0550,x
        lda     #$01
        sta     L0560,x
        lda     #$01
        sta     L0540,x
        inc     L04D0,x
L5812:  lda     L04D0,x
        and     #$02
L5817:  bne     L5843
        lda     L0580,x
        and     #$01
        beq     L5826
        jsr     LF4FD
        jmp     L9819

L5826:  jsr     LF51B
        jsr     LF5C9
        lda     L0560,x
        bpl     L5842
        cmp     #$FC
        bne     L5842
        inc     L04D0,x
        lda     #$00
        sta     L0550,x
        lda     #$02
        sta     L0560,x
L5842:  rts

L5843:  jmp     LF539

        lda     L04D0,x
        and     #$0F
        bne     L585E
        lda     #$80
        sta     L0530,x
        lda     #$01
        sta     L0540,x
        inc     L04D0,x
L585A:  jsr     LB454
L585D:  rts

L585E:  .byte   $A5
L585F:  .byte   $3B
        beq     L586B
        jsr     LF880
        dec     L003B
        jsr     LF869
        rts

L586B:  jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L585D
        jsr     LB39E
        lda     L04D0,x
        and     #$02
        beq     L5882
        jmp     L98F6

L5882:  lda     L0580,x
        and     #$01
        beq     L5899
        jsr     LF24B
        jsr     LF4FD
        lda     L04F0,x
        cmp     #$E8
        bcc     L58AE
        jmp     L9896

L5899:  jsr     LF2A6
        jsr     LF51B
        lda     L04F0,x
        cmp     #$18
        bcs     L58AE
        lda     L0580,x
        .byte   $49
L58AA:  .byte   $03
        sta     L0580,x
L58AE:  lda     L0510,x
        clc
        adc     #$04
        cmp     L0510
        bne     L5905
        inc     L04D0,x
        lda     #$0F
        sta     L04B0,x
        lda     #$99
        jsr     LFA6C
        lda     L0510,x
        cmp     #$D0
        bne     L58DD
        lda     #$8E
        sta     L0550,x
        lda     #$06
        sta     L0560,x
        lda     #$00
        sta     L0480,x
        rts

L58DD:  cmp     #$50
        bne     L58EA
        jsr     LF5FC
        lda     #$FF
        sta     L0480,x
        rts

L58EA:  lda     L00E4
        adc     L00E5
        sta     L00E5
        and     #$07
        tay
        lda     L9959,y
        sta     L0550,x
        lda     L9961,y
        sta     L0560,x
        lda     L9969,y
        sta     L0480,x
L5905:  rts

        lda     L04B0,x
        beq     L590F
        dec     L04B0,x
        rts

L590F:  lda     #$AB
        jsr     LFA6C
        lda     L0480,x
        bne     L593C
        jsr     LF5C9
        lda     L0560,x
        bpl     L5905
        lda     #$56
        sta     L0040
        ldy     #$02
        sty     L0041
L5929:  jsr     LEB52
        lda     L0010
        beq     L5905
        jsr     LEDD2
        lda     #$9A
        jsr     LFA6C
        dec     L04D0,x
        rts

L593C:  jsr     LF5A4
        jsr     LF5DA
        .byte   $BD
L5943:  rts

        ora     L00C9
L5946:  .byte   $FC
        bcs     L5905
        lda     #$56
        sta     L0040
        ldy     #$02
        sty     L0041
        jsr     LEB52
        lda     L0010
        beq     L5905
L5958:  .byte   $20
L5959:  .byte   $D2
        .byte   $ED
L595B:  lda     #$9A
        jsr     LFA6C
        dec     L04D0,x
        lda     #$00
        sta     L0480,x
        rts

        stx     L8EAB
        .byte   $AB
        stx     L8EAB
        .byte   $AB
        asl     L00FF
        asl     L00FF
        asl     L00FF
        asl     L00FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        brk
        .byte   $FF
        lda     L04D0,x
        and     #$0F
        tay
        lda     L9984,y
        sta     L0000
        lda     L9989,y
        sta     L0001
        jmp     (L0000)

        stx     L3FAE
        ldx     #$4C
        sta     L9A99,y
        txs
        .byte   $9B
        lda     #$E6
        sta     L0530,x
        lda     #$03
        sta     L0540,x
        lda     #$8E
        sta     L0550,x
        lda     #$06
        sta     L0560,x
        lda     #$14
        sta     L0480,x
        inc     L04D0,x
        jsr     LB454
        rts

L59BE:  lda     L003B
        beq     L59C8
        jsr     LF880
        dec     L003B
        rts

L59C8:  jsr     LB36A
        jsr     LB4BA
        lda     L04E0,x
        cmp     #$4F
        beq     L59ED
        lda     L0420,x
        cmp     #$67
        beq     L59EE
L59DC:  lda     L04FF
        cmp     #$04
        bcs     L59EE
        lda     #$67
        jsr     LFA6C
        lda     #$35
        jsr     LF850
L59ED:  rts

L59EE:  lda     L0410,x
        cmp     #$08
        bne     L59FA
        lda     #$8A
        sta     L001A
        rts

L59FA:  cmp     #$0D
        bne     L59ED
        lda     L00E7
L5A00:  adc     L00E6
L5A02:  sta     L00E6
        .byte   $29
L5A05:  .byte   $0F
        tay
        lda     L9A1F,y
        sta     L04D0,x
        lda     L9A2F,y
        jsr     LFA6C
        lda     L0420,x
        cmp     #$6C
        bne     L5A2E
        lda     #$E6
        sta     L0530,x
        lda     #$03
        sta     L0540,x
        lda     #$8E
        sta     L0550,x
        lda     #$06
        sta     L0560,x
L5A2E:  rts

        .byte   $82
        .byte   $82
        sty     L0084
        .byte   $82
        .byte   $82
        sty     L0084
        .byte   $82
        .byte   $82
L5A39:  sty     L0084
        .byte   $82
        .byte   $82
        sty     L0084
        pla
        pla
        .byte   $6C
        .byte   $6C
L5A43:  pla
        pla
        jmp     (L686C)

        pla
        jmp     (L686C)

        pla
        jmp     (L206C)

        ror     a
        .byte   $B3
        jsr     LB4BA
        lda     L04E0,x
        .byte   $C9
L5A59:  .byte   $4F
L5A5A:  .byte   $F0
L5A5B:  rol     L20BD
        .byte   $04
        cmp     #$6B
        beq     L5A8B
        lda     L0410,x
        cmp     #$01
        bne     L5A77
        lda     L0430,x
        cmp     #$02
        bne     L5A77
        jsr     LF81D
        jsr     L9B93
L5A77:  lda     L0410,x
        cmp     #$02
        bne     L5A8A
        lda     L0430,x
        cmp     #$08
        bne     L5A8A
        lda     #$6B
        jsr     LFA6C
L5A8A:  rts

L5A8B:  lda     #$01
        sta     L0410,x
        lda     #$00
        sta     L0430,x
        lda     L0480,x
        bne     L5AAE
        lda     #$15
        .byte   $9D
        .byte   $80
L5A9E:  .byte   $04
        lda     L04FF
        cmp     #$28
        bne     L5AB1
        inc     L04D0,x
        lda     #$67
        jsr     LFA6C
L5AAE:  dec     L0480,x
L5AB1:  rts

        jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L5AB1
        jsr     LB39E
        lda     L0420,x
        cmp     #$67
        bne     L5AE4
        lda     L0410,x
        cmp     #$0D
        bne     L5AE3
        lda     #$8B
        sta     L001A
        lda     #$6A
        jsr     LFA6C
        lda     #$80
        sta     L0530,x
        lda     #$02
        sta     L0540,x
        jsr     LF5FC
L5AE3:  rts

L5AE4:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        php
        ldy     #$02
        lda     L0490,x
        and     #$01
        beq     L5B20
        lda     #$00
        jsr     LF200
        lda     L04F0,x
        cmp     #$E8
        bcc     L5B1D
        lda     L0490,x
        eor     #$01
        sta     L0490,x
        jsr     LF2A6
        lda     L04FF
        cmp     #$28
        beq     L5B1D
        lda     #$6B
        jsr     LFA6C
        lda     #$81
        sta     L04D0,x
L5B1D:  jmp     L9B38

L5B20:  lda     #$03
        jsr     LF254
        lda     L04F0,x
        cmp     #$18
        bcs     L5B48
        jsr     LF24B
        lda     L0490,x
        eor     #$01
        sta     L0490,x
        lda     L04FF
        cmp     #$28
        beq     L5B48
        lda     #$6B
        jsr     LFA6C
        lda     #$81
        sta     L04D0,x
L5B48:  plp
        bcc     L5B5B
        lda     L0010
        cmp     #$03
        bcc     L5B5B
        lda     #$00
        sta     L0550,x
        lda     #$04
        .byte   $9D
        rts

L5B5A:  .byte   $05
L5B5B:  rts

        jsr     LB36A
L5B5F:  jsr     LB4BA
        lda     L04E0,x
        cmp     #$4F
        beq     L5B5B
        lda     L0420,x
        cmp     #$68
        beq     L5BA2
        lda     L0490,x
        .byte   $29
L5B74:  .byte   $01
L5B75:  beq     L5B7D
        jsr     LF4FD
        .byte   $4C
L5B7B:  bvs     $5B18
L5B7D:  jsr     LF51B
        ldy     #$02
        lda     #$56
        jsr     LF2D7
        lda     L0010
        cmp     #$03
        bcc     L5BA2
        lda     L0490,x
        eor     #$01
        sta     L0490,x
        lda     #$68
        jsr     LFA6C
        jsr     LF81D
        lda     #$82
        sta     L04D0,x
L5BA2:  rts

        jsr     LFA4C
        bcs     L5BF7
        sty     L000F
        lda     L0580,x
        sta     L0580,y
        and     #$02
        tay
        lda     L04F0,x
        clc
        adc     L9BE8,y
        pha
        lda     L0500,x
        adc     L9BE9,y
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     #$C8
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$6E
        jsr     LFA84
        lda     L0400,y
        ora     #$20
        sta     L0400,y
        lda     #$55
        sta     L04E0,y
        lda     #$00
        sta     L0570,y
        sta     L0550,y
        sta     L05A0,y
        lda     #$03
        sta     L0560,y
L5BF7:  rts

        rol     L0000
        .byte   $DA
        .byte   $FF
        lda     L04D0,x
        and     #$0F
        bne     L5C11
        sta     L0480,x
        lda     L0400,x
        and     #$DF
        sta     L0400,x
        .byte   $FE
L5C0F:  bne     L5C15
L5C11:  lda     L04D0,x
        .byte   $29
L5C15:  .byte   $02
        bne     L5C57
        lda     L0510,x
        cmp     #$B8
        bcc     L5C22
        jsr     LF55E
L5C22:  inc     L0480,x
        lda     L0480,x
        cmp     #$07
        bcc     L5C56
        lda     #$36
        jsr     LF850
        jsr     LF93F
        tay
        lda     LA967,y
        sta     L0580,x
        lda     L9CAC,y
        sta     L0530,x
        lda     L9CBC,y
        sta     L0540,x
        lda     L9CCC,y
        sta     L0550,x
        lda     L9CDC,y
        sta     L0560,x
        inc     L04D0,x
L5C56:  rts

L5C57:  lda     L0420,x
        cmp     #$5D
L5C5C:  .byte   $F0
L5C5D:  asl     L00A9,x
        asl     L009D
        bvs     $5C68
        jsr     LFAAE
        bcs     L5C74
        lda     #$03
        sta     L0001
        stx     L0000
        jsr     L9CEC
        jmp     LFA9A

L5C74:  lda     L0580,x
        cmp     #$01
        beq     L5C98
        cmp     #$02
        beq     L5C9B
        cmp     #$08
        beq     L5C9E
        cmp     #$04
        beq     L5CA1
        cmp     #$09
        beq     L5CA4
        cmp     #$05
        beq     L5CAA
        cmp     #$0A
        beq     L5CB0
        cmp     #$06
        beq     L5CB6
        rts

L5C98:  jmp     LF4FD

L5C9B:  jmp     LF51B

L5C9E:  jmp     LF55E

L5CA1:  jmp     LF539

L5CA4:  jsr     LF4FD
        jmp     LF55E

L5CAA:  jsr     LF4FD
        jmp     LF539

L5CB0:  jsr     LF51B
        jmp     LF55E

L5CB6:  jsr     LF51B
        jmp     LF539

        brk
        pha
        rol     L8028
        plp
        rol     a:L0048
        pha
        rol     L8028
        plp
        rol     a:L0048
        ora     (L0003,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     (L0000,x)
        ora     (L0003,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     (L0080,x)
        plp
        rol     a:L0048
        pha
        rol     L8028
        plp
        rol     a:L0048
        pha
        rol     L0428
        .byte   $04
        .byte   $03
        ora     (L0000,x)
        ora     (L0003,x)
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        ora     (L0000,x)
        ora     (L0003,x)
        .byte   $04
L5CFC:  jsr     LFA4C
        bcs     L5D4D
        ldx     L0001
        lda     L9D40,x
        sta     L0530,y
        sta     L0550,y
        lda     L9D44,x
        sta     L0540,y
        sta     L0560,y
        lda     L9D48,x
        sta     L0580,y
        lda     #$69
        jsr     LFA84
        .byte   $A6
L5D21:  brk
        lda     #$0B
        sta     L04E0,y
        lda     L04F0,x
        sta     L04F0,y
        lda     L0500,x
        sta     L0500,y
        lda     L0520,x
        sta     L0520,y
        lda     L0510,x
        sta     L0510,y
        lda     #$00
        sta     L05A0,y
        lda     #$0A
        sta     L0570,y
        dec     L0001
        bpl     L5CFC
L5D4D:  ldx     L0000
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
        asl     L0009
L5D5B:  ora     L00BD
L5D5D:  bne     L5D63
        and     #$0F
        bne     L5D78
L5D63:  sta     L0530,x
        lda     #$01
        sta     L0540,x
        lda     #$B4
        .byte   $9D
        .byte   $80
L5D6F:  .byte   $04
        lda     #$78
        sta     L0490,x
        inc     L04D0,x
L5D78:  lda     L0490,x
        beq     L5D81
        dec     L0490,x
        rts

L5D81:  lda     L04D0,x
        and     #$02
        bne     L5DA6
        lda     L0470,x
        sec
        sbc     L0530,x
        sta     L0470,x
        lda     L04F0,x
        sbc     L0540,x
        sta     L04F0,x
        lda     L04F0,x
        cmp     #$28
        bne     L5DA5
        inc     L04D0,x
L5DA5:  rts

L5DA6:  lda     L0480,x
        bne     L5DB3
        lda     #$B5
        sta     L0480,x
        dec     L04D0,x
L5DB3:  dec     L0480,x
        rts

        lda     L04D0,x
        and     #$0F
        tay
        lda     L9DBA,y
        sta     L0000
        lda     L9DBF,y
        sta     L0001
        jmp     (L0000)

        cpy     L00DA
        ora     L10A0,y
        sta     L9E9D,x
        .byte   $9E
        .byte   $9F
        lda     #$00
        sta     L0530,x
        lda     #$01
        sta     L0540,x
        inc     L04D0,x
        jsr     LB454
        lda     #$0F
        sta     L0480,x
L5DE9:  rts

        lda     L003B
        beq     L5DF7
        jsr     LF880
        dec     L003B
        jsr     LF869
        rts

L5DF7:  lda     L0420,x
        cmp     #$43
        beq     L5E12
        lda     L0480,x
        bne     L5E0E
        lda     #$00
        sta     L0480,x
        lda     #$43
        jsr     LFA6C
        rts

L5E0E:  dec     L0480,x
        rts

L5E12:  lda     L0410,x
        cmp     #$02
        bne     L5E28
        lda     L0430,x
        cmp     #$08
        bne     L5E28
        lda     #$41
        jsr     LFA6C
        inc     L04D0,x
L5E28:  rts

        jsr     LB36A
        lda     L0420,x
        cmp     #$41
        bne     L5E40
        jsr     LB4BA
        lda     L04E0,x
        cmp     #$4F
        beq     L5DE9
        jmp     L9E3A

L5E40:  lda     L04E0,x
        cmp     #$4F
        beq     L5DE9
        jsr     LB39E
        lda     L0490,x
        bne     L5E94
        lda     L0580,x
        .byte   $29
L5E53:  ora     (L00F0,x)
        .byte   $10
L5E56:  jsr     LF24B
        .byte   $20
L5E5A:  .byte   $FD
        .byte   $F4
L5E5C:  .byte   $BD
L5E5D:  .byte   $F0
L5E5E:  .byte   $04
L5E5F:  cmp     #$E8
        bcc     L5E7B
        jmp     L9E63

        jsr     LF2A6
        jsr     LF51B
        lda     L04F0,x
        cmp     #$18
        bcs     L5E7B
        lda     L0580,x
        .byte   $49
L5E77:  .byte   $03
        sta     L0580,x
L5E7B:  .byte   $BD
        .byte   $F0
L5E7D:  .byte   $04
        cmp     #$C0
        beq     L5E91
        lda     L04F0,x
        cmp     #$80
        beq     L5E91
        lda     L04F0,x
        cmp     #$40
        beq     L5E91
        rts

L5E91:  jmp     L9F43

L5E94:  lda     L0410,x
        cmp     #$02
        bne     L5EAF
        lda     L0430,x
        cmp     #$08
        bne     L5EAF
        lda     #$44
        jsr     LFA6C
        lda     #$06
        sta     L0570,x
        inc     L04D0,x
L5EAF:  rts

        lda     L0410,x
        cmp     #$03
        bne     L5EC3
        lda     L0430,x
        cmp     #$04
        bne     L5EC3
        lda     #$37
        jsr     LF850
L5EC3:  jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L5EAF
        jsr     LB39E
        lda     L04A0,x
        bne     L5F02
        lda     L0410,x
        cmp     #$05
        beq     L5EE6
        cmp     #$08
        beq     L5EE6
        cmp     #$0B
        beq     L5EE6
        bne     L5EF0
L5EE6:  lda     L0430,x
        cmp     #$04
        bne     L5EF0
        jsr     L9F8F
L5EF0:  lda     L0410,x
        cmp     #$0C
        bne     L5F01
        lda     L0430,x
        cmp     #$04
        bne     L5F01
        .byte   $FE
        .byte   $A0
L5F00:  .byte   $04
L5F01:  rts

L5F02:  lda     #$00
        sta     L0410,x
        sta     L0430,x
        lda     L0490,x
        bne     L5F1C
        lda     #$43
        jsr     LFA6C
        lda     #$10
        sta     L0570,x
        inc     L04D0,x
L5F1C:  dec     L0490,x
        rts

        jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L5F2D
        jsr     LB39E
L5F2D:  lda     L0410,x
        cmp     #$02
        bne     L5F4D
        lda     L0430,x
        cmp     #$08
        bne     L5F4D
        lda     #$41
        jsr     LFA6C
        lda     #$00
        sta     L04A0,x
        sta     L0490,x
        lda     #$82
        sta     L04D0,x
L5F4D:  lda     #$10
        sta     L0570,x
        rts

        .byte   $A5
L5F54:  inc     L0065
        .byte   $E7
L5F57:  sta     L00E7
        and     #$0F
        tay
        .byte   $B9
L5F5D:  .byte   $5F
L5F5E:  .byte   $9F
L5F5F:  sta     L0490,x
        lda     L9F6F,y
        jsr     LFA6C
        lda     L9F7F,y
        sta     L0480,x
        rts

        brk
        bmi     L5F72
L5F72:  bmi     L5F74
L5F74:  bmi     L5F76
L5F76:  bmi     L5FA8
        brk
        bmi     L5F7B
L5F7B:  bmi     L5F7D
L5F7D:  bmi     L5F7F
L5F7F:  eor     (L0042,x)
        eor     (L0042,x)
        eor     (L0042,x)
        eor     (L0042,x)
        .byte   $42
        eor     (L0042,x)
        eor     (L0042,x)
        eor     (L0042,x)
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
        bcs     L5FED
        sty     L000F
        .byte   $BD
        .byte   $80
L5FA8:  ora     L0099
        .byte   $80
        ora     L00AD
        beq     L5FB3
        sta     L04F0,y
        .byte   $AD
L5FB3:  brk
        ora     L0099
        brk
        ora     L00A9
        beq     L5F54
        bpl     L5FC2
        lda     L0520
        .byte   $99
        .byte   $20
L5FC2:  ora     L00A9
        .byte   $44
        sta     L0570,y
        lda     L0480,x
        bne     L5FD9
        lda     #$45
        jsr     LFA84
        lda     #$59
        sta     L04E0,y
        bne     L5FE3
L5FD9:  lda     #$46
        jsr     LFA84
        lda     #$58
        sta     L04E0,y
L5FE3:  lda     #$44
        sta     L0570,y
        lda     #$01
        sta     L05A0,y
L5FED:  rts

        lda     L04D0,x
        and     #$0F
        bne     L6010
        sta     L0480,x
        sta     L04A0,x
        sta     L0550,x
        lda     #$01
L6000:  sta     L0560,x
        .byte   $FE
        .byte   $D0
L6005:  .byte   $04
        lda     #$01
        sta     L05A0,x
        lda     #$14
        sta     L0490,x
L6010:  lda     L0480,x
        .byte   $D0
L6014:  .byte   $13
        jsr     LF55E
        lda     L0510,x
        cmp     #$D0
        bcs     L6027
        lda     #$FF
        sta     L0480,x
        jsr     LA03C
L6027:  rts

L6028:  lda     L0490,x
        bne     L6048
        jsr     LF5C9
        lda     L04A0,x
        bne     L6027
        lda     L0510,x
        cmp     #$B0
        bcs     L6027
        inc     L04A0,x
        jsr     LA102
        lda     #$38
        jsr     LF850
        rts

L6048:  dec     L0490,x
        rts

        lda     L00E4
        adc     L00E5
        sta     L00E5
        and     #$03
        tay
        lda     LA052,y
        sta     L0550,x
        lda     LA056,y
        sta     L0560,x
        rts

        nop
        nop
        nop
L6065:  nop
        .byte   $07
        php
L6068:  ora     #$07
L606A:  lda     L04D0,x
L606D:  and     #$0F
L606F:  .byte   $D0
L6070:  rol     L009D
L6072:  .byte   $80
        .byte   $04
L6074:  .byte   $9D
        .byte   $50
L6076:  ora     L009D
L6078:  bmi     $607F
        .byte   $A9
L607B:  ora     (L009D,x)
        rts

        ora     L00A9
        .byte   $03
        sta     L0540,x
        inc     L04D0,x
        lda     #$01
        sta     L05A0,x
        jsr     LA0ED
        sta     L04A0,x
        lda     #$14
        sta     L0490,x
L6097:  lda     L04D0,x
        and     #$02
        bne     L60E2
        lda     #$00
        sta     L0430,x
        sta     L0410,x
        jsr     LF81D
        jsr     LF55E
        lda     L0480,x
        bne     L60C3
        lda     L0510,x
        cmp     #$B0
        bcs     L60C3
        jsr     LA102
        lda     #$38
        jsr     LF850
        .byte   $FE
        .byte   $80
L60C2:  .byte   $04
L60C3:  lda     L0510,x
        cmp     L04A0,x
        bcs     L60E1
        inc     L04D0,x
        jsr     LF81D
        lda     #$D4
        sta     L0550,x
        sta     L0530,x
        lda     #$02
        sta     L0560,x
        sta     L0540,x
L60E1:  rts

L60E2:  lda     #$01
        sta     L0410,x
        sta     L0430,x
        lda     L0580,x
        and     #$01
        beq     L60F7
        jsr     LF4FD
        jmp     LA0EA

L60F7:  jsr     LF51B
L60FA:  jmp     LF539

        lda     L00E5
        adc     L00E4
        sta     L00E4
        and     #$07
        tay
        lda     LA0FA,y
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
        bcs     L60E1
        lda     L04F0,x
        sta     L04F0,y
        lda     L0500,x
        .byte   $99
L6121:  brk
        ora     L00A9
        bcs     $60BF
        bpl     $612D
        lda     L0520,x
        sta     L0520,y
        lda     #$00
        sta     L0570,y
        sta     L04E0,y
        lda     #$47
        jsr     LFA84
        rts

        jsr     LA3F5
        lda     L0000
        cmp     #$FF
        beq     L6175
        lda     L04D0,x
        and     #$0F
        tay
        lda     LA490,y
        sta     L0000
        lda     LA49A,y
        sta     L0001
        jmp     (L0000)

        lda     #$00
        sta     L04BD
        jsr     LB487
        inc     L04D0,x
        lda     #$01
        sta     L04BC
        lda     #$0E
        sta     L04BD
        lda     #$08
        sta     L04AC
        jsr     LA414
L6175:  rts

        lda     L003B
        beq     L6180
        jsr     LF880
        dec     L003B
        rts

L6180:  jsr     LA3D8
        lda     L0580,x
        and     #$01
        beq     L6199
        jsr     LF4FD
        lda     L04F0,x
        sec
        cmp     #$F0
        bcs     L61A8
        jsr     LA1AC
        rts

L6199:  jsr     LF51B
L619C:  lda     L04F0,x
        sec
        cmp     #$18
        bcc     L61A8
        jsr     LA1AC
        rts

L61A8:  lda     L0580,x
        eor     #$03
        sta     L0580,x
        jsr     LF808
        jsr     LA1AC
        lda     #$00
        sta     L04A0,x
        rts

        lda     L04A0,x
        beq     L61C2
        rts

L61C2:  lda     #$02
        sta     L0490,x
        lda     L0510
        cmp     #$44
        beq     L61D5
        cmp     #$B4
        bne     L61D8
        dec     L0490,x
L61D5:  dec     L0490,x
L61D8:  lda     L0490,x
        cmp     L0480,x
        beq     L61E1
        rts

L61E1:  jsr     LF81D
        jsr     LA443
        lda     L0510,x
        cmp     #$80
        bcc     L61FA
        lda     #$82
        sta     L04D0,x
        jsr     LA427
        lda     #$49
        bne     L6204
L61FA:  lda     #$83
        sta     L04D0,x
        jsr     LF5FC
        lda     #$49
L6204:  jsr     LFA6C
        rts

        lda     L0560,x
L620B:  bmi     L6211
        jsr     LF5C9
        rts

L6211:  ldy     #$02
        lda     #$06
        jsr     LF2D7
        bcc     L6236
        lda     L04D0,x
        cmp     #$84
        beq     L6280
        inc     L0480,x
        lda     #$81
        sta     L04D0,x
        lda     #$4A
        jsr     LFA6C
        jsr     LA414
        lda     #$01
        sta     L04A0,x
L6236:  rts

        lda     L0550,x
        clc
        adc     #$40
        sta     L0550,x
        lda     L0560,x
        adc     #$00
        sta     L0560,x
        lda     L0510,x
        sec
        sbc     #$80
        bcs     L6254
        jsr     LF539
        rts

L6254:  ldy     #$02
        lda     #$06
        jsr     LF2AF
        lda     L0010
        beq     L627B
        .byte   $BD
        .byte   $D0
L6261:  .byte   $04
        cmp     #$85
        beq     L6295
        dec     L0480,x
        lda     #$81
        .byte   $9D
        .byte   $D0
L626D:  .byte   $04
        lda     #$4A
        jsr     LFA6C
        jsr     LA414
        lda     #$01
        sta     L04A0,x
L627B:  rts

        jsr     LA1F8
        rts

L6280:  jsr     LA408
        lda     #$4A
        jsr     LFA6C
        inc     L0480,x
        lda     #$86
        sta     L04D0,x
        rts

        jsr     LA227
        rts

L6295:  lda     #$86
        sta     L04D0,x
L629A:  jsr     LA408
        lda     #$4A
        jsr     LFA6C
        dec     L0480,x
        rts

        lda     L04AE
        sec
        sbc     #$0C
        tay
        lda     LA4AD,y
        cmp     L04F0,x
        beq     L62D9
        bcc     L62CD
        lda     LA4B0,y
        cmp     L04F0,x
        beq     L62D9
        bcc     L62CD
        lda     #$01
        sta     L0580,x
        jsr     LF808
        jsr     LF4FD
        rts

L62CD:  lda     #$02
        sta     L0580,x
        jsr     LF808
        jsr     LF51B
        rts

L62D9:  lda     #$78
        sta     L04B0,x
        lda     #$4B
        jsr     LFA6C
        lda     #$87
        sta     L04D0,x
        lda     L04AE
        cmp     #$0E
        bne     L62F6
        lda     #$01
        sta     L0580,x
        bne     L62FB
L62F6:  lda     #$02
        sta     L0580,x
L62FB:  jsr     LF808
        rts

        dec     L04B0,x
        bne     L6312
        jsr     LA438
        lda     #$89
        sta     L04D0,x
        lda     #$49
        jsr     LFA6C
        rts

L6312:  lda     L04B0,x
        cmp     #$28
        beq     L6322
        cmp     #$50
        beq     L6322
        cmp     #$77
        beq     L6322
        rts

L6322:  lda     #$39
        jsr     LF850
        rts

        lda     #$49
        jsr     LFA6C
        ldy     #$02
        lda     #$06
        jsr     LF2D7
        lda     L0010
        beq     L634E
        lda     #$81
        sta     L04D0,x
        lda     #$4A
        jsr     LFA6C
        jsr     LA414
        lda     #$01
        sta     L04A0,x
        jsr     LF81D
        rts

L634E:  lda     L0560,x
        bne     L6383
        lda     #$55
        jsr     LFA6C
        stx     L000A
        ldx     L04AE
        lda     L0480,x
L6360:  beq     L6381
        lda     #$00
        sta     L0480,x
        lda     #$0D
        sta     L05A0,x
        lda     #$56
        sta     L0420,x
        lda     #$00
        sta     L0430,x
        sta     L0410,x
        dec     L04D0,x
        lda     #$2C
        jsr     LF850
L6381:  ldx     L000A
L6383:  cmp     #$FF
        beq     L6388
        rts

L6388:  lda     #$55
        jsr     LFA6C
        rts

        lda     L04AE
        sec
        sbc     #$0C
        tay
        lda     LA4AA,y
        cmp     L0480,x
        beq     L63BD
        cmp     #$00
        beq     L63AF
        lda     #$84
        sta     L04D0,x
        jsr     LA427
        lda     #$49
        jsr     LFA6C
L63AE:  rts

L63AF:  lda     #$85
        sta     L04D0,x
        jsr     LF5FC
        lda     #$49
        jsr     LFA6C
        rts

L63BD:  lda     L04F0,x
        cmp     LA4AD,y
        beq     L63D8
        cmp     LA4B0,y
        beq     L63D8
        lda     #$86
        sta     L04D0,x
        jsr     LA408
        lda     #$4A
        jsr     LFA6C
        rts

L63D8:  lda     #$78
        sta     L04B0,x
        lda     #$4B
        jsr     LFA6C
        lda     #$87
        sta     L04D0,x
        rts

        sty     L000F
        ldy     #$0C
L63EC:  lda     L0480,y
        bne     L63F7
        iny
        cpy     #$0F
        bne     L63EC
        rts

L63F7:  sec
        sbc     #$0C
        sty     L04AE
        lda     #$88
        sta     L04D0,x
        ldy     L000F
        rts

        .byte   $20
L6406:  ror     a
        .byte   $B3
        lda     L04E0,x
        cmp     #$4F
        beq     L6413
        .byte   $20
        .byte   $9E
L6411:  .byte   $B3
        rts

L6413:  lda     #$FF
        sta     L0000
        rts

        lda     #$00
        sta     L0530,x
        lda     #$02
        sta     L0540,x
        bne     L642E
        lda     #$80
        sta     L0530,x
        lda     #$01
        sta     L0540,x
L642E:  lda     #$00
        sta     L0550,x
        sta     L0560,x
        rts

        lda     #$00
        sta     L0550,x
        sta     L0530,x
        .byte   $9D
L6440:  rti

        ora     L00A9
        php
        .byte   $9D
L6445:  rts

        ora     L0060
        lda     #$00
        sta     L0550,x
        lda     #$04
        sta     L0560,x
        rts

        jsr     LFA4C
        bcs     L649F
        sty     L000F
        lda     L0580,x
        sta     L0580,y
        and     #$02
        tay
L6463:  lda     L04F0,x
        clc
        adc     LA4A6,y
        pha
        lda     L0500,x
        adc     LA4A7,y
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     L0510,x
        .byte   $99
L647E:  bpl     L6485
        lda     L0520,x
        .byte   $99
        .byte   $20
L6485:  ora     L00A9
        rti

        jsr     LFA84
        lda     #$01
        sta     L04E0,y
        lda     #$0A
        sta     L0570,y
        lda     #$00
        sta     L0530,y
        lda     #$03
        sta     L0540,y
L649F:  rts

        pha
        ror     L00F8
        .byte   $27
        jmp     (L9681)

        .byte   $EF
        ror     LA118,x
        lda     (L00A1,x)
        ldx     #$A2
        ldx     #$A2
        ldx     #$A3
        .byte   $A3
        ldy     L0044,x
        bpl     L64B8
L64B8:  .byte   $F0
L64B9:  .byte   $FF
        ora     (L0000,x)
        ora     (L00E0,x)
        dey
        jsr     L87DF
        .byte   $1F
        lda     L003B
        bne     L6512
        jsr     LA51E
        jmp     LA4C1

        lda     L003B
        bne     L6512
        lda     L04D0,x
        and     #$0F
        tay
        lda     LA5B1,y
        sta     L0000
        lda     LA5B4,y
        sta     L0001
        jmp     (L0000)

        cpx     #$0D
        beq     L64F1
        inc     L04D0,x
        lda     #$0D
        sta     L05A0,x
        rts

L64F1:  lda     #$09
        sta     L05A0,x
        lda     #$01
        sta     L0580,x
        jsr     LF808
        lda     #$00
L6500:  .byte   $20
L6501:  jmp     ($A9FA)

        ora     (L009D,x)
        .byte   $80
        .byte   $04
        lda     #$80
        sta     L05A0,x
        lda     #$82
        sta     L04D0,x
L6512:  rts

        lda     L05A0,x
        cmp     #$0A
        bpl     L652C
        lda     #$00
        jsr     LFA6C
        lda     #$01
        sta     L0480,x
        inc     L04D0,x
        lda     #$80
        sta     L05A0,x
L652C:  rts

        rts

        stx     L04BE
        lda     L04BD
        beq     L655A
        dec     L04BC
        bne     L655A
        inc     L04BD
        lda     L04BD
        cmp     #$0F
        bne     L654A
        lda     #$0C
        sta     L04BD
L654A:  ldx     L04BD
        lda     L0480,x
        bne     L6555
        jsr     LA54E
L6555:  lda     #$64
        sta     L04BC
L655A:  ldx     L04BE
        rts

        .byte   $20
L655F:  jmp     LB0FA

        .byte   $5B
        .byte   $A9
L6564:  and     #$20
        bvc     $6560
L6568:  sty     L000F
        lda     L0500,x
        sta     L0500,y
        lda     L04F0,x
        sta     L04F0,y
        lda     L0510,x
        sec
        adc     #$0B
        sta     L0510,y
        .byte   $BD
L6580:  jsr     L9905
        .byte   $20
        .byte   $05
L6585:  lda     #$4D
        .byte   $20
L6588:  sty     L00FA
        lda     #$0B
        sta     L04E0,y
        lda     #$13
        sta     L0570,y
        stx     L000E
        sty     L000D
        tya
        tax
        jsr     LF93F
        ldx     L000D
        tay
        lda     LA5B7,y
        sta     L0530,x
        lda     LA5C7,y
        sta     L0540,x
        lda     LA5D7,y
        sta     L0550,x
        lda     LA5E7,y
        sta     L0560,x
        lda     LA967,y
        sta     L0580,x
        ldx     L000E
        rts

        .byte   $D4
        .byte   $03
        ora     LA5A4,x
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
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0000,x)
        brk
        brk
        ora     (L0001,x)
        ora     (L0001,x)
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
        ora     (L0001,x)
        .byte   $01
L6600:  ora     (L0001,x)
        brk
        brk
        brk
        ora     (L0001,x)
        jsr     LA7D2
L660A:  lda     L04B0,x
        cmp     #$FF
        beq     L6635
        jsr     LA793
        lda     L04D0,x
        and     #$0F
        tay
        lda     LA831,y
        sta     L0000
        lda     LA838,y
        sta     L0001
        jmp     (L0000)

        inc     L04D0,x
        jsr     LB454
        jsr     LA7FC
        lda     #$07
        sta     L0490,x
L6635:  rts

        lda     L003B
        beq     L6640
        jsr     LF880
        dec     L003B
        rts

L6640:  lda     #$50
        jsr     LFA6C
        dec     L04AE
        bmi     L6650
        lda     #$4F
        jsr     LFA6C
        rts

L6650:  lda     #$00
        sta     L0480,x
        lda     L0560,x
        bmi     L6660
        jsr     LF5C9
        .byte   $4C
        txa
L665F:  .byte   $A6
L6660:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        bcc     L669A
        .byte   $DE
L666A:  bcc     $6670
        lda     L0490,x
        beq     L66B9
        lda     #$08
        sta     L04AE
        jsr     LA7FC
        lda     L0490,x
        cmp     #$06
L667E:  beq     L6696
        cmp     #$04
        beq     L6696
        cmp     #$02
        .byte   $F0
L6687:  asl     $FC20
L668A:  .byte   $A7
        lda     #$80
        sta     L0480,x
        lda     #$4F
L6692:  jsr     LFA6C
        rts

L6696:  jsr     LA7AB
        rts

L669A:  lda     L0580,x
        and     #$01
        beq     L66AD
        jsr     LF4FD
        lda     L04F0,x
        sec
        cmp     #$F0
        bcs     L66BF
        rts

L66AD:  jsr     LF51B
        lda     L04F0,x
        sec
        cmp     #$10
        bcc     L66BF
        rts

L66B9:  lda     #$08
        sta     L0490,x
        rts

L66BF:  lda     L0580,x
        eor     #$03
        sta     L0580,x
        jsr     LF808
        rts

        lda     #$00
        sta     L0480,x
        lda     L0560,x
        bmi     L66D9
        jsr     LF5C9
        rts

L66D9:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        bcc     L66F0
        inc     L04A0,x
        .byte   $DE
        .byte   $D0
L66E7:  .byte   $04
        jsr     LA7FC
        lda     #$80
        sta     L0480,x
L66F0:  rts

        lda     #$00
        sta     L0480,x
        lda     L0550,x
        clc
        adc     #$40
        sta     L0550,x
        .byte   $BD
L6700:  rts

        ora     L0069
        brk
        sta     L0560,x
        sty     L000C
        lda     L04A0,x
        tay
        lda     LA843,y
        sta     L000D
        ldy     L000C
        lda     L0510,x
        sec
        sbc     L000D
        bcs     L6720
        jsr     LF539
        rts

L6720:  ldy     #$02
        lda     #$56
        jsr     LF2AF
        lda     L0010
        beq     L673C
        dec     L04D0,x
        dec     L04D0,x
        dec     L04A0,x
        jsr     LA7FC
        lda     #$80
        sta     L0480,x
L673C:  rts

        lda     #$00
        sta     L0480,x
        lda     L0560,x
        bmi     L674B
        jsr     LF5C9
        rts

L674B:  ldy     #$02
        lda     #$56
        jsr     LF2D7
        bcc     L6763
        inc     L04A0,x
        lda     L04A0,x
        cmp     #$02
        beq     L6764
        lda     #$80
        sta     L0480,x
L6763:  rts

L6764:  inc     L04D0,x
        lda     #$80
        sta     L04B0,x
        lda     #$51
        jsr     LFA6C
        jsr     LA822
        lda     #$88
        sta     L048E
        lda     #$52
        sta     L042E
        lda     #$00
L6780:  sta     L043E
        sta     L041E
        rts

        dec     L04B0,x
        .byte   $D0
L678B:  php
        inc     L04D0,x
        lda     #$50
        jsr     LFA6C
L6794:  rts

        lda     #$83
        sta     L04D0,x
        jsr     LA822
        lda     #$00
        sta     L04B0,x
        rts

        lda     L0480,x
        beq     L67BA
        lda     L04B0,x
        beq     L67BA
        lda     #$84
        sta     L04D0,x
        jsr     LA80F
        lda     #$50
        jsr     LFA6C
L67BA:  rts

        lda     L00E4
        adc     L00E5
        sbc     L0490,x
        sta     L00E5
        and     #$03
        tay
        lda     LA83F,y
        beq     L67DA
        lda     L04A0,x
        beq     L67DB
        inc     L04D0,x
        inc     L04D0,x
        jsr     LA822
L67DA:  rts

L67DB:  inc     L04D0,x
        jsr     LA80F
        rts

        lda     L00EE
        sta     L0009
        jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L6806
        jsr     LB39E
        lda     L00EE
        cmp     L0009
        beq     L6805
        lda     L04A0,x
        cmp     #$02
        beq     L6805
        lda     #$01
L6802:  .byte   $9D
L6803:  bcs     $6809
L6805:  rts

L6806:  lda     #$FF
        sta     L04B0,x
        rts

        lda     #$00
        sta     L0550,x
        sta     L0530,x
        lda     #$04
        sta     L0560,x
        lda     #$01
        sta     L0540,x
        rts

        .byte   $A9
L6820:  .byte   $80
        sta     L0550,x
        lda     #$06
        sta     L0560,x
        lda     #$00
        sta     L0530,x
        sta     L0540,x
        rts

        lda     #$00
        .byte   $9D
        .byte   $50
L6836:  ora     L009D
        rts

        ora     L009D
        bmi     $6842
        sta     L0540,x
        rts

        .byte   $17
        rol     L00BB
        sbc     (L002D,x)
        .byte   $77
        sta     L00A6
        ldx     L00A6
        ldx     L00A7
        .byte   $A7
        .byte   $A7
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ldy     #$50
        lda     L0480,x
        beq     L686B
        dec     L0480,x
        cmp     #$6F
L6860:  beq     L68A7
        cmp     #$41
        beq     L68A7
        cmp     #$15
L6868:  beq     L68A7
L686A:  rts

L686B:  .byte   $A9
L686C:  brk
        jsr     LFA6C
        sty     L000F
        lda     L00E4
        adc     L00E5
        sta     L00E5
        and     #$0F
        tay
        lda     LA90B,y
        .byte   $9D
        .byte   $B0
L6880:  .byte   $04
        cmp     #$02
        bmi     L688C
        lda     #$02
        sta     L0580,x
L688A:  bne     L6891
L688C:  lda     #$01
        sta     L0580,x
L6891:  jsr     LF808
        lda     L04B0,x
        tay
        lda     LA91B,y
        sta     L04F0,x
        lda     LA91F,y
        sta     L0510,x
        ldy     L000F
        rts

L68A7:  jsr     LFA4C
        bcs     L6918
        sty     L000F
        lda     #$3A
        jsr     LF850
        lda     L0580,x
        and     #$02
        tay
        lda     L04F0,x
        clc
        adc     LA923,y
        pha
        lda     L0500,x
        adc     LA924,y
        ldy     L000F
L68C9:  .byte   $99
        brk
L68CB:  ora     L0068
        sta     L04F0,y
        lda     L0510,x
        sec
        adc     #$05
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$4E
        jsr     LFA84
        lda     #$0B
        sta     L04E0,y
        lda     #$0A
        sta     L0570,y
        stx     L000E
        sty     L000D
        tya
        tax
        jsr     LF93F
        ldx     L000D
        tay
        lda     LA927,y
        sta     L0530,x
        lda     LA937,y
        sta     L0540,x
        lda     LA947,y
        sta     L0550,x
        lda     LA957,y
        sta     L0560,x
        lda     LA967,y
        sta     L0580,x
L6918:  ldx     L000E
        rts

        brk
        ora     (L0002,x)
        .byte   $03
        brk
        ora     (L0002,x)
        .byte   $03
        brk
        ora     (L0002,x)
        .byte   $03
        brk
        ora     (L0002,x)
        .byte   $03
        .byte   $20
        .byte   $20
L692D:  cpx     #$E0
        bvc     L68C9
        bvc     L68CB
        .byte   $14
        brk
        cpx     a:L00FF
        bit     L001F
        cmp     L0000
        cmp     L001F
        bit     L0000
        bit     L001F
        cmp     L0000
        cmp     L001F
        bit     L0000
        ora     (L0002,x)
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $02
        ora     (L0000,x)
        ora     (L0002,x)
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $02
        ora     (L0000,x)
        cmp     L001F
        bit     L0000
        bit     L001F
        cmp     L0000
        cmp     L001F
        bit     L0000
        bit     L001F
        cmp     L0003
L6968:  .byte   $02
        .byte   $02
        ora     (L0000,x)
L696C:  ora     (L0002,x)
        .byte   $02
        .byte   $03
        .byte   $02
        .byte   $02
        ora     (L0000,x)
        ora     (L0002,x)
        .byte   $02
        php
        .byte   $09
L6979:  .byte   $09
L697A:  ora     #$01
        ora     L0005
        ora     L0004
        asl     L0006
        asl     L0002
        asl     a
        asl     a
        asl     a
        lda     L04D0,x
        and     #$0F
        bne     L69A2
        sta     L0530,x
        lda     #$01
        .byte   $9D
        rti

L6995:  ora     L00FE
        bne     $699D
        lda     #$1E
        sta     L0490,x
        jsr     LB454
L69A1:  rts

L69A2:  lda     L003B
        beq     L69AF
        jsr     LF880
        dec     L003B
        jsr     LF869
        rts

L69AF:  jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L69A1
        jsr     LB39E
        lda     L04D0,x
        and     #$0F
        tay
        lda     LA9BF,y
        sta     L0000
        lda     LA9C8,y
        sta     L0001
        jmp     (L0000)

        .byte   $27
        cmp     (L00E8),y
        rol     LFCA6,x
        .byte   $33
        lsr     L008C
        tax
        lda     #$A9
        tax
        tax
        tax
        .byte   $AB
        .byte   $AB
        .byte   $AB
        lda     L0410,x
        cmp     #$09
        bne     L69F7
        lda     L0430,x
        cmp     #$02
        bne     L69F7
        lda     #$59
        jsr     LFA6C
        inc     L04D0,x
L69F7:  rts

        lda     L0480,x
        and     #$01
        beq     L6A17
        .byte   $20
        .byte   $4B
L6A01:  .byte   $F2
        jsr     LF4FD
        lda     L04F0,x
        cmp     #$F0
        bcc     L6A14
        lda     L0480,x
        eor     #$01
        sta     L0480,x
L6A14:  jmp     LAA1C

L6A17:  jsr     LF2A6
        jsr     LF51B
        lda     L04F0,x
        cmp     #$10
        bcs     L6A2C
        lda     L0480,x
        eor     #$01
        sta     L0480,x
L6A2C:  lda     L04F0,x
        cmp     #$DC
        beq     L6A38
        cmp     #$24
        beq     L6A38
        rts

L6A38:  inc     L04D0,x
        jsr     LF81D
        lda     #$58
        jsr     LFA6C
        lda     #$8E
        sta     L0550,x
        lda     #$06
        sta     L0560,x
        rts

        jsr     LF5C9
        lda     L0560,x
        bpl     L6A78
        lda     #$56
        sta     L0040
        ldy     #$02
        sty     L0041
        .byte   $20
        .byte   $52
L6A60:  .byte   $EB
        lda     L0010
        beq     L6A78
        jsr     LEDD2
L6A68:  .byte   $20
L6A69:  .byte   $69
L6A6A:  tax
        lda     #$8E
L6A6D:  sta     L0550,x
        lda     #$06
        sta     L0560,x
        inc     L04D0,x
L6A78:  rts

        lda     L00E6
        adc     L00E7
        sta     L00E7
        .byte   $29
L6A80:  .byte   $0F
        tay
        lda     LAA86,y
        sta     L04A0,x
        beq     L6A8F
        .byte   $A9
L6A8B:  .byte   $3B
L6A8C:  jsr     LF850
L6A8F:  lda     LAA96,y
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
        lda     L04A0,x
        beq     L6B0C
        lda     L0490,x
        bne     L6AF8
        lda     #$1E
        sta     L0490,x
        lda     L00E6
        adc     L00E7
        sta     L00E7
        and     #$0F
        tay
        lda     LAAEC,y
        bne     L6AE2
        jsr     LF81D
        lda     #$3C
        jsr     LF850
        jsr     LAC20
L6ADE:  lda     #$5C
        bne     L6AEF
L6AE2:  jsr     LF81D
        jsr     LAB9B
        lda     #$3C
        jsr     LF850
        lda     #$5B
L6AEF:  jsr     LFA6C
        lda     #$86
        sta     L04D0,x
        rts

L6AF8:  dec     L0490,x
        rts

        brk
        .byte   $FF
L6AFE:  .byte   $FF
        brk
        brk
L6B01:  .byte   $FF
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
L6B0C:  jsr     LF5C9
        lda     L0560,x
        bpl     L6B36
        lda     #$56
L6B16:  sta     L0040
        ldy     #$02
        sty     L0041
        jsr     LEB52
        lda     L0010
        beq     L6B36
        jsr     LEDD2
        lda     #$5A
        jsr     LFA6C
        lda     #$3B
L6B2D:  jsr     LF850
        lda     #$FF
        sta     L04A0,x
        rts

L6B36:  lda     L0560,x
        cmp     #$05
        bne     L6B42
        lda     #$58
        jsr     LFA6C
L6B42:  rts

        lda     L0430,x
        cmp     #$0C
        bne     L6B55
        lda     #$59
        .byte   $20
L6B4D:  jmp     (LFEFA)

        bne     L6B56
        jsr     LF5FC
L6B55:  rts

L6B56:  lda     L0480,x
        and     #$01
        beq     L6B75
        jsr     LF24B
        jsr     LF4FD
        lda     L04F0,x
        cmp     #$F0
L6B68:  .byte   $90
L6B69:  php
L6B6A:  .byte   $BD
L6B6B:  .byte   $80
        .byte   $04
L6B6D:  .byte   $49
L6B6E:  ora     (L009D,x)
        .byte   $80
L6B71:  .byte   $04
L6B72:  jmp     LAB7A

L6B75:  jsr     LF2A6
        jsr     LF51B
        lda     L04F0,x
        cmp     #$10
        bcs     L6B8A
        lda     L0480,x
        eor     #$01
        sta     L0480,x
L6B8A:  .byte   $A0
L6B8B:  .byte   $02
        .byte   $A9
L6B8D:  lsr     L0020,x
        .byte   $D7
        .byte   $F2
        lda     L0010
        bne     L6B9B
        inc     L04D0,x
        jsr     LF5FC
L6B9B:  rts

        ldy     #$02
        lda     #$56
        jsr     LF4D7
        bcc     L6B9B
        lda     #$82
        sta     L04D0,x
        rts

        .byte   $20
L6BAC:  jmp     LB0FA

        .byte   $EB
        sty     L000F
        lda     L0580,x
        sta     L0580,y
        and     #$02
        tay
        lda     L04F0,x
        clc
        adc     LAC1C,y
        pha
        lda     L0500,x
        adc     LAC1D,y
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     L0510,x
        sec
        sbc     #$02
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$5D
        jsr     LFA84
        lda     #$55
        sta     L04E0,y
        lda     #$02
        sta     L0570,y
        lda     #$82
        sta     L04D0,y
        jsr     LF93F
        tay
        sty     L0000
        lda     LA967,y
        ldy     L000F
L6C00:  .byte   $99
L6C01:  .byte   $80
        ora     L00A4
        brk
        lda     LAC50,y
        ldy     L000F
        sta     L0530,y
        ldy     L0000
        lda     LAC60,y
        ldy     L000F
        sta     L0540,y
        ldy     L0000
        lda     LAC70,y
        ldy     L000F
        sta     L0550,y
        ldy     L0000
        lda     LAC80,y
        ldy     L000F
        sta     L0560,y
L6C2B:  rts

        bpl     L6C2E
L6C2E:  .byte   $F0
L6C2F:  .byte   $FF
        jsr     LFA4C
        bcs     L6C2B
        lda     L04F0,x
        sta     L04F0,y
        lda     L0500,x
        sta     L0500,y
        lda     L0510,x
        sec
        sbc     #$08
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$5D
        jsr     LFA84
        lda     #$5B
        sta     L04E0,y
        lda     #$0F
        .byte   $99
L6C5D:  bvs     $6C64
        rts

L6C60:  brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        .byte   $C3
        ror     a
L6C6B:  .byte   $D9
L6C6C:  brk
        .byte   $D9
L6C6E:  ror     a
        .byte   $C3
        brk
        brk
        ora     (L0001,x)
        .byte   $02
        ora     (L0001,x)
        brk
        brk
        brk
        ora     (L0001,x)
        .byte   $02
L6C7D:  ora     (L0001,x)
        brk
L6C80:  brk
        cmp     LC36A,y
        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
L6C8A:  ror     a
        .byte   $C3
        brk
L6C8D:  .byte   $C3
        ror     a
        cmp     L0102,y
        ora     (L0000,x)
        brk
        brk
        ora     (L0001,x)
        .byte   $02
        ora     (L0001,x)
        brk
L6C9C:  brk
        brk
        ora     (L0001,x)
L6CA0:  lda     L04D0,x
        and     #$0F
        bne     L6CBA
        sta     L0550,x
        sta     L0490,x
        lda     #$04
        sta     L0560,x
        inc     L04D0,x
        lda     #$3C
        sta     L0480,x
L6CBA:  jsr     LF55E
        lda     L04D0,x
        and     #$02
        bne     L6D01
        lda     L0510,x
        cmp     #$00
        bne     L6D01
        jsr     LFA4C
        bcs     L6D01
        lda     L04F0
        sta     L04F0,y
        lda     L0500
        sta     L0500,y
        lda     #$00
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$5D
        jsr     LFA84
        lda     #$5C
        sta     L04E0,y
        lda     #$00
        sta     L0570,y
        lda     #$D8
        sta     L0400,y
        inc     L04D0,x
        .byte   $DE
        .byte   $80
L6D00:  .byte   $04
L6D01:  rts

L6D02:  lda     L04D0,x
        and     #$0F
        bne     L6D19
        sta     L0550,x
        lda     #$07
        sta     L0560,x
        inc     L04D0,x
        lda     #$1E
        sta     L0480,x
L6D19:  lda     L0480,x
        bne     L6D2B
        lda     #$02
        sta     L0570,x
        lda     #$D0
        sta     L0400,x
        jmp     LF539

L6D2B:  dec     L0480,x
        rts

        dec     L0490,x
        rts

        lda     L04D0,x
        and     #$0F
        bne     L6D4A
        sta     L0530,x
        lda     #$04
        sta     L0540,x
        lda     #$95
        sta     L0480,x
        inc     L04D0,x
L6D4A:  lda     L0480,x
        beq     L6D53
        dec     L0480,x
        rts

L6D53:  lda     #$D0
        sta     L0400,x
        lda     L0580,x
        and     #$01
        beq     L6D6C
        .byte   $20
L6D60:  sbc     $BDF4,x
        beq     $6D69
        cmp     #$F0
        bcc     L6D7E
        .byte   $4C
L6D6A:  .byte   $66
L6D6B:  .byte   $AD
L6D6C:  .byte   $20
L6D6D:  .byte   $1B
        sbc     L00BD,x
        .byte   $F0
L6D71:  .byte   $04
        cmp     #$10
        bcs     L6D7E
L6D76:  lda     L0580,x
        eor     #$03
        sta     L0580,x
L6D7E:  rts

        lda     L04D0,x
        and     #$0F
        tay
L6D85:  lda     LAD82,y
        sta     L0000
        lda     LAD88,y
L6D8D:  sta     L0001
L6D8F:  jmp     (L0000)

        stx     L22D6
        eor     #$8D
        and     LADAD,x
        ldx     LAEAE
        .byte   $AF
        lda     #$00
        sta     L0560,x
        lda     #$70
        sta     L0550,x
        lda     #$80
        sta     L0530,x
        lda     #$02
        sta     L0540,x
        lda     L0063
        beq     L6DE5
        jsr     LF539
        lda     L0510,x
        cmp     #$70
        bne     L6DC8
        lda     L0400,x
        and     #$DF
        sta     L0400,x
L6DC8:  lda     L0510,x
        cmp     #$B0
        bne     L6DE5
        lda     #$5F
        jsr     LFA6C
        lda     #$8B
        sta     L001A
        lda     #$1E
        sta     L0490,x
        lda     #$3C
        sta     L04A0,x
        inc     L04D0,x
L6DE5:  rts

        jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L6DE5
        jsr     LB39E
        lda     L0480,x
        and     #$01
        beq     L6E0A
        jsr     LF24B
        jsr     LF4FD
L6E00:  lda     L04F0,x
        cmp     #$E0
        bcc     L6E31
        jmp     LAE07

L6E0A:  .byte   $20
        .byte   $A6
L6E0C:  .byte   $F2
        jsr     LF51B
        .byte   $BD
        .byte   $F0
L6E12:  .byte   $04
        cmp     #$20
        bcs     L6E31
        lda     L0480,x
        eor     #$01
        sta     L0480,x
        jsr     LAF74
        bne     L6E31
        lda     #$3E
        jsr     LF850
        lda     #$65
        jsr     LFA6C
        inc     L04D0,x
L6E31:  rts

        jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L6E31
        jsr     LB39E
        lda     L0430,x
        cmp     #$08
        .byte   $D0
L6E45:  .byte   $EB
        .byte   $A9
L6E47:  .byte   $63
        jsr     LFA6C
        lda     #$00
        sta     L0530,x
        lda     #$01
        sta     L0540,x
        inc     L04D0,x
        rts

        jsr     LB36A
        jsr     LB4BA
        .byte   $BD
L6E60:  cpx     #$04
        cmp     #$4F
        beq     L6E31
        lda     L0480,x
        .byte   $29
L6E6A:  ora     (L00F0,x)
L6E6C:  .byte   $10
L6E6D:  .byte   $20
L6E6E:  .byte   $4B
        .byte   $F2
        jsr     LF4FD
        lda     L04F0,x
        cmp     #$E0
        bcc     L6E92
        jmp     LAE7A

L6E7D:  jsr     LF2A6
L6E80:  jsr     LF51B
        lda     L04F0,x
        cmp     #$20
        bcs     L6E92
        lda     L0480,x
        eor     #$01
L6E8F:  sta     L0480,x
L6E92:  lda     L0510
        cmp     #$B4
        bne     L6E9C
        inc     L04D0,x
L6E9C:  rts

        jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L6E9C
        jsr     LB39E
        lda     L0420,x
        cmp     #$66
        beq     L6EC7
        lda     L0490,x
        bne     L6EC3
        lda     #$3D
        jsr     LF850
        lda     #$66
        jsr     LFA6C
        jsr     LF81D
L6EC3:  dec     L0490,x
L6EC6:  rts

L6EC7:  lda     L0410,x
        cmp     #$01
        bne     L6EC6
        lda     L0430,x
        cmp     #$08
        bne     L6EC6
        jsr     LFA4C
        bcs     L6EC6
        sty     L000F
        lda     L0580,x
        sta     L0580,y
        and     #$02
        tay
        lda     L04F0,x
        clc
        adc     LAF29,y
        pha
        lda     L0500,x
        adc     LAF2A,y
        ldy     L000F
        sta     L0500,y
        pla
        sta     L04F0,y
        lda     L0510,x
        sec
L6F00:  .byte   $E9
L6F01:  .byte   $02
        sta     L0510,y
L6F05:  lda     L0520,x
        sta     L0520,y
        lda     #$64
        jsr     LFA84
        lda     #$0B
        sta     L04E0,y
        lda     #$10
        sta     L0570,y
        lda     #$00
        sta     L0530,y
        lda     L00E4
        adc     L00E6
        sta     L00E6
        and     #$0F
        tay
        lda     LAF2D,y
        ldy     L000F
        sta     L0540,y
        lda     #$5F
        jsr     LFA6C
        .byte   $FE
L6F36:  bne     L6F3C
        rts

        .byte   $12
        brk
        .byte   $EE
L6F3C:  .byte   $FF
        .byte   $02
        .byte   $03
        .byte   $07
        .byte   $04
        .byte   $02
        .byte   $02
        asl     L0003
        .byte   $04
        .byte   $03
        ora     L0002
        .byte   $04
        .byte   $07
        .byte   $04
        .byte   $02
        jsr     LB36A
        lda     L04E0,x
        cmp     #$4F
        beq     L6F83
        .byte   $20
L6F58:  .byte   $9E
L6F59:  .byte   $B3
        lda     #$00
        sta     L0410,x
        .byte   $9D
L6F60:  bmi     $6F66
        lda     L04A0,x
        bne     L6F80
        lda     #$81
        .byte   $9D
        .byte   $D0
L6F6B:  .byte   $04
        lda     #$80
        sta     L0530,x
        .byte   $A9
L6F72:  .byte   $02
        sta     L0540,x
        lda     #$1E
        .byte   $9D
        .byte   $90
L6F7A:  .byte   $04
        lda     #$3D
        sta     L04A0,x
L6F80:  dec     L04A0,x
L6F83:  rts

        .byte   $A5
L6F85:  cpx     L0065
        sbc     L0085
        .byte   $E5
L6F8A:  and     #$0F
        tay
        .byte   $B9
L6F8E:  .byte   $81
L6F8F:  .byte   $AF
        rts

L6F91:  brk
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
        lda     L04D0,x
        and     #$0F
        bne     L6FC6
        sta     L0550,x
        lda     #$02
        sta     L0560,x
        inc     L04D0,x
        jsr     LB487
        lda     #$1E
        sta     L0480,x
        lda     #$00
        sta     L05A0,x
        jsr     LB119
        sta     L04B0,x
L6FC6:  lda     L003B
        beq     L6FD3
        jsr     LF880
        dec     L003B
        jsr     LF869
        rts

L6FD3:  lda     L04D0,x
        and     #$0F
        cmp     #$02
        beq     L6FEB
        cmp     #$03
        beq     L7028
        jsr     LF539
        cmp     #$48
        bcc     L6FEA
        inc     L04D0,x
L6FEA:  rts

L6FEB:  lda     L0480,x
        bne     L7024
        inc     L04D0,x
        lda     #$00
        sta     L0580,x
        sta     L0530,x
        sta     L0540,x
        sta     L0550,x
        sta     L04A0,x
        lda     #$FE
        sta     L0560,x
        lda     L04E0,x
        and     #$0F
        bne     L7019
        lda     #$07
        .byte   $9D
        .byte   $80
L7014:  .byte   $04
        sta     L0490,x
        rts

L7019:  lda     #$09
        sta     L0480,x
        lda     #$04
        sta     L0490,x
        rts

L7024:  dec     L0480,x
        rts

L7028:  lda     L04B0,x
        bne     L7036
        jsr     LB12A
        jsr     LB119
        sta     L04B0,x
L7036:  dec     L04B0,x
        lda     L0480,x
        bne     L7076
        lda     L0063
        bne     L7045
        jsr     LF824
L7045:  lda     L0580,x
        clc
        adc     L04A0,x
        tay
        lda     LB0C9,y
        sta     L0550,x
        lda     LB0D9,y
        sta     L0560,x
        lda     LB0E9,y
        sta     L0530,x
        lda     LB0F9,y
        sta     L0540,x
        lda     L0400,x
        and     #$BF
L706A:  ora     LB109,y
        sta     L0400,x
L7070:  lda     L0490,x
        sta     L0480,x
L7076:  dec     L0480,x
        lda     #$00
        sta     L0000
        lda     L0540,x
        .byte   $10
L7081:  .byte   $02
        dec     L0000
        lda     L0470,x
        clc
        adc     L0530,x
        sta     L0470,x
        .byte   $BD
L708F:  .byte   $F0
L7090:  .byte   $04
        adc     L0540,x
        sta     L04F0,x
        lda     L0500,x
        adc     L0000
        sta     L0500,x
        lda     L0460,x
        clc
        adc     L0550,x
        sta     L0460,x
        lda     L0510,x
        adc     L0560,x
        sta     L0510,x
        cmp     #$00
        beq     L70BB
        cmp     #$FF
        beq     L70CA
        rts

L70BB:  lda     #$F0
        .byte   $9D
L70BE:  bpl     $70C5
        lda     L0520,x
        clc
        adc     #$FF
        sta     L0520,x
        rts

L70CA:  lda     #$10
        sta     L0510,x
        lda     L0520,x
        clc
        adc     #$01
        sta     L0520,x
        rts

        cmp     L27E5
        .byte   $8B
        brk
        adc     L00D9,x
        cmp     L1B33,y
        cmp     L0075,y
        .byte   $8B
        .byte   $27
        .byte   $14
        inc     LFFFE,x
        .byte   $FF
        brk
        brk
        brk
        brk
        ora     (L0001,x)
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        adc     L00D9,x
        .byte   $1B
        .byte   $33
        .byte   $1B
        cmp     L0075,y
        .byte   $8B
        .byte   $27
        sbc     L00CD
        sbc     L0027
        .byte   $8B
        brk
        brk
        brk
        ora     (L0001,x)
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
        lda     L00E4
        adc     L00E5
        sta     L00E5
        and     #$03
        tay
        lda     LB126,y
L7135:  rts

        ldy     L003C,x
        sei
L7139:  .byte   $3C
        jsr     LFA4C
        bcs     L7135
        sty     L000F
        lda     L04F0,x
        sta     L04F0,y
        lda     L0500,x
        sta     L0500,y
        lda     L0510,x
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$62
        jsr     LFA84
        lda     #$0B
L7160:  sta     L04E0,y
        lda     #$0F
L7165:  sta     L0570,y
        lda     #$00
        .byte   $99
L716B:  ldy     #$05
        .byte   $20
        .byte   $3F
L716F:  .byte   $F9
        tay
L7171:  sty     L0000
        .byte   $B9
L7174:  .byte   $67
        lda     #$A4
        .byte   $0F
        sta     L0580,y
        ldy     L0000
L717D:  lda     LB194,y
        ldy     L000F
        sta     L0530,y
        ldy     L0000
        lda     LB1A4,y
        ldy     L000F
        sta     L0540,y
L718F:  ldy     L0000
        lda     LB1B4,y
        ldy     L000F
        sta     L0550,y
        ldy     L0000
        lda     LB1C4,y
        ldy     L000F
        sta     L0560,y
        rts

        brk
        .byte   $C3
        ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        .byte   $C3
L71AE:  ror     a
        cmp     LD900,y
        ror     a
        .byte   $C3
        brk
        brk
        ora     (L0001,x)
        .byte   $02
        ora     (L0001,x)
        brk
        brk
        brk
        ora     (L0001,x)
        .byte   $02
        ora     (L0001,x)
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
        cmp     L0102,y
        ora     (L0000,x)
        brk
        brk
        ora     (L0001,x)
        .byte   $02
        ora     (L0001,x)
        brk
        brk
        brk
        ora     (L0001,x)
        lda     L04D0,x
        and     #$0F
        bne     L71F8
        lda     #$2D
        sta     L0480,x
        lda     #$78
        sta     L04A0,x
        inc     L04D0,x
L71F8:  lda     L04A0,x
        beq     L7201
        dec     L04A0,x
        rts

L7201:  lda     L04C0,x
        bne     L7246
        jsr     LFAAE
        bcs     L7249
        lda     #$1E
        sta     L04C0,x
        lda     #$1D
        jsr     LF850
        lda     L0054
        cmp     #$02
        bne     L722F
        lda     L04D2
        bpl     L7225
        lda     #$83
        sta     L04D2
L7225:  lda     L04D3
        bpl     L722F
        lda     #$83
        sta     L04D3
L722F:  inc     L0490,x
        lda     L0490,x
        cmp     #$08
        bne     L7246
        ldy     #$00
        jsr     LB2D9
        inc     L0063
        jsr     LB2A7
        jmp     LFA9A

L7246:  dec     L04C0,x
L7249:  lda     L0480,x
        bne     L7288
        lda     #$2D
        sta     L0480,x
        jsr     LB24C
        bne     L725B
        jsr     LB27C
L725B:  rts

        lda     #$00
        .byte   $85
L725F:  brk
        lda     #$61
        sta     L0001
        ldy     #$0F
L7266:  lda     L04D0,y
        bmi     L727C
L726B:  dey
        cpy     #$06
        .byte   $D0
L726F:  inc     L00A5,x
        brk
L7272:  cmp     #$02
        beq     L7279
        lda     #$00
        rts

L7279:  lda     #$FF
        rts

L727C:  lda     L0001
        cmp     L0420,y
        bne     L726B
        inc     L0000
        jmp     LB25B

L7288:  dec     L0480,x
        rts

        jsr     LFA4C
        bcs     L72B6
L7291:  lda     #$78
L7293:  sta     L04F0,y
        lda     L0500,x
        sta     L0500,y
        lda     #$00
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$61
        jsr     LFA84
        lda     #$5F
        sta     L04E0,y
        lda     #$49
        sta     L0570,y
L72B6:  rts

        jsr     LFA4C
        bcs     L72B6
        sty     L000F
        lda     #$E0
        sta     L04F0,y
        lda     L0500,x
        sta     L0500,y
        lda     #$37
        sta     L0510,y
        lda     L0520,x
        sta     L0520,y
        lda     #$22
        jsr     LFA84
        lda     #$08
        sta     L04E0,y
        lda     #$02
        sta     L0570,y
        lda     #$00
        sta     L05A0,y
        rts

        stx     L000F
        lda     LB2FE,y
        sta     L0000
        lda     LB2FF,y
        sta     L0001
        lda     #$00
        tax
        tay
L72F9:  lda     (L0000),y
        sta     L0360,x
        inx
        iny
L7300:  cpy     #$80
        bne     L72F9
        sty     L0019
        lda     #$00
        sta     L061C
        ldx     L000F
        rts

        brk
        .byte   $B3
        jsr     L0198
        .byte   $5C
        eor     LB820,x
        ora     (L006C,x)
        adc     LD820
        ora     (L005C,x)
        eor     LF820,x
        ora     (L006C,x)
        adc     LA0FF
        .byte   $0F
L7327:  lda     L04D0,y
        bpl     L7348
        lda     #$00
        sta     L0570,y
        lda     L04E0,y
        cmp     #$51
        beq     L7348
        cmp     #$54
        beq     L7348
        cmp     #$57
        beq     L7348
        lda     #$00
        sta     L04D0,y
        sta     L04E0,y
L7348:  dey
        cpy     #$00
        bne     L7327
        lda     #$4F
        sta     L04E0,x
        lda     #$80
        sta     L04D0,x
        sta     L04D0
        lda     #$00
        sta     L0480,x
        sta     L0490,x
        sta     L04A0,x
        sta     L04B0,x
        jsr     LF607
        lda     L0050
        cmp     #$06
        beq     L7379
        cmp     #$07
        beq     L7379
        lda     #$0F
        sta     L0050
L7379:  rts

        lda     L00EE
        cmp     #$10
        bcc     L7383
        jmp     LB315

L7383:  lda     L00ED
        beq     L73A5
        lsr     a
        lsr     a
        lsr     a
        bcs     L7396
        lda     L0400,x
        ora     #$08
L7391:  sta     L0400,x
        bne     L739E
L7396:  lda     L0400,x
        and     #$F7
        sta     L0400,x
L739E:  cpx     L00EF
        bne     L73AD
        dec     L00ED
        rts

L73A5:  lda     L0400,x
        and     #$F7
        sta     L0400,x
L73AD:  rts

        lda     L00ED
        bne     L7406
        jsr     LFAAE
        bcs     L7406
        ldy     L000F
        lda     L0420,y
        cmp     #$13
        beq     L73E0
        cmp     #$14
        beq     L73E0
        cmp     #$16
        beq     L73E0
        cmp     #$19
        beq     L73E0
        cmp     #$1A
        beq     L73E0
        cmp     #$18
        beq     L73DE
        cmp     #$17
        beq     L73DC
        cmp     #$29
        beq     L73DC
L73DC:  inc     L00EE
L73DE:  inc     L00EE
L73E0:  inc     L00EE
        lda     #$1D
        jsr     LF850
        ldy     L000F
        lda     L04E0,y
        cmp     #$07
        beq     L73FE
        lda     L0420,y
        cmp     #$17
        beq     L73FE
        cmp     #$18
        beq     L73FE
        jsr     LF872
L73FE:  lda     #$1E
        .byte   $85
L7401:  sbc     $EF86
        clc
        rts

L7406:  sec
        rts

        lda     #$00
        sta     L0410
L740D:  sta     L0430
        sta     L0570,x
        sta     L0430,x
        sta     L0410,x
        lda     L04D0,x
        and     #$0F
        bne     L743F
        sta     L0540,x
        lda     #$44
        sta     L0550,x
        lda     #$03
        sta     L0560,x
        lda     #$80
        sta     L0530,x
        lda     #$D0
        sta     L0400,x
        lda     #$1E
        jsr     LF850
        inc     L04D0,x
L743F:  lda     L0580,x
        and     #$01
        beq     L744F
        jsr     LF24B
        jsr     LF4FD
        jmp     LB445

L744F:  jsr     LF2A6
        jsr     LF51B
        jsr     LF5C9
        lda     L0510,x
        .byte   $C9
L745C:  cpx     #$90
        .byte   $04
        .byte   $A9
L7460:  ora     L0085,x
        .byte   $50
L7463:  rts

        lda     #$00
        .byte   $8D
L7467:  brk
        .byte   $06
L7469:  .byte   $8D
L746A:  .byte   $0F
        .byte   $06
L746C:  .byte   $8D
L746D:  bpl     $7475
        .byte   $8D
        .byte   $1F
L7471:  asl     L008D
        jsr     $8D06
L7476:  .byte   $2F
        asl     L008D
        bmi     $7481
        sta     L063F
        sta     L0640
        sta     L064F
        sta     L0650
        sta     L065F
        sta     L0660
        sta     L066F
        .byte   $8D
L7491:  bvs     $7499
        sta     L067F
        rts

        lda     #$00
        sta     L0680
        sta     L068F
        sta     L0690
        sta     L069F
        sta     L06A0
        sta     L06AF
        sta     L06B0
        sta     L06BF
        sta     L06C0
        sta     L06CF
        sta     L06D0
        sta     L06DF
        sta     L06E0
        sta     L06EF
        sta     L06F0
        sta     L06FF
        rts

        jsr     LFAAE
        bcs     L7505
        ldy     L000F
        lda     L04E0,y
        cmp     #$1F
        beq     L7505
        lda     L0420,y
        cmp     #$14
        beq     L7506
        cmp     #$16
        beq     L7506
        jsr     LB507
        lda     #$80
        sta     L0530,y
        sta     L0550,y
        lda     #$03
        sta     L0540,y
        sta     L0560,y
        lda     #$1F
        sta     L04E0,y
        lda     #$00
        sta     L0570,y
        lda     #$1A
        jsr     LF850
L7505:  rts

L7506:  lda     #$00
        sta     L04D0,y
        sta     L0400,y
        sta     L04E0,y
        lda     #$FF
        sta     L0590,y
        rts

        ldy     L000F
        lda     L04E0,y
        cmp     #$1F
        beq     L7505
        lda     L0580,y
        cmp     #$01
        beq     L753C
        cmp     #$02
        beq     L7542
        cmp     #$09
        beq     L753C
        cmp     #$05
        beq     L753C
        cmp     #$0A
        beq     L7542
        cmp     #$06
        beq     L7542
        rts

L753C:  lda     #$0A
        sta     L0580,y
        rts

L7542:  lda     #$09
        sta     L0580,y
        rts

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
L7586:  brk
        brk
        brk
        brk
        brk
        brk
        brk
L758D:  brk
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
L7601:  brk
        brk
L7603:  brk
        brk
        brk
        brk
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
L765C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L766A:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L766F:  .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
L7676:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L7680:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L768F:  brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L769E:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L76C1:  brk
        brk
        brk
        brk
        brk
        brk
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
L76D7:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        sta     (L0092),y
        sta     L1592,y
        ora     L0015,x
        ora     L00D0,x
        cmp     (L0015),y
        ora     L00D3,x
        ora     L0015,x
        ora     L0015,x
        .byte   $C3
        ora     L00CB,x
        txs
        sta     (L009A),y
        sta     L9291,y
        bcc     L769E
        txs
        sta     (L009A),y
        bcc     L7726
        ora     L0093,x
        sty     L0015,x
        ora     L0094,x
        sty     L0015,x
        ora     L0094,x
        .byte   $95
L771C:  txs
        sta     (L0051),y
        sta     L1515,y
        ora     L0013,x
        .byte   $0E
        .byte   $0C
L7726:  asl     a
        ora     #$C8
        dex
        .byte   $8B
        cmp     L0D0C,x
        ora     #$02
        eor     L9A91,y
        sta     L1B15,y
        ora     L001D,x
        .byte   $12
        ora     L001A,x
        .byte   $1C
        asl     a
        asl     L010A,x
        .byte   $1E
L7741:  asl     L8483,x
        asl     LDE02,x
        .byte   $DF
        .byte   $A3
        .byte   $92
        tya
        .byte   $92
        .byte   $1C
        ora     L1D1D,x
        ora     L1D1D,x
        ora     L090A,x
        asl     a
        asl     L8C8B,x
L775A:  asl     LC9D9,x
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
L776A:  rol     a
        .byte   $2B
        tax
        sta     (L00AB),y
        bcc     L771C
        sta     (L00AB),y
        sta     L1592,y
        .byte   $92
        ora     L000A,x
        .byte   $01
L777A:  asl     a
        ora     #$1E
        ora     (L001E,x)
        .byte   $09
L7780:  ldx     #$91
        .byte   $A3
        sta     L010A,y
        .byte   $0F
        ora     #$AB
        sta     (L0016),y
        .byte   $07
        tax
        ldx     #$07
        .byte   $17
L7790:  .byte   $9E
        .byte   $9B
        txs
        sta     (L009B),y
        sta     L9291,x
        .byte   $1F
        ora     (L000A,x)
        ora     #$9B
        .byte   $9C
        .byte   $AB
        sta     L1315,y
        ora     L001B,x
        txs
        bcc     L7741
        sta     (L0090),y
        .byte   $92
        sta     (L0092),y
L77AC:  and     (L00D5,x)
        jsr     LAA20
        .byte   $A3
        tya
        tya
        .byte   $92
        ora     L0092,x
        .byte   $1A
        txs
        sta     L989A,y
        bmi     L77EF
        sec
        and     L1E0A,y
        asl     a
        asl     L2020,x
        jsr     L2320
        .byte   $23
        rol     a
        .byte   $2B
        .byte   $02
        .byte   $15
L77CE:  .byte   $02
        ora     L00C3,x
        txs
        .byte   $CB
        txs
        .byte   $1C
        ora     LD621,x
        ora     L009A,x
        .byte   $1C
        txs
        and     (L00D6,x)
        jsr     LA320
        tya
        .byte   $3B
        .byte   $3B
        tya
        tya
        .byte   $3B
        .byte   $3B
        tax
        sta     (L0016),y
        .byte   $17
        jsr     L2048
L77EF:  jsr     L9A1D
        ora     LAB9A,x
        sta     (L0016),y
        asl     L0098
        sta     (L0007),y
        asl     L00AB
        sta     (L00AB),y
        bcc     L77AC
        .byte   $A3
        ldx     #$AA
        ldy     #$11
L7806:  clc
        ora     LA3AA,y
        tya
        tax
        ldx     #$AA
        and     (L00D5,x)
        ldx     #$AA
        and     (L00D6,x)
        tax
        .byte   $DB
        tya
        .byte   $DB
        cmp     #$DC
        cld
        .byte   $DC
        .byte   $A3
        sta     L91AA,y
        .byte   $AB
        bcc     L77CE
        sta     (L00A3),y
        sta     L11A0,y
        .byte   $AB
        sta     L98AB,y
        .byte   $AB
        sta     L91AB,y
        .byte   $AB
        sta     L91A2,y
        clc
        ora     L91A2,y
        .byte   $A3
        .byte   $A3
        tax
        ldy     #$AA
        bcc     L7850
        sta     (L00AB),y
        clc
        .byte   $AB
        sta     (L0019),y
        sta     L91AB,y
        asl     L0007
        .byte   $9B
        .byte   $9C
        asl     L0017
        .byte   $9B
        .byte   $9C
L7850:  asl     L0006,x
        .byte   $9B
        .byte   $9C
        .byte   $07
        .byte   $07
        .byte   $9B
        .byte   $9C
        ldx     #$98
        tya
        ldy     #$98
        sta     (L0011),y
        sta     L98A2,y
        ldy     #$11
        ldx     #$91
        asl     L0007
        tax
L7869:  ldx     #$06
        .byte   $17
        .byte   $A2
L786D:  clc
        .byte   $AB
        .byte   $AB
        ora     LAB91,y
        sta     L1918,y
        ldx     #$98
        ldx     #$91
        asl     L0006,x
        ldx     #$91
        asl     L0017
        ora     L0015,x
        .byte   $3A
        .byte   $3A
        bit     L0025
        bit     L262D
        .byte   $27
        rol     L2C2F
        and     L002C,x
        and     L2F36,x
        rol     L2C2F,x
        and     L352C
        rol     L362F
        .byte   $2F
        rts

        adc     (L0068,x)
        adc     #$2C
        and     L2D2C,x
        rol     L2E2F,x
        .byte   $2F
        bvs     L791B
        rts

        adc     (L0047,x)
        lsr     L0044
        lsr     L1547
        jmp     L154D

        ora     L0060,x
        adc     (L0015,x)
        ora     L0061,x
        adc     (L0060,x)
        adc     (L0061,x)
        adc     (L0061,x)
        .byte   $63
        adc     (L0063,x)
        .byte   $64
        adc     (L0064,x)
        adc     (L0068,x)
        adc     #$70
        adc     (L0069),y
        adc     #$71
        adc     (L0069),y
        .byte   $6B
        adc     (L006B),y
        eor     L0055,x
        ror     L0066
        jmp     (L7469)

        adc     (L0061),y
        adc     (L0069,x)
        adc     #$61
        .byte   $63
        adc     #$6B
        eor     L725F,x
        .byte   $72
        .byte   $64
        adc     (L006C,x)
        adc     #$71
        adc     (L0079),y
        adc     L6B71,y
        adc     L5B7B,y
        .byte   $5B
        .byte   $5B
        .byte   $5B
        .byte   $74
        adc     (L007C),y
        adc     L7979,y
        adc     #$B7
L7900:  adc     L5479,y
        .byte   $54
        adc     L547B,y
        .byte   $BF
        .byte   $5B
        .byte   $5B
        eor     L0055,x
        .byte   $7C
        adc     L696C,y
        .byte   $3F
        .byte   $3F
        eor     L665F,x
        ror     L005D
        .byte   $5F
        .byte   $72
        .byte   $72
        .byte   $5B
L791B:  .byte   $5B
        .byte   $72
        .byte   $72
        .byte   $5B
        adc     L7B79,x
        adc     #$6B
        .byte   $5B
        .byte   $5B
        eor     L0057,x
        .byte   $5B
        sta     L0055
        .byte   $57
        dec     L0061
        ldx     L0054,y
        adc     (L0061,x)
        .byte   $54
        .byte   $54
        .byte   $CF
        adc     L5454,y
        eor     L725F,x
        .byte   $B2
        .byte   $3F
        adc     L7272
        .byte   $3F
        adc     L7E72
        .byte   $5B
        .byte   $5B
        .byte   $5B
        stx     L005B
        .byte   $B2
        .byte   $5B
        .byte   $B2
        rti

        eor     (L0042,x)
        .byte   $43
        .byte   $5B
        stx     L005B
        stx     L0079
        .byte   $C7
        adc     #$69
        cmp     (L00C1,x)
        adc     #$69
        adc     L697A,y
        ror     a
L7960:  adc     (L006A),y
        .byte   $79
L7963:  tsx
        ora     L0015,x
        lsr     a
        .byte   $4B
        adc     #$6A
        adc     (L006A),y
        adc     L547A,y
        .byte   $82
        .byte   $3F
        ror     L6F72
        .byte   $5B
        .byte   $6F
        .byte   $5B
        .byte   $6F
L7978:  .byte   $34
L7979:  .byte   $34
        .byte   $32
L797B:  .byte   $33
        adc     (L0062,x)
L797E:  adc     #$6A
L7980:  rol     L0035,x
        rol     L2E3D,x
        and     L3536
        .byte   $87
        ora     L008F,x
        .byte   $9F
        ora     L0015,x
        bvc     L79A5
        ora     L0015,x
        ora     L0050,x
        cli
        ora     L0058,x
L7997:  .byte   $14
        ora     L0058,x
        .byte   $15
L799B:  cli
        cli
        .byte   $14
        cli
        .byte   $14
        .byte   $14
        cli
        .byte   $14
        cli
        .byte   $24
L79A5:  .byte   $27
        bit     L152F
        bvc     L79C0
        cli
        bvc     L79C3
        cli
        ora     L0070,x
        .byte   $73
        sei
        .byte   $7B
        .byte   $74
        ror     a
        .byte   $7C
        .byte   $7A
        pla
        .byte   $73
        bvs     L7A2F
        eor     L0057,x
        asl     L0006
L79C0:  jmp     (L746A)

L79C3:  ror     a
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
        eor     L0057,x
        php
        .byte   $75
L79D4:  .byte   $74
        ror     a
        dec     LBB82
        .byte   $3F
        .byte   $B3
        .byte   $72
        eor     L725F,x
        ror     L1558,x
        cli
        ora     L0015,x
        ora     L0024,x
        and     L0015
        ora     L0034,x
        .byte   $34
        .byte   $13
        ora     L0026,x
        .byte   $2F
        bit     L242D
        and     L0032,x
        .byte   $33
        rol     L0035,x
        rol     L3625
        and     L3D3E
        rol     L3E2D
        and     L002E,x
        .byte   $3D
L7A04:  .byte   $C3
        ldx     L00CB
        ldx     L00B9
        ldy     LA4B1
        clv
        lda     LA4B9
        clv
L7A11:  ldy     LA4B9
        lda     (L00AC),y
        ldy     #$A1
        ora     L00A6,x
        ora     L00A6,x
        asl     L0006,x
        ldx     L07A5
        .byte   $07
        ldx     L06A5
        .byte   $17
        ldx     LA8A5
        lda     #$B1
        ldy     L0093
        sty     L009E,x
L7A2F:  .byte   $9C
        sty     L0095,x
        .byte   $9C
        sta     L999A,x
        txs
        sta     (L0099),y
        .byte   $92
        sta     (L0092),y
        .byte   $3C
        and     L002E,x
        and     L2D36,x
        rol     LAF35,x
        ora     L00AF,x
        ora     L0078,x
        adc     L6968,y
        adc     L6979,y
        adc     #$70
        adc     (L0078),y
        adc     L6968,y
        .byte   $80
        cpy     L0069
        adc     #$C5
        adc     (L003C),y
        .byte   $27
        .byte   $2E
        .byte   $2F
L7A60:  .byte   $52
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
        adc     L008D
        brk
        brk
        brk
        dey
        .byte   $89
        brk
        brk
        brk
L7A78:  brk
        brk
        brk
        .byte   $97
        .byte   $62
        brk
        ror     a
        brk
        brk
        rts

        brk
        pla
        .byte   $F4
        sbc     L00FC,x
        sbc     LE1E0,x
        inx
        sbc     #$E2
        .byte   $E3
        nop
        .byte   $EB
        brk
        brk
        sbc     L00F1
        cpx     L00E5
        cpx     LF1ED
        .byte   $F2
        brk
L7A9B:  brk
        beq     L7A9E
L7A9E:  brk
        brk
        brk
        .byte   $F3
        brk
        brk
        inc     L00E7
        brk
        .byte   $EF
        brk
        brk
        .byte   $F2
        inc     L00ED
        brk
        brk
        brk
        inc     LEEEE
        inc     LF6EE
        inc     LF7FE
        inc     LEEFF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        bpl     L7B4A
        .byte   $62
        brk
        .byte   $42
        brk
        brk
        brk
        .byte   $02
        .byte   $F4
        dec     L00C4
        ora     (L0001),y
        and     L0064
        bpl     L7B2E
        ora     (L00E4),y
        ora     (L0011,x)
        .byte   $C7
        adc     LD0C0,x
        sty     L009A
        asl     L0008
        asl     a
        .byte   $47
        clc
        ora     LA4A4
        asl     L0008
        and     #$47
        .byte   $80
        .byte   $82
        and     #$5B
        asl     a
        php
        and     LA02B,y
        ldx     #$76
        inx
        asl     a
        sec
L7B2E:  eor     LE900,y
        nop
        ldy     LA8BD,x
        ora     (L0011),y
        stx     L00F0,y
        ora     (L0067),y
        dec     L1DA6,x
        lda     #$11
        iny
        .byte   $E2
        .byte   $C2
        .byte   $1C
        ror     L3C5C
        pla
        .byte   $E7
        .byte   $F2
L7B4A:  .byte   $D2
        .byte   $0C
        .byte   $AF
        bpl     L7BBB
        adc     #$7A
        .byte   $7C
        .byte   $7C
        .byte   $7C
        .byte   $AF
        jmp     L2E10

        txa
        ror     L6E6E
        .byte   $AF
        ror     a
        ror     a
        adc     #$8A
        ror     L6E60
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
        .byte   $41
L7B75:  .byte   $4F
        .byte   $3C
        ora     (L0000),y
L7B79:  .byte   $04
L7B7A:  .byte   $F4
L7B7B:  .byte   $C7
L7B7C:  eor     (L004E),y
        brk
L7B7F:  dex
        jsr     L5640
        .byte   $43
        .byte   $44
        .byte   $44
        .byte   $04
        brk
L7B88:  bpl     L7BDA
        and     (L0000,x)
        .byte   $42
        brk
        brk
        ora     (L0002),y
        .byte   $F4
        bpl     L7B88
        rti

        brk
        and     (L00F4,x)
        bpl     L7BBE
        .byte   $F4
        .byte   $F4
        bvc     L7BBE
L7B9E:  brk
        lsr     L0010,x
        .byte   $F4
        .byte   $3C
        ora     (L0048),y
        ora     (L00AF),y
        ror     LF4F4
        .byte   $9C
        ora     (L0000),y
        ora     (L0000),y
        ror     LDDBC
        brk
        ora     (L006E,x)
        ror     L9C33
        brk
        brk
        .byte   $52
L7BBB:  ora     (L00AD,x)
        .byte   $7C
L7BBE:  .byte   $AF
        lda     L0001,x
        sbc     LFF01,x
        cmp     (L00D1),y
        cmp     (L00D0),y
        sta     L1BC7
        bpl     L7BEE
        eor     (L00C7),y
        .byte   $C7
        brk
        brk
        brk
        brk
        brk
        .byte   $42
        jmp     L5400

        .byte   $56
L7BDA:  cli
        .byte   $5A
        rts

        adc     L0001,x
        ror     L4674
L7BE2:  pha
        brk
        ror     L0068
        asl     L001A,x
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $62
        .byte   $6C
L7BEE:  ror     a:L0000,x
        eor     (L0062,x)
        .byte   $44
        .byte   $44
        eor     L0063
        adc     L0010
        eor     (L00C7),y
        brk
        .byte   $52
        brk
        brk
        .byte   $C7
        .byte   $03
        sbc     L0001,x
        cmp     L0001
        ora     (L0065,x)
        rol     L0023
        bpl     L7BE2
        sbc     L0001
        ora     (L00C7),y
        .byte   $C7
        cmp     (L00D1,x)
        sta     L009A
        .byte   $07
        ora     #$07
        pha
        sta     L000E
        lda     L00A5
        .byte   $07
        and     #$07
        pha
        sta     (L0083,x)
        .byte   $5A
        and     #$09
        and     L2D07,y
        lda     (L00A3,x)
        ror     L00E8,x
        .byte   $07
        eor     L0007,y
L7C30:  nop
        .byte   $EB
        lda     L98BF,x
        ora     (L0099),y
        .byte   $97
        sbc     (L00E7),y
        dec     LA7DF,x
        ora     (L0011),y
        ora     (L00C9),y
        sbc     L00C3,x
        ora     (L009B,x)
        .byte   $5C
        .byte   $0F
        .byte   $5C
        ora     (L00F5),y
        .byte   $D3
        ora     (L006F,x)
        bpl     L7CAC
        bpl     L7CCC
        .byte   $7B
        .byte   $7F
        ldx     L4D7B
        bpl     L7C86
        .byte   $9B
        .byte   $9B
        .byte   $8F
        ldx     a:L009B
        .byte   $11
L7C5F:  ora     (L006F),y
        .byte   $6F
        adc     (L00AE,x)
        .byte   $6F
        bpl     L7C95
        brk
        sta     L8F9D,x
        ldx     LC59D
        adc     (L0061,x)
        .byte   $6F
        ldy     L408F
        .byte   $C7
        sbc     L00D7
        ora     (L0004),y
        .byte   $14
        .byte   $05
L7C7B:  bvc     L7C88
        lsr     LCB01,x
        eor     (L0041),y
        ora     L0044
        .byte   $44
        .byte   $45
L7C86:  brk
        brk
L7C88:  bpl     L7CDB
        sbc     L0000,x
        .byte   $52
        brk
        brk
        .byte   $11
L7C90:  .byte   $03
        sbc     L0010,x
        bpl     L7CD6
L7C95:  brk
        .byte   $F5
L7C97:  ora     L0023
        bpl     L7C90
        sbc     L0051,x
        eor     (L0000),y
        ora     L0010
        bpl     L7CB4
        adc     #$11
        adc     L9B9B,y
        sbc     L00F5,x
        ror     L006A
L7CAC:  ora     (L0000),y
        brk
        ldx     LDCBD
        brk
        .byte   $7E
L7CB4:  .byte   $6F
        .byte   $6F
        .byte   $7B
        .byte   $7B
        .byte   $42
        brk
L7CBA:  brk
        stx     L9D7B
        .byte   $6F
        sta     LFEFC,x
        ora     (L0001,x)
        bne     L7C97
        .byte   $32
        .byte   $32
        sbc     L620B
        .byte   $15
L7CCC:  sbc     L00C7,x
        .byte   $C7
        .byte   $62
        brk
        brk
        brk
        brk
        eor     (L0043,x)
L7CD6:  eor     L5500
        .byte   $57
        .byte   $59
L7CDB:  .byte   $5B
L7CDC:  adc     (L0000,x)
        ora     (L006F,x)
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
L7CED:  adc     L5F00
        brk
        bvc     L7CBA
        .byte   $53
        .byte   $54
        .byte   $54
        .byte   $73
        .byte   $74
        bpl     L7D6A
        .byte   $62
        bpl     L7D4D
        .byte   $C7
        .byte   $62
        brk
L7D00:  .byte   $12
        .byte   $22
        ora     (L00D4),y
        ora     (L0001),y
        and     L0074,x
        bpl     L7D1A
        ora     (L0011),y
        ora     (L0011),y
        .byte   $C7
        .byte   $62
        cpy     #$C0
        .byte   $E3
        .byte   $E3
        asl     L0028,x
        .byte   $1A
        .byte   $57
        .byte   $E3
        .byte   $3B
L7D1A:  sty     L0095,x
        asl     L0008,x
        and     L9057,y
        .byte   $92
        and     L1A08,y
        php
        eor     #$3E
        bcs     L7CDC
        stx     L00F8
        .byte   $1A
        php
        ora     (L005D),y
        sbc     LCCFA,y
        cmp     L97A8
        sta     LC0A8,y
        ora     (L0077),y
        inc     LD6B6
        lda     LD887,y
        .byte   $E2
        .byte   $D2
        .byte   $1C
        .byte   $9C
        bpl     L7D83
        adc     #$E7
        and     (L00D2),y
        .byte   $0C
        .byte   $AF
L7D4D:  eor     L786D,x
        txa
        sty     L8C8C
        .byte   $AF
        .byte   $89
        eor     L8A6A,x
        ror     L6E6E
        .byte   $AF
        sei
        adc     #$69
L7D60:  txa
        ror     L6E0C
        .byte   $AF
        adc     #$00
        pla
        txa
        .byte   $8C
L7D6A:  sty     LAF8C
        .byte   $3F
        bit     LF61C
L7D71:  sty     LC79C
        eor     (L003C),y
        .byte   $3C
        tsx
        brk
        .byte   $04
        .byte   $F4
L7D7B:  .byte   $C7
        .byte   $71
L7D7D:  cpx     #$00
        .byte   $DA
L7D80:  bmi     L7DD2
L7D82:  .byte   $F4
L7D83:  .byte   $53
        .byte   $54
        .byte   $54
        brk
        .byte   $14
        bpl     L7DFA
        and     (L0010),y
        bvc     L7D82
        and     (L00AA),y
L7D90:  .byte   $12
        .byte   $22
        .byte   $F4
        .byte   $10
L7D94:  bvc     $7DE6
        and     (L00F4),y
        bpl     L7DAA
        bpl     L7D90
        bvs     L7DCE
L7D9E:  bpl     L7D94
        .byte   $F4
        bpl     L7DDF
        ora     (L0048),y
        ora     (L0034),y
        ror     LF410
L7DAA:  sty     L4811
        ora     (L0000),y
        .byte   $9C
        cpy     a:L008C
        ora     (L009C,x)
        .byte   $9C
        .byte   $AF
        sty     LECC7
        eor     (L0001),y
        sty     L348C
        sty     L0101
        ora     (L0001,x)
        cpy     #$C0
        cpy     #$C0
L7DC8:  cpx     L1BC7
        .byte   $F4
        and     (L0071),y
L7DCE:  .byte   $1F
        .byte   $72
        brk
        .byte   $46
L7DD2:  pha
        lsr     a
        bvc     L7E28
        .byte   $5C
        lsr     a:L0064,x
L7DDA:  brk
        ror     a
        bvs     L7DDE
L7DDE:  .byte   $01
L7DDF:  brk
        brk
        .byte   $56
L7DE2:  cli
        brk
        .byte   $76
L7DE5:  sei
        lsr     L0F00
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $72
        .byte   $7C
        rti

        .byte   $44
        brk
        eor     (L0062),y
        .byte   $54
        .byte   $54
        eor     L0073,x
        adc     L0010,x
        .byte   $71
L7DFA:  .byte   $C7
        bpl     L7E4E
        .byte   $62
        .byte   $C7
        .byte   $C7
L7E00:  .byte   $13
        bpl     L7DDA
        cmp     L0001,x
        ora     (L0075,x)
        rol     L0010,x
        bpl     L7DE2
        ora     (L00E6),y
        ora     (L00C7),y
        .byte   $C7
        cmp     (L00C1,x)
        .byte   $F3
        .byte   $F3
        .byte   $17
        .byte   $19
L7E16:  .byte   $17
        cli
        .byte   $F3
        and     LA495,x
        .byte   $17
        and     L5817,y
        sta     (L0093),y
        .byte   $17
        and     L4919,y
        .byte   $17
        .byte   $4B
L7E28:  lda     (L00B3),y
        stx     L00F8
        .byte   $17
        ora     (L0017),y
        eor     LFBFA,x
        cmp     LB8CF
        ora     (L0088),y
        tya
        cmp     (L00E7,x)
        inc     LB7EF
        ora     (L0087),y
        .byte   $87
        cmp     LD3F5,y
        ora     (L009D,x)
        bpl     L7E56
        bpl     L7E5A
        sbc     L00D3,x
        ora     (L009D,x)
        .byte   $5D
L7E4E:  adc     L8B5D
        .byte   $8B
        .byte   $8F
        ldx     LBE8B
L7E56:  eor     L6F6B,x
        .byte   $6F
L7E5A:  .byte   $8F
        ldx     L5D6F
        ora     (L0011),y
        .byte   $6F
        .byte   $6F
        ora     (L00AE,x)
        .byte   $6F
        bpl     L7E68
        .byte   $69
L7E68:  .byte   $8B
        .byte   $8B
        .byte   $8F
        ldx     LD58B
        .byte   $01
L7E6F:  ora     (L009D,x)
        .byte   $8B
L7E72:  .byte   $F7
        bvc     L7E93
        ora     (L00D7),y
        .byte   $BB
        .byte   $14
        brk
        .byte   $5F
        bvs     L7E88
        .byte   $E1
L7E7E:  .byte   $01
L7E7F:  .byte   $DB
L7E80:  adc     (L0051),y
        ora     L0054,x
        .byte   $54
        eor     L0001,x
        brk
L7E88:  bpl     L7EFB
        sbc     L0010,x
        eor     (L0015),y
        sbc     L00AB,x
        .byte   $13
        bpl     L7E88
L7E93:  bpl     L7EE6
        eor     (L00F5),y
        .byte   $5F
        bpl     L7EAA
        .byte   $F4
        sbc     L0071,x
        adc     (L0010),y
        ora     L00F5,x
        bpl     L7EB4
        adc     #$11
        .byte   $79
        .byte   $9D
L7EA7:  sta     $F5F4,x
L7EAA:  ror     L0069
        ora     (L0079),y
        brk
        ldx     L8BCD
        brk
        .byte   $7E
L7EB4:  sta     L8B6F,x
        .byte   $8B
        bvc     L7EA7
        .byte   $C7
        .byte   $9E
        .byte   $8B
        .byte   $8B
        sta     L018B,x
        ora     (L00FF,x)
        ora     (L00C1,x)
        cmp     (L00C1,x)
        cmp     (L00ED,x)
        .byte   $0B
        .byte   $62
        ora     L00F5,x
        .byte   $C7
        .byte   $1F
        .byte   $62
        eor     L0047
        eor     #$00
        eor     (L0053),y
        eor     L6500,x
        brk
        brk
        .byte   $6B
        brk
        brk
        ora     (L007F,x)
        brk
        .byte   $57
        eor     L777A,y
        .byte   $79
L7EE6:  brk
        .byte   $4F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $73
        adc     L4B71,x
        brk
        .byte   $03
        .byte   $03
        .byte   $13
        .byte   $13
        .byte   $13
        bpl     L7F08
        .byte   $03
        .byte   $03
        .byte   $03
L7EFB:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $23
L7F01:  brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bpl     L7F18
L7F08:  brk
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        and     (L0031),y
        and     (L0031),y
        bmi     L7F46
        bmi     L7F48
L7F18:  and     (L0002),y
        bmi     L7F4C
        bmi     L7F4E
        bmi     L7F50
        and     (L0031),y
        bmi     L7F54
        bmi     L7F56
        bmi     L7F2A
        and     (L0031),y
L7F2A:  .byte   $43
        eor     (L0030,x)
        bmi     L7F5F
        .byte   $03
        and     (L0031),y
        and     (L0031),y
        and     (L0033),y
        .byte   $33
        and     (L0031),y
        .byte   $02
        bpl     L7F4C
        and     (L0033),y
        .byte   $33
        .byte   $33
        .byte   $23
        brk
        eor     (L0002),y
        and     (L0003),y
L7F46:  .byte   $03
        .byte   $03
L7F48:  .byte   $03
        brk
        eor     (L0002),y
L7F4C:  and     (L0003),y
L7F4E:  .byte   $03
        .byte   $03
L7F50:  and     (L0031),y
        and     (L0031),y
L7F54:  and     (L0002),y
L7F56:  .byte   $03
        .byte   $03
        and     (L0031),y
        and     (L0031),y
        and     (L0003),y
        .byte   $03
L7F5F:  .byte   $03
        and     (L0031),y
        .byte   $02
        and     (L0031),y
        .byte   $03
        .byte   $02
        .byte   $03
        and     (L0031),y
        and     (L0031),y
        and     (L0002),y
        .byte   $02
        .byte   $02
        and     (L0031),y
        and     (L0003),y
        .byte   $03
        .byte   $02
L7F76:  .byte   $02
        .byte   $03
        brk
        brk
        brk
        .byte   $03
        .byte   $03
L7F7D:  .byte   $02
L7F7E:  .byte   $02
L7F7F:  .byte   $33
        brk
        brk
        brk
        bpl     L7F95
        bpl     L7F87
L7F87:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        and     (L0001,x)
        brk
        brk
        .byte   $01
L7F95:  ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0000,x)
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        and     (L0031),y
        ora     (L0001,x)
        and     (L0003),y
        .byte   $03
        .byte   $03
        brk
        and     (L0031),y
        and     (L0030),y
        .byte   $02
        and     (L0031),y
        and     (L0031),y
        .byte   $03
        brk
        .byte   $03
        .byte   $02
        and     (L0031),y
        and     (L0031),y
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        and     (L0031),y
        and     (L0031),y
        brk
        .byte   $03
        .byte   $03
        brk
        brk
        .byte   $03
        .byte   $03
        .byte   $03
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0002,x)
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
        inc     LFFE1
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
L8000:  php
L8001:  brk
        brk
        brk
        brk
        brk
L8006:  brk
        brk
        brk
        brk
        brk
        cpy     #$E0
        .byte   $FF
        cpx     #$FF
        lda     L803D,x
        sta     L0000
        lda     L8043,x
L8018:  sta     L0001
        ldy     #$00
        lda     L2002
        lda     (L0000),y
        cmp     #$FF
L8023:  beq     L8046
        sta     L2006
L8028:  jsr     L8037
        lda     (L0000),y
        sta     L2006
        jsr     L8037
        lda     (L0000),y
        tax
        .byte   $20
L8037:  .byte   $37
        .byte   $80
        .byte   $B1
L803A:  brk
        .byte   $8D
        .byte   $07
L803D:  jsr     L3720
        .byte   $80
        dex
        .byte   $D0
L8043:  sbc     L00F0,x
        .byte   $D9
L8046:  rts

        iny
        bne     L804C
        inc     L0001
L804C:  rts

        eor     #$A1
L804F:  cpx     LC889
        ldx     L8080,y
        .byte   $83
        .byte   $87
        .byte   $87
        .byte   $89
        and     (L002C,x)
        php
        sbc     L0003,x
        .byte   $DD
        .byte   $E2
L8060:  cpx     $DEE7
L8063:  .byte   $F2
        .byte   $21
L8065:  .byte   $64
        clc
        sbc     #$EB
        inx
L806A:  .byte   $DD
        .byte   $EE
L806C:  .byte   $DC
L806D:  .byte   $DE
L806E:  .byte   $DD
L806F:  .byte   $03
        .byte   $DB
        .byte   $F2
        .byte   $03
L8073:  .byte   $DC
        .byte   $DA
L8075:  .byte   $E9
L8076:  .byte   $DC
        inx
        .byte   $E6
L8079:  .byte   $03
        cmp     (L00D9),y
        .byte   $D9
        .byte   $D2
L807E:  .byte   $F4
        .byte   $21
L8080:  lda     L0017
        .byte   $DC
        .byte   $DA
        sbc     #$DC
        inx
        inc     L0003
        inc     LECF6
        .byte   $F6
L808D:  .byte   $DA
        .byte   $F6
L808F:  .byte   $F7
        .byte   $E2
        .byte   $E7
        .byte   $DC
        inc     L0003,x
        cmp     (L00D9),y
        cmp     L22D2,y
        rol     L0014
        sbc     L00E2
        .byte   $DC
        dec     LECE7,x
        dec     L03DD,x
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L80D8:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L80EC:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L80FE:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L8106:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L8118:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $04
        ora     L0006
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
        .byte   $02
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
        iny
        iny
        iny
        iny
        iny
        iny
        ora     L0E0D
        .byte   $03
        .byte   $03
        .byte   $0F
        bpl     L8170
        .byte   $03
        .byte   $03
        .byte   $12
        ora     L0D0D
L8165:  ora     L0D0D
        ora     L0D0D
        ora     L0D0D
        .byte   $0D
L816F:  .byte   $0D
L8170:  ora     L0D0D
        ora     L0D0D
        ora     L1313
        .byte   $14
        ora     L0003,x
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        asl     L0017,x
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
        ora     L1F1E,x
        jsr     L1919
        ora     L1919,y
        ora     L1919,y
        ora     L1919,y
        ora     L1919,y
        ora     L2119,y
        ora     L0008
        and     (L0022,x)
        .byte   $23
        .byte   $03
        .byte   $03
        .byte   $03
        bit     L0025
        and     (L0027,x)
        .byte   $07
        rol     L0003
        .byte   $03
L81C8:  .byte   $03
        .byte   $03
        .byte   $27
        plp
        and     (L0047,x)
        .byte   $13
        and     #$03
        .byte   $03
        .byte   $03
        rol     a
L81D4:  .byte   $2B
        bit     a:L0000
        brk
        brk
        and     L2F2E
        .byte   $03
        .byte   $03
        bmi     L8212
        .byte   $32
        and     (L0066,x)
L81E4:  ora     L0033,x
        .byte   $34
        .byte   $03
        .byte   $03
        .byte   $03
        and     L0036,x
        brk
        brk
        brk
        .byte   $37
        sec
L81F1:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        and     L8521,y
        .byte   $17
L81FD:  .byte   $3A
        .byte   $3B
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $3C
        and     L3F3E,x
        rti

        eor     (L0003,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $42
        .byte   $43
        .byte   $44
        .byte   $45
L8212:  lsr     L0047
        and     (L00A5,x)
        .byte   $12
        pha
        .byte   $03
        .byte   $03
        .byte   $03
L821B:  .byte   $03
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
        lsr     L0303
        .byte   $03
        .byte   $03
        .byte   $4F
        bvc     L8285
        .byte   $52
        .byte   $53
        .byte   $54
        eor     L0056,x
        .byte   $57
        cli
        eor     L5B5A,y
        .byte   $5C
        eor     L5F5E,x
        rts

        adc     (L0021,x)
        sbc     L0018
        .byte   $62
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $63
        .byte   $64
        adc     L0066
        .byte   $67
L8252:  pla
        adc     #$6A
        .byte   $6B
        jmp     (L6E6D)

        .byte   $6F
        .byte   $70
L825B:  adc     (L0072),y
        .byte   $73
        .byte   $74
        .byte   $22
        ora     L0018
        adc     L0076,x
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $77
        sei
        adc     L7B7A,y
        .byte   $7C
        .byte   $7D
L826F:  ror     $807F,x
        sta     (L0082,x)
        .byte   $83
        sty     L0085
        stx     L0087
        dey
        .byte   $22
        rol     L0016
        .byte   $89
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        txa
        .byte   $8B
        .byte   $8C
L8285:  sta     L8F8E
        bcc     L821B
        .byte   $92
        .byte   $93
        .byte   $94
L828D:  sta     L0096,x
        .byte   $97
        tya
        sta     L229A,y
        lsr     L0015
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
        ldy     L00A5
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
        ldx     L00A7
        tay
        lda     #$AA
        .byte   $AB
        ldy     L22AD
        stx     L000D
        ldx     L0303
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
L82CD:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $AF
        bcs     L82F5
        ldx     L000B
        lda     (L0003),y
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $B2
        .byte   $B3
        ldy     L00B5,x
        ldx     L0022,y
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
        lda     LB7BA,y
        .byte   $B7
        .byte   $B7
        .byte   $B7
        .byte   $B7
L82F5:  .byte   $B7
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
L8304:  .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        ldy     L0303,x
        .byte   $03
        lda     LBBBE,x
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
L831E:  .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $BB
        .byte   $23
        brk
        rti

L8326:  .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        .byte   $BF
        cpy     #$03
        .byte   $03
        cmp     (L00C2,x)
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
        dec     L00C7
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
L8382:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L8386:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L8393:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L83CD:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
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
        asl     L0044
        eor     (L0050),y
        bvc     L8441
        bpl     L8416
        .byte   $E2
        asl     L0088
        rol     a
        asl     a
        .byte   $FA
        .byte   $FA
        ora     (L00FF,x)
        jsr     L4000
        .byte   $03
L8400:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
L8408:  .byte   $03
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
L8416:  .byte   $03
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
        .byte   $20
        rti

L8441:  jsr     L3130
        .byte   $32
        .byte   $03
        .byte   $03
        .byte   $33
        bmi     L847C
        .byte   $33
        .byte   $32
        .byte   $33
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $33
        bmi     L8484
        .byte   $32
        .byte   $03
        .byte   $03
        .byte   $03
        bmi     L848B
        .byte   $03
        .byte   $03
        .byte   $33
        bmi     L848F
        .byte   $32
        .byte   $33
        .byte   $03
        .byte   $33
        jsr     L03B1
        asl     L0006
        asl     L0020
        cpy     L0614
        brk
        asl     L0004
        asl     L0004
        ora     L0004
        ora     L0000
        brk
        brk
        asl     L0006
        asl     L0006
        .byte   $06
L847C:  asl     L0006
L847E:  asl     L0020
        sbc     (L001F,x)
        .byte   $06
L8483:  brk
L8484:  brk
        asl     L0006
        asl     L0006
        brk
        .byte   $06
L848B:  asl     L0006
        .byte   $05
L848E:  .byte   $04
L848F:  ora     L0004
        .byte   $07
        .byte   $07
        php
        .byte   $07
        php
        .byte   $04
L8497:  ora     L0000
        brk
        .byte   $04
        .byte   $07
        php
        ora     L0004
        ora     L0005
        and     (L0000,x)
        .byte   $80
        .byte   $04
        ora     L0004
        ora     L0004
        ora     L0004
        .byte   $04
        ora     L0004
        .byte   $04
        .byte   $07
        php
        .byte   $07
        php
        .byte   $12
        .byte   $0F
        bpl     L84C8
        .byte   $0F
        .byte   $0F
        bpl     L84C7
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
L84C7:  php
L84C8:  .byte   $07
        php
        .byte   $07
        php
        php
        .byte   $07
        php
        .byte   $12
        .byte   $0F
        bpl     L84E4
        .byte   $0C
        ora     L1211
        bpl     L84E9
        ora     #$18
        ora     L0000,y
        .byte   $7A
        .byte   $7B
        asl     a
        .byte   $0B
        asl     a
        .byte   $0B
L84E4:  .byte   $0F
        bpl     L84F8
        .byte   $12
        asl     a
L84E9:  .byte   $0B
        .byte   $0C
        ora     L100D
        ora     (L0012),y
        .byte   $12
        .byte   $0F
        ora     (L0011),y
        .byte   $12
        asl     L0018,x
        .byte   $17
L84F8:  clc
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $7C
L8500:  .byte   $7B
        .byte   $14
        .byte   $0B
        .byte   $14
        .byte   $0F
        bpl     L8518
        .byte   $12
        .byte   $0F
        bpl     L851C
        .byte   $12
        ora     (L0012),y
        bpl     L8521
        .byte   $12
        ora     L0016,x
        clc
        ora     L0000,y
        brk
L8518:  brk
        .byte   $34
        and     L0000,x
L851C:  brk
        brk
        brk
        brk
        .byte   $7A
L8521:  clc
        clc
        .byte   $17
        and     (L0080,x)
        .byte   $17
        .byte   $0B
        .byte   $0C
        ora     L0C0D
        ora     L150B
        clc
        clc
        .byte   $17
        clc
        clc
        ora     L0000,y
        brk
        brk
        brk
        brk
        brk
        rol     L0037,x
        and     (L00A0,x)
        .byte   $1C
        clc
        .byte   $17
        clc
        .byte   $7F
        clc
        .byte   $17
        clc
        ora     L001A,y
        brk
        brk
        brk
        brk
        brk
        .byte   $4B
        jmp     L4E4D

        .byte   $4F
        bvc     L858F
        and     L4E4D,y
        eor     L4B4C
        and     (L00C2,x)
        rol     L1C1B,x
        brk
        brk
        brk
        .byte   $1B
        .byte   $1C
        brk
L8568:  brk
        brk
L856A:  brk
        brk
        eor     (L0066),y
        .byte   $67
        pla
        adc     #$66
        .byte   $3A
        .byte   $3B
        .byte   $3C
L8575:  and     L7467,x
        adc     L006A,x
        .byte   $6B
        jmp     (L004C)

        brk
        brk
        ora     a:L001E,x
        brk
        brk
        ora     a:L001E,x
        brk
        brk
        .byte   $52
        .byte   $53
        .byte   $6D
L858D:  ror     a
        .byte   $77
L858F:  sei
        .byte   $6D
        ror     a
L8592:  rol     $403F,x
        eor     (L006B,x)
        jmp     (L626D)

        .byte   $63
        .byte   $64
        adc     L0062
        .byte   $22
        brk
        .byte   $80
        brk
        .byte   $20
L85A3:  and     (L0022,x)
        .byte   $1F
        brk
        jsr     L2221
        .byte   $1F
        brk
        .byte   $4B
        .byte   $54
L85AE:  .byte   $64
        adc     L0062
        .byte   $63
        .byte   $64
        adc     L0062
        .byte   $42
        .byte   $43
        .byte   $44
        eor     L0046
        .byte   $44
        adc     (L0066),y
        .byte   $67
        .byte   $74
        adc     L0066,x
        bit     L0025
        brk
        rol     L0023
        bit     L0025
        brk
        rol     L0023
        eor     L0066,x
        .byte   $67
        .byte   $74
        adc     L0066,x
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
L85DE:  jmp     (L6A6D)

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
        eor     L6C7D
        adc     L6B6A
        jmp     (L7978)

        .byte   $6B
        jmp     (L6A6D)

        .byte   $6B
        jmp     (L6A6D)

        .byte   $77
        sei
        adc     L2A6A
        .byte   $2B
        brk
        bit     L2A29
        .byte   $2B
        brk
        bit     L5929
        eor     (L005A),y
        .byte   $5B
        adc     L006E
        .byte   $6F
        bvs     L8685
        .byte   $62
        .byte   $63
        .byte   $64
        adc     L0062
        .byte   $6F
        bvs     L868D
        .byte   $62
        .byte   $63
        .byte   $64
        adc     L0062
        .byte   $22
L8622:  .byte   $82
        asl     L2F2E,x
        and     a:L0000
        rol     L2D2F
        .byte   $5C
        eor     L5E56,x
        .byte   $5F
        .byte   $72
        .byte   $73
        .byte   $74
        adc     L0066,x
L8636:  .byte   $67
        pla
        adc     #$66
        .byte   $73
        .byte   $74
        adc     L0066,x
        .byte   $67
        .byte   $74
        adc     L0066,x
        .byte   $22
        .byte   $AC
L8644:  .byte   $14
        rts

        rts

        adc     (L006A,x)
        ror     L0077,x
        sei
        adc     L6C6B,y
        adc     L766A
        .byte   $77
        sei
        adc     L6C6B,y
        adc     L226A
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
L866A:  .byte   $02
L866B:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
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
L8684:  .byte   $02
L8685:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L868C:  .byte   $02
L868D:  .byte   $02
L868E:  .byte   $02
L868F:  .byte   $02
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
L86BA:  .byte   $02
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
L8709:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L871A:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L8728:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
L8757:  .byte   $02
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
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
        eor     L0055,x
L8772:  eor     L0055,x
L8774:  eor     L0055,x
L8776:  eor     L0005,x
L8778:  ora     L0055
        ora     L0005
        ora     (L0023,x)
        inx
        clc
        beq     L8772
        beq     L8774
        .byte   $F0
L8785:  beq     $8777
        beq     $8788
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L878E:  .byte   $FF
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
        inc     L00DE
        jsr     L04EE
        inx
        .byte   $EF
        dec     L21EB,x
        adc     L0015
        .byte   $DC
        inx
        .byte   $E7
        sbc     LE7E2
        inc     L03DE
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
        and     (L00A5,x)
        ora     L00EC,x
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
L87DF:  .byte   $5C
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
        eor     L6820,x
        bpl     L884D
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
        adc     (L005F,x)
        jsr     L0288
        lsr     L2069,x
        stx     L0002,y
        .byte   $63
        .byte   $64
L8808:  jsr     L02A8
        lsr     L2069,x
        .byte   $B2
        .byte   $02
        brk
        ora     (L0020,x)
        ldx     L0002,y
        pla
        .byte   $5F
        jsr     L10C8
        lsr     L0269,x
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $04
        ora     L0006
        .byte   $07
        php
        ora     #$02
        .byte   $02
        pla
        .byte   $5F
        .byte   $20
        inx
L882C:  bpl     L888C
        adc     #$02
        .byte   $02
L8831:  .byte   $02
        asl     a
        .byte   $0B
        .byte   $0C
L8835:  .byte   $0D
L8836:  asl     L100F
        .byte   $02
        .byte   $02
        pla
        .byte   $5F
        and     (L0008,x)
        bpl     L889F
        adc     #$02
        .byte   $02
        ora     (L0012),y
        .byte   $13
        .byte   $14
        ora     L0016,x
        .byte   $17
        clc
        .byte   $02
L884D:  .byte   $02
        pla
        .byte   $5F
        and     (L0028,x)
        bpl     L88B2
        adc     #$02
        ora     L1B1A,y
        .byte   $1C
        ora     L1F1E,x
        jsr     L0221
        .byte   $02
        pla
        .byte   $5F
        and     (L0048,x)
        bpl     L88C5
        adc     #$02
        .byte   $22
L886A:  .byte   $23
        .byte   $24
L886C:  and     L0026
        .byte   $27
        plp
        and     #$2A
        .byte   $2B
        .byte   $02
        pla
        .byte   $5F
        and     (L0068,x)
        bpl     L88D8
        adc     #$02
        bit     L2E2D
        .byte   $2F
L8880:  bmi     L88B3
        .byte   $32
        .byte   $33
        .byte   $34
        and     L0002,x
        pla
        .byte   $5F
        .byte   $21
L888A:  dey
        .byte   $10
L888C:  lsr     L0269,x
        rol     L0037,x
        sec
        and     L3B3A,y
        .byte   $3C
L8896:  and     L023E,x
        .byte   $02
        pla
        .byte   $5F
        and     (L00A8,x)
        .byte   $10
L889F:  .byte   $5E
L88A0:  adc     #$02
        .byte   $02
        .byte   $3F
        .byte   $02
        rti

        eor     (L0042,x)
        .byte   $02
        .byte   $44
        eor     L0002
        .byte   $02
        pla
        .byte   $5F
        and     (L00C8,x)
        .byte   $10
L88B2:  .byte   $5E
L88B3:  adc     #$02
        .byte   $02
L88B6:  .byte   $02
        .byte   $02
        lsr     L0047
        pha
        eor     #$4A
        .byte   $4B
        .byte   $02
        .byte   $02
        pla
        .byte   $5F
        and     (L00E8,x)
        .byte   $10
L88C5:  lsr     L0269,x
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

L88D8:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        lsr     L0269,x
        .byte   $02
        .byte   $02
        .byte   $02
        bvc     L8939
        .byte   $52
        .byte   $53
        .byte   $02
        .byte   $02
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
        .byte   $5E
        .byte   $69
L8902:  .byte   $02
L8903:  .byte   $02
        .byte   $02
        .byte   $54
        eor     L0056,x
        .byte   $57
        cli
        eor     L0202,y
        .byte   $02
        pla
        .byte   $5F
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
L8915:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $22
        rti

        rti

        .byte   $5A
L891C:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
L8923:  lsr     L6E6A,x
        ror     L6C6E
        jmp     (L7070)

        jmp     (L6E6C)

        ror     L6B6E
        .byte   $5F
L8933:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
L8939:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        adc     L0066
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ror     L0066
        adc     (L0071),y
        ror     L0066
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ror     L0067
L8953:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
L8959:  .byte   $5A
L895A:  .byte   $5A
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
L8965:  .byte   $5A
        .byte   $5A
        .byte   $73
        .byte   $02
        .byte   $02
        adc     L6D6D
        .byte   $6D
L896E:  adc     L6D6D
        adc     L0202
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
L8984:  .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
        .byte   $5A
L898C:  .byte   $5A
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
L89AF:  .byte   $22
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
        lda     L00A8
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
L89D2:  iny
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
        bpl     L89AF
        cpy     LCECE
        dec     LCECE
        dec     LCECE
        dec     LCECE
        dec     LCBCD
        jsr     L0288
        dex
        cmp     L0020,x
        stx     L0002,y
L89FC:  .byte   $CF
        bne     L8A1F
        tay
L8A00:  .byte   $02
        dex
        cmp     L0020,x
L8A04:  ldx     L0002,y
        .byte   $D4
        .byte   $CB
        jsr     L10C8
        dex
        cmp     L0082,x
        .byte   $82
L8A0F:  .byte   $82
        .byte   $80
        sta     (L0083,x)
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
L8A1F:  cmp     L0082,x
        .byte   $82
L8A22:  .byte   $82
        sty     L0085
        stx     L0082
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     (L0008,x)
        bpl     L89FC
        cmp     L0082,x
        .byte   $82
        .byte   $82
        .byte   $87
        sta     L0088
        .byte   $89
        txa
        .byte   $8B
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
L8A40:  .byte   $CB
L8A41:  .byte   $21
L8A42:  plp
L8A43:  .byte   $10
L8A44:  dex
        cmp     L0082,x
        .byte   $82
L8A48:  .byte   $82
        sty     L8E8D
        sta     L008F
        bcc     L89D2
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     (L0048,x)
        bpl     L8A22
        cmp     L0082,x
        .byte   $82
L8A5B:  .byte   $82
        sta     (L0092),y
L8A5E:  .byte   $93
        sty     L0095,x
        stx     L0082,y
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
L8A67:  and     (L0068,x)
        .byte   $10
L8A6A:  dex
        cmp     L0082,x
L8A6D:  .byte   $82
L8A6E:  .byte   $82
L8A6F:  .byte   $97
        tya
        .byte   $99
        txs
L8A73:  .byte   $9B
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     (L0088,x)
        bpl     L8A48
        cmp     L0082,x
L8A80:  .byte   $82
L8A81:  .byte   $82
        .byte   $9C
        sta     L9F9E,x
        ldy     #$82
        .byte   $82
        .byte   $82
        .byte   $82
L8A8B:  .byte   $D4
L8A8C:  .byte   $CB
L8A8D:  and     (L00A8,x)
        bpl     L8A5B
        cmp     L0082,x
        .byte   $82
        .byte   $82
        lda     (L00A2,x)
L8A97:  .byte   $A3
L8A98:  ldy     L00A5
        ldx     L0082
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     (L00C8,x)
        bpl     L8A6E
        cmp     L0082,x
        .byte   $82
        .byte   $82
        .byte   $A7
        tay
        tay
        lda     #$AA
        .byte   $AB
        .byte   $82
L8AAF:  .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        and     (L00E8,x)
        bpl     L8A81
        cmp     L0082,x
        .byte   $82
        ldy     LA8AD
        ldx     LB0AF
        lda     (L00B2),y
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        .byte   $22
        brk
        rti

        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
L8AD1:  dex
        cmp     L0082,x
        .byte   $B3
        ldy     L00B5,x
        ldx     L00B7,y
        clv
        lda     LBBBA,y
        .byte   $82
        .byte   $82
        .byte   $D4
        .byte   $CB
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dex
        cmp     L0082,x
        ldy     LBEBD,x
        .byte   $BF
        cpy     #$C1
        .byte   $C2
        .byte   $C3
        cpy     L00C5
        .byte   $82
        .byte   $D4
L8B00:  .byte   $CB
        dec     L00C6
        dec     L00C6
L8B05:  dec     L00C6
        dec     L00C6
        .byte   $22
        rti

        rti

        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dex
        dec     L00F4,x
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
L8B23:  .byte   $CB
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        cmp     (L00D2),y
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
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        .byte   $22
        .byte   $80
        rti

        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00FF
        .byte   $82
        .byte   $82
        .byte   $D9
        .byte   $D9
L8B5D:  cmp     LD9D9,y
        cmp     LD9D9,y
        .byte   $82
        .byte   $82
        sbc     LC6C6,x
        dec     L00C6
        dec     L00C6
        .byte   $C6
L8B6D:  dec     L00C6
L8B6F:  dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        dec     L00C6
        .byte   $23
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
        bpl     L8BA3
L8BA3:  tax
        .byte   $23
        .byte   $DA
        .byte   $04
        ror     a
        eor     (L0054),y
        tax
        .byte   $23
        cpx     #$10
        .byte   $FF
        .byte   $FF
        ldx     L00A5
        lda     L00A9
L8BB4:  .byte   $FF
        .byte   $FF
        .byte   $0F
L8BB7:  .byte   $0F
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
L8BCD:  brk
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
L8C00:  brk
        brk
        brk
        brk
L8C04:  brk
L8C05:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L8C0E:  brk
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
L8C5E:  .byte   $FF
L8C5F:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L8C6A:  .byte   $FF
        .byte   $FF
L8C6C:  .byte   $FF
        .byte   $FF
        .byte   $FF
L8C6F:  .byte   $FF
        brk
        brk
        brk
L8C73:  brk
        brk
        brk
L8C76:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L8C80:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L8C8B:  brk
L8C8C:  brk
L8C8D:  brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L8C96:  .byte   $FF
        .byte   $FF
L8C98:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L8D00:  brk
L8D01:  brk
L8D02:  brk
        brk
        brk
L8D05:  brk
        brk
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
L8D12:  .byte   $B9
        .byte   $15
L8D14:  .byte   $8D
L8D15:  sta     L0300,y
        sta     L0320,y
        dey
        bpl     L8D12
        lda     #$99
        sta     L001B
        sta     L0018
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
L8D42:  lda     #$0F
        sta     L0300,y
        sta     L0320,y
L8D4A:  lda     L8D77,y
        sta     L0310,y
        sta     L0330,y
        dey
        bpl     L8D42
        lda     #$9F
        sta     L001A
        lda     #$99
        sta     L001B
        sta     L0018
        lda     #$AC
        jsr     LFA78
        lda     #$80
        sta     L04D0
L8D6A:  lda     #$9B
        sta     L0510
        lda     #$C8
        sta     L04F0
        lda     #$00
        .byte   $8D
L8D77:  brk
        ora     L008D
        jsr     LA905
        .byte   $B3
        .byte   $8D
        .byte   $30
L8D80:  ora     L00A9
        ora     (L008D,x)
        rti

        ora     L0060
        .byte   $0F
        .byte   $0F
L8D89:  bmi     L8DB2
        .byte   $0F
L8D8C:  .byte   $0F
L8D8D:  .byte   $13
        bit     L000F
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
L8DB2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L8DD1:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L8E05:  brk
        brk
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
L8E12:  lda     L8E5E,y
        sta     L0300,y
        sta     L0320,y
        lda     L8E6E,y
        sta     L0310,y
        sta     L0330,y
        dey
        bpl     L8E12
        lda     #$9F
        sta     L001A
        lda     #$9A
        sta     L001B
        sta     L0018
        lda     #$36
        jsr     LFA78
        lda     #$90
        sta     L0400
        sta     L0401
        lda     #$80
        sta     L04D0
        sta     L04D1
        lda     #$B7
        sta     L0510
        sta     L0511
        lda     #$D0
        sta     L04F0
        lda     #$00
        .byte   $8D
L8E56:  brk
        ora     L008D
        jsr     L8D05
        ora     (L0005,x)
L8E5E:  sta     L0521
L8E61:  ldx     #$01
        lda     #$39
        .byte   $20
L8E66:  jmp     ($A9FA)

        bpl     $8DF8
        sbc     (L0004),y
        rts

L8E6E:  .byte   $0F
L8E6F:  .byte   $37
        bpl     L8E72
L8E72:  .byte   $0F
        .byte   $19
L8E74:  ora     #$00
        .byte   $0F
L8E77:  .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        and     (L0021),y
        ora     (L000F,x)
        .byte   $27
        bmi     L8E97
        .byte   $0F
        .byte   $0F
        .byte   $23
        .byte   $13
        .byte   $0F
        .byte   $27
        bmi     L8E9D
        .byte   $0F
        .byte   $0F
L8E8C:  .byte   $30
L8E8D:  .byte   $21
L8E8E:  brk
L8E8F:  brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L8E97:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L8E9D:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L8EAB:  .byte   $FF
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
L8F02:  brk
        brk
        brk
        brk
        brk
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
        sta     L04D0,x
        sta     L04D2
L8F1F:  sta     L0402
        lda     #$90
        sta     L0400,x
        lda     #$FF
        sta     L04F0,x
        lda     #$A4
        sta     L0510,x
        lda     #$00
        sta     L0500,x
        sta     L0502
        .byte   $9D
L8F3A:  jsr     L9D05
        rti

        ora     L008D
L8F40:  .byte   $22
        ora     L008D
        .byte   $32
        ora     L008D
        .byte   $F2
        .byte   $04
        lda     #$E9
        sta     L0530,x
        lda     #$06
        sta     L0542
        inx
        lda     #$AD
        .byte   $20
        .byte   $6C
L8F57:  .byte   $FA
        lda     #$B7
        sta     L0510,x
        ldy     #$0F
L8F5F:  lda     L9A9C,y
        sta     L0310,y
        sta     L0330,y
        dey
L8F69:  bpl     L8F5F
        .byte   $A9
L8F6C:  .byte   $FF
        sta     L0018
L8F6F:  ldy     #$04
        sty     L0097
        jsr     LF89A
        lda     L0014
        bne     L8F8B
        ldx     #$01
        jsr     LF51B
        .byte   $A2
L8F80:  .byte   $02
        jsr     LF4FD
        lda     L04F1
        cmp     #$04
        .byte   $B0
L8F8A:  .byte   $E4
L8F8B:  lda     #$04
L8F8D:  .byte   $85
L8F8E:  .byte   $97
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
L8F9D:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L8FA5:  .byte   $FF
        .byte   $FF
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
L8FC6:  brk
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
L900B:  brk
        brk
        brk
        brk
        brk
        lda     #$00
        sta     L0550
        lda     #$02
        sta     L0560
L901A:  jsr     LFF06
        lda     L0014
        beq     L9024
        jmp     L909C

L9024:  ldx     #$00
        jsr     LF539
        lda     L0510
        sec
        sbc     L00FA
        bcs     L9034
        sbc     #$0F
        clc
L9034:  sta     L0010
        jsr     LF7E0
L9039:  lda     L00FB
        cmp     #$01
        bne     L901A
        lda     L00FA
        bne     L901A
        ldx     #$0A
        jsr     LFEFF
        ldx     #$01
        lda     #$3B
        jsr     LFA6C
        lda     #$80
        sta     L04D0,x
        lda     #$70
        .byte   $9D
L9057:  bpl     L905E
        lda     #$B0
        sta     L0400,x
L905E:  lda     #$FF
        sta     L04F0,x
        lda     #$01
        sta     L0520,x
        lda     #$00
        sta     L0500,x
        lda     #$04
        sta     L0530,x
        lda     #$04
        sta     L0540,x
        ldy     #$0F
L9079:  lda     L90A4,y
        sta     L0310,y
L907F:  .byte   $99
L9080:  bmi     L9085
        dey
        bpl     L9079
L9085:  lda     #$FF
        sta     L0018
L9089:  ldy     #$04
        sty     L0097
        .byte   $20
        txs
L908F:  sed
        lda     L0014
        bne     L90AC
        ldx     #$01
        jsr     LF51B
        lda     L04F0,x
L909C:  cmp     #$70
        bcs     L90A5
        lda     #$90
        .byte   $9D
        brk
L90A4:  .byte   $04
L90A5:  lda     L04F0,x
        cmp     #$04
        bcs     L9089
L90AC:  lda     #$04
        .byte   $85
L90AF:  .byte   $97
L90B0:  jsr     LC21E
        rts

        .byte   $0F
        .byte   $27
        bmi     L90CD
        .byte   $0F
        .byte   $0F
        .byte   $23
        .byte   $13
        .byte   $0F
        .byte   $27
        bmi     L90D3
        .byte   $0F
        .byte   $0F
        bmi     L90E5
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L90CD:  brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
L90D3:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L90E5:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L90EE:  .byte   $FF
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
L9105:  brk
        brk
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
L9112:  lda     L919E,y
        sta     L0310,y
        sta     L0330,y
        dey
        bpl     L9112
        lda     #$FF
        sta     L0018
        ldx     #$01
        lda     #$2D
        jsr     LFA6C
        lda     #$80
        sta     L04D0,x
        sta     L04D2
        lda     #$5C
        sta     L0510,x
        lda     #$48
        sta     L0512
        lda     #$E0
        sta     L0400,x
        lda     #$A0
        sta     L0402
        lda     #$80
        sta     L04F0,x
        sta     L04F2
        lda     #$00
        sta     L0520,x
        sta     L0500,x
        sta     L0522
        sta     L0502
        inx
        lda     #$B5
        jsr     LFA6C
        ldy     #$04
        sty     L0097
        jsr     LF89A
        lda     #$80
        sta     L0550
        lda     #$02
        sta     L0560
L9172:  jsr     LFF06
        lda     L0014
        bne     L91A6
        ldx     #$00
        .byte   $20
L917C:  and     LADF5,y
        bpl     L9186
        sec
        sbc     L00FA
        bcs     L9189
L9186:  sbc     #$0F
        clc
L9189:  sta     L0010
        jsr     LF7E0
        lda     L00FB
        bne     L9172
        lda     L00FA
        cmp     #$A4
        bne     L9172
L9198:  ldy     #$04
        sty     L0097
        .byte   $20
        txs
L919E:  sed
        lda     L0411
L91A2:  cmp     #$11
        bne     L9198
L91A6:  lda     #$04
        sta     L0097
L91AA:  .byte   $20
L91AB:  asl     L60C2,x
        .byte   $0F
        .byte   $0F
L91B0:  bmi     L91D9
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
L91D9:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9201:  brk
        brk
L9203:  brk
L9204:  brk
L9205:  brk
        brk
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
        .byte   $20
        .byte   $6C
L9216:  .byte   $FA
        lda     #$80
        .byte   $9D
        .byte   $D0
L921B:  .byte   $04
        lda     #$A4
        sta     L0400,x
        lda     #$DC
        sta     L0510,x
        lda     #$00
        sta     L04F0,x
        sta     L0500,x
        sta     L0520,x
        sta     L0530,x
        lda     #$01
        sta     L0540,x
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
        .byte   $A2
L9291:  beq     L92B3
        .byte   $FF
        inc     L01A2,x
        lda     #$2F
        jsr     LFA6C
        lda     #$80
        sta     L04D0,x
        sta     L04D2
        sta     L0402
        sta     L04D4
        sta     L0404
        sta     L04D5
        lda     #$A0
        .byte   $8D
L92B3:  ora     L0004
        lda     #$90
        sta     L0400,x
        lda     #$FF
        sta     L04F0,x
        lda     #$A4
        .byte   $9D
        .byte   $10
L92C3:  ora     L00A9
        brk
        sta     L0500,x
        sta     L0502
        sta     L0504
        sta     L0505
        sta     L0520,x
        sta     L0540,x
        sta     L0522
        sta     L0524
        sta     L0525
        sta     L0532
        sta     L0534
        sta     L04F2
        sta     L04F4
        lda     #$19
        sta     L0530,x
        lda     #$03
        sta     L0542
        lda     #$07
        sta     L0544
        inx
        lda     #$AE
        .byte   $20
L9300:  .byte   $6C
L9301:  .byte   $FA
        lda     #$AC
        sta     L0510,x
        ldx     #$04
        lda     #$C6
        .byte   $20
        .byte   $6C
L930D:  .byte   $FA
        lda     #$B7
        sta     L0514
        ldx     #$05
        .byte   $A9
L9316:  cmp     L0020
        jmp     ($A9FA)

        ldy     #$9D
        beq     $9323
        lda     #$D0
        sta     L0510,x
        ldy     #$0F
L9326:  lda     L93B8,y
        sta     L0310,y
        sta     L0330,y
        dey
        bpl     L9326
        lda     #$FF
        sta     L0018
L9336:  .byte   $AD
L9337:  bne     L933D
        .byte   $29
L933A:  .byte   $0F
        cmp     #$02
L933D:  bne     L935B
        ldx     #$03
        jsr     LF55E
        jsr     LF51B
        lda     L04F3
        cmp     #$40
        bcs     L9353
        lda     #$80
        sta     L0405
L9353:  lda     L04F3
        cmp     #$3C
        bcs     L935B
        rts

L935B:  .byte   $A0
L935C:  .byte   $04
        sty     L0097
        jsr     LF89A
        lda     L04D0
        and     #$0F
        bne     L9336
L9369:  ldx     #$04
        jsr     LF4FD
        ldx     #$01
        jsr     LF51B
        lda     L04F1
        cmp     #$80
        bcs     L9336
        ldx     #$02
        jsr     LF4FD
        lda     L04F2
        cmp     #$6A
        bcc     L9336
        inc     L04D0
        ldx     #$01
L938B:  lda     #$B3
        .byte   $20
L938E:  .byte   $6C
L938F:  .byte   $FA
        lda     #$80
L9392:  sta     L0510,x
        ldx     #$03
        lda     #$B4
        .byte   $20
L939A:  jmp     ($A9FA)

        .byte   $80
        sta     L04D3
        sta     L0403
        sta     L04F3
        sta     L0513
        lda     #$00
        sta     L0503
        sta     L0523
        lda     #$D9
        sta     L0553
        .byte   $8D
L93B8:  .byte   $33
        ora     L00A9
        ora     (L008D,x)
        .byte   $63
        ora     L008D
        .byte   $43
        ora     L00EE
        bne     L93C9
        jmp     L9326

        .byte   $11
L93C9:  .byte   $0F
        bmi     L93CC
L93CC:  ora     (L000F),y
        brk
        .byte   $03
        ora     (L000F),y
        .byte   $13
        .byte   $03
        ora     (L000F),y
L93D6:  bpl     L93D8
L93D8:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9400:  brk
L9401:  brk
        brk
        brk
        brk
        brk
        brk
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
L9416:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L9420:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L943C:  brk
        brk
        brk
        brk
L9440:  brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L946E:  .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
L9476:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L948C:  brk
        brk
        brk
        brk
        .byte   $FF
L9491:  .byte   $FF
        .byte   $FF
L9493:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L94AC:  .byte   $FF
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
L94D6:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L94DC:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9500:  brk
L9501:  brk
        brk
        brk
        brk
L9505:  brk
        brk
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
L9512:  lda     L953C,y
        .byte   $99
L9516:  bpl     $951B
        sta     L0330,y
        dey
        bpl     L9512
        lda     #$0D
        jsr     LC2F9
        lda     #$9F
        sta     L001A
        lda     #$99
        sta     L001B
        sta     L0018
        ldx     #$00
        lda     #$A3
        jsr     LFA6C
        lda     #$80
        sta     L04D0
        lda     #$9B
        .byte   $8D
L953C:  bpl     L9543
        lda     #$28
        sta     L04F0
L9543:  lda     #$00
        sta     L0500
        sta     L0520
        rts

        .byte   $0F
        .byte   $0F
        bmi     L9577
        .byte   $0F
        .byte   $0F
        .byte   $13
        bit     L000F
        .byte   $0F
        .byte   $13
        .byte   $03
        .byte   $0F
        .byte   $0F
        .byte   $2B
        .byte   $27
        .byte   $FF
        .byte   $FF
L955E:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L9564:  .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9577:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L9591:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L9595:  .byte   $FF
L9596:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L95B0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L95BC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L95CD:  brk
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
L95E4:  .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9600:  brk
L9601:  brk
        brk
        brk
        brk
L9605:  brk
L9606:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L960E:  brk
L960F:  brk
        lda     #$2B
        jsr     LFA78
L9615:  ldy     #$A0
        sty     L0097
        jsr     LF89A
        lda     L0410
        cmp     #$11
        beq     L9640
        cmp     #$0F
        .byte   $D0
L9626:  inc     $31A5
        .byte   $C9
L962A:  .byte   $07
        beq     L9633
        jsr     L9636
        jmp     L9626

L9633:  jsr     L967A
L9636:  lda     L0430
L9639:  cmp     #$04
        beq     L9640
        jmp     L9605

L9640:  ldx     #$3C
        jsr     LFEFF
        rts

        ldx     #$00
        ldy     #$00
L964A:  lda     L0031
        bne     L9656
        lda     L973F,y
        sta     L0200,y
L9654:  bne     L966D
L9656:  cmp     #$06
        bne     L9662
L965A:  .byte   $BD
L965B:  .byte   $07
        tya
        sta     L0200,y
        bne     L966C
L9662:  cmp     #$05
        beq     L965A
        lda     L97DF,x
        sta     L0200,y
L966C:  inx
L966D:  lda     L9740,y
        .byte   $99
L9671:  ora     (L0002,x)
L9673:  lda     L9741,y
        .byte   $99
        .byte   $02
L9678:  .byte   $02
        .byte   $B9
L967A:  .byte   $42
        .byte   $97
        sta     L0203,y
        iny
        iny
L9681:  iny
        iny
        cpy     #$A0
        bne     L964A
        sty     L0097
        rts

        ldy     #$00
L968C:  .byte   $B9
        .byte   $9F
L968E:  stx     L0099,y
        brk
        .byte   $02
L9692:  lda     L96A0,y
        .byte   $99
        .byte   $01
L9697:  .byte   $02
L9698:  lda     L96A1,y
        sta     L0202,y
        .byte   $B9
        .byte   $A2
L96A0:  .byte   $96
L96A1:  sta     L0203,y
        iny
        iny
        iny
        iny
        cpy     #$A0
        bne     L968C
        sty     L0097
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
        sty     L001C
        cmp     (L0000,x)
        sty     LC11C
        brk
        sty     L001C,x
        cpy     #$40
        .byte   $9C
        bit     L00C2
        brk
        .byte   $64
        bit     L00C3
        brk
        jmp     (LC424)

        brk
        .byte   $74
        bit     L00C5
        brk
        .byte   $7C
        bit     L00C5
        brk
        sty     L0024
        cmp     L0000
        sty     LC524
        brk
        sty     L0024,x
        cmp     L9C00
        bit     a:L00C6
        .byte   $64
        bit     a:L00C7
        jmp     (LC82C)

        brk
        .byte   $74
        bit     a:L00C9
        .byte   $7C
        .byte   $2C
        dex
L9701:  brk
        sty     L002C
        .byte   $CB
        brk
        sty     LCC2C
        brk
        sty     L002C,x
L970C:  cmp     L9C00
        .byte   $34
        cmp     L6440
        .byte   $34
        cmp     L0000
L9716:  jmp     (LC534)

        brk
L971A:  .byte   $74
        .byte   $34
        cmp     L0000
        .byte   $7C
        .byte   $34
        dec     L8400
        .byte   $34
        .byte   $CF
        brk
        .byte   $8C
        .byte   $34
L9728:  bne     L972A
L972A:  sty     L0034,x
        cmp     (L0000),y
        .byte   $9C
        .byte   $3C
        cpy     #$80
        .byte   $64
        .byte   $3C
        cmp     (L0080,x)
        jmp     (LC13C)

        .byte   $80
        .byte   $74
        .byte   $3C
        cmp     (L0080,x)
        .byte   $7C
L973F:  .byte   $3C
L9740:  .byte   $D2
L9741:  brk
        sty     L003C
        cmp     (L0080,x)
        sty     LC13C
        .byte   $80
        sty     L003C,x
        cpy     #$C0
        .byte   $9C
        .byte   $34
        cpy     #$00
        bpl     L9788
        cmp     (L0000,x)
        clc
        .byte   $34
        cmp     (L0000,x)
        jsr     LC134
        brk
        plp
        .byte   $34
        cmp     (L0000,x)
        bmi     L9798
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
        bpl     L97B0
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
        bmi     L97C0
        .byte   $C5
L9785:  brk
        sec
        .byte   $3C
L9788:  cmp     L0000
        rti

        .byte   $3C
        cmp     L4800
        .byte   $44
        dec     L0000
        bpl     L97D8
        .byte   $C7
        brk
L9796:  clc
        .byte   $44
L9798:  iny
        brk
        jsr     LC944
        brk
        plp
        .byte   $44
        dex
        brk
        bmi     L97E8
        .byte   $CB
        brk
        sec
        .byte   $44
L97A8:  cpy     L4000
        .byte   $44
        cmp     L4800
        .byte   $4C
L97B0:  cmp     L1040
        jmp     L00C5

        clc
        jmp     L00C5

        jsr     LC54C
        brk
        plp
        .byte   $4C
L97C0:  dec     L3000
        jmp     L00CF

        sec
        jmp     L00D0

        rti

        jmp     L00D1

        pha
        .byte   $54
        cpy     #$80
        bpl     L9828
        cmp     (L0080,x)
        clc
        .byte   $54
L97D8:  cmp     (L0080,x)
        jsr     LC154
        .byte   $80
        plp
L97DF:  .byte   $54
        .byte   $D2
        brk
        bmi     L9838
        cmp     (L0080,x)
        sec
        .byte   $54
L97E8:  cmp     (L0080,x)
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
L97FD:  .byte   $7C
        .byte   $7C
        .byte   $84
L9800:  .byte   $84
L9801:  sty     L0084
L9803:  sty     L0084
        sty     L0084
        sty     L8C8C
        sty     L8C8C
        sty     L948C
        sty     L0094,x
        sty     L0094,x
        sty     L0094,x
        sty     L0054,x
        .byte   $54
L9819:  .byte   $54
        .byte   $54
        .byte   $54
        .byte   $54
        .byte   $54
        .byte   $54
L981F:  .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $5C
        .byte   $64
L9828:  .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        .byte   $64
        jmp     (L6C6C)

        jmp     (L6C6C)

        jmp     (L746C)

L9838:  .byte   $74
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
L9896:  .byte   $FF
        .byte   $FF
L9898:  .byte   $FF
        .byte   $FF
L989A:  .byte   $FF
L989B:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L98A2:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L98AB:  .byte   $FF
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
L98BF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L98F6:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L9901:  brk
        brk
        brk
        brk
L9905:  brk
        brk
        brk
        brk
L9909:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        lda     #$3B
        jsr     LFA78
        lda     #$80
        sta     L04D0
        sta     L0510
        lda     #$80
        sta     L0400
        lda     #$FF
        sta     L04F0
        lda     #$00
        sta     L0500
        sta     L0520
        sta     L0530
        lda     #$04
        sta     L0540
        ldy     #$0F
L9939:  lda     L99BE,y
        sta     L0310,y
        sta     L0330,y
        dey
        bpl     L9939
        lda     #$9F
        sta     L001A
        lda     #$FF
        sta     L0018
        jsr     LF90C
L9950:  lda     #$04
        sta     L0097
        jsr     LF89A
        lda     L0014
L9959:  cmp     #$80
        beq     L996E
        cmp     #$40
        beq     L999C
L9961:  cmp     #$10
        beq     L996E
        bne     L9950
L9967:  lda     #$04
L9969:  sta     L0097
        jsr     LF89A
L996E:  lda     L04D0
        and     #$0F
        bne     L9980
        sta     L0480
        .byte   $A9
L9979:  clc
        jsr     LF850
        inc     L04D0
L9980:  inc     L0480
        .byte   $A2
L9984:  brk
        jsr     LF51B
        .byte   $AD
L9989:  .byte   $80
        .byte   $04
        cmp     #$41
        bcc     L9967
        lda     #$04
        sta     L0097
        jsr     LC21E
        ldx     #$10
        .byte   $20
L9999:  .byte   $FF
L999A:  .byte   $FE
        rts

L999C:  lda     #$FF
        sta     L00F8
        lda     L04D0
        and     #$0F
        bne     L99B2
        sta     L0480
        lda     #$18
        jsr     LF850
        inc     L04D0
L99B2:  inc     L0480
        ldx     #$00
        jsr     LF51B
        lda     L0480
        .byte   $C9
L99BE:  eor     (L0090,x)
        ldx     L00A9
        .byte   $04
        sta     L0097
        jsr     LC21E
        ldx     #$10
        jsr     LFEFF
        rts

        .byte   $0F
        .byte   $27
        bmi     L99E7
        .byte   $0F
        .byte   $0F
        .byte   $23
        .byte   $13
        .byte   $0F
        .byte   $27
        bmi     L99ED
        .byte   $0F
        .byte   $0F
        bmi     L99FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L99E7:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L99ED:  .byte   $FF
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
L99FF:  brk
        brk
L9A01:  brk
        brk
        brk
        brk
        brk
        brk
        brk
L9A08:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        lda     #$20
        jsr     LF850
        ldx     #$01
        lda     #$2F
        jsr     LFA6C
        inx
L9A1D:  lda     #$AD
L9A1F:  jsr     LFA6C
        lda     #$80
        sta     L04D1
        sta     L04D2
        sta     L0402
        lda     #$90
L9A2F:  sta     L0401
        lda     #$FF
        sta     L04F1
        lda     #$00
        sta     L04F2
        lda     #$A4
        sta     L0511
        lda     #$B7
        sta     L0512
        lda     #$02
        sta     L0501
        sta     L0502
        sta     L00FD
        sta     L0500
        sta     L006F
        lda     #$00
        sta     L0521
        .byte   $8D
        .byte   $22
L9A5C:  ora     L00A9
        .byte   $80
        sta     L0530
        sta     L0531
        lda     #$01
        sta     L0540
        sta     L0541
        lda     #$00
        sta     L0532
        lda     #$05
        sta     L0542
        ldy     #$0F
L9A79:  lda     L9A9C,y
        .byte   $99
L9A7D:  bpl     L9A82
        sta     L0330,y
L9A82:  dey
L9A83:  bpl     L9A79
        lda     #$FF
        sta     L0018
L9A89:  .byte   $A0
L9A8A:  .byte   $04
        sty     L0097
        jsr     LF89A
        .byte   $A2
L9A91:  ora     (L0020,x)
        .byte   $1B
        sbc     L00A2,x
        .byte   $02
        .byte   $20
        .byte   $FD
L9A99:  .byte   $F4
        .byte   $AD
        .byte   $F1
L9A9C:  .byte   $04
        cmp     #$88
        bcs     L9A89
        lda     #$80
        sta     L0531
        lda     #$02
        sta     L0541
        rts

        rol     L000F
        bmi     L9AC0
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
        bmi     L9AE3
        brk
        brk
        brk
        brk
L9AC0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L9AE3:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9B00:  brk
L9B01:  brk
        brk
L9B03:  brk
        brk
        brk
L9B06:  brk
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
        sta     L0268
        .byte   $8D
        .byte   $6C
L9B17:  .byte   $02
        sta     L0270
        sta     L0274
        lda     #$75
        sta     L0269
        lda     #$00
        sta     L026A
        sta     L026E
        sta     L0272
        sta     L0276
        lda     #$A8
        sta     L026B
        lda     #$70
L9B38:  sta     L026D
        sta     L0271
        sta     L0275
        lda     #$B0
        sta     L026F
        lda     #$B8
        sta     L0273
        lda     #$C0
        sta     L0277
        lda     #$47
        sta     L0278
        sta     L027C
        sta     L0280
        sta     L0284
        sta     L0288
        sta     L028C
        sta     L0290
        lda     #$00
        sta     L027A
        sta     L027E
        .byte   $8D
L9B70:  .byte   $82
        .byte   $02
        .byte   $8D
        .byte   $86
L9B74:  .byte   $02
        sta     L028A
        sta     L028E
        sta     L0292
        .byte   $20
        iny
L9B80:  .byte   $9C
        ldy     #$98
        sty     L0097
        .byte   $20
L9B86:  txs
        sed
        ldx     #$3C
        jsr     LFEFF
        jsr     L9B86
        ldx     #$78
        .byte   $20
L9B93:  .byte   $FF
        .byte   $FE
        rts

L9B96:  lda     L0269
L9B99:  .byte   $C9
L9B9A:  .byte   $70
L9B9B:  beq     L9BE4
L9B9D:  .byte   $20
L9B9E:  .byte   $DC
        .byte   $9B
        jsr     L9CC8
L9BA3:  jsr     L9C2E
        ldx     #$03
        jsr     LFEFF
        lda     L026D
        cmp     #$70
        beq     L9BBD
        dec     L026D
        lda     L026D
        sta     L026D
        bne     L9B96
L9BBD:  lda     L04D0
        and     #$0F
        bne     L9BD3
        inc     L04D0
        lda     #$79
        sta     L026D
        lda     #$74
        sta     L0269
        bne     L9B96
L9BD3:  lda     L0269
        cmp     #$70
        beq     L9BEB
        lda     #$79
L9BDC:  sta     L026D
        dec     L0269
        bne     L9B96
L9BE4:  lda     L026D
        .byte   $C9
L9BE8:  .byte   $70
L9BE9:  bne     L9B9D
L9BEB:  rts

        lda     #$22
        jsr     LF850
        lda     L05CC
        cmp     #$79
        beq     L9BFC
        inc     L05CC
        rts

L9BFC:  lda     #$70
        .byte   $8D
        .byte   $CC
L9C00:  ora     L00AD
        dex
        ora     L00C9
        adc     L04F0,y
        inc     L05CA
        rts

        lda     #$70
        sta     L05CA
        lda     L05C8
        cmp     #$79
L9C16:  beq     L9C1C
        inc     L05C8
        rts

L9C1C:  lda     #$70
        sta     L05C8
        lda     L05C4
        cmp     #$79
        beq     L9C2C
        inc     L05C4
        rts

L9C2C:  lda     #$79
L9C2E:  sta     L05C4
        .byte   $8D
        .byte   $C6
L9C33:  ora     L008D
        iny
        ora     L008D
        dex
        ora     L008D
        cpy     L6005
        lda     L006B
        and     #$F0
        cmp     #$10
        beq     L9C5F
        cmp     #$20
        beq     L9C74
        lda     L05CA
        and     #$0F
        sec
        cmp     #$05
        bcc     L9C5E
        jsr     L9C8B
        lda     L006B
        clc
        adc     #$10
        sta     L006B
L9C5E:  rts

L9C5F:  lda     L05C8
        and     #$0F
        sec
        cmp     #$01
        bcc     L9C73
        jsr     L9C8B
        lda     L006B
        clc
        adc     #$13
        sta     L006B
L9C73:  rts

L9C74:  lda     L006B
        and     #$0F
        sta     L0000
        .byte   $AD
L9C7B:  iny
        ora     L0029
L9C7E:  .byte   $0F
        cmp     L0000
        bne     L9C9A
        jsr     L9C8B
        lda     L006B
        and     #$0F
        clc
L9C8B:  adc     #$03
        sec
        cmp     #$0A
        bcc     L9C95
        sec
        sbc     #$0A
L9C95:  clc
        adc     #$20
        sta     L006B
L9C9A:  rts

L9C9B:  .byte   $A9
L9C9C:  .byte   $19
L9C9D:  jsr     LF850
        lda     L05E6
        and     #$0F
        clc
        adc     #$01
        cmp     #$0A
        bcs     L9CB3
L9CAC:  clc
        adc     #$70
        sta     L05E6
        rts

L9CB3:  lda     L05E4
        cmp     #$79
        beq     L9CD7
        lda     #$70
L9CBC:  sta     L05E6
        lda     L05E4
        and     #$0F
        clc
        adc     #$01
        .byte   $C9
L9CC8:  ora     #$B0
        .byte   $07
        clc
L9CCC:  adc     #$70
        sta     L05E4
        rts

        lda     #$79
        sta     L05E6
L9CD7:  rts

        lda     #$00
        sta     L0000
L9CDC:  sta     L0279
        sta     L027D
        sta     L0281
        sta     L0285
        sta     L0289
        .byte   $8D
L9CEC:  sta     L8D02
        sta     (L0002),y
        lda     L05C4
        cmp     #$70
        beq     L9D00
        lda     L05C4
        sta     L0279
        inc     L0000
L9D00:  .byte   $A5
L9D01:  brk
        .byte   $D0
L9D03:  .byte   $07
        .byte   $AD
L9D05:  dec     L0005
        cmp     #$70
        beq     L9D13
L9D0B:  lda     L05C6
        sta     L027D
        inc     L0000
L9D13:  lda     L0000
        bne     L9D1E
        lda     L05C8
        cmp     #$70
        beq     L9D26
L9D1E:  lda     L05C8
        sta     L0281
        inc     L0000
L9D26:  lda     L0000
        bne     L9D31
        lda     L05CA
        cmp     #$70
        beq     L9D39
L9D31:  lda     L05CA
        sta     L0285
        inc     L0000
L9D39:  lda     L0000
        bne     L9D44
        lda     L05CC
L9D40:  cmp     #$70
        beq     L9D4C
L9D44:  lda     L05CC
        .byte   $8D
L9D48:  .byte   $89
        .byte   $02
        inc     L0000
L9D4C:  lda     L0000
        bne     L9D57
        lda     L05CE
        cmp     #$70
        beq     L9D5F
L9D57:  lda     L05CE
        sta     L028D
        inc     L0000
L9D5F:  lda     L0000
        bne     L9D6A
        lda     L05CE
        cmp     #$70
L9D68:  beq     L9D70
L9D6A:  lda     L05D0
        sta     L0291
L9D70:  lda     #$90
        sta     L027B
        lda     #$98
        sta     L027F
        .byte   $A9
L9D7B:  ldy     #$8D
        .byte   $83
L9D7E:  .byte   $02
        lda     #$A8
        sta     L0287
        lda     #$B0
        sta     L028B
        lda     #$B8
        sta     L028F
        lda     #$C0
        sta     L0293
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
L9D9D:  .byte   $FF
L9D9E:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9DBA:  brk
        brk
        brk
L9DBD:  brk
        brk
L9DBF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L9E00:  brk
        brk
        brk
L9E03:  brk
        brk
        brk
        brk
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
L9E12:  lda     L9E68,y
        sta     L0300,y
        sta     L0320,y
        lda     L9E78,y
        sta     L0310,y
        sta     L0330,y
        dey
        bpl     L9E12
        ldx     #$01
        lda     #$AF
        jsr     LFA6C
        inx
        lda     #$B0
        jsr     LFA6C
        lda     #$00
        sta     L0501
        .byte   $8D
L9E3A:  .byte   $02
        ora     L008D
        and     (L0005,x)
        sta     L0522
        lda     #$80
        sta     L04D1
        sta     L04D2
        sta     L0401
        sta     L0402
        lda     #$8C
        sta     L04F1
        lda     #$88
        sta     L04F2
        lda     #$67
        sta     L0511
        lda     #$87
        .byte   $8D
        .byte   $12
L9E63:  ora     L00A9
        .byte   $9B
        sta     L001B
L9E68:  lda     #$84
        sta     L001A
        sta     L0018
        jsr     LF90C
        jsr     LF89A
        jsr     LAA00
        rts

L9E78:  .byte   $0F
        brk
        bpl     L9E9C
        .byte   $0F
        .byte   $07
        .byte   $17
        jsr     L270F
        rol     L0020,x
        .byte   $0F
        .byte   $27
        rol     L0013,x
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
L9E91:  .byte   $17
        .byte   $27
        ora     L000F,x
        .byte   $27
        rol     L0020,x
L9E98:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L9E9C:  .byte   $FF
L9E9D:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
L9F01:  brk
        brk
        brk
        brk
        brk
        brk
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
L9F43:  brk
        brk
        brk
        brk
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
L9F6F:  .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L9F7F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L9F8F:  brk
L9F90:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L9F9D:  .byte   $FF
L9F9E:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LA000:  brk
LA001:  brk
        brk
        brk
        brk
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
        .byte   $FF
        ldx     #$01
        lda     #$B2
        jsr     LFA6C
        lda     #$80
        sta     L04D0,x
        sta     L0400,x
        lda     #$00
        sta     L04F0,x
        lda     #$6C
        sta     L0510,x
        lda     #$02
LA02B:  sta     L0500
        sta     L0501
        sta     L00FD
        sta     L006F
        lda     #$00
        sta     L0520
        .byte   $8D
        .byte   $21
LA03C:  ora     L008D
        rti

        ora     L008D
        eor     (L0005,x)
        lda     #$99
        sta     L0530
        sta     L0531
        .byte   $A0
LA04C:  .byte   $0F
LA04D:  lda     LA04C,y
        .byte   $99
        .byte   $10
LA052:  .byte   $03
        sta     L0330,y
LA056:  dey
        bpl     LA04D
        sty     L0018
        rts

        .byte   $0F
        .byte   $0F
        bpl     LA073
        .byte   $0F
        .byte   $0F
        .byte   $2B
        ora     (L000F,x)
        .byte   $27
        rol     L0020,x
        .byte   $0F
        .byte   $27
        rol     L0013,x
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
LA073:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LA0EA:  .byte   $FF
        .byte   $FF
        .byte   $FF
LA0ED:  .byte   $FF
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
LA0FA:  brk
        brk
        brk
        brk
        brk
LA0FF:  brk
        brk
LA101:  brk
LA102:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ldx     #$02
        lda     L0038
        cmp     #$03
        bcc     LA11B
LA118:  jmp     LA13D

LA11B:  lda     #$73
        jsr     LFA6C
        lda     #$30
        sta     L04F0,x
        lda     #$88
        sta     L0510,x
        inx
        lda     #$73
        jsr     LFA6C
        lda     #$98
        sta     L04F0,x
        lda     #$A0
        .byte   $9D
        .byte   $10
LA139:  ora     L00E8
        lda     #$73
LA13D:  jsr     LFA6C
        lda     #$E0
        sta     L04F0,x
        lda     #$88
        sta     L0510,x
        jmp     LA19E

        cmp     #$06
        beq     LA182
        lda     #$73
        jsr     LFA6C
        lda     #$A8
        sta     L04F0,x
        lda     #$54
        sta     L0510,x
        inx
        lda     #$73
        jsr     LFA6C
        lda     #$28
        sta     L04F0,x
        lda     #$50
        sta     L0510,x
        inx
        lda     #$73
        jsr     LFA6C
        lda     #$84
        sta     L04F0,x
        lda     #$70
        sta     L0510,x
        bne     LA1AE
LA182:  lda     #$BB
        jsr     LFA6C
        lda     #$D0
        sta     L04F0,x
        lda     #$50
        sta     L0510,x
        lda     #$80
        sta     L04D2
        sta     L0402
        lda     #$00
        sta     L0502
LA19E:  .byte   $8D
        .byte   $22
LA1A0:  ora     L0085
        ror     a
        sta     L006C
        sta     L048F
        sta     L049F
        .byte   $4C
LA1AC:  .byte   $D7
        .byte   $A1
LA1AE:  lda     #$80
        sta     L04D2
        sta     L04D3
        sta     L04D4
        sta     L0402
        sta     L0403
        sta     L0404
        lda     #$00
        sta     L0502
        sta     L0522
        sta     L0503
        sta     L0523
        sta     L0504
        sta     L0524
        sta     L006A
        sta     L006C
        sta     L048F
        sta     L049F
        lda     L0038
        beq     LA1E7
LA1E4:  jsr     LA5AB
LA1E7:  jsr     LF90C
LA1EA:  jsr     LF89A
        jsr     LA300
        lda     L0014
        beq     LA1EA
        jsr     LFF06
        .byte   $20
LA1F8:  pha
        ldy     L0020
        brk
        .byte   $A3
        lda     L0062
        cmp     #$10
LA201:  beq     LA214
        lda     #$08
        sta     L0062
        jsr     LA300
        lda     L0014
        cmp     #$80
        .byte   $F0
LA20F:  asl     a:L00A9
        sta     L005E
LA214:  lda     #$07
        sta     L0062
        jsr     LA300
        jmp     LA1E4

        lda     #$3F
        jsr     LF850
        jsr     LA571
        .byte   $A2
LA227:  ora     L00A9
        .byte   $3B
        jsr     LFA6C
        lda     #$80
        sta     L04D0,x
        lda     #$90
        sta     L0400,x
        lda     #$70
        sta     L0510,x
        lda     #$FF
        sta     L04F0,x
        lda     #$00
        sta     L0520,x
        sta     L0500,x
        sta     L0530,x
        lda     #$04
        sta     L0540,x
        lda     #$21
        jsr     LF850
LA256:  ldy     #$04
        sty     L0097
        jsr     LF89A
        lda     #$00
        sta     L0431
        sta     L0411
        ldx     #$05
        jsr     LF51B
        inc     L006A
        lda     L006A
        cmp     #$40
        bcc     LA256
        ldx     #$05
        ldy     L0031
        lda     LA2EB,y
        jsr     LFA6C
        lda     #$80
        sta     L04D0,x
        lda     #$90
        sta     L0400,x
        lda     #$00
        sta     L0510,x
        sta     L04F0,x
        sta     L0520,x
        sta     L0500,x
        ldy     L0031
        lda     LA2DD,y
        .byte   $8D
        .byte   $55
LA29B:  ora     L00B9
        cpx     L00A2
        sta     L0535
        lda     LA2F2,y
        .byte   $8D
LA2A6:  ldx     L0004,y
        lda     LA2F9,y
        sta     L04B7
        lda     #$00
        sta     L0565
        sta     L0545
        ldy     #$04
        sty     L0097
        jsr     LF89A
        lda     #$00
LA2BF:  sta     L0431
        sta     L0411
        lda     L0014
        bne     LA2E7
        ldx     #$05
        jsr     LF4FD
        jsr     LF539
        lda     L04B6
        beq     LA2DC
        dec     L04B6
        jmp     LA2A6

LA2DC:  .byte   $AD
LA2DD:  .byte   $B7
        .byte   $04
        beq     LA2E7
        dec     L04B7
LA2E4:  jmp     LA2A6

LA2E7:  lda     #$F1
        .byte   $20
        .byte   $4E
LA2EB:  sed
        rts

        txa
        .byte   $5A
        .byte   $5A
        .byte   $7F
        .byte   $76
LA2F2:  .byte   $9E
        .byte   $3A
LA2F4:  bmi     LA350
LA2F6:  .byte   $9B
        .byte   $EC
        .byte   $30
LA2F9:  .byte   $AF
        stx     LBEB1
        .byte   $BF
        cpy     #$C1
LA300:  .byte   $C2
LA301:  .byte   $C3
LA302:  sed
LA303:  .byte   $FF
        .byte   $FF
        bcs     LA2BF
        cpy     L00FF
        brk
        clv
        .byte   $7C
        brk
        brk
        brk
        .byte   $74
        jsr     LA3AC
LA313:  ldy     L0062
        lda     LABAA,y
        sta     L000C
        .byte   $B9
LA31B:  lda     $85AB,x
        .byte   $0D
        .byte   $A9
LA320:  brk
        sta     L000E
        lda     #$00
        sta     L0010
LA327:  lda     #$00
        sta     L0011
        ldx     L0010
        lda     LA38C,x
        sta     L0360
        lda     LA38F,x
        clc
        adc     L0011
        sta     L0361
        lda     #$00
        sta     L0362
        ldy     L000E
        inc     L000E
        lda     (L000C),y
        cmp     #$FF
        beq     LA398
        cmp     #$FE
        beq     LA37F
        .byte   $8D
LA350:  .byte   $63
        .byte   $03
        lda     #$FF
        sta     L0364
        sta     L0019
        lda     L0010
        pha
        lda     L0011
        pha
        lda     #$04
        sta     L0097
        jsr     LA392
        jsr     LF89A
        pla
        sta     L0011
        pla
        sta     L0010
        inc     L0011
        lda     L0092
        and     #$03
        bne     LA37C
        lda     #$3F
        jsr     LF850
LA37C:  jmp     LA31B

LA37F:  lda     L0038
        cmp     #$06
        bne     LA387
        inc     L005E
LA387:  inc     L0010
        lda     L0010
        .byte   $C9
LA38C:  .byte   $03
        bne     LA327
LA38F:  jsr     LA402
LA392:  jsr     LA3AC
        jmp     LA313

LA398:  jmp     LA402

LA39B:  rts

        .byte   $22
        .byte   $23
        .byte   $23
        .byte   $E7
        .byte   $27
        .byte   $67
        lda     L0038
        cmp     #$06
        bne     LA39B
        lda     L005E
LA3AA:  cmp     #$07
LA3AC:  beq     LA3B3
        cmp     #$08
        beq     LA3B3
        rts

LA3B3:  lda     #$00
        sta     L0431
        sta     L0411
        rts

        lda     #$23
        sta     L0360
        lda     #$79
        sta     L0361
        lda     #$00
        sta     L0362
        lda     #$02
        sta     L0363
        lda     #$23
        sta     L0364
        sta     L037A
LA3D8:  lda     #$22
        sta     L0390
        lda     #$67
LA3DF:  sta     L0365
        lda     #$27
        sta     L037B
        lda     #$E7
        sta     L0391
        ldx     #$12
        stx     L0366
        stx     L037C
        .byte   $8E
LA3F5:  .byte   $92
        .byte   $03
        ldy     #$00
        lda     #$02
LA3FB:  sta     L0367,y
        sta     L037D,y
LA401:  .byte   $99
LA402:  .byte   $93
        .byte   $03
        iny
        dex
        bpl     LA3FB
LA408:  lda     #$FF
        sta     L03A6
        sta     L0019
        jmp     LFF06

LA412:  lda     #$00
LA414:  sta     L0411
        sta     L0431
        .byte   $A9
LA41B:  .byte   $04
        sta     L0097
        jsr     LF89A
        jsr     LA41B
        lda     L0014
        .byte   $29
LA427:  .byte   $C3
        beq     LA412
        rts

        lda     #$23
        sta     L0360
        lda     #$79
        sta     L0361
        lda     #$00
        .byte   $8D
LA438:  .byte   $62
        .byte   $03
        ldx     #$FE
        lda     L0092
        and     #$10
        beq     LA444
        .byte   $A2
LA443:  .byte   $02
LA444:  stx     L0363
        .byte   $A9
LA448:  .byte   $FF
        sta     L0364
        sta     L0019
LA44E:  rts

LA44F:  lda     L0062
        cmp     #$07
        bne     LA44E
        jsr     LFF06
        lda     L0014
        sta     L000F
        cmp     #$80
        beq     LA44F
        lda     L000F
        and     #$0F
        cmp     #$01
        beq     LA47E
        cmp     #$02
        beq     LA49B
        lda     L006C
        and     #$0F
        tay
        lda     LA4A8,y
        sta     L0000
        lda     LA4AB,y
        sta     L0001
        jmp     (L0000)

LA47E:  lda     #$22
        jsr     LF850
        lda     L0038
        cmp     #$06
        beq     LA495
        inc     L006C
        lda     L006C
        cmp     #$03
        .byte   $90
LA490:  .byte   $04
        lda     #$00
        sta     L006C
LA495:  jsr     LFF06
        .byte   $4C
        pha
LA49A:  .byte   $A4
LA49B:  lda     #$22
        jsr     LF850
        lda     L0038
        .byte   $C9
LA4A3:  .byte   $06
LA4A4:  beq     LA4B2
LA4A6:  .byte   $C6
LA4A7:  .byte   $6C
LA4A8:  lda     L006C
LA4AA:  .byte   $C9
LA4AB:  .byte   $FF
        .byte   $D0
LA4AD:  .byte   $04
        lda     #$02
LA4B0:  .byte   $85
LA4B1:  .byte   $6C
LA4B2:  jsr     LFF06
        jmp     LA448

        .byte   $AE
LA4B9:  .byte   $03
        .byte   $3A
        ldy     L00A5
        lda     L00A2
        .byte   $03
        .byte   $A9
LA4C1:  .byte   $73
        jsr     LFA6C
        ldx     #$04
        .byte   $A9
LA4C8:  .byte   $73
        jsr     LFA6C
        lda     L0038
        cmp     #$03
        bcs     LA4EC
        lda     #$00
        sta     L0062
        sta     L0031
        lda     L0422
        cmp     #$BB
        beq     LA4E6
        ldx     #$02
        lda     #$BB
        jsr     LFA6C
LA4E6:  jsr     LA6A5
        jmp     LA4F1

LA4EC:  lda     L0038
        cmp     #$06
        .byte   $F0
LA4F1:  ora     #$A9
        .byte   $03
        sta     L0062
        sta     L0031
        jmp     LA4C8

        lda     #$06
        sta     L0062
        sta     L0031
LA501:  lda     #$04
        sta     L0097
        jsr     LF89A
        lda     #$00
        sta     L0431
        sta     L0411
        jmp     LA448

        ldx     #$02
        lda     #$73
        jsr     LFA6C
        ldx     #$04
        .byte   $A9
LA51D:  .byte   $73
LA51E:  jsr     LFA6C
        lda     L0038
        cmp     #$03
        bcs     LA541
        lda     #$01
        sta     L0062
        sta     L0031
        lda     L0423
        cmp     #$BB
        beq     LA53B
        ldx     #$03
        lda     #$BB
        jsr     LFA6C
LA53B:  jsr     LA6A5
        jmp     LA4F1

LA541:  lda     #$04
        sta     L0062
        sta     L0031
        jmp     LA51D

        ldx     #$02
        lda     #$73
LA54E:  jsr     LFA6C
        ldx     #$03
        .byte   $A9
LA554:  .byte   $73
        jsr     LFA6C
        lda     L0038
        cmp     #$03
        bcs     LA578
        lda     #$02
        sta     L0062
        sta     L0031
        lda     L0424
        cmp     #$BB
        beq     LA572
        ldx     #$04
        lda     #$BB
        .byte   $20
        .byte   $6C
LA571:  .byte   $FA
LA572:  jsr     LA6A5
        jmp     LA4F1

LA578:  lda     #$05
        sta     L0062
        sta     L0031
        jmp     LA554

        lda     L0031
        cmp     #$00
        beq     LA5A0
        cmp     #$01
        beq     LA5A9
        cmp     #$02
        beq     LA5B2
        cmp     #$03
        beq     LA5A0
        cmp     #$04
        beq     LA5A9
        cmp     #$05
        beq     LA5B2
LA59B:  cmp     #$06
        beq     LA5A0
        rts

LA5A0:  lda     #$00
        .byte   $8D
        .byte   $D3
LA5A4:  .byte   $04
        sta     L04D4
        rts

LA5A9:  lda     #$00
LA5AB:  sta     L04D2
        sta     L04D4
LA5B1:  rts

LA5B2:  lda     #$00
LA5B4:  sta     L04D2
LA5B7:  sta     L04D3
        rts

        lda     L00F8
        bpl     LA5C2
        jmp     LA607

LA5C2:  lda     L0031
        cmp     #$00
        .byte   $F0
LA5C7:  ora     L01C9,y
        beq     LA5E9
        cmp     #$02
        beq     LA5F1
        cmp     #$03
        beq     LA5F9
        cmp     #$04
        .byte   $F0
LA5D7:  and     #$C9
        ora     L00F0
        and     L06C9
        beq     LA611
        rts

        lda     L0069
        ora     #$01
        sta     L0069
LA5E7:  bne     LA617
LA5E9:  lda     L0069
        ora     #$02
        sta     L0069
        bne     LA617
LA5F1:  lda     L0069
        ora     #$04
        sta     L0069
        bne     LA617
LA5F9:  .byte   $A5
LA5FA:  adc     #$09
        php
        sta     L0069
        bne     LA617
LA601:  lda     L0069
        ora     #$10
        sta     L0069
LA607:  bne     LA617
        lda     L0069
        ora     #$20
        sta     L0069
        bne     LA617
LA611:  lda     L0069
        ora     #$40
        sta     L0069
LA617:  lda     L0069
        cmp     #$01
        beq     LA64A
        cmp     #$02
        beq     LA652
        cmp     #$03
        beq     LA65A
        cmp     #$04
        beq     LA668
        cmp     #$05
        beq     LA670
        cmp     #$06
        beq     LA67F
        cmp     #$0F
        beq     LA64A
        cmp     #$17
        beq     LA652
        cmp     #$27
        beq     LA668
        cmp     #$1F
        beq     LA65A
        cmp     #$37
        beq     LA67F
        .byte   $C9
LA646:  .byte   $2F
        beq     LA670
        rts

LA64A:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        rts

LA652:  ldx     #$03
        lda     #$BD
        jsr     LFA6C
        rts

LA65A:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        inx
        lda     #$BD
        jsr     LFA6C
        rts

LA668:  ldx     #$04
        lda     #$BD
        jsr     LFA6C
        rts

LA670:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        ldx     #$04
        lda     #$BD
        jsr     LFA6C
        rts

LA67F:  ldx     #$03
        lda     #$BD
        jsr     LFA6C
        inx
        lda     #$BD
        .byte   $20
LA68A:  jmp     (L60FA)

LA68D:  ldx     #$03
        lda     #$BD
        jsr     LFA6C
        inx
        lda     #$BD
        jsr     LFA6C
        lda     L006C
        beq     LA6AC
        lda     #$10
        sta     L0062
        lda     L006C
        .byte   $C9
LA6A5:  ora     (L00F0,x)
        ora     L00C9
        .byte   $02
        beq     LA6B1
LA6AC:  rts

        jsr     LA77D
        rts

LA6B1:  jsr     LA78C
        rts

        lda     L0069
        cmp     #$01
        beq     LA6EB
        cmp     #$02
        beq     LA6FE
        cmp     #$03
        beq     LA713
LA6C3:  cmp     #$04
        beq     LA73D
        cmp     #$05
        beq     LA6E8
        cmp     #$06
        beq     LA68D
        cmp     #$0F
        beq     LA6EB
        cmp     #$17
        beq     LA6FE
        cmp     #$27
        beq     LA73D
        cmp     #$1F
        beq     LA713
        cmp     #$37
        beq     LA68D
        cmp     #$2F
        beq     LA6E8
        rts

LA6E8:  jmp     LA742

LA6EB:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        lda     L006C
        bne     LA6FD
        lda     #$10
        sta     L0062
        jsr     LA76E
LA6FD:  rts

LA6FE:  ldx     #$03
        .byte   $A9
LA701:  lda     $6C20,x
        .byte   $FA
        lda     L006C
        cmp     #$01
        bne     LA6FD
        lda     #$10
        sta     L0062
        jsr     LA77D
        rts

LA713:  ldx     #$02
        lda     #$BD
        jsr     LFA6C
        inx
        lda     #$BD
        jsr     LFA6C
        lda     L006C
        cmp     #$02
        beq     LA6FD
        lda     #$10
        sta     L0062
        lda     L006C
        cmp     #$00
        beq     LA735
        cmp     #$01
        beq     LA739
        rts

LA735:  jsr     LA76E
        rts

LA739:  jsr     LA77D
        rts

LA73D:  ldx     #$04
        lda     #$BD
        .byte   $20
LA742:  jmp     (LA5FA)

        jmp     (L02C9)

        bne     LA6FD
        lda     #$10
        sta     L0062
        jsr     LA78C
        rts

        ldx     #$02
        lda     #$BD
        jsr     LFA6C
        ldx     #$04
        lda     #$BD
        jsr     LFA6C
        lda     L006C
        cmp     #$02
        beq     LA76B
        cmp     #$00
        beq     LA76B
        rts

LA76B:  lda     #$10
        .byte   $85
LA76E:  .byte   $62
        lda     L006C
        cmp     #$02
        beq     LA77A
        cmp     #$00
        beq     LA77E
        rts

LA77A:  jsr     LA78C
LA77D:  rts

LA77E:  lda     L0422
        cmp     #$C4
        beq     LA78C
        ldx     #$02
        lda     #$C4
        jsr     LFA6C
LA78C:  rts

        lda     L0423
        cmp     #$C4
        .byte   $F0
LA793:  sed
        ldx     #$03
        lda     #$C4
        jsr     LFA6C
        rts

        lda     L0424
        cmp     #$C4
        beq     LA78C
        ldx     #$04
        .byte   $A9
LA7A6:  cpy     L0020
        jmp     (L60FA)

LA7AB:  .byte   $FF
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
LA7D2:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LA7DF:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LA7FC:  brk
        brk
        brk
        brk
        brk
LA801:  brk
        brk
        brk
        brk
LA805:  brk
        brk
LA807:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LA80F:  brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LA822:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LA831:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LA838:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LA83F:  brk
        brk
        brk
        brk
LA843:  brk
        brk
        brk
        brk
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
LA86E:  .byte   $FF
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
LA8A5:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LA8AD:  .byte   $FF
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
LA8BD:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LA901:  brk
        brk
        brk
        brk
LA905:  brk
        brk
LA907:  brk
        brk
        brk
        brk
LA90B:  brk
        brk
        brk
        brk
        brk
        ldy     #$0F
LA912:  lda     LA94C,y
        sta     L0300,y
        sta     L0320,y
LA91B:  lda     LA95C,y
        .byte   $99
LA91F:  bpl     LA924
        .byte   $99
        .byte   $30
LA923:  .byte   $03
LA924:  dey
        bpl     LA912
LA927:  ldx     #$01
        lda     #$56
        jsr     LFA6C
        lda     #$00
        sta     L0501
        sta     L0521
        .byte   $A9
LA937:  .byte   $80
        sta     L04D1
        sta     L0401
        lda     #$7C
        sta     L04F1
        lda     #$5B
        .byte   $8D
        .byte   $11
LA947:  ora     L00A9
        .byte   $9E
        sta     L001B
LA94C:  lda     #$8C
        sta     L001A
        sta     L0018
        jsr     LF90C
        .byte   $20
        txs
LA957:  sed
        jsr     LAA00
        rts

LA95C:  .byte   $0F
        asl     L0027,x
        sec
        .byte   $0F
        jsr     L3827
        .byte   $0F
        .byte   $27
        .byte   $36
LA967:  jsr     L270F
        rol     L0013,x
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
        bmi     LA988
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        brk
        brk
        brk
LA97F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LA988:  brk
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
LA9A8:  .byte   $FF
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
LA9BF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LA9C8:  brk
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
LAA00:  brk
LAA01:  brk
        brk
        brk
        brk
        brk
LAA06:  brk
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
        ldy     L0062
        lda     LABAA,y
        sta     L000C
        .byte   $B9
        .byte   $BD
LAA1C:  .byte   $AB
        sta     L000D
        .byte   $A9
LAA20:  brk
        sta     L000E
        lda     #$00
        sta     L0010
LAA27:  lda     #$00
        sta     L0011
        .byte   $A5
LAA2C:  .byte   $62
        cmp     #$0E
        beq     LAA3C
        cmp     #$0F
        beq     LAA3C
        lda     L0014
        and     #$10
        beq     LAA3C
        rts

LAA3C:  ldx     L0010
        lda     LAAD7,x
        sta     L0360
        lda     LAADA,x
        clc
        adc     L0011
        sta     L0361
        lda     #$00
        sta     L0362
        ldy     L000E
        inc     L000E
        lda     (L000C),y
        cmp     #$FF
        beq     LAAAE
        cmp     #$FE
        beq     LAA8D
        sta     L0363
        lda     #$FF
        .byte   $8D
        .byte   $64
LAA67:  .byte   $03
        sta     L0019
        lda     L0010
        pha
        lda     L0011
        pha
        lda     #$04
        sta     L0097
        jsr     LF89A
        pla
        sta     L0011
        pla
        sta     L0010
        inc     L0011
        lda     L0092
        and     #$03
        bne     LAA8A
        .byte   $A9
LAA86:  .byte   $3F
        jsr     LF850
LAA8A:  jmp     LAA2C

LAA8D:  inc     L0010
        lda     L0010
        cmp     #$03
        bne     LAA27
        .byte   $20
LAA96:  .byte   $57
        .byte   $AB
        lda     L0062
        cmp     #$0E
        beq     LAAA8
        cmp     #$0F
        beq     LAAA8
        lda     L0014
LAAA4:  and     #$10
        bne     LAAE6
LAAA8:  .byte   $20
LAAA9:  cmp     L4CAA,x
        .byte   $13
        tax
LAAAE:  lda     L0062
        cmp     #$0F
        bne     LAAE3
        ldx     #$00
        lda     #$2C
        jsr     LFA78
        lda     #$80
        sta     L04D0,x
        lda     #$D0
        sta     L0400,x
        lda     #$00
        sta     L0500,x
        sta     L0520,x
        sta     L0510,x
        lda     #$80
        sta     L04F0,x
        lda     #$40
LAAD7:  sta     L0099
        .byte   $A9
LAADA:  .byte   $AB
        .byte   $9D
        .byte   $50
LAADD:  ora     L00A9
        .byte   $FF
        sta     L0560,x
LAAE3:  jmp     LAB57

LAAE6:  rts

        .byte   $22
        .byte   $23
        .byte   $23
        .byte   $E2
        .byte   $22
LAAEC:  .byte   $62
        lda     #$22
        sta     L0360
        lda     #$FE
        sta     L0361
        lda     #$00
        sta     L0362
        lda     L0062
        cmp     #$0E
        .byte   $F0
LAB01:  .byte   $0C
        cmp     #$0F
        beq     LAB0E
        cmp     #$11
        beq     LAB0E
        lda     #$02
        bne     LAB10
LAB0E:  lda     #$00
LAB10:  .byte   $8D
LAB11:  .byte   $63
        .byte   $03
        lda     #$23
        .byte   $8D
        .byte   $64
LAB17:  .byte   $03
        sta     L0384
        lda     #$22
        sta     L03A4
        lda     #$62
        sta     L0365
        lda     #$22
        sta     L0385
        lda     #$E2
        sta     L03A5
        ldx     #$1C
        stx     L0366
        stx     L0386
        stx     L03A6
        ldy     #$00
        lda     L0062
        cmp     #$0E
        beq     LAB4E
        cmp     #$0F
        beq     LAB4E
        cmp     #$11
        beq     LAB4E
        lda     #$02
        bne     LAB50
LAB4E:  lda     #$00
LAB50:  sta     L0367,y
        sta     L0387,y
        .byte   $99
LAB57:  .byte   $A7
        .byte   $03
        iny
        dex
        bpl     LAB50
        lda     #$FF
        sta     L03C4
        sta     L0019
        jmp     LFF06

LAB67:  lda     #$04
        sta     L0097
        jsr     LF89A
        jsr     LAB72
        .byte   $A5
LAB72:  .byte   $62
        cmp     #$0E
        beq     LAB81
        cmp     #$0F
        .byte   $F0
LAB7A:  asl     L00A5
        .byte   $14
        and     #$D0
        beq     LAB67
LAB81:  rts

        lda     L0062
        cmp     #$0E
        beq     LABB9
        cmp     #$0F
LAB8A:  beq     LABB9
        lda     #$22
        sta     L0360
LAB91:  lda     #$FE
        sta     L0361
        lda     #$00
        .byte   $8D
        .byte   $62
LAB9A:  .byte   $03
LAB9B:  ldx     #$FE
        lda     L0092
        and     #$10
        beq     LABAF
        lda     L0062
        cmp     #$11
        bne     LABAD
        .byte   $A2
LABAA:  brk
LABAB:  beq     LABAF
LABAD:  .byte   $A2
LABAE:  .byte   $02
LABAF:  stx     L0363
        lda     #$FF
        sta     L0364
        sta     L0019
LABB9:  rts

        bne     LAC24
        php
LABBD:  pla
        .byte   $BF
        and     L51D3,x
        .byte   $72
        .byte   $92
        plp
        .byte   $02
        sbc     L7CED
        lda     L00DC
        sbc     (L0040,x)
        .byte   $AB
        ldy     LADAD
        lda     LAEAE
        .byte   $AF
        .byte   $AF
        .byte   $AF
        bcs     LAB8A
        lda     (L00B2),y
        .byte   $B3
        .byte   $B3
        .byte   $B3
        .byte   $B3
        ldy     L00EA,x
        inc     LDCDA
        cpx     L00DE
        .byte   $EB
        .byte   $02
        .byte   $E3
        .byte   $DA
        .byte   $DC
        cpx     L0002
        .byte   $DA
        .byte   $E7
        cmp     LE1FE,x
        .byte   $E2
        cpx     LE102
        dec     LDCE7,x
        sbc     (L00E6,x)
        dec     L02E7,x
        .byte   $DA
        .byte   $EB
        .byte   $DE
LAC01:  inc     $E5DB,x
        inx
        .byte   $DC
        cpx     L00E2
        .byte   $E7
        cpx     #$02
        sbc     LDEE1
        inc     LE8DC,x
        .byte   $E7
        cpx     LEBED
        inc     LEDDC
        .byte   $E2
        inx
        .byte   $E7
        .byte   $02
LAC1C:  inx
LAC1D:  .byte   $DF
        .byte   $FE
        .byte   $ED
LAC20:  sbc     (L00DE,x)
        .byte   $02
        .byte   $E7
LAC24:  dec     L02F0,x
        .byte   $DB
        .byte   $EB
        .byte   $E2
        cmp     LDEE0,x
        .byte   $FA
LAC2E:  inc     LE8F2,x
        inc     LDDF9
        .byte   $02
        .byte   $DB
        dec     LEDED,x
        dec     L02EB,x
        cpx     LE8ED
        sbc     #$FE
        sbc     (L00E2,x)
        inc     L0002
        .byte   $DB
        dec     LE8DF,x
        .byte   $EB
        dec     LEC02,x
        inx
        inc     L00DE
LAC50:  inx
        .byte   $E7
        dec     LE0FE,x
        dec     LECED,x
        .byte   $02
        sbc     (L00EE,x)
        .byte   $EB
        sbc     L02FA
        .byte   $DD
LAC60:  inx
        .byte   $02
LAC62:  .byte   $F2
        inx
        inc     LF0FE
        .byte   $DA
        .byte   $E7
        sbc     LED02
        inx
        .byte   $02
        cpx     #$E8
LAC70:  .byte   $02
        sbc     LDEE1
        .byte   $EB
        dec     LFFFC,x
        beq     LAC62
        sbc     L00DF
        cmp     LDCEE,x
        .byte   $E4
LAC80:  .byte   $02
        .byte   $DA
        .byte   $E7
        cmp     LE1FE,x
        .byte   $E2
        cpx     LE102
        dec     LDCE7,x
        sbc     (L00E6,x)
        dec     L02E7,x
        .byte   $DA
        .byte   $EB
        dec     LEBFE,x
        .byte   $DA
        inc     L00E9
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
        dec     L02EB,x
        inx
        .byte   $DF
        .byte   $02
        sbc     LDEE1
        .byte   $FE
LACBA:  .byte   $DC
        .byte   $E2
        sbc     LFAF2
        .byte   $02
        .byte   $DB
        inc     L02ED
        .byte   $DB
        dec     LDCFE,x
        .byte   $DA
        .byte   $EB
        dec     LEEDF,x
        sbc     L00F7
        .byte   $02
        beq     LACBA
        sbc     L00DF
        cmp     LDCEE,x
        cpx     L00FE
        cpx     #$E8
        dec     L02EC,x
        .byte   $DB
        dec     LECEB,x
        dec     LE4EB,x
        inc     LE1F0,x
        dec     L02E7,x
        sbc     LDEE1
        .byte   $02
        inc     L00E8
        inx
        .byte   $E7
        inc     LE8DC,x
        inc     L00DE
        cpx     LE802
        inc     LF6ED
        .byte   $02
        .byte   $DD
        inx
LAD01:  .byte   $02
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
        inc     L00EC,x
        inc     L0002,x
        .byte   $DC
        .byte   $DA
        sbc     L00E5
        .byte   $02
        .byte   $DF
        .byte   $EB
        inx
        inc     L00FE
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
        .byte   $DD
LAD60:  inx
        .byte   $02
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
        inc     L00E8
        sbc     L00E2
        .byte   $DA
        .byte   $EB
        sbc     L02F2
        .byte   $E2
LAD82:  cpx     LDDFE
        .byte   $DE
        .byte   $EF
LAD87:  .byte   $DE
LAD88:  sbc     L00E8
        sbc     #$E2
        .byte   $E7
        cpx     #$02
        .byte   $DA
LAD90:  inc     LE8E6,x
        .byte   $E7
        cpx     LEBED
        inx
        inc     L02EC
        .byte   $E7
        dec     LFEF0,x
        inc     L00DA
        .byte   $DC
        sbc     (L00E2,x)
        .byte   $E7
        dec     LE202,x
        .byte   $E7
        .byte   $02
LADAA:  sbc     LDEE1
LADAD:  inc     LE8ED,x
        beq     LAD90
        .byte   $EB
        .byte   $FA
        .byte   $FA
        .byte   $02
        cmp     L02E8,x
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
        .byte   $EC
LADDA:  sbc     LDAEB
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
        .byte   $02
        .byte   $E2
        .byte   $E7
        .byte   $02
        sbc     LDEE1
        .byte   $FE
        .byte   $F0
LADF5:  inx
        inx
        cmp     LF6EC,x
        .byte   $02
        .byte   $E2
        .byte   $ED
LADFD:  .byte   $02
        inc     L00DA
        .byte   $F2
LAE01:  .byte   $02
        .byte   $DB
LAE03:  dec     LEDFE,x
LAE06:  .byte   $E1
LAE07:  dec     LF002,x
        inx
        .byte   $EB
        cpx     L0002
LAE0E:  inx
        .byte   $DF
        inc     LEEDB,x
        cpx     LEBE1
        inx
        inx
        sbc     LE0F6
        inx
        .byte   $02
        .byte   $DC
        sbc     (L00DE,x)
        .byte   $DC
        cpx     L00FE
        .byte   $E2
        sbc     LE802
        inc     L02ED
        cmp     LEBDA,x
        cpx     L00F0
        .byte   $E2
        .byte   $E7
        cpx     #$FA
        inc     LE8DD,x
        .byte   $02
        .byte   $F2
        inx
        inc     LF002
        .byte   $E2
        cpx     L02E1
        sbc     L02E8
        cpx     #$E8
        inc     LE1ED,x
        dec     LDEEB,x
        .byte   $FC
        .byte   $FF
        inc     L00DE
        cpx     #$DA
        .byte   $EF
        inx
        sbc     L00ED
        .byte   $02
        .byte   $DA
        .byte   $E7
        cmp     LE102,x
        .byte   $E2
        cpx     LE1FE
        dec     LDCE7,x
        sbc     (L00E6,x)
        dec     L02E7,x
        .byte   $DA
        .byte   $EB
        dec     LEBFE,x
        inx
        .byte   $DB
        .byte   $DB
LAE6F:  .byte   $E2
        .byte   $E7
        cpx     #$02
        sbc     LDEE1
        inc     LDAF0,x
        .byte   $EB
LAE7A:  dec     LE8E1,x
        inc     LDEEC
        cpx     LDA02
        sbc     L00E8
        .byte   $E7
        cpx     #$FE
        sbc     LDEE1
        .byte   $02
        beq     LAE6F
        .byte   $DA
        .byte   $EB
        .byte   $DF
        inc     L00FE,x
        .byte   $F2
        inx
        inc     LDB02
        dec     LEDED,x
        dec     L02EB,x
        inc     L00E8
        .byte   $EF
        dec     LEAFE,x
        inc     LDCE2
        cpx     L00E5
LAEA9:  .byte   $F2
        .byte   $02
        .byte   $DB
        .byte   $DE
LAEAD:  .byte   $DF
LAEAE:  inx
        .byte   $EB
        dec     LDA02,x
        sbc     L00E5
        inc     LE1ED,x
        dec     LE002,x
        inx
        inx
        cmp     L02EC,x
        .byte   $DA
        .byte   $EB
        .byte   $DE
LAEC3:  inc     LE8E0,x
        .byte   $E7
        dec     L02FA,x
        cmp     L02E8,x
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
        beq     LAEC3
        sbc     LDEEF,y
        .byte   $02
        .byte   $DF
        .byte   $E2
        .byte   $E7
        .byte   $DA
        sbc     L00E5
        .byte   $F2
        inc     LE8E5,x
        .byte   $DC
        .byte   $DA
        sbc     LDDDE
        .byte   $02
        sbc     LDEE1
        inc     LE2E1,x
        .byte   $DD
        .byte   $DE
LAF01:  inx
        inc     L02ED
        inx
        .byte   $DF
        .byte   $02
        cpx     LDEED
        dec     LFEE5,x
        .byte   $DB
        dec     LE4DA,x
        .byte   $FA
        .byte   $02
        sbc     (L00DE,x)
        .byte   $02
        .byte   $E2
        cpx     LE802
        .byte   $E7
        inc     LF6DF,x
        inx
        inc     L00F0,x
        inc     L00E5,x
        sbc     L02EC,y
        .byte   $DF
        .byte   $E5
LAF29:  inx
LAF2A:  .byte   $DA
        .byte   $ED
        .byte   $E2
LAF2D:  .byte   $E7
        cpx     #$FE
        .byte   $DF
        inx
        .byte   $EB
        .byte   $ED
        .byte   $EB
LAF35:  dec     LECEC,x
        inc     L00FE,x
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        sbc     L00DE
        .byte   $ED
        .byte   $F9
LAF47:  cpx     LE002
        dec     LFEED,x
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
LAF54:  .byte   $02
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
        beq     LAF47
        dec     LDEEB,x
        .byte   $02
        cpx     LE8E1
        inc     LDDE5
        inc     L0202,x
        .byte   $02
LAF74:  .byte   $F0
LAF75:  dec     LE002,x
        inx
        .byte   $02
        .byte   $E7
        inx
        beq     LAF75
        cmp     LFCF0,x
LAF81:  .byte   $FF
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $F2
LAF86:  dec     L02EC,x
        .byte   $DA
        .byte   $02
        .byte   $DB
LAF8C:  inc     LEDED
        inx
        .byte   $E7
        inc     L0202,x
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
        beq     LAF86
        sbc     L00E5
        .byte   $02
        cmp     LE7E8,x
        dec     L02F7,x
        cmp     LEBDA,x
        cpx     L00F0
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
        sbc     L02F2
        .byte   $DF
        .byte   $EB
        inx
        inc     L0002
        .byte   $DF
        inc     L00E8,x
        inc     L00F0,x
        inc     L00E5,x
        sbc     L02EC,y
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
        inc     L0002,x
        .byte   $F2
        inx
        inc     LE102
        .byte   $DA
        .byte   $EF
        dec     LDE02,x
        .byte   $DA
        .byte   $EB
        .byte   $E7
LB008:  dec     L02DD,x
        sbc     LDEE1
        inc     LEBE0,x
        .byte   $DA
        sbc     LEDE2
        inc     LDEDD
        .byte   $02
        inx
        .byte   $DF
        .byte   $02
        sbc     LDEE1
        .byte   $02
        dec     LEDE7,x
LB023:  .byte   $E2
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
        beq     LB023
        .byte   $02
        .byte   $E7
        dec     LDDDE,x
        .byte   $02
        .byte   $F2
        inx
        .byte   $EE
        .byte   $EB
LB04F:  inc     LDEE1,x
        sbc     L00E9
        .byte   $F7
        .byte   $02
        cmp     LEBDA,x
        cpx     L00F0
        .byte   $E2
        .byte   $E7
LB05D:  cpx     #$F6
        inc     L02DA,x
        inc     L00F2
        cpx     LDEED
        .byte   $EB
        .byte   $E2
        inx
        inc     L02EC
        .byte   $DC
        .byte   $EB
        .byte   $E2
        inc     L00DE
        .byte   $02
        beq     LB04F
        .byte   $EF
        dec     LE102,x
        .byte   $DA
        cpx     LECFE
        beq     LB05D
        sbc     #$ED
        .byte   $02
        inx
        .byte   $EF
        dec     L02EB,x
        sbc     LDEE1
        .byte   $02
        .byte   $DC
        .byte   $E2
        sbc     LF6F2
        inc     LDEF0,x
        .byte   $02
        .byte   $DB
        dec     LE2E5,x
        dec     LDEEF,x
        .byte   $02
        sbc     LDEE1
        cpx     L02DE
        .byte   $DC
        .byte   $EB
        .byte   $E2
        inc     L00DE
        cpx     LDA02
        .byte   $EB
        dec     LEDFE,x
        .byte   $E1
LB0AF:  .byte   $DE
LB0B0:  .byte   $02
        beq     $B09B
        .byte   $EB
        cpx     L0002
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
        .byte   $E6
LB0C9:  .byte   $E2
        .byte   $E7
        .byte   $DA
        sbc     L0002
        inx
        .byte   $EB
        cpx     #$DA
        .byte   $E7
        .byte   $E2
        .byte   $F3
        .byte   $DA
        sbc     LE8E2
LB0D9:  .byte   $E7
        .byte   $F7
        inc     LF6DF,x
        inx
        inc     L00F0,x
        inc     L00E5,x
        .byte   $FA
        .byte   $02
        .byte   $F2
        inx
        .byte   $EE
        .byte   $02
LB0E9:  inc     L00EE
        cpx     L02ED
        sbc     #$EE
        sbc     LDA02
        .byte   $E7
        inc     LE7DE,x
        .byte   $DD
        .byte   $02
LB0F9:  .byte   $ED
LB0FA:  inx
        .byte   $02
        sbc     LDEE1
        .byte   $E2
        .byte   $EB
LB101:  .byte   $02
        .byte   $DF
        .byte   $E2
        dec     LDDE7,x
        .byte   $E2
        .byte   $EC
LB109:  sbc     (L0002,x)
        sbc     #$E5
        .byte   $DA
        .byte   $E7
        cpx     LFFF6
        cpx     LEBE8
        .byte   $EB
        .byte   $F2
        .byte   $02
        .byte   $ED
LB119:  inx
        .byte   $02
        .byte   $E2
        .byte   $E7
        sbc     LEBDE
        .byte   $EB
        inc     LEDE9
        .byte   $FE
        .byte   $F2
LB126:  inx
        inc     L02EB
LB12A:  inc     L00E2
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
        inc     L02EB
        sbc     (L00DE,x)
        sbc     L00E9
        inc     L00FE,x
        .byte   $DA
        .byte   $02
        cpx     #$EB
        inx
        inc     L02E9
        inx
        .byte   $DF
        .byte   $02
        .byte   $DB
        inc     LE0EB
        sbc     L00DA
        .byte   $EB
        cpx     LE1FE
        .byte   $DA
        .byte   $EF
        dec     LDB02,x
        .byte   $EB
        inx
        cpx     L00DE
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
LB17F:  inc     LE7DA,x
        cmp     LED02,x
        .byte   $DA
        cpx     L00DE
        .byte   $E7
LB189:  .byte   $02
        .byte   $DA
        sbc     L00E5
        .byte   $02
        sbc     LDEE1
        .byte   $02
LB192:  .byte   $EF
        .byte   $DA
LB194:  sbc     L00EE
        .byte   $DA
        .byte   $DB
        sbc     L00DE
        inc     LEDE2,x
        dec     LECE6,x
        inc     L00FE,x
        inx
        .byte   $EE
LB1A4:  .byte   $EB
        .byte   $02
        .byte   $E2
        .byte   $E7
        .byte   $DF
        inx
        .byte   $EB
        inc     L00DA
        sbc     LE8E2
        .byte   $E7
LB1B1:  .byte   $02
        .byte   $E2
        .byte   $E7
LB1B4:  cmp     LDCE2,x
        .byte   $DA
        sbc     LECDE
        inc     LE1ED,x
        .byte   $DA
        sbc     LED02
        sbc     (L00DE,x)
LB1C4:  .byte   $02
        .byte   $DB
        inc     LE0EB
        sbc     L00DA
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
        sbc     L00E8
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
        inc     L00FF,x
        .byte   $EC
LB1FE:  inx
        .byte   $EB
        .byte   $EB
        .byte   $F2
        .byte   $02
        sbc     L02E8
        .byte   $DB
        inx
        sbc     LDEE1
        .byte   $EB
        .byte   $02
        .byte   $F2
        inx
        inc     LDDFE
        .byte   $DA
        .byte   $EB
        cpx     L00F0
        .byte   $E2
        .byte   $E7
        cpx     #$F7
        .byte   $DB
        inc     L02ED
        beq     LB1FE
        .byte   $02
        sbc     (L00DA,x)
        .byte   $EF
        dec     LDFFE,x
        inx
        inc     LDDE7
        .byte   $02
        sbc     LDEE1
        .byte   $02
        sbc     L00E8
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
        sbc     L00DA
        .byte   $EB
        sbc     L02EC,y
        sbc     (L00E2,x)
LB24C:  cmp     LE8DE,x
        inc     LFAED
        inc     LEEE8,x
        .byte   $EB
        .byte   $02
        .byte   $E2
        .byte   $E7
        .byte   $DF
        inx
LB25B:  .byte   $EB
LB25C:  inc     L00DA
        .byte   $E7
        sbc     L02EC
        cpx     LF2DA
        inc     LE1ED,x
        .byte   $DA
        sbc     LE202
        sbc     LE202
        cpx     LDF02
        .byte   $E2
        sbc     L00E5
        dec     L02DD,x
        beq     LB25C
        .byte   $ED
        .byte   $E1
LB27C:  inc     LE1ED,x
        dec     LEC02,x
        sbc     LE5E8
        dec     L02E7,x
        .byte   $E2
        sbc     LE6DE
        cpx     LFEF6
        .byte   $DB
        sbc     L00E8
        .byte   $DC
        cpx     L0002
        sbc     LDEE1
        .byte   $02
        .byte   $DC
        .byte   $DA
        sbc     #$EC
        inc     LDEE5
        .byte   $EC
LB2A1:  .byte   $02
        beq     $B286
        sbc     LFEE1
LB2A7:  .byte   $F2
        inx
        inc     L02EB
LB2AC:  .byte   $DC
        .byte   $DA
        sbc     #$DE
        .byte   $02
        .byte   $DA
        .byte   $E7
        cmp     LE002,x
        inx
        cpx     LE5DA
LB2BA:  .byte   $F2
        .byte   $E7
        .byte   $02
        beq     LB2A1
        sbc     L00E5
        inc     LDEE1,x
        sbc     L00E9
        .byte   $02
        .byte   $F2
        inx
        inc     LDC02
        inx
        sbc     L00E5
        dec     LEDDC,x
        .byte   $02
        sbc     LDEE1
        .byte   $02
        .byte   $E2
        .byte   $ED
LB2D9:  dec     LECE6,x
        inc     L00FE,x
        beq     LB2BA
        sbc     LE1DC
        .byte   $02
        .byte   $F2
        inx
        inc     L02EB
        cpx     LDEED
        sbc     #$FE
        .byte   $DA
        .byte   $E7
        cmp     LE002,x
        inx
        inx
        cmp     LE502,x
        inc     LE4DC
        .byte   $FA
        .byte   $FF
        .byte   $E5
LB2FE:  .byte   $DA
LB2FF:  inc     LDCE7
        sbc     (L00E9,x)
        .byte   $DA
        cmp     LF002,x
        .byte   $E2
        sbc     L00E5
        .byte   $02
        .byte   $DB
        .byte   $EB
        .byte   $E2
        dec     L02DF,x
        .byte   $F2
        inx
        .byte   $EE
LB315:  inc     LE2F0,x
        sbc     L02E1
        sbc     LDEE1
        .byte   $02
        cmp     LEDDE,x
        .byte   $DA
        .byte   $E2
        sbc     L00EC
        .byte   $02
        inx
        .byte   $DF
        .byte   $02
        .byte   $F2
        inx
        inc     LFEEB
        inc     L00E2
        cpx     LE2EC
        inx
        .byte   $E7
        cpx     LFEF6
        .byte   $EB
        dec     LDEE6,x
        inc     L00DB
        dec     L02EB,x
        sbc     L02E8
        .byte   $DC
        inx
        sbc     L00E5
        dec     LEDDC,x
        .byte   $02
        .byte   $DA
        sbc     L00E5
        .byte   $02
        inx
        .byte   $DF
        inc     LE1ED,x
        dec     LEC02,x
        sbc     LE5E8
        dec     L02E7,x
        cmp     LDAE2,x
        inc     L00E8
        .byte   $E7
        cmp     LFEEC,x
        .byte   $DA
        .byte   $E7
LB36A:  cmp     LE002,x
        inx
        sbc     L00DD
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
        cpx     L00F0
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
LB39E:  .byte   $DA
        sbc     LDF00
LB3A2:  sbc     L00DA
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
LB3B2:  sbc     LFFFA
        .byte   $E2
        brk
        .byte   $DA
        inc     L0000
        sbc     LDEE1
        brk
        beq     LB3A2
        .byte   $E7
        cpx     #$DE
        cmp     LEC00,x
        .byte   $DC
        inx
        inc     LE0EB
        dec     LEDFE,x
        sbc     (L00DA,x)
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
        cpx     L00FA
        .byte   $FF
        .byte   $F2
        inx
        inc     LEFF8
        dec     LDF82,x
        inx
        .byte   $E2
        sbc     L00DE
        cmp     LE682,x
        .byte   $F2
        .byte   $82
        sbc     #$E5
        .byte   $DA
        .byte   $E7
        cpx     LEDFE
        sbc     (L00E2,x)
        cpx     LED82
        .byte   $E2
        inc     L00DE
        .byte   $82
        cmp     LEBDA,x
        cpx     L00F0
        .byte   $E2
        .byte   $E7
        cpx     #$F9
        inc     LEEDB,x
        sbc     LED82
        sbc     (L00DE,x)
        .byte   $82
        .byte   $E7
        dec     LEDF1,x
        .byte   $82
        sbc     LE6E2
        dec     LF082,x
        dec     LE682,x
        dec     LEDDE,x
        inc     L00FE,x
        .byte   $E2
        .byte   $82
        cpx     LDAE1
        sbc     L00E5
        .byte   $82
        .byte   $DB
        dec     LEF82,x
        .byte   $E2
        .byte   $DC
LB445:  sbc     LEBE8
        .byte   $E2
        inx
        inc     LF9EC
        sbc     LFFF9,y
        .byte   $DB
        sbc     L00DA
        .byte   $EC
LB454:  sbc     LE802
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
        sbc     L00E5
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
        .byte   $ED
LB487:  dec     LECE6,x
        .byte   $02
        .byte   $DA
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
LB49E:  .byte   $E2
        inc     L00DE
LB4A1:  .byte   $02
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
        .byte   $E4
LB4BA:  beq     LB49E
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
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LB507:  brk
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
LB561:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LB59A:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LB5AE:  .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
LB5B4:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LB67F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LB6A5:  .byte   $FF
        .byte   $FF
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
LB6BD:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        ora     (L0011),y
        ora     (L0011),y
        ora     (L0011),y
        ora     #$0A
        ora     (L0011),y
        ora     (L000B),y
        ora     (L0001,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        ora     L032B
        .byte   $03
        .byte   $17
        .byte   $17
        .byte   $03
        .byte   $03
        .byte   $2B
        .byte   $17
        pla
        ora     (L0003,x)
        .byte   $03
        ora     (L0065,x)
        .byte   $03
        .byte   $37
        ora     (L0001,x)
        bit     L0303
        .byte   $03
        .byte   $47
        lsr     a
        .byte   $03
        .byte   $2F
        .byte   $03
        .byte   $03
        .byte   $27
        bit     L2C37
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $4B
        jmp     L4E4D

        .byte   $37
        bit     L5946
        ora     (L000A),y
        ora     (L0011),y
        ora     (L0011),y
        ora     (L0034),y
        .byte   $07
        .byte   $07
        ora     (L0011),y
        .byte   $07
        ora     L1111,y
        .byte   $1A
        .byte   $07
        ora     (L0011),y
        .byte   $07
        .byte   $1B
        ora     #$0C
        ora     (L0011),y
        .byte   $34
        ora     (L0003),y
        .byte   $03
        .byte   $2B
        ora     L0001,x
        adc     #$03
        .byte   $03
        pla
        adc     L0003
        .byte   $37
        ora     (L0069,x)
        .byte   $47
        lsr     a
        asl     L0003
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $37
        .byte   $02
        lsr     L0011
        and     L0011,x
        ora     #$02
        .byte   $02
        brk
        brk
        .byte   $3C
        ora     (L0034),y
        .byte   $0B
        ora     (L0009),y
        ora     (L0009),y
        brk
        brk
        brk
        brk
        ora     (L003D),y
        ora     (L0009),y
        ora     (L0011),y
        ora     (L0009),y
        ora     (L0011),y
        asl     a
        ora     (L0065),y
        ora     (L0037,x)
        bit     L1108
        php
        ora     (L0037),y
        bit     L2C37
        .byte   $03
        asl     L0003,x
        .byte   $43
        ora     #$0A
        php
        .byte   $0B
        plp
        and     #$30
        and     (L0030),y
        ora     (L0030),y
        ora     (L0011),y
        ora     #$11
        ora     (L0008),y
        ora     #$08
        ora     (L0011),y
        and     L1011,x
        ora     (L0001,x)
        .byte   $02
        .byte   $02
        php
        ora     (L0008),y
        .byte   $14
        php
        .byte   $11
LB7BA:  .byte   $34
        ora     #$11
        and     L1111,x
        .byte   $34
        ora     (L0008),y
        ora     (L003C),y
        ora     (L0008),y
        ora     (L0008),y
        ora     (L0008),y
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
        bit     L5946
        .byte   $3C
        ora     (L0011),y
        ora     (L0011),y
        and     L0011,x
        ora     (L0011),y
        asl     a
        ora     (L0010),y
        ora     #$0A
        .byte   $11
LB7EF:  ora     (L000A),y
        ora     #$11
        and     L0911,x
        ora     (L0014),y
        .byte   $1A
        .byte   $07
        bpl     LB80D
        asl     a
        ora     (L0011),y
        ora     (L0007),y
        .byte   $0C
        ora     #$0C
        ora     (L0011),y
        ora     (L000A),y
        php
        ora     #$11
        ora     #$61
LB80D:  .byte   $63
        adc     (L0063,x)
        .byte   $5A
        .byte   $67
        .byte   $03
        .byte   $03
        asl     a
        ora     L1111,y
        .byte   $2B
        .byte   $2B
        ora     (L0001,x)
        .byte   $1A
        ora     (L0009),y
        .byte   $11
LB820:  .byte   $1A
        ora     (L0008),y
        ora     (L000A),y
        ora     L1110,y
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
        ora     (L0071),y
        bmi     LB84F
        ora     (L0011),y
        .byte   $6F
        ora     (L0070),y
        adc     (L006E),y
        .byte   $73
        ora     (L0077),y
        ora     (L0011),y
        bvs     LB85D
        ora     #$76
        .byte   $70
LB84F:  .byte   $77
        adc     L0076,x
        bvs     LB8CB
        ora     (L0011),y
        bvs     LB8CF
        .byte   $3A
        .byte   $3B
        ora     (L0001,x)
        .byte   $02
LB85D:  .byte   $02
        plp
        and     #$6E
        ora     (L0070),y
        adc     (L0030),y
        and     (L0030),y
        ora     (L006E),y
        ora     (L0070),y
        ora     (L0032),y
        ora     (L0033),y
        ora     (L0075),y
        ror     L0033,x
        ora     (L0011),y
        ora     (L000B),y
        php
        php
        ora     (L0010),y
        .byte   $0B
        ora     (L0011),y
        ora     (L003D),y
        .byte   $72
        php
        bvs     LB8F5
        ora     (L003D),y
        ora     (L003D),y
        adc     L0076,x
        bvs     LB8FD
        ora     (L0011),y
        ora     (L0014),y
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
        ror     L1111
        adc     (L006E),y
        ora     (L0070),y
        .byte   $74
        ora     #$73
        bvs     LB923
        ror     L7014
        .byte   $77
        bpl     LB8C6
        bvs     LB92B
        ora     (L0073),y
        ora     (L0074),y
        php
        ora     (L0010),y
        ora     (L000A),y
        ora     (L0033),y
        ora     (L0011),y
        php
        ora     (L0008),y
        .byte   $37
        .byte   $2C
LB8C6:  lsr     L0060
        .byte   $33
        ora     (L0033),y
LB8CB:  ora     (L006F),y
        .byte   $73
        .byte   $70
LB8CF:  .byte   $74
        adc     L0076,x
        ora     #$71
        .byte   $32
        ora     (L0011),y
        ora     (L006F),y
        .byte   $14
        bvs     LB953
        bpl     LB951
        bvs     LB951
        ora     (L0009),y
        php
        adc     (L0010),y
        ora     (L0008),y
        ora     (L0011),y
        asl     a
        ora     #$09
        .byte   $6F
        ora     (L0011),y
        ora     (L0032),y
        .byte   $73
        bvs     LB96B
        .byte   $0B
LB8F5:  ora     (L0011),y
        ora     (L0011),y
        .byte   $0C
        ora     #$23
        .byte   $11
LB8FD:  ora     #$0A
        ora     #$11
        ora     (L0008),y
        ora     (L0008),y
        ora     #$09
        asl     a
        ora     (L0035),y
        ora     (L0014),y
        ror     L1171
LB90F:  ora     (L006E),y
        adc     (L0011),y
        adc     (L0009),y
        asl     a
        ora     (L0009),y
        ora     (L000C),y
        ora     (L000C),y
        php
        ora     (L0008),y
        ora     #$08
        ora     #$0A
LB923:  ora     (L0001),y
        ora     (L0044,x)
        .byte   $44
        ora     (L0001,x)
        .byte   $27
LB92B:  bit     L0911
        ora     (L003D),y
        asl     L0002
        pha
        eor     #$1E
        asl     L1E1E,x
        ora     #$11
        ora     (L0009),y
        .byte   $0B
        .byte   $14
        php
        ora     (L003C),y
        ora     (L0011),y
        adc     (L0008),y
        ora     (L0011),y
        ora     (L0003),y
        .byte   $03
        ora     L0004
        .byte   $03
        .byte   $03
        .byte   $04
        ora     L0003
LB951:  .byte   $03
        .byte   $04
LB953:  .byte   $04
        ora     (L0009),y
        ora     (L0001,x)
        ora     L0004
        .byte   $27
        bit     L0504
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
        asl     L0048
LB96B:  eor     #$02
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
        adc     (L0063,x)
        php
        ora     #$10
        ora     (L0061),y
        .byte   $63
        .byte   $5B
        .byte   $52
        adc     (L0063,x)
        .byte   $5A
        .byte   $67
        .byte   $03
        .byte   $03
        .byte   $03
        asl     L0002,x
        asl     L0048
        eor     #$02
        brk
        pha
        eor     #$11
        .byte   $73
        .byte   $3F
        .byte   $3F
        .byte   $03
        .byte   $03
        ora     L0003
        php
        ora     #$08
LB99F:  ora     #$08
        ora     #$34
        .byte   $14
        .byte   $03
        .byte   $03
        adc     (L0062,x)
        .byte   $03
        .byte   $03
        .byte   $62
        .byte   $63
        ora     L0004
        .byte   $03
        .byte   $03
        .byte   $5B
        .byte   $52
        .byte   $03
        .byte   $03
        .byte   $5B
        .byte   $52
        adc     (L0063,x)
        ora     #$0A
        .byte   $3F
        .byte   $3F
        ora     (L0035),y
        .byte   $3F
        .byte   $3F
        adc     (L0062,x)
        .byte   $5B
        eor     (L0062),y
        .byte   $62
        eor     (L0051),y
        .byte   $62
        .byte   $63
        eor     (L0052),y
        ora     #$0A
        php
        ora     #$61
        .byte   $62
        .byte   $5A
        ror     L0062
        .byte   $63
        ror     L0067
        php
        ora     #$3F
        .byte   $3F
        .byte   $04
        .byte   $04
        adc     (L0062,x)
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
        adc     (L0063,x)
        php
        and     L3D08,x
        .byte   $1F
        .byte   $1F
        pha
        eor     #$08
        and     L1134,x
        .byte   $02
        .byte   $02
        ora     (L0011),y
        .byte   $02
        .byte   $02
        ora     (L0014),y
LBA00:  .byte   $03
        .byte   $03
        asl     L0004,x
        .byte   $43
        .byte   $03
        .byte   $03
        .byte   $03
        ora     L3003,x
        .byte   $03
        .byte   $3C
LBA0D:  ora     (L0034),y
        ora     #$56
        .byte   $03
        lsr     L0003,x
        ora     (L0011),y
        .byte   $3F
        .byte   $3F
        lsr     L0002,x
        bit     L0049
        bit     L001E
        bit     L001E
        eor     L0008
        and     L0308
        .byte   $03
        ora     L0303,x
        .byte   $03
        .byte   $03
        ora     L096F,x
        bvs     LBAA1
        bmi     LBA35
        lsr     L0003,x
        .byte   $03
LBA35:  bmi     LBA3A
        lsr     L0002,x
        .byte   $56
LBA3A:  pha
        bit     L001E
        bit     L001E
        bit     L0037
        bit     L272F
        bit     L2C03
        .byte   $03
        .byte   $02
        lsr     L0000
        brk
        asl     L0002
        brk
        brk
        ora     (L0001,x)
        brk
        brk
        .byte   $02
        asl     L0000
        brk
        brk
        brk
        eor     L6C5D,x
        jmp     (L6D6D)

        adc     L2E6D
        adc     L6D6D
        adc     LD66D
        dec     L00D6,x
        dec     L0086,x
        .byte   $87
        stx     L808F
        sta     (L0088,x)
        .byte   $89
        brk
        brk
        .byte   $82
        .byte   $83
        brk
        brk
        bcc     LBA0D
        brk
        brk
        .byte   $92
        .byte   $93
        brk
        brk
        brk
        sta     L9796,x
        .byte   $9E
        .byte   $9F
        tya
        sta     L8D8C,y
        txs
        .byte   $9B
        sty     L0095,x
        txa
        sty     L0084
        sty     L0084
        .byte   $8B
        lda     (L00B2),y
        brk
        lda     (L00A8,x)
        lda     #$A2
        .byte   $A3
        tax
        .byte   $AB
        .byte   $A4
LBAA1:  lda     L00AC
        lda     LA7A6
        ldx     LC0AF
        cmp     (L00C6,x)
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
LBAB8:  ldy     L00B5,x
        ldy     LB6BD,x
        .byte   $B7
        ldx     LCABF,y
        .byte   $CB
        cpy     a:L00CD
        brk
        cmp     (L00D2),y
        brk
        clv
        .byte   $D3
        sei
        lda     L79D4,y
        .byte   $7A
        cmp     L00B0,x
        .byte   $7B
        .byte   $7C
        sta     L00A0
        adc     L9C7E,x
        brk
        .byte   $7F
        dec     a:L0000
        .byte   $CF
        brk
        .byte   $02
        .byte   $02
        .byte   $5F
        and     L6D6D,y
        rol     a:L002E
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     L0006
        php
        ora     #$64
        .byte   $4B
        jsr     L2422
        rol     L002A
        asl     L6E12
        rti

        .byte   $31
LBB02:  bit     L006C
        .byte   $E0
LBB05:  rol     L4E66
        stx     L004B,y
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
        sty     L0048
        ldy     L71AE
        asl     L00A0
        ldx     #$A4
        ldx     L00C8
        cpy     L06E8
        tay
        tax
        cpy     L00C6
        dex
        dec     L3106
        .byte   $EB
        and     #$3A
        brk
        .byte   $04
        ldx     L0106
        sty     L038E
        pla
        adc     #$68
        adc     #$ED
        asl     L0000
        brk
        asl     L0016,x
        .byte   $7A
        ldy     #$8A
        .byte   $C2
        .byte   $C3
        .byte   $12
        plp
        eor     (L00E8),y
        .byte   $4B
        cpx     L00EF
        ror     L4F4F
        .byte   $34
        brk
        .byte   $12
        .byte   $12
        brk
        brk
        inx
        sed
        rts

        adc     (L00A4),y
        ldx     L0043
        iny
        sty     L0088
        bmi     LBB02
        .byte   $9E
        .byte   $13
        cmp     LD1CF
        cmp     (L00EC),y
        .byte   $EE
LBB6E:  dec     L00D8,x
        lsr     L0000,x
        brk
        brk
        sty     a:L0000
        ora     (L005A,x)
        .byte   $5C
        sei
        sty     L8304
        brk
        asl     L0000
        rts

LBB82:  .byte   $62
        .byte   $64
        brk
        sty     L0B09
        bvs     LBBFC
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
        rol     L0028
        rol     a
        bit     L302E
        .byte   $32
        cpx     #$8C
        stx     L0000
        brk
        .byte   $3C
        rol     LBDB0,x
        .byte   $BF
        brk
        bcs     LBBF5
        lsr     a
        jmp     L90B0

        .byte   $92
        sty     L0096,x
        tya
        txs
        ldy     L00A6
        ldx     #$A9
LBBBA:  bcs     LBB6E
        lda     L00B7,x
LBBBE:  sbc     (L00F3),y
        brk
        brk
        cmp     #$CB
        cmp     (L00DE,x)
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
        asl     L0006
        php
LBBF5:  ora     #$65
        .byte   $4B
        and     (L0021,x)
        and     (L0027,x)
LBBFC:  .byte   $2B
        .byte   $0F
        .byte   $12
        .byte   $6F
        eor     (L0021,x)
        and     (L006D,x)
        sbc     (L002F,x)
        .byte   $67
LBC07:  lsr     L0D97
        .byte   $4B
        eor     L8B05
        .byte   $62
        .byte   $12
        .byte   $2B
        .byte   $14
        .byte   $6B
        .byte   $2B
        lda     (L00C1,x)
        adc     (L00E3,x)
        sta     (L0083,x)
        sta     L0049
        asl     L0000
        bvs     LBC07
        lda     (L00A3,x)
        lda     L00A7
        and     (L00CD,x)
        sbc     #$EB
        lda     #$AB
        cmp     L00C7
        .byte   $CB
        .byte   $CF
        asl     L0021
        ldy     L3B00
        brk
        ora     L0000
        cpx     L8D02
        .byte   $8F
        and     #$69
        sei
        adc     #$78
        inc     a:L0006
        sec
        asl     L0016,x
        .byte   $7B
        lda     (L008B,x)
        .byte   $12
        asl     L0012
        brk
        eor     (L00E9),y
        .byte   $4B
        sbc     L0006
        .byte   $4F
        .byte   $4F
        .byte   $6F
        eor     L0000
        .byte   $12
        .byte   $12
        brk
        brk
        sbc     #$F9
        adc     (L0070,x)
        lda     L00A7
LBC60:  .byte   $44
        cmp     #$85
        .byte   $89
        and     (L009D),y
        .byte   $9F
        .byte   $32
        dec     LD1D0
        cmp     (L00ED),y
        cld
        .byte   $EF
        beq     LBCC8
        brk
        brk
        brk
        sty     a:L0000
        .byte   $02
        .byte   $5B
        brk
        adc     L826F,y
        .byte   $8F
        ora     L0007
        brk
        adc     (L0063,x)
        brk
        sty     L008C
        asl     a
        .byte   $0C
        adc     (L0073),y
        adc     L0077,x
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
        asl     L0025,x
        .byte   $27
        and     #$2B
        and     L312F
        .byte   $33
        sbc     (L0085,x)
        brk
        brk
        .byte   $3B
        and     LB0B0,x
        ldx     L46C0,y
        .byte   $47
LBCAC:  eor     #$4B
        bcs     LBC60
        sta     (L0093),y
        sta     L0097,x
        sta     LA59B,y
LBCB7:  .byte   $A7
        tay
        tax
        lda     (L0000),y
        ldx     L00B8,y
        .byte   $F2
        .byte   $F4
        brk
        iny
        dex
        cpy     LDFC2
LBCC6:  .byte   $FF
        brk
LBCC8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LBCE2:  brk
        brk
        brk
        brk
        brk
        brk
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
        asl     L0018,x
        ora     L5B74,y
        bmi     LBD1B
        .byte   $34
        and     (L002A,x)
        asl     L7E16,x
        and     (L0021,x)
        brk
        jmp     (L3EF0)

        ror     L005E,x
        .byte   $12
        .byte   $5B
LBD0A:  .byte   $5A
        .byte   $5C
        ldy     L629A,x
        .byte   $12
        .byte   $3A
        asl     L0000,x
        .byte   $7C
        bcs     LBCC6
        bvs     LBD0A
        bcc     LBCAC
        .byte   $94
LBD1B:  cli
        ldy     L70BE,x
        asl     L00B0,x
        .byte   $B2
        ldy     L00B6,x
        cld
        .byte   $DC
        brk
        asl     L00B8,x
        tsx
        .byte   $D4
        dec     L00DA,x
        dec     L2112,x
        .byte   $FB
        and     L962A,y
        asl     L00BE,x
        .byte   $12
        ora     (L0062),y
        .byte   $62
        bpl     LBDA4
        adc     #$6A
        .byte   $6B
        sbc     L1812,x
        clc
        bvs     LBDA7
        .byte   $A0
LBD46:  bcs     LBCE2
        .byte   $D2
        .byte   $D3
        bvc     LBD64
        .byte   $12
        brk
        .byte   $5B
        .byte   $F4
        .byte   $12
        ror     L5F5F,x
        and     (L0012,x)
        eor     (L0051),y
        .byte   $07
        .byte   $12
        brk
        brk
        bvs     LBDCE
        ldy     L00B6,x
        .byte   $53
        cld
        sty     L0098,x
LBD64:  and     L00AD,x
        .byte   $BF
        .byte   $23
        cld
        .byte   $DA
        .byte   $DC
        sbc     L00F7,x
        .byte   $F9
LBD6E:  .byte   $FA
        .byte   $FC
        .byte   $04
        eor     L6600,y
        sty     a:L00E6
        .byte   $04
        sty     L8C5E
        sta     (L0087,x)
        brk
        brk
        sty     L6A68
        jmp     (L006D)

        txa
        ora     L0404
        .byte   $7B
        adc     LE97F,x
        bpl     LBD93
        .byte   $04
        inx
        .byte   $17
        .byte   $19
LBD93:  .byte   $1B
        ora     L211F,x
        .byte   $23
        brk
        brk
        brk
        brk
        .byte   $34
        and     L0037,x
        and     L8DD1,y
        brk
        .byte   $3F
LBDA4:  eor     (L0043,x)
        .byte   $45
LBDA7:  bcs     LBDA9
LBDA9:  cpy     L0000
        lsr     L5100
        .byte   $53
        .byte   $B0
LBDB0:  .byte   $9C
        .byte   $9E
        ldy     #$A2
        brk
        brk
        .byte   $AB
LBDB7:  lda     a:L00AF
LBDBA:  .byte   $B3
        brk
        lda     LD8BB,y
        cld
        brk
        .byte   $D2
        .byte   $D4
        dec     L00C6,x
        brk
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LBDCE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        asl     L0018,x
        ora     L5B75,y
        and     (L0033),y
        and     (L0031),y
        .byte   $2B
        .byte   $1F
        asl     L007F,x
        bmi     LBE33
        .byte   $34
        adc     L3FF1
        .byte   $77
        .byte   $5E
LBE08:  .byte   $12
        ora     L5D5B,x
        asl     L009B,x
        .byte   $62
        .byte   $12
        .byte   $3B
        ora     L0000,x
        adc     LB1B1,x
        adc     (L00F3),y
        sta     (L0093),y
        sta     L0059,x
        asl     L0000,x
        adc     (L0016),y
        lda     (L00B3),y
        lda     L00B7,x
        and     (L00DD),y
        brk
        .byte   $FB
        lda     LD5BB,y
        .byte   $D7
        and     (L00DF),y
        .byte   $12
        and     (L00BC),y
        brk
        .byte   $2B
LBE33:  .byte   $97
        asl     L0000,x
        .byte   $FC
        bpl     LBE9B
        .byte   $62
        and     L7869,y
        .byte   $6B
        adc     L12FE,y
        clc
        clc
        adc     (L0062),y
        lda     (L00B1,x)
        .byte   $9B
        asl     L0012,x
        eor     (L0018),y
        .byte   $12
        brk
        .byte   $5B
        sbc     L0012,x
        .byte   $5F
        .byte   $5F
        .byte   $7F
        and     (L0014,x)
        eor     (L0052),y
LBE58:  .byte   $12
        .byte   $17
        brk
        brk
        adc     (L0071),y
        lda     L00B7,x
        .byte   $54
        cmp     L3195,y
        rol     L00BD,x
        .byte   $AF
        .byte   $42
        cmp     LDDDB,y
        inc     L00F8,x
        cld
        .byte   $FB
        sbc     a:L0058,x
        adc     L0067
        sty     L03E7
        .byte   $04
        eor     L8C5F,x
        brk
        dey
        brk
        php
        sty     L6B69
        sty     L896E
        .byte   $8B
        asl     L7A04
        .byte   $7C
        .byte   $7E
LBE8B:  .byte   $80
        nop
LBE8D:  ora     (L0004),y
        .byte   $04
        brk
        clc
        .byte   $1A
        .byte   $1C
        asl     L2220,x
        bit     L0000
        brk
        brk
LBE9B:  brk
        ldx     #$36
        sec
        .byte   $3A
        sbc     L008E
        brk
        rti

        .byte   $42
        .byte   $44
        bcs     LBE58
        .byte   $C3
        cmp     L004D
        .byte   $4F
        bvc     LBF00
        .byte   $54
        eor     L009D,x
LBEB1:  .byte   $9F
        lda     (L00A3,x)
        brk
        brk
        ldy     a:L00AE
        brk
        ldy     L0000,x
        tsx
LBEBD:  ldy     LFED8,x
        brk
        .byte   $D3
        cmp     L00D7,x
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
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        bmi     LBF29
        bmi     LBF2B
        bmi     LBF2D
        ora     (L0002),y
        .byte   $41
LBF00:  bmi     LBF32
        bmi     LBF34
        bmi     LBF17
        jsr     L3211
        bmi     LBF3B
        bmi     LBF0F
        bmi     LBF12
LBF0F:  .byte   $02
        bmi     LBF14
LBF12:  bmi     LBF44
LBF14:  .byte   $32
        bmi     LBF4A
LBF17:  .byte   $02
        bmi     LBF4A
        and     (L0011),y
        .byte   $02
        bvc     LBF52
        .byte   $02
        bmi     LBF52
        bmi     LBF54
        bmi     LBF56
        brk
        .byte   $02
        .byte   $41
LBF29:  eor     (L0031,x)
LBF2B:  and     (L0030),y
LBF2D:  bmi     LBF61
        .byte   $32
        .byte   $02
        brk
LBF32:  bmi     LBF36
LBF34:  .byte   $02
        .byte   $50
LBF36:  .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $02
LBF3B:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        eor     (L0032,x)
        .byte   $02
        .byte   $02
        .byte   $02
LBF44:  .byte   $02
        bmi     LBF77
        bmi     LBF4B
        .byte   $02
LBF4A:  .byte   $02
LBF4B:  .byte   $02
        brk
        brk
        ora     (L0041),y
        .byte   $02
        .byte   $41
LBF52:  eor     (L0041,x)
LBF54:  bmi     LBF58
LBF56:  .byte   $02
        .byte   $02
LBF58:  .byte   $02
        .byte   $02
        brk
        brk
        .byte   $33
        .byte   $33
        bmi     LBF90
        .byte   $30
LBF61:  bmi     LBF93
        bmi     LBF95
        bmi     LBF97
        bmi     LBF6B
        .byte   $03
        .byte   $03
LBF6B:  .byte   $03
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
LBF77:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LBF90:  .byte   $02
        brk
        brk
LBF93:  brk
        brk
LBF95:  brk
        brk
LBF97:  brk
        brk
        brk
        brk
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $03
        brk
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0000,x)
        .byte   $02
        ora     (L0001,x)
        brk
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0003,x)
        .byte   $02
        .byte   $02
        brk
        .byte   $02
        .byte   $02
        .byte   $02
        ora     (L0001,x)
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
        inc     LFFE1
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
LC00E:  cpx     #$FF
        jmp     L806C

        jmp     L80FE

        lda     #$00
        sta     L00C2
        ldy     #$08
LC01C:  asl     L00C2
        .byte   $26
LC01F:  cmp     (L0090,x)
        ora     $A518
        .byte   $C2
        adc     L00C4
        sta     L00C2
        lda     L00C1
        adc     #$00
        sta     L00C1
LC02F:  dey
        bne     LC01C
        rts

        asl     a
        tay
        iny
        pla
        sta     L00C1
        pla
        sta     L00C2
        lda     (L00C1),y
        pha
        iny
        lda     (L00C1),y
        sta     L00C2
        pla
        sta     L00C1
        jmp     (L00C1)

        sty     L00C1
        ldy     #$00
        cmp     #$C0
        bcs     LC057
        sta     L00C2
        lda     (L00C1),y
        rts

LC057:  sec
        sbc     #$20
        sta     L00C2
        lda     #$07
        sta     L8000
        lda     #$18
        sta     L8001
        lda     (L00C1),y
        pha
        lda     #$07
        .byte   $8D
        brk
LC06D:  .byte   $80
        lda     #$17
        sta     L8001
        lda     #$20
        clc
        adc     L00C2
        sta     L00C2
        pla
LC07B:  rts

        lda     L00C0
        lsr     a
        bcs     LC0E7
        lda     L00D0
        ora     L00D1
        beq     LC08A
        jsr     L8252
LC08A:  clc
        lda     L00CA
        adc     L00C8
        sta     L00C8
        lda     L00C9
        adc     #$00
        sta     L00C7
        lda     L00CF
        pha
        ldx     #$03
LC09C:  lsr     L00CF
        bcc     LC0A9
        lda     L00CF
        ora     #$80
        sta     L00CF
        .byte   $20
        .byte   $DE
LC0A8:  .byte   $82
LC0A9:  lda     L00C0
        and     #$02
        bne     LC0B6
LC0AF:  txa
        pha
        jsr     L8393
        pla
        tax
LC0B6:  dex
        bpl     LC09C
        pla
        sta     L00CF
        lsr     L00C0
        asl     L00C0
        lda     L00CC
        and     #$7F
        beq     LC0E7
        ldy     #$00
        sty     L00C1
        ldy     #$04
LC0CC:  asl     a
        rol     L00C1
        dey
        bne     LC0CC
        clc
        adc     L00C0
        sta     L00C0
        lda     L00C1
        adc     L00CD
        bcc     LC0E5
        lda     L00CC
        and     #$80
        sta     L00CC
        lda     #$FF
LC0E5:  sta     L00CD
LC0E7:  rts

        txa
        and     #$03
        eor     #$03
        asl     a
        asl     a
        tay
        lda     #$30
        cpy     #$08
        bne     LC0F8
        lda     #$00
LC0F8:  sta     L4000,y
        rts

        pha
        txa
        and     #$03
        eor     #$03
        asl     a
        asl     a
        sty     L00C4
        ora     L00C4
        tay
        pla
        sta     L4000,y
        rts

        inc     L00C0
        jsr     L8106
        dec     L00C0
        rts

        cmp     #$F0
        bcc     LC11D
        .byte   $4C
        .byte   $AE
LC11C:  .byte   $81
LC11D:  cmp     L8A40
        bcc     LC128
        sec
        sbc     L8A40
        bcs     LC11D
LC128:  asl     a
        tax
        ldy     L8A44,x
        tya
        ora     L8A43,x
        beq     LC17E
        .byte   $BD
LC134:  .byte   $43
        txa
        jsr     L803A
        tay
        beq     LC17F
LC13C:  ldy     #$00
        inx
        sta     L00C4
        and     #$7F
        cmp     L00CE
        bcc     LC17E
        sta     L00CE
        bne     LC155
        lda     L00D6
        bpl     LC155
        lda     L00C4
        bmi     LC155
        .byte   $84
LC154:  .byte   $D7
LC155:  sty     L00D6
        asl     L00C4
        ror     L00D6
        bpl     LC15F
        stx     L00D7
LC15F:  inc     L00C1
        lda     L00C1
        sta     L00D0
        bne     LC169
        inc     L00C2
LC169:  lda     L00C2
        sta     L00D1
        tya
        sta     L00D2
        sta     L00D3
        sta     L00D4
        sta     L00D5
        ldy     #$27
LC178:  sta     L0700,y
        dey
        bpl     LC178
LC17E:  rts

LC17F:  ldx     #$01
        stx     L00C9
        ldx     #$99
        stx     L00CA
        sta     L00C8
        sta     L00CB
        sta     L00CC
        sta     L00CD
        ldx     #$53
LC191:  sta     L0728,x
        dex
        bpl     LC191
        ldx     #$03
LC199:  inc     L00C1
        bne     LC19F
        inc     L00C2
LC19F:  ldy     L00C1
        lda     L00C2
        jsr     L803A
        sta     L0754,x
        inc     L00C1
        bne     LC1AF
        inc     L00C2
LC1AF:  ldy     L00C1
        lda     L00C2
        jsr     L803A
        sta     L0750,x
        dex
        bpl     LC199
        bmi     LC201
        sty     L00C3
        and     #$07
        jsr     L8023
        cmp     L0081
        iny
        sta     (L00E4,x)
        sta     (L001E,x)
        .byte   $82
        rol     L0082
        and     L3482
        .byte   $82
        lsr     a
        .byte   $82
        jsr     L81E4
        lda     #$00
        sta     L00CE
        sta     L00D0
        sta     L00D1
        sta     L00D7
        sta     L00D8
        lda     L00CF
        beq     LC1F3
        eor     #$0F
        sta     L00CF
        jsr     L81F1
        lda     #$00
        sta     L00CF
LC1F3:  rts

        lda     #$00
        ldx     #$03
LC1F8:  sta     L0754,x
        sta     L0750,x
        dex
        bpl     LC1F8
LC201:  lda     L00CF
        pha
        ldx     #$03
LC206:  lsr     L00CF
        bcs     LC21A
        jsr     L80D8
        lda     L0754,x
        ora     L0750,x
        beq     LC21A
        lda     #$FF
        sta     L077C,x
LC21A:  dex
        bpl     LC206
        pla
LC21E:  sta     L00CF
        lda     #$08
        sta     L4001
        sta     L4005
        lda     #$0F
        sta     L4015
        rts

        lda     L00C0
        ora     #$02
        sta     L00C0
        bne     LC201
        lda     L00C0
        and     #$FD
        sta     L00C0
        rts

        asl     L00C3
        beq     LC244
        sec
        ror     L00C3
LC244:  lda     L00C0
        and     #$0F
        sta     L00C0
        ldy     L00C3
        sty     L00CC
        beq     LC257
        ldy     #$FF
        cpy     L00CD
        bne     LC259
        iny
LC257:  sty     L00CD
LC259:  rts

        lda     #$00
        sec
        sbc     L00C3
        sta     L00D8
        rts

        lda     L00D3
        beq     LC26B
        dec     L00D3
        dec     L00D5
        rts

LC26B:  jsr     L8386
        sta     L00C4
        asl     a
        bcc     LC283
        sty     L00CE
        lda     L00D7
        lsr     a
        bcc     LC280
        jsr     L8118
        jmp     L825B

LC280:  jmp     L81C8

LC283:  lsr     L00C4
        bcc     LC2B6
        jsr     L8386
        asl     a
        beq     LC299
        asl     L00D6
        php
        cmp     L00D6
        beq     LC2A6
        plp
        ror     L00D6
        inc     L00D6
LC299:  jsr     L8386
        tax
        jsr     L8386
        sta     L00D0
        stx     L00D1
        bne     LC26B
LC2A6:  tya
        plp
        ror     a
        sta     L00D6
        clc
        lda     #$02
        adc     L00D0
        sta     L00D0
        bcc     LC2B6
        inc     L00D1
LC2B6:  lsr     L00C4
        bcc     LC2BF
        jsr     L8386
        sta     L00D4
LC2BF:  lsr     L00C4
        bcc     LC2C8
        jsr     L8386
        sta     L00D2
LC2C8:  jsr     L8386
        sta     L00D3
        sta     L00C1
        lda     L00D4
        sta     L00C4
        jsr     L8006
        ldy     L00C1
        iny
        sty     L00D5
        inc     L00C0
        jsr     L8386
        pha
        eor     L00CF
        beq     LC2EA
        sta     L00CF
        jsr     L81D4
LC2EA:  pla
        sta     L00CF
        rts

        ldy     L0700,x
        beq     LC2F6
        jsr     L8684
LC2F6:  lda     L00C0
        lsr     a
LC2F9:  bcs     LC31A
        jsr     L86BA
        lda     L00D3
        beq     LC30A
        cpx     #$01
        beq     LC30B
        lda     L00D5
        beq     LC310
LC30A:  rts

LC30B:  dec     L0710,x
        bne     LC30A
LC310:  lda     L0704,x
        and     #$04
        bne     LC30A
        jmp     L85A3

LC31A:  lda     #$00
        sta     L00C4
        jsr     L8386
LC321:  lsr     a
        bcc     LC330
        pha
        jsr     L8386
        sta     L00C3
        lda     L00C4
        jsr     L8326
        pla
LC330:  beq     LC343
        inc     L00C4
        bne     LC321
        jsr     L8023
        .byte   $6F
        stx     L00AD
        stx     L005A
        stx     L00A7
        stx     L00A1
        .byte   $86
LC343:  jsr     L8386
        tay
        bne     LC359
        sta     L0710,x
        lda     L0704,x
        and     #$F8
        ora     #$04
        sta     L0704,x
        jmp     L80D8

LC359:  lda     L0704,x
        ora     #$20
        sta     L0704,x
        lda     L0718,x
        asl     a
        lda     #$54
        bcs     LC36B
        .byte   $A9
LC36A:  asl     a
LC36B:  sta     L071C,x
        tya
        bpl     LC37B
        cpx     #$01
        bne     LC378
        jsr     L85AE
LC378:  jmp     L8644

LC37B:  jsr     L85AE
        lda     #$FF
        sta     L077C,x
        dey
        txa
        bne     LC38F
        sta     L00C3
        tya
        eor     #$0F
        jmp     L8636

LC38F:  tya
        clc
        adc     L00D2
        jmp     L85DE

        ldy     L00D0
        lda     L00D1
        inc     L00D0
        bne     LC3A0
        inc     L00D1
LC3A0:  jmp     L803A

        txa
        ora     #$28
        tax
        lda     L0728,x
        ora     L072C,x
        beq     LC3DC
        lda     L0738,x
        beq     LC3DD
        ldy     L0700,x
        beq     LC3BF
        jsr     L8684
        jsr     L86BA
LC3BF:  lda     L0740,x
        sec
LC3C3:  sbc     L00C7
        sta     L0740,x
        beq     LC3CC
        bcs     LC3CF
LC3CC:  jsr     L85A3
LC3CF:  lda     L0738,x
        sec
        sbc     L00C7
        sta     L0738,x
        beq     LC3DD
        bcc     LC3DD
LC3DC:  rts

LC3DD:  jsr     L8592
        cmp     #$20
LC3E2:  bcs     LC3EA
        jsr     L8497
        jmp     L83CD

LC3EA:  pha
        rol     a
        rol     a
        rol     a
        rol     a
        and     #$07
        tay
        dey
        lda     L0730,x
        asl     a
        asl     a
        bpl     LC3FF
        lda     L8915,y
        bne     LC416
LC3FF:  asl     a
        asl     a
        lda     L891C,y
        bcc     LC416
        sta     L00C3
        lda     L0730,x
        and     #$EF
        sta     L0730,x
        lda     L00C3
        lsr     a
        clc
        adc     L00C3
LC416:  clc
        adc     L0738,x
        sta     L0738,x
        tay
        pla
        and     #$1F
        bne     LC429
        .byte   $20
LC424:  .byte   $A3
        sta     L004C
        sta     (L0084),y
LC429:  pha
        sty     L00C4
        lda     L073C,x
        sta     L00C1
        jsr     L8006
        lda     L00C1
        bne     LC43A
        lda     #$01
LC43A:  sta     L0740,x
        pla
        tay
        dey
        lda     L0730,x
        bpl     LC450
        lda     L0718,x
        bne     LC464
        jsr     L8644
        jmp     L847E

LC450:  jsr     L85AE
        lda     L00CF
        bmi     LC464
        sty     L00C3
        txa
        and     #$03
        tay
        lda     #$FF
        sta     L077C,y
        ldy     L00C3
LC464:  txa
        and     #$03
        bne     LC476
        sta     L00C3
        tya
        and     #$0F
        eor     #$0F
        jsr     L8636
        jmp     L847E

LC476:  sty     L00C3
        lda     L0730,x
        and     #$0F
        tay
        lda     L8923,y
        clc
        adc     L00C3
        clc
LC485:  adc     L00CB
        clc
        adc     L0734,x
        jsr     L85DE
        lda     L0730,x
        tay
        and     #$40
        asl     a
        sta     L00C4
        tya
        and     #$7F
        ora     L00C4
        sta     L0730,x
        bpl     LC4A6
        lda     #$FF
        sta     L0740,x
LC4A6:  rts

        cmp     #$04
        bcc     LC4B4
        sta     L00C4
        jsr     L8592
        sta     L00C3
        lda     L00C4
LC4B4:  jsr     L8023
        cmp     LDD84,y
        sty     L00E1
        sty     L00E8
        sty     L0075
        sta     L00F1
        .byte   $84
LC4C3:  .byte   $FF
        sty     L005A
        stx     L006F
        stx     L0005
        sta     L0010
        sta     L0015
        sta     L00A1
        stx     L00A7
        stx     L001B
        sta     L001F
        sta     L0023
        sta     L0027
        sta     L001B
        sta     L001F
        sta     L0023
        sta     L0027
        sta     L005A
        sta     L0080
        sta     L00AD
        stx     L00A9
        jsr     L0DD0
        lda     #$40
        bne     LC4FA
        lda     #$10
        ora     L0730,x
        bne     LC4FD
        lda     #$08
LC4FA:  eor     L0730,x
LC4FD:  sta     L0730,x
        rts

        lda     #$00
        sta     L00C8
        jsr     L8592
        ldy     L00C3
        sta     L00CA
        sty     L00C9
        rts

        lda     L00C3
        sta     L073C,x
        rts

        lda     L0730,x
        and     #$F8
        ora     L00C3
        sta     L0730,x
        rts

        .byte   $A5
LC521:  .byte   $C3
        sta     L00CB
LC524:  rts

        lda     L00C3
        sta     L0734,x
        rts

        lda     #$00
        beq     LC539
        lda     #$04
        bne     LC539
        .byte   $A9
LC534:  php
        bne     LC539
        lda     #$0C
LC539:  sta     L00C2
        txa
LC53C:  clc
        adc     L00C2
        tay
        lda     L00C4
        cmp     #$12
        bcs     LC557
        lda     L0744,y
        sec
        sbc     #$01
LC54C:  bcs     LC550
        lda     L00C3
LC550:  sta     L0744,y
        beq     LC576
        bne     LC565
LC557:  lda     L0744,y
        sec
        sbc     #$01
        bne     LC576
        sta     L0744,y
        jsr     L8575
LC565:  jsr     L8592
        sta     L00C3
        jsr     L8592
        sta     L0728,x
        lda     L00C3
        sta     L072C,x
        rts

LC576:  lda     #$02
        clc
        adc     L0728,x
        sta     L0728,x
        bcc     LC584
        inc     L072C,x
LC584:  rts

        lda     L0730,x
        and     #$97
        ora     L00C3
        sta     L0730,x
        rts

        pla
        pla
        lda     #$00
        sta     L0728,x
        sta     L072C,x
        lda     L00CF
        .byte   $30
LC59D:  .byte   $03
        jmp     L80D8

        rts

        ldy     L0728,x
        lda     L072C,x
        inc     L0728,x
        bne     LC5B0
        inc     L072C,x
LC5B0:  jmp     L803A

        lda     L0704,x
        and     #$F8
        ora     #$03
        sta     L0704,x
        rts

        tya
        pha
        ldy     #$00
        lda     L0704,x
        and     #$F8
        sta     L0704,x
        cpx     #$29
        beq     LC5E0
        cpx     #$01
        bne     LC5E7
        lda     L00D3
        sta     L00C1
        lda     L070C,x
        sta     L00C4
        jsr     L8006
        ldy     L00C1
LC5E0:  iny
        inc     L0704,x
        inc     L0704,x
LC5E7:  tya
        sta     L0710,x
        pla
        tay
        rts

        cmp     #$60
        bcc     LC5F4
        lda     #$5F
LC5F4:  sta     L00C3
        inc     L00C3
        cpx     #$28
        bcc     LC63A
        lda     L071C,x
        beq     LC62D
        cmp     L00C3
        .byte   $D0
LC604:  .byte   $07
        lda     L0730,x
        bpl     LC62D
        bmi     LC654
        lda     L0718,x
        beq     LC62D
        bcs     LC617
        ora     #$80
        bne     LC619
LC617:  and     #$7F
LC619:  sta     L0718,x
        lda     L0704,x
        ora     #$20
        sta     L0704,x
        lda     L00C3
        ldy     L071C,x
        sty     L00C3
        bne     LC637
LC62D:  lda     L0704,x
        and     #$DF
        sta     L0704,x
        lda     L00C3
LC637:  sta     L071C,x
LC63A:  asl     L00C3
        ldy     L00C3
        lda     L8959,y
        sta     L00C3
        lda     L895A,y
LC646:  sta     L0724,x
        lda     L00C3
        sta     L0720,x
        ldy     #$04
        lda     (L00C5),y
        bmi     LC65C
LC654:  lda     L0704,x
        and     #$08
        bne     LC65C
        rts

LC65C:  lda     #$00
        sta     L0708,x
        lda     L0704,x
        and     #$37
        sta     L0704,x
        rts

        cpx     #$01
        bne     LC672
        lda     L00C3
        bne     LC67B
LC672:  lda     L070C,x
        and     #$C0
        ora     L00C3
        ora     #$30
LC67B:  sta     L070C,x
        rts

        inc     L00C3
        lda     L00C3
        cmp     L0700,x
        beq     LC6B0
        sta     L0700,x
        tay
        lda     L0704,x
        ora     #$08
        sta     L0704,x
        dey
        lda     #$00
        sta     L00C3
        tya
        asl     a
        rol     L00C3
        asl     a
        rol     L00C3
        asl     a
        rol     L00C3
        clc
        adc     L8A42
        sta     L00C5
        lda     L00C3
        adc     L8A41
        sta     L00C6
LC6B0:  rts

        lda     L00C3
        sta     L0714,x
        rts

        lda     L00C3
        sta     L0718,x
        rts

        lda     L070C,x
        and     #$0F
        ora     L00C3
        ora     #$30
LC6C6:  sta     L070C,x
        rts

        lda     L0710,x
        sta     L00C4
        lda     L0704,x
        and     #$07
        jsr     L8023
        cmp     (L0086),y
        inc     L0086
        jsr     L0287
        .byte   $87
        .byte   $14
        .byte   $89
        ldy     #$00
        lda     (L00C5),y
        tay
        lda     L00C4
        clc
        adc     L8933,y
        bcs     LC6F2
        cmp     #$F0
        bcc     LC72D
LC6F2:  lda     #$F0
        bne     LC72A
        ldy     #$01
        lda     (L00C5),y
        beq     LC70B
        tay
        lda     L00C4
        sec
        sbc     L8933,y
        bcc     LC70B
        ldy     #$02
        cmp     (L00C5),y
        bcs     LC72D
LC70B:  ldy     #$02
        lda     (L00C5),y
        jmp     L871A

        txa
        and     #$03
        cmp     #$01
        beq     LC728
        ldy     #$03
        lda     (L00C5),y
        beq     LC730
        tay
        lda     L00C4
        sec
        sbc     L8933,y
        bcs     LC72D
LC728:  lda     #$00
LC72A:  inc     L0704,x
LC72D:  sta     L0710,x
LC730:  cpx     #$28
        bcc     LC747
        lda     L00CF
        bpl     LC73B
        jmp     L88A0

LC73B:  lda     L00CD
        ldy     L00CC
        bmi     LC743
        eor     #$FF
LC743:  cmp     #$FF
        bne     LC750
LC747:  txa
        and     #$03
        cmp     #$01
        bne     LC770
        beq     LC762
LC750:  cpx     #$29
        bne     LC76B
        sta     L00C4
        lda     L0740,x
        sta     L00C1
        jsr     L8006
        lda     L00C1
        beq     LC7BA
LC762:  lda     L0710,x
        beq     LC7BA
        lda     #$FF
        bne     LC7BA
LC76B:  cmp     L0710,x
LC76E:  bcc     LC773
LC770:  lda     L0710,x
LC773:  lsr     a
        lsr     a
        lsr     a
        lsr     a
        eor     #$0F
        sta     L00C3
        ldy     #$06
        lda     (L00C5),y
        cmp     #$05
        bcc     LC7A7
        sta     L00C4
        ldy     L0708,x
        lda     L0704,x
        asl     a
        asl     a
        tya
        bcc     LC792
        eor     #$FF
LC792:  beq     LC7A7
        sta     L00C1
        jsr     L8006
        lda     L00C1
        lsr     a
LC79C:  lsr     a
        cmp     #$10
        bcs     LC7B5
        cmp     L00C3
        bcc     LC7A7
        sta     L00C3
LC7A7:  lda     #$10
        sta     L00C4
        lda     L070C,x
        sec
        sbc     L00C3
        bit     L00C4
        bne     LC7BA
LC7B5:  lda     L070C,x
        and     #$F0
LC7BA:  ldy     #$00
        jsr     L80EC
        txa
        and     #$03
        tay
        lda     L077C,y
        bmi     LC81C
        ldy     #$05
        lda     (L00C5),y
        .byte   $F0
LC7CD:  lsr     LC485
        ldy     L0708,x
        lda     L0704,x
        asl     a
        asl     a
        tya
        bcc     LC7DD
        eor     #$FF
LC7DD:  beq     LC81C
        sta     L00C1
        jsr     L8006
        lda     L00C1
        lsr     a
        ror     L00C2
        lsr     a
        ror     L00C2
        lsr     a
        ror     L00C2
        lsr     a
        ror     L00C2
        tay
        ora     L00C2
        beq     LC81C
        lda     L0704,x
        bmi     LC80A
        clc
        lda     L00C2
        adc     L0720,x
        sta     L00C2
        tya
        .byte   $7D
LC806:  bit     L0007
        bne     LC819
LC80A:  sec
        lda     L0720,x
        sbc     L00C2
        sta     L00C2
        lda     L0724,x
        sty     L00C1
        sbc     L00C1
LC819:  tay
        bne     LC824
LC81C:  lda     L0720,x
        sta     L00C2
        ldy     L0724,x
LC824:  cpx     #$28
        bcs     LC845
        lda     L00D6
        bpl     LC845
LC82C:  lda     L00D8
        beq     LC845
        sta     L00C4
        sty     L00C1
        lda     L00C2
        pha
        jsr     L8006
        pla
        clc
        adc     L00C2
        sta     L00C2
        lda     #$00
        adc     L00C1
        tay
LC845:  txa
        and     #$03
        bne     LC859
        tya
        and     #$0F
        ldy     #$07
        ora     (L00C5),y
        sta     L00C2
        lda     #$00
        sta     L00C1
        beq     LC894
LC859:  tya
        ldy     #$08
LC85C:  dey
        cmp     L8953,y
        bcc     LC85C
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
        beq     LC880
LC877:  lsr     L00C1
        ror     L00C2
        sec
        sbc     #$08
        bne     LC877
LC880:  ldy     #$00
        lda     L0714,x
        beq     LC894
        bpl     LC88A
LC889:  dey
LC88A:  clc
        adc     L00C2
        sta     L00C2
        tya
        adc     L00C1
        sta     L00C1
LC894:  ldy     #$02
        lda     L00C2
        jsr     L80EC
        txa
        and     #$03
        tay
        lda     L00C1
        cmp     L077C,y
        beq     LC8B0
        sta     L077C,y
        ora     #$08
        ldy     #$03
        jsr     L80EC
LC8B0:  lda     L0704,x
        and     #$20
        beq     LC90A
        lda     L0718,x
        beq     LC902
        ldy     #$00
        asl     a
        php
        bcc     LC8C8
        eor     #$FF
        clc
        adc     #$01
LC8C7:  dey
LC8C8:  clc
        adc     L0720,x
        sta     L0720,x
        tya
        adc     L0724,x
        sta     L0724,x
        lda     L071C,x
        asl     a
        tay
        sec
        lda     L0720,x
        sbc     L8959,y
        lda     L0724,x
        and     #$3F
        sbc     L895A,y
        lda     #$FF
        adc     #$00
        plp
        adc     #$00
        bne     LC90A
        txa
        beq     LC90A
        lda     L8959,y
        sta     L0720,x
        lda     L895A,y
        sta     L0724,x
LC902:  lda     L0704,x
        and     #$DF
        sta     L0704,x
LC90A:  ldy     #$04
        lda     (L00C5),y
        and     #$7F
        beq     LC924
        clc
        adc     L0708,x
        sta     L0708,x
        bcc     LC924
        lda     L0704,x
        clc
        adc     #$40
        .byte   $9D
LC922:  .byte   $04
        .byte   $07
LC924:  rts

        .byte   $02
        .byte   $04
        php
        bpl     LC94A
        rti

        .byte   $80
        .byte   $03
        .byte   $06
LC92E:  .byte   $0C
        clc
        bmi     LC992
        cpy     #$00
        .byte   $0C
        clc
        bit     L0030
        .byte   $3C
        pha
        .byte   $54
        clc
        bit     L0030
        .byte   $3C
        pha
        .byte   $54
        rts

        .byte   $6C
        brk
LC944:  ora     (L0002,x)
        .byte   $03
        .byte   $04
        ora     L0006
LC94A:  .byte   $07
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        asl     L100F
        .byte   $12
        .byte   $13
        .byte   $14
        asl     L0018,x
        .byte   $1B
        asl     L2823,x
LC95C:  bmi     LC99A
        bvc     LC9DE
        .byte   $7F
        inc     a:L00FF,x
        .byte   $07
        asl     L1C15
        .byte   $23
        rol     a
        and     (L005C),y
        .byte   $37
        .byte   $9C
        rol     L00E7,x
        and     L003C,x
        and     L009B,x
        .byte   $34
        .byte   $02
        .byte   $34
        .byte   $72
        .byte   $33
        nop
        .byte   $32
        ror     a
        .byte   $32
        sbc     (L0031),y
        .byte   $80
        and     (L0014),y
        and     (L005C),y
        bmi     LC922
        .byte   $2F
        .byte   $E7
        rol     L2E3C
        .byte   $9B
        and     L2D02
        .byte   $72
        .byte   $2C
        nop
LC992:  .byte   $2B
        ror     a
        .byte   $2B
        sbc     (L002A),y
        .byte   $80
        rol     a
        .byte   $14
LC99A:  rol     a
        .byte   $5C
        and     #$9C
        plp
        .byte   $E7
        .byte   $27
        .byte   $3C
        .byte   $27
        .byte   $9B
        rol     L0002
        rol     L0072
        and     L00EA
        bit     L006A
LC9AC:  bit     L00F1
        .byte   $23
        .byte   $80
        .byte   $23
        .byte   $14
        .byte   $23
        .byte   $5C
        .byte   $22
        .byte   $9C
        and     (L00E7,x)
        jsr     L203C
        .byte   $9B
        .byte   $1F
        .byte   $02
        .byte   $1F
        .byte   $72
        asl     L1DEA,x
        ror     a
        ora     L1CF1,x
        .byte   $80
        .byte   $1C
        .byte   $14
        .byte   $1C
        .byte   $5C
        .byte   $1B
        .byte   $9C
        .byte   $1A
        .byte   $E7
        ora     L193C,y
        .byte   $9B
        clc
        .byte   $02
        clc
        .byte   $72
        .byte   $17
LC9D9:  nop
        asl     L006A,x
LC9DC:  asl     L00F1,x
LC9DE:  ora     L0080,x
        ora     L0014,x
        ora     L005C,x
        .byte   $14
        .byte   $9C
        .byte   $13
        .byte   $E7
        .byte   $12
        .byte   $3C
        .byte   $12
        .byte   $9B
        ora     (L0002),y
        ora     (L0072),y
        bpl     LC9DC
        .byte   $0F
        ror     a
        .byte   $0F
        sbc     (L000E),y
        .byte   $80
        asl     L0E14
        .byte   $5C
        ora     L0C9C
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
        sbc     (L0007),y
        .byte   $80
        .byte   $07
        .byte   $14
        .byte   $07
        .byte   $5C
LCA14:  asl     L009C
        ora     L00E7
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
        ora     (L006A,x)
        ora     (L00F1,x)
        brk
        .byte   $80
        brk
LCA29:  .byte   $14
        brk
        brk
        brk
        brk
LCA2E:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LCA39:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        sty     L900B
        .byte   $82
        sta     (L008B),y
        .byte   $92
        .byte   $46
LCA5B:  .byte   $92
        cpx     #$96
        .byte   $62
        tya
        .byte   $9F
        .byte   $9B
        sta     L009E
        cmp     L00A1,x
        eor     L00A3,x
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
LCA74:  .byte   $14
        .byte   $AF
        rol     L00AF
        and     L45AF,y
        .byte   $AF
        eor     (L00AF),y
        pla
        .byte   $AF
        .byte   $7F
        .byte   $AF
        .byte   $8B
        .byte   $AF
        ldx     L00AF
        .byte   $CB
        bcs     LCAB8
        bcs     LCACF
LCA8B:  bcs     LCAE3
        bcs     LCA14
        bcs     LCA29
        brk
        brk
        bcs     LCA39
LCA95:  bcs     LCA5B
        bcs     LCA74
        lda     (L0005),y
        lda     (L001A),y
        lda     (L0024),y
        lda     (L0061),y
        lda     (L0070),y
        lda     (L0093),y
        lda     (L00A4),y
        lda     (L00B2),y
        lda     (L00C5),y
        lda     (L00DD),y
        lda     (L00F9),y
        .byte   $B2
        asl     L2FB2
        .byte   $B2
        eor     (L00B2,x)
        .byte   $4C
        .byte   $B2
LCAB8:  cmp     L00B2,x
        .byte   $F2
        .byte   $B3
        .byte   $14
        .byte   $B3
        .byte   $24
LCABF:  .byte   $B3
        pha
        .byte   $B3
        cli
        .byte   $B3
        adc     #$B3
        .byte   $7B
        .byte   $B3
LCAC8:  sta     (L00B3),y
        .byte   $9C
        .byte   $B3
        clv
        .byte   $B3
        .byte   $C3
LCACF:  .byte   $B3
        dec     LDDB3
        .byte   $1F
        ora     L0AA0,x
        .byte   $80
        brk
        brk
        .byte   $80
        asl     LD00A,x
        ora     L00DC
        brk
        .byte   $1C
        brk
LCAE3:  brk
        brk
        brk
        brk
        .byte   $B2
        .byte   $03
        bvc     LCAEB
LCAEB:  asl     LC00E,x
        .byte   $1A
        cpx     L0010
        asl     L1F00
        .byte   $1C
        bne     LCAFD
        .byte   $B7
        brk
        php
        brk
        .byte   $1F
        .byte   $19
LCAFD:  cpy     #$04
        .byte   $AE
        brk
LCB01:  bpl     LCB03
LCB03:  asl     LD01C,x
        ora     L00B0
        brk
        .byte   $0C
        brk
        ora     LE01C,x
        .byte   $07
        ldy     L0000
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
        bcc     LCB22
        brk
        brk
        brk
LCB22:  brk
        .byte   $1F
        asl     L04B0,x
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
LCB38:  ora     L0000
        .byte   $80
        .byte   $1F
        ora     L02A0,x
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
        beq     LCB6E
        .byte   $9E
        cli
        brk
        brk
        .byte   $1A
        ora     L07A0,y
        .byte   $BB
        brk
        .byte   $17
        .byte   $80
        .byte   $1F
        .byte   $1C
LCB5D:  bcs     LCB62
        .byte   $DF
        .byte   $03
        .byte   $07
LCB62:  .byte   $80
        .byte   $1F
        ora     #$E0
        ora     #$C2
        brk
        .byte   $33
        .byte   $80
        .byte   $1F
        .byte   $07
        .byte   $A0
LCB6E:  bpl     LCB5D
        ora     L0007
        .byte   $80
        .byte   $1F
        asl     L0BF0,x
        cpx     L0001
        plp
        brk
        .byte   $1F
        ora     L0360,y
LCB7F:  cmp     L0000
        .byte   $7F
        brk
        .byte   $1F
        .byte   $1F
        beq     LCB97
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCBAE
        cmp     (L001F,x)
        plp
        brk
        .byte   $1C
        .byte   $1F
        beq     LCBB6
LCB97:  .byte   $7F
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
        asl     L0BA0,x
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        .byte   $F0
LCBAE:  .byte   $1F
        .byte   $FF
        lsr     a
        brk
        brk
        .byte   $1F
        .byte   $17
        rts

LCBB6:  bpl     LCB38
        brk
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCBDE
        .byte   $FF
        .byte   $7F
        .byte   $32
        brk
        .byte   $1F
        asl     L0660,x
        brk
        brk
LCBC9:  brk
        brk
        .byte   $1F
        .byte   $1F
LCBCD:  beq     LCBEE
        cmp     L007F,y
        brk
        .byte   $1F
        .byte   $1F
        beq     LCBD8
        .byte   $EF
LCBD8:  brk
        eor     L0000,x
        .byte   $1F
        .byte   $1F
        .byte   $90
LCBDE:  .byte   $12
        brk
        brk
        brk
        brk
        .byte   $17
        .byte   $1F
        beq     LCC05
        ldy     L003B
        brk
        .byte   $80
        .byte   $1F
        .byte   $19
        .byte   $80
LCBEE:  .byte   $1B
        asl     L0035,x
        brk
        brk
        .byte   $1F
        .byte   $1F
        beq     LCC16
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $1F
        ora     L0AA0,x
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $1F
        .byte   $1F
LCC05:  rts

        .byte   $0C
        brk
        brk
        brk
        brk
        ora     L1001,y
        .byte   $02
        brk
        brk
        brk
        brk
        .byte   $1F
        .byte   $1D
        .byte   $90
LCC16:  .byte   $17
        brk
        brk
        brk
        .byte   $80
        brk
        sty     L8D14
        .byte   $4F
        stx     L8F69
        .byte   $6F
        ora     L0001
        sta     L7806,y
        .byte   $07
        php
        .byte   $04
LCC2C:  php
        .byte   $04
        php
        php
        .byte   $04
        ora     #$01
        clc
        .byte   $80
        txa
        sty     L8F8D
        .byte   $02
        sta     L6A01
        ora     (L00AA,x)
        .byte   $12
        php
        sty     L8F40
        .byte   $8F
        .byte   $8F
        adc     LB101
        ora     (L0071,x)
        ldy     #$0E
        ora     (L008C,x)
        ora     L8C8C,x
        sty     L4C6A
        sta     LAC01
        ora     (L006C,x)
        .byte   $02
        rts

        php
        ora     (L0060,x)
        .byte   $02
        sta     L8A8D
        .byte   $02
        sta     LAF01
        ora     (L006F,x)
        .byte   $80
        adc     L6F60
        sta     (L0001),y
        sta     (L0001),y
        lda     (L0060),y
        .byte   $80
        clc
        .byte   $80
        php
        asl     L0080
        brk
        adc     (L00A0),y
        .byte   $74
        brk
        .byte   $80
        ldx     L0006,y
        .byte   $64
        .byte   $07
        ora     #$08
        .byte   $07
        ora     #$02
        clc
        cpy     #$AA
        asl     L006E
        .byte   $07
        php
        ora     #$01
        php
        .byte   $04
        rol     L4F02
        rts

        adc     L2E60
        ora     (L006F,x)
        .byte   $02
        ora     (L004F,x)
        adc     L6070
        adc     (L006D),y
        rts

        .byte   $2E
LCCA6:  ora     (L006F,x)
        .byte   $02
        ora     (L004F,x)
        adc     L1860
        .byte   $80
        php
        asl     L0009
        .byte   $02
        .byte   $80
        brk
        adc     L6CA0
        brk
        .byte   $80
        tax
        asl     L0064
        .byte   $07
        ora     #$08
        .byte   $07
        clc
        cpy     #$AA
        asl     L006E
        .byte   $07
        php
        php
        .byte   $04
        ora     #$01
        rol     L4F02
        rts

        adc     L2E60
        ora     (L006F,x)
        .byte   $02
        ora     (L004F,x)
        adc     L6070
        adc     (L006D),y
        rts

        rol     L6F01
        .byte   $02
        ora     (L004F,x)
        adc     L8060
        brk
        adc     (L00A0),y
        .byte   $74
        brk
        .byte   $80
        ldx     L0006,y
        .byte   $64
        .byte   $07
        ora     #$08
        .byte   $07
        ora     #$02
        clc
        cpy     #$AA
        .byte   $06
LCCFA:  ror     L0807
        ora     #$01
        php
        .byte   $04
        rol     L4F02
        rts

        adc     L2E60
        ora     (L006F,x)
        .byte   $02
        ora     (L004F,x)
        adc     L6070
        adc     (L006D),y
        rts

        rol     L6F01
        .byte   $02
        ora     (L004F,x)
        adc     L1860
        .byte   $80
        php
        asl     L0009
        .byte   $02
        .byte   $80
        brk
        adc     L6CA0
        brk
        .byte   $80
        tax
        ora     L0008,x
        sta     L064D
        .byte   $64
        .byte   $07
        ora     #$08
        .byte   $07
        clc
        cpy     #$AA
        asl     L006E
        .byte   $07
        php
        ora     #$01
        php
        .byte   $04
        brk
        bmi     LCD42
        .byte   $31
LCD42:  eor     (L0001),y
        sta     (L0000),y
        lda     L3400
        ora     (L0035,x)
        eor     L0001,x
        sta     L0000,x
        lda     (L0000),y
        .byte   $37
        ora     (L0038,x)
        cli
        ora     (L0098,x)
        brk
        sta     L0011,x
        ora     (L008C,x)
        .byte   $1B
        ldy     #$17
        .byte   $04
        php
        .byte   $04
        php
        asl     L006E
        .byte   $07
        asl     L0009
        .byte   $02
        php
        ora     (L0018,x)
        .byte   $80
        .byte   $02
        txa
        ror     a
        lda     (L00AF),y
        lda     LB2AC
        .byte   $07
        php
        clc
        cpy     #$12
        php
        sta     L087D
        .byte   $04
        ora     #$01
        rts

        adc     L0060
        .byte   $64
        adc     L0064
        .byte   $63
        adc     (L000E,x)
        ora     (L008D,x)
        eor     (L0065),y
        .byte   $63
        .byte   $64
        adc     L006A
        adc     #$68
LCD94:  adc     #$08
        asl     L0009
        ora     (L0060,x)
        .byte   $02
        txa
        txa
        sta     L0002
        txa
        ora     (L00AC,x)
        ora     (L006C,x)
        .byte   $80
        ror     a
        rts

        ldy     L0408
        brk
        adc     L6D6A
        .byte   $6F
        adc     L716F
        .byte   $6F
        adc     (L0071),y
        .byte   $74
        adc     L0009,x
        .byte   $02
        brk
        ror     L0035,x
        .byte   $34
        .byte   $33
        .byte   $32
        and     (L0000),y
        bmi     LCDF2
        rol     L2C2D
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
        asl     L006E
        .byte   $07
        php
        php
        .byte   $04
        ror     L0060
        ror     L0066
        ror     L0066
        rts

        adc     L0060
        adc     L0060
        adc     L0009
LCDF2:  ora     (L0008,x)
        asl     L0071
        .byte   $74
        rts

        ror     L0018,x
        .byte   $80
        .byte   $80
        brk
        adc     (L00A0),y
        .byte   $6F
        brk
LCE01:  .byte   $80
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
LCE11:  rts

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
        adc     (L0074),y
        rts

        ror     L0080,x
        brk
        ror     a
        ldy     #$6D
        brk
        .byte   $80
        .byte   $A7
        tax
        asl     L006E
        .byte   $07
        php
        php
        .byte   $04
        ror     L0060
        ror     L0066
        ror     L0066
        rts

        adc     L0060
        adc     L0060
        adc     L0008
        asl     L0071
        .byte   $74
        rts

        ror     L0080,x
        brk
        ror     a
        ldy     #$6D
        brk
        .byte   $80
        .byte   $A7
        asl     L0064
        .byte   $07
        ora     #$08
        .byte   $07
        ora     L0008,x
        stx     LAA67
        asl     L006E
        php
        .byte   $04
        .byte   $07
        php
        brk
        adc     (L0080,x)
        txa
        adc     (L0080,x)
        ror     a
        sta     L036A
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
        ora     (L008D,x)
        .byte   $4F
        ldy     #$17
        php
        .byte   $02
        ora     #$03
        asl     L0082
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

        ora     (L008A,x)
        .byte   $02
        ora     (L008A,x)
        sty     a:L008C
        .byte   $80
        jmp     (L6C00)

        rts

        jmp     (L0180)

        adc     L0012
        rti

        stx     L0199
        lda     L000E
        ora     (L008E,x)
        adc     (L0001),y
        sta     (L0090),y
        brk
        .byte   $80
        asl     L00C8
        ora     (L006D,x)
        brk
        ora     (L008D,x)
        brk
        adc     L6A80
        .byte   $80
        adc     L8080
        ora     (L006F,x)
        brk
        ora     (L00AF,x)
        .byte   $80
        adc     L7160
        sta     (L0060),y
        adc     (L0065),y
        rts

        ora     (L0065,x)
LCECD:  .byte   $01
LCECE:  lda     L0009
        .byte   $04
        asl     L006E
        .byte   $80
        sta     (L0000),y
        .byte   $80
        brk
        sty     L0000,x
        rts

        brk
        ldx     L0009,y
        .byte   $02
        asl     L0096
        ldx     L0009,y
        .byte   $03
        asl     L00C8
        brk
        stx     L0060
        stx     L0060
        .byte   $92
        ror     L0080
        adc     L0080
        adc     L0000
        .byte   $80
        brk
        sty     L0074,x
        .byte   $80
        ror     L0009,x
        .byte   $04
        asl     L006E
        brk
        .byte   $80
        sta     L8000,y
        brk
        tya
        brk
LCF04:  rts

        brk
        ldx     L0009,y
        .byte   $02
        .byte   $06
LCF0A:  stx     L00B6,y
        ora     #$03
        .byte   $06
LCF0F:  iny
        brk
        stx     L0060
        stx     L0060
        .byte   $92
        ror     L0080
        adc     L0080
        adc     L0000
        .byte   $80
        brk
        sty     L0074,x
        .byte   $80
        ror     L0009,x
        .byte   $04
        asl     L006E
        brk
        .byte   $80
        sta     (L0000),y
        .byte   $80
        brk
        sty     L0000,x
        rts

        brk
        ldx     L0009,y
        .byte   $02
        asl     L0096
        ldx     L0009,y
        .byte   $03
        asl     L00C8
        brk
        stx     L0060
        stx     L0060
        .byte   $92
        ror     L0080
        adc     L0080
        adc     L0000
        .byte   $80
        brk
        sty     L0074,x
        .byte   $80
        ror     L0009,x
        .byte   $04
        asl     L006E
        brk
        .byte   $80
        sta     L8000,y
        brk
        tya
        brk
        rts

        brk
        ldx     L0015,y
        brk
LCF5D:  .byte   $8F
        adc     L0209
        asl     L0096
        ldx     L0009,y
        .byte   $03
        brk
        ror     L0080
        .byte   $80
        brk
        stx     L0000
        ror     L0092
        ror     L0065
        .byte   $80
        .byte   $80
        brk
        sta     L0000
        adc     L0091
        adc     L0011
        ora     (L008E,x)
        .byte   $6F
        ldy     #$17
        php
        .byte   $03
        asl     L0064
        .byte   $07
        ora     #$04
        jsr     L2004
        .byte   $04
        jsr     L6065
        .byte   $6F
        adc     L6F60
        ror     a
        rts

        .byte   $6F
        adc     L6F60
        asl     L8F02
        adc     L6F85,y
        .byte   $80
        ror     a
        ror     a
        rts

        ror     a
        txa
        .byte   $6F
        .byte   $0F
        ora     (L008F,x)
        .byte   $77
        adc     L006F
        ror     a
        .byte   $80
        ror     a
        adc     L0060
        adc     L006A
        .byte   $80
        adc     L0060
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        adc     L0060
        adc     L006A
        .byte   $80
        .byte   $04
        jsr     L6065
        .byte   $6F
        adc     L6F60
        ror     a
        rts

        .byte   $6F
        adc     L6F60
        .byte   $0E
LCFCC:  ora     (L008F,x)
        lda     L8065
        .byte   $8F
        jmp     (L6068)

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        adc     L6D60
        asl     L00FF
        brk
        .byte   $8F
        asl     L0064
        brk
        adc     L0060
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        adc     L0080
        adc     L0065
        .byte   $80
        ror     a
        rts

        .byte   $6F
        adc     L6580
        .byte   $80
        .byte   $8F
        jmp     (L6068)

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        .byte   $6D
        rts

LD00A:  adc     LFF06
        brk
        .byte   $8F
        asl     L0064
        brk
        adc     L0060
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
LD01C:  rts

        adc     L0080
        .byte   $65
LD020:  adc     L0080
        ror     a
        rts

        .byte   $6F
        adc     L6580
        .byte   $80
        .byte   $8F
        jmp     (L6068)

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        adc     L6D60
        asl     L00FF
        brk
        .byte   $8F
        asl     L0064
        brk
        adc     L0060
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        adc     L0080
        adc     L0065
        .byte   $80
        ror     a
        rts

        .byte   $6F
        adc     L1580
        jsr     L7790
        adc     L0080
        .byte   $8F
        jmp     (L6068)

        .byte   $6F
        jmp     (L6860)

        brk
        ldy     #$00
        adc     L6D60
        asl     L00FF
        brk
        .byte   $8F
        asl     L0064
        brk
        adc     L0060
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        .byte   $6F
        ror     a
        rts

        adc     L0080
        adc     L0065
        .byte   $80
        ror     a
        rts

        .byte   $6F
        .byte   $6D
LD082:  .byte   $80
        ora     (L0001),y
        .byte   $8F
        adc     L0085,x
        .byte   $6F
        sty     L806D
        pla
        brk
        .byte   $80
        ldx     L00A0
        .byte   $17
        brk
        bcc     LD020
        bcc     LD082
        sta     (L004F),y
        sta     (L008A),y
        ora     L0001
        .byte   $33
        .byte   $04
        plp
        asl     L0064
        .byte   $07
        php
        php
        php
        ora     #$02
        clc
        rti

        sta     L8965
        ror     a
        .byte   $80
        adc     L0083
        adc     (L0064,x)
        .byte   $80
        .byte   $64
        .byte   $80
        sty     L0063
        .byte   $03
        tya
        adc     L0096,x
        adc     L039D,y
        .byte   $6C
LD0C0:  .byte   $89
        adc     L0083
        adc     (L0083,x)
        adc     (L0083,x)
        ora     (L0065,x)
        brk
        ora     (L00A5,x)
        brk
        .byte   $8D
        .byte   $65
LD0CF:  .byte   $89
        ror     a
        .byte   $80
        adc     L0083
        adc     (L0064,x)
        .byte   $80
        .byte   $64
        .byte   $80
        sty     L0063
        .byte   $03
        tya
        adc     L009B,x
        adc     (L0095),y
        ror     L0009,x
        ora     (L0006,x)
        iny
        brk
        .byte   $80
        brk
        .byte   $03
        sta     (L0001),y
        .byte   $72
        brk
        ora     (L0092,x)
        brk
        sta     L0001,x
        ror     L0000,x
        ora     (L00B6,x)
        asl     L0090,x
        stx     L0417
        plp
        asl     L0064
        .byte   $07
        php
        php
        php
        ora     #$01
        clc
        .byte   $80
        eor     L0001,x
        lsr     L0001,x
        ror     L006C,x
        .byte   $8B
        ror     a
        .byte   $80
        adc     (L0083,x)
        .byte   $64
        .byte   $80
        .byte   $03
        .byte   $74
        stx     L0077,y
        .byte   $80
        .byte   $77
        stx     L007D,y
        .byte   $80
        ror     L0099,x
        .byte   $7D
        .byte   $80
LD121:  adc     $7C9B,y
        .byte   $80
        .byte   $74
        sta     L0078,x
        .byte   $80
        sei
        .byte   $9B
        adc     L5503,x
        ora     (L0056,x)
        ora     (L0076,x)
        jmp     (L6A8B)

        .byte   $80
        adc     (L0083,x)
        .byte   $64
        .byte   $80
        .byte   $03
        .byte   $74
        stx     L0077,y
        .byte   $80
        sei
        stx     L0071,y
        .byte   $80
        adc     (L009B),y
        adc     L8000,y
        asl     L00C8
        .byte   $07
        .byte   $07
        brk
        .byte   $9F
        ora     (L0003,x)
        pla
        brk
        ora     (L0088,x)
        brk
        .byte   $8F
        ora     (L006E,x)
LD158:  brk
        ora     (L00AE,x)
        asl     L0090,x
        .byte   $EB
        .byte   $17
        .byte   $04
        brk
        asl     L00C8
        php
        php
        ora     #$02
        stx     L0095,y
        sty     L0092,x
        sta     (L0093),y
        sta     L0098,x
        brk
        adc     L7D60,x
        brk
        sta     L0092,x
        sty     L0095,x
        stx     L0098,y
        sta     (L0096),y
        .byte   $9B
        txs
        sta     L9596,y
        sty     L0091,x
        stx     L0095,y
        brk
        sta     (L006F),y
        stx     L0001,y
        .byte   $77
        ora     (L0097,x)
        bvs     LD121
        ora     (L0071,x)
        ora     (L0091,x)
        .byte   $74
        txs
        adc     (L0016),y
        sta     (L004F),y
        .byte   $17
        .byte   $17
        brk
        sta     (L0094),y
        sta     (L00C6),y
        sta     (L00F5),y
        .byte   $92
        .byte   $22
        ora     L0001
        sty     L9606
        .byte   $07
        php
        php
        php
        ora     #$02
        clc
        rti

        brk
        sta     L9979,y
        brk
        sta     L7D00,x
        sta     L9E00,x
        brk
        ror     a:L009E,x
        .byte   $03
        dey
        brk
        ror     a
        sty     L806D
        bvs     LD158
        adc     L6D8F
        txa
        pla
        .byte   $6D
LD1CF:  .byte   $80
LD1D0:  sta     L3206
        brk
        lda     L0617
        stx     L0007,y
        php
        php
        php
        ora     #$02
        clc
        rti

        brk
        sty     L0074,x
        sty     L0000,x
        sty     L0000,x
        .byte   $74
        sty     L0000,x
        sta     L7900,y
        sta     L9B00,y
        brk
        adc     L7D9E,y
        .byte   $80
        .byte   $03
        pla
        stx     L0065
        stx     L0065
        .byte   $83
        adc     (L0068,x)
        .byte   $80
        stx     L0006
        .byte   $32
        brk
        lda     L0017
        asl     L00C8
        php
        php
        ora     #$02
        brk
        sta     L9979,y
        brk
        .byte   $97
        brk
        .byte   $77
        .byte   $97
        brk
        stx     L0000,y
        ror     L0096,x
        brk
        sty     L0000,x
        .byte   $72
        sta     (L006D),y
        .byte   $80
        brk
        ora     (L0092,x)
        brk
        ora     (L0072,x)
        brk
        sty     L0094,x
        brk
        adc     (L0080),y
        .byte   $8F
        asl     L0050
        brk
        lda     L0617
        stx     L0008,y
        ora     #$07
        php
        .byte   $04
        jsr     L6F85
        ror     a
        rts

        .byte   $6F
        .byte   $80
        adc     L006A
        rts

        .byte   $6F
        asl     L9201
        plp
        brk
        ldy     #$00
        txa
        ror     a
        txa
        ror     a
        sta     L006A
        .byte   $8F
        adc     L0000
        ldy     #$17
        brk
        .byte   $92
        .byte   $4F
        .byte   $92
        sta     L0092
        ldx     LDF92
        .byte   $04
        plp
        ora     L0001
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
        adc     L708F
        .byte   $8F
        adc     L6A80
        sta     L886A
        ora     (L006A,x)
        brk
        ora     (L00AA,x)
        brk
        txa
        adc     L708F
        .byte   $8F
        adc     L6A80
        sty     L0070,x
        .byte   $8F
        adc     L018F
        adc     L0100
        sta     L9216
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
        asl     L9205
        .byte   $8F
        .byte   $80
        adc     L6A8C
        .byte   $04
        jsr     L0380
        pla
        asl     L9203
        .byte   $9C
        brk
        .byte   $87
        txa
        dey
        .byte   $87
        asl     L0092,x
        sta     L0017
        asl     L00C8
        php
        php
        ora     #$02
        .byte   $04
        jsr     L806A
        ror     L0080,x
        txa
        ror     a
        ror     L0080,x
        txa
        ror     a
        ror     L0060,x
LD2D2:  ror     a
        .byte   $80
        ror     a
        ror     L0080,x
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
        asl     L0092,x
        ldy     L0016,x
        .byte   $92
        ldy     L0017,x
        .byte   $17
        brk
        .byte   $92
        sbc     #$93
        sbc     L0094,x
        sbc     LCA95,x
        ora     L0001
        adc     #$06
        stx     L0007,y
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
        ora     (L006F,x)
        brk
        ora     (L008F,x)
        brk
        .byte   $74
        .byte   $80
        .byte   $92
        brk
        .byte   $8F
        brk
        .byte   $72
        sty     L0001,x
        adc     L0001,x
        sta     L0075,x
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
        ora     (L0074,x)
        brk
        ora     (L0094,x)
        .byte   $04
        brk
        .byte   $BB
        brk
        ora     (L00BE,x)
        ora     (L007E,x)
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
        sta     (L006D),y
        .byte   $80
        brk
        ora     (L00AA,x)
        brk
        ora     (L006A,x)
        brk
        .byte   $A3
        brk
        ora     (L00A6,x)
        ora     (L0066,x)
        pla
        .byte   $02
        brk
        ldy     #$00
        stx     L0068
        .byte   $89
        pla
        ror     L0080
        .byte   $63
        .byte   $80
        sta     (L0000,x)
        ora     (L00C3,x)
        brk
        ora     (L0063,x)
        brk
        tax
        brk
        ora     (L00AD,x)
        ora     (L006D,x)
        .byte   $6F
        .byte   $02
        brk
        ldy     #$00
        sta     L726F
        .byte   $80
        adc     (L0080),y
        .byte   $6F
        .byte   $80
        adc     L8F80
        ror     L0080,x
        ora     (L0076,x)
        ora     (L0096,x)
        ora     (L006E,x)
        brk
        ora     (L008E,x)
        brk
        ror     L0080,x
        ror     L0080,x
        ror     L0080,x
        ror     L0080,x
        sty     L0074,x
        .byte   $80
        brk
        ora     (L00AF,x)
        brk
        ora     (L006F,x)
        brk
        stx     L8F8A
        txa
        bcc     LD3A7
LD3A7:  txa
        brk
        sta     (L0000),y
        ror     L0094,x
        adc     (L0004),y
        jsr     L0380
        .byte   $6F
        adc     L6F80
        .byte   $80
        adc     L6F80
        ldy     #$00
        ora     (L00B2,x)
        brk
        ora     (L0072,x)
        .byte   $80
        .byte   $34
        ora     (L0035,x)
        ora     (L0055,x)
        sty     L0072,x
        sty     L006F,x
        .byte   $80
        .byte   $6F
        eor     (L0000),y
        .byte   $72
        brk
        .byte   $6F
        sta     L0100
        .byte   $AF
        brk
        ora     (L006F,x)
        asl     L9301
        .byte   $9E
        .byte   $72
        .byte   $80
        .byte   $72
        .byte   $80
        .byte   $92
        .byte   $72
        .byte   $80
        adc     (L0080),y
        ror     a
        stx     L9476
        .byte   $72
        sta     (L006E),y
        .byte   $72
        .byte   $80
        .byte   $72
        .byte   $80
        .byte   $92
        .byte   $72
        .byte   $80
        .byte   $71
LD3F5:  .byte   $80
        and     L0001,x
        rol     L0001,x
        lsr     L0095,x
        .byte   $6F
        sty     L0072,x
        .byte   $8F
        adc     L9316
        jsr     L0617
        stx     L0007,y
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
        ora     (L006A,x)
        brk
        ora     (L008A,x)
        brk
        ror     a
        .byte   $80
        txa
        ora     (L006A,x)
        ora     (L008A,x)
        .byte   $6F
        sta     (L0001),y
        .byte   $72
        ora     (L0092,x)
        .byte   $72
LD427:  adc     (L0080),y
LD429:  .byte   $6F
        .byte   $80
        adc     L8A80
        ror     L0088
        ora     (L006A,x)
        ora     (L008A,x)
        ora     (L0071,x)
        brk
        ora     (L0091,x)
        .byte   $04
        brk
        .byte   $0C
        brk
        php
        php
        ldx     L0000,y
        ora     (L00B9,x)
        ora     (L0079,x)
        .byte   $7B
        brk
        ldy     #$00
        ror     L7980,x
        .byte   $80
        .byte   $7B
        .byte   $80
        adc     L7E80,y
        .byte   $80
        sta     L6803,y
        .byte   $80
        pla
        adc     (L0080,x)
        adc     L0080
        adc     (L0080,x)
        brk
        .byte   $03
        ldx     L0000,y
        ora     (L00B9,x)
        ora     (L0079,x)
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
        sta     (L0063,x)
        .byte   $80
        .byte   $63
        adc     (L0080,x)
        ror     L0080
        adc     (L0080,x)
        brk
        .byte   $A3
        brk
        ora     (L00A6,x)
        ora     (L0066,x)
        pla
        brk
        ldy     #$00
        ror     L0080
        adc     (L0080,x)
        .byte   $63
        .byte   $80
        adc     (L0080,x)
        pla
        .byte   $80
        sta     (L0063,x)
        .byte   $80
        .byte   $63
        adc     (L0080,x)
        sta     (L0001),y
        ror     a
        brk
        ora     (L008A,x)
        brk
        adc     (L0080),y
        adc     (L0080),y
        bvs     LD427
        bvs     LD429
        .byte   $8F
        .byte   $6F
        .byte   $80
        brk
        ora     (L00AC,x)
        brk
        ora     (L006C,x)
        brk
        tay
        .byte   $A7
        brk
        ora     (L00A6,x)
        ora     (L0066,x)
        brk
        ora     (L00A5,x)
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
        ora     (L00AD,x)
        brk
        ora     (L006D,x)
        brk
        .byte   $A3
        ldx     L00A8
        .byte   $A3
        asl     L9401
        bcs     LD4E5
        ora     (L0000,x)
        .byte   $6F
        .byte   $80
        .byte   $6F
        .byte   $80
        .byte   $8F
        .byte   $6F
LD4E5:  .byte   $80
        ror     L0C80
        .byte   $02
        ror     a
        stx     L9476
        .byte   $72
        sta     (L006E),y
        .byte   $0C
        brk
        .byte   $6F
        .byte   $80
        .byte   $6F
        .byte   $80
        .byte   $8F
        .byte   $6F
        .byte   $80
        ror     L0C80
        .byte   $02
        and     L0001,x
        rol     L0001,x
        lsr     L0095,x
        .byte   $6F
        sty     L0072,x
        .byte   $8F
        adc     L9416
        and     #$17
        asl     L0064
LD50F:  php
        php
        ora     #$02
        .byte   $9B
        .byte   $9B
        .byte   $9B
        .byte   $9B
        sta     L9999,y
        sta     L9898,y
        tya
        tya
        .byte   $97
        .byte   $97
        asl     L00C8
        brk
        .byte   $97
        ora     (L0079,x)
        brk
        ora     (L0099,x)
        .byte   $04
        brk
        .byte   $04
        brk
        ora     #$01
        .byte   $BB
        brk
        ora     (L00B9,x)
        ora     (L0079,x)
        sei
        ora     #$02
        .byte   $97
        sei
        .byte   $97
        sei
        ldy     #$60
        .byte   $72
        brk
        sty     L0000,x
        .byte   $92
        .byte   $74
        .byte   $80
        .byte   $72
        sty     L0075,x
        ror     L0080,x
        adc     L0080,x
        .byte   $12
        jsr     L6995
        stx     L00B9,y
        ora     #$01
        brk
        .byte   $BB
        brk
        ora     (L00B9,x)
        ora     (L0079,x)
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
        adc     L0080,x
        adc     L0080,x
        brk
        .byte   $9B
        brk
        sta     L007B,y
        ldy     #$0E
        ora     (L0095,x)
        .byte   $1C
        sta     (L00B6),y
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
        ora     (L00B8,x)
        brk
        .byte   $01
LD58B:  sei
        txa
        ror     L008A,x
        brk
        txa
        brk
        ror     L008A,x
        brk
        txa
        brk
        ror     L008A,x
        brk
        txa
        brk
        ror     L0098,x
        .byte   $7A
        .byte   $04
        jsr     L6F8F
        brk
        .byte   $92
        sty     L0095,x
        sty     L0092,x
        .byte   $8F
        sta     a:L0094
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
        sty     L0000,x
        .byte   $03
        dey
LD5BB:  .byte   $03
        .byte   $74
        .byte   $80
        .byte   $74
        brk
        .byte   $03
        dey
        asl     L9501
        .byte   $8F
        .byte   $04
        jsr     L8075
        adc     L0080,x
        sta     L0075,x
        .byte   $80
        ror     L0000,x
        cpy     #$0E
        ora     (L0095,x)
        ldx     L0016,y
        sta     L001A,x
        .byte   $17
        asl     L0064
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     L008A
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
        sta     L0000
        adc     L0000
        txa
        asl     L9501
        bne     LD5FC
LD5FC:  sta     L0000
        ora     (L006D,x)
        brk
        ora     (L008D,x)
        .byte   $04
        jsr     L6406
        .byte   $04
        jsr     L6F85
        txa
        .byte   $6F
        sta     L0065
        txa
        .byte   $6F
        sta     L006F
        txa
        brk
        sta     L0000
        adc     L008A
        .byte   $6F
        asl     L9505
        .byte   $F7
        brk
        txa
        txa
LD621:  txa
        txa
        brk
        sta     L006D
        txa
        ora     (L0068,x)
        brk
        ora     (L0088,x)
        brk
        ror     a
        ror     a
        ror     a
        brk
        sta     L008A
        brk
        sta     L0065
        brk
        txa
        brk
        sta     L0065
        txa
        brk
        sta     L0000
        adc     L0000
        txa
        .byte   $04
        brk
        asl     L00C8
        sty     L6406
        brk
        ror     a
        rts

        ror     a
        asl     L960F
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
        ora     (L0096,x)
        eor     (L0000,x)
        ldy     #$00
        ror     a
        rts

        ror     a
        asl     L00C8
        brk
LD66D:  sty     L9516
        .byte   $F3
        .byte   $17
        brk
        stx     L006B,y
        .byte   $97
        and     LDC97
        tya
        jmp     L0105

        .byte   $3B
        php
        .byte   $12
        asl     L0064
        .byte   $07
        ora     #$0A
        .byte   $03
        clc
        .byte   $80
        ora     #$01
        brk
        .byte   $03
        stx     L0072,y
        .byte   $8F
        brk
        sta     L0000,x
        adc     (L008E),y
        brk
        sty     L0000,x
        ror     L7491
        php
        php
        .byte   $97
        ora     (L0076,x)
        brk
        ora     (L0096,x)
        .byte   $04
        jsr     L6406
        clc
        .byte   $80
        .byte   $07
        php
        .byte   $04
        jsr     L0380
        .byte   $6F
        sta     (L0072),y
        sta     (L006D),y
        .byte   $80
        ror     a
        .byte   $55
LD6B6:  ora     (L0056,x)
        ora     (L0076,x)
        .byte   $72
        sty     L0000,x
        stx     L0000,y
        .byte   $74
        .byte   $92
        adc     (L0080),y
        .byte   $12
        plp
        stx     L00CC,y
        .byte   $6F
        sta     (L0072),y
        sta     (L006D),y
        .byte   $80
        ror     a
        lsr     L804F
        lsr     L804F
        .byte   $92
        adc     (L008F),y
        .byte   $6F
        asl     L9601
        txs
        .byte   $6F
        sta     (L0072),y
        sty     L0071,x
        sta     L866B
        .byte   $6B
        .byte   $8F
        .byte   $72
        sta     (L0076),y
        .byte   $80
        ror     L0004,x
        jsr     L4018
        php
        asl     a
        asl     L0096
        .byte   $07
        ora     #$80
        .byte   $03
        .byte   $72
        .byte   $97
        .byte   $72
        sta     (L0072),y
        .byte   $80
        .byte   $72
        .byte   $97
        .byte   $72
        sta     (L0000),y
        .byte   $92
        .byte   $12
        php
        .byte   $97
        .byte   $12
        brk
        .byte   $77
        stx     L0074,y
        brk
        .byte   $92
        brk
        sta     (L006F),y
        .byte   $80
        php
        .byte   $12
        ror     L008A
        ror     L7291
        sta     (L0072),y
        sta     (L006A),y
        stx     L0065
        asl     L9601
        .byte   $DB
        brk
        .byte   $6F
        sta     (L0072),y
        php
        .byte   $12
        stx     L0074,y
        sta     (L006E),y
        dey
        adc     L0080
        adc     L0008
        php
        .byte   $07
        php
        stx     L908F
        brk
        lda     (L0016),y
        stx     L0092,y
        .byte   $17
        php
        .byte   $07
        asl     L0096
        .byte   $07
        .byte   $07
        clc
        rti

        ora     #$01
        brk
        .byte   $03
        txa
        ror     L0083
        brk
        .byte   $89
        brk
        adc     L0082
        brk
        dey
        brk
        .byte   $62
        sta     L0068
        dey
        ora     (L0065,x)
        brk
        ora     (L0085,x)
        .byte   $04
        brk
        .byte   $04
        brk
        php
        .byte   $07
        .byte   $07
        asl     L0018
        rti

        asl     L0096
        .byte   $9B
        sta     L9B9E,x
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
        asl     L0060
        .byte   $82
        brk
        .byte   $03
        stx     L0000,y
        adc     L7A9B,x
        .byte   $12
        jsr     L8A97
        brk
        .byte   $9B
        sta     L9B9E,x
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
        asl     L9701
        .byte   $4F
        asl     L00C8
        .byte   $07
        asl     L0000
        .byte   $03
        tax
        dey
        .byte   $83
        .byte   $83
        stx     L0000
        .byte   $89
        ora     (L0065,x)
        brk
        ora     (L0085,x)
        .byte   $04
        jsr     L2004
        php
        asl     L8018
        .byte   $07
        php
        .byte   $9E
        .byte   $7B
        .byte   $03
        .byte   $8B
        .byte   $63
        sta     L8063
        .byte   $63
        asl     L9701
        .byte   $9E
        .byte   $13
        plp
        .byte   $97
        .byte   $CB
        stx     L006A,y
        sty     L006A,x
        .byte   $92
        ror     a
        .byte   $80
        ror     a
        .byte   $8F
        ror     a
        sta     (L006A),y
        .byte   $92
        ror     a
        .byte   $80
        adc     L000F
        ora     (L0097,x)
        .byte   $9C
        txa
        ror     L0088
        adc     L0086
        .byte   $63
        sta     L0062
        .byte   $8B
        sty     a:L008D
        ldx     L9716
        eor     L0617
        iny
        php
        php
        ora     #$02
        .byte   $8F
        .byte   $92
        sta     L0096,x
        sta     (L0094),y
        brk
        .byte   $93
        ora     (L007A,x)
        brk
        ora     (L009A,x)
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $8F
        sta     L8A8B
        brk
        pla
        rts

        pla
        brk
        .byte   $89
        txa
        sta     (L000E),y
        .byte   $02
        .byte   $97
        sbc     (L008F),y
        sta     L0097,y
        stx     L0074,y
        brk
        .byte   $8B
        sta     L0094,x
        stx     a:L0004
LD820:  asl     L007D
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
        asl     L9801
        asl     LFF06
        txs
        stx     L008E,y
        sty     L0006,x
        iny
        brk
        .byte   $97
        tya
        sta     LBA00,y
        asl     L0097,x
        .byte   $EF
        .byte   $17
        asl     L0064
        .byte   $07
        php
        php
        ora     #$8A
        .byte   $02
        ldy     #$00
        txa
        adc     L006D
        ror     a
        ror     L008D
        ora     (L006D,x)
        brk
        ora     (L008D,x)
        .byte   $04
        jsr     L2004
        sta     L856A
        ror     a
        sta     L006A
        sta     L6C6C
        rts

        jmp     (L6C8D)

        jmp     (L6C60)

        .byte   $8D
        .byte   $6C
LD887:  asl     L9803
        .byte   $63
        .byte   $04
        jsr     L6D85
        txa
        adc     L6580
        txa
        adc     L050E
        tya
        .byte   $7B
        sta     L006D
        ror     a
        .byte   $80
        sta     L0065
        ror     a
        rts

        adc     L008A
        txa
        txa
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        ror     a
        asl     L0098,x
        adc     (L0017,x)
        brk
        tya
        tay
        sta     L9A83,y
        .byte   $93
        .byte   $9B
        and     #$05
        ora     (L0033,x)
LD8BB:  .byte   $04
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
        ora     (L0086,x)
        brk
LD8D6:  ora     (L0086,x)
        .byte   $63
        brk
        ldy     #$0E
        ora     (L0098,x)
        .byte   $B7
        .byte   $04
        plp
        asl     L0064
        php
        php
        rol     L2F01
        .byte   $4F
        ora     (L008F,x)
        txa
        pla
        txa
        .byte   $63
        .byte   $80
        .byte   $63
        ror     L0068
        adc     #$88
        ror     L0088
        .byte   $63
        stx     L0068
        ror     a
        .byte   $80
        adc     a:L0080
        .byte   $01
LD900:  .byte   $8F
        brk
        ora     (L008F,x)
        adc     L6A8F
        .byte   $89
        ora     (L0068,x)
        brk
        ora     (L00A8,x)
        brk
        rol     L2F01
        .byte   $4F
        ora     (L008F,x)
        txa
        pla
        txa
LD917:  .byte   $63
        .byte   $80
        .byte   $63
        adc     #$68
        ror     L0088
        ora     (L0069,x)
        brk
        ora     (L0089,x)
        brk
        txa
        adc     L806F
        .byte   $72
        .byte   $80
        sta     L0074,x
        .byte   $92
        .byte   $12
        plp
        sta     L012A,y
        .byte   $6F
        brk
        ora     (L00CF,x)
        asl     L9801
        .byte   $CF
        asl     L00C8
        brk
        .byte   $8F
        brk
        adc     L6D8F
        asl     L0064
        .byte   $8F
        ora     (L0074,x)
        brk
        ora     (L0094,x)
        .byte   $04
        jsr     L0380
        adc     (L0000),y
        .byte   $80
        brk
        adc     (L0080),y
        .byte   $6F
        .byte   $80
        adc     (L0080),y
        .byte   $8F
        ora     (L0071,x)
        brk
        ora     (L00B1,x)
        .byte   $12
        php
        sta     L006C,y
        .byte   $2F
        ora     (L0030,x)
        bvc     LD969
        .byte   $70
LD969:  .byte   $6F
        sta     L8D6A
        adc     L6A80
        sta     L806F
        ora     (L006D,x)
        brk
        ora     (L00AD,x)
        asl     L9901
        .byte   $3A
        brk
        txa
        adc     L708F
        .byte   $80
        .byte   $6F
        sta     L8075
        bvs     LD917
        adc     L018F
        adc     (L0000),y
        ora     (L0091,x)
        asl     L0098,x
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
        ora     (L009B,x)
        brk
        ora     (L009B,x)
        ror     L0000,x
        ldy     #$0E
        ora     (L0099,x)
        .byte   $8F
        php
        ora     L8018
        asl     L0096
        .byte   $03
        .byte   $AF
        .byte   $B2
        ora     (L0094,x)
        brk
        ora     (L0094,x)
        ora     (L0075,x)
        brk
        ora     (L00B5,x)
        .byte   $AF
        .byte   $B2
        ora     (L0094,x)
        brk
        ora     (L0094,x)
        ora     (L006E,x)
        brk
        ora     (L00AE,x)
        .byte   $AF
        .byte   $B2
LD9D9:  ora     (L0094,x)
        brk
        ora     (L0094,x)
        ora     (L0075,x)
        brk
        ora     (L00B5,x)
        .byte   $AF
        lda     L0001,x
        sty     L0000,x
        ora     (L0094,x)
        ora     (L006F,x)
        brk
        ora     (L00AF,x)
        php
        php
        clc
        rti

        asl     L0064
        brk
        and     #$01
        rol     a
        lsr     a
        txa
        ora     (L006A,x)
        rts

        .byte   $63
        .byte   $80
LDA00:  .byte   $03
        .byte   $76
LDA02:  .byte   $80
        ror     L007B,x
        adc     L9D7E,x
        .byte   $7B
        sta     L8076,x
        ror     L0080,x
        .byte   $7B
        .byte   $80
        .byte   $7B
        .byte   $80
        .byte   $7F
        .byte   $9E
        adc     L7B9E,x
        txs
        ora     (L0079,x)
        brk
        ora     (L00B9,x)
        brk
        .byte   $03
LDA1F:  and     #$01
        rol     a
        lsr     a
        txa
        .byte   $01
LDA25:  ror     a
        rts

        .byte   $63
        .byte   $80
        .byte   $03
        ror     L0080,x
        ror     L007E,x
        adc     L9D7B,x
        ora     (L007E,x)
        brk
        ora     (L009E,x)
        brk
        .byte   $9B
        adc     L807E,x
        .byte   $03
        ror     a
        .byte   $80
        sta     L886C
        ora     (L006A,x)
        brk
        tax
        brk
        ora     (L008A,x)
        ora     (L006B,x)
        brk
        ora     (L008B,x)
        brk
        .byte   $80
        ror     L0000
        .byte   $80
        brk
        ror     L0080
        ror     L0080
        ror     L0060
        ror     L0086
        ora     (L0066,x)
        brk
        ora     (L00A6,x)
        php
        ora     L9606
        clc
        .byte   $80
        sta     (L0084,x)
        .byte   $87
        dey
        sty     L0083
        sta     (L0003,x)
        stx     L0006,y
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
        ora     (L006A,x)
        brk
        ora     (L00AA,x)
        .byte   $0C
        .byte   $02
        brk
        txa
        adc     L708F
        .byte   $80
        .byte   $6F
        sta     L8075
        bvs     LDA25
        adc     L0C8F
        brk
        ora     (L0066,x)
        brk
        ora     (L0086,x)
        asl     L0099,x
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
        asl     L9A01
        .byte   $9B
        .byte   $93
        .byte   $72
        sta     (L0070),y
        .byte   $04
        brk
        .byte   $8F
        .byte   $92
        sta     (L0090),y
        .byte   $8F
        sty     L8E8D
        .byte   $8F
        sta     L0096,x
        sta     L9698,y
        sta     L0000,x
        stx     L007B,y
        .byte   $80
        .byte   $7B
        brk
        .byte   $8F
LDAE1:  .byte   $95
LDAE2:  sty     L0092,x
        .byte   $8F
        .byte   $8D
LDAE6:  .byte   $8F
        .byte   $92
        sta     L0094,x
        .byte   $12
LDAEB:  brk
        txs
        .byte   $E7
        sta     L0092,x
LDAF0:  sta     (L0090),y
        .byte   $8F
        asl     L9A01
        lda     L9500,y
        ora     (L0097,x)
        brk
        ora     (L00B7,x)
        brk
        rts

        ora     (L0079,x)
LDB02:  brk
LDB03:  ora     (L0099,x)
        .byte   $04
        brk
        dey
        sty     L000E,x
        .byte   $03
        txs
        sbc     L0004,x
        brk
        txa
        stx     L000E,y
        .byte   $03
        txs
        sbc     a:L0004,x
        stx     L0092
        asl     L9B03
        ora     L0001
        stx     L0000,y
        ora     (L0096,x)
        ora     (L0074,x)
        brk
        sty     L0000,x
        ora     (L0094,x)
        ora     (L0072,x)
        brk
        .byte   $B2
        brk
        ora     (L0092,x)
        ora     (L0074,x)
        brk
        ora     (L0094,x)
        asl     L009A,x
        .byte   $93
        .byte   $17
        .byte   $04
        brk
        .byte   $07
        php
        php
        ora     #$04
        brk
        asl     L00C8
        sta     L6406
        brk
        jmp     (L6C60)

        asl     L9B17
        .byte   $2F
        .byte   $04
        jsr     L6D85
        txa
        adc     L6A80
        sta     L2012
        .byte   $9B
        bvc     LDBC6
        asl     L9B06
        rol     L6501,x
        brk
        ora     (L0085,x)
        sta     L0000
        adc     L0060
        ora     (L006F,x)
        brk
        ora     (L008F,x)
        .byte   $04
        jsr     L6D85
        txa
        adc     L6A80
        sta     L0E6A
        ora     L009B
        lsr     L606D,x
        ror     a
        pla
        rts

        adc     L6A80
        pla
        rts

        adc     LA000
        brk
        ror     a
        rts

        ora     (L006D,x)
        brk
        ora     (L008D,x)
        asl     L009B,x
        and     #$17
        brk
        .byte   $9B
        stx     L999C
        sta     L9E91,x
        .byte   $74
        ora     L0001
        ldx     L0004,y
        brk
        asl     L0096
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

        ror     L0002,x
        .byte   $80
        .byte   $72
        .byte   $72
        rts

        ror     L00A0,x
        .byte   $02
        stx     L8F02
        bcc     LDC32
        rts

        ror     L6A60
        .byte   $02
LDBC6:  dey
        .byte   $12
        php
        .byte   $9B
        cmp     L0080,x
        .byte   $72
        rts

        ror     L0002,x
        .byte   $80
        .byte   $72
        .byte   $72
        rts

        ror     L00A0,x
        adc     (L0060),y
        .byte   $6F
        rts

LDBDA:  ror     L606F
        ora     (L0071,x)
        ora     (L00D1,x)
        asl     L9B01
        sta     L7680,x
        rts

        .byte   $72
        .byte   $02
        .byte   $80
        .byte   $74
        .byte   $74
        rts

        adc     (L00A0),y
        .byte   $02
        .byte   $8F
        .byte   $02
        sta     (L008F),y
        dec     a:L0004
        clc
        rti

        .byte   $80
        .byte   $03
        .byte   $8B
        .byte   $8D
LDBFE:  .byte   $8B
        ror     a
        rts

        pla
LDC02:  ora     (L006A,x)
        ora     (L00AA,x)
        .byte   $AF
        .byte   $02
        sta     (L0008),y
        .byte   $04
        .byte   $72
        rts

        php
        php
        .byte   $34
        .byte   $02
        ora     (L0055,x)
        ora     (L0095,x)
        php
        .byte   $04
        asl     L0064
        .byte   $74
        rts

        .byte   $6F
        rts

        asl     L0096
        php
        php
        .byte   $80
        .byte   $8B
        sta     L6A8B
        rts

        pla
        ora     (L006A,x)
        ora     (L00AA,x)
        .byte   $72
        rts

        .byte   $72
        rts

        adc     (L0071),y
LDC32:  rts

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
        eor     L0074,x
        .byte   $72
        .byte   $74
        .byte   $72
        .byte   $6F
        adc     L010E
        .byte   $9B
        inc     L0009
        .byte   $02
        .byte   $63
        ror     L0068
        adc     #$6A
        adc     L046F
        php
        .byte   $72
        rts

        adc     (L0060),y
        .byte   $6F
        adc     (L0060),y
        ora     (L0072,x)
        ora     (L00D2,x)
        adc     (L0060),y
        .byte   $6F
        rts

        adc     L606F
        ora     (L0071,x)
        ora     (L00D1,x)
        clc
        rti

        .byte   $12
        php
        .byte   $9C
        .byte   $7B
        .byte   $80
        ror     L0060
        ror     a
        .byte   $02
        .byte   $80
        ror     L0066
        rts

        ror     a
        ldy     #$66
        rts

        ror     L0060
        ror     a
        rts

        ror     L0060
        ror     L0066
        rts

        ror     a
        ldy     #$0E
        ora     (L009C,x)
        eor     (L0080,x)
        .byte   $6F
        rts

        .byte   $72
        rts

        .byte   $74
        rts

        .byte   $02
        sta     L0002,x
        sty     L0092,x
LDC97:  .byte   $74
        rts

        .byte   $72
        rts

        .byte   $6F
        adc     L6F60
        .byte   $03
        .byte   $74
        rts

        .byte   $02
        .byte   $03
        .byte   $AB
        asl     L009B,x
        sta     (L0017),y
        .byte   $04
        brk
        asl     L0096
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
LDCBD:  .byte   $80
        .byte   $6F
        .byte   $6F
        rts

        .byte   $72
        ldy     #$12
        php
        .byte   $9C
        .byte   $C3
        dey
        sta     L0086
        .byte   $87
        pla
        .byte   $02
        .byte   $80
        ldy     #$0E
        ora     (L009C,x)
        lda     L0088
        stx     L0065
        .byte   $83
        .byte   $82
        .byte   $03
        .byte   $96
LDCDA:  .byte   $74
        sta     (L008E),y
        .byte   $80
        .byte   $03
        .byte   $6F
        rts

        .byte   $72
LDCE2:  .byte   $02
        .byte   $80
        .byte   $6F
        .byte   $6F
        rts

LDCE7:  .byte   $72
        ldy     #$12
        php
        sta     L8831,x
LDCEE:  sta     L0086
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
        adc     (L0071),y
        rts

LDCFE:  adc     L02A0
        .byte   $8B
LDD02:  .byte   $02
        sta     LCA8B
        .byte   $04
        brk
        .byte   $74
        .byte   $7B
        adc     L607B,y
        adc     L7A60,y
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
        adc     L08C0
        php
        .byte   $03
        .byte   $74
        .byte   $7B
        adc     L607B,y
        adc     L7A60,y
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

        adc     L606D
        .byte   $6F
        cpy     #$0E
        ora     (L009C,x)
        inc     L0004,x
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
        adc     (L0060),y
        .byte   $6B
        .byte   $6F
        .byte   $6B
        adc     L746D
        adc     L746D
        rts

LDD5A:  adc     L6074
        adc     L6072
        adc     L6D71
        .byte   $12
        php
        sta     L8073,x
        .byte   $6F
        rts

LDD6A:  .byte   $72
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
        ora     (L009D,x)
        and     (L000C),y
LDD84:  .byte   $02
        .byte   $80
        .byte   $6F
        rts

        .byte   $72
        rts

        .byte   $74
        rts

        .byte   $02
        sta     L0002,x
        sty     L0092,x
        .byte   $74
        rts

        .byte   $72
        rts

        .byte   $6F
        adc     L6F60
        pla
        rts

        .byte   $02
        ldy     L9C16
        sta     L0417,y
        brk
        asl     L00C8
        php
        php
        ora     #$02
        .byte   $04
        brk
        .byte   $7B
        rts

        .byte   $7B
        rts

        ror     L607B,x
        .byte   $79
LDDB3:  rts

        adc     L7960,y
        adc     L7960,x
        rts

        .byte   $76
LDDBC:  rts

        ror     L0060,x
        adc     L0076,x
        rts

        .byte   $12
        brk
        sta     L76C1,x
        rts

        adc     (L0060),y
        stx     L0075,y
        .byte   $96
LDDCD:  asl     L9D01
        sta     L6076,y
        sei
        rts

        ora     (L007A,x)
        ora     (L00BA,x)
        .byte   $04
        brk
LDDDB:  .byte   $7B
LDDDC:  rts

LDDDD:  .byte   $7B
LDDDE:  rts

        ror     L607B,x
LDDE2:  adc     L7960,y
LDDE5:  rts

        .byte   $79
LDDE7:  adc     L7960,x
        rts

        .byte   $12
        brk
        .byte   $9D
        .byte   $F1
LDDEF:  ror     L0060,x
        ror     L0060,x
        adc     L0076,x
        rts

        ror     L0060,x
        .byte   $71
LDDF9:  rts

        stx     L0075,y
        stx     L000E,y
LDDFE:  ora     (L009D,x)
        cmp     #$02
LDE02:  sty     L0002,x
        sty     L0097,x
        .byte   $02
        stx     L0002,y
        .byte   $97
        stx     L0004,y
        brk
        .byte   $74
        rts

        .byte   $6B
        rts

        .byte   $6F
        .byte   $74
        rts

        ror     L0060,x
        adc     (L0060),y
        .byte   $74
        ror     L0077,x
        ror     L0074,x
        .byte   $B7
        .byte   $02
        sta     LC07B,y
        asl     L9D03
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

        adc     L6D60,y
        .byte   $74
        rts

        adc     L7960,y
        rts

        adc     L7460
        adc     L7960,y
        rts

        .byte   $12
        brk
        .byte   $9E
        adc     (L006F,x)
        .byte   $7B
        ror     L797B,x
        ror     L0079,x
        .byte   $7B
        rts

        ror     L0360,x
        pla
        rts

        adc     #$68
        ror     L0063
        .byte   $63
        rts

        adc     #$60
        pla
        rts

        ror     L0060
        .byte   $63
        rts

        adc     (L0063,x)
LDE6A:  ror     L0063
        adc     (L000E,x)
        ora     (L009E,x)
        asl     L00BB,x
        lda     L76D7,y
        rts

        ror     L0060,x
        ror     L0076,x
        rts

        .byte   $7B
        pla
        rts

        .byte   $02
        ldy     L0016,x
        sta     L1791,x
        .byte   $04
        brk
        asl     L0064
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     L008D
        txa
        sta     L6F85
        txa
        .byte   $6F
        sta     L000E
        asl     L009E
        .byte   $7C
        .byte   $02
        sta     L8D02
        sta     L6A6A
        rts

        ror     a
        rts

        ror     a
        ror     a
        ror     a
        .byte   $04
        brk
        sta     L008D
        txa
        sta     L6F85
        txa
        .byte   $6F
        sta     L00AD
        .byte   $02
        sta     LC06D
        asl     L9E03
        tya
        .byte   $04
        brk
        sta     L008D
        txa
        sta     L6F85
        txa
        .byte   $6F
        sta     L000E
        ora     L009E
        ldy     LADAD
        ror     a
        ror     a
        ror     a
        ror     a
        rts

        adc     L666A
        ror     a
        adc     L006A
        adc     L006A
        ror     a
LDEDB:  rts

        ror     a
LDEDD:  .byte   $65
LDEDE:  adc     L0002
LDEE0:  .byte   $AD
LDEE1:  asl     L009E,x
        .byte   $74
        .byte   $17
LDEE5:  brk
LDEE6:  .byte   $9E
        dec     LB99F,x
        .byte   $A0
LDEEB:  .byte   $70
LDEEC:  .byte   $A0
LDEED:  .byte   $EF
        .byte   $05
LDEEF:  .byte   $01
LDEF0:  .byte   $80
        asl     a
        .byte   $02
        .byte   $04
        jsr     L2004
        asl     L0064
        .byte   $07
        php
        php
        .byte   $07
        ora     #$02
        clc
LDF00:  rti

        .byte   $80
LDF02:  ora     (L007D,x)
        brk
        ora     (L009D,x)
        .byte   $9B
        sta     L009B,y
        sta     L7601,y
        brk
        stx     L0000,y
        ora     (L0096,x)
        ror     L009B,x
        adc     L799B,y
        .byte   $9B
        adc     L1280,x
        jsr     L3F9F
        .byte   $7B
        .byte   $80
        adc     L0196,y
        adc     L0100,y
        sta     L9600,y
        sei
        brk
        sta     L9999,y
        sta     L0098,y
        .byte   $9B
        sei
        .byte   $80
        ora     (L0074,x)
        brk
        ora     (L0094,x)
        stx     L0096,y
        brk
        sty     L0074,x
        .byte   $80
        ror     L0080,x
        php
        php
        ror     L0099,x
        .byte   $7B
        .byte   $9C
        .byte   $7B
        sta     L0E76,y
        ora     (L009E,x)
        sbc     L0003
        pla
        .byte   $80
        adc     L0083
        ora     (L0003,x)
        ror     L0000,x
        ora     (L0096,x)
        brk
        stx     L0078,y
        brk
        sta     L9999,y
        .byte   $9B
        sta     L9B00,x
        adc     L0180,x
        .byte   $03
        pla
        brk
        ora     (L0088,x)
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
        ror     L0079,x
        ror     L0079,x
        .byte   $7B
        adc     L7D7B,y
        .byte   $7B
        .byte   $7D
LDF82:  .byte   $04
        php
        php
        .byte   $07
        .byte   $04
        php
        sta     L8A8C
        brk
        dey
        ora     (L006A,x)
        brk
        ora     (L00CA,x)
LDF92:  asl     L9F01
        ror     L008D,x
        sty     L8A00
        brk
        dey
        sta     L6D00
        brk
        sty     L888A
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
        ldx     L8D6A
        .byte   $6F
        bcc     LE025
        sta     L086A
        .byte   $07
        .byte   $0F
        ora     (L009F,x)
        .byte   $72
        adc     (L008F),y
        .byte   $6D
        .byte   $8F
LDFC2:  adc     L688A
        asl     L009E,x
        .byte   $E3
        .byte   $17
        .byte   $04
        plp
        .byte   $04
        plp
        asl     L0064
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
        ora     (L006D,x)
        brk
        ora     (L00AD,x)
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
        ora     (L0063,x)
        brk
        ora     (L00A3,x)
        ora     #$02
        txa
        sta     L0088
LDFFE:  brk
        sta     L0000
        txa
LE002:  brk
        ror     a
        brk
        sta     L0088
        sta     L0008
        php
        .byte   $07
        php
        clc
        rti

        sta     a:L008D
        sty     L806C
        adc     L8018
        .byte   $12
        plp
        ldy     #$1A
        .byte   $80
LE01C:  .byte   $0C
        inc     L7603,x
        sta     L9C7B,y
        .byte   $7B
        .byte   $99
LE025:  ror     L000E,x
        ora     (L009F,x)
        .byte   $BB
        .byte   $80
        adc     L0068
        adc     L0068
        ror     a
        pla
        ror     a
        adc     L6D6A
        .byte   $04
        brk
        .byte   $0C
        brk
        .byte   $04
        brk
        stx     L0091,y
        sty     L0000,x
        sta     (L0000),y
        sta     L7900,y
        brk
        tya
        stx     L0094,y
        asl     LA001
        and     #$96
        sta     (L0094),y
        brk
        sta     (L0000),y
        stx     L0000,y
        ror     L0000,x
        sta     (L0094),y
        sta     (L0003),y
        sta     a:L008D
        sty     L806C
        adc     L0C80
        .byte   $02
        .byte   $13
        plp
        ldy     #$64
        .byte   $03
        ror     L0099,x
        .byte   $7B
        .byte   $9C
        .byte   $7B
        sta     L0F76,y
        ora     (L00A0,x)
        and     L0065
        .byte   $83
        adc     (L0083,x)
        adc     (L0003,x)
        stx     L0074,y
        asl     L009F,x
        lda     L0417,y
        brk
        asl     L00C8
        php
        php
        ora     #$02
        .byte   $04
        brk
        stx     L0096,y
        brk
        .byte   $80
        ror     L0074,x
        .byte   $80
        ror     L0080,x
        stx     L0076,y
        brk
        ldy     #$94
        sty     L0000,x
        .byte   $80
        ror     L0094,x
        ora     (L0073,x)
        brk
        ora     (L0093,x)
        brk
        .byte   $93
        .byte   $73
        brk
        ldy     #$92
        .byte   $92
        stx     L0092,y
        brk
        .byte   $74
        ldy     #$74
        sta     L9678,y
        .byte   $74
        brk
        stx     L0096,y
        brk
        sty     L0074,x
        .byte   $80
        ror     L0000,x
        cpy     #$0E
        ora     (L00A0,x)
        sei
        .byte   $04
        rti

        .byte   $AF
        .byte   $8F
        brk
        ora     (L008F,x)
        .byte   $6F
        .byte   $6F
        .byte   $80
        .byte   $6F
        ldy     #$01
        .byte   $6F
        brk
        ora     (L008F,x)
        ora     (L00B1,x)
        sta     (L0000),y
        ora     (L0091,x)
        adc     (L0071),y
LE0DA:  .byte   $80
        adc     (L00A0),y
LE0DD:  ora     (L0071,x)
LE0DF:  brk
LE0E0:  ora     (L0091,x)
        ora     (L00B2,x)
        brk
        ora     (L0092,x)
        adc     (L0092),y
        ora     (L0074,x)
LE0EB:  brk
        ora     (L00D4,x)
        stx     L0096,y
        brk
        sty     L0074,x
        .byte   $80
        ror     L0000,x
LE0F6:  cpy     #$0E
        ora     (L00A0,x)
        lda     (L0016),y
        ldy     #$70
LE0FE:  .byte   $17
        .byte   $04
        .byte   $20
        .byte   $06
LE102:  .byte   $64
        .byte   $07
        php
        php
        ora     #$04
        jsr     L2004
        sta     L006F
        .byte   $8D
        .byte   $6F
LE10F:  txa
        .byte   $6F
        sta     L8500
        brk
        adc     L0085
        adc     L6F8A
        sta     L0E6F
        .byte   $02
        ldy     #$F9
        brk
        txa
        txa
        brk
        sta     L866A
        ror     a
        .byte   $80
        adc     L0085
        .byte   $6F
        sta     L8A6D
        adc     L010F
        ldy     #$F7
        .byte   $04
        jsr     L2004
        sta     L006F
        sta     L8A6F
        .byte   $6F
        sta     L8500
        brk
        adc     L0085
        adc     L6F8A
        sta     L0E6F
        .byte   $02
        lda     (L0026,x)
        brk
        txa
        txa
        brk
        sta     L866A
        ror     a
        .byte   $80
        adc     L0085
        .byte   $6F
        sta     L8A6D
        adc     L010F
        lda     (L0024,x)
        asl     L00A0,x
        .byte   $EF
        .byte   $17
        brk
        lda     (L005E,x)
        ldx     #$43
        ldx     #$FA
        .byte   $A3
        ror     L0105,x
        jmp     L2804

        asl     L00C8
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
        adc     (L0093),y
        adc     (L008F),y
        .byte   $12
        plp
        lda     (L0088,x)
        adc     (L0000),y
        ldy     #$0E
        ora     (L00A1,x)
        .byte   $6F
        brk
        ora     (L008E,x)
        .byte   $13
        pha
        lda     (L0097,x)
        ora     (L008E,x)
        brk
        rts

        .byte   $0F
        ora     (L00A1,x)
        adc     L2804
        .byte   $07
        php
        jmp     (L718F)

        .byte   $07
        .byte   $07
        .byte   $92
        adc     (L008F),y
        brk
        sty     L0808
        clc
        .byte   $80
        .byte   $07
        php
        brk
        sei
        stx     L0073,y
        stx     L0078,y
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
        lda     (L00E0,x)
        jmp     (L718F)

        php
        php
        .byte   $07
        php
        eor     (L0001),y
        .byte   $52
        ora     (L0092,x)
        eor     (L0001),y
LE1DC:  .byte   $52
        ora     (L0092,x)
        php
LE1E0:  .byte   $07
        .byte   $07
        .byte   $07
        sta     (L006F),y
        sty     L8C6A
        .byte   $6F
        sty     L8B00
        .byte   $0E
LE1ED:  ora     (L00A1,x)
        .byte   $97
LE1F0:  jmp     (L7391)

        stx     L0073,y
        .byte   $8F
        ror     L6F91
        sty     L8C6A
        .byte   $6F
        .byte   $8E
LE1FE:  brk
        .byte   $8C
LE200:  brk
        .byte   $6E
LE202:  .byte   $8F
        brk
        sta     (L0000),y
        .byte   $6F
        stx     L9300
        .byte   $04
        plp
        .byte   $72
        .byte   $93
        ora     (L0078,x)
        .byte   $02
        brk
        clv
        php
        ora     (L00B8),y
        brk
        ora     (L0098,x)
        php
        .byte   $07
        .byte   $6F
        .byte   $92
        adc     (L008F),y
        .byte   $12
        plp
        ldx     #$25
        ora     (L006C,x)
        .byte   $02
        brk
        ldy     L1108
        .byte   $02
        ldy     L0100
        sty     L0708
        asl     LA101
        .byte   $FA
        php
        php
        clc
        .byte   $80
        .byte   $07
        php
        brk
        sty     L6700
        txa
        brk
        sty     L6700
        txa
        brk
        sty     L7300
        stx     L0000,y
        tya
        .byte   $80
        brk
        rts

        asl     L00A1,x
        adc     (L0017,x)
        .byte   $04
        plp
        asl     L00C8
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
        ror     L6E8F
        sty     L2812
        ldx     #$6A
        ror     LA000
        asl     LA201
        eor     (L0000),y
        ora     (L008B,x)
        .byte   $13
        pha
        ldx     #$79
        ora     (L008B,x)
        brk
        rts

        .byte   $0F
        ora     (L00A2,x)
        .byte   $4F
        ora     (L0080,x)
        brk
        rts

        .byte   $04
        plp
        asl     L0064
        clc
        .byte   $80
        sty     L8A67
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

        sta     L8C00
        ror     a
        .byte   $87
        adc     L0087
        ror     a
        .byte   $87
        brk
        .byte   $87
        brk
        rts

        brk
        .byte   $80
        asl     LA201
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
        sty     L868C
        stx     L0087
        .byte   $87
        sta     L0087
        .byte   $04
        plp
        .byte   $07
        ora     #$93
        jmp     (L6C8A)

        .byte   $80
LE2DA:  .byte   $73
        .byte   $8C
LE2DC:  ror     a
LE2DD:  sty     L8C73
LE2E0:  ror     a
LE2E1:  dey
        ror     L128F
LE2E5:  plp
        ldx     #$DE
        ora     (L0073,x)
        .byte   $0E
LE2EB:  .byte   $02
LE2EC:  ldx     #$C1
        .byte   $07
        php
LE2F0:  clc
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
        .byte   $6C
        .byte   $8E
LE301:  brk
        .byte   $8F
        .byte   $80
        brk
        rts

        asl     L00A2,x
        .byte   $43
        .byte   $17
        asl     L00C8
        php
        php
        .byte   $04
        brk
        ora     #$02
        .byte   $04
        brk
        tya
        .byte   $93
        stx     L0097,y
        tya
        brk
        stx     L0012,y
        jsr     L19A3
        brk
        stx     L6F00
        sta     (L0076),y
        asl     LA303
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
        sta     L9800,y
        .byte   $73
        stx     L0078,y
        brk
        .byte   $80
        stx     L00B1,y
        .byte   $B3
        sty     L0000,x
        sty     L0012,x
        jsr     L43A3
        brk
        ora     (L0093,x)
        brk
        ora     (L0073,x)
        brk
        .byte   $80
        asl     LA301
        ora     L0100,x
        sta     L0000,x
        ora     (L0075,x)
        sta     L0000,x
        ora     (L0096,x)
        brk
        ora     (L0076,x)
        stx     L0000,y
        ora     (L0097,x)
        brk
        ora     (L0077,x)
        .byte   $97
        .byte   $04
        brk
        tya
        brk
        sei
        brk
        stx     L0094,y
        .byte   $93
        sta     (L0093),y
        sty     L0000,x
        stx     L000E,y
        .byte   $02
        .byte   $A3
        cli
        brk
        tya
        .byte   $04
        jsr     L9673
        brk
        tya
        asl     LA302
        jmp     (L6000)

        brk
        .byte   $80
        asl     L00A2,x
        inc     L0417,x
        brk
        asl     L0096
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     L6C00
        rts

        jmp     (L0D0E)

        .byte   $A3
        stx     L006F
        jmp     (L6568)

        rts

        ror     a
        jmp     (L6C60)

        sta     L046C
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
        adc     L006A
        rts

        .byte   $6F
        .byte   $80
        jmp     (L6068)

        adc     L0080
        adc     L006A
        .byte   $80
        .byte   $04
        brk
        sta     L6C00
        rts

        jmp     (L0B0E)

        .byte   $A3
        tsx
        sta     L866A
        brk
        txa
        .byte   $04
        jsr     L8C6F
        pla
        .byte   $80
        asl     LA301
        dex
        rts

        brk
        .byte   $80
        asl     L00A3,x
        ror     a:L0017,x
        .byte   $A3
        cpx     L00A5
        asl     a
        ldx     L0003
        ldx     L00BF
        ora     L0001
        eor     L0006,x
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
        sty     L8D8C
        brk
        sta     L2812
        ldy     L0009
        adc     #$80
        php
        php
        adc     (L008F),y
        adc     L010E
        .byte   $A3
        .byte   $EB
        .byte   $6F
        .byte   $80
        php
        php
        ror     L678B
        php
        asl     a
        brk
        sty     L8E8C
        stx     a:L008F
        .byte   $8F
        asl     L0096
        ora     (L0071,x)
        brk
        ora     (L00B1,x)
        asl     L0064
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
        ror     L9671
        adc     L0094,x
        .byte   $73
        .byte   $04
        jsr     L2004
        php
        php
        .byte   $80
        .byte   $03
        .byte   $6F
        stx     L8F6C
        jmp     (L6780)

        adc     #$80
        .byte   $89
        brk
        .byte   $8B
        brk
        .byte   $67
        .byte   $8B
        ror     L6E8F
        sty     L8E6F
        jmp     (L6F8E)

        adc     (L0080),y
        sta     (L0012),y
        plp
        ldy     L008A
        brk
        .byte   $93
        brk
        adc     (L008F),y
        ror     L6C80
        .byte   $8F
        adc     (L0092),y
        adc     (L008F),y
        jmp     (L806F)

        .byte   $8F
        ora     (L006C,x)
        brk
        ora     (L00AC,x)
        php
        asl     a
        brk
        stx     L6E6E
        rts

        ror     L6E80
        .byte   $80
        ror     L806E
        stx     L6D01
        brk
        ora     (L00AD,x)
        asl     LA401
        .byte   $37
        ora     (L0073,x)
        brk
        ora     (L00B3,x)
        brk
        .byte   $80
        sei
        .byte   $92
        adc     (L0098),y
        .byte   $72
        .byte   $80
        sei
        .byte   $92
        adc     (L0098),y
        .byte   $72
        .byte   $80
        .byte   $6F
        sta     (L0072),y
        php
        asl     a
        brk
        .byte   $93
        .byte   $93
        brk
        .byte   $93
        ror     L0094,x
        .byte   $73
        .byte   $80
        .byte   $93
        sty     L0095,x
        stx     L0097,y
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
        ror     L0093,x
        adc     (L008F),y
        jmp     (L2813)

        ldy     L00E1
        .byte   $6F
        .byte   $80
        .byte   $8F
LE4DA:  .byte   $12
        plp
LE4DC:  .byte   $A4
LE4DD:  .byte   $D7
        ora     (L006E,x)
        brk
        ora     (L00AE,x)
        asl     LA401
        .byte   $B2
        brk
        sta     (L0000),y
        .byte   $6F
LE4EB:  sty     L0F6C
        ora     (L00A4,x)
        bcs     LE543
        ora     (L0052,x)
        ora     (L0092,x)
        eor     (L0001),y
        .byte   $52
        ora     (L0092,x)
        sta     (L006F),y
        sty     L8C6A
        .byte   $6F
        .byte   $8C
LE502:  brk
        sty     L6F00
        sty     L8C00
        brk
        .byte   $6B
        ror     L7471
        ora     #$02
        stx     L0109
        sei
        .byte   $97
        .byte   $73
        asl     L00A4,x
        and     L0017,x
        .byte   $07
        php
        php
        asl     a
        ora     #$01
        asl     L0064
        clc
        rti

        sta     L9B99,y
        .byte   $9B
        sta     L9D00,x
        adc     LA000,y
        sta     L9D9D,x
LE531:  .byte   $9D
        .byte   $9D
LE533:  brk
        sta     a:L007D,x
        ldy     #$9B
        .byte   $9B
        sta     L9F9D,x
        brk
        .byte   $9F
        asl     L0096
        ora     (L0003,x)
LE543:  jmp     (L0100)

        ldy     L6406
        sty     a:L008C
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
        stx     L0078,y
        .byte   $80
        sei
        stx     L0078,y
        .byte   $80
        sei
        stx     L0078,y
        txs
        .byte   $77
        sta     (L0073),y
        asl     LA501
        lsr     L0013
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
        stx     L0001
        .byte   $03
        adc     L0000,x
        ora     (L0095,x)
        php
        asl     a
        brk
        .byte   $03
        sty     L8C6C
        .byte   $6B
        .byte   $80
        .byte   $6B
        .byte   $80
        .byte   $6B
        ror     a
        .byte   $80
        txa
        ora     (L0069,x)
        brk
        ora     (L00A9,x)
        .byte   $0F
        ora     (L00A5,x)
        .byte   $44
        .byte   $04
        plp
        dey
        adc     #$88
        .byte   $67
        stx     L0063
        stx     L0067
        asl     LA501
        .byte   $8F
        php
        asl     a
        bvs     LE531
        bvs     LE533
        bcc     LE628
        sta     (L0070),y
        .byte   $80
        php
        php
        stx     L908F
        sta     (L0092),y
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
        stx     L0078,y
        clc
        rti

        txa
        jmp     (L6C80)

        .byte   $80
        .byte   $6C
LE5DA:  .byte   $80
        pla
        sta     L0067
        .byte   $80
        .byte   $67
        .byte   $82
        .byte   $03
        .byte   $77
        .byte   $80
        .byte   $7F
        .byte   $03
        txa
        .byte   $6C
LE5E8:  .byte   $80
        jmp     (L6C80)

        .byte   $80
        pla
        .byte   $83
        .byte   $03
        sei
        txs
        .byte   $7B
        txs
        .byte   $7F
        .byte   $9F
        .byte   $7F
        ora     (L009B,x)
        brk
        ora     (L009B,x)
        lda     L7E00,x
        .byte   $80
        .byte   $0C
        .byte   $01
LE602:  .byte   $03
        .byte   $6B
        ror     L7471
        ora     #$02
        stx     L0109
        sei
        .byte   $97
        .byte   $73
        asl     L00A5,x
        .byte   $42
        .byte   $17
        asl     L0064
        php
        php
        ora     #$02
        stx     L0096,y
        sty     L0094,x
        .byte   $92
        asl     L00C8
        brk
        .byte   $92
        .byte   $71
LE623:  brk
        ldy     #$06
        .byte   $64
        .byte   $96
LE628:  stx     L0095,y
        sta     L0094,x
        asl     L00C8
        brk
        sty     L0073,x
        brk
        ldy     #$06
        .byte   $64
        tya
        tya
        .byte   $97
        .byte   $97
        stx     L0006,y
        stx     L0000,y
        stx     L0001,y
        adc     L0000,x
        ora     (L00B5,x)
        asl     L0064
        sty     L0094,x
        asl     L00C8
        brk
        sty     L0074,x
        .byte   $80
        .byte   $73
        brk
        cpy     #$04
        brk
        .byte   $04
        brk
        asl     L0096
        .byte   $04
        brk
        sty     L8C98
        tya
        sta     L0091
        .byte   $87
        .byte   $93
        asl     LA601
        lsr     L0013
        brk
        ldx     L0079
        asl     L00C8
        sty     L0096,x
        .byte   $97
        tya
        .byte   $9E
        sta     L989B,x
        asl     L0096
        brk
        .byte   $9E
        ror     L7D9E,x
        .byte   $80
        adc     L7D80,x
        .byte   $7C
        .byte   $80
        .byte   $9C
        ora     (L007B,x)
LE682:  brk
        ora     (L00BB,x)
        .byte   $0F
        ora     (L00A6,x)
        .byte   $42
        .byte   $04
        brk
        dey
        sty     L000E,x
        .byte   $03
        ldx     L0079
        .byte   $93
        .byte   $93
        brk
        .byte   $93
        ror     L0094,x
        .byte   $73
        .byte   $80
        .byte   $93
        sty     L0095,x
        stx     L0097,y
        brk
        sty     L8A98
        stx     L0006,y
        iny
        brk
        .byte   $74
        .byte   $80
        sty     L0001,x
        .byte   $73
        brk
        ora     (L00B3,x)
        .byte   $04
        brk
        asl     L0096
        sty     L8A98
        stx     L0088,y
        sty     L0087,x
        .byte   $93
        asl     LA601
        .byte   $9E
        asl     L00C8
        ora     (L0091,x)
        brk
        ora     (L0091,x)
        brk
        .byte   $B3
        brk
        .byte   $74
        brk
        cpy     #$16
        ldx     L0040
        .byte   $17
        asl     L0064
        .byte   $07
        php
        php
        ora     #$04
        brk
        sta     L008A
        brk
        sta     L0065
        ror     a
        .byte   $80
LE6DE:  brk
        sta     L0000
        txa
LE6E2:  adc     L0080
        adc     L0000
        txa
        .byte   $0E
LE6E8:  .byte   $02
        ldx     L00C5
        txa
        .byte   $80
        brk
        .byte   $80
        adc     L668A
        brk
        ldy     #$00
        .byte   $80
        jmp     (LC806)

        brk
        sta     L2004
        .byte   $04
        jsr     L2004
        .byte   $06
LE702:  .byte   $64
        sta     L006D
        ror     a
        rts

        adc     L6585
        ror     a
        rts

        adc     L8500
        brk
        txa
        adc     L0080
        adc     L006A
        rts

        adc     L020E
        ldx     L00EF
        .byte   $13
        jsr     L26A7
        txa
        ror     a
        txa
        ror     a
        sta     L006A
        sta     L006A
        ror     a
        .byte   $80
        adc     L666A
        sta     L0001
        adc     L0100
        sta     L010F
        ldx     L00ED
        brk
        txa
        txa
        brk
        txa
        adc     L668A
        .byte   $80
        sta     L8D8D
        sta     L858D
        adc     L606A
        adc     L6585
        ror     a
        rts

        adc     L6A6D
        ror     L008A
        ora     (L006D,x)
        brk
        ora     (L00AD,x)
        .byte   $04
        jsr     L6D85
        ror     a
        rts

        adc     L6585
        ror     a
        rts

        adc     L8500
        brk
        txa
        adc     L0080
        adc     L006A
        rts

        adc     L010E
        .byte   $A7
        .byte   $47
        sta     L006C
        dey
        adc     L0080
        jmp     (L6588)

        brk
        cpy     #$16
        ldx     L00EB
        .byte   $17
        brk
        .byte   $A7
        sei
        tay
        .byte   $5B
        lda     #$2C
        lda     #$B2
        ora     L0001
        .byte   $5F
        asl     L0064
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
        stx     L0068
        txa
        adc     L708F
        .byte   $8F
        adc     L018F
        adc     (L0000),y
        ora     (L0091,x)
        .byte   $04
        brk
        ora     #$02
        php
        asl     a
        asl     L0064
        .byte   $04
        brk
        sty     L0096,x
        lda     L9400,y
        ror     L0080,x
        ora     (L0079,x)
        brk
        ora     (L0099,x)
        brk
        sta     L007B,y
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        .byte   $9C
        brk
        .byte   $9B
        adc     L0180,y
        ror     L0000,x
        ora     (L0096,x)
        asl     LA701
        ldx     #$00
        .byte   $9E
        .byte   $7D
        .byte   $9E
LE7DA:  adc     L039E,x
        pla
LE7DE:  .byte   $80
        adc     L0086
        .byte   $65
LE7E2:  stx     L0001
        pla
        brk
LE7E6:  dey
        brk
LE7E8:  ora     (L0088,x)
        ora     (L006B,x)
        ora     (L008B,x)
        .byte   $6B
        ror     a
        .byte   $80
        ror     L0080
        .byte   $64
        .byte   $80
        .byte   $64
        .byte   $80
        .byte   $63
        .byte   $80
        sta     (L0001,x)
        .byte   $03
        .byte   $77
        brk
        ora     (L0097,x)
        ora     (L0096,x)
LE802:  brk
        ora     (L0096,x)
        ora     (L0079,x)
        .byte   $02
        brk
        ora     (L00D9,x)
        .byte   $03
        dey
        dey
        dey
        dey
        brk
        dey
        pla
        .byte   $80
        ora     (L006A,x)
        brk
        ora     (L00AA,x)
        .byte   $04
        brk
        asl     L00C8
        sta     L9E9C,y
        .byte   $03
        dey
        brk
        .byte   $8B
        brk
        dey
        brk
        ora     (L006D,x)
        brk
        ora     (L00AD,x)
        .byte   $12
        php
        tay
        lsr     L0006
        .byte   $64
        brk
        eor     #$01
        lsr     a
        ora     (L008A,x)
        eor     #$01
        lsr     a
        ora     (L008A,x)
        dey
        brk
        stx     L0000
        eor     #$01
        lsr     a
        ora     (L008A,x)
        eor     #$01
        lsr     a
        ora     (L008A,x)
        ror     a
        dey
        ora     (L0066,x)
        brk
        ora     (L0086,x)
        asl     LA801
        ora     #$00
        stx     L0065
        .byte   $83
        .byte   $67
        sta     L0063
        sta     L0067
        dey
        jmp     (L088A)

        .byte   $0B
        pla
        brk
        ldy     #$16
        .byte   $A7
        txs
        .byte   $17
        asl     L0064
        php
        php
        ora     #$01
        clc
        .byte   $80
        .byte   $07
        php
        brk
        ora     (L0003,x)
        adc     L8D01
        rti

        ora     #$02
        .byte   $07
        asl     L0086
        adc     L0086
        pla
        txa
        adc     L708F
        .byte   $8F
        eor     L0109
        .byte   $07
        php
        stx     L0001
        ror     L0000
        ora     (L0086,x)
        .byte   $04
        jsr     L0209
        asl     L0064
        php
        php
        .byte   $0C
        brk
        .byte   $04
        jsr     L0707
        .byte   $04
        jsr     L7980
        asl     LA805
        .byte   $92
        .byte   $5B
        ora     (L005C,x)
        ora     (L007C,x)
        adc     L7997,y
        .byte   $07
        php
        ror     L0080,x
        ror     L0080,x
        ror     L0080,x
        ror     L0080,x
        brk
        stx     L0000,y
        .byte   $80
        ror     L0097,x
        ror     L0094,x
        .byte   $72
        .byte   $0F
        ora     (L00A8,x)
        stx     L2004
        .byte   $80
        .byte   $74
        asl     LA807
        lda     L7780,y
        stx     L0072,y
        .byte   $77
        .byte   $80
        stx     L0072,y
        .byte   $97
        ror     L0092,x
LE8DC:  .byte   $77
LE8DD:  brk
LE8DE:  .byte   $A0
LE8DF:  .byte   $01
LE8E0:  .byte   $91
LE8E1:  brk
LE8E2:  ora     (L0091,x)
        .byte   $01
LE8E5:  .byte   $72
LE8E6:  .byte   $02
        brk
        .byte   $B2
        brk
        ora     (L0092,x)
        .byte   $7B
LE8ED:  .byte   $9C
        .byte   $7B
        sta     L7B7F,y
LE8F2:  .byte   $80
        .byte   $7B
        .byte   $80
        .byte   $7A
        .byte   $80
        .byte   $7A
        .byte   $80
        sta     L8079,y
        ora     (L007F,x)
        brk
        .byte   $01
LE900:  .byte   $BF
        .byte   $04
        jsr     L2004
        .byte   $80
        adc     L050E,y
        tay
        .byte   $F3
        .byte   $9C
        adc     L7997,y
        .byte   $13
        jsr     L15A9
        brk
        .byte   $03
        sta     L808D
        brk
        .byte   $80
        brk
        sta     a:L008D
        adc     LA000
        .byte   $0F
        ora     (L00A8,x)
        sbc     (L0006),y
        stx     L0000,y
        .byte   $03
        ldy     L06AD
        .byte   $64
        brk
        stx     L0066
        stx     L0008
        .byte   $0B
        .byte   $07
        ora     #$66
        brk
        ldy     #$16
        tay
        sty     L0017
        asl     L00C8
        php
        php
        ora     #$02
        brk
        adc     a:L0080
        cpy     #$80
        brk
        sty     L0001,x
        .byte   $74
        brk
        ora     (L0094,x)
        .byte   $04
        brk
        .byte   $04
        brk
        sta     L9491
        stx     L0097,y
        stx     L0097,y
        sta     L9692,y
        sta     L9C9B,y
        .byte   $9B
        sta     L0E96,y
        ora     (L00A9,x)
        eor     (L0094,x)
        tya
        .byte   $9B
        sta     L9D9E,x
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
        asl     LA901
        rts

LE97F:  brk
        .byte   $92
        stx     L0099,y
        .byte   $9B
        .byte   $9C
        .byte   $9B
        sta     L9896,y
        tya
        .byte   $97
        .byte   $97
        brk
        stx     L0076,y
        .byte   $80
        ora     (L006F,x)
        brk
        ora     (L00AF,x)
        .byte   $04
        brk
        sta     L9697,y
        sty     L008D,x
        sta     (L0092),y
        sty     L0012,x
        brk
        lda     #$9F
        .byte   $92
        stx     L0097,y
        tya
        sta     L9798,y
        stx     L000E,y
        ora     (L00A9,x)
        sta     L0000
        .byte   $6F
        .byte   $80
        .byte   $6F
        .byte   $80
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $80
        sty     L0074,x
        sty     L0074,x
        brk
        ldy     #$16
        lda     #$3F
        .byte   $17
        php
        ora     #$07
        php
        asl     L0064
        txa
        cpy     #$00
        .byte   $6F
        jmp     (L8568)

        ror     a
        brk
        .byte   $80
        .byte   $04
        jsr     L2004
        adc     L0060
        .byte   $6F
        ror     a
        rts

        adc     L0080
        adc     L006A
        rts

        .byte   $6F
        asl     LA907
        cpy     L0065
        .byte   $80
        ror     a
        .byte   $80
        sta     L0065
        ror     a
        .byte   $80
        adc     L0080
        ror     a
        rts

        adc     L0080
        adc     L006A
        .byte   $80
        .byte   $04
        jsr     L6065
        .byte   $6F
        ror     a
        rts

        .byte   $6F
        asl     LA907
        inc     L0000
        sta     L0085
        sta     L0085
        brk
        sta     L866A
        ora     (L006F,x)
        brk
        ora     (L00AF,x)
        .byte   $04
        jsr     L6065
        .byte   $6F
        ror     a
        rts

        adc     L0080
        adc     L006A
        rts

        .byte   $6F
        asl     LAA06
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
        bit     L00AA
        .byte   $4B
        tax
        adc     L00AA,x
        txa
        asl     L0064
        .byte   $07
        php
        php
        php
        ora     #$01
        brk
        .byte   $03
        .byte   $89
        txa
        stx     L0084
        sta     L0081
        sty     L0080
        sta     (L0084,x)
        .byte   $80
        stx     L0006
        .byte   $DC
        brk
        ldy     #$00
        lda     (L0001),y
        sty     L0000,x
        ldy     L000D,x
        bvc     LEA5D
        sei
        ora     (L0088,x)
        .byte   $17
        asl     L00C8
LEA5D:  .byte   $07
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
        stx     L0084
        sta     L0081
        sty     L0080
        sta     (L0084,x)
        .byte   $80
        stx     L0006
        .byte   $DC
        brk
        ldy     #$00
        lda     #$01
        txa
        brk
        tax
        ora     L0650
        sei
        ora     (L0003,x)
        stx     L0017,y
        asl     L00F0
        php
        php
        ora     #$02
        cpx     #$A0
        brk
        .byte   $B3
        ora     (L0092,x)
        brk
        .byte   $B2
        ora     L0650
        sei
        ora     (L0086,x)
        .byte   $17
        asl     L0064
        .byte   $07
        php
        php
        ora     #$E0
        brk
        sty     L888A
        asl     L0096
        php
        ora     (L00AE,x)
        ora     (L008E,x)
        brk
        ora     (L00CE,x)
        .byte   $17
        brk
        tax
        lda     #$AB
        ldx     L6BAC
        ldy     L05F3
        brk
        tax
        asl     L0096
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
        and     L2E01
        ora     (L004E,x)
        adc     L2D68
        ora     (L002E,x)
        ora     (L004E,x)
        adc     L6B68
        .byte   $6F
        .byte   $74
        stx     L0072,y
        sta     L6C01
        brk
        ora     (L008C,x)
        .byte   $04
        plp
        ora     #$02
        asl     L0096
        .byte   $04
        plp
        php
        .byte   $07
        pla
        .byte   $6B
        adc     L0808
        and     L2F01
        .byte   $4F
        ora     (L006F,x)
        php
        .byte   $07
        pla
        brk
        .byte   $80
LEAFE:  brk
        rts

        .byte   $6B
        adc     L766F
        .byte   $74
LEB05:  .byte   $6F
        .byte   $6B
        ror     L0100
        lda     L0100
        adc     L6D6B
        php
        php
        rol     L2F01
        .byte   $4F
        ora     (L006F,x)
        rol     L2F01
        .byte   $4F
        ora     (L006F,x)
        php
        .byte   $07
        adc     L6D6B
        .byte   $6B
        dey
        pla
        ror     L0088
        sta     a:L008B
        dey
        brk
        rts

        .byte   $6B
        adc     L0808
        and     L2E01
        ora     (L004E,x)
        php
        .byte   $07
        adc     L016B
        pla
        brk
        ora     (L00A8,x)
        .byte   $12
        php
        .byte   $AB
        .byte   $5F
        brk
        .byte   $6B
        adc     L0808
        and     L2E01
        ora     (L004E,x)
        php
        .byte   $07
        .byte   $6D
        .byte   $6B
LEB52:  pla
        ror     L0001
        pla
        brk
        ora     (L00A8,x)
        brk
        .byte   $8B
        .byte   $62
        sta     L0068
        .byte   $8B
        ror     L6B8D
        sta     L6D6B
        .byte   $6B
        ora     (L006F,x)
        brk
        ora     (L008F,x)
        asl     LAA01
        .byte   $DA
        brk
        .byte   $74
        ror     L0008,x
        php
        rol     L0001,x
        .byte   $37
        ora     (L0057,x)
        php
        .byte   $07
        ror     L0074,x
        .byte   $73
        .byte   $6F
        ora     (L0074,x)
        brk
        sty     L0000,x
        ora     (L0074,x)
        .byte   $74
        ror     L0097,x
        .byte   $74
        stx     L8B6D
        pla
        rts

        .byte   $74
        ror     L0097,x
        .byte   $74
        .byte   $8E
        .byte   $6D
LEB95:  .byte   $8B
        pla
        .byte   $6F
        pla
        asl     L00C8
        ora     (L0074,x)
        brk
        .byte   $D4
        php
        ora     (L0001),y
        ldy     L0008,x
        php
        brk
        rol     L0001,x
        .byte   $37
        ora     (L0057,x)
        php
        .byte   $07
        ror     L0074,x
        .byte   $73
        .byte   $6F
        ora     (L0074,x)
        brk
        .byte   $D4
        php
        ora     (L0001),y
        ldy     L0080,x
        asl     L00AA,x
        .byte   $D4
        .byte   $17
        asl     L0096
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
        sta     L866A
        ora     (L0063,x)
        brk
        ora     (L00A3,x)
        .byte   $04
        plp
        .byte   $04
        plp
        .byte   $04
        plp
LEBDA:  ora     #$01
LEBDC:  php
        .byte   $0E
LEBDE:  .byte   $0C
        brk
LEBE0:  .byte   $6F
LEBE1:  pla
        .byte   $74
        pla
        .byte   $6F
        pla
        .byte   $0E
        .byte   $01
LEBE8:  .byte   $AB
        iny
        .byte   $04
        plp
        .byte   $6F
LEBED:  .byte   $67
        .byte   $73
        .byte   $67
        .byte   $6F
        .byte   $67
        asl     LAB01
        .byte   $DA
        .byte   $04
        plp
        .byte   $6F
        pla
        .byte   $74
        pla
        .byte   $6F
        pla
LEBFE:  .byte   $0E
        .byte   $01
LEC00:  .byte   $AB
        .byte   $E6
LEC02:  .byte   $04
LEC03:  plp
        adc     L7165
        adc     L006B
        adc     L000E
        ora     (L00AB,x)
        .byte   $F2
        .byte   $04
        plp
        .byte   $6B
        .byte   $64
        bvs     LEC78
        .byte   $6B
        .byte   $64
        asl     LAB01
        inc     L2813,x
        ldy     L6836
        .byte   $63
        .byte   $6F
        .byte   $63
        pla
        .byte   $63
        pla
        adc     L006E
        adc     L0068
        adc     L006B
        pla
        ror     L716B
        ror     L7174
        .byte   $77
        adc     (L0074),y
        adc     (L0008),y
        .byte   $07
        stx     L0074,y
        ror     L0074,x
        ora     (L0077,x)
        brk
        ora     (L0097,x)
        .byte   $80
        .byte   $0F
        ora     (L00AB,x)
        dec     L0074
        .byte   $72
        bvs     LECB9
        adc     L6B01
        brk
        ora     (L00AB,x)
        .byte   $04
        plp
        stx     L8E6E
        ror     L6D8D
        brk
        .byte   $80
        asl     LAC01
        rti

        .byte   $04
        php
        php
        ora     (L0088,x)
        .byte   $8F
        stx     L8A00
        .byte   $6B
        .byte   $80
        pla
        brk
        .byte   $8F
        .byte   $12
        php
        ldy     L8E66
        txa
        asl     LAC01
        lsr     L16AE
LEC78:  .byte   $AB
        cpy     L0017
        asl     L00FA
        php
        brk
        ora     #$02
        ldy     L00B0,x
        brk
        .byte   $92
        .byte   $72
        .byte   $92
        ora     (L0074,x)
        brk
        ora     (L00B4,x)
        .byte   $04
        rti

        .byte   $04
        rti

        sty     L0000,x
        ora     (L0074,x)
        .byte   $7B
        .byte   $77
        brk
        ldy     L0001,x
        .byte   $93
        brk
        ora     (L0073,x)
        .byte   $77
        ror     L0000,x
        .byte   $B3
        ora     (L0092,x)
        brk
        ora     (L0072,x)
        .byte   $77
        ror     L0000,x
        .byte   $B2
        ora     (L0091,x)
        brk
        ora     (L0071,x)
        .byte   $7A
        .byte   $77
        brk
        lda     (L0001),y
        bcc     LECB6
LECB6:  ora     (L0070,x)
        .byte   $77
LECB9:  .byte   $74
        brk
        bcs     LECCF
        brk
        ldy     L8FC6
        sty     L0097,x
        sta     (L008E),y
        .byte   $8B
        .byte   $8E
LECC7:  sta     (L0000),y
        .byte   $8F
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ora     (L0073,x)
LECCF:  brk
        ora     (L00B3,x)
        asl     LAC01
        ror     L938F,x
        sty     L0097,x
        .byte   $04
        jsr     L7090
LECDE:  bcc     LED50
        .byte   $8F
        .byte   $6F
LECE2:  brk
        .byte   $80
        .byte   $0E
        .byte   $01
LECE6:  .byte   $AC
LECE7:  dex
        .byte   $04
        brk
        .byte   $94
LECEB:  .byte   $8F
LECEC:  .byte   $90
LECED:  brk
        .byte   $93
        .byte   $74
        .byte   $80
        .byte   $74
        brk
        .byte   $8F
        .byte   $12
        brk
LECF6:  ldy     L90EE
LECF9:  .byte   $93
        asl     LAC01
        cld
LECFE:  bcs     LED16
        .byte   $AC
        .byte   $7C
LED02:  .byte   $17
        .byte   $17
        brk
        ldy     LADFD
        ldy     L4AAE
        ldx     L05B7
        .byte   $02
        brk
        asl     a
        .byte   $02
        asl     L0064
        .byte   $07
        php
LED16:  php
        php
        ora     #$01
        clc
        rti

        .byte   $02
        .byte   $03
        txa
        ror     a
        adc     L7160
        rts

        sty     L0093,x
        .byte   $8F
        txa
        bvs     LED9B
        bvs     LED9D
        bvs     LED8E
        adc     (L0072),y
        adc     (L0072),y
        adc     (L0060),y
        adc     (L0074),y
        rts

        ror     L0004,x
        brk
        php
        .byte   $12
        .byte   $07
LED3D:  php
        ora     #$02
        stx     L0099,y
        sta     L0099,x
        sty     L0079,x
        .byte   $93
        .byte   $72
        adc     (L0060),y
        asl     LAD01
        plp
        .byte   $04
        php
LED50:  ora     #$01
        php
        php
        sta     L8F80
        .byte   $80
        bcc     LEDCA
        ora     (L006D,x)
        ora     (L00AD,x)
        clc
        .byte   $80
        rts

        ror     L0071,x
        bvs     LEDD4
        adc     L686A
        ror     a
        adc     L686A
        ror     a
        .byte   $02
        bcc     LED79
        .byte   $02
        .byte   $04
        brk
        php
        .byte   $12
        clc
        rti

        stx     L0099,y
LED79:  sta     L0099,x
        sty     L0079,x
        .byte   $93
        .byte   $72
        adc     (L0009),y
        .byte   $03
LED82:  rts

        .byte   $0E
        .byte   $01
LED85:  lda     L0861
        php
        ora     #$02
        .byte   $03
        txa
        .byte   $80
LED8E:  sty     L8D80
        adc     L6A01
        ora     (L00AA,x)
        .byte   $80
        adc     L606D
        .byte   $6D
LED9B:  .byte   $6D
        rts

LED9D:  adc     L606D
        adc     L09AD
        ora     (L0004,x)
        php
        php
        .byte   $12
        bcc     LED3D
        .byte   $8F
        .byte   $93
        sta     L8A73
        adc     #$68
        rts

        ora     #$02
        asl     LAD01
        sty     L0016,x
        lda     L173E
        asl     L0064
        .byte   $07
        php
        php
        ora     L0209
        clc
        .byte   $80
        ldx     L00BD,y
        .byte   $BC
        .byte   $BF
LEDCA:  php
        php
        ora     #$01
        clc
        rti

        .byte   $7F
        .byte   $03
LEDD2:  pla
        .byte   $67
LEDD4:  pla
        .byte   $67
        rts

        adc     #$6A
        adc     #$6A
        .byte   $69
LEDDC:  rts

LEDDD:  .byte   $6C
LEDDE:  .byte   $6F
        rts

        adc     (L0004),y
LEDE2:  brk
        php
        .byte   $12
LEDE5:  ora     #$02
LEDE7:  rts

        .byte   $96
LEDE9:  .byte   $99
LEDEA:  sta     L0099,x
LEDEC:  .byte   $94
LEDED:  adc     L7293,y
        .byte   $71
LEDF1:  asl     LAD01
        cmp     (L0004),y
        brk
        php
        php
        .byte   $07
        php
        ora     #$01
        .byte   $9D
LEDFE:  .byte   $80
        .byte   $9E
        .byte   $80
        .byte   $9F
        .byte   $7F
        ora     (L007D,x)
        ora     (L00BD,x)
        php
        .byte   $12
        .byte   $03
        tax
        .byte   $B3
        bcs     LEE6E
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

        stx     L0099,y
        sta     L0099,x
        sty     L0079,x
        .byte   $93
        .byte   $72
        adc     (L000E),y
        ora     (L00AE,x)
        .byte   $02
        php
        php
        ora     #$02
        sta     L9B80,y
        .byte   $80
        .byte   $9C
        .byte   $7C
        ora     (L0079,x)
        ora     (L00B9,x)
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
        bcc     LEDDE
LEE4B:  .byte   $8F
        .byte   $93
        sta     L8A73
        adc     #$68
        asl     LAE01
        and     (L0016),y
        lda     L17E5
        asl     L00C8
        php
        php
        ora     #$00
        .byte   $02
        .byte   $03
        txa
        ror     a
        adc     L7160
        rts

        sty     L0093,x
        .byte   $8F
        txa
        ora     #$01
LEE6E:  ora     (L00A4,x)
        ora     (L0084,x)
        ora     (L00A5,x)
        ora     (L0085,x)
        adc     #$65
        rts

        ror     a
        .byte   $04
        php
        ora     #$00
        txa
        sta     L8D89
        dey
        adc     L6687
        adc     L0060
        asl     LAE01
        ror     a
        .byte   $04
        php
        .byte   $04
        php
        txa
        sta     L8D89
        dey
        adc     L1287
        php
        ldx     L6692
        adc     L0060
        asl     LAE01
        ror     L8902,x
        .byte   $04
        php
        txa
        sta     L8D89
        dey
        adc     L6687
        adc     L0060
        asl     LAE01
        sty     L0004,x
        php
        bcc     LEE4B
        .byte   $8F
        .byte   $93
        sta     L8A73
        adc     #$88
        asl     LAE03
        ldy     L0016
        ldx     L177C
        asl     L0064
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
        asl     L0064
        brk
LEEDB:  ror     a
        ror     a
        ror     a
        rts

LEEDF:  ror     a
        rts

        ror     a
        rts

        ror     a
        ror     a
        asl     L00C8
        .byte   $07
LEEE8:  .byte   $07
        brk
        lsr     a
        lsr     a
        lsr     a
LEEED:  lsr     a
LEEEE:  lsr     a
        lsr     a
        asl     L0064
        .byte   $07
        php
        brk
        txa
        adc     L6A60
        ror     L0065
        rts

        adc     L6A60
LEEFF:  ror     L0065
        rts

LEF02:  ror     a
        ror     a
        rts

        ror     a
        .byte   $04
        brk
        .byte   $04
        brk
        asl     L00C8
        sta     L6406
        jmp     (L0E6C)

        ora     (L00AE,x)
        sed
        adc     L006A
        rts

        adc     L0006
        iny
        sta     L6406
        jmp     (L166C)

        ldx     L17F6
        .byte   $04
        .byte   $02
        jsr     L0202
        .byte   $0F
        .byte   $1B
        rti

        .byte   $0F
        dec     L0035,x
        .byte   $02
        .byte   $FF
        ora     (L0002,x)
        brk
        rol     L05FF,x
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
        ora     L0002
        ldy     #$0B
        .byte   $02
        .byte   $0F
        .byte   $1C
        .byte   $80
        .byte   $0F
        dec     L0033
        .byte   $FF
        ora     L0002
        .byte   $FF
        asl     L0002
        .byte   $0F
        brk
        .byte   $80
        .byte   $0F
        .byte   $FF
        rol     a
        .byte   $FF
        ora     L0002
        .byte   $FF
        .byte   $02
        php
        ora     L0008
        .byte   $0F
        asl     a
        .byte   $02
        .byte   $FF
        ora     (L0000,x)
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
        .byte   $31
LEF82:  ora     L001D
        asl     L0205
        .byte   $FF
        .byte   $04
        asl     a
        brk
        and     (L0000),y
        ora     L00FF
        ora     L0002,x
        .byte   $FF
        eor     (L0002,x)
        .byte   $0F
        php
        .byte   $80
        .byte   $0F
        .byte   $22
        .byte   $42
        .byte   $FF
        .byte   $07
        asl     L00FF
        inc     L0203,x
        .byte   $07
        php
        rti

        .byte   $0F
        and     LFF02,x
        .byte   $03
        .byte   $02
        brk
        lsr     L0002
        .byte   $34
        ora     (L0002),y
        .byte   $07
        asl     L0F40,x
        .byte   $42
        .byte   $FF
        .byte   $07
        asl     L00FF
        inc     L0202,x
        .byte   $07
        .byte   $1C
        cpy     #$0F
        and     (L0002),y
        .byte   $FF
        .byte   $02
        .byte   $02
        brk
        and     L0002,x
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
        and     L5A02,x
        .byte   $14
        .byte   $02
        ora     (L001E,x)
        .byte   $44
        .byte   $FF
        .byte   $07
        asl     L001E
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $07
        php
        cpy     #$0F
        .byte   $33
        .byte   $02
        and     (L0003,x)
        .byte   $02
        brk
        rol     L0002,x
        asl     L0203,x
        brk
        and     (L0002),y
        asl     L0203,x
        .byte   $04
        asl     a
LEFF8:  .byte   $33
LEFF9:  .byte   $02
        and     (L0003,x)
        .byte   $02
        brk
        rol     L0002,x
        .byte   $1E
        .byte   $03
LF002:  .byte   $02
        brk
        and     (L0002),y
        asl     L0203,x
        .byte   $04
        .byte   $07
        .byte   $33
        .byte   $02
        and     (L0003,x)
        .byte   $02
        brk
        rol     L0002,x
        asl     L0203,x
        brk
        and     (L0002),y
        asl     L0203,x
        .byte   $04
        .byte   $03
        .byte   $33
        .byte   $02
        and     (L0003,x)
        .byte   $02
        brk
        rol     L0002,x
        asl     L0203,x
        brk
        and     (L0002),y
        asl     L0204,x
        .byte   $04
        .byte   $02
        .byte   $33
        .byte   $02
        and     (L0004,x)
        .byte   $02
        brk
        rol     L0002,x
        asl     L0204,x
        brk
        and     (L00FF),y
        .byte   $07
        .byte   $02
        ror     L0C01
        ora     L0024
        .byte   $FF
        and     #$05
        rol     L000F
        php
        .byte   $02
        ror     L080C
        php
        brk
        ora     L05FF
        asl     L0094
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $07
        bit     L0080
        .byte   $0F
        .byte   $2F
        .byte   $02
        iny
        .byte   $03
        .byte   $02
        brk
        and     L00FF,x
        .byte   $14
        .byte   $02
        adc     L0A03
        .byte   $07
        and     L0080
LF06E:  .byte   $0F
        .byte   $4B
        ora     L0025
        .byte   $0F
        .byte   $0F
        .byte   $02
        adc     L0A03
        brk
        eor     #$00
        asl     L6D02
        .byte   $03
        asl     a
        brk
        .byte   $4B
LF082:  brk
        .byte   $0F
        .byte   $02
        adc     L0A04
        brk
        eor     #$00
        asl     L6D02
        ora     L000A,y
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
        and     L0002,x
        .byte   $FF
        .byte   $02
        .byte   $02
        ora     (L001C,x)
        .byte   $3A
        .byte   $FF
        php
        .byte   $02
        .byte   $5C
        asl     L0F02,x
        jsr     L0F80
        eor     (L0041,x)
        .byte   $FF
        .byte   $14
        .byte   $02
        .byte   $FF
        asl     L050E,x
        bit     L000F
        .byte   $0C
        ora     L0000
        .byte   $FF
        and     #$05
        bit     L0005
        .byte   $02
        .byte   $03
        .byte   $07
        bcs     LF06E
        .byte   $FF
        ora     (L000E,x)
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
LF0DA:  .byte   $27
LF0DB:  brk
        .byte   $0D
        .byte   $04
LF0DE:  .byte   $04
        rol     L000F
        .byte   $27
        brk
        ora     L2604
        ora     L0027
        .byte   $0F
        .byte   $02
        .byte   $FF
        ora     L0006
        lsr     L00F9
LF0EF:  .byte   $02
LF0F0:  .byte   $02
        .byte   $07
        and     (L0040,x)
        .byte   $0F
        .byte   $47
        brk
        ora     (L0000,x)
        .byte   $02
        lsr     L0002
        .byte   $02
        .byte   $04
LF0FE:  asl     a
        .byte   $47
        brk
        ora     (L0000,x)
        .byte   $02
        lsr     L0002
        .byte   $02
        .byte   $04
        .byte   $07
        .byte   $47
        brk
        ora     (L0000,x)
        .byte   $02
        lsr     L0002
        .byte   $02
        .byte   $04
        .byte   $03
        .byte   $47
        .byte   $FF
        ora     L0002
        .byte   $FF
        .byte   $03
        .byte   $02
        .byte   $0F
        ora     L0FC0,x
        .byte   $7F
        rol     L0002
        .byte   $FF
        ora     L0702,y
        .byte   $23
        rti

        .byte   $0F
        and     L05FF,y
        .byte   $02
        .byte   $2B
        .byte   $0B
        php
        ora     L001C
        .byte   $0F
        .byte   $07
        .byte   $FF
        ora     L0002,x
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
        ora     L0231
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
LF15D:  ora     #$02
        .byte   $04
        .byte   $07
        bit     LFF02
        ora     #$02
        .byte   $04
        ora     L0033
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
        ora     L2800
        .byte   $7F
        and     (L0005),y
        .byte   $1A
        .byte   $0F
        .byte   $03
        .byte   $FF
        .byte   $04
        .byte   $02
        .byte   $64
        ora     (L0006,x)
        .byte   $07
        ora     L0540,x
        .byte   $0B
        ora     L0001
        ora     (L000A,x)
        .byte   $02
        ora     (L0001,x)
        .byte   $04
        ora     L0000
        ora     (L000A,x)
        asl     L0063
        sed
        .byte   $03
        asl     L0004
        .byte   $0C
        .byte   $5C
        ora     L001D
        .byte   $02
        .byte   $53
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        asl     L000A
        .byte   $0F
        ora     L0F80,y
        .byte   $FF
        lsr     L190D
        .byte   $0F
        sbc     #$06
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        ora     L000C,x
        ora     L0003
        .byte   $FF
        and     L2405
        .byte   $0F
        ora     (L00FF,x)
        asl     L0002
        eor     L0A01,x
        .byte   $07
        ora     L0F80,x
        asl     L1D05,x
        asl     L020C
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
        rol     L0005,x
        asl     L060F,x
        .byte   $02
        lsr     L0803
        ora     L002B
        .byte   $0F
        .byte   $0D
        .byte   $FF
LF1ED:  .byte   $07
        .byte   $02
        .byte   $64
        ora     (L0006,x)
        ora     L001D
        .byte   $0F
        .byte   $32
        ora     L001D,x
        .byte   $02
        .byte   $05
LF1FA:  .byte   $32
        .byte   $02
        .byte   $FF
        ora     (L0000,x)
        .byte   $02
LF200:  .byte   $FF
        .byte   $01
LF202:  asl     L0000
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
        ora     L0F16
        asl     L0203,x
        asl     a:L0001,x
        .byte   $02
        asl     L080C,x
        brk
        .byte   $03
        .byte   $FF
        asl     L0002
        .byte   $6F
        .byte   $02
        asl     a
        ora     L000F
        .byte   $0F
        .byte   $42
        ora     L0017
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
        .byte   $2C
        .byte   $1D
LF24B:  clc
        .byte   $FF
        .byte   $3B
        .byte   $D3
        .byte   $3C
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
LF254:  bit     L0D08
        asl     L180F,x
        .byte   $0B
        .byte   $FF
        asl     L0002
        .byte   $FF
        ora     L000A
        .byte   $07
        jsr     L0D00
        .byte   $43
        ora     L0020
        .byte   $0F
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     L000A
        brk
        .byte   $43
        brk
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     L000A
        brk
        .byte   $43
        brk
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     L000A
        .byte   $04
        .byte   $0C
        .byte   $43
        .byte   $04
        asl     L0203
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     L000A
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
        ora     L000A
LF2A6:  .byte   $04
        php
        .byte   $43
        .byte   $04
        asl     a
        .byte   $03
        .byte   $02
        .byte   $FF
        .byte   $09
LF2AF:  brk
        .byte   $02
        .byte   $FF
        ora     L000A
        .byte   $04
        asl     L0043
        .byte   $04
        php
        .byte   $03
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     L000A
        .byte   $04
        .byte   $04
        .byte   $43
        .byte   $04
        asl     L0003
        .byte   $02
        .byte   $FF
        ora     #$00
        .byte   $02
        .byte   $FF
        ora     L000A
        .byte   $04
        .byte   $02
        .byte   $43
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $02
LF2D7:  .byte   $FF
        ora     #$00
LF2DA:  .byte   $02
        .byte   $FF
        ora     L000A
        .byte   $04
        .byte   $03
        .byte   $43
        .byte   $04
        ora     L0003
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $0B
        .byte   $0C
        ora     L981F
LF2ED:  .byte   $3C
        .byte   $34
        ora     L0F1E
        and     L0204,y
        .byte   $FF
        asl     L0C0C
        bvc     LF350
        rol     L1C0D,x
        .byte   $0F
        rol     LFF06,x
        .byte   $07
        asl     L00FF
        inc     L0208,x
        .byte   $0F
        .byte   $17
        brk
        .byte   $0F
        lsr     L022A,x
        .byte   $FF
        asl     L0002
        .byte   $04
        ora     L022A
        .byte   $FF
        asl     L0002
        .byte   $04
        asl     a
        rol     a
        .byte   $02
        .byte   $FF
        asl     L0002
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
        and     L000D,x
        rol     L000F
        lsr     L0004
        .byte   $FF
        php
        asl     L00FF
        sbc     L0604,x
        .byte   $1F
        asl     L0080,x
        asl     a
        .byte   $34
        .byte   $0F
        and     L1A0D,y
        .byte   $FF
        .byte   $34
        eor     L0006
        .byte   $FF
        .byte   $FB
        eor     L1F06
        .byte   $1A
        .byte   $80
        .byte   $0B
        .byte   $02
LF350:  .byte   $13
        and     L160D,y
        .byte   $FF
        ora     L0045
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $07
        .byte   $0C
        ora     LFF1D
        .byte   $7F
        .byte   $3F
        ora     L0E1B
        .byte   $7F
        ora     L00FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $0B
        asl     a
        .byte   $0F
        .byte   $22
        .byte   $80
        .byte   $0F
        lda     L0D24,x
        .byte   $22
        .byte   $07
        ldx     L000A
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $04
        php
        ora     L0F1A
        .byte   $7F
        asl     L0002
        .byte   $FF
        asl     L0008,x
        php
        .byte   $3C
        .byte   $10
LF38A:  .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $32
        bpl     LF398
        ora     L001A
        asl     L0203
        asl     L0A10,x
LF398:  .byte   $0F
        and     L0040
        asl     L5A00
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
        stx     L0003,y
        php
        ora     L0024
        .byte   $0F
        asl     a
        .byte   $02
        stx     L0003,y
        php
        brk
        .byte   $0B
        .byte   $02
        stx     L0003,y
        php
        brk
        ora     L0201
        .byte   $B3
        sta     a:L0000,x
        .byte   $FF
        .byte   $07
        .byte   $02
        .byte   $FF
        .byte   $0C
        php
        ora     L0F24
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
        and     L00FF,x
        .byte   $07
        .byte   $02
        .byte   $62
        clc
        asl     a
        .byte   $07
        ora     L0000,x
        .byte   $0F
        jmp     L1505

        asl     LFF04
        ora     L0002
        lsr     L0005,x
        php
        ora     L0028
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
LF410:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF4D2:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF4D7:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF4F4:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LF51B:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF539:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LF55D:  .byte   $FF
LF55E:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF59A:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF5A4:  .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF5C9:  brk
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
LF5DA:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF5FC:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF607:  brk
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
LF61C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
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
LF6DF:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
LF6EC:  .byte   $FF
LF6ED:  .byte   $FF
LF6EE:  .byte   $FF
        .byte   $FF
        ora     (L0001,x)
LF6F2:  ora     (L0001,x)
        stx     L8E8F
        .byte   $8F
        ror     L0074,x
        txs
        .byte   $74
        ror     L0001,x
        txs
        .byte   $9B
LF700:  .byte   $74
        ora     (L0074,x)
        .byte   $9B
        sty     L8C8D
        sta     L0101
        ora     (L0053,x)
        .byte   $5B
        ora     (L0001,x)
        ora     (L0076,x)
        .byte   $74
        ror     L0074,x
        ror     L0001,x
        ror     L0001,x
        .byte   $74
        ora     (L0074,x)
        ora     (L0001,x)
        .byte   $5B
        .byte   $53
        ora     (L0053,x)
        ora     (L005B,x)
        .byte   $53
        stx     L0C8F
        .byte   $5C
        ror     L0074,x
        .byte   $5C
        eor     L0176,x
        .byte   $5C
        .byte   $5C
        .byte   $74
        ora     (L005C,x)
        eor     L8D8C,x
        .byte   $5C
        ora     L938E
        stx     L768F
        .byte   $93
        txs
        .byte   $74
        .byte   $93
        ora     (L0074,x)
        .byte   $9B
        .byte   $93
        sta     L8D8C
        .byte   $22
        .byte   $23
        rol     a
        .byte   $2B
        .byte   $AB
        .byte   $8F
        .byte   $B3
        eor     L7476,y
        eor     (L0050),y
        ror     L0022,x
        eor     (L002A),y
        .byte   $74
        .byte   $23
        bvc     LF787
        sty     L58AA
        .byte   $B2
        .byte   $02
        .byte   $03
        asl     a
        .byte   $0B
        .byte   $02
        lsr     L660A,x
        bvs     LF7DB
        sei
        adc     L035F,y
        .byte   $67
        .byte   $0B
        .byte   $0B
        asl     a
        asl     a
        .byte   $0B
        ldx     L00A7
        brk
        brk
        ora     (L0043,x)
        ora     (L0043,x)
        rti

        eor     (L0040,x)
        eor     (L0041,x)
        .byte   $42
        eor     (L0042,x)
        .byte   $44
        ora     (L0044,x)
LF787:  ora     (L00CF,x)
        eor     L00BF,x
        and     #$40
        eor     (L0048,x)
        eor     #$41
        .byte   $42
        eor     #$4A
        .byte   $BF
        and     (L00BF,x)
        and     #$01
        .byte   $4B
        ora     (L0043,x)
        brk
        brk
        .byte   $12
        .byte   $1B
        brk
        brk
        .byte   $1B
        brk
        lsr     L4D5B
        ora     (L0060,x)
        adc     (L0064,x)
        bpl     LF7BF
        .byte   $1B
        .byte   $12
        .byte   $1B
        .byte   $1B
        brk
        .byte   $1B
        brk
        eor     L4D01
        ora     (L0001,x)
        ora     (L0060,x)
        adc     (L006C,x)
        ora     #$11
LF7BF:  bpl     LF7D3
        .byte   $07
        .byte   $12
        .byte   $0F
        jmp     (L6411)

        bpl     LF7D9
        ora     (L0011),y
        bpl     LF7EF
        .byte   $C2
        rol     a
        dex
        .byte   $12
        .byte   $2F
        .byte   $12
LF7D3:  .byte   $2F
        .byte   $C3
        .byte   $23
        .byte   $CB
        .byte   $2B
        .byte   $54
LF7D9:  eor     L0028,x
LF7DB:  and     #$6C
        adc     L6564
LF7E0:  jsr     L2821
        and     #$5C
        .byte   $5C
        lsr     L0057,x
        .byte   $62
        .byte   $63
        ora     (L0065),y
        ora     #$6D
        .byte   $11
LF7EF:  adc     L006C
        adc     L6B68
        ora     (L0001,x)
        .byte   $5C
        eor     L096C,x
        .byte   $64
        bpl     LF80D
        .byte   $11
LF7FE:  ora     #$10
        bpl     LF86F
        ora     (L0065),y
        plp
        and     #$20
        .byte   $21
LF808:  .byte   $0C
        .byte   $5C
        .byte   $54
        eor     L005C,x
LF80D:  .byte   $5C
        .byte   $54
        eor     L005D,x
        .byte   $5C
        .byte   $54
        eor     L005C,x
        ora     L5554
        plp
        and     #$0C
        .byte   $5C
        plp
LF81D:  and     #$5C
        .byte   $5C
LF820:  plp
        and     #$5C
        .byte   $0D
LF824:  lsr     L0057,x
        jsr     L6121
        .byte   $62
        bpl     LF83D
        adc     (L0063,x)
        bpl     LF89D
        rts

        .byte   $62
        jmp     (L1111)

        bpl     LF847
        ora     (L0011),y
        bpl     LF844
        ora     (L0011),y
LF83D:  adc     L0009
        adc     L1064
        .byte   $6C
        .byte   $11
LF844:  ror     a
        adc     #$00
LF847:  brk
        .byte   $0C
        .byte   $5C
        lsr     L0057,x
        eor     L560D,x
        .byte   $57
LF850:  .byte   $62
        adc     (L006A,x)
        adc     #$62
        .byte   $63
        ror     a
        .byte   $6B
        rts

        adc     (L0068,x)
        adc     #$20
        and     (L000C,x)
        .byte   $5C
        jsr     L5D21
        ora     L2120
        sta     L2029,x
LF869:  and     (L0028,x)
        .byte   $9C
        sty     L0021,x
        .byte   $56
LF86F:  and     #$20
        .byte   $94
LF872:  plp
        .byte   $57
        plp
        and     #$0C
        ora     L116C
        pla
        adc     #$10
        adc     L6B6A
LF880:  .byte   $0C
        ora     L5554
        plp
        and     #$01
        ora     (L0028,x)
        and     #$01
        .byte   $53
        ora     (L0001,x)
        .byte   $62
        adc     (L0001,x)
        ora     (L0062,x)
        .byte   $63
        ora     (L0065),y
        bpl     LF905
        ror     a
        .byte   $6B
LF89A:  brk
        brk
        pla
LF89D:  adc     #$00
        brk
        .byte   $04
        and     (L006C),y
        .byte   $73
        bmi     LF8D7
        .byte   $72
        .byte   $73
        bmi     LF8AE
        .byte   $72
        adc     L5C5C
LF8AE:  ora     (L0001,x)
        eor     L565C,x
LF8B3:  .byte   $57
        .byte   $53
        ora     (L0001,x)
        .byte   $53
        ora     (L0010),y
        adc     #$6A
        adc     (L0062,x)
        adc     #$6A
        ora     (L0045,x)
        ora     (L004B,x)
        pha
        lsr     a
        brk
        brk
        jmp     L4E45

        .byte   $4B
        rol     L0021
        rol     L0029
        ora     (L0045,x)
        ora     (L0045,x)
        eor     L4D45
LF8D7:  eor     L004D
        .byte   $27
        eor     L010F
        .byte   $27
        ora     (L000F,x)
        eor     L4D2F
        .byte   $2F
        ora     (L002F,x)
        ora     (L002F,x)
        .byte   $14
        ora     L001C,x
        ora     L6360,x
        .byte   $64
        adc     L0020
        .byte   $B7
        plp
        .byte   $B7
        rti

LF8F5:  .byte   $42
        pha
        lsr     a
        bpl     LF90B
        ror     a
        adc     #$01
        .byte   $07
        ora     (L000F,x)
        .byte   $80
        and     L0088
        .byte   $2D
        txa
LF905:  .byte   $7A
        .byte   $80
        and     L001B
        brk
        .byte   $12
LF90B:  brk
LF90C:  dey
        and     L2482
        .byte   $7B
        .byte   $7A
        bit     L0025
        txa
        bit     L2580
        .byte   $24
LF919:  sta     (L002C,x)
        .byte   $89
        dey
        .byte   $89
        .byte   $82
        .byte   $83
        .byte   $7B
        .byte   $8B
        bit     L0081
        and     L248B
        .byte   $81
LF928:  bit     L2589
        .byte   $83
        bit     L252D
        bit     L0025
        bit     L007B
        .byte   $7A
        and     L0083
        .byte   $7B
        .byte   $8B
        .byte   $82
        bit     L008A
        bit     L939A
        .byte   $76
LF93F:  .byte   $74
        txs
        .byte   $9B
        ror     L0001,x
        .byte   $93
        .byte   $9B
        .byte   $74
        ora     (L0080,x)
        and     L0088
        .byte   $7B
        txs
        .byte   $74
        ror     L0074,x
        bit     L0025
        .byte   $7A
        .byte   $7B
        .byte   $93
        ora     (L0074,x)
        ora     (L0076,x)
        .byte   $93
        ror     L0074,x
        .byte   $74
        .byte   $9B
        .byte   $74
        ora     (L0025,x)
        bit     L002D
        bit     L2524
        bit     L242D
        sta     (L007A,x)
        .byte   $89
        and     L0083
        and     L938B
        ora     (L00A3,x)
        ora     (L0074,x)
        ora     (L000C,x)
        .byte   $5C
        .byte   $74
        ora     (L005D,x)
        ora     L9BA3
        .byte   $A3
        ora     (L00A3,x)
        ora     (L0074,x)
        ora     (L0080,x)
        sta     (L0088,x)
        .byte   $89
        .byte   $A3
        ora     (L00A3,x)
        ora     (L000C,x)
        .byte   $5C
        ror     L0093,x
        eor     L765C,x
        .byte   $93
        txs
        sty     L8C76
        .byte   $74
        ora     (L0074,x)
        .byte   $0C
        ror     L0074,x
        .byte   $5C
        .byte   $5C
        ror     L008C,x
        eor     L9A5C,x
        .byte   $93
        ror     L008C,x
        ror     L0016,x
        ror     L0092,x
        asl     L0001,x
        .byte   $92
        ora     (L0076,x)
        sty     L8C76
        ror     L0074,x
        asl     L000E
        ror     L0001,x
        asl     L0006
        .byte   $74
        ora     (L000E,x)
        asl     L000C
        .byte   $5C
LF9C2:  .byte   $93
        .byte   $9B
        eor     L9A5C,x
        .byte   $93
        .byte   $5C
        .byte   $5C
        txs
        .byte   $9B
        eor     L930D,x
        .byte   $9B
        ror     L008C,x
        txs
        sty     L7476
        eor     L765C,x
        .byte   $74
        .byte   $0C
        .byte   $5C
        ror     L0001,x
        eor     L740D,x
        ora     (L00A3,x)
        ora     (L002D,x)
        bit     L2524
        .byte   $A3
        ora     (L00A3,x)
        .byte   $9B
LF9EC:  .byte   $A3
        ora     (L0074,x)
        .byte   $9B
        .byte   $7A
        .byte   $7B
LF9F2:  and     L0024
        .byte   $7A
        .byte   $89
        and     L0083
        txs
        .byte   $74
LF9FA:  .byte   $5C
LF9FB:  .byte   $5C
        txs
        .byte   $9B
        eor     L745C,x
        .byte   $9B
        .byte   $5C
        .byte   $5C
        txs
        .byte   $74
        eor     L9A5C,x
        .byte   $9B
        .byte   $5C
        .byte   $5C
        .byte   $74
        .byte   $9B
        eor     L9A5C,x
        sty     L5C5D
        ror     L0093,x
        ror     L008C,x
        txs
        .byte   $9B
        .byte   $5C
        ora     L9B74
        .byte   $A3
        ora     (L000C,x)
        .byte   $5C
        .byte   $93
        ora     (L005C,x)
        .byte   $5C
        ror     L0001,x
        eor     L930D,x
        ora     (L0074,x)
        ora     (L0016,x)
        ora     (L0076,x)
        .byte   $74
        txs
        asl     L0092,x
        ora     (L0074,x)
        .byte   $9B
        ror     L0092,x
        ror     L0074,x
        ror     L0001,x
        eor     L745C,x
        ora     (L005C,x)
        .byte   $5C
        .byte   $74
        ora     (L005D,x)
        .byte   $5C
        .byte   $74
        asl     L0074,x
        .byte   $9B
LFA4C:  asl     L0075,x
        ror     L007D,x
        ror     L0001,x
        .byte   $5C
        lda     (L00A3,x)
        .byte   $9B
        .byte   $74
        ora     (L009A,x)
        .byte   $74
        ror     L0016,x
        .byte   $5C
        .byte   $5C
        ror     L0093,x
        ror     L0092,x
        txs
        .byte   $74
        eor     L935C,x
        ora     (L008A,x)
        .byte   $8B
        .byte   $80
        .byte   $81
LFA6C:  ror     L0016,x
        txs
        .byte   $92
        ror     L0074,x
        ror     L0016,x
        txs
        .byte   $92
        ror     L0074,x
LFA78:  txs
        .byte   $9B
        ror     L0016,x
        .byte   $74
        .byte   $9B
        ror     L7F01,x
        asl     L0074,x
        .byte   $01
LFA84:  ror     L0001,x
        asl     L0001,x
        sta     L8D01
        ora     (L005B,x)
        .byte   $53
        ora     (L0001,x)
        .byte   $83
        ora     (L008B,x)
        .byte   $53
        asl     L0001,x
        ldy     L0001,x
        tay
        .byte   $24
LFA9A:  .byte   $B0
LFA9B:  bit     L01B6
        ldx     L0001,y
        .byte   $0C
        lda     (L00C5,x)
        .byte   $93
        ror     L00CD,x
        ror     L00CD,x
        dec     LCE01
        ora     (L0090,x)
        .byte   $01
LFAAE:  tya
        ora     (L0076,x)
        bcc     LFB29
        tya
        .byte   $32
        .byte   $9B
        eor     L9A5C,x
        iny
        eor     LC95C,x
        .byte   $9B
        .byte   $5C
        .byte   $5C
        txs
        .byte   $32
        .byte   $5C
        .byte   $5C
        ror     L00C5,x
        ror     L00CD,x
        dec     L0001
        dec     L7401
        asl     L0074,x
        ora     (L009A,x)
        iny
        ror     L0096,x
        cmp     #$9B
        .byte   $97
        ora     (L0016,x)
        ror     L7F76,x
        ror     L009E,x
LFADE:  ror     L003A,x
        .byte   $9F
        ora     (L003B,x)
        ora     (L0000,x)
        brk
        brk
        brk
        jsr     L28C7
        .byte   $B7
LFAEC:  brk
LFAED:  brk
        brk
        brk
        brk
        .byte   $01
LFAF2:  pha
        lsr     a
        rol     L0014
        cpy     #$02
        brk
        ora     (L0068),y
        ror     a
        .byte   $0C
        ora     L12E0
        .byte   $04
        asl     L0000
        brk
        .byte   $80
        sta     (L00C4,x)
        brk
        bit     L0025
        brk
        rts

        ldy     #$55
        bvc     LFB10
LFB10:  asl     a
        php
        ora     (L0001,x)
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

        ora     (L0001,x)
        .byte   $22
        brk
        rol     L0016
        asl     L0014,x
        brk
LFB29:  brk
        bpl     LFB4F
        .byte   $14
        ora     (L0011),y
        ora     (L0064),y
        ror     L0066
        ora     (L0097,x)
        ora     (L0000,x)
        brk
        .byte   $64
        ror     L0066
        ora     (L0097,x)
        .byte   $E7
        inc     L004E
        .byte   $E2
        inx
        brk
        lsr     LCF0A
        .byte   $FC
        inc     LC3E2,x
        brk
        ora     (L000D,x)
        .byte   $0E
        lsr     a
LFB4F:  cmp     L1626
        asl     L0016,x
        bit     L0004
        ror     a
LFB57:  sbc     L0424
        asl     L0004
        bit     L0006
        .byte   $5A
        cmp     LCAC8,x
        sty     L0086
        .byte   $E2
        .byte   $54
        inx
        brk
        brk
        brk
        ldy     L00A6
        .byte   $22
        inc     L0054,x
        inc     L008C,x
        txa
        sta     a:L0088
        brk
        brk
        brk
        .byte   $AC
        tax
LFB7A:  .byte   $AD
LFB7B:  tay
        .byte   $E2
        .byte   $D7
        ora     (L00C3,x)
        .byte   $42
        brk
        bmi     LFB7A
        dec     L1000,x
        jmp     L0065

        inx
        ora     (L0028,x)
        rol     a
        bpl     LFB57
        ldx     #$0E
        rol     LA2F6
        brk
        sty     L0086
        nop
        brk
        .byte   $D7
        ora     (L0000,x)
        brk
        brk
        brk
        .byte   $FA
        brk
        .byte   $D7
        jmp     (L0101)

        ora     (L00A3,x)
        .byte   $CF
        ora     (L0084,x)
        stx     L0000
        brk
        brk
        ora     (L0000,x)
        brk
        ora     (L00E7,x)
        brk
        ora     (L00F7,x)
        inc     LE301,x
        ror     a:L00E7
        ora     (L00E3,x)
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
        ora     (L0049,x)
        .byte   $4B
        .byte   $27
        ora     L00C1,x
        .byte   $03
        brk
        .byte   $11
LFBFA:  adc     #$6B
        ora     LE10F
        .byte   $13
        ora     L0007
        adc     (L0000,x)
        .byte   $80
        .byte   $80
        cmp     L0000
        and     L0026
        brk
        adc     (L00A1,x)
        lsr     L0001,x
        brk
        .byte   $0B
        ora     #$4D
        ora     (L0089,x)
        .byte   $8B
        ldx     #$63
        .byte   $2B
        and     #$6D
        .byte   $6F
        lda     #$AB
        brk
        eor     (L0001,x)
        ora     (L0023,x)
        brk
        asl     L0027,x
        asl     L0011,x
        brk
LFC29:  brk
        .byte   $22
        bpl     LFC3E
        ora     L0011,x
        ora     L0066,x
        ror     L0067
        cpx     L0001
        cpx     L0000
        brk
        ror     L0066
        .byte   $67
        sbc     L0001
        .byte   $01
LFC3E:  ora     (L0001,x)
        .byte   $E3
        sbc     #$00
        ora     (L00CE,x)
        sbc     LFFFD,x
        dec     L00E3
        brk
        lsr     L0D0D
        .byte   $CC
        .byte   $49
LFC50:  asl     L0020,x
        asl     L0027,x
        .byte   $07
        ora     L00EC,x
        adc     #$07
        ora     L0007
        ora     L0005,x
        ora     L00DC,x
        eor     LCBC9,y
        sta     L0087
        .byte   $E3
        dec     L00E9
        brk
        brk
        brk
        lda     L00A7
        .byte   $22
        dec     L00E3
        .byte   $E3
        .byte   $89
        stx     L8F8B
        brk
        brk
        brk
        brk
        lda     #$AE
        .byte   $AB
        .byte   $AF
        dec     L0001
        .byte   $C2
        .byte   $E3
        jmp     LF700

        .byte   $F7
        .byte   $DF
        brk
        .byte   $42
        bpl     LFC50
        brk
        sbc     #$01
        .byte   $29
LFC8D:  .byte   $2B
        adc     L0010
        ldx     #$0F
        .byte   $2F
        .byte   $E3
        .byte   $A3
        brk
        sta     L0087
        brk
        brk
        ora     (L00C2,x)
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $6F
        .byte   $C2
        .byte   $2E
        .byte   $3E
LFCA6:  .byte   $3F
        ora     (L0001,x)
        dec     L8785
        brk
        brk
        brk
        ldx     #$00
        brk
        cpx     L0001
        brk
        inc     L0001,x
        ora     (L00E2,x)
        ora     (L00E4,x)
        jmp     (LE200)

        ora     (L00FD,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFCE2:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFCF0:  brk
        ora     (L0058,x)
        .byte   $5A
        bit     L0014
        bne     LFD0A
        brk
        ora     (L005A),y
        cli
LFCFC:  .byte   $1C
        ora     L32F0,x
        ora     (L0011),y
        brk
        brk
        bcc     LFD4B
        .byte   $D4
        brk
        .byte   $14
        .byte   $11
LFD0A:  brk
        bvs     LFC8D
        sta     (L0050,x)
        brk
        .byte   $1A
        clc
        .byte   $5C
        ora     (L0098,x)
        txs
        .byte   $E7
        .byte   $12
        .byte   $3A
        sec
        .byte   $7C
        ror     LBAB8,x
        brk
        rti

        .byte   $62
        ora     (L00B4,x)
        brk
        bit     L0011
        ora     (L0024),y
        brk
        brk
        bpl     LFCE2
        .byte   $14
        ora     (L0034),y
        ora     (L0064),y
        ror     L0066
        ora     (L0097,x)
        ora     (L0000,x)
        brk
        .byte   $74
        ror     L0076,x
        ora     (L0096,x)
        .byte   $E7
LFD3E:  .byte   $E7
        ora     (L007A,x)
        .byte   $73
        brk
        ora     (L001A,x)
        clc
        .byte   $3A
        sec
        .byte   $7A
        .byte   $7A
        brk
LFD4B:  ora     (L001D,x)
        asl     LDD5A,x
        .byte   $14
        ora     (L0011),y
        ora     (L0014),y
        ora     (L0058),y
        cmp     L2136,y
        .byte   $34
        .byte   $34
        .byte   $14
        ora     (L006A),y
        sbc     a:L0000
        sty     L0043,x
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
        sta     a:L0098,x
        brk
        brk
        brk
        ldy     LBDBA,x
        clv
        .byte   $F2
        .byte   $D7
        ora     (L00D3,x)
        .byte   $52
        brk
        .byte   $F2
        .byte   $F4
        inc     L1000
        .byte   $53
        sed
LFD89:  brk
        bcs     LFD3E
        .byte   $82
        .byte   $92
        bpl     LFD89
        ldx     #$1E
        rol     LA2F4
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
        ora     (L0001,x)
        ora     (L00A3,x)
        bit     L943C
        bit     L0000
        brk
        brk
        ora     (L0000,x)
        brk
        ora     (L00E7,x)
        brk
        ora     (L00F5,x)
        .byte   $A3
        .byte   $B2
        .byte   $F3
        ror     a:L00E7,x
        ora     (L00F3,x)
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
        ora     (L0059,x)
        .byte   $5B
        and     L0025
        cmp     (L0013),y
        brk
        ora     (L005B),y
        .byte   $59
LFDFC:  .byte   $1D
LFDFD:  .byte   $1F
        sbc     (L0033),y
LFE00:  ora     (L0017),y
        adc     (L0000),y
        sta     (L0046),y
        cmp     L0000,x
        ora     (L0017),y
        brk
        adc     (L0080),y
        .byte   $80
        ora     (L0000,x)
        .byte   $1B
        ora     L5F5D,y
        sta     LA29B,y
        .byte   $13
        .byte   $3B
        and     L7F7D,y
        lda     L00BB,y
        eor     (L00FB,x)
        .byte   $FB
        ldx     L0000,y
        ora     (L0025),y
        ora     (L0011),y
        brk
        brk
        ldy     L0010,x
        ora     (L0025),y
        .byte   $34
        and     L0066
        ror     L0067
LFE33:  cpx     L0001
        cpx     L0000
        brk
        ror     L0076,x
        .byte   $77
        cpx     L0001
        ora     (L0001,x)
        .byte   $4F
        .byte   $7B
        lsr     L4F00,x
        .byte   $1B
        ora     L393B,y
        .byte   $7B
        .byte   $7B
        brk
        ora     (L001D,x)
        ora     L59DC,x
        ora     (L0017),y
        ora     (L0025),y
        .byte   $17
        and     L00D8
        .byte   $5B
        and     L0072,x
        and     L0037,x
        ora     (L0025),y
        cpx     a:L0069
        brk
        sta     L0044,x
        .byte   $F3
        dec     L00E9,x
        brk
        .byte   $DB
        brk
        lda     L00B7,x
        .byte   $22
        dec     L00F3,x
        .byte   $F3
        sta     L9B9E,y
        .byte   $9F
        brk
        brk
        brk
        brk
        lda     LBBBE,y
        .byte   $BF
        dec     L0001,x
        .byte   $D2
        .byte   $F3
        .byte   $53
        brk
LFE82:  .byte   $F3
        sbc     L00EF,x
        brk
        .byte   $52
        bpl     LFE82
        brk
        lda     (L00B3),y
        .byte   $83
        .byte   $93
        sed
        bpl     LFE33
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
        rol     L3F3E,x
        ora     (L002D,x)
        and     L4425,x
        brk
        brk
        brk
        ldx     #$00
        brk
        cpx     L005C
        brk
        .byte   $F4
        ora     (L0001,x)
        .byte   $F2
        .byte   $B3
        cpx     L007C
        brk
        .byte   $F2
        ora     (L00A2,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LFEE1:  brk
        brk
        brk
        brk
LFEE5:  brk
        brk
        brk
LFEE8:  brk
        brk
        brk
LFEEB:  brk
LFEEC:  brk
LFEED:  brk
        brk
        brk
LFEF0:  brk
        brk
LFEF2:  and     (L0031),y
        and     (L0031),y
LFEF6:  .byte   $43
        ora     (L0000,x)
        .byte   $31
LFEFA:  and     (L0031),y
LFEFC:  .byte   $12
LFEFD:  .byte   $12
LFEFE:  .byte   $43
LFEFF:  .byte   $01
LFF00:  .byte   $31
LFF01:  .byte   $31
LFF02:  brk
        brk
LFF04:  and     (L0031),y
LFF06:  .byte   $23
        brk
LFF08:  and     (L0031),y
        brk
        brk
        and     (L0031),y
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $33
        .byte   $33
        brk
        ora     (L0000,x)
        brk
        brk
LFF1B:  brk
        .byte   $33
LFF1D:  .byte   $33
        brk
        .byte   $01
LFF20:  brk
        brk
        ora     (L0000,x)
        and     (L0031),y
        and     (L0031),y
        brk
        brk
        ora     (L0001,x)
        and     (L0031),y
        and     (L0031),y
        .byte   $32
        .byte   $32
        .byte   $32
        brk
        brk
        brk
        ora     (L0001,x)
        .byte   $32
        .byte   $32
        .byte   $32
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
        brk
        brk
        brk
        brk
        brk
        .byte   $12
        .byte   $12
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        ora     (L0001,x)
        eor     (L0041,x)
        brk
        brk
        brk
        brk
        ora     (L0001,x)
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
        bmi     LFFA6
        bmi     LFFA8
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        brk
        brk
        brk
        brk
        ora     (L0001,x)
        brk
        brk
        .byte   $23
        brk
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        brk
        brk
        brk
        ora     (L0001,x)
        brk
        .byte   $12
        brk
        brk
        brk
        brk
        eor     (L0041,x)
        .byte   $53
        brk
        brk
        brk
        ora     (L0001,x)
        ora     (L0000,x)
        .byte   $53
        brk
        brk
        brk
        brk
        brk
LFFA6:  brk
        brk
LFFA8:  brk
        brk
        eor     (L0041,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFFE1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LFFE8:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sei
        inc     LFFE1
        cld
        .byte   $4C
LFFF6:  brk
        .byte   $FE
        brk
LFFF9:  brk
LFFFA:  brk
        brk
LFFFC:  .byte   $33
LFFFD:  .byte   $04
LFFFE:  brk
        brk
