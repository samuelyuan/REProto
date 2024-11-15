SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

Image257TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank051_Image257Part2_4000.2bpp"

Image258Tilemap:: ; 0x4210
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $08, $09
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $00, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $00, $00, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2e, $2e, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37
    db $38, $39, $3a, $2e, $2e, $2e, $3b, $3c, $3d, $3e, $3f, $40, $00, $41, $42, $43
    db $2e, $2e, $2e, $44, $45, $46, $00, $00, $47, $48, $49, $4a, $00, $00, $00, $00
    db $4b, $4c, $4d, $00, $00, $00, $00, $00, $4e, $4f, $50, $51, $00, $52, $53, $54
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $56, $57, $58, $59, $5a, $5b
    db $00, $00, $00, $00, $00, $00, $00, $00, $5c, $5d, $5e, $5f, $60, $61, $62, $63
    db $00, $00, $00, $00, $00, $64, $65, $66, $67, $68, $69, $6a, $2e, $6b, $6c, $6d
    db $6e, $6f, $70, $71, $72, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $73, $74
    db $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $75, $76
    db $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $77, $78
    db $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $79, $7a, $7b, $7c
    db $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $7d, $7e, $7f, $80, $81, $82, $83, $84

Image258PaletteIndex:: ; 0x4350
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $01, $03, $03, $03, $03, $03, $03, $03, $03, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $00, $00, $00, $00, $01, $02, $02, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $00, $00, $00, $01, $01, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02

Image258Tileset:: ; 0x4490
    INCBIN "gfx/bank052_Image258_4490.2bpp"

Image259Tilemap:: ; 0x4ce0
    db $00, $01, $02, $03, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $00, $00, $00, $05, $06, $07, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $08, $09, $04, $04, $04, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $04, $04, $04
    db $10, $11, $12, $13, $00, $00, $00, $00, $00, $00, $00, $00, $00, $14, $15, $16
    db $04, $04, $04, $04, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22
    db $04, $04, $04, $04, $04, $04, $04, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $04, $04, $04, $04, $2f, $30, $31, $32, $33, $34, $35, $36, $37
    db $00, $00, $00, $38, $04, $04, $04, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41
    db $00, $00, $00, $42, $43, $04, $04, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
    db $00, $00, $00, $00, $4d, $04, $04, $4e, $4f, $50, $51, $52, $53, $54, $55, $56
    db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $04, $71, $72, $73, $74, $75
    db $69, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84
    db $69, $69, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $00, $00, $00, $8f
    db $69, $69, $69, $90, $91, $92, $93, $94, $95, $69, $69, $96, $00, $00, $00, $00
    db $69, $69, $69, $69, $97, $98, $99, $69, $69, $69, $69, $9a, $00, $00, $00, $00
    db $69, $69, $69, $9b, $9c, $9d, $9e, $69, $69, $69, $69, $9f, $00, $00, $00, $00
    db $69, $69, $69, $69, $69, $69, $69, $69, $69, $69, $a0, $a1, $00, $00, $00, $42

Image259PaletteIndex:: ; 0x4e20
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00, $00, $02, $02, $02, $02
    db $00, $00, $00, $01, $01, $01, $01, $03, $00, $00, $00, $02, $00, $02, $02, $02
    db $00, $00, $00, $01, $01, $01, $01, $03, $02, $02, $02, $02, $00, $00, $02, $02
    db $00, $00, $00, $00, $01, $01, $01, $03, $02, $02, $02, $00, $00, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $00, $05, $02, $02, $00, $02, $02, $02, $02
    db $01, $01, $01, $02, $02, $02, $02, $05, $02, $02, $00, $00, $02, $02, $02, $02
    db $01, $02, $02, $02, $02, $02, $02, $00, $00, $02, $05, $00, $00, $00, $00, $00
    db $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $00, $00, $00, $00
    db $01, $01, $01, $02, $02, $02, $02, $02, $02, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $21

Image259Tileset:: ; 0x4f60
    INCBIN "gfx/bank052_Image259_4f60.2bpp"

Image260Tilemap:: ; 0x5980
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $11, $11, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $11, $20, $21, $22, $23, $23, $23, $23, $23, $23, $24, $25, $26
    db $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $23, $23, $23, $23, $23, $23, $23, $30, $31
    db $32, $2b, $33, $2d, $2d, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $23, $23, $23, $3f, $40, $41, $42, $43, $43, $44, $45, $46, $47, $48, $49, $4a
    db $23, $23, $23, $4b, $4c, $4d, $4d, $4e, $4f, $4d, $4d, $50, $51, $52, $53, $54
    db $55, $56, $57, $58, $59, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63
    db $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73
    db $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83
    db $0e, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2
    db $b3, $b4, $b5, $b6, $b7, $b8, $56, $b9, $ba, $0e, $0e, $0e, $0e, $0e, $0e, $bb
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

