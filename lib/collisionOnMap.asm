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
   collisionFirstHB: .res 1

   collisionSecondLB: .res 1

   collisionPart: .res 1
   isStageEnd: .res 1

.segment "RODATA"

bit_mask:
  .byt %10000000
  .byt %01000000
  .byt %00100000
  .byt %00010000
  .byt %00001000
  .byt %00000100
  .byt %00000010
  .byt %00000001

level2map1part:
  .byt %00000000, %00000000, %00000000, %00000000 ; 4
  .byt %00000000, %00000000, %00000000, %00000000 ; 8
  .byt %00000000, %00000000, %00000000, %00000000 ; 02
  .byt %00000000, %00000000, %00000000, %00000000 ; 06
  .byt %00000000, %00000000, %00000000, %00000000 ; 08
  .byt %00000000, %00000000, %00000000, %00000000
  .byt %00000000, %00000000, %00000000, %00000000
  .byt %00000000, %00000000, %00000000, %00000000
  .byt %00000000, %00000000, %00000000, %00000000
  .byt %00000000, %00000000, %00000000, %00000000 ; 00
  
  .byt %00000000, %00000000, %00000000, %00000000
  .byt %00000000, %00000000, %00000000, %00000000
  .byt %00000000, %00000000, %00000000, %00000000
  .byt %11111111, %00000000, %00111111, %11111111
  .byt %11111111, %10000000, %01111111, %11111111
  .byt %11111111, %11000000, %11111111, %11111111
  .byt %11111111, %11100001, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111 ; 21
  
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111
  .byt %11111111, %11111111, %11111111, %11111111 ; 27
  .byt %11111111, %11111111, %11000111, %11111111
  .byt %11111111, %11111111, %10001111, %11111111
  .byt %00000000, %00000000, %00000000, %00000000

level2map2part:
    .byt %00000000, %00000000, %00000000, %00000000 ; 4
    .byt %00000000, %00000000, %00000000, %00000000 ; 8
    .byt %00000000, %00000000, %00000000, %00000000 ; 02
    .byt %00000000, %00000000, %00000000, %00000000 ; 06
    .byt %00000000, %00000000, %00000000, %00000000 ; 08
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000 ; 00
    
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111 ; 21
    
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111 ; 27
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %00000000, %00000000, %00000000, %00000000

level2map3part:
    .byt %00000000, %00000000, %00000000, %00000000 ; 4
    .byt %00000000, %00000000, %00000000, %00000000 ; 8
    .byt %00000000, %00000000, %00000000, %00000000 ; 02
    .byt %00000000, %00000000, %00000000, %00000000 ; 06
    .byt %00000000, %00000000, %00000000, %00000000 ; 08
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000 ; 00
      
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %10000000, %00000000, %00000000, %00000000
    .byt %11000000, %00000011, %11000000, %00000000
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111 ; 21
      
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111 ; 27
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %00000000, %00000000, %00000000, %00000000
    
level2map4part:
    .byt %00000000, %00000000, %00000000, %00000000 ; 4
    .byt %00000000, %00000000, %00000000, %00000000 ; 8
    .byt %00000000, %00000000, %00000000, %00000000 ; 02
    .byt %00000000, %00000000, %00000000, %00000000 ; 06
    .byt %00000000, %00000000, %00000000, %00000000 ; 08
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000 ; 00

    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %00000000, %00000000, %00000000, %00000000
    .byt %10000000, %00000000, %00000000, %00000000
    .byt %11000000, %00000011, %11000000, %00000000
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111 ; 21

    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111 ; 27
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %11111111, %11111111, %11111111, %11111111
    .byt %00000000, %00000000, %00000000, %00000000

collisionMap1Low:
  .byt <level2map1part, <level2map2part, <level2map3part, <level2map4part
collisionMap1High:
  .byt >level2map1part, >level2map2part, >level2map3part, >level2map4part

.segment "CODE"
    COLLIDE_WATER =     %00000001
    COLLIDE_PLACE =     %00000011
    COLLIDE_BORDER =    %00000010

.proc initVar
    rts
.endproc

.proc calculateCollisionMap
    LDA scrollPosition
    AND #%00000111
    BEQ skipCalculate

    INC offsetColumn

  skipCalculate:
    RTS
.endproc

.proc calcHeroPosition
    LDA scrollPosition
    CLC
    ADC heroXCoordinate
    CMP #$FF
    BEQ collisionPartIncrement
    RTS
collisionPartIncrement:
    LDA isStageEnd
    CMP #01
    BEQ return
    INC collisionPart
return:
    RTS
.endproc

.proc getCurrentCollisionMap
    LDY collisionPart
    LDA collisionMap1Low, y
    STA collisionFirstLB
    LDA collisionMap1High, y
    STA collisionFirstHB

    RTS
.endproc

.proc collideNo
    LDA #01
    STA isGravity
;    inc heroYCoordinate
;    INC heroYCoordinate
    RTS
.endproc

.proc collideYes
    LDA #00
    STA isGravity
    STA jumpHeight
    STA isJump
    RTS
.endproc

.proc collisionOnMap
    JSR calcHeroPosition
    JSR getCurrentCollisionMap

    LDA collideX
    LSR
    LSR
    LSR
    LSR
    LSR
    LSR
    STA zacumulator

    LDA collideY
    LSR
    LSR
    LSR
    ASL
    ASL
    CLC
    ADC zacumulator
    TAY

    LDA collideX
    LSR
    LSR
    LSR
    AND #7
    TAX

    LDA (collisionFirstLB), y
    AND bit_mask, x
    BNE collisionNo
    BEQ collisionYes ; if Z flag is set after and 0
collisionYes:
    LDA #%00000000
    STA collideFlag

    RTS
collisionNo:
    LDA #%00000011
    STA collideFlag

    RTS
.endproc

.proc collisionOnMapLeft
    LDA heroYCoordinate
    CLC
    ADC #17
    STA collideY

    LDA heroXCoordinate
    PHA
    ADC #1
    CMP scrollPosition
    BEQ leftCollision
    PLA
    ADC scrollPosition
    SBC #1
    STA collideX
    JMP collisionOnMapLabel
leftCollision:
    LDA #$00
    STA collideFlag
collisionOnMapLabel:
    JSR collisionOnMap
    RTS
.endproc

.proc collisionOnMapRight
    LDA heroYCoordinate
    CLC
    ADC #17
    STA collideY

    LDA heroXCoordinate
    CLC
    ADC scrollPosition
    ADC #1
    STA collideX

    JSR collisionOnMap
    RTS
.endproc

.proc collisionOnMapUp
    LDA heroYCoordinate
    CLC
    ADC #16
    STA collideY

    LDA heroXCoordinate
    CLC
    ADC scrollPosition
    STA collideX

    JSR collisionOnMap
    RTS
.endproc

.proc collisionOnMapDown
    LDA heroYCoordinate
    CLC
    ADC #17
    STA collideY

    LDA heroXCoordinate
    CLC
    ADC scrollPosition
    STA collideX

    JSR collisionOnMap
    RTS
.endproc