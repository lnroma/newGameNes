.segment "CODE"

stayRight:
    .byt $00, $01
    .byt $10, $11
    .byt $20, $21
    .byt $30, $31

stayRightOffsetsX:
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
stayRightOffsetsY:
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayRightAttributes:
    .byt %00010110, %00010110
    .byt %00010110, %00010110
    .byt %00010101, %00010101
    .byt %00010101, %00010101

.proc heroStayFirstProc
  RTS
.endproc

.segment "CODE"

.proc drawStayRight
    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<stayRightOffsetsX
    STA offsetXLB
    LDA #>stayRightOffsetsX
    STA offsetXHB

    LDA #<stayRightOffsetsY
    STA offsetYLB
    LDA #>stayRightOffsetsY
    STA offsetYHB

    LDA #<stayRightAttributes
    STA attributeLB
    LDA #>stayRightAttributes
    STA attributeHB

    LDA #<stayRight
    STA objectLB
    LDA #>stayRight
    STA objectHB

    LDA #$08
    STA loopCount

    JSR drawFramePPU
    RTS
.endproc
