SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

Image76TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank022_Image76Part2_4000.2bpp"

Image77Tilemap:: ; 0x49e0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0e
    db $0f, $10, $10, $10, $10, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $0e
    db $1a, $10, $00, $1b, $1c, $1d, $10, $1e, $1e, $1f, $20, $21, $22, $23, $0e, $0e
    db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $10, $2e, $2f, $30, $0e, $31
    db $32, $33, $0e, $34, $35, $36, $37, $38, $39, $3a, $3b, $10, $3c, $3d, $3e, $3f
    db $33, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $43, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $0e, $5c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $10, $7b
    db $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $0f, $10, $10, $10
    db $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $10, $96
    db $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6
    db $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6
    db $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6
    db $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6
    db $d7, $d8, $d9, $da, $db, $10, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5
    db $e6, $e7, $e8, $e9, $ea, $10, $10, $10, $b6, $10, $eb, $ec, $ed, $ed, $ee, $ef
    db $f0, $f1, $f2, $f3, $f4, $f5, $f6, $10, $f7, $f8, $10, $f9, $fa, $fb, $fc, $fd
    db $10, $fe, $10, $10, $10, $ff, $00, $01, $02, $10, $10, $10, $10, $10, $10, $10
    db $10, $10, $10, $10, $10, $10, $10, $03, $04, $05, $06, $10, $10, $10, $10, $10

Image77PaletteIndex:: ; 0x4b20
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $00
    db $04, $04, $24, $04, $04, $04, $04, $04, $44, $04, $04, $04, $04, $04, $00, $00
    db $04, $04, $04, $00, $00, $00, $04, $04, $04, $04, $04, $04, $04, $04, $00, $04
    db $04, $02, $00, $00, $00, $00, $00, $00, $06, $04, $04, $04, $04, $04, $04, $04
    db $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $04, $06, $06, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $05, $05, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $06, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $06, $00, $00, $00, $00, $20, $00, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $06, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $04, $03, $04, $04, $04, $04, $06, $00, $00, $00, $00, $06, $06, $06, $06
    db $03, $03, $01, $03, $04, $04, $04, $04, $06, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $01, $01, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $44, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $0c, $0c, $0c, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $0c, $0c, $0c, $0c, $04, $04, $04, $04, $04

Image77Tileset:: ; 0x4c60
    INCBIN "gfx/bank023_Image77_4c60.2bpp"

Image78Tilemap:: ; 0x5cd0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f, $10, $11, $12, $13, $14, $15
    db $16, $17, $17, $17, $17, $18, $19, $19, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20
    db $21, $22, $23, $23, $23, $23, $23, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $39, $39
    db $00, $00, $3a, $3b, $3c, $3d, $3e, $3f, $40, $03, $41, $39, $39, $39, $39, $39
    db $00, $00, $00, $42, $43, $43, $44, $45, $45, $46, $47, $39, $39, $39, $39, $39
    db $00, $00, $48, $49, $43, $43, $4a, $4b, $4c, $4d, $4e, $39, $39, $39, $39, $39
    db $00, $4f, $50, $51, $43, $43, $52, $53, $54, $55, $56, $39, $39, $39, $39, $39
    db $00, $00, $00, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $39, $39, $39, $39
    db $00, $00, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $39, $39, $39, $39
    db $00, $6a, $6b, $00, $00, $00, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $39, $39
    db $74, $75, $00, $00, $00, $00, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $39, $39
    db $75, $00, $00, $00, $7e, $7f, $03, $80, $81, $82, $39, $39, $83, $84, $85, $39
    db $00, $00, $00, $00, $00, $00, $86, $87, $88, $89, $8a, $8a, $8a, $8b, $8c, $39
    db $00, $00, $00, $00, $00, $8d, $8e, $3c, $8f, $90, $39, $39, $39, $91, $92, $39
    db $00, $00, $00, $00, $00, $93, $94, $95, $96, $97, $98, $98, $98, $99, $9a, $39
    db $00, $00, $00, $9b, $9c, $03, $03, $03, $03, $03, $03, $03, $03, $9d, $9e, $39
    db $00, $00, $00, $9f, $03, $03, $03, $03, $03, $03, $03, $03, $03, $a0, $a1, $a2

