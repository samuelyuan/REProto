SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

Image46TilemapPart2:: ; 0x4000
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $02, $02, $02, $02, $02, $92, $93, $02, $02
    db $94, $95, $96, $97, $98, $99, $02, $02, $02, $02, $07, $9a, $9b, $9c, $0a, $02
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $02, $02, $a4, $a5, $02, $02, $02, $a6, $02
    db $a7, $a8, $a9, $aa, $97, $98, $ab, $7d, $ac, $ad, $02, $02, $02, $02, $35, $ae
    db $73, $af, $63, $b0, $b1, $a1, $a2, $b2, $02, $02, $02, $02, $02, $02, $02, $b3
    db $73, $b4, $b5, $b6, $b7, $97, $98, $b8, $63, $02, $02, $02, $02, $02, $02, $07

Image46PaletteIndex:: ; 0x4060
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $47, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $20, $07, $07, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $07, $07, $00, $04, $04, $00, $07, $07, $01, $01, $01, $01
    db $00, $00, $00, $07, $01, $07, $04, $06, $06, $04, $07, $07, $07, $07, $07, $05
    db $00, $00, $05, $01, $00, $01, $02, $06, $01, $06, $07, $07, $27, $07, $07, $01
    db $00, $01, $01, $00, $01, $01, $02, $06, $06, $04, $07, $07, $07, $07, $01, $01
    db $00, $02, $02, $02, $01, $01, $01, $04, $05, $07, $07, $07, $01, $01, $01, $01
    db $20, $05, $02, $00, $02, $01, $01, $01, $01, $05, $05, $01, $01, $01, $01, $01
    db $05, $05, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $05, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $05, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $41, $01
    db $00, $05, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $05, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $05, $21, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $05, $01, $01, $01, $01, $01, $21, $01, $01, $01, $01, $01, $01, $21

Image46Tileset:: ; 0x81a0
    INCBIN "gfx/bank01b_Image46_81a0.2bpp"

Image47Tilemap:: ; 0x4d30
    db $00, $01, $02, $03, $04, $04, $05, $06, $07, $08, $09, $0a, $0a, $0b, $0c, $0c
    db $0d, $0e, $04, $04, $04, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $18
    db $19, $1a, $04, $04, $09, $1b, $11, $11, $1c, $1d, $1e, $1f, $20, $21, $22, $23
    db $24, $25, $04, $04, $26, $11, $11, $11, $27, $28, $29, $11, $11, $11, $2a, $11
    db $2b, $2c, $04, $04, $2d, $11, $11, $11, $2e, $2f, $30, $11, $11, $11, $31, $11
    db $32, $33, $04, $04, $34, $11, $11, $11, $35, $36, $37, $38, $38, $38, $39, $38
    db $3a, $3b, $3c, $3d, $3e, $11, $11, $11, $3f, $04, $40, $11, $11, $41, $11, $11
    db $04, $42, $43, $44, $45, $11, $11, $11, $46, $09, $11, $11, $11, $47, $11, $11
    db $04, $04, $48, $49, $4a, $4b, $4c, $11, $4d, $4e, $11, $11, $11, $4f, $11, $11
    db $04, $04, $50, $51, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $11
    db $04, $04, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $11, $11, $11, $64, $65, $66
    db $04, $04, $04, $67, $68, $69, $6a, $6b, $6c, $6d, $11, $11, $11, $6e, $11, $11
    db $04, $04, $6f, $70, $71, $72, $73, $74, $75, $76, $11, $11, $11, $77, $11, $11
    db $04, $78, $79, $7a, $7b, $5b, $11, $7c, $04, $7d, $7e, $11, $7f, $80, $11, $11
    db $81, $82, $83, $11, $11, $11, $11, $84, $85, $11, $86, $87, $88, $89, $11, $11
    db $09, $04, $8a, $8b, $8c, $11, $11, $8d, $14, $11, $11, $11, $8e, $8f, $90, $91
    db $92, $93, $94, $95, $96, $97, $98, $99, $9a, $11, $11, $11, $9b, $11, $11, $11
    db $9c, $9d, $9e, $9f, $04, $04, $04, $04, $a0, $a1, $11, $11, $a2, $11, $11, $11
    db $a3, $a4, $a5, $a6, $04, $04, $04, $04, $a7, $a8, $a9, $aa, $ab, $11, $11, $11
    db $ac, $04, $ad, $04, $04, $04, $04, $04, $ae, $11, $11, $af, $b0, $11, $11, $11

