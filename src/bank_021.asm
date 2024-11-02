SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

Image69TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank020_Image69Part2_4000.2bpp"

Image70Tilemap:: ; 0x4c10
    db $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $00, $00, $00, $00, $01, $0d, $0e, $0f, $10, $11, $07, $12, $13, $14, $15, $16
    db $00, $00, $00, $00, $17, $0d, $18, $19, $1a, $1b, $07, $1c, $1d, $1e, $1f, $20
    db $00, $00, $00, $00, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c
    db $00, $00, $00, $00, $2d, $2e, $2e, $2e, $2e, $2f, $30, $31, $32, $33, $34, $35
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $30, $36, $37, $38, $39, $3a
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $30, $3b, $3c, $3d, $3e, $3f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $30, $40, $41, $42, $43, $44
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $45, $46, $47, $48, $49
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $52, $53, $54, $54, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $5c, $5c, $5c, $6c, $6d, $0d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77
    db $5c, $5c, $78, $79, $7a, $7b, $7b, $7b, $7b, $7c, $7d, $7e, $7f, $80, $81, $82
    db $83, $84, $85, $00, $00, $00, $00, $00, $00, $86, $87, $88, $89, $8a, $8b, $8c
    db $8d, $00, $00, $00, $00, $00, $00, $00, $00, $00, $8e, $8f, $90, $91, $92, $93
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $94, $95, $96, $97, $98, $99
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9a, $9b, $9c, $9d, $9e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9f, $a0, $a1, $9c, $a2
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $a3, $a4, $a1, $a5

Image70PaletteIndex:: ; 0x4d50
    db $02, $02, $02, $02, $04, $02, $03, $03, $05, $05, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $04, $02, $03, $03, $05, $05, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $04, $02, $03, $03, $05, $05, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $04, $02, $03, $03, $05, $05, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $04, $04, $04, $04, $04, $04, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $04, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $04, $04, $00, $00, $00, $01, $01
    db $02, $02, $02, $02, $02, $02, $04, $04, $04, $06, $00, $00, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $04, $04, $04, $06, $00, $01, $00, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $06, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $06, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $06, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00, $00

Image70Tileset:: ; 0x4e90
    INCBIN "gfx/bank021_Image70_4e90.2bpp"

Image71Tilemap:: ; 0x58f0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $01, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $0c, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $0c, $2a, $02, $01
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $0c, $37, $01, $01
    db $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $0c, $44, $01, $01
    db $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $01, $01
    db $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $01, $60, $61
    db $1d, $62, $63, $64, $65, $66, $67, $3f, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $01, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $01, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $01, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c
    db $01, $53, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa
    db $01, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9
    db $01, $01, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7
    db $01, $01, $c8, $c9, $ca, $01, $01, $cb, $cc, $cd, $ce, $cf, $0c, $0c, $0c, $0c
    db $01, $01, $d0, $d1, $01, $01, $d2, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $01, $01, $01, $01, $01, $d3, $d4, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $01, $01, $01, $01, $d5, $d4, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $01, $01, $01, $d6, $d7, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $01, $01, $d8, $d9, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c

Image71PaletteIndex:: ; 0x5a30
    db $04, $02, $04, $04, $01, $01, $01, $01, $01, $00, $00, $04, $02, $04, $00, $04
    db $04, $04, $02, $04, $04, $00, $00, $00, $00, $00, $00, $04, $02, $04, $04, $04
    db $04, $01, $04, $04, $06, $00, $00, $01, $01, $00, $00, $06, $02, $02, $42, $02
    db $04, $01, $01, $04, $04, $00, $00, $01, $01, $01, $00, $06, $02, $02, $02, $02
    db $04, $01, $03, $01, $04, $06, $00, $00, $00, $00, $00, $06, $02, $02, $02, $02
    db $04, $01, $03, $03, $00, $06, $00, $00, $00, $00, $00, $00, $04, $02, $02, $02
    db $04, $01, $03, $03, $01, $06, $00, $00, $00, $00, $00, $00, $04, $02, $04, $04
    db $44, $04, $01, $03, $01, $06, $00, $00, $00, $00, $00, $00, $04, $04, $00, $00
    db $02, $04, $01, $03, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01
    db $02, $04, $01, $03, $01, $04, $06, $00, $00, $00, $00, $00, $01, $01, $01, $01
    db $02, $04, $01, $03, $01, $01, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $04, $01, $03, $01, $01, $06, $00, $00, $00, $00, $00, $01, $01, $01, $01
    db $02, $04, $04, $03, $03, $01, $06, $00, $00, $00, $00, $01, $01, $00, $00, $00
    db $02, $02, $04, $01, $01, $04, $04, $06, $00, $00, $00, $00, $00, $06, $06, $04
    db $02, $02, $04, $04, $04, $02, $02, $06, $06, $06, $06, $06, $02, $02, $02, $02
    db $02, $02, $04, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02

Image71Tileset:: ; 0x5b70
    INCBIN "gfx/bank021_Image71_5b70.2bpp"

