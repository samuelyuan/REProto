SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

Image43TilemapPart2:: ; 0x4000
    db $1b, $1c, $1d, $1e, $1f, $20, $06, $21, $22, $23, $24, $25, $26, $27, $28, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39

Image43PaletteIndex:: ; 0x4020
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $02, $02, $02, $03, $01, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $02, $02, $02, $03, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $02, $01, $02, $02, $00, $00, $03
    db $00, $00, $00, $00, $05, $05, $05, $05, $02, $02, $01, $02, $02, $03, $01, $03
    db $00, $00, $00, $00, $05, $01, $01, $01, $02, $01, $01, $01, $02, $03, $01, $03
    db $00, $00, $00, $00, $05, $05, $05, $05, $05, $05, $01, $01, $02, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $02, $03, $03, $03
    db $00, $00, $00, $00, $05, $02, $05, $05, $05, $01, $01, $01, $02, $03, $03, $00
    db $00, $00, $00, $00, $00, $02, $02, $02, $01, $01, $01, $01, $02, $02, $02, $02
    db $00, $00, $00, $00, $05, $05, $05, $05, $05, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $02, $02, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $0a, $0d, $0a, $00, $08, $0a, $0a, $09, $0d, $0d, $08, $0d
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $0d, $0d, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0d

Image43Tileset:: ; 0x8160
    INCBIN "gfx/bank01a_Image43_8160.2bpp"

Image44Tilemap:: ; 0x5500
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $0e, $0e, $45, $46, $47, $48, $49, $4a, $4b, $0e, $4c
    db $4d, $4e, $4f, $50, $0e, $0e, $0e, $51, $52, $53, $54, $55, $56, $57, $58, $59
    db $5a, $5b, $5c, $5d, $5e, $0e, $0e, $5f, $60, $61, $62, $63, $64, $65, $66, $0e
    db $67, $68, $69, $6a, $6b, $6c, $0e, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $3f, $0e
    db $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $0e
    db $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $0e, $a0, $a1
    db $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $0e, $b0
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0
    db $c1, $c2, $c3, $c4, $c5, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df
    db $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $0e
    db $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $3e, $fc, $fd
    db $fe, $ff, $00, $01, $02, $03, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c

Image44PaletteIndex:: ; 0x5640
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $05, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $05, $05, $01
    db $00, $00, $05, $01, $01, $01, $05, $05, $05, $00, $05, $05, $05, $05, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $02, $00, $05, $01, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $02, $01, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $02, $00, $02, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $02, $00, $00, $00, $02, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $02, $02, $00, $00, $00, $02, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $02, $02, $02, $00, $00, $02, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $00, $02, $01, $00, $00, $00, $02, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $02, $02, $02, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $00, $00, $00, $01, $01, $01, $01
    db $00, $00, $00, $02, $02, $02, $02, $02, $00, $00, $02, $02, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $21, $01, $01
    db $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $09, $09, $09
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $09, $09, $09
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $09, $0d

Image44Tileset:: ; 0x5780
    INCBIN "gfx/bank01b_Image44_5780.2bpp"

Image45Tilemap:: ; 0x6a50
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $08, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d
    db $3e, $3f, $40, $41, $34, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
    db $4d, $4e, $4f, $50, $08, $08, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a
    db $5b, $5c, $5d, $5e, $08, $08, $08, $5f, $60, $61, $62, $63, $64, $65, $66, $67
    db $68, $69, $6a, $08, $08, $08, $08, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73
    db $74, $75, $76, $08, $08, $08, $08, $77, $78, $79, $7a, $7b, $7c, $7d, $47, $7e
    db $7f, $80, $81, $82, $08, $08, $08, $83, $84, $85, $86, $87, $88, $89, $8a, $8b
    db $7f, $8c, $8d, $8e, $8f, $34, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99
    db $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9
    db $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9
    db $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9
    db $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9
    db $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $47, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $47, $f3, $f4, $f5, $f6, $f7
    db $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $47, $47, $01, $02, $03, $04, $05
    db $06, $07, $47, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14
    db $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24

Image45PaletteIndex:: ; 0x6b90
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $01, $01, $01, $21, $01, $01, $01, $01, $01, $00, $05, $00, $00, $00, $00
    db $05, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $05, $05, $05, $05, $05
    db $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $02, $01, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $02, $01, $02, $01, $00, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $02, $00, $01, $01, $00, $02, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $02, $00, $01, $00, $00, $02, $02, $02
    db $00, $01, $01, $01, $01, $01, $01, $01, $02, $00, $01, $00, $02, $01, $01, $02
    db $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $00, $02, $02, $01, $02
    db $00, $01, $01, $01, $01, $01, $01, $01, $02, $02, $01, $00, $02, $02, $02, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $02, $02, $00, $02, $02, $02, $02, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $02, $02, $00, $00, $02, $02, $02, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $02, $02, $00, $02, $02, $01, $02, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $09, $00, $00, $0a, $0a, $08, $0a, $08
    db $08, $0d, $00, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $0a, $0a, $0a, $0a
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $0a, $0a, $0a, $0a

Image45Tileset:: ; 0x6cd0
    INCBIN "gfx/bank01b_Image45_6cd0.2bpp"

Image46TilemapPart1:: ; 0x7f20
    db $00, $00, $00, $01, $02, $02, $02, $02, $02, $02, $02, $03, $04, $05, $06, $07
    db $00, $00, $00, $08, $02, $02, $02, $02, $02, $02, $03, $04, $05, $09, $0a, $0b
    db $00, $00, $0c, $02, $02, $02, $02, $02, $02, $03, $04, $0d, $09, $0e, $0f, $10
    db $11, $12, $02, $02, $02, $02, $02, $02, $13, $04, $0d, $14, $15, $16, $17, $02
    db $18, $02, $02, $02, $02, $02, $02, $19, $1a, $05, $14, $1b, $1c, $1d, $1e, $1f
    db $02, $02, $02, $02, $02, $02, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $02, $02, $02, $02, $02, $19, $20, $29, $07, $2a, $2b, $2c, $2d, $2e, $2f, $30
    db $02, $02, $02, $02, $31, $32, $29, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
    db $02, $02, $07, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $02, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $1f, $54, $55, $56
    db $57, $58, $59, $4c, $5a, $5b, $5c, $5d, $5e, $5f, $60, $02, $61, $62, $63, $02
    db $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $02, $02, $02
    db $19, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $02, $02, $7d
    db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $02, $02, $88, $02, $89, $8a