Image47PaletteIndex:: ; 0x4e70
    db $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $05, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $05, $05, $05, $05, $05
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01, $01, $01
    db $00, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $21, $01, $01, $00, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $41, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $00, $01, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01

Image47Tileset:: ; 0x4fb0
    INCBIN "gfx/bank01c_Image47_4fb0.2bpp"

Image48Tilemap:: ; 0x5ac0
    db $00, $00, $01, $02, $00, $00, $00, $00, $00, $03, $04, $05, $06, $07, $07, $07
    db $08, $09, $0a, $00, $00, $00, $00, $00, $00, $0b, $0c, $0d, $07, $07, $07, $07
    db $0e, $0f, $10, $0c, $00, $00, $00, $11, $00, $00, $00, $0d, $07, $07, $07, $07
    db $12, $0f, $0f, $13, $14, $15, $00, $16, $17, $18, $19, $1a, $07, $07, $07, $07
    db $1b, $1c, $0f, $0f, $1d, $1e, $1f, $20, $21, $22, $23, $24, $07, $07, $07, $07
    db $25, $26, $0f, $0f, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $07, $07, $07, $07
    db $2f, $30, $0f, $0f, $0f, $0f, $0f, $31, $00, $00, $00, $0d, $07, $07, $07, $07
    db $32, $33, $34, $35, $36, $37, $38, $39, $3a, $00, $3b, $3c, $07, $07, $07, $07
    db $0f, $0f, $08, $3d, $3e, $0f, $0f, $0f, $3f, $00, $40, $07, $07, $07, $07, $07
    db $0f, $0f, $0f, $41, $3f, $0f, $0f, $0f, $3f, $00, $40, $07, $07, $07, $07, $07
    db $0f, $0f, $0f, $0f, $42, $0f, $0f, $0f, $3f, $00, $40, $07, $07, $07, $07, $07
    db $0f, $0f, $0f, $0f, $43, $0f, $0f, $0f, $31, $00, $40, $07, $07, $07, $07, $07
    db $0f, $0f, $44, $45, $46, $47, $48, $48, $49, $4a, $4b, $07, $07, $07, $07, $07
    db $4c, $4d, $4e, $4f, $50, $51, $52, $52, $52, $53, $54, $55, $07, $07, $07, $07
    db $56, $57, $0f, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $07, $07, $07, $07
    db $61, $0f, $62, $63, $0f, $0f, $0f, $64, $00, $00, $65, $66, $07, $07, $07, $07
    db $0f, $0f, $0f, $0f, $62, $63, $67, $0c, $00, $00, $00, $68, $07, $07, $07, $07
    db $0f, $0f, $0f, $0f, $0f, $0f, $69, $00, $00, $00, $00, $6a, $07, $07, $07, $07
    db $0f, $0f, $0f, $0f, $0f, $6b, $6c, $00, $00, $00, $00, $6d, $07, $07, $07, $07
    db $0f, $0f, $0f, $0f, $0f, $6e, $00, $00, $00, $00, $00, $6f, $70, $07, $07, $07

Image48PaletteIndex:: ; 0x5c00
    db $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $03, $03, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02
    db $01, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $07, $02, $02, $02, $02
    db $01, $01, $00, $00, $06, $06, $06, $00, $00, $01, $01, $07, $02, $02, $02, $02
    db $01, $01, $00, $00, $00, $06, $06, $00, $00, $00, $00, $02, $02, $02, $02, $02
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02
    db $00, $00, $21, $01, $01, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02
    db $00, $00, $00, $01, $01, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $02, $04, $03, $03, $03, $04, $04, $03, $02, $02, $02, $02
    db $01, $01, $00, $01, $04, $04, $04, $04, $04, $04, $04, $04, $02, $02, $02, $02
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $03, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $03, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02

Image48Tileset:: ; 0x5d40
    INCBIN "gfx/bank01c_Image48_5d40.2bpp"

