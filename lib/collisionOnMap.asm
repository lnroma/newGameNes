.segment "ZEROPAGE"
   isGravity: .res 1
   xOffset: .res 1
   nameTableLowByte: .res 1
   nameTableHighByte: .res 1
   collisionTmp: .res 1
   currentAdc: .res 1
   currentNameTable: .res 1
   fakeXCoordinate: .res 1
   collideDetection: .res 1 ; remove in to be

   collideX: .res 1
   collideY: .res 1
   collideFlag: .res 1

   collisionFirstLB: .res 1
   collisionSecondLB: .res 1

   collisionRAM1: .res 128
;   collisionRAM2: .res 128
   currentNameTableCollide: .res 1

   collisionPart: .res 1
   tmpCompare: .res 1

.segment "RODATA"

collisionRectangle:
  ;    begin x, y
  .byt $01, $70
  ;    end x, y
  .byt $F8, $D8

; collision polygon 12*8, 27*8 and 15*8, 25*8
; 13,27 | 18,27 | 14,26 | 19,26 | 15,25 | 20,25
; 68,D8 | 90,D8 | 70,D0 | 98,D0 | 78,C8 | A0,C8
collisionPolygonOneX:
  .byt $68 ; 1
  .byt $90 ; 2
  .byt $70 ; 3

  .byt $98 ; 4
  .byt $78 ; 5
  .byt $A0 ; 6
collisionPolygonOneY:
  .byt $D8
  .byt $D8
  .byt $D0

  .byt $D0
  .byt $C8
  .byt $C8

.segment "CODE"
    COLLIDE_WATER =     %00000001
    COLLIDE_PLACE =     %00000011
    COLLIDE_BORDER =    %00000010

.proc initVar
    LDA #00
    STA collisionPart

    rts
.endproc

.proc collisionOnMapUp
    LDY collideY
    LDX #01
    TYA
    CMP collisionRectangle, x
    BCS collisionYNo
    BCC collisionYYes
collisionYNo:
    LDA #%00000011
    STA collideFlag
    RTS
collisionYYes:
    LDA #%00000000
    STA collideFlag
    RTS
.endproc

.proc collisionOnMapLeft
    LDY collideX
    LDX #00
    TYA
    CMP collisionRectangle, x
    BCC collisionNo
    BCS collisionYes
collisionYes:
    LDA #%00000011
    STA collideFlag
    RTS
collisionNo:
    LDA #%00000000
    STA collideFlag
    RTS
.endproc

.proc collisionOnPolygonX
    LDY collideX
    LDX #02
    TYA
    CMP collisionPolygonOneX, x
    BCS checkCollideY
    BCC collisionYes
checkCollideY:
    LDA collideY
    CMP collisionPolygonOneY, x
    BCS collisionNo
    BCC collisionYes
collisionYes:
    LDA #%00000011
    STA collideFlag
    RTS
collisionNo:
    LDA #%00000000
    STA collideFlag
    RTS
.endproc

.proc collisionOnPolygonY
    LDA collideY
    LDX #02
    CMP collisionPolygonOneY, x
    BCS collisionNo
    BCC collisionYes
collisionYes:
    LDA #%00000011
    STA collideFlag
    RTS
collisionNo:
    LDA #%00000000
    STA collideFlag
    RTS
.endproc

.proc collisionOnMapRight
    JSR collisionOnPolygonX
    RTS
.endproc

.proc collisionOnMapDown
    LDY collideY
    LDX #03
    TYA
    CMP collisionRectangle, x
    BCS collisionNo
    BCC collisionYes
collisionYes:
    LDA #%00000011
    STA collideFlag
    RTS
collisionNo:
    LDA #%00000000
    STA collideFlag
    RTS
.endproc