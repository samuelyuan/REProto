SECTION "ROM Bank $077", ROMX[$4000], BANK[$77]

Image369TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank076_Image369Part2_4000.2bpp"

Image370Tilemap:: ; 0x48c0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f
    db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf
    db $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df
    db $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef
    db $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $0c, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e

Image370PaletteIndex:: ; 0x4a00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $01, $00, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $06, $01, $01, $01, $01, $00, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $01, $06, $06, $01, $01, $01, $00, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $06, $06, $02, $01, $01, $01, $00, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $01, $06, $02, $00, $01, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00
    db $08, $08, $08, $08, $08, $08, $09, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image370Tileset:: ; 0x4b40
    INCBIN "gfx/bank077_Image370_4b40.2bpp"

Image371Tilemap:: ; 0x5f30
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $3c, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $62, $62, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c
    db $7d, $7e, $7f, $80, $62, $62, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a
    db $8b, $8c, $8d, $8e, $62, $62, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98
    db $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8
    db $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $ac, $b1, $b2, $b3, $b4, $b5, $b6, $b7
    db $b8, $b9, $ba, $ac, $bb, $bc, $bd, $be, $bf, $c0, $3c, $c1, $c2, $c3, $c4, $c5
    db $c6, $c7, $c8, $ac, $ac, $ac, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2
    db $d3, $d4, $d5, $ac, $ac, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0
    db $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0
    db $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00
    db $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10
    db $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20
    db $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30

Image371PaletteIndex:: ; 0x6070
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $05, $05, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $05, $03, $00, $00, $00, $00, $00, $01, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $01, $00
    db $00, $00, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $01, $00
    db $00, $00, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $05, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image371Tileset:: ; 0x61b0
    INCBIN "gfx/bank077_Image371_61b0.2bpp"

Image372Tilemap:: ; 0x74c0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f
    db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf
    db $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df
    db $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef
    db $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f

Image372PaletteIndex:: ; 0x7600
    db $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $05, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $04, $04, $04
    db $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $05, $04, $04, $04, $04, $04
    db $01, $05, $05, $00, $00, $00, $00, $00, $00, $05, $05, $04, $04, $04, $04, $04
    db $01, $05, $05, $05, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $04
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $04
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $04, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $04, $04, $04, $04
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $04, $04
    db $08, $08, $0f, $0f, $08, $08, $08, $08, $08, $08, $09, $08, $08, $08, $08, $0d
    db $08, $09, $0f, $0f, $09, $08, $08, $08, $08, $08, $09, $08, $08, $08, $08, $08
    db $09, $09, $09, $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $09, $09, $09, $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image372TilesetPart1:: ; 0x7740
    INCBIN "gfx/bank077_Image372Part1_7740.2bpp"

