.segment "RODATA"

levelPalete:
    palette_data_stage_2:
            ; 00                        01              10              11
      		.byt $31,$00,$10,$2D,  $31,$1D,$27,$37,  $10,$1D,$27,$10,  $31,$3F,$3c,$02   ;;background
      		.byt $32,$10,$1A,$0F,  $32,$36,$17,$0F,  $10,$30,$21,$0F,  $32,$29,$05,$01   ;;sprite palette

map_level_2:
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ; 1
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ; 1
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $03, $04, $05, $06, $11, $11, $11, $11 ; 2
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $13, $14, $15, $16, $11, $11, $11, $11 ; 3
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ; 6
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ; 7
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $20, $21, $11, $11, $11, $11, $11, $11, $11 ; 12
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $30, $41, $11, $11, $11, $11, $11, $11, $11 ; 17
  .byt $29, $2A, $29, $2A, $29, $2A, $29, $2A, $29, $2F, $11, $11, $11, $11, $11, $11, $11, $11, $3d, $3d, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ; 20
  .byt $2C, $2B, $2C, $2B, $2c, $2b, $2c, $2b, $2c, $2E, $2F, $11, $11, $11, $11, $11, $11, $3d, $2e, $2e, $29, $2a, $29, $2A, $29, $2A, $29, $2A, $29, $2a, $29, $2a ; 20
  .byt $2C, $2B, $2C, $2b, $2c, $2b, $2c, $2b, $2c, $2E, $2E, $2F, $11, $11, $11, $11, $3d, $2e, $2e, $2e, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b ; 20
  .byt $2C, $2B, $2C, $2b, $2c, $2b, $2c, $2b, $2c, $2E, $2E, $2E, $2f, $11, $29, $2a, $2e, $2e, $2e, $2e, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b ; 20
  .byt $2C, $2B, $2C, $2B, $2C, $2b, $2C, $2b, $2C, $2E, $2E, $2E, $2e, $2a, $2c, $2B, $2e, $2e, $2e, $2e, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b, $2c, $2b ; 21
  .byt $27, $28, $27, $28, $27, $28, $27, $28, $27, $2E, $2E, $2E, $2e, $2B, $2c, $2B, $2e, $2e, $2e, $2e, $27, $28, $27, $28, $27, $28, $27, $28, $27, $28, $27, $28 ; 22
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $0A, $2D, $2E, $2E, $2e, $2B, $2C, $2B, $2e, $2e, $2e, $3f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 23
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $0A, $0A, $2D, $2E, $2e, $2B, $2C, $2B, $2e, $2e, $3f, $0a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 23
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $2D, $2e, $2B, $2C, $2B, $2e, $3f, $0a, $0a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 23
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $0A, $2D, $28, $27, $28, $3F, $0a, $0a, $0a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 24
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 25
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 25
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 25
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 25
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 25
  .byt $00, $3b, $3b, $3b, $00, $00, $3b, $3b, $3b, $00, $00, $00, $00, $00, $00, $00, $3b, $3b, $3b, $00, $00, $3b, $3b, $3b, $3b, $00, $00, $00, $3b, $3b, $3b, $00 ; 25
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3b, $3b, $3b, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 25
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4E, $4D, $4D, $4D, $4D, $3C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 26
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4B, $4C, $11, $11, $11, $3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 26
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4B, $4c, $11, $11, $11, $3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 29
  .byt $4D, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4f, $4c, $11, $11, $11, $11, $4a, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d ; 32
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4B, $4c, $11, $11, $11, $11, $11, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 00


map_level_2_2:
  
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $03, $13, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $04, $14, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $06, $16, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $03, $13, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $04, $14, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $05, $15, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $06, $16, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01

map_level_2_page_1:
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $03, $13, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $04, $14, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $05, $15, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $06, $16, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01

map_level_2_page_2:
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $11, $11, $11
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01
  .byt $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $01, $01, $01, $01, $01, $01

attributeTableLevel2Page1:
    ;   1    2    3    4    5    6    7    8
  .byt $00, $00, $00, $00, $00, $00, $FF, $00 ; !
  .byt $00, $FF, $00, $00, $00, $00, $00, $00 ; 2
  .byt $55, $55, $55, $55, $55, $55, $55, $55 ; 3
  .byt $05, $05, $A5, $55, $a5, $05, $05, $05 ; 4
  .byt $00, $00, $08, $aa, $aa, $00, $00, $00 ; 5
  .byt $00, $00, $00, $00, $00, $00, $00, $00 ; 6
  .byt $00, $00, $00, $00, $00, $00, $00, $00 ; 8
  .byt $00, $00, $00, $00, $00, $00, $00, $00 ; 8

attributeTableLevel2Page2:
    ;   1    2    3    4    5    6    7    8
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; !
  .byt $00, $FF, $00, $00, $00, $00, $AA, $AA ; 2
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; 3
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; 4
  .byt $00, $00, $00, $00, $00, $AA, $AA, $AA ; 5
  .byt $FF, $00, $00, $00, $00, $AA, $AA, $AA ; 6
  .byt $FF, $00, $00, $00, $00, $00, $AA, $AA ; 8
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; 8

attributeTableLevel2Page3:
    ;   1    2    3    4    5    6    7    8
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; !
  .byt $00, $FF, $00, $00, $00, $00, $AA, $AA ; 2
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; 3
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; 4
  .byt $00, $00, $00, $00, $00, $AA, $AA, $AA ; 5
  .byt $FF, $00, $00, $00, $00, $AA, $AA, $AA ; 6
  .byt $FF, $00, $00, $00, $00, $00, $AA, $AA ; 8
  .byt $00, $00, $00, $00, $00, $00, $AA, $AA ; 8


.segment "CODE"

.proc screenFactoryTwo

    LDA scrollPosition
    CMP #$FD
    BEQ incrementScreenCount
    BNE incrementScreenDone

  incrementScreenCount:
    INC screenCount
    JMP incrementScreenDone

  incrementScreenDone:

  resetScreens:

  loadScreens:
    LDA screenCount
    CMP #00
    BEQ loadScreen1
    CMP #01
    BEQ loadScreen2
    CMP #02
    BEQ loadScreen3
    CMP #03
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
    JMP loadScreenDone

  resetScreen: 
    LDX #00
    STX screenCount
    JMP resetScreens

  loadScreenDone:
    RTS
.endproc

.proc loadStageTwoBackground
    LDA #<map_level_2
    STA mapLoByte       ; put the low byte of the address of background into pointer
    LDA #>map_level_2
    STA mapHiByte       ; put the high byte of the address into pointer
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