Image49Tilemap:: ; 0x6450
    db $00, $01, $02, $03, $04, $05, $06, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $07, $07, $07, $07, $07, $07
    db $12, $13, $14, $15, $0c, $16, $17, $18, $19, $1a, $1b, $1c, $11, $1d, $07, $07
    db $1e, $1f, $20, $21, $22, $23, $07, $24, $25, $07, $07, $26, $27, $28, $29, $11
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $07, $07, $07, $07, $07, $32, $33, $34
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $07, $07, $07, $07, $07, $07, $07, $07
    db $3d, $3e, $3f, $40, $41, $07, $42, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $43, $44, $45, $46, $47, $48, $49, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $4a, $4b, $4c, $4d, $4e, $4f, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $50, $51, $52, $53, $54, $55, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $56, $57, $58, $59, $5a, $07, $07, $07, $07, $5b, $07, $07, $07, $07, $07, $07
    db $0c, $0c, $5c, $5d, $07, $07, $07, $07, $5e, $5f, $60, $07, $07, $07, $07, $07
    db $0c, $0c, $0c, $61, $07, $07, $07, $07, $62, $63, $64, $65, $07, $07, $07, $07
    db $66, $67, $0c, $0c, $68, $07, $07, $69, $6a, $6b, $6c, $07, $6d, $07, $07, $07
    db $4a, $6e, $0c, $0c, $6f, $70, $07, $71, $72, $73, $74, $75, $76, $77, $78, $07
    db $4a, $79, $0c, $0c, $0c, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $5e
    db $84, $0c, $0c, $0c, $0c, $0c, $85, $1d, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $0c, $0c, $0c, $0c, $91, $07, $92, $93, $94, $95, $96, $97, $98
    db $6f, $99, $9a, $0c, $0c, $0c, $0c, $0c, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $0c, $0c, $a3, $a4, $a5, $0c, $0c, $0c, $a6, $a7, $9c, $a8, $a9, $aa, $ab, $ac

Image49PaletteIndex:: ; 0x6590
    db $01, $01, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $00, $00, $00, $00, $00, $03, $04, $04, $01, $01, $01, $01, $01, $01, $01
    db $04, $01, $00, $00, $00, $01, $07, $03, $03, $03, $04, $01, $01, $01, $01, $01
    db $04, $04, $04, $01, $01, $07, $02, $03, $03, $02, $02, $03, $03, $04, $01, $01
    db $04, $04, $03, $03, $00, $03, $03, $03, $02, $02, $02, $02, $02, $02, $03, $03
    db $04, $00, $00, $03, $03, $03, $03, $03, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $03, $01, $07, $02, $03, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $03, $03, $03, $03, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $07, $03, $03, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $07, $03, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $03, $03, $03, $03, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $03, $03, $02, $02, $02, $02, $02, $03, $03, $02, $02, $02, $02, $02
    db $00, $00, $00, $03, $02, $02, $02, $02, $03, $00, $00, $03, $02, $02, $02, $02
    db $00, $00, $00, $00, $03, $02, $02, $03, $00, $00, $00, $02, $05, $02, $02, $02
    db $00, $00, $00, $00, $03, $03, $02, $03, $00, $00, $00, $05, $05, $05, $05, $02
    db $00, $00, $00, $00, $00, $03, $03, $03, $00, $00, $00, $03, $05, $05, $05, $02
    db $00, $00, $00, $00, $00, $00, $03, $03, $03, $00, $00, $00, $05, $05, $06, $03
    db $05, $05, $05, $00, $00, $00, $00, $03, $02, $03, $00, $00, $03, $03, $03, $00
    db $03, $05, $05, $00, $00, $00, $00, $00, $03, $03, $03, $00, $03, $03, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $00, $00, $00

Image49Tileset:: ; 0x66d0
    INCBIN "gfx/bank01c_Image49_66d0.2bpp"