Image260PaletteIndex:: ; 0x5ac0
    db $04, $04, $04, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $21, $01, $21, $21, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $00, $00, $00, $05, $05, $05, $05, $05, $05, $01, $01, $01, $01, $03, $00, $00
    db $00, $00, $00, $05, $02, $00, $00, $02, $02, $00, $00, $00, $00, $02, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $02, $02, $02, $00, $00
    db $03, $07, $07, $04, $07, $07, $07, $03, $03, $00, $00, $02, $02, $00, $02, $02
    db $01, $00, $01, $04, $05, $05, $03, $03, $02, $00, $00, $02, $02, $02, $02, $02
    db $01, $00, $01, $04, $02, $02, $00, $00, $02, $00, $00, $02, $02, $02, $02, $02
    db $03, $04, $01, $01, $05, $05, $05, $05, $05, $00, $00, $02, $02, $02, $00, $00
    db $00, $04, $04, $04, $07, $07, $07, $00, $00, $07, $03, $03, $03, $03, $03, $03
    db $01, $01, $01, $01, $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $01, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image260Tileset:: ; 0x5c00
    INCBIN "gfx/bank052_Image260_5c00.2bpp"

Image261Tilemap:: ; 0x67c0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0a, $0a, $0a, $0a, $0a
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $11, $12, $13, $14, $09, $0a, $0a, $0a, $0a
    db $15, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $0a, $0a
    db $15, $15, $15, $22, $23, $15, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $21
    db $15, $15, $15, $15, $15, $15, $15, $15, $15, $2d, $2e, $2f, $30, $31, $32, $33
    db $34, $35, $36, $37, $15, $15, $15, $15, $15, $15, $15, $15, $38, $39, $3a, $3b
    db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
    db $17, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $15, $56, $57, $58, $59
    db $17, $5a, $5b, $5c, $5d, $5e, $15, $15, $15, $15, $15, $5f, $60, $61, $62, $63
    db $17, $5a, $64, $65, $66, $67, $68, $69, $15, $15, $15, $6a, $6b, $6c, $6d, $6e
    db $17, $6f, $70, $71, $72, $73, $74, $75, $15, $15, $15, $76, $77, $78, $79, $7a
    db $17, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $15, $15, $83, $84, $85, $86, $87
    db $17, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96
    db $17, $97, $98, $99, $17, $9a, $9b, $9c, $9d, $15, $15, $9e, $9f, $a0, $a1, $a2
    db $17, $a3, $a4, $a5, $17, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $0a, $0a
    db $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $0a, $0a, $0a, $0a
    db $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $d4, $d5, $d6, $d7, $d8, $d9, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $da, $db, $dc, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a

Image261PaletteIndex:: ; 0x6900
    db $00, $07, $06, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $06, $07, $06, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $06, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $06, $07, $07, $07, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $07, $07, $07, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $00, $00
    db $01, $05, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $02, $02
    db $01, $02, $02, $02, $00, $00, $00, $00, $00, $00, $01, $00, $00, $02, $02, $02
    db $01, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02
    db $01, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $02, $02
    db $01, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $02, $02
    db $01, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $00, $00, $00, $00, $00
    db $01, $02, $02, $02, $01, $01, $03, $02, $03, $01, $01, $03, $03, $03, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $00, $06, $07, $07, $07, $00, $00, $00, $00
    db $01, $01, $01, $06, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image261Tileset:: ; 0x6a40
    INCBIN "gfx/bank052_Image261_6a40.2bpp"

Image262Tilemap:: ; 0x7810
    db $00, $01, $02, $03, $04, $05, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $06, $0f, $06, $06, $06, $06, $06, $06
    db $08, $08, $08, $10, $11, $12, $06, $13, $14, $15, $16, $17, $18, $06, $06, $06
    db $19, $1a, $1b, $08, $1c, $1d, $1e, $06, $06, $06, $1f, $20, $21, $06, $06, $06
    db $06, $22, $23, $24, $25, $26, $06, $06, $06, $06, $27, $28, $29, $06, $06, $06
    db $06, $06, $06, $2a, $2b, $2c, $2d, $2e, $2f, $05, $06, $30, $31, $06, $06, $06
    db $06, $06, $32, $33, $34, $35, $08, $36, $37, $38, $39, $3a, $06, $06, $06, $06
    db $06, $06, $3b, $3c, $3d, $08, $08, $3e, $3f, $40, $41, $42, $43, $06, $06, $06
    db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $06, $06, $06
    db $51, $51, $51, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d
    db $51, $51, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $06, $06, $06, $06
    db $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $06, $06, $06, $06
    db $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $06, $06, $06, $06
    db $51, $80, $81, $06, $82, $83, $84, $85, $86, $87, $88, $89, $06, $06, $8a, $8b
    db $8c, $8d, $8e, $06, $8f, $90, $91, $06, $92, $93, $94, $95, $96, $97, $98, $99
    db $9a, $9b, $06, $06, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $51, $51, $b0, $b1, $b2, $b3, $b4, $b5
    db $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $06, $c1, $c2, $c3, $c4
    db $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $06, $06
    db $06, $d3, $d4, $d5, $d6, $d7, $d8, $35, $51, $d9, $da, $db, $dc, $dd, $06, $06

Image262PaletteIndex:: ; 0x7950
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $02, $00, $00, $00
    db $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $00, $00, $00
    db $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $05, $02, $05, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $05, $05, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $03, $03, $03, $03, $03, $03, $03, $01, $01, $01
    db $00, $00, $01, $01, $00, $02, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $02, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $02, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $00, $01, $01, $01, $03, $02, $02, $03, $03, $03, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01, $01, $01, $01

Image262TilesetPart1:: ; 0x7a90
    INCBIN "gfx/bank052_Image262Part1_7a90.2bpp"
