SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

Image222TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank047_Image222Part2_4000.2bpp"

Image223Tilemap:: ; 0x4620
    db $00, $01, $02, $03, $04, $02, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $0d, $1d
    db $1e, $02, $02, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $0d
    db $06, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $0d
    db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $0d, $44, $45, $46, $0d
    db $47, $48, $49, $02, $4a, $4b, $4c, $0d, $0d, $4d, $1d, $4e, $4f, $1d, $50, $51
    db $52, $53, $54, $55, $56, $57, $58, $0d, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70
    db $71, $72, $73, $74, $75, $76, $77, $0d, $0d, $0d, $78, $79, $7a, $7b, $7c, $7d
    db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $0d, $c7, $c8, $c9, $ca, $cb, $cc
    db $02, $02, $cd, $ce, $cf, $d0, $d1, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9
    db $da, $db, $dc, $dd, $de, $df, $e0, $e1, $0d, $e2, $e3, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $ec, $02, $02, $02, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5
    db $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05
    db $f6, $f6, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0d, $0e, $0f, $10, $11, $12
    db $f6, $f6, $f6, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f

Image223PaletteIndex:: ; 0x4760
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $02, $01, $02
    db $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $04, $04, $04, $02, $01, $02
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $04, $04, $04, $02, $02, $01
    db $00, $00, $00, $00, $05, $00, $00, $00, $05, $05, $04, $04, $04, $02, $02, $01
    db $00, $00, $00, $00, $05, $05, $01, $01, $01, $01, $02, $01, $04, $02, $02, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $02, $02, $02
    db $01, $05, $00, $00, $05, $05, $05, $05, $04, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $05, $05, $05, $05, $01, $01, $01, $01, $02, $02, $02, $02, $02, $02
    db $05, $05, $05, $05, $05, $05, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $05, $05, $00, $00, $00, $05, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $05, $05, $00, $00, $00, $05, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $04, $04, $04, $01, $04, $02, $02
    db $03, $03, $03, $03, $06, $03, $03, $03, $03, $00, $04, $04, $04, $04, $02, $02
    db $03, $03, $03, $03, $06, $03, $03, $03, $06, $04, $04, $04, $04, $02, $02, $02
    db $03, $03, $03, $03, $06, $03, $03, $03, $00, $04, $04, $04, $04, $02, $02, $02
    db $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $04, $02, $02, $02, $02
    db $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $0c, $0c, $0a, $0a, $0a, $0a
    db $03, $03, $0b, $0b, $0b, $0b, $0b, $0c, $0c, $00, $0c, $0a, $0a, $0a, $0a, $0a
    db $03, $03, $03, $0b, $0b, $0b, $0e, $0c, $0c, $0c, $0c, $0a, $0a, $0a, $0a, $0a

Image223Tileset:: ; 0x48a0
    INCBIN "gfx/bank048_Image223_48a0.2bpp"

Image224Tilemap:: ; 0x5aa0
    db $00, $01, $00, $00, $00, $00, $02, $03, $04, $04, $05, $06, $07, $08, $09, $0a
    db $00, $0b, $00, $00, $00, $0c, $04, $0d, $0e, $0f, $10, $11, $12, $04, $04, $04
    db $13, $00, $00, $00, $00, $14, $15, $16, $17, $18, $19, $1a, $1a, $1b, $04, $04
    db $1c, $00, $00, $00, $1d, $04, $1e, $04, $1f, $20, $1a, $1a, $1a, $21, $04, $04
    db $00, $22, $00, $00, $23, $24, $25, $04, $26, $1a, $1a, $1a, $27, $28, $04, $04
    db $00, $29, $00, $00, $2a, $2b, $2c, $04, $2d, $2e, $2f, $2e, $30, $04, $31, $32
    db $00, $00, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40
    db $00, $00, $00, $00, $41, $42, $43, $44, $45, $46, $47, $48, $49, $00, $00, $4a
    db $4b, $4c, $4d, $4e, $00, $4f, $50, $51, $52, $53, $00, $00, $00, $54, $55, $56
    db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $00, $63, $64, $65
    db $2f, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74
    db $1a, $1a, $75, $04, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $4a, $7e, $7f, $80
    db $81, $82, $83, $04, $84, $85, $86, $87, $88, $89, $8a, $00, $00, $8b, $8c, $8d
    db $04, $04, $04, $8e, $00, $8f, $90, $91, $92, $93, $00, $94, $95, $96, $97, $98
    db $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8
    db $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8
    db $00, $00, $b9, $ba, $00, $bb, $bc, $bd, $be, $bf, $04, $04, $c0, $c1, $c1, $c2
    db $c3, $c4, $00, $00, $00, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $00, $00, $00, $00, $00, $00, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d7, $d7
    db $d8, $d9, $00, $00, $00, $00, $00, $00, $da, $db, $dc, $04, $04, $04, $04, $04

