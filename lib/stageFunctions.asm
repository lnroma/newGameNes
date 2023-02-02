.segment "CODE"

.proc setStageVar
  lda #00
  sta currentStage

  rts
.endproc