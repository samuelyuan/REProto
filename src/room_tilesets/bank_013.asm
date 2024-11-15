SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

Image11TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank012_Image11Part2_4000.2bpp"

Image12Tilemap:: ; 0x5050
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $00, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $00, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $1f, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $1f
    db $3c, $1f, $2f, $3d, $3e, $3e, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
    db $3c, $1f, $48, $49, $4a, $4b, $3e, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54
    db $3c, $1f, $48, $55, $56, $57, $3e, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $3c, $1f, $61, $62, $3e, $3e, $3e, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $3c, $1f, $6c, $6d, $6e, $3e, $3e, $6f, $70, $71, $72, $73, $74, $51, $75, $76
    db $3c, $1f, $77, $01, $78, $3e, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82
    db $83, $1f, $77, $84, $85, $86, $85, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $83, $1f, $90, $91, $85, $85, $85, $85, $92, $93, $94, $95, $96, $97, $98, $99
    db $83, $1f, $9a, $9b, $85, $85, $85, $85, $85, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $83, $1f, $9a, $a3, $85, $85, $85, $85, $85, $a4, $85, $a5, $a6, $a7, $a8, $a9
    db $83, $1f, $9a, $aa, $85, $ab, $ac, $ad, $ae, $af, $85, $b0, $b1, $b2, $b3, $b4
    db $83, $1f, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $40, $bd, $be, $bf, $c0, $a7
    db $c1, $c2, $b5, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $a7
    db $85, $01, $b5, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $35, $d7, $d8, $a7, $d9
    db $85, $01, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $85, $e3, $e4, $e5, $e6
    db $85, $01, $e7, $e8, $e9, $ea, $eb, $ec, $85, $85, $ed, $85, $ee, $ef, $bf, $f0

Image12PaletteIndex:: ; 0x5190
    db $01, $01, $03, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $05, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $03, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $05, $05, $05, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $06, $02, $03, $07, $01, $01, $41, $01, $01
    db $01, $01, $04, $43, $00, $00, $00, $07, $07, $07, $03, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $07, $07, $03, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $02, $01, $01, $01, $00, $01, $01
    db $01, $01, $04, $03, $00, $03, $03, $05, $03, $03, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $03, $03, $03, $05, $05, $03, $01, $01, $01, $01, $01, $00
    db $01, $01, $04, $03, $03, $05, $05, $05, $05, $03, $01, $01, $01, $01, $01, $00
    db $01, $41, $04, $03, $03, $05, $03, $00, $05, $03, $01, $01, $01, $01, $00, $01
    db $01, $41, $04, $03, $03, $03, $03, $03, $05, $03, $02, $01, $01, $01, $01, $01
    db $01, $41, $04, $03, $03, $03, $03, $03, $00, $00, $02, $01, $01, $01, $01, $01

Image12Tileset:: ; 0x52d0
    INCBIN "gfx/bank013_Image12_52d0.2bpp"

Image13Tilemap:: ; 0x61e0
    db $00, $00, $01, $02, $03, $04, $04, $04, $04, $04, $04, $05, $06, $07, $08, $09
    db $00, $00, $0a, $0b, $0c, $0d, $0e, $0f, $04, $04, $04, $10, $11, $07, $12, $13
    db $00, $00, $14, $15, $16, $17, $18, $19, $1a, $04, $04, $1b, $1c, $1d, $1e, $1f
    db $00, $00, $20, $21, $04, $22, $23, $24, $25, $04, $04, $26, $27, $28, $29, $2a
    db $00, $2b, $2c, $2d, $04, $04, $04, $04, $04, $04, $2e, $2f, $07, $30, $31, $32
    db $00, $33, $34, $35, $04, $04, $04, $04, $04, $04, $36, $37, $38, $39, $3a, $29
    db $00, $3b, $3c, $3d, $04, $04, $04, $04, $04, $04, $3e, $3f, $40, $41, $42, $43
    db $00, $44, $45, $46, $04, $04, $04, $04, $04, $47, $48, $07, $49, $43, $4a, $4b
    db $00, $4c, $02, $07, $4d, $04, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $29
    db $00, $57, $0b, $07, $58, $04, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62
    db $00, $63, $07, $07, $07, $64, $65, $66, $67, $68, $07, $69, $6a, $29, $6b, $6c
    db $00, $6d, $07, $07, $07, $07, $07, $07, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $00, $76, $07, $07, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $29, $81
    db $00, $82, $83, $84, $85, $86, $87, $88, $89, $07, $8a, $8b, $8c, $8d, $8e, $00
    db $2b, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $00, $9b, $9c
    db $33, $9d, $04, $9e, $9f, $a0, $04, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $29, $a8
    db $3b, $a9, $04, $04, $04, $04, $04, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2
    db $44, $b3, $47, $b4, $b5, $04, $04, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $04, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $29
    db $cd, $ce, $04, $cf, $d0, $04, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da

