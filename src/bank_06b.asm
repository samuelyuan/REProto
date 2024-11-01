SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

Image333TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank06a_Image333Part2_4000.2bpp"

Image334Tilemap:: ; 0x4730
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $98, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd
    db $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd
    db $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed
    db $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd
    db $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $13, $14, $15, $16, $17, $13, $18, $19, $1a, $1b
    db $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $13, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $19, $30, $31, $13, $32, $13, $33, $34, $35, $13, $13

Image334PaletteIndex:: ; 0x4870
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $04, $04, $04, $00, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $04, $00, $00, $00, $04, $00, $00, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $04, $00, $00, $00, $04, $00, $00, $00, $00
    db $00, $04, $04, $04, $04, $04, $04, $04, $01, $01, $00, $04, $00, $00, $00, $00
    db $04, $04, $04, $04, $07, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $04, $04, $07, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $04, $04, $07, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $48, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image334Tileset:: ; 0x49b0
    INCBIN "gfx/bank06b_Image334_49b0.2bpp"

Image335Tilemap:: ; 0x5d10
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $00, $09, $0a, $0b, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $00, $13, $00, $14, $15, $16, $0b, $0b, $17, $18, $19
    db $1a, $1b, $1c, $0b, $1d, $1e, $1f, $20, $21, $0b, $0b, $22, $23, $24, $25, $0b
    db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $0b, $0b
    db $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $0b, $0b, $0b
    db $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $0b
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $00, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $00, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $00, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $af, $b0, $b1, $b2, $a5, $b3, $a5, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca
    db $cb, $cc, $cd, $ce, $cf, $d0, $0b, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9
    db $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $0b
    db $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8
    db $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $0b, $03, $04, $05, $06, $07
    db $08, $09, $1c, $0a, $0b, $0c, $0d, $0e, $0f, $10, $0b, $0b, $11, $12, $13, $14
    db $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $00, $1e, $0b, $0b, $1f, $20, $21

Image335PaletteIndex:: ; 0x5e50
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $01, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $06, $06, $05, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $01, $01, $01, $01
    db $00, $00, $04, $04, $05, $05, $05, $00, $00, $06, $01, $06, $01, $01, $01, $01
    db $00, $00, $04, $01, $01, $01, $01, $01, $01, $00, $06, $06, $01, $01, $01, $01
    db $00, $00, $04, $01, $01, $01, $01, $01, $00, $05, $06, $01, $01, $01, $01, $01
    db $00, $00, $05, $01, $01, $01, $00, $01, $00, $01, $06, $06, $06, $01, $01, $01
    db $00, $00, $05, $05, $05, $00, $00, $06, $00, $00, $00, $00, $06, $05, $05, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $08, $08, $08, $00, $08, $08, $08, $08, $08
    db $08, $08, $40, $08, $08, $08, $08, $08, $08, $08, $00, $00, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $08, $00, $00, $08, $08, $08

Image335Tileset:: ; 0x5f90
    INCBIN "gfx/bank06b_Image335_5f90.2bpp"

Image336Tilemap:: ; 0x71b0
    db $00, $01, $02, $03, $04, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $04, $12, $13, $14, $15, $04, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $04, $04, $04, $04, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38
    db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58
    db $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $56
    db $68, $69, $6a, $6b, $6c, $56, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76
    db $77, $78, $11, $79, $7a, $56, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84
    db $85, $04, $04, $86, $87, $88, $56, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91
    db $92, $93, $94, $95, $04, $96, $56, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $91
    db $85, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $04, $04, $ae, $04, $04, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $ad
    db $04, $b9, $ba, $bb, $bc, $bd, $56, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6
    db $c7, $c8, $c9, $ca, $56, $56, $56, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3
    db $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3
    db $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3
    db $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03
    db $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13
    db $14, $15, $04, $04, $16, $17, $04, $04, $04, $18, $19, $1a, $1b, $1c, $cb, $1d

Image336PaletteIndex:: ; 0x72f0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $06, $01, $01, $00
    db $00, $00, $20, $00, $00, $00, $00, $00, $06, $06, $06, $06, $00, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $05, $00, $00, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $02, $07, $00, $06, $01, $01, $00
    db $40, $00, $00, $00, $00, $00, $00, $00, $06, $07, $07, $06, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $01, $01, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $05, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $0e, $0d, $0d
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0e, $08
    db $08, $08, $00, $00, $08, $08, $00, $00, $00, $08, $08, $08, $08, $08, $40, $08

Image336TilesetPart1:: ; 0x7430
    INCBIN "gfx/bank06b_Image336Part1_7430.2bpp"

