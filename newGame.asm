.include "./lib/player.asm"
.include "./lib/heroStates/heroWalkRight.asm"
.include "./lib/heroStates/heroStayRight.asm"
.include "./lib/heroStates/heroStayLeft.asm"
.include "./lib/heroStates/heroWalkLeft.asm"
.include "./lib/heroStates/heroJump.asm"
.include "./lib/heroStates/heroWalkRightAndFire.asm"
.include "./lib/heroStates/heroWalkLeftAndFire.asm"
.include "./lib/collisionOnMap.asm"
.include "./lib/joypad.asm"
.include "./lib/apu.asm"
.include "./lib/stages/stageOne.asm"
.include "./lib/stages/stageTwo.asm"
.include "./lib/palete.asm"
.include "./lib/reset.asm"
.include "./lib/stageFunctions.asm"
.include "./lib/backgroundFunctions.asm"
.include "./lib/mapperFunctions.asm"
.include "./lib/stages/startDisplay.asm"
.include "./lib/employers/soldairRight.asm"
.include "./lib/employers/soldairLeft.asm"
.include "./lib/employers/movements/soldair.asm"
.include "./lib/heroStates/heroFireLeft.asm"
.include "./lib/heroStates/heroFireRight.asm"
.include "./lib/heroStates/utils/bullet.asm"
.include "./lib/ppuUtils.asm"
.include "./lib/zeroSprite.asm"
.include "./lib/statusBar/statusBar.asm"

.macro nmiDelay frames
    lda #frames
    sta nmiCounter
:   lda nmiCounter
    bne :-
.endmacro

MAPPER          = 4     ; 4 = MMC3, тут в варианте NES-TBROM (64Кб кода/данных + 64Кб графики)
MIRRORING       = 0     ; зеркалирование видеопамяти: 0 - горизонтальное, 1 - вертикальное
HAS_SRAM        = 0     ; 1 - есть SRAM (как правило на батарейке) по адресам $6000-7FFF

.segment "HEADER"
    .byt "NES",$1A
    .byt $08               ; 8 x 16kB PRG block. 128kb
    .byt $10              ; 16 x 8kB CHR block. 128kb
   ; .byt 17              ; 0 horizontal, 1 vertical mirror
    .byt MIRRORING | (HAS_SRAM << 1) | ((MAPPER & $0F) << 4)
    .byt $00, $00, $00, $00, $00, $00, $00, $00

.segment "VECTORS"
    .addr nmi_isr, reset, irq_isr

.segment "ZEROPAGE"
    heroXCoordinate: .res 1 ; координата x
    heroYCoordinate: .res 1 ; координата y

    buttons: .res 1 ; кнопочки

    lifes: .res 1 ; жизни

    mapLoByte: .res 1
    mapHiByte: .res 1
    scroolX: .res 1
    loopLoadBackOutside: .res 1;
    loopLoadBackInside: .res 1;
    ppuHB: .res 1;
    ppuLB: .res 1;
    flagStopLoad: .res 1;
    tmp: .res 1;

    colLow: .res 1;
    colHig: .res 1;
    sourceLow: .res 1;
    sourceHig: .res 1;
    columnNumber: .res 1;

    scrollPosition: .res 1;
    yScrollPosition: .res 1;
    nameTable: .res 1;
    screenCount: .res 1;

    lowMapByte: .res 1;
    highMapByte: .res 1;

    joyState: .res 1;
    collisionY: .res 1;
    collisionX: .res 1;

    isRightCollision: .res 1;

    tScroll: .res 1;
    currentStage: .res 1;

    lAB: .res 1;
    hAB: .res 1;

    zacumulator: .res 1;
    dinamicalCollisionMap: .res 1;
    offsetColumn: .res 1;

    mapTestLo: .res 1;
    mapTestHig: .res 1;
    mapByteOffset: .res 1;

    scroolCounter: .res 1;

    stageStates: .res 1;

    heroDirection: .res 1 ; 01 left 02 right
    isHeroWalk: .res 1
    isHeroFire: .res 1
    isHeroStay: .res 1
    lastPositionY: .res 1

    isLoadedFlags: .res 1
    nmiCounter: .res 1

    byteBufferCounter: .res 1
    lineCounter: .res 1
.segment "BSS"

.segment "CODE";

mmc3Register:
    .byt $00 ,$02 ,$04 ,$05 , $06,$07 ,$00 ,$01

.proc changeSpriteBuffer
     LDA #$00
     STA $2003     ; set the low byte (00) of the RAM address
     LDA #$02
     STA $4014

     rts
.endproc

