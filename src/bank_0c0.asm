SECTION "ROM Bank $0c0", ROMX[$4000], BANK[$c0]

Image669TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank0bf_Image669Part2_4000.2bpp"

Image670Tilemap:: ; 0x4730
    db $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09
    db $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12
    db $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $16, $17, $18, $19, $1a, $1b
    db $00, $00, $00, $00, $00, $00, $00, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
    db $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $00, $00, $00, $00, $00, $00, $00, $2e, $2f, $30, $31, $32, $33, $34, $35, $36
    db $00, $00, $00, $00, $00, $00, $00, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $00, $00, $00, $00, $00, $00, $00, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $00, $00, $00, $00, $00, $00, $00, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51
    db $00, $00, $00, $00, $00, $00, $00, $52, $53, $54, $55, $56, $57, $58, $59, $5a
    db $00, $00, $00, $00, $00, $00, $00, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63
    db $00, $00, $00, $00, $00, $00, $00, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $00, $00, $00, $00, $00, $00, $00, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $00, $00, $00, $00, $00, $00, $00, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $00, $00, $00, $00, $00, $00, $00, $7f, $80, $81, $82, $83, $84, $85, $86, $87
    db $00, $00, $00, $00, $00, $00, $00, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90
    db $00, $00, $00, $00, $00, $00, $00, $91, $92, $93, $94, $95, $96, $97, $98, $99
    db $00, $00, $00, $00, $00, $00, $00, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $00, $00, $00, $00, $00, $00, $00, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $00, $00, $00, $00, $00, $00, $00, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4

Image670PaletteIndex:: ; 0x4870
    db $07, $07, $07, $07, $07, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $07, $07, $07, $07, $07, $07, $07, $02, $00, $02, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $07, $07, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $07, $07, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $07, $07, $02, $02, $02, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $07, $07, $07, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $07, $01, $04, $07, $07, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $07, $01, $01, $07, $07, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $07, $01, $01, $01, $01, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $02, $02, $04, $01, $01, $01, $01, $01, $07
    db $07, $07, $07, $07, $07, $07, $07, $02, $02, $04, $07, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $02, $02, $02, $07, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $02, $02, $02, $02, $07, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $04, $07, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $07, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $07, $07, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $07, $07, $07, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $07, $07, $07, $07, $01
    db $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $07, $07, $02, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $02, $02, $00, $00, $07

Image670Tileset:: ; 0x49b0
    INCBIN "gfx/bank0c0_Image670_49b0.2bpp"

Image671Tilemap:: ; 0x5500
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08
    db $00, $00, $00, $00, $00, $00, $00, $00, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10
    db $00, $00, $00, $00, $00, $00, $00, $00, $11, $12, $13, $14, $15, $16, $17, $18
    db $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20
    db $00, $00, $00, $00, $00, $00, $00, $00, $21, $22, $23, $24, $25, $26, $27, $28
    db $00, $00, $00, $00, $00, $00, $00, $00, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30
    db $00, $00, $00, $00, $00, $00, $00, $00, $31, $32, $33, $34, $35, $36, $37, $38
    db $00, $00, $00, $00, $00, $00, $00, $00, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40
    db $00, $00, $00, $00, $00, $00, $00, $00, $41, $42, $43, $44, $45, $46, $47, $48
    db $00, $00, $00, $00, $00, $00, $00, $00, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
    db $00, $00, $00, $00, $00, $00, $00, $00, $51, $52, $53, $54, $55, $56, $57, $58
    db $00, $00, $00, $00, $00, $00, $00, $00, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $00, $00, $00, $00, $00, $00, $00, $00, $61, $62, $63, $64, $65, $66, $67, $68
    db $00, $00, $00, $00, $00, $00, $00, $00, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70
    db $00, $00, $00, $00, $00, $00, $00, $00, $71, $72, $73, $74, $75, $76, $77, $78
    db $00, $00, $00, $00, $00, $00, $00, $00, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $81, $82, $83, $84, $85, $86, $87, $88
    db $00, $00, $00, $00, $00, $00, $00, $00, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90
    db $00, $00, $00, $00, $00, $00, $00, $00, $91, $92, $93, $94, $95, $96, $97, $98
    db $00, $00, $00, $00, $00, $00, $00, $00, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0

