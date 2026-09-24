.segment "ZEROPAGE"
    animationCounter: .res 1

.segment "CODE_3"

palette_data_stage_2:
    .incbin "test.pal"
    .incbin "sprites.pal"

map_level_2:
    .incbin "levels/stageTwo/n.nam"

map_level_2_2:
    .incbin "levels/stageTwo/t2.nam"

map_level_2_page_1:
    .incbin "levels/stageTwo/t3.nam"

map_level_2_page_2:
    .incbin "levels/stageTwo/t4.nam"
map_level_2_page_3:
    .incbin "levels/stageTwo/t5.nam"

attributeTableLevel2Page1:
    .byt $1a, $50, $1a, $1a, $50, $1a, $1a, $50
    .byt $1a, $1a, $50, $1a, $1a, $50, $0a, $0a
    .byt $00, $00, $00, $00, $00, $00, $00, $00
    .byt $00, $00, $00, $00, $00, $00, $00, $00
    .byt $00, $00, $00, $00, $00, $00, $00, $00
    .byt $00, $00, $00, $00, $00, $00, $00, $00
    .byt $50, $50, $00, $50, $00, $00, $00, $55
    .byt $05, $05, $05, $05, $05, $05, $05, $05

attributeTableLevel2Page2:
    .byt $00, $00, $00, $00, $00, $00, $50, $05
    .byt $aa, $08, $00, $00, $00, $00, $50, $05
    .byt $02, $a2, $08, $00, $00, $00, $00, $05
    .byt $a0, $a0, $aa, $00, $00, $00, $50, $05
    .byt $aa, $aa, $aa, $00, $00, $00, $55, $05
    .byt $00, $af, $aa, $00, $00, $00, $55, $05
    .byt $80, $ab, $aa, $00, $00, $00, $55, $05
    .byt $00, $aa, $aa, $00, $00, $00, $55, $05

attributeTableLevel2Page3:
    .incbin "attribute23.atr"
attributeTableLevel2Page4:
    .incbin "attribute24.atr"

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

.proc firstProcedureStageTwo
    RTS
.endproc

.proc stageTwoState
    LDX #$02
    JSR setPrgBank
;    JSR animationPalete
;    JSR scrolling

    JSR checkCollide
    JSR scrolling
    
    JSR drawNewAttribute
    JSR scrolling
    JSR drawNewCollumn
    JSR scrolling
    JSR swapNametable
    JSR scrolling

    JSR animationCounterProc
    JSR resetAnimationCounter
    JSR incScrollCounter
    JSR heroStateMovement
    JSR screenFactoryTwo
    JSR employerFactoryTwo
    JSR changeSpriteBuffer

    JSR readJoyPad
    JSR readJoyState
    JSR playerHundler

    JSR scrolling

    RTS
.endproc


.proc resetStageTwo
    LDX #$02
    JSR setPrgBank
    ; disable render before load stage
    JSR disableRender
    ; set vertical mirror mode
    JSR setHorizontalMirror
    ; change code page
    JSR compileChrStageTwo

    JSR loadPaleteStageTwo

    LDX #$FC
    LDY #100
    JSR soldairInit
    JSR fixScroll
    JSR loadStageTwoBackground
    JSR loadBackground
    JSR loadAttributePageStageTwo

    LDA #$01
    STA reloadStatusBar1
    STA reloadStatusBar2

    JSR drawStatusBar2
    JSR scrolling
    JSR drawStatusBar1
    JSR scrolling

    ; enable render after load stage
    JSR enableRender

    RTS
.endproc

.proc compileChrStageTwo
    LDA #$00
    STA $8000
    LDX #$00
    STX $8001

    LDA #$01
    STA $8000
    LDX #$02
    STX $8001

    LDA #$02
    STA $8000
    LDX #$44
    STX $8001

    LDA #$03
    STA $8000
    LDX #$45
    STX $8001

    LDA #$04
    STA $8000
    LDX #$46
    STX $8001

    LDA #$05
    STA $8000
    LDX #$47
    STX $8001

    RTS
.endproc

.proc employerFactoryTwo
    LDA screenCount
    CMP #00
    BEQ loadEmploers1
    CMP #01
    BEQ loadEmploers2
    CMP #02
    BEQ loadEmploers3
    CMP #03
    BEQ loadEmploers4

    loadEmploers1:

        RTS

    loadEmploers2:
        JSR moveSoldair
        JSR showSoldier
        RTS

    loadEmploers3:
        RTS

    loadEmploers4:
        RTS
