.segment "CODE"

stayLeft:
    .byt $00, $01
    .byt $10, $11
    .byt $20, $21
    .byt $30, $31
stayLeftOffsetsX:
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
    .byt $08, $00
stayLeftOffsetsY:
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayLeftAttributes:
    .byt %01010110, %01010110
    .byt %01010110, %01010110
    .byt %01010101, %01010101
    .byt %01010101, %01010101

.segment "CODE"

.proc heroStayLeftFirstProc
  RTS
.endproc

.proc drawStayLeft
    LDX #$09
    JSR setPrgBank

    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<stayLeftOffsetsX
    STA offsetXLB
    LDA #>stayLeftOffsetsX
    STA offsetXHB

    LDA #<stayLeftOffsetsY
    STA offsetYLB
    LDA #>stayLeftOffsetsY
    STA offsetYHB

    LDA #<stayLeftAttributes
    STA attributeLB
    LDA #>stayLeftAttributes
    STA attributeHB

    LDA #<stayLeft
    STA objectLB
    LDA #>stayLeft
    STA objectHB

    LDA #$08
    STA loopCount

    JSR drawFramePPU
    RTS
.endproc