SECTION "ROM Bank $095", ROMX[$4000], BANK[$95]

Image469TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank094_Image469Part2_4000.2bpp"

Image470Tilemap:: ; 0x5040
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $08, $08, $08, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
    db $1b, $08, $08, $08, $08, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
    db $08, $08, $08, $08, $08, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
    db $08, $08, $08, $08, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $08, $5d
    db $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $08, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $08, $7b
    db $7c, $7d, $7e, $7f, $80, $0f, $81, $82, $83, $84, $85, $86, $08, $87, $08, $88
    db $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $08, $91, $92, $93, $94, $95, $08, $96
    db $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $08, $a0, $a1, $a2, $08, $a3, $a4
    db $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $08, $b1, $b2, $b3
    db $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $08, $08, $08, $bd, $be, $bf, $c0
    db $08, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $c0, $33, $c0
    db $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $c0, $d9, $da, $db
    db $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $0f, $e5, $e6, $c0, $e7, $c0, $c0
    db $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $0f, $0f, $0f, $f0, $f1, $c0, $c0, $c0
    db $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $0f, $0f, $0f, $fb, $c0, $c0, $c0
    db $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $0f, $0f, $05, $06, $07, $08, $c0

Image470PaletteIndex:: ; 0x5180
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $01, $06, $06, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $00, $03, $01, $00, $01, $00, $01, $05, $05, $03
    db $43, $03, $03, $03, $03, $03, $03, $05, $01, $01, $01, $01, $01, $00, $00, $01
    db $03, $03, $03, $03, $03, $03, $03, $05, $01, $01, $01, $01, $01, $01, $00, $00
    db $03, $03, $03, $03, $03, $03, $05, $00, $02, $02, $02, $02, $01, $01, $00, $00
    db $03, $03, $03, $03, $03, $03, $05, $01, $02, $02, $02, $02, $01, $01, $00, $00
    db $03, $03, $03, $03, $03, $03, $01, $01, $02, $02, $02, $02, $02, $01, $00, $00
    db $03, $03, $03, $03, $03, $01, $01, $01, $02, $02, $02, $02, $01, $01, $00, $00
    db $00, $00, $03, $03, $03, $01, $01, $01, $01, $02, $02, $02, $01, $01, $00, $00
    db $03, $03, $03, $03, $05, $01, $01, $00, $01, $01, $02, $01, $01, $00, $00, $00
    db $06, $06, $06, $06, $05, $01, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $02, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $04, $04, $05, $02, $02, $06, $00, $05, $05, $00, $00, $00, $00, $21, $00
    db $04, $03, $03, $06, $04, $06, $03, $00, $03, $01, $01, $01, $00, $01, $01, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $01, $01, $01, $00, $01, $00, $00
    db $03, $03, $03, $03, $00, $03, $03, $03, $01, $01, $01, $01, $01, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01, $00, $00, $00
    db $03, $03, $03, $03, $0b, $0b, $0b, $0b, $0b, $01, $01, $0b, $0b, $09, $09, $00

Image470Tileset:: ; 0x52c0
    INCBIN "gfx/bank095_Image470_52c0.2bpp"

Image471Tilemap:: ; 0x6350
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $09, $09, $09, $09, $09, $0a
    db $0b, $0b, $0c, $0b, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18
    db $0b, $0b, $19, $1a, $0b, $1b, $0b, $0b, $0b, $0b, $0b, $1c, $1d, $1e, $1f, $20
    db $0b, $0b, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $09, $09, $09, $09
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $09, $09, $09, $37
    db $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $09, $09, $44, $45
    db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $09, $09, $09, $51, $52
    db $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $09, $09, $5e, $5f, $60
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $09, $09, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $09, $09, $7a, $7b, $09
    db $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $09, $09, $87, $88, $09
    db $89, $8a, $0b, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $09, $94, $95, $09
    db $96, $97, $98, $37, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $09, $a1, $a2, $a3
    db $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $46, $46, $ad, $ae, $af, $b0, $b1
    db $b2, $b3, $09, $09, $09, $b4, $b5, $09, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $be, $bf, $c0, $c1
    db $c2, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $c3, $c4, $c5
    db $c6, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $c7, $c8
    db $c9, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $ca, $cb
    db $cc, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $cd