Image671PaletteIndex:: ; 0x5640
    db $07, $07, $07, $07, $07, $07, $07, $07, $04, $04, $04, $00, $00, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $04, $04, $00, $00, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $04, $07, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $07, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $02, $07, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $02, $07, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $02, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $07, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $00, $02, $02, $07, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $07, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $07, $07, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $02, $02, $02, $02, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $02, $02, $02, $02, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $02, $02, $07, $07, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $02, $02, $02, $07, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $02, $02, $02

Image671Tileset:: ; 0x5780
    INCBIN "gfx/bank0c0_Image671_5780.2bpp"

Image672Tilemap:: ; 0x6190
    db $00, $00, $00, $00, $00, $01, $01, $01, $02, $03, $04, $05, $06, $07, $08, $09
    db $00, $00, $00, $00, $00, $01, $01, $01, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11
    db $00, $00, $00, $00, $00, $01, $01, $01, $12, $13, $14, $15, $16, $17, $18, $19
    db $00, $00, $00, $00, $00, $01, $01, $01, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
    db $00, $00, $00, $00, $00, $01, $01, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $00, $00, $00, $00, $00, $01, $01, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33
    db $00, $00, $00, $00, $00, $01, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d
    db $00, $00, $00, $00, $00, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $00, $00, $00, $00, $00, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
    db $00, $00, $00, $00, $00, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $00, $00, $00, $00, $00, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69
    db $00, $00, $00, $00, $00, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74
    db $00, $00, $00, $00, $00, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $00, $00, $00, $00, $00, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a
    db $00, $00, $00, $00, $00, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95
    db $00, $00, $00, $00, $00, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0
    db $00, $00, $00, $00, $00, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $00, $00, $00, $00, $00, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6
    db $00, $00, $00, $00, $00, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1
    db $00, $00, $00, $00, $00, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc

Image672PaletteIndex:: ; 0x62d0
    db $07, $07, $07, $07, $07, $05, $05, $05, $05, $00, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $05, $05, $05, $05, $02, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $05, $05, $05, $05, $02, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $05, $05, $05, $05, $02, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $05, $05, $05, $00, $02, $02, $02, $02, $07, $07, $07
    db $07, $07, $07, $07, $07, $05, $05, $05, $00, $02, $00, $02, $02, $07, $07, $07
    db $07, $07, $07, $07, $07, $05, $05, $05, $00, $02, $02, $02, $02, $07, $07, $07
    db $07, $07, $07, $07, $07, $05, $05, $00, $02, $02, $02, $02, $02, $02, $02, $07
    db $07, $07, $07, $07, $07, $05, $05, $02, $02, $02, $02, $02, $02, $02, $02, $00
    db $07, $07, $07, $07, $07, $05, $05, $02, $02, $02, $02, $02, $02, $02, $02, $07
    db $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $07, $02, $02, $02, $02, $07
    db $07, $07, $07, $07, $07, $00, $02, $02, $07, $02, $07, $02, $02, $02, $02, $07
    db $07, $07, $07, $07, $07, $02, $02, $02, $07, $02, $02, $02, $02, $02, $02, $07
    db $07, $07, $07, $07, $07, $00, $07, $02, $02, $07, $02, $07, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $02, $07, $07, $02, $02, $07, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $00, $02, $02, $02, $07, $07, $02, $07, $02, $02, $02
    db $07, $07, $07, $07, $07, $00, $02, $02, $02, $02, $02, $02, $07, $02, $02, $02
    db $07, $07, $07, $07, $07, $00, $00, $02, $02, $02, $02, $07, $07, $02, $02, $02
    db $07, $07, $07, $07, $07, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $07, $07, $07, $07, $07, $00, $00, $00, $02, $02, $02, $00, $02, $02, $07, $02

Image672Tileset:: ; 0x6410
    INCBIN "gfx/bank0c0_Image672_6410.2bpp"

