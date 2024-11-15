SECTION "ROM Bank $0bb", ROMX[$4000], BANK[$bb]

Image634TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank0ba_Image634Part2_4000.2bpp"

Image635Tilemap:: ; 0x4150
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $0a, $0a, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $0a, $3b, $3c
    db $00, $00, $00, $00, $00, $00, $00, $00, $3d, $3e, $3f, $40, $41, $42, $0a, $43
    db $00, $00, $00, $00, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $00, $00, $00, $50, $51, $52, $53, $54, $55, $56, $57, $58, $4c, $59, $00, $5a
    db $00, $00, $00, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $59, $00, $00
    db $65, $65, $65, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $00, $00
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $12, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $0a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $0a, $0a, $a9, $aa, $ab
    db $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $0a, $0a, $b7, $b8, $b9
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image635PaletteIndex:: ; 0x4290
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $07, $06, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $03, $03, $03
    db $03, $03, $03, $03, $00, $03, $03, $03, $03, $00, $00, $00, $00, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $03, $03, $03
    db $00, $03, $03, $03, $00, $03, $05, $03, $03, $00, $00, $03, $03, $43, $03, $03
    db $03, $03, $03, $03, $03, $00, $05, $03, $03, $03, $00, $03, $03, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $01, $01, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image635Tileset:: ; 0x43d0
    INCBIN "gfx/bank0bb_Image635_43d0.2bpp"

Image636Tilemap:: ; 0x4f70
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0a, $0b, $0c, $0d, $0e, $0f
    db $0a, $0a, $0a, $10, $11, $12, $13, $14, $15, $16, $0a, $0a, $17, $18, $19, $1a
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $1b, $1c, $1d, $1e, $1f, $20, $21
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $22, $23, $24, $0a, $25, $26
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $27, $28, $29, $2a, $0a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $29, $38, $39, $3a
    db $3b, $3b, $3c, $3d, $3d, $3d, $3d, $3e, $3e, $3e, $3e, $3f, $40, $41, $00, $42
    db $43, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $00, $00
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $00, $00
    db $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d
    db $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d
    db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $0a, $8a, $8b, $8c
    db $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $0a, $0a, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $0a, $0a, $a6, $a7, $a8
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image636PaletteIndex:: ; 0x50b0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $04, $03, $03
    db $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $04, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $07, $06, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $00, $03, $03, $03, $03, $05, $03, $03, $03, $03, $00, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $05, $03, $03, $03, $03, $03, $03, $03, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $01, $01, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image636Tileset:: ; 0x51f0
    INCBIN "gfx/bank0bb_Image636_51f0.2bpp"

Image637Tilemap:: ; 0x5c80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $0a, $0a, $1a, $1b, $1c, $1d
    db $00, $00, $00, $1e, $1f, $20, $21, $22, $0a, $23, $24, $25, $26, $27, $28, $29
    db $00, $00, $00, $00, $00, $00, $00, $2a, $1e, $2b, $2c, $2d, $2e, $0a, $2f, $30
    db $00, $00, $00, $00, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $0a, $3b
    db $00, $00, $00, $00, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
    db $00, $00, $00, $48, $49, $4a, $4b, $4c, $4d, $4e, $44, $44, $44, $4f, $00, $50
    db $00, $00, $00, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $4f, $00, $00
    db $00, $00, $00, $00, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $00, $00
    db $00, $00, $00, $00, $00, $65, $66, $67, $68, $69, $6a, $6b, $6c, $03, $38, $6d
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $6e, $6f, $70, $71, $72, $73
    db $00, $00, $00, $00, $00, $00, $00, $74, $75, $76, $77, $78, $0a, $79, $7a, $7b
    db $00, $00, $00, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $0a, $0a, $84, $85, $86
    db $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $0a, $0a, $92, $93, $94
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image637PaletteIndex:: ; 0x5dc0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $07, $06, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $00, $00, $03, $00, $03, $00, $00, $00, $03, $03, $03
    db $03, $03, $03, $03, $00, $00, $00, $00, $00, $03, $00, $00, $00, $03, $03, $03
    db $03, $03, $03, $03, $03, $00, $00, $00, $03, $03, $00, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $00, $00, $03, $03, $00, $00, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $03, $23, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $01, $01, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image637Tileset:: ; 0x5f00
    INCBIN "gfx/bank0bb_Image637_5f00.2bpp"