Image471PaletteIndex:: ; 0x6490
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $00, $00, $03, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $00, $00, $03, $03, $00, $03, $00, $00, $00, $00, $00, $03, $06, $01, $01, $01
    db $00, $00, $03, $03, $07, $07, $04, $04, $03, $03, $03, $05, $00, $00, $00, $00
    db $00, $00, $00, $07, $07, $07, $04, $04, $04, $04, $04, $06, $00, $00, $00, $01
    db $03, $00, $03, $07, $07, $04, $04, $04, $04, $04, $04, $06, $00, $00, $01, $01
    db $00, $00, $04, $04, $07, $04, $03, $00, $04, $04, $05, $00, $00, $00, $01, $01
    db $00, $03, $04, $04, $04, $04, $03, $00, $04, $04, $00, $00, $00, $01, $01, $02
    db $00, $00, $03, $04, $04, $04, $04, $03, $03, $03, $05, $00, $00, $01, $02, $02
    db $03, $03, $00, $04, $07, $04, $04, $04, $03, $03, $00, $00, $00, $01, $02, $02
    db $03, $03, $00, $03, $03, $03, $00, $00, $03, $03, $05, $00, $00, $01, $02, $02
    db $03, $03, $00, $00, $03, $03, $00, $03, $03, $03, $05, $00, $00, $01, $02, $02
    db $00, $00, $00, $03, $03, $03, $07, $03, $03, $05, $05, $01, $00, $01, $02, $02
    db $03, $03, $03, $03, $03, $03, $06, $06, $03, $00, $00, $05, $01, $01, $02, $02
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $05, $01, $01, $02
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $06, $01, $02
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $06, $01, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $06, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03

Image471Tileset:: ; 0x65d0
    INCBIN "gfx/bank095_Image471_65d0.2bpp"

Image472Tilemap:: ; 0x72b0
    db $00, $00, $00, $01, $02, $00, $03, $04, $05, $00, $06, $07, $00, $00, $08, $09
    db $0a, $0b, $00, $0c, $0d, $0e, $0f, $00, $00, $00, $00, $10, $00, $00, $00, $00
    db $11, $12, $13, $14, $15, $16, $00, $00, $00, $17, $18, $00, $19, $00, $00, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $00, $25, $00, $00, $00, $00
    db $26, $27, $28, $29, $20, $2a, $20, $2b, $20, $20, $2c, $2d, $2e, $2f, $30, $31
    db $32, $32, $33, $34, $35, $36, $20, $20, $20, $20, $20, $20, $20, $20, $20, $37
    db $38, $39, $32, $3a, $3b, $3c, $3d, $20, $2b, $20, $20, $20, $20, $20, $20, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $36, $47, $20, $20, $48, $20, $20, $49
    db $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $20, $20, $20, $2b, $48, $52, $53, $54
    db $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64
    db $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $2b, $20, $20, $20, $6e, $6f, $70
    db $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $20, $20, $20, $20, $20, $20
    db $32, $32, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $20, $20, $83, $84, $85, $20
    db $32, $32, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $20, $1e, $8f, $20, $20
    db $32, $32, $32, $90, $91, $92, $93, $94, $95, $96, $97, $98, $2b, $20, $20, $99
    db $32, $32, $32, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $20, $20, $20, $20
    db $32, $32, $32, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $20, $20, $20
    db $32, $32, $32, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $20
    db $32, $32, $32, $b9, $ba, $bb, $bc, $32, $32, $32, $bd, $be, $bf, $c0, $c1, $c2
    db $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $c3, $32

Image472PaletteIndex:: ; 0x73f0
    db $00, $00, $00, $03, $03, $00, $00, $00, $00, $00, $03, $03, $00, $00, $03, $03
    db $00, $00, $00, $03, $03, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00
    db $03, $03, $03, $00, $00, $00, $00, $00, $00, $03, $03, $00, $03, $00, $00, $03
    db $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00
    db $03, $03, $03, $03, $00, $03, $00, $03, $00, $00, $00, $00, $00, $00, $03, $00
    db $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $00, $23, $00, $00, $00, $00, $00, $00, $00
    db $03, $01, $05, $03, $05, $05, $05, $03, $03, $03, $00, $00, $03, $00, $00, $00
    db $03, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00, $23, $43, $00, $00, $00
    db $03, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $05, $01, $05
    db $03, $01, $01, $01, $01, $01, $01, $05, $03, $03, $00, $00, $00, $05, $03, $03
    db $03, $07, $07, $07, $07, $00, $00, $00, $03, $03, $00, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $04, $07, $03, $03, $00, $00, $03, $03, $03, $00
    db $03, $03, $03, $04, $04, $04, $04, $07, $03, $03, $03, $00, $23, $03, $00, $00
    db $03, $03, $03, $04, $04, $04, $04, $07, $03, $03, $03, $03, $23, $00, $00, $03
    db $03, $03, $03, $04, $04, $04, $04, $02, $04, $03, $03, $03, $00, $00, $00, $00
    db $03, $03, $03, $04, $04, $04, $04, $02, $07, $03, $03, $03, $03, $00, $00, $00
    db $03, $03, $03, $04, $04, $04, $04, $04, $04, $03, $03, $03, $03, $03, $03, $00
    db $03, $03, $03, $04, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03

Image472TilesetPart1:: ; 0x7530
    INCBIN "gfx/bank095_Image472Part1_7530.2bpp"