Image72Tilemap:: ; 0x6910
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $0e, $0f
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $0f, $29, $2a, $0e, $0f
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $0f, $0f, $35, $36, $0e, $0f
    db $37, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $0f, $0f, $41, $42, $0f
    db $37, $37, $37, $43, $44, $45, $46, $47, $48, $49, $4a, $0f, $0f, $4b, $4c, $0f
    db $37, $37, $37, $37, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $0f, $56, $57
    db $37, $37, $37, $37, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63
    db $37, $37, $37, $37, $43, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $0f, $6d
    db $37, $37, $37, $37, $37, $4d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77
    db $37, $37, $37, $37, $37, $58, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81
    db $82, $82, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $0f, $0f, $0f, $8b, $8c
    db $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc
    db $bd, $be, $0f, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $0f, $0f, $0f
    db $37, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $0f, $0f, $0f, $0f
    db $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $0f, $0f, $0f, $0f
    db $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $0f, $0f, $0f, $0f, $0f
    db $eb, $ec, $0f, $ed, $ee, $ef, $f0, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f

Image72PaletteIndex:: ; 0x6a50
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $04, $04, $04, $04, $02
    db $06, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $04, $04, $04, $02
    db $06, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $02
    db $02, $02, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $02
    db $02, $02, $02, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $02
    db $02, $02, $02, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $02
    db $02, $02, $02, $02, $04, $00, $00, $00, $00, $01, $00, $00, $00, $00, $04, $04
    db $02, $02, $02, $02, $04, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $04
    db $02, $02, $02, $02, $04, $00, $00, $00, $00, $01, $01, $00, $00, $00, $00, $04
    db $02, $02, $02, $02, $02, $04, $00, $00, $00, $01, $01, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $04, $00, $00, $00, $01, $01, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $04, $04, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00
    db $04, $04, $04, $04, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $00, $00
    db $00, $00, $00, $01, $01, $01, $00, $00, $00, $01, $01, $01, $01, $01, $01, $00
    db $00, $00, $01, $01, $01, $01, $00, $00, $01, $01, $01, $01, $04, $04, $04, $04
    db $00, $00, $00, $01, $01, $00, $00, $00, $01, $01, $00, $06, $04, $02, $02, $02
    db $00, $00, $00, $04, $04, $04, $04, $01, $01, $00, $00, $04, $02, $02, $02, $02
    db $07, $04, $04, $02, $06, $06, $00, $00, $00, $00, $00, $04, $02, $02, $02, $02
    db $05, $04, $02, $06, $06, $00, $00, $04, $04, $04, $04, $02, $02, $02, $02, $02
    db $02, $02, $02, $06, $06, $06, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02

Image72Tileset:: ; 0x6b90
    INCBIN "gfx/bank021_Image72_6b90.2bpp"

Image73Tilemap:: ; 0x7aa0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $0e, $0e, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $0e, $0e, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $0e, $0e, $37, $38
    db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58
    db $59, $5a, $5b, $5c, $5d, $5e, $5e, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $0e, $71, $72, $73, $74, $75
    db $76, $77, $78, $78, $78, $78, $78, $78, $79, $0e, $7a, $7b, $7c, $7d, $7e, $7f
    db $0e, $0e, $0e, $0e, $80, $81, $82, $82, $83, $0e, $84, $85, $86, $87, $88, $89
    db $0e, $0e, $0e, $8a, $8b, $62, $8c, $0e, $0e, $0e, $8d, $8e, $8f, $90, $91, $92
    db $0e, $0e, $0e, $93, $94, $95, $96, $97, $0e, $0e, $0e, $98, $99, $9a, $9b, $9c
    db $0e, $0e, $0e, $9d, $9e, $9f, $a0, $0e, $0e, $0e, $a1, $a2, $a3, $a4, $a5, $a6
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $af, $b0, $b1, $b2, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb
    db $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $78, $78
    db $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9
    db $ea, $eb, $ec, $78, $78, $ed, $ee, $ee, $ef, $f0, $f1, $f2, $f3, $78, $78, $78
    db $78, $f4, $ee, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01

Image73PaletteIndex:: ; 0x7be0
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $06, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $05, $00, $00, $00
    db $04, $04, $02, $02, $04, $04, $04, $04, $04, $04, $04, $05, $05, $00, $00, $00
    db $04, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00
    db $04, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00
    db $04, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00
    db $04, $04, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $00, $00, $00, $00, $00, $00
    db $04, $04, $04, $04, $04, $04, $04, $04, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $03, $04, $04, $04, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $04, $04, $24, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $03, $03, $04, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $04, $04, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $02, $05, $05, $05, $05, $05
    db $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $04, $04, $04, $04, $04, $04
    db $03, $03, $03, $03, $03, $03, $04, $02, $04, $04, $04, $04, $04, $04, $04, $04
    db $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $03, $03, $04, $04, $04, $04
    db $03, $03, $03, $01, $01, $03, $03, $03, $04, $04, $04, $04, $04, $04, $04, $04
    db $01, $03, $03, $03, $03, $03, $04, $04, $04, $04, $04, $04, $04, $04, $0c, $0c

Image73TilesetPart1:: ; 0x7d20
    INCBIN "gfx/bank021_Image73Part1_7d20.2bpp"

