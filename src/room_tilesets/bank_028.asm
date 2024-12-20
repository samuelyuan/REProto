SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

Image97TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank027_Image97Part2_4000.2bpp"

Image98Tilemap:: ; 0x4530
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $03, $01, $04, $05, $06
    db $01, $01, $07, $08, $01, $01, $01, $01, $03, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $01, $10, $11, $12, $13, $14, $01, $15, $16, $17, $18, $19, $1a, $1b, $1c, $0f
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $0f, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $0f, $0f, $39
    db $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $0f, $0f, $47
    db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57
    db $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $0f, $66
    db $0f, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $0f
    db $0f, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $0f
    db $0f, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91
    db $0f, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0
    db $0f, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $0f
    db $0f, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $0f
    db $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc
    db $cd, $ce, $cf, $85, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db
    db $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb
    db $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb
    db $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b
    db $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b

Image98PaletteIndex:: ; 0x4670
    db $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $01, $02, $02, $06
    db $01, $01, $02, $02, $01, $01, $01, $01, $42, $02, $02, $02, $02, $06, $01, $00
    db $01, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02, $02, $01, $01, $00, $00
    db $02, $02, $02, $02, $00, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $06, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06
    db $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $02, $02, $02, $02, $06
    db $02, $02, $02, $02, $0a, $0a, $0a, $0a, $0e, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0e, $08, $08, $08, $08, $08, $08, $08

Image98Tileset:: ; 0x47b0
    INCBIN "gfx/bank028_Image98_47b0.2bpp"

Image99Tilemap:: ; 0x5970
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $04, $05, $06, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $09, $0a, $0b, $0c, $0d
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $0e, $0f, $10, $11, $12, $13, $14
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $15, $16, $17, $18, $19, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1a, $1b, $1c, $1d, $00, $00, $00, $00
    db $1e, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $22, $23, $00, $00, $00, $00
    db $24, $00, $00, $00, $00, $00, $00, $00, $25, $00, $00, $00, $00, $26, $27, $28
    db $29, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2a, $2b, $2c, $00, $00
    db $2d, $00, $2e, $2f, $30, $31, $00, $00, $00, $32, $33, $00, $00, $00, $00, $00
    db $34, $35, $00, $36, $37, $38, $39, $3a, $3b, $3c, $00, $00, $00, $00, $00, $00
    db $3d, $00, $3e, $3f, $40, $41, $42, $43, $44, $00, $00, $00, $00, $00, $00, $00
    db $3d, $00, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4e, $4e, $4e, $4f
    db $50, $00, $00, $00, $00, $51, $52, $53, $54, $55, $56, $56, $57, $58, $59, $5a
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image99PaletteIndex:: ; 0x5ab0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $01, $01, $01, $01
    db $03, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $01, $01, $01, $01
    db $03, $01, $01, $01, $01, $01, $01, $01, $02, $01, $01, $01, $01, $03, $03, $03
    db $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $00, $00
    db $03, $01, $02, $02, $02, $02, $01, $01, $01, $03, $03, $00, $00, $00, $00, $00
    db $03, $03, $00, $00, $00, $00, $00, $07, $03, $03, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $07, $03, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $07, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image99Tileset:: ; 0x5bf0
    INCBIN "gfx/bank028_Image99_5bf0.2bpp"

Image100Tilemap:: ; 0x61a0
    db $00, $01, $02, $03, $03, $03, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $0a, $1a, $03
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $0a, $27, $28, $29
    db $2a, $2b, $2c, $0a, $2d, $2e, $0a, $2f, $30, $31, $32, $33, $34, $35, $36, $37
    db $38, $03, $03, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
    db $46, $03, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $2d, $51, $52, $53
    db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $0a, $60, $61, $62
    db $63, $03, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71
    db $03, $03, $03, $72, $73, $73, $74, $75, $76, $77, $78, $79, $7a, $0a, $7b, $7c
    db $03, $7d, $7e, $04, $7f, $03, $03, $03, $80, $81, $82, $83, $84, $0a, $85, $86
    db $03, $87, $03, $03, $88, $03, $03, $03, $89, $8a, $8b, $8c, $0a, $0a, $0a, $8d
    db $03, $8e, $8f, $90, $91, $03, $03, $03, $03, $92, $93, $94, $0a, $0a, $0a, $95
    db $03, $03, $03, $03, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $0a, $0a, $0a, $0a
    db $03, $03, $03, $03, $9e, $9f, $a0, $a1, $a2, $a3, $82, $82, $a4, $0a, $0a, $0a
    db $03, $03, $03, $03, $a5, $a6, $a7, $a8, $a9, $aa, $82, $82, $ab, $0a, $0a, $0a
    db $03, $03, $03, $03, $ac, $ad, $ae, $af, $b0, $82, $82, $b1, $b2, $0a, $0a, $b3
    db $03, $03, $03, $03, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $03
    db $03, $03, $03, $03, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $14, $03, $03, $03, $03
    db $02, $c6, $c7, $c8, $c9, $ca, $cb, $03, $03, $03, $03, $cc, $cd, $ce, $cf, $c5
    db $d0, $d1, $d2, $d3, $d4, $d5, $04, $d6, $d7, $d8, $d9, $0a, $0a, $0a, $0a, $0a