Image50Tilemap:: ; 0x71a0
    db $00, $00, $00, $00, $00, $01, $02, $03, $03, $03, $03, $03, $04, $05, $06, $03
    db $00, $00, $00, $00, $00, $01, $07, $03, $03, $03, $03, $03, $08, $01, $09, $03
    db $00, $00, $00, $00, $00, $0a, $0b, $03, $03, $03, $03, $03, $0c, $0d, $0e, $03
    db $00, $00, $00, $00, $00, $0a, $0f, $03, $03, $03, $03, $03, $10, $11, $12, $03
    db $00, $00, $00, $00, $00, $13, $14, $03, $03, $03, $15, $16, $17, $18, $19, $03
    db $00, $00, $00, $00, $00, $1a, $1b, $03, $03, $1c, $1d, $1e, $1f, $03, $20, $03
    db $00, $00, $00, $00, $00, $21, $22, $03, $03, $03, $23, $24, $25, $03, $26, $03
    db $00, $00, $00, $00, $00, $27, $28, $03, $03, $03, $03, $29, $2a, $03, $2b, $03
    db $00, $00, $2c, $2d, $01, $2e, $2f, $30, $31, $03, $03, $03, $03, $03, $32, $03
    db $00, $00, $33, $01, $01, $34, $35, $36, $37, $03, $03, $03, $03, $03, $38, $03
    db $00, $00, $39, $01, $01, $3a, $3b, $3c, $3d, $03, $03, $03, $03, $03, $3e, $03
    db $00, $00, $3f, $01, $01, $40, $41, $42, $43, $03, $03, $03, $03, $03, $44, $03
    db $00, $00, $45, $01, $01, $46, $47, $48, $49, $03, $03, $03, $03, $03, $4a, $03
    db $4b, $00, $4c, $01, $01, $4d, $4e, $4f, $50, $03, $03, $03, $03, $03, $51, $03
    db $52, $00, $53, $01, $01, $54, $55, $56, $57, $03, $03, $03, $03, $03, $58, $59
    db $5a, $00, $5b, $5c, $5d, $5e, $5f, $60, $61, $03, $03, $03, $03, $03, $62, $63
    db $64, $00, $00, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $63
    db $64, $00, $00, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $01, $01, $02
    db $7b, $00, $00, $7c, $7d, $7e, $7f, $80, $00, $00, $00, $00, $81, $82, $83, $84
    db $85, $00, $00, $86, $87, $88, $89, $00, $00, $00, $00, $00, $00, $00, $00, $8a

Image50PaletteIndex:: ; 0x72e0
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02, $03, $00, $01, $01
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02, $03, $00, $01, $01
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02, $03, $00, $01, $01
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $02, $03, $03, $01, $01
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $05, $05, $05, $03, $04, $01
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $05, $05, $05, $05, $02, $04, $01
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $05, $05, $05, $02, $04, $01
    db $00, $00, $00, $00, $00, $00, $03, $02, $02, $02, $02, $05, $05, $02, $04, $01
    db $00, $00, $00, $00, $00, $03, $03, $03, $03, $02, $02, $02, $02, $02, $04, $01
    db $00, $00, $00, $00, $00, $03, $04, $04, $03, $02, $02, $02, $02, $02, $04, $01
    db $00, $00, $00, $00, $00, $04, $03, $04, $03, $02, $02, $02, $02, $02, $04, $01
    db $00, $00, $00, $00, $00, $04, $04, $04, $03, $02, $02, $02, $02, $02, $04, $01
    db $00, $00, $00, $00, $00, $04, $04, $04, $03, $02, $02, $02, $02, $02, $04, $01
    db $01, $00, $00, $00, $00, $04, $04, $04, $03, $02, $02, $02, $02, $02, $03, $01
    db $01, $00, $00, $00, $00, $04, $04, $04, $03, $02, $02, $02, $02, $02, $03, $01
    db $01, $00, $03, $03, $03, $04, $04, $00, $03, $02, $02, $02, $02, $02, $03, $01
    db $01, $00, $00, $03, $03, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03, $01
    db $01, $00, $00, $02, $02, $04, $03, $01, $01, $01, $01, $00, $00, $00, $00, $01
    db $01, $00, $00, $02, $02, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $00, $00, $02, $02, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image50Tileset:: ; 0x7420
    INCBIN "gfx/bank01c_Image50_7420.2bpp"

Image51Tilemap:: ; 0x7cd0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $03, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $03, $07, $08
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $09, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $0d, $0e, $0e, $0e, $0f, $10, $11, $12, $13, $14, $15
    db $16, $16, $17, $17, $17, $17, $17, $17, $17, $17, $17, $18, $19, $1a, $1b, $1c
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $18, $19, $1d, $1e, $1f
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $18, $19, $20, $21, $22
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $18, $19, $23, $24, $25
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $18, $26, $27, $28, $29
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $2a, $2b, $2c, $2d, $2e
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $2a, $2b, $2f, $30, $31
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $2a, $2b, $32, $33, $34
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $2a, $2b, $35, $36, $37
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $2a, $2b, $38, $00, $39
    db $00, $00, $00, $00, $00, $0d, $0e, $0e, $0e, $0e, $0e, $3a, $3b, $00, $00, $3c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3d, $03, $3e, $00, $3f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $41, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $42, $03, $43, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $44, $03, $45, $00

Image51PaletteIndex:: ; 0x7e10
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $21, $21, $21, $21, $21, $21, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01

Image51TilesetPart1:: ; 0x7f50
    INCBIN "gfx/bank01c_Image51Part1_7f50.2bpp"
