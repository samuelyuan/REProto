SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

Image226TilemapPart2:: ; 0x4000
    db $24, $76, $77, $00, $00, $00, $00, $78, $00, $00, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $00, $00, $00, $00, $82, $00, $00, $00, $83, $84, $85, $86, $87
    db $88, $89, $00, $00, $00, $00, $35, $8a, $00, $00, $00, $8b, $8c, $8d, $8e, $8f
    db $90, $00, $00, $00, $00, $00, $91, $00, $00, $00, $00, $92, $93, $94, $95, $96
    db $01, $00, $00, $00, $97, $98, $00, $00, $00, $00, $00, $00, $99, $9a, $9b, $9c

Image226PaletteIndex:: ; 0x4050
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $05, $05, $05, $04, $04, $04, $04, $04, $04, $03, $03, $03, $03, $03, $03, $03
    db $05, $05, $00, $00, $00, $00, $00, $00, $04, $04, $04, $03, $03, $03, $00, $03
    db $05, $05, $05, $00, $00, $00, $04, $24, $24, $24, $04, $04, $03, $03, $03, $03
    db $03, $03, $05, $00, $00, $00, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $05, $00, $00, $00, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $05, $00, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $06, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $23, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $23, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $05, $06, $04, $04, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $05, $00, $00, $00, $00, $04, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $05, $05, $00, $00, $00, $00, $04, $03, $03, $03, $03, $03, $03, $03, $03
    db $05, $05, $00, $00, $00, $00, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $20, $00, $00, $00, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03

Image226Tileset:: ; 0x8190
    INCBIN "gfx/bank048_Image226_8190.2bpp"

Image227Tilemap:: ; 0x4b60
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $08, $08, $08, $08, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $08, $08, $08, $08, $08, $08, $2f, $30, $31, $32, $33, $34, $35
    db $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
    db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55
    db $56, $57, $58, $08, $08, $08, $08, $08, $08, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $56, $60, $61, $62, $08, $08, $08, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $56, $6c, $6d, $0b, $6e, $6f, $0b, $0b, $0b, $70, $71, $72, $73, $74, $75, $56
    db $56, $76, $77, $0b, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $56
    db $56, $83, $84, $0b, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90
    db $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0
    db $a1, $a2, $54, $a3, $0b, $0b, $0b, $0b, $0b, $0b, $a4, $a5, $a6, $a7, $a8, $a9
    db $aa, $ab, $ac, $94, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $ad, $ae, $af, $b0, $b1
    db $b2, $b3, $b4, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $b5, $b6, $b7, $b8, $b9
    db $ba, $bb, $bc, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $bd, $be, $bf, $c0, $c1
    db $c2, $54, $c3, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $c4, $c5, $c6, $c7, $c8
    db $c9, $ca, $0b, $0b, $0b, $0b, $0b, $0b, $cb, $cc, $0b, $0b, $cd, $ce, $cf, $d0
    db $54, $d1, $0b, $0b, $0b, $d2, $d3, $d4, $d5, $d6, $0b, $0b, $d7, $d8, $d9, $da
    db $db, $dc, $0b, $0b, $0b, $dd, $de, $df, $e0, $e1, $e2, $0b, $e3, $e4, $e5, $e6

Image227PaletteIndex:: ; 0x4ca0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $01, $01, $01
    db $01, $01, $00, $00, $02, $02, $02, $02, $02, $02, $01, $02, $01, $01, $01, $01
    db $01, $01, $01, $00, $01, $02, $02, $02, $02, $02, $01, $02, $01, $01, $01, $01
    db $01, $01, $01, $00, $01, $01, $01, $02, $02, $02, $01, $01, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $01, $01, $00, $20, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01
    db $00, $01, $00, $00, $00, $00, $00, $03, $03, $01, $00, $00, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $03, $03, $03, $03, $03, $00, $01, $01, $01, $01

Image227Tileset:: ; 0x4de0
    INCBIN "gfx/bank049_Image227_4de0.2bpp"

Image228Tilemap:: ; 0x5c50
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $03, $04, $05, $06
    db $07, $08, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $0a, $0b, $0c, $06
    db $0d, $0e, $01, $01, $01, $01, $01, $01, $01, $01, $01, $0f, $10, $11, $12, $06
    db $13, $14, $01, $01, $01, $01, $01, $01, $01, $01, $01, $15, $16, $17, $18, $06
    db $19, $1a, $01, $1b, $1c, $01, $01, $01, $01, $01, $1d, $1e, $1f, $20, $21, $06
    db $22, $23, $01, $01, $24, $25, $26, $27, $28, $01, $29, $2a, $2b, $2c, $2d, $06
    db $22, $22, $2e, $01, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
    db $22, $22, $3b, $01, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
    db $22, $22, $48, $01, $01, $01, $49, $4a, $01, $01, $4b, $4c, $4d, $4e, $4f, $50
    db $22, $51, $01, $01, $01, $01, $52, $53, $01, $01, $54, $55, $56, $57, $58, $59
    db $5a, $5b, $01, $01, $01, $01, $5c, $01, $01, $01, $5d, $5e, $5f, $60, $61, $62
    db $63, $64, $65, $66, $67, $67, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70
    db $71, $72, $06, $06, $06, $06, $06, $06, $06, $73, $74, $75, $76, $77, $78, $79
    db $7a, $06, $06, $06, $06, $06, $06, $06, $06, $06, $7b, $7c, $7d, $7e, $7f, $80
    db $81, $06, $06, $06, $06, $06, $06, $06, $06, $06, $82, $83, $84, $85, $86, $87
    db $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97
    db $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $06, $06, $06, $06, $ae, $af, $b0, $b1, $b2, $b3
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $b4, $b5, $b6, $b7, $b8, $b9
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $ba, $bb, $bc, $bd, $be, $bf

