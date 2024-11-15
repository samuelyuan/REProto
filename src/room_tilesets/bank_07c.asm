SECTION "ROM Bank $07c", ROMX[$4000], BANK[$7c]

Image385TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank07b_Image385Part2_4000.2bpp"

Image386Tilemap:: ; 0x46f0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $87, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae
    db $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de
    db $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee
    db $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe
    db $ff, $00, $01, $02, $03, $04, $05, $87, $87, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $87, $87, $14, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $87, $87, $22, $23, $24, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38

Image386PaletteIndex:: ; 0x4830
    db $06, $06, $06, $06, $06, $06, $06, $05, $02, $01, $01, $01, $01, $01, $01, $01
    db $06, $00, $06, $06, $06, $06, $06, $05, $05, $01, $01, $01, $03, $01, $01, $01
    db $06, $06, $06, $00, $06, $05, $06, $05, $05, $01, $01, $01, $06, $04, $01, $01
    db $06, $06, $06, $06, $06, $06, $06, $05, $05, $01, $07, $06, $02, $04, $01, $01
    db $05, $06, $06, $05, $05, $06, $07, $03, $00, $05, $07, $04, $02, $04, $04, $01
    db $05, $05, $05, $05, $05, $05, $07, $03, $05, $05, $02, $02, $02, $00, $04, $01
    db $05, $05, $05, $00, $00, $00, $01, $03, $05, $06, $02, $02, $02, $02, $04, $01
    db $05, $05, $05, $00, $00, $00, $00, $05, $05, $06, $02, $02, $02, $02, $04, $04
    db $05, $05, $05, $05, $05, $00, $00, $00, $05, $06, $02, $02, $02, $02, $02, $04
    db $06, $06, $05, $05, $05, $05, $00, $00, $05, $06, $02, $02, $02, $02, $02, $02
    db $06, $06, $06, $06, $06, $05, $05, $05, $05, $06, $02, $02, $02, $02, $02, $02
    db $06, $06, $06, $00, $02, $02, $02, $02, $05, $06, $02, $02, $02, $02, $02, $02
    db $06, $06, $00, $06, $02, $02, $02, $06, $05, $06, $02, $02, $02, $02, $02, $02
    db $06, $06, $06, $00, $02, $02, $02, $02, $05, $05, $06, $02, $02, $02, $02, $02
    db $06, $06, $06, $00, $02, $02, $02, $06, $05, $05, $06, $02, $02, $02, $02, $02
    db $06, $06, $06, $00, $02, $02, $02, $02, $05, $05, $06, $02, $06, $02, $02, $06
    db $05, $0d, $0d, $0d, $0d, $0d, $08, $00, $00, $0d, $0d, $0d, $0e, $0a, $0a, $0e
    db $0d, $0d, $0d, $0d, $0d, $0d, $08, $00, $00, $0d, $0d, $0d, $0e, $0e, $0a, $0e
    db $0d, $0d, $0d, $0d, $08, $08, $08, $00, $00, $0d, $0d, $0d, $0d, $0e, $0e, $0e
    db $08, $08, $08, $08, $08, $0d, $0d, $08, $0d, $0d, $08, $0d, $0d, $0d, $0d, $0d

Image386Tileset:: ; 0x4970
    INCBIN "gfx/bank07c_Image386_4970.2bpp"

Image387Tilemap:: ; 0x5d00
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $0d, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $0d
    db $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d
    db $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d
    db $6e, $6f, $70, $71, $72, $73, $4c, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c
    db $7d, $7e, $7f, $0d, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $5b
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa
    db $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca
    db $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $df, $e0, $e1, $9d, $9d, $e2, $e3, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $53, $53, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6
    db $f7, $f8, $f9, $53, $53, $53, $53, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02
    db $03, $04, $05, $53, $53, $53, $53, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $53, $53, $53, $53, $53, $12, $13, $14, $15, $16, $17, $18, $19
    db $1a, $53, $1b, $1c, $53, $53, $53, $53, $1d, $1e, $1f, $20, $21, $22, $23, $24