.proc incScrollCounter
    INC scrollCounter
    RTS
.endproc

.proc waitDelay
    nmiDelay 4
    RTS
.endproc

.proc resetCounter
    LDA nmiCounter
;    AND #60
    BNE reset
    BEQ return
reset:
    LDA #$00
    STA nmiCounter
return:
    RTS
.endproc

.proc nmi_isr
    LDA #$D0
    STA $E000
    STA $C000
    STA $C001
    STA $E000
    STA $E001

    INC nmiCounter
    LDA nmiCounter
    CMP #$10
    BEQ resetCounter
    JMP continue
resetCounter:
    LDA #$00
    STA nmiCounter
;    JSR resetCounter
continue:
    JSR readJoyPad
    LDA stageStates
    BEQ loadStartDisplay
    CMP #01
    BEQ loadStageTwo
loadStartDisplay:
    JSR startDisplayState
    JMP return
loadStageTwo:
    JSR stageTwoState
return:
    STA counterFrames
    JSR clearSprites

    RTI
.endproc

.proc clearSprites
    LDX #$00
    LDA #$00
    clearLoop:
        STA $0200, x
        CPX #$FF
        INX
    BNE clearLoop
    RTS
.endproc

.proc irq_isr
    PHA
    TXA
    PHA
    TYA
    PHA

    LDA #$00
    STA $E000
    STA $2005
    STA $2005

    PLA
    TAY
    PLA
    TAX
    PLA

    RTI
.endproc

.proc loadBanks
        LDX #$08            ; Start of Page to load Add 8 Hex per CHR .. CHR 3 = $10 or 16
        LDA #$80            ; Starting Address for $8000 0,1,2,3,4,5,6
        LDY #$00            ; Loop Counter
        LoadPPU2k:          ; load two sets 2x2k to make first 4k (BACKGROUND)
            STA $8000       ; Bank Selection with Inversion
            STX $8001       ; Selection of Bank
            INY
            INX             ; Increase X x 2 as 2k
            INX
            CLC
            ADC #$01
            CPY #$02        ; For loop
            BNE LoadPPU2k
        LoadPPU1k:              ; load 4 * 1k sets to make FORGROUND 4k
            STA $8000           ; Bank Selection with Inversion
            STX $8001           ; Selection of Bank
            INY
            INX                 ; Increase X * x as 1k
            CLC
            ADC #$01
            CPY #$06        ; For loop
            BNE LoadPPU1k
    RTS
.endproc

.proc initMMC3
    LDX #$00
    LDA #$00
    STA $E000       ; IRQ disable
    STA $A000       ; mirroring 0 Vertical; 1 Horizontal
    :
    STX $8000       ; select register
    LDA mmc3Register, X
    STA $8001       ; initialize register
    INX
    CPX #8          ; Compare 8 to X
    BCC :-          ; Branch not Equal

    ;PRG ROM Selections

        LDY #02            ; Starting Banks Change This from 0 2 4 6 ETC to change Starting Color Startup $00
        LDA #6              ; $8000 Selection Bank = 6 (NOTE: Not HEX)
        STA $8000
        STY $8001           ; Select Bank LOW
        LDA #7              ; $A000 Selection Bank = 6 (NOTE: Not HEX)
        STA $8000
        INY
        STY $8001           ; Select Bank HIGH

        rts
.endproc

.proc reset
    SEI
    LDX #0
    STX $2000   ; обнуляем память
    STX $2001   ; выключаем рендер
    STX $4010 ; отключаем DMC
    DEX     ; X = $FF
    TXS     ; Стэк равен = $FF
    : BIT $2002
    BPL :-

    JSR initMMC3
    JSR loadBanks

    JSR setHeroVar
    JSR setStageVar

    ; reset sprite buffer counter
    LDA #$00
    STA byteBufferCounter
    STA lineCounter

    ; load display start
    JSR loadDisplayStart
    JSR enableNMI
    JSR enableRender
    LDA #$40
    STA $4017
    CLI
mainLoop:
  JMP mainLoop

  RTI
.endproc

.segment "CODE_1"
.segment "CODE_2"
.segment "CODE_3"
.segment "CODE_4"
.segment "CODE_5"
.segment "CODE_6"
.segment "CODE_7"
.segment "CODE_8"
.segment "CODE_9"
.segment "CODE_10"
.segment "CODE_11"
.segment "CODE_12"
.segment "CODE_13"


; =====	CHR-ROM Pattern Tables =================================================

; ----- Pattern Table 0 --------------------------------------------------------
.include "./graphics/mainChr.asm"