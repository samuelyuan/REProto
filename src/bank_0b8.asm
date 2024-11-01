SECTION "ROM Bank $0b8", ROMX[$4000], BANK[$b8]

Image605TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank0b7_Image605Part2_4000.2bpp"

Image606Tilemap:: ; 0x44d0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $08, $09, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $10, $11, $12
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $16, $17, $18
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $1c, $1d, $1e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $22, $23, $24
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $28, $29, $2a
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2b, $2c, $2d, $2e, $2f, $30
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $31, $32, $33, $34, $35, $36
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $37, $38, $39, $3a, $3b, $3c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3d, $3e, $3f, $40, $41, $42
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $43, $44, $45, $46, $47, $48
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $49, $4a, $4b, $4c, $4d, $4e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4f, $50, $51, $52, $53, $54
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $56, $57, $58, $59, $5a
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $5b, $5c, $5d, $5e, $5f, $60
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $61, $62, $63, $64, $65, $66
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $67, $68, $69, $6a, $6b, $6c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image606PaletteIndex:: ; 0x4610
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $03, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $01, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $05, $05, $04, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $05, $05, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image606Tileset:: ; 0x4750
    INCBIN "gfx/bank0b8_Image606_4750.2bpp"

Image607Tilemap:: ; 0x4e20
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $08, $09, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $10, $11, $12
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $16, $17, $18
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $1c, $1d, $1e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $22, $23, $24
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $28, $29, $2a
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2b, $2c, $2d, $2e, $2f, $30
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $31, $32, $33, $34, $35, $36
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $37, $38, $39, $3a, $3b, $3c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3d, $3e, $3f, $40, $41, $42
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $43, $44, $45, $46, $47, $48
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $49, $4a, $4b, $4c, $4d, $4e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4f, $50, $51, $52, $53, $54
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $56, $57, $58, $59, $5a
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $5b, $5c, $55, $5d, $5e, $5f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $60, $61, $62, $63, $64, $65
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $66, $67, $68, $69, $6a, $6b
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image607PaletteIndex:: ; 0x4f60
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $01, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $05, $05, $00, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $05, $05, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image607Tileset:: ; 0x50a0
    INCBIN "gfx/bank0b8_Image607_50a0.2bpp"

Image608Tilemap:: ; 0x5760
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $05, $06, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $08, $09, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $10, $11, $12, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $16, $17, $18, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1c, $1d, $1e, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $22, $23, $24, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image608PaletteIndex:: ; 0x58a0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image608Tileset:: ; 0x59e0
    INCBIN "gfx/bank0b8_Image608_59e0.2bpp"

Image609Tilemap:: ; 0x5c60
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $05, $06, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $08, $09, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $10, $11, $12, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $16, $17, $18, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1c, $1d, $1e, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $22, $23, $24, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image609PaletteIndex:: ; 0x5da0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image609Tileset:: ; 0x5ee0
    INCBIN "gfx/bank0b8_Image609_5ee0.2bpp"

Image610Tilemap:: ; 0x6160
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $05, $06, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $08, $09, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $10, $11, $12, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $16, $17, $18, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1c, $1d, $1e, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $22, $23, $24, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image610PaletteIndex:: ; 0x62a0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image610Tileset:: ; 0x63e0
    INCBIN "gfx/bank0b8_Image610_63e0.2bpp"

Image611Tilemap:: ; 0x6660
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $05, $06, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $08, $09, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $10, $11, $12, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $16, $17, $18, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1c, $1d, $1e, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $22, $23, $24, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image611PaletteIndex:: ; 0x67a0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image611Tileset:: ; 0x68e0
    INCBIN "gfx/bank0b8_Image611_68e0.2bpp"

Image612Tilemap:: ; 0x6b60
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $00
    db $00, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $00
    db $00, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $00
    db $00, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $00
    db $00, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $00

Image612PaletteIndex:: ; 0x6ca0
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07
    db $07, $07, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07
    db $07, $07, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07
    db $07, $02, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $07, $07
    db $07, $02, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07

Image612Tileset:: ; 0x6de0
    INCBIN "gfx/bank0b8_Image612_6de0.2bpp"

Image613Tilemap:: ; 0x7250
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $00, $00
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $00, $00

Image613PaletteIndex:: ; 0x7390
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07
    db $02, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07

Image613Tileset:: ; 0x74d0
    INCBIN "gfx/bank0b8_Image613_74d0.2bpp"

Image614Tilemap:: ; 0x76a0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $00, $00, $00
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $00, $00, $00
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $00, $00, $00
    db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $00, $00, $00
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image614PaletteIndex:: ; 0x77e0
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07
    db $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07
    db $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07
    db $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07

Image614Tileset:: ; 0x7920
    INCBIN "gfx/bank0b8_Image614_7920.2bpp"

Image615Tilemap:: ; 0x7d40
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $0e, $0e
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $0e, $0e
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $0e, $0e
    db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

Image615PaletteIndex:: ; 0x7e80
    db $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07
    db $03, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07
    db $03, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07
    db $03, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07
    db $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07

Image615TilesetPart1:: ; 0x7fc0
    INCBIN "gfx/bank0b8_Image615Part1_7fc0.2bpp"

