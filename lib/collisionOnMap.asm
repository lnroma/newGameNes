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

.proc collisionOnMap
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
    BNE collideObjectVerticalyYes

collideObjectVerticalyYes:
   RTS

collideObjectVerticalyNo:
   inc heroYCoordinate
   inc heroYCoordinate
   inc heroYCoordinate

   RTS

.endproc