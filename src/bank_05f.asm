SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

Image299TilemapPart2:: ; 0x4000
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $89, $8a, $99, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $89, $89, $89, $a6, $a7, $a8, $a9
    db $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b3, $b4, $b5, $b6, $b7, $b8
    db $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8
    db $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8
    db $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08
    db $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18
    db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38

Image299PaletteIndex:: ; 0x40b0
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $04
    db $04, $04, $00, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $06
    db $06, $06, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $06, $06, $06
    db $04, $06, $06, $06, $06, $06, $06, $04, $06, $04, $04, $06, $06, $06, $06, $01
    db $06, $04, $04, $04, $04, $06, $06, $06, $06, $04, $06, $06, $06, $06, $01, $06
    db $04, $04, $00, $04, $04, $06, $04, $04, $06, $01, $01, $01, $01, $04, $01, $06
    db $04, $04, $00, $00, $04, $04, $04, $04, $01, $01, $01, $01, $01, $06, $04, $01
    db $04, $04, $00, $02, $02, $02, $03, $03, $07, $06, $06, $06, $01, $04, $04, $01
    db $04, $04, $00, $02, $02, $02, $03, $03, $03, $07, $07, $01, $04, $04, $04, $06
    db $04, $04, $00, $02, $02, $02, $03, $03, $03, $03, $07, $21, $06, $04, $04, $01
    db $04, $04, $00, $02, $02, $02, $03, $03, $03, $07, $07, $07, $06, $04, $04, $04
    db $04, $00, $00, $02, $02, $02, $03, $03, $03, $00, $00, $00, $06, $04, $04, $06
    db $04, $00, $00, $00, $00, $04, $04, $04, $04, $06, $06, $01, $01, $04, $04, $04
    db $04, $04, $00, $00, $04, $04, $04, $04, $06, $04, $01, $01, $01, $01, $06, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $06, $06, $01, $01, $01, $01, $01, $01
    db $04, $04, $04, $06, $06, $01, $01, $01, $01, $01, $01, $06, $06, $06, $01, $01
    db $01, $06, $06, $06, $06, $06, $06, $0e, $09, $0e, $0e, $09, $0e, $0e, $0e, $0e
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0e, $0c, $0c, $0c, $0e, $0e, $0e, $0e
    db $0c, $0c, $0c, $08, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0e
    db $08, $08, $0c, $08, $08, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c

Image299Tileset:: ; 0x81f0
    INCBIN "gfx/bank05e_Image299_81f0.2bpp"

Image300Tilemap:: ; 0x5580
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
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $a9, $b9, $ba, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de
    db $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee
    db $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe
    db $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e

Image300PaletteIndex:: ; 0x56c0
    db $01, $01, $01, $01, $01, $01, $01, $07, $07, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $07, $07, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $06, $06, $06, $06, $02, $02, $02, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $03, $00, $00, $00, $02, $02, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image300Tileset:: ; 0x5800
    INCBIN "gfx/bank05f_Image300_5800.2bpp"

Image301Tilemap:: ; 0x6bf0
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
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $fa, $fa, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $fa, $fa, $18, $19, $1a, $1b
    db $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b

Image301PaletteIndex:: ; 0x6d30
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $01, $01, $01
    db $01, $01, $02, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $01, $01, $01
    db $01, $01, $06, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $01, $01, $01
    db $09, $09, $0e, $08, $08, $08, $08, $08, $08, $08, $00, $00, $0a, $0a, $09, $09
    db $09, $09, $0e, $08, $08, $08, $08, $08, $08, $08, $00, $00, $0a, $0a, $09, $09
    db $09, $09, $0e, $08, $08, $08, $08, $08, $08, $08, $0a, $0a, $0a, $09, $09, $09
    db $09, $09, $08, $08, $08, $08, $0d, $0c, $0a, $09, $09, $09, $09, $09, $09, $09

Image301TilesetPart1:: ; 0x6e70
    INCBIN "gfx/bank05f_Image301Part1_6e70.2bpp"