Image13PaletteIndex:: ; 0x6320
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $00, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $00
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $00
    db $01, $04, $03, $00, $00, $00, $00, $03, $00, $02, $01, $01, $01, $01, $01, $01
    db $01, $04, $00, $00, $00, $00, $00, $03, $03, $02, $01, $01, $01, $00, $01, $01
    db $01, $04, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01
    db $01, $04, $00, $00, $00, $03, $03, $00, $02, $01, $01, $01, $01, $01, $00, $01
    db $01, $04, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01
    db $01, $04, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01
    db $04, $05, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $00, $01
    db $04, $05, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $05, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $04, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image13Tileset:: ; 0x6460
    INCBIN "gfx/bank013_Image13_6460.2bpp"

Image14Tilemap:: ; 0x7210
    db $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0a, $0b
    db $00, $00, $00, $00, $00, $00, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $0a, $14
    db $15, $16, $17, $00, $00, $00, $00, $00, $00, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $0a, $0a, $1f, $20, $21, $22, $23, $00, $00, $00, $00, $24, $25, $26, $27, $28
    db $0a, $0a, $0a, $0a, $0a, $0a, $29, $2a, $2b, $2c, $00, $00, $00, $2d, $2e, $2f
    db $0a, $30, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $31, $32, $33, $34, $35, $00
    db $0a, $36, $37, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $38, $39, $3a, $3b, $3c, $3d
    db $3e, $3f, $40, $41, $42, $13, $43, $44, $0a, $0a, $45, $39, $46, $47, $48, $49
    db $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59
    db $5a, $5b, $0a, $0a, $0a, $5c, $5d, $5e, $00, $5f, $60, $61, $0a, $62, $63, $00
    db $64, $65, $0a, $0a, $0a, $66, $67, $68, $69, $6a, $6b, $6c, $0a, $6d, $6e, $00
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $0a, $7b, $7c, $7d
    db $0a, $30, $7e, $0a, $0a, $0a, $43, $7f, $0a, $0a, $80, $81, $82, $83, $84, $39
    db $85, $36, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $86, $87, $88, $89, $8a, $8b
    db $0a, $0a, $0a, $0a, $0a, $0a, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $00, $94
    db $0a, $29, $95, $96, $97, $98, $00, $00, $00, $00, $00, $00, $99, $9a, $9b, $9c
    db $9d, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9e, $9f, $a0, $a1, $a2
    db $00, $00, $00, $00, $00, $00, $00, $00, $0c, $a3, $a4, $a5, $a6, $a7, $a8, $a9
    db $00, $00, $00, $00, $00, $00, $9e, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2
    db $00, $00, $00, $00, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $0a, $ba, $56, $bb, $bc

Image14PaletteIndex:: ; 0x7350
    db $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $03
    db $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $00, $00, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $05, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $05, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $00, $05, $05
    db $00, $02, $02, $02, $02, $02, $00, $00, $00, $00, $03, $03, $03, $05, $05, $05
    db $00, $02, $01, $01, $01, $02, $02, $00, $00, $00, $05, $03, $00, $05, $03, $00
    db $00, $02, $01, $01, $01, $02, $02, $00, $00, $00, $05, $03, $00, $05, $03, $00
    db $00, $02, $02, $02, $02, $00, $00, $00, $00, $00, $03, $03, $00, $05, $05, $05
    db $00, $40, $00, $00, $00, $00, $20, $00, $00, $00, $03, $03, $00, $05, $05, $00
    db $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $05, $03, $00, $05
    db $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $20, $03, $03, $03, $03, $03, $03, $05
    db $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $05
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $00, $00, $03, $03, $03, $05

Image14TilesetPart1:: ; 0x7490
    INCBIN "gfx/bank013_Image14Part1_7490.2bpp"
