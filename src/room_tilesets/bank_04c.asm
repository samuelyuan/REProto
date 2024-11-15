SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

Image238TilemapPart2:: ; 0x4000
    db $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $a2
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $a3, $a0, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $19, $19, $19, $19, $19, $b2
    db $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $19, $19, $19, $19, $19, $19
    db $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $19, $19, $c6, $c7, $19, $19, $19
    db $19, $19, $19, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $19, $19, $19, $19, $19
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $19, $19, $19, $d7, $19, $d8, $19, $19, $19

Image238PaletteIndex:: ; 0x4080
    db $01, $01, $01, $00, $00, $06, $06, $06, $06, $06, $06, $06, $07, $07, $01, $01
    db $01, $01, $01, $00, $00, $06, $06, $06, $06, $06, $06, $06, $07, $07, $00, $01
    db $01, $01, $01, $00, $06, $06, $06, $06, $07, $06, $06, $06, $06, $07, $00, $01
    db $01, $01, $01, $00, $06, $06, $06, $06, $07, $06, $06, $06, $07, $07, $00, $00
    db $01, $01, $01, $06, $06, $06, $06, $06, $07, $06, $06, $06, $07, $07, $00, $00
    db $01, $01, $01, $01, $06, $06, $06, $00, $00, $00, $00, $00, $00, $06, $00, $00
    db $01, $01, $01, $01, $06, $02, $06, $06, $06, $06, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $06, $06, $06, $07, $07, $07, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $07, $07, $00, $07, $07, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $00, $00, $00, $00
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $01, $00, $01, $00, $00, $00

Image238Tileset:: ; 0x81c0
    INCBIN "gfx/bank04b_Image238_81c0.2bpp"

Image239Tilemap:: ; 0x4f50
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $1c, $1c, $1c, $2b, $2c
    db $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $1c, $1c, $1c, $39
    db $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $1c, $1c, $1c, $1c
    db $3a, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $1c, $1c, $1c, $1c
    db $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $1c, $1c, $1c, $1c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $1c, $1c, $1c, $1c, $1c, $1c
    db $67, $68, $1c, $1c, $69, $1c, $1c, $6a, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c
    db $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c
    db $73, $74, $75, $76, $1c, $1c, $1c, $72, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c
    db $77, $78, $1c, $1c, $1c, $1c, $1c, $79, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c
    db $1c, $1c, $7a, $7b, $1c, $7c, $7d, $7e, $7f, $80, $81, $7c, $1c, $1c, $1c, $1c
    db $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91
    db $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $1c, $a0
    db $a1, $a2, $a3, $a4, $a5, $a6, $a7, $5d, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $1c, $b8, $7c, $1c, $b9, $ba, $bb, $b9
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $1c, $c8, $1c, $c9
    db $ca, $cb, $cc, $cd, $ce, $5d, $5d, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7
    db $d8, $d9, $da, $5d, $5d, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $1c, $e3, $e4

Image239PaletteIndex:: ; 0x5090
    db $01, $06, $06, $06, $06, $06, $06, $06, $07, $01, $01, $01, $00, $06, $06, $02
    db $01, $06, $06, $06, $06, $06, $06, $06, $01, $01, $01, $01, $00, $07, $03, $02
    db $01, $06, $06, $06, $06, $06, $06, $06, $07, $01, $01, $00, $00, $00, $03, $03
    db $01, $02, $06, $06, $06, $06, $06, $06, $06, $07, $07, $07, $00, $00, $00, $03
    db $01, $02, $06, $06, $07, $06, $06, $06, $06, $06, $06, $07, $00, $00, $00, $00
    db $01, $07, $07, $07, $07, $06, $06, $06, $06, $06, $06, $07, $00, $00, $00, $00
    db $01, $07, $07, $07, $06, $06, $06, $06, $06, $07, $07, $07, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $07, $07, $07, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $07, $07, $07, $07, $00, $00, $00, $00
    db $01, $01, $01, $01, $03, $03, $07, $07, $06, $06, $00, $01, $01, $01, $00, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $41, $01, $01, $01, $01, $01
    db $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image239Tileset:: ; 0x51d0
    INCBIN "gfx/bank04c_Image239_51d0.2bpp"

Image240Tilemap:: ; 0x6020
    db $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $00, $00, $00
    db $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $00, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $15, $25, $26, $00, $27, $00
    db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $15, $15, $15, $31, $32, $33, $34
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $15, $15, $3e, $3f, $40, $41, $42
    db $43, $44, $45, $46, $47, $48, $49, $4a, $15, $15, $4b, $4c, $4d, $4e, $4f, $50
    db $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $15, $15, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $15, $69, $6a, $6b, $6c, $6d
    db $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $15, $15, $78, $79, $7a, $7b
    db $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b
    db $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $15, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $15, $15, $15, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $15, $4b, $b2, $b3, $b4, $b5
    db $00, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $15, $15, $bf, $c0, $c1, $c2
    db $00, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $15, $15, $85, $cc, $cd, $ce
    db $00, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $16, $15, $d8, $d9, $da, $db
    db $00, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $15, $15, $e5, $e6, $e7, $e8
    db $00, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $15, $f4, $00, $f5
    db $00, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $15, $00, $01, $02, $03
    db $04, $05, $00, $06, $07, $08, $09, $0a, $0b, $0c, $15, $0d, $0e, $0f, $00, $10

