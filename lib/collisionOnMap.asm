.segment "ZEROPAGE"
   isGravity: .res 1
   xOffset: .res 1
   nameTableLowByte: .res 1
   nameTableHighByte: .res 1
   collisionTmp: .res 1
   currentAdc: .res 1
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

map_level_1_collision_map_1:
  .byt %00000000, %00000000, %00000000, %01000000 ; 1 левая часть экрана
  .byt %00000000, %00000000, %00000000, %01000000 ; 2 
  .byt %00000000, %00000000, %00000000, %01000000 ; 3
  .byt %00000000, %00000000, %00000000, %01000000 ; 5
  .byt %00000000, %00000000, %00000000, %01000000 ; 6
  .byt %00000000, %00000000, %00000000, %01000000 ; 7
  .byt %00000000, %00000000, %00000000, %01000000 ; 8
  .byt %00000000, %00000000, %00000000, %01000000 ; 9
  .byt %00000000, %00000000, %00000000, %01000000 ; 10
  .byt %00000000, %00000000, %00000000, %01000000 ; 11
  .byt %00000000, %00000000, %00000000, %00000000 ; 12
  .byt %00000000, %00000000, %00000000, %00000000 ; 13
  .byt %00000000, %00000000, %00000000, %00000000 ; 13
  .byt %00000000, %00000000, %00000000, %01000000 ; 14
  .byt %00000000, %00000000, %00000000, %01000000 ; 15
  .byt %00000000, %00000000, %00000000, %01000000 ; 16 
  .byt %00000000, %00000000, %00000000, %01000000 ; 17
  .byt %00000000, %00000000, %00000000, %01000000 ; 18
  .byt %00000000, %00000000, %00000000, %01000000 ; 19
  .byt %00000000, %00000000, %00000000, %01000000 ; 20
  .byt %00000000, %00000000, %00000000, %01000000 ; 21
  .byt %00000000, %00000000, %00000000, %01000000 ; 22
  .byt %00000000, %00000000, %00000000, %01000000 ; 23
  .byt %00000000, %00000000, %00000000, %01000000 ; 24
  .byt %00000000, %00000000, %00000000, %01000000 ; 25
  .byt %00000000, %00000000, %00000000, %01000000 ; 26
  .byt %00000000, %00000000, %00000000, %00000000 ; 27
  .byt %00000000, %00000000, %00000000, %01000000 ; 28
  .byt %00000000, %00000000, %00000000, %01000000 ; 29
  .byt %00000000, %00000000, %00000000, %01000000 ; 30
  .byt %00000000, %00000000, %00000000, %01000000 ; 31
  .byt %00000000, %00000000, %00000000, %01000000 ; 32 правая часть экрана
  .byt %00000000, %00000000, %00000000, %01000000 ; 1
  .byt %00000000, %00000000, %00000000, %01000000 ; 2 
  .byt %00000000, %00000000, %00000000, %01000000 ; 3
  .byt %00000000, %00000000, %00000000, %01000000 ; 5
  .byt %00000000, %00000000, %00000000, %01000000 ; 6
  .byt %00000000, %00000000, %00000000, %01000000 ; 7
  .byt %00000000, %00000000, %00000000, %01000000 ; 8
  .byt %00000000, %00000000, %00000000, %01000000 ; 9
  .byt %00000000, %00000000, %00000000, %01000000 ; 10
  .byt %00000000, %00000000, %00000000, %01000000 ; 11
  .byt %00000000, %00000000, %00000000, %01000000 ; 12
  .byt %00000000, %00000000, %00000000, %01000000 ; 13
  .byt %00000000, %00000000, %00000000, %01000000 ; 13
  .byt %00000000, %00000000, %00000000, %01000000 ; 14
  .byt %00000000, %00000000, %00000000, %01000000 ; 15
  .byt %00000000, %00000000, %00000000, %01000000 ; 16 
  .byt %00000000, %00000000, %00000000, %01000000 ; 17
  .byt %00000000, %00000000, %00000000, %01000000 ; 18
  .byt %00000000, %00000000, %00000000, %01000000 ; 19
  .byt %00000000, %00000000, %00000000, %01000000 ; 20
  .byt %00000000, %00000000, %00000000, %01000000 ; 21
  .byt %00000000, %00000000, %00000000, %01000000 ; 22
  .byt %00000000, %00000000, %00000000, %01000000 ; 23
  .byt %00000000, %00000000, %00000000, %01000000 ; 24
  .byt %00000000, %00000000, %00000000, %01000000 ; 25
  .byt %00000000, %00000000, %00000000, %01000000 ; 26
  .byt %00000000, %00000000, %00000000, %01000000 ; 27
  .byt %00000000, %00000000, %00000000, %01000000 ; 28
  .byt %00000000, %00000000, %00000000, %01000000 ; 29
  .byt %00000000, %00000000, %00000000, %01000000 ; 30
  .byt %00000000, %00000000, %00000000, %01000000 ; 31
  .byt %00000000, %00000000, %00000000, %01000000 ; 32

