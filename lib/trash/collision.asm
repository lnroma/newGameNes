.segment "CODE"

.proc collisionOnMapBack
; x  = 9 ; y = 15 ; address 21ED
    ; low byt in nametable
        JSR calculateFakeX
        JSR swapCurrentNameTable
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
        ADC #$20
        ADC currentAdc
        TAX

    ; calculate low byte
       lda fakeXCoordinate
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

      LDA $2002
      STX $2006
      STY $2006
      LDA $2007
    ; check sprite in coordinate
;    CMP #$00
;    BEQ collideObjectYes
;    CMP #$23
;    BEQ collideObjectYes
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