Image240PaletteIndex:: ; 0x6160
    db $00, $00, $06, $06, $06, $06, $07, $07, $01, $01, $01, $01, $07, $00, $00, $00
    db $06, $06, $06, $06, $06, $06, $06, $07, $01, $00, $01, $01, $07, $00, $06, $06
    db $06, $07, $00, $07, $07, $06, $06, $06, $01, $01, $00, $01, $07, $00, $06, $00
    db $06, $06, $07, $06, $06, $06, $06, $06, $07, $00, $00, $00, $07, $06, $06, $06
    db $06, $06, $06, $06, $06, $06, $06, $06, $07, $00, $00, $01, $07, $06, $06, $06
    db $06, $06, $06, $06, $06, $07, $07, $03, $00, $00, $01, $01, $07, $06, $06, $06
    db $06, $06, $06, $06, $06, $07, $01, $01, $01, $01, $00, $00, $07, $06, $06, $06
    db $06, $06, $06, $06, $06, $03, $01, $01, $01, $01, $00, $01, $07, $06, $06, $02
    db $06, $06, $06, $06, $06, $07, $01, $01, $01, $01, $00, $00, $03, $06, $02, $02
    db $06, $06, $06, $06, $06, $07, $01, $01, $01, $01, $01, $01, $03, $06, $02, $02
    db $06, $06, $06, $06, $06, $07, $07, $07, $01, $01, $00, $01, $03, $06, $02, $02
    db $06, $06, $06, $06, $06, $07, $06, $07, $01, $00, $00, $00, $07, $06, $06, $02
    db $06, $06, $06, $06, $06, $07, $01, $01, $01, $01, $00, $21, $00, $06, $06, $06
    db $00, $06, $06, $06, $06, $06, $01, $01, $01, $01, $00, $00, $01, $06, $06, $06
    db $00, $06, $06, $06, $06, $06, $01, $01, $01, $01, $00, $00, $01, $06, $06, $06
    db $00, $06, $06, $06, $06, $06, $07, $07, $07, $07, $01, $00, $01, $07, $06, $06
    db $00, $06, $06, $06, $06, $06, $06, $06, $06, $07, $00, $00, $01, $07, $06, $06
    db $00, $06, $06, $06, $06, $06, $06, $06, $06, $01, $01, $01, $00, $07, $00, $06
    db $00, $06, $06, $06, $06, $06, $06, $07, $07, $01, $01, $00, $09, $0f, $0e, $0e
    db $0e, $0e, $00, $0e, $0f, $0f, $0f, $0f, $0f, $09, $00, $09, $09, $0f, $00, $0e

Image240Tileset:: ; 0x62a0
    INCBIN "gfx/bank04c_Image240_62a0.2bpp"

Image241Tilemap:: ; 0x73b0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19
    db $1a, $00, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38
    db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $49, $4a, $4b, $4c, $00, $4d, $4e, $4f, $00, $50, $51, $52, $53, $53, $53, $53
    db $54, $55, $56, $57, $00, $00, $00, $00, $58, $53, $53, $59, $53, $53, $53, $53
    db $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $53, $53, $53
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $53, $53, $53
    db $74, $75, $00, $76, $77, $78, $79, $7a, $7b, $00, $7c, $7d, $7e, $53, $53, $53
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $00, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $91, $92, $93
    db $94, $95, $96, $00, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $00, $a3, $a4, $a5, $a6, $a7, $00, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $53
    db $c0, $c1, $c2, $c3, $c4, $c5, $00, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $53
    db $ce, $cf, $d0, $d1, $d2, $d3, $00, $d4, $d5, $99, $d6, $d7, $d8, $d9, $53, $da
    db $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea

Image241PaletteIndex:: ; 0x74f0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $00, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $07, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $01, $01, $07, $07, $07, $07, $07, $07, $06, $07, $07, $07, $07, $07, $07, $07
    db $01, $01, $01, $06, $00, $06, $06, $06, $00, $07, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $07, $00, $00, $00, $00, $06, $00, $00, $01, $00, $00, $00, $00
    db $01, $01, $01, $07, $07, $06, $00, $06, $00, $03, $01, $01, $01, $00, $00, $00
    db $01, $01, $01, $01, $06, $06, $06, $06, $06, $07, $01, $01, $01, $00, $00, $00
    db $01, $01, $01, $04, $06, $06, $06, $06, $06, $00, $07, $01, $01, $00, $00, $00
    db $01, $01, $01, $01, $06, $06, $06, $06, $06, $00, $07, $00, $07, $07, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $01, $01
    db $01, $01, $01, $00, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $07, $01
    db $01, $01, $06, $06, $06, $06, $00, $06, $02, $06, $06, $06, $07, $06, $01, $01
    db $01, $01, $06, $07, $06, $06, $06, $06, $06, $06, $06, $06, $07, $07, $01, $00
    db $01, $01, $07, $07, $06, $06, $00, $06, $06, $06, $06, $06, $06, $07, $01, $00
    db $01, $01, $01, $06, $06, $06, $00, $06, $06, $26, $06, $06, $06, $07, $00, $01
    db $01, $01, $01, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $01, $01, $01

Image241TilesetPart1:: ; 0x7630
    INCBIN "gfx/bank04c_Image241Part1_7630.2bpp"