Image387PaletteIndex:: ; 0x5e40
    db $05, $05, $05, $01, $01, $01, $01, $01, $01, $03, $04, $02, $02, $00, $02, $02
    db $00, $05, $05, $01, $01, $01, $01, $01, $03, $06, $04, $02, $00, $02, $02, $02
    db $00, $05, $05, $01, $01, $01, $01, $05, $05, $06, $02, $02, $02, $02, $02, $02
    db $05, $05, $05, $00, $01, $01, $05, $05, $05, $06, $06, $02, $02, $02, $02, $00
    db $05, $05, $05, $05, $00, $00, $05, $05, $05, $06, $06, $02, $02, $02, $02, $02
    db $05, $05, $05, $05, $00, $00, $05, $05, $06, $06, $06, $02, $02, $02, $02, $02
    db $05, $05, $03, $03, $05, $02, $06, $05, $06, $06, $02, $06, $02, $02, $02, $02
    db $05, $07, $07, $01, $07, $02, $02, $02, $06, $05, $06, $06, $02, $02, $02, $02
    db $05, $07, $01, $01, $07, $02, $02, $02, $02, $06, $06, $06, $02, $02, $02, $02
    db $05, $05, $07, $07, $07, $02, $02, $02, $06, $06, $06, $06, $02, $06, $06, $02
    db $05, $05, $02, $03, $03, $03, $03, $03, $05, $06, $06, $06, $06, $06, $02, $02
    db $05, $05, $07, $07, $01, $01, $01, $03, $05, $06, $05, $05, $06, $06, $06, $02
    db $05, $05, $07, $01, $01, $01, $01, $01, $05, $06, $05, $05, $05, $06, $06, $06
    db $05, $05, $07, $01, $01, $01, $01, $00, $05, $05, $05, $05, $05, $05, $05, $05
    db $05, $05, $03, $03, $01, $01, $00, $00, $00, $05, $05, $05, $05, $05, $05, $05
    db $05, $05, $00, $00, $00, $00, $00, $00, $05, $05, $05, $00, $00, $00, $05, $05
    db $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $0d, $0d
    db $0d, $0d, $08, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $08, $08, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $00, $08, $08, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08

Image387Tileset:: ; 0x5f80
    INCBIN "gfx/bank07c_Image387_5f80.2bpp"

Image388Tilemap:: ; 0x71d0
    db $00, $01, $02, $03, $04, $04, $04, $04, $04, $04, $04, $04, $05, $06, $07, $07
    db $08, $09, $0a, $0b, $0c, $04, $04, $04, $04, $04, $04, $0d, $0e, $07, $07, $0f
    db $10, $11, $12, $13, $14, $04, $04, $04, $04, $04, $15, $16, $07, $17, $18, $19
    db $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $04
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38
    db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $49, $4a, $4b, $4c, $4d, $4e, $4f, $07, $50, $51, $52, $53, $54, $55, $56, $57
    db $58, $59, $5a, $5b, $5c, $5d, $4f, $07, $5e, $5f, $60, $61, $62, $63, $64, $65
    db $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $04, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84
    db $85, $86, $87, $88, $89, $8a, $7b, $7c, $8b, $8c, $8d, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $a3, $a4, $a5, $a6, $04, $04, $04, $a7, $07, $a8, $a9, $aa, $ab, $ac, $ad, $ae
    db $af, $b0, $07, $b1, $04, $04, $04, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $bb, $bc, $bd, $be, $04, $04, $04, $04, $bf, $07, $c0, $c1, $c2, $c3, $c2, $04
    db $c4, $07, $c5, $c6, $04, $04, $04, $04, $c7, $c8, $07, $c9, $c2, $ca, $cb, $cc
    db $cd, $07, $ce, $04, $04, $04, $04, $04, $04, $cf, $07, $07, $d0, $d1, $d2, $d3
    db $d4, $d5, $d6, $04, $04, $04, $04, $04, $04, $d7, $d8, $07, $d7, $d9, $da, $04
    db $07, $db, $04, $04, $04, $04, $04, $04, $04, $04, $dc, $07, $07, $dd, $de, $df
    db $d5, $c6, $04, $04, $04, $04, $04, $04, $04, $04, $e0, $e1, $07, $07, $e2, $e3

Image388PaletteIndex:: ; 0x7310
    db $01, $01, $01, $06, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00
    db $01, $01, $01, $01, $03, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $05
    db $01, $01, $01, $01, $06, $00, $00, $00, $00, $00, $02, $02, $00, $05, $05, $01
    db $01, $01, $01, $01, $06, $00, $02, $02, $02, $02, $02, $05, $05, $01, $01, $01
    db $01, $01, $01, $01, $06, $02, $02, $02, $05, $05, $05, $01, $01, $01, $01, $01
    db $00, $01, $06, $01, $06, $00, $02, $02, $05, $01, $01, $01, $01, $01, $01, $01
    db $00, $01, $06, $03, $03, $00, $02, $00, $01, $00, $01, $01, $01, $01, $01, $01
    db $00, $01, $06, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $00, $01, $06, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $00, $01, $06, $00, $00, $00, $02, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $01, $06, $00, $00, $00, $02, $02, $00, $01, $01, $01, $00, $00, $01, $01
    db $03, $01, $05, $00, $00, $00, $02, $02, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $03, $00, $00, $00, $00, $02, $00, $05, $01, $01, $01, $01, $01, $01
    db $01, $03, $00, $00, $00, $00, $00, $02, $02, $05, $05, $01, $01, $01, $01, $01
    db $01, $03, $00, $00, $00, $00, $00, $00, $02, $00, $05, $05, $01, $01, $21, $01
    db $03, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $05, $01, $01, $01, $01
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $05, $01, $01, $01
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $05, $05, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $05, $05, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $05, $01

Image388TilesetPart1:: ; 0x7450
    INCBIN "gfx/bank07c_Image388Part1_7450.2bpp"