Image228PaletteIndex:: ; 0x5d90
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $02
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $02, $02
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $02, $02
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $02, $02
    db $01, $00, $00, $00, $03, $00, $00, $00, $00, $00, $01, $01, $01, $01, $02, $02
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $00, $01, $01, $01, $01, $02, $02
    db $00, $00, $00, $00, $00, $03, $03, $03, $03, $01, $02, $01, $01, $01, $02, $02
    db $00, $00, $00, $00, $00, $03, $03, $03, $03, $01, $02, $02, $01, $01, $01, $03
    db $00, $00, $00, $00, $00, $00, $03, $03, $00, $00, $02, $02, $01, $01, $03, $00
    db $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $02, $02, $01, $03, $00, $00
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $03, $00, $00
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $03, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $03, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01

Image228Tileset:: ; 0x5ed0
    INCBIN "gfx/bank049_Image228_5ed0.2bpp"

Image229Tilemap:: ; 0x6ad0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $03
    db $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $06, $07
    db $08, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $09, $0a, $0b, $0c, $0d
    db $0e, $00, $00, $0f, $10, $11, $12, $13, $00, $14, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
    db $3b, $2c, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49
    db $4a, $2c, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58
    db $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68
    db $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78
    db $2c, $2c, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86
    db $2c, $2c, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94
    db $2c, $2c, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $2c, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1
    db $2c, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0

Image229PaletteIndex:: ; 0x6c10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $01, $01
    db $04, $04, $00, $00, $00, $00, $07, $07, $02, $02, $06, $06, $01, $01, $01, $01
    db $04, $04, $05, $05, $00, $00, $00, $00, $02, $06, $06, $01, $01, $01, $01, $01
    db $04, $04, $04, $05, $00, $00, $00, $00, $00, $01, $06, $01, $01, $01, $01, $01
    db $04, $04, $05, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $00
    db $04, $04, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $04, $05, $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00
    db $04, $04, $05, $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00
    db $04, $04, $05, $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00
    db $04, $04, $05, $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00
    db $04, $05, $05, $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $00, $00, $00
    db $04, $05, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $00, $00, $00

Image229Tileset:: ; 0x6d50
    INCBIN "gfx/bank049_Image229_6d50.2bpp"

Image230Tilemap:: ; 0x7960
    db $00, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $02, $02, $04
    db $05, $06, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $07, $02, $02, $08
    db $09, $0a, $02, $02, $02, $02, $02, $02, $02, $02, $02, $0b, $02, $02, $02, $0c
    db $0d, $0e, $02, $02, $02, $02, $02, $02, $02, $02, $02, $0f, $02, $02, $02, $10
    db $11, $12, $13, $14, $15, $02, $02, $02, $16, $17, $18, $19, $1a, $02, $02, $1b
    db $1c, $02, $02, $02, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $02, $27
    db $28, $29, $2a, $2b, $2c, $2d, $02, $2e, $2f, $30, $31, $32, $33, $34, $35, $36
    db $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46
    db $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56
    db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76
    db $54, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85
    db $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $54
    db $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $54, $a3
    db $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3
    db $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3
    db $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3
    db $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3
    db $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3
    db $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03

Image230PaletteIndex:: ; 0x7aa0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $06, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $06, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $06, $06, $06, $06
    db $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $06, $06, $06, $06
    db $07, $07, $07, $07, $07, $00, $00, $00, $01, $00, $07, $06, $06, $06, $06, $06
    db $07, $06, $06, $06, $07, $07, $07, $01, $02, $02, $06, $06, $06, $06, $06, $06
    db $07, $07, $07, $07, $07, $00, $00, $02, $06, $02, $02, $06, $06, $06, $06, $06
    db $03, $03, $03, $03, $00, $00, $03, $02, $06, $06, $02, $06, $06, $06, $01, $01
    db $03, $03, $03, $03, $00, $00, $03, $02, $02, $02, $02, $06, $06, $01, $01, $01
    db $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $06, $06, $01, $01, $01, $01
    db $05, $05, $03, $03, $00, $00, $00, $00, $00, $00, $06, $06, $01, $01, $01, $01
    db $04, $05, $03, $03, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $01
    db $05, $05, $03, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $05, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $03, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $08, $08, $08

Image230TilesetPart1:: ; 0x7be0
    INCBIN "gfx/bank049_Image230Part1_7be0.2bpp"