.segment "CODE"

.proc calculateCollisionMap
    LDA scrollPosition
    AND #%00000111
    BEQ skipCalculate

    INC offsetColumn

  skipCalculate:
    RTS
.endproc

.proc calculateNametable
    LDA nameTable
    CMP #01
    BNE loadOne
    BEQ loadTwo

    loadTwo:
        LDA #$24
        STA currentAdc

        RTS
    loadOne:
        LDA #$20
        STA currentAdc

        RTS
.endproc

.proc collisionOnMap
; x  = 9 ; y = 15 ; address 21ED
    ; low byt in nametable
        JSR calculateNametable
        LDA heroYCoordinate
        CLC
        ADC #24
        LSR
        LSR
        LSR
        LSR
        LSR
        LSR
        CLC
        ADC currentAdc
        TAX
;
;       lda heroYCoordinate
;       lsr
;       lsr
;       lsr
;       sta collisionTmp
       lda scrollPosition
       lsr
       lsr
       lsr
       sta collisionTmp
    ; calculate low byte
       lda heroXCoordinate
       lsr
       lsr
       lsr
       clc
       adc collisionTmp
       sta collisionTmp
       ; x / 8

       ; high byt in nametable
       LDA heroYCoordinate
       CLC
       ADC #24
       lsr
       lsr
       lsr
       AND #7
       asl
       asl
       asl
       asl
       asl
       clc
       adc collisionTmp
       tay

      LDA $2005
      STX $2006
      STY $2006
      LDA $2007
    ; check sprite in coordinate
    CMP #$00
    BEQ collideObjectYes
    CMP #$23
    BEQ collideObjectYes
    CMP #$29
    BEQ collideObjectYes
    CMP #$2A
    BEQ collideObjectYes
    BNE collideObjectNo

    collideObjectNo:
        JSR collideNo

        RTS
    collideObjectYes:
        JSR collideYes

        RTS

.endproc

.proc collideNo
    LDA #01
    STA isGravity
    inc heroYCoordinate
    INC heroYCoordinate
    RTS
.endproc

.proc collideYes
    LDA #00
    STA isGravity
    STA jumpHeight
    STA isJump
    RTS
.endproc

.proc collisionOnMapBack
    JSR calculateCollisionMap
    LDA offsetColumn
    ASL 
    ASL
    TAY

    LDA heroYCoordinate
    CLC 
    ADC #18
    LSR
    LSR
    LSR
    LSR
    LSR
    LSR
    CLC
    STA zacumulator

    LDA heroXCoordinate
    LSR
    LSR
    LSR
    ASL
    ASL
    CLC
    ADC zacumulator
    TAY

    LDA heroYCoordinate
    CLC
    ADC #18
    LSR
    LSR
    LSR
    AND #7
    TAX

    LDA scrollPosition
    LSR
    LSR
    LSR
    ASL
    ASL
    STA mapByteOffset

    TYA
    CLC
    ADC mapByteOffset
    TAY

    LDA map_level_1_collision_map_1, y
    STA mapByteOffset
    LDA mapByteOffset
    AND bit_mask, x
    BEQ collideObjectVerticalyNo
    BNE return

collideObjectVerticalyNo:
   LDA #01
   STA isGravity
   inc heroYCoordinate
   INC heroYCoordinate
   RTS
;   inc heroYCoordinate
;   inc heroYCoordinate
return:
   LDA #00
   STA isGravity
   STA jumpHeight
   STA isJump
   RTS

.endproc