Image100PaletteIndex:: ; 0x62e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $00
    db $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $05, $03, $00
    db $00, $01, $01, $00, $00, $00, $00, $02, $03, $02, $02, $02, $05, $03, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $02, $02, $00, $05, $03, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $06, $03, $02, $00, $02, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $04, $03, $02, $02, $00, $05, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $03, $02, $02, $00, $02, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $03, $02, $02, $00, $00, $05, $00
    db $00, $05, $05, $25, $05, $00, $00, $00, $05, $03, $00, $00, $00, $00, $02, $03
    db $00, $05, $05, $05, $05, $00, $00, $00, $03, $00, $00, $00, $00, $00, $00, $05
    db $00, $05, $05, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $05, $05, $05, $05, $05, $05, $05, $00, $00, $00, $00
    db $40, $05, $05, $05, $05, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image100Tileset:: ; 0x6420
    INCBIN "gfx/bank028_Image100_6420.2bpp"

Image101Tilemap:: ; 0x71c0
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $02, $03, $04, $05, $06, $07, $08
    db $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $0a, $0b, $0c, $0d, $0e, $0f
    db $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $10, $11, $11, $12, $13, $14
    db $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $15, $16, $17, $18, $13, $13
    db $09, $01, $01, $01, $01, $01, $01, $01, $01, $19, $1a, $1b, $1c, $1d, $13, $13
    db $09, $1e, $1f, $01, $20, $21, $22, $23, $24, $25, $26, $27, $28, $13, $13, $13
    db $09, $29, $2a, $01, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $13, $34, $35
    db $09, $29, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $13, $13, $40, $41
    db $09, $29, $29, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $29, $29, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c
    db $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c
    db $8d, $8e, $8f, $13, $13, $13, $13, $37, $90, $91, $92, $93, $94, $95, $96, $97
    db $8d, $13, $98, $99, $9a, $9b, $23, $24, $9c, $9d, $9e, $13, $9f, $a0, $a1, $a2
    db $a3, $a4, $a5, $01, $01, $01, $01, $a6, $11, $a7, $13, $13, $13, $a8, $a9, $aa
    db $5d, $01, $ab, $01, $01, $ac, $ad, $ae, $11, $af, $b0, $b1, $b2, $13, $b3, $13
    db $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3
    db $8d, $c4, $c5, $c6, $c7, $c8, $01, $01, $01, $01, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $d0, $01, $01, $01, $01, $01, $01, $01, $d1, $d2, $d3, $d4, $d5, $d6, $d7

Image101PaletteIndex:: ; 0x7300
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $02, $00, $00, $00
    db $00, $00, $00, $00, $05, $00, $00, $00, $00, $03, $03, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $05, $05, $05, $05, $05, $02, $04, $00, $00, $00, $02, $05
    db $00, $00, $00, $03, $05, $05, $05, $05, $05, $05, $06, $00, $00, $00, $05, $03
    db $00, $00, $40, $03, $05, $05, $05, $05, $05, $05, $06, $04, $00, $02, $03, $00
    db $00, $00, $40, $05, $06, $06, $07, $07, $06, $06, $04, $02, $00, $05, $00, $00
    db $00, $00, $00, $05, $04, $04, $04, $04, $04, $04, $04, $02, $05, $03, $00, $00
    db $00, $00, $01, $01, $04, $04, $04, $04, $04, $04, $00, $00, $05, $00, $00, $00
    db $00, $00, $01, $01, $06, $06, $06, $02, $02, $00, $00, $05, $03, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $02, $05, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $20, $20, $00, $00, $00, $00, $05, $03, $00, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $02, $02

Image101TilesetPart1:: ; 0x7440
    INCBIN "gfx/bank028_Image101Part1_7440.2bpp"

