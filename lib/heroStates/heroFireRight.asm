.segment "CODE"

stayRightFire:
    .byt $17 ; pistol
    .byt $00, $01
    .byt $10, $11
    .byt $06, $07
    .byt $30, $31
stayRightFireOffsetsX:
    .byt $07
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
    .byt $00, $08
stayRightFireOffsetsY:
    .byt $0C
    .byt $00, $00
    .byt $08, $08
    .byt $10, $10
    .byt $18, $18
stayRightFireAttributes:
    .byt %00010111
    .byt %00010110, %00010110
    .byt %00010110, %00010110
    .byt %00010101, %00010101
    .byt %00010101, %00010101

.segment "CODE"

.proc heroFireRightFirstProc
  RTS
.endproc

.proc drawFireRight
    LDX #$09
    JSR setPrgBank

    LDA heroYCoordinate
    STA tempY

    LDA heroXCoordinate
    STA tempX

    LDA #<stayRightFireOffsetsX
    STA offsetXLB
    LDA #>stayRightFireOffsetsX
    STA offsetXHB

    LDA #<stayRightFireOffsetsY
    STA offsetYLB
    LDA #>stayRightFireOffsetsY
    STA offsetYHB

    LDA #<stayRightFireAttributes
    STA attributeLB
    LDA #>stayRightFireAttributes
    STA attributeHB

    LDA #<stayRightFire
    STA objectLB
    LDA #>stayRightFire
    STA objectHB

    LDA #$09
    STA loopCount

    JSR drawFramePPU
    RTS
.endproc