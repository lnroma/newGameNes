.segment "ZEROPAGE"
   tmpCompare: .res 1
   soldairTimer: .res 1

.segment "CODE"

.proc soldairInit
    TXA
    STA soldairX
    STA soldairDirection
    TYA
    STA soldairY

    RTS
.endproc

.proc timerIncrement
    INC soldairTimer

.endproc

.proc moveSoldair
    JSR moveX
    JSR moveY

    RTS
.endproc

.proc moveX
    LDA soldairX
    CMP heroXCoordinate
    BEQ return
    BCC incX
    BCS decX

    incX:
        INC soldairX
        LDA #01
        STA soldairDirection
        RTS
    decX:
        DEC soldairX
        LDA #00
        STA soldairDirection
        RTS
    return:
        RTS
.endproc

.proc moveY
    LDA soldairY
    CMP heroYCoordinate
    BEQ return
    BCC incX
    BCS decX

    incX:
        INC soldairY
        RTS
    decX:
        DEC soldairY
        RTS
    return:
        RTS
.endproc