Image78PaletteIndex:: ; 0x5e10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $04, $06, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $04, $06, $06, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $06, $06, $01, $01, $06
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $06, $04, $04, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04, $04, $04, $04, $04
    db $03, $03, $03, $06, $01, $01, $01, $01, $01, $06, $01, $04, $04, $04, $04, $04
    db $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04, $04, $04
    db $02, $02, $02, $00, $00, $00, $00, $00, $00, $07, $01, $04, $04, $04, $04, $04
    db $02, $02, $02, $03, $00, $00, $00, $02, $02, $02, $07, $04, $04, $04, $04, $04
    db $02, $02, $02, $03, $00, $00, $00, $00, $00, $07, $07, $04, $04, $04, $04, $04
    db $02, $02, $02, $03, $00, $00, $00, $00, $00, $00, $07, $04, $04, $04, $04, $04
    db $02, $02, $03, $00, $00, $00, $00, $00, $00, $02, $02, $04, $04, $04, $04, $04
    db $02, $03, $03, $00, $00, $00, $00, $00, $00, $02, $02, $04, $04, $04, $04, $04
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $20, $00, $02, $01, $01, $01, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $07, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $04

Image78Tileset:: ; 0x5f50
    INCBIN "gfx/bank023_Image78_5f50.2bpp"

Image79Tilemap:: ; 0x6980
    db $00, $00, $00, $01, $02, $03, $03, $03, $04, $05, $06, $06, $06, $06, $06, $07
    db $00, $00, $00, $00, $00, $08, $09, $0a, $0b, $0c, $0d, $0e, $0e, $0f, $10, $11
    db $00, $00, $00, $12, $13, $14, $14, $14, $15, $16, $06, $06, $06, $06, $17, $18
    db $00, $00, $00, $19, $1a, $1b, $1c, $1d, $1e, $1f, $06, $06, $06, $20, $21, $06
    db $22, $00, $00, $00, $00, $00, $00, $00, $00, $23, $24, $25, $26, $27, $28, $06
    db $29, $2a, $00, $00, $00, $00, $00, $00, $2b, $2c, $14, $2d, $2e, $06, $06, $06
    db $2f, $30, $31, $00, $00, $32, $33, $34, $35, $14, $14, $36, $37, $06, $06, $06
    db $00, $38, $39, $3a, $00, $2b, $3b, $3c, $3d, $3e, $3f, $40, $06, $06, $06, $06
    db $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $06, $06, $06, $06
    db $4d, $4e, $4f, $00, $00, $50, $51, $52, $53, $54, $55, $56, $06, $06, $06, $06
    db $00, $00, $00, $00, $57, $58, $59, $5a, $5b, $5c, $5d, $06, $06, $06, $06, $06
    db $00, $00, $00, $5e, $5f, $60, $61, $62, $63, $64, $65, $06, $06, $06, $06, $06
    db $00, $00, $00, $00, $66, $67, $00, $68, $69, $6a, $6b, $06, $06, $06, $06, $06
    db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $06, $06, $06
    db $79, $7a, $7b, $7c, $7d, $7d, $7d, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $86, $87, $88, $89, $8a, $8b, $8c
    db $8d, $8d, $8d, $8d, $8d, $8d, $8d, $8d, $8d, $8e, $8f, $90, $91, $92, $93, $94
    db $14, $14, $14, $14, $14, $14, $14, $14, $14, $95, $96, $14, $14, $97, $98, $99
    db $9a, $9b, $9b, $9c, $9d, $9e, $1d, $9f, $a0, $a1, $a2, $a3, $14, $a4, $a5, $a6
    db $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $14, $af, $b0, $b1, $14, $14, $b2, $b3