Image224PaletteIndex:: ; 0x5be0
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $05, $05, $05
    db $01, $01, $00, $00, $00, $00, $00, $05, $05, $05, $05, $00, $00, $00, $00, $00
    db $01, $00, $00, $00, $00, $00, $05, $05, $05, $00, $00, $00, $00, $00, $00, $00
    db $01, $00, $00, $00, $00, $00, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00
    db $01, $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01
    db $01, $01, $01, $01, $02, $04, $04, $04, $04, $04, $01, $01, $01, $01, $01, $02
    db $01, $04, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $02, $02, $02
    db $05, $05, $05, $05, $04, $04, $04, $02, $02, $02, $02, $02, $01, $02, $02, $02
    db $20, $00, $00, $00, $05, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $05, $02, $02, $02, $02, $02, $02, $02, $22, $02, $02, $02
    db $00, $00, $00, $00, $05, $02, $02, $02, $02, $02, $02, $01, $01, $02, $02, $02
    db $00, $00, $00, $00, $00, $04, $02, $01, $02, $02, $01, $05, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $05, $01, $05, $05, $05, $00, $00, $01, $00, $01, $00
    db $00, $05, $05, $01, $05, $05, $05, $05, $00, $00, $00, $00, $00, $01, $01, $00
    db $01, $01, $01, $01, $00, $00, $05, $05, $05, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $00, $00, $00, $00, $00, $05, $01, $01, $05, $05, $05, $05, $05, $05
    db $01, $00, $00, $00, $00, $00, $00, $01, $05, $05, $05, $05, $05, $00, $00, $00
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image224Tileset:: ; 0x5d20
    INCBIN "gfx/bank048_Image224_5d20.2bpp"

Image225Tilemap:: ; 0x6af0
    db $00, $01, $02, $03, $04, $05, $06, $07, $01, $08, $01, $01, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $01, $14, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
    db $3a, $3b, $3c, $3d, $3e, $30, $30, $30, $31, $3f, $40, $41, $42, $43, $44, $45
    db $46, $47, $48, $49, $4a, $4b, $4c, $31, $4d, $4e, $4f, $50, $51, $52, $53, $39
    db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63
    db $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73
    db $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83
    db $01, $01, $01, $84, $85, $86, $87, $88, $89, $7b, $31, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $39, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d
    db $01, $07, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $ac, $ad, $30, $30, $30, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8
    db $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8
    db $d9, $da, $db, $15, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7
    db $01, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6
    db $01, $01, $01, $f7, $f8, $f9, $fa, $01, $01, $fb, $fc, $fd, $fe, $ff, $00, $01
    db $01, $01, $02, $03, $04, $05, $01, $01, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $01, $01, $14, $15, $16, $17, $18, $01, $19, $01

Image225PaletteIndex:: ; 0x6c30
    db $02, $00, $00, $00, $03, $03, $00, $05, $00, $04, $03, $03, $03, $03, $03, $03
    db $02, $02, $02, $02, $03, $03, $03, $00, $04, $04, $03, $43, $03, $03, $03, $03
    db $02, $02, $02, $01, $01, $03, $03, $03, $04, $03, $03, $03, $03, $03, $03, $03
    db $02, $00, $01, $01, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $02, $00, $01, $01, $01, $00, $00, $00, $23, $03, $03, $03, $03, $03, $03, $03
    db $02, $00, $00, $02, $02, $03, $03, $23, $03, $03, $03, $03, $03, $03, $03, $03
    db $02, $02, $02, $02, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $02, $02, $02, $02, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $04, $02, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $25, $03, $03, $03, $03, $03
    db $04, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03, $07, $07, $03, $03, $03
    db $00, $45, $04, $03, $03, $03, $03, $03, $05, $07, $03, $07, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $03, $03, $03, $03, $05, $03, $03, $02, $03, $03, $04
    db $03, $03, $00, $00, $00, $03, $03, $03, $03, $00, $02, $02, $02, $02, $04, $02
    db $03, $03, $07, $04, $04, $03, $03, $03, $05, $00, $07, $05, $07, $02, $05, $05
    db $00, $00, $00, $24, $04, $04, $03, $07, $05, $03, $03, $03, $03, $02, $05, $05
    db $00, $02, $02, $02, $04, $04, $04, $02, $07, $07, $07, $03, $03, $02, $02, $05
    db $00, $00, $00, $04, $04, $04, $02, $00, $00, $05, $05, $03, $03, $05, $0a, $0f
    db $00, $00, $0c, $0c, $0c, $0a, $00, $00, $0d, $0d, $0b, $0d, $0d, $0f, $0a, $08
    db $0c, $0c, $0c, $0c, $0c, $0a, $00, $00, $0d, $0b, $0f, $0f, $0f, $00, $0a, $00

Image225Tileset:: ; 0x6d70
    INCBIN "gfx/bank048_Image225_6d70.2bpp"

Image226TilemapPart1:: ; 0x7f10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $03, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05
    db $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $00, $00, $00, $00, $00, $0f, $10
    db $11, $12, $00, $00, $00, $00, $00, $00, $13, $14, $15, $00, $16, $17, $18, $19
    db $1a, $1b, $1c, $00, $00, $00, $1d, $0a, $0a, $0a, $1e, $1f, $20, $21, $22, $23
    db $24, $25, $26, $00, $00, $00, $27, $00, $00, $00, $00, $28, $29, $2a, $2b, $2c
    db $24, $24, $2d, $00, $00, $00, $2e, $00, $00, $00, $00, $2f, $30, $31, $32, $33
    db $24, $24, $34, $00, $35, $36, $00, $00, $00, $00, $37, $38, $39, $3a, $3b, $3c
    db $24, $24, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $39, $47, $48, $49
    db $24, $24, $4a, $00, $00, $4b, $4c, $4d, $4e, $18, $18, $46, $4f, $50, $51, $52
    db $24, $24, $53, $00, $00, $54, $55, $56, $57, $57, $45, $58, $59, $5a, $5b, $5c
    db $24, $24, $5d, $5e, $00, $00, $00, $00, $00, $00, $5f, $60, $61, $62, $63, $64
    db $24, $24, $27, $65, $00, $00, $00, $00, $00, $00, $66, $67, $68, $69, $6a, $6b
    db $24, $24, $6c, $6d, $6e, $6e, $6e, $6f, $00, $00, $70, $71, $72, $73, $74, $75