Image638Tilemap:: ; 0x6850
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $04, $05, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $07, $08, $09, $0a, $0b, $0c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0d, $0d, $0d, $0e, $0f, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0d, $0d, $0d, $0d, $11, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0d, $0d, $0d, $13, $14, $15, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $16, $17, $18, $19, $1a, $1b, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $1c, $1d, $1e, $1f, $20, $21, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image638PaletteIndex:: ; 0x6990
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $01, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $03, $00, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image638Tileset:: ; 0x6ad0
    INCBIN "gfx/bank0bb_Image638_6ad0.2bpp"

Image639Tilemap:: ; 0x6cf0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $04, $05, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $07, $08, $09, $0a, $0b, $0c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0d, $0d, $0d, $0e, $0f, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0d, $0d, $0d, $0d, $11, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0d, $0d, $0d, $13, $14, $15, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $16, $17, $18, $19, $1a, $1b, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $1c, $1d, $1e, $1f, $20, $21, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image639PaletteIndex:: ; 0x6e30
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $01, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $03, $00, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image639Tileset:: ; 0x6f70
    INCBIN "gfx/bank0bb_Image639_6f70.2bpp"

Image640Tilemap:: ; 0x7190
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
    db $01, $02, $03, $03, $04, $05, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $07, $08, $09, $0a, $0b, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0c, $0d, $0e, $0f, $10, $11, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $13, $14, $15, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $16, $17, $18, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $19, $03, $1a, $1b, $1c, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image640PaletteIndex:: ; 0x72d0
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
    db $00, $00, $00, $00, $04, $04, $02, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $00, $01, $01, $01, $01, $07, $02, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $01, $01, $01, $01, $01, $01, $03, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $01, $01, $01, $00, $00, $00, $00, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $01, $01, $01, $00, $00, $00, $00, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $01, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07, $07, $07, $07, $07, $07

Image640Tileset:: ; 0x7410
    INCBIN "gfx/bank0bb_Image640_7410.2bpp"

Image641Tilemap:: ; 0x75e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $02, $03, $03, $04, $05, $06, $07, $08, $00, $00, $00
    db $09, $09, $09, $09, $09, $0a, $0b, $0b, $0c, $0d, $0e, $0f, $10, $00, $00, $00
    db $09, $09, $09, $09, $09, $0a, $0b, $0b, $0c, $11, $12, $0f, $10, $00, $00, $00
    db $09, $09, $09, $09, $09, $0a, $0b, $0b, $0c, $13, $14, $0f, $15, $00, $00, $00
    db $09, $09, $09, $09, $09, $0a, $0b, $0b, $0c, $16, $17, $0f, $15, $00, $00, $00
    db $18, $18, $19, $19, $19, $1a, $1b, $1b, $1c, $1d, $1e, $1f, $20, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image641PaletteIndex:: ; 0x7720
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $02, $03, $07, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $02, $02, $07, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $03, $02, $02, $07, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $02, $02, $07, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $02, $02, $07, $07, $07
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $04, $03, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07

Image641Tileset:: ; 0x7860
    INCBIN "gfx/bank0bb_Image641_7860.2bpp"

Image642Tilemap:: ; 0x7a70
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $03, $03, $04, $05, $06, $07, $06, $08, $09, $0a, $0a, $0a, $0a
    db $06, $06, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $06, $13, $14, $0a, $0a, $0a
    db $06, $06, $06, $15, $03, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $0a, $0a, $0a
    db $06, $06, $06, $06, $1e, $03, $1f, $20, $21, $22, $23, $24, $25, $0a, $0a, $0a
    db $06, $06, $06, $06, $26, $27, $28, $29, $03, $2a, $2b, $2c, $2d, $0a, $0a, $0a
    db $06, $06, $06, $06, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $0a
    db $06, $06, $06, $06, $06, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $06, $41, $42
    db $06, $06, $06, $06, $06, $0b, $06, $06, $06, $06, $06, $43, $44, $06, $45, $46
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $47, $06, $06, $48
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $49, $4a, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image642PaletteIndex:: ; 0x7bb0
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $00, $03, $03, $02, $02, $02
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $02, $02, $02
    db $00, $00, $00, $00, $01, $01, $01, $01, $00, $01, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $01, $01, $01, $00, $00, $01, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $02
    db $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $00, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07

Image642TilesetPart1:: ; 0x7cf0
    INCBIN "gfx/bank0bb_Image642Part1_7cf0.2bpp"