Image673Tilemap:: ; 0x70e0
    db $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09
    db $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12
    db $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $16, $17, $18, $19, $1a, $1b
    db $00, $00, $00, $00, $00, $00, $00, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
    db $00, $00, $00, $00, $00, $00, $00, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $00, $00, $00, $00, $00, $00, $00, $2e, $2f, $30, $31, $32, $33, $34, $35, $36
    db $00, $00, $00, $00, $00, $00, $00, $2e, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $00, $00, $00, $00, $00, $00, $00, $3f, $40, $41, $42, $43, $44, $45, $46, $47
    db $00, $00, $00, $00, $00, $00, $00, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
    db $00, $00, $00, $00, $00, $00, $00, $51, $52, $53, $54, $55, $56, $57, $58, $59
    db $00, $00, $00, $00, $00, $00, $00, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62
    db $00, $00, $00, $00, $00, $00, $00, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $00, $00, $00, $00, $00, $00, $00, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74
    db $00, $00, $00, $00, $00, $00, $00, $75, $76, $77, $78, $79, $7a, $7b, $7c, $74
    db $00, $00, $00, $00, $00, $00, $00, $74, $7d, $7e, $7f, $80, $81, $82, $83, $84
    db $00, $00, $00, $00, $00, $00, $00, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $00, $00, $00, $00, $00, $00, $00, $8e, $8f, $90, $91, $92, $93, $94, $95, $96
    db $00, $00, $00, $00, $00, $00, $00, $74, $74, $97, $98, $99, $9a, $9b, $9c, $9d
    db $00, $00, $00, $00, $00, $00, $00, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6
    db $00, $00, $00, $00, $00, $00, $00, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af

Image673PaletteIndex:: ; 0x7220
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $00, $02, $02, $02, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $02, $02, $02, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $02, $02, $07, $02, $07
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $02, $02, $02, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $02, $02, $02, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $02, $02, $02, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $02, $02, $07, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $07, $02, $07, $04, $02
    db $07, $07, $07, $07, $07, $07, $07, $05, $02, $02, $02, $07, $02, $07, $07, $04
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $07, $02, $07, $07, $04
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $02, $07, $07, $07, $07, $04
    db $07, $07, $07, $07, $07, $07, $07, $00, $02, $02, $07, $07, $07, $07, $04, $04
    db $07, $07, $07, $07, $07, $07, $07, $07, $02, $02, $07, $07, $07, $07, $04, $01
    db $07, $07, $07, $07, $07, $07, $07, $02, $07, $02, $07, $04, $07, $07, $04, $01
    db $07, $07, $07, $07, $07, $07, $07, $02, $04, $07, $07, $04, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $04, $04, $07, $02, $07, $04, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $04, $04, $04, $07, $07, $04, $02, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $02, $02, $04, $07, $07, $07, $07, $07, $02
    db $07, $07, $07, $07, $07, $07, $07, $04, $04, $04, $04, $07, $07, $02, $02, $02
    db $07, $07, $07, $07, $07, $07, $07, $04, $04, $04, $07, $07, $07, $02, $02, $02

Image673Tileset:: ; 0x7360
    INCBIN "gfx/bank0c0_Image673_7360.2bpp"

Image674Tilemap:: ; 0x7e60
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $00
    db $00, $00, $00, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $00
    db $00, $00, $00, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $00
    db $00, $00, $00, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $00
    db $00, $00, $00, $31, $32, $33, $34, $35, $36, $37, $38, $00, $39, $3a, $3b, $00
    db $00, $00, $00, $3c, $22, $3d, $00, $3e, $3f, $22, $40, $00, $41, $42, $43, $00
    db $00, $00, $00, $44, $22, $45, $00, $00, $00, $46, $47, $48, $49, $4a, $4b, $00
    db $00, $00, $00, $4c, $4d, $4e, $00, $00, $00, $4f, $50, $51, $52, $53, $54, $00
    db $00, $00, $00, $55, $56, $00, $00, $57, $58, $59, $5a, $4b, $5b, $5c, $5d, $00
    db $00, $00, $00, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $4b, $4b, $00
    db $00, $00, $00, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $4b, $4b, $71, $00
    db $00, $00, $00, $72, $73, $74, $6d, $6d, $6d, $75, $76, $4b, $4b, $77, $22, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image674PaletteIndexPart1:: ; 0x7fa0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

