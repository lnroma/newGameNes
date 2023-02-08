.segment "RODATA"

.segment "CODE"

.proc firstProcBackground
   RTS
.endproc

.proc loadBackground
    LoadBackground:
      LDA $2002             ; read PPU status to reset the high/low latch
      LDA #$20
      STA $2006             ; write the high byte of $2000 address
      LDA #$00
      STA $2006             ; write the low byte of $2000 address

      LDX #$00            ; start at pointer + 0
      LDY #$00
    OutsideLoop:

    InsideLoop:
      LDA (mapLoByte), y  ; copy one background byte from address in pointer plus Y
      STA $2007           ; this runs 256 * 4 times

      INY                 ; inside loop counter
      CPY #$00
      BNE InsideLoop      ; run the inside loop 256 times before continuing down

      INC mapHiByte       ; low byte went 0 to 256, so high byte needs to be changed now

      INX
      CPX #$04
      BNE OutsideLoop     ; run the outside loop 256 times before continuing down

      RTS
.endproc

.proc loadAttributePages    
  LoadAttributePage1:
    lda $2002
    lda #$23
    sta $2006
    lda #$C0
    sta $2006

    ldx #00
  AttributePage1Loop:
    lda attributeTableLevel2Page1, x
    sta $2007
    inx
    cpx #66
    bne AttributePage1Loop

  LoadAttributePage2:
    lda $2002
    lda #$27
    sta $2006
    lda #$C0
    sta $2006

    ldx #00
  AttributePage2Loop:
    lda attributeTableLevel2Page1, x
    sta $2007
    inx
    cpx #66
    bne AttributePage2Loop

    RTS
.endproc

.proc drawNewAttribute
  
NewAttributeCheck:
    LDA scrollPosition
    AND #%00001111
    BNE NewAttributeCheckDone
    JMP DrawNewAttribute

DrawNewAttribute:
    LDA nameTable
    EOR #$01
    ASL A
    ASL A
    CLC
    ADC #$23
    STA colHig

    LDA scrollPosition
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    CLC
    ADC #$C0
    STA colLow

    LDA columnNumber 
    AND #%11111100
    ASL A
    STA sourceLow
    LDA columnNumber
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    LSR A
    STA sourceHig

    LDA sourceLow
    CLC
    ADC lAB
    STA sourceLow
    LDA sourceHig
    ADC hAB
    STA sourceHig

    LDY #$00
    LDA $2002
DrawNewAttributeLoop:
    LDA colHig
    STA $2006
    LDA colLow
    STA $2006
    LDA (sourceLow), y
    STA $2007

    INY
    CPY #$08
    BEQ DrawAttributeLoopDone

    LDA colLow
    CLC
    ADC #$08
    STA colLow
    JMP DrawNewAttributeLoop

DrawAttributeLoopDone:
RTS

NewAttributeCheckDone:
RTS
.endproc

.proc drawNewCollumnNametable
  
DrawNewColumn:
    LDA scrollPosition
    LSR A
    LSR A
    LSR A
    STA colLow
    STA columnNumber

    LDA nameTable
    ASL A
    ASL A
    CLC
    ADC #$24
    STA colHig

    LDA columnNumber
    ASL A
    ASL A
    ASL A
    ASL A
    ASL A
    STA sourceLow
    LDA columnNumber
    LSR A
    LSR A
    LSR A
    STA sourceHig

    LDA sourceLow
    CLC 
    ADC lowMapByte
    STA sourceLow
    LDA sourceHig
    ADC highMapByte
    STA sourceHig

 DrawColumn:
    LDA #%1000100        ; set to increment +32 mode
    EOR nameTable
    STA $2000

    LDA $2002             ; read PPU status to reset the high/low latch
    LDA colHig
    STA $2006             ; write the high byte of column address
    LDA colLow
    STA $2006             ; write the low byte of column address
    LDX #$1E              ; copy 30 bytes
    LDY #$00
DrawColumnLoop:
    LDA (sourceLow), y
    STA $2007
    INY
    DEX
    BNE DrawColumnLoop

    LDA #%10010000
    EOR nameTable
    STA $2000

    RTS
.endproc

.proc drawNewCollumn
; column check 
NewColumnCheck:
    LDA scrollPosition
    AND #%00000111
    BNE NewColumnCheckDone
    JSR drawNewCollumnNametable

; задебажить здесь
    LDA columnNumber
    CLC
    ADC #$01
    AND #%01111111
    STA columnNumber
NewColumnCheckDone:
    LDA #%10010000   
    ORA nameTable 
    STA $2000

    LDA #%00011110   
    STA $2001

    RTS

.endproc

.proc swapNametable

NameTableCheckSwap:
    CLC
    LDA scrollPosition
    CMP #$FD
    BNE NameTableCheckSwapDone
NameTableSwap:
    LDA nameTable
    EOR #$01
    STA nameTable

    RTS


NameTableCheckSwapDone:
    RTS

.endproc

.proc enableNMI
  lda #%10010000 ;enable NMI, sprites from Pattern 0, background from Pattern 1
  sta $2000

  RTS
.endproc

.proc enableRender
  lda #%00011000
  sta $2001

  RTS
.endproc

.proc disableRender
    LDA #$00
    STA $2001

    RTS
.endproc