.endproc

.proc screenFactoryTwo
    LDA scrollPosition
    CMP #$FD
    BEQ incrementScreenCount
    BNE incrementScreenDone

  incrementScreenCount:
    INC screenCount
    JMP incrementScreenDone

  incrementScreenDone:

  loadScreens:
    LDA screenCount
    CMP #00
    BEQ loadScreen1
    CMP #01
    BEQ loadScreen2
    CMP #02
    BEQ loadScreen3
    CMP #03
    BEQ loadScreen4
    CMP #04
    BEQ resetScreen

  loadScreen1:
    LDX #<map_level_2_2
    STX lowMapByte
    LDX #>map_level_2_2
    STX highMapByte

    LDX #<attributeTableLevel2Page2
    STX lAB
    LDX #>attributeTableLevel2Page2
    STX hAB

    JMP loadScreenDone

  loadScreen2:
    LDX #<map_level_2_page_1
    STX lowMapByte
    LDX #>map_level_2_page_1
    STX highMapByte

    LDX #<attributeTableLevel2Page3
    STX lAB
    LDX #>attributeTableLevel2Page3
    STX hAB

    JMP loadScreenDone

  loadScreen3:
    LDX #<map_level_2_page_2
    STX lowMapByte
    LDX #>map_level_2_page_2
    STX highMapByte

    LDX #<attributeTableLevel2Page4
    STX lAB
    LDX #>attributeTableLevel2Page4
    STX hAB

    JMP loadScreenDone

  loadScreen4:
    LDX #<map_level_2_page_3
    STX lowMapByte
    LDX #>map_level_2_page_3
    STX highMapByte

    LDX #<attributeTableLevel2Page4
    STX lAB
    LDX #>attributeTableLevel2Page4
    STX hAB

    JMP loadScreenDone

  resetScreen: 
    LDX #00
    STX screenCount
    JMP resetScreens

  loadScreenDone:
    RTS

  resetScreens:
    LDA #01
    STA isStageEnd
    RTS
.endproc

.proc loadStageTwoBackground
    PHA
    LDA #<map_level_2
    STA mapLoByte       ; put the low byte of the address of background into pointer
    LDA #>map_level_2
    STA mapHiByte       ; put the high byte of the address into pointer
    PLA

    RTS
.endproc

.proc loadPaleteStageTwo
  LoadPalettes:
    LDA $2002
    LDA #$3F
    STA $2006             ; говорим ppu что нам необходим адрес 3F00 здесь храниться палитра
    LDA #$00
    STA $2006             ; Сначала старший байт записываем 3F потом младший 00 при записи этот адрес будет автоматически увеличиваться

    LDX #$00              ; X = 0
  LoadPalettesLoop:
    LDA palette_data_stage_2, x
    STA $2007             ; записываем в ppu по факту в адрес 3F00
    INX                   ; X = X + 1
    CPX #$20
    BNE LoadPalettesLoop

    RTS
.endproc

.proc loadAttributePageStageTwo
    LDX #<attributeTableLevel2Page1
    STX lAB
    LDX #>attributeTableLevel2Page1
    STX hAB

    JSR loadAttributePages

    RTS
.endproc

.proc animationPalete
    LDA $2002
    LDA #$3F
    STA $2006
    LDA #$0B
    STA $2006

    LDA animationCounter
    CMP #$00
    BEQ frame1
    CMP #$02
    BEQ frame2
    CMP #$03
    BEQ frame3
    CMP #$04
    BEQ frame2

    BNE return

frame1:
    LDA #$0C
    JMP toPort
frame2:
    LDA #$1C
    JMP toPort
frame3:
    LDA #$2C
    JMP toPort
toPort:
    STA $2007
return:
    RTS
.endproc

.proc animationCounterProc
        LDA nmiCounter
        BEQ incrementFrameCounter
        BNE return
    incrementFrameCounter:
        INC animationCounter
    return:
        RTS
.endproc

.proc resetAnimationCounter
    LDA animationCounter
    CMP #06
    BEQ reset
    BNE return
reset:
    LDA #$00
    STA animationCounter
return:
    RTS
.endproc