Image79PaletteIndex:: ; 0x6ac0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $04, $04, $04, $04
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04, $04
    db $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04, $04
    db $02, $02, $03, $00, $00, $20, $00, $00, $00, $07, $07, $04, $04, $04, $04, $04
    db $02, $02, $02, $03, $03, $00, $00, $00, $00, $02, $02, $04, $04, $04, $04, $04
    db $02, $02, $02, $02, $02, $00, $00, $00, $06, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $02, $02, $02, $00, $01, $01, $01, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $02, $02, $02, $00, $01, $01, $01, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $02, $02, $02, $00, $00, $00, $01, $04, $04, $04, $04, $04, $04, $04
    db $03, $03, $03, $03, $03, $00, $00, $00, $01, $04, $04, $04, $04, $04, $04, $04
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $04, $01, $06
    db $01, $01, $01, $01, $01, $01, $21, $01, $01, $01, $01, $01, $01, $04, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04

Image79Tileset:: ; 0x6c00
    INCBIN "gfx/bank023_Image79_6c00.2bpp"

Image80Tilemap:: ; 0x7740
    db $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0a, $0b
    db $00, $00, $00, $00, $00, $0c, $0d, $0e, $0f, $03, $03, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $10, $11, $12, $07, $13, $14, $15
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $16, $17, $00, $00, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23
    db $00, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32
    db $00, $00, $33, $00, $34, $35, $36, $37, $38, $39, $39, $39, $39, $39, $39, $39
    db $00, $00, $3a, $3b, $00, $3c, $3d, $3e, $3f, $39, $39, $39, $39, $39, $39, $39
    db $00, $40, $41, $42, $43, $44, $45, $46, $47, $39, $39, $39, $39, $39, $39, $39
    db $00, $48, $49, $4a, $4b, $00, $4c, $4d, $4e, $4f, $50, $39, $39, $39, $39, $39
    db $51, $52, $53, $54, $55, $00, $56, $57, $58, $59, $5a, $39, $39, $39, $39, $39
    db $00, $5b, $5c, $00, $00, $00, $5d, $5e, $5f, $4f, $60, $39, $39, $39, $39, $39
    db $00, $61, $62, $00, $00, $63, $64, $65, $66, $03, $67, $68, $39, $39, $39, $39
    db $69, $6a, $00, $00, $00, $6b, $03, $03, $03, $03, $03, $6c, $6d, $6e, $39, $39
    db $6f, $70, $00, $00, $00, $00, $71, $11, $72, $73, $74, $03, $6c, $75, $6e, $39
    db $76, $62, $00, $00, $00, $00, $00, $00, $00, $00, $77, $03, $03, $78, $79, $7a
    db $7b, $00, $00, $00, $00, $00, $00, $00, $00, $00, $7c, $03, $03, $7d, $7e, $39
    db $70, $00, $00, $00, $00, $00, $00, $00, $00, $00, $7f, $03, $03, $80, $81, $39
    db $82, $00, $00, $00, $00, $00, $00, $00, $83, $84, $03, $03, $03, $85, $86, $87
    db $00, $00, $00, $00, $00, $00, $88, $89, $0f, $03, $03, $8a, $8b, $8c, $39, $8d

Image80PaletteIndex:: ; 0x7880
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $06
    db $02, $03, $00, $00, $00, $00, $01, $01, $01, $01, $01, $07, $07, $01, $07, $01
    db $02, $02, $00, $00, $00, $00, $01, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $03, $00, $00, $00, $01, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $03, $00, $01, $01, $01, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $03, $00, $00, $00, $01, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $03, $00, $00, $00, $01, $06, $02, $02, $04, $04, $04, $04, $04, $04
    db $02, $03, $00, $00, $00, $00, $00, $00, $02, $02, $04, $04, $04, $04, $04, $04
    db $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04, $04, $04
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04, $04
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $02

Image80TilesetPart1:: ; 0x79c0
    INCBIN "gfx/bank023_Image80Part1_79c0.2bpp"

