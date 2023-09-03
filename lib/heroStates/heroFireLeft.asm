.segment "ZEROPAGE"
    changeAttribute: .res 1
    counterFrames: .res 1

.segment "CODE"

stayLeftFire:
    .byt $17 ; pistol
    .byt $00, $01
    .byt $10, $11
    .byt $06, $07
    .byt $30, $31
stayLeftFireOffsetsX:
    .byt $02
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
stayLeftFireOffsetsY:
    .byt $0C
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayLeftFireAttributes:
    .byt %01010111
    .byt %01010110, %01010110
    .byt %01010110, %01010110
    .byt %01010101, %01010101
    .byt %01010101, %01010101

.segment "CODE"

.proc heroFireLeftFirstProc
  RTS
.endproc

.proc drawFireLeft
    LDX #$09
    JSR setPrgBank

    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<stayLeftFireOffsetsX
    STA offsetXLB
    LDA #>stayLeftFireOffsetsX
    STA offsetXHB

    LDA #<stayLeftFireOffsetsY
    STA offsetYLB
    LDA #>stayLeftFireOffsetsY
    STA offsetYHB

    LDA #<stayLeftFireAttributes
    STA attributeLB
    LDA #>stayLeftFireAttributes
    STA attributeHB

    LDA #<stayLeftFire
    STA objectLB
    LDA #>stayLeftFire
    STA objectHB

    LDA #$09
    STA loopCount

    JSR drawFramePPU
    RTS
.endproc