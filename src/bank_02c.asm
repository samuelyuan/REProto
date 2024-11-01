SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

Image111TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank02b_Image111Part2_4000.2bpp"

Image112Tilemap:: ; 0x4290
    db $00, $01, $02, $03, $04, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05
    db $00, $00, $00, $06, $07, $08, $09, $04, $05, $05, $05, $05, $05, $05, $05, $05
    db $00, $00, $00, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $05, $05, $05, $05, $05
    db $00, $00, $00, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $10, $11, $05, $05
    db $00, $00, $00, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27
    db $00, $00, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $00
    db $00, $00, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $00, $00
    db $00, $00, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $00, $00
    db $00, $00, $4d, $4e, $4f, $50, $51, $52, $00, $53, $54, $55, $56, $00, $00, $57
    db $00, $00, $58, $59, $5a, $5b, $5c, $5d, $5e, $00, $5f, $60, $61, $00, $62, $63
    db $00, $00, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $00, $00, $6e, $6f
    db $00, $00, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $00, $7a, $7b, $7c
    db $00, $28, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $00, $86, $87, $88, $89
    db $00, $35, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $00, $00, $92, $93, $94, $95
    db $00, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $00, $00, $7a, $9f, $a0, $a1
    db $00, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $00, $00, $00, $00, $aa, $ab, $ac
    db $00, $ad, $ae, $af, $b0, $00, $00, $00, $00, $00, $b1, $b2, $b3, $b4, $b5, $b6
    db $00, $00, $00, $00, $00, $00, $00, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $b6
    db $00, $00, $00, $00, $28, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $b6
    db $00, $00, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $b6

Image112PaletteIndex:: ; 0x43d0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $03, $02, $02, $02, $03, $03, $03, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $03, $02, $02, $02, $02, $02, $02, $03, $03, $03, $01, $01, $01
    db $01, $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $01
    db $01, $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01
    db $01, $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01
    db $01, $01, $03, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01, $01
    db $01, $01, $03, $02, $02, $02, $02, $02, $02, $02, $02, $03, $03, $01, $01, $01
    db $01, $01, $03, $02, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01, $01, $00
    db $01, $01, $03, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01, $01, $00, $00
    db $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01, $01, $00, $00
    db $01, $01, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01, $01, $00, $00, $00
    db $01, $03, $02, $02, $02, $02, $02, $02, $02, $03, $01, $01, $21, $04, $00, $00
    db $01, $03, $02, $02, $02, $03, $03, $03, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $03, $03, $03, $01, $01, $01, $01, $01, $01, $03, $03, $03, $02, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $02, $02, $02, $02, $00
    db $01, $01, $01, $01, $01, $03, $03, $03, $02, $02, $02, $02, $02, $02, $02, $00
    db $01, $01, $03, $03, $03, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00

Image112Tileset:: ; 0x4510
    INCBIN "gfx/bank02c_Image112_4510.2bpp"

Image113Tilemap:: ; 0x5270
    db $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $08, $08, $08, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $08, $08, $08, $24, $25, $26, $27
    db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $08, $08, $08, $08, $30, $31, $32, $33
    db $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43
    db $44, $45, $46, $08, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
    db $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62
    db $63, $64, $65, $66, $67, $68, $69, $6a, $00, $6b, $6c, $6d, $6e, $6f, $70, $71
    db $72, $73, $74, $75, $76, $77, $78, $79, $00, $7a, $7b, $7c, $7d, $7e, $7f, $80
    db $08, $08, $08, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $08, $08, $08, $08, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99
    db $08, $08, $08, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $08, $a3, $a4, $a5
    db $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $08, $08, $b1, $b2, $b3
    db $b4, $b5, $b6, $b7, $b8, $b9, $ba, $08, $08, $08, $08, $08, $08, $08, $bb, $bc
    db $bd, $be, $bf, $c0, $c1, $c2, $c3, $08, $08, $08, $08, $08, $08, $08, $c4, $c5
    db $00, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $08
    db $00, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $08, $08, $08, $08, $08
    db $00, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $08, $08, $08
    db $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9
    db $fa, $fb, $fc, $fd, $00, $00, $00, $fe, $ff, $00, $01, $02, $03, $04, $05, $06

Image113PaletteIndex:: ; 0x53b0
    db $00, $00, $00, $02, $02, $02, $05, $05, $05, $00, $00, $05, $05, $03, $03, $03
    db $03, $03, $00, $00, $02, $02, $05, $05, $05, $00, $00, $00, $05, $03, $03, $03
    db $03, $03, $03, $03, $03, $05, $05, $05, $05, $00, $00, $00, $05, $03, $03, $03
    db $00, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $01, $06, $03, $03
    db $02, $02, $03, $03, $01, $01, $01, $03, $03, $03, $03, $03, $01, $06, $03, $03
    db $02, $02, $03, $00, $01, $04, $04, $03, $03, $03, $03, $03, $01, $04, $03, $03
    db $00, $02, $03, $03, $01, $04, $03, $03, $03, $03, $03, $03, $03, $04, $03, $03
    db $03, $03, $03, $03, $01, $04, $00, $00, $00, $00, $03, $03, $03, $06, $03, $03
    db $03, $03, $03, $03, $07, $07, $00, $00, $00, $00, $03, $03, $03, $06, $03, $03
    db $00, $00, $00, $03, $00, $03, $03, $00, $00, $03, $03, $03, $03, $06, $03, $03
    db $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $01, $06, $03
    db $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $01, $06, $03
    db $03, $03, $03, $03, $03, $06, $06, $03, $03, $03, $03, $00, $00, $01, $06, $03
    db $03, $03, $03, $03, $03, $01, $06, $00, $00, $00, $00, $00, $00, $00, $06, $03
    db $00, $03, $02, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $01, $03
    db $00, $02, $02, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $00, $02, $02, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00
    db $00, $03, $03, $03, $03, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $00, $00, $00, $00, $00, $08, $0b, $0b, $0b, $0b, $0b, $0b

Image113Tileset:: ; 0x54f0
    INCBIN "gfx/bank02c_Image113_54f0.2bpp"

Image114Tilemap:: ; 0x6560
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $08, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $08, $08, $08, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $08, $08, $24, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $08, $08, $32, $33, $34, $35, $36
    db $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $07, $08, $08, $40, $41, $42, $43
    db $44, $44, $44, $45, $46, $47, $48, $49, $08, $4a, $4b, $4c, $4d, $4e, $4f, $50
    db $44, $44, $44, $44, $44, $44, $44, $51, $45, $52, $53, $54, $55, $08, $56, $57
    db $44, $44, $44, $44, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $08, $62
    db $44, $44, $44, $44, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $44, $44, $44, $6f, $70, $71, $72, $73, $74, $75, $6b, $6b, $6b, $76, $44, $77
    db $44, $44, $44, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $76, $44, $44
    db $44, $44, $44, $44, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $44, $44
    db $44, $44, $44, $44, $44, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $2b, $5f, $94
    db $44, $44, $44, $44, $44, $44, $44, $44, $44, $44, $95, $96, $97, $98, $99, $9a
    db $44, $44, $44, $44, $44, $44, $44, $9b, $9c, $9d, $9e, $9f, $08, $a0, $a1, $a2
    db $44, $44, $44, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $08, $08, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $08, $08, $b9, $ba, $bb
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $08, $08, $c8, $c9
    db $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $08, $08, $d6, $d7
    db $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $08, $08, $08, $e3, $e4

Image114PaletteIndex:: ; 0x66a0
    db $03, $00, $03, $03, $03, $03, $03, $03, $00, $00, $00, $01, $01, $04, $04, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $01, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $04, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $07, $06, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $00, $00, $03, $00, $03, $00, $00, $00, $03, $03, $03
    db $03, $03, $03, $03, $00, $00, $00, $00, $00, $03, $00, $00, $00, $03, $03, $03
    db $03, $03, $03, $03, $03, $00, $00, $00, $03, $03, $00, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $00, $00, $03, $03, $00, $00, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $03, $23, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $01, $01, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $01, $01
    db $00, $03, $00, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $01, $01

Image114Tileset:: ; 0x67e0
    INCBIN "gfx/bank02c_Image114_67e0.2bpp"

Image115Tilemap:: ; 0x7630
    db $00, $01, $02, $03, $04, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05
    db $06, $06, $06, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $05, $05
    db $06, $06, $06, $06, $06, $06, $06, $11, $12, $13, $14, $15, $16, $17, $18, $19
    db $06, $06, $06, $06, $06, $06, $06, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22
    db $06, $06, $06, $06, $06, $06, $06, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $00, $2c, $2d, $2e, $2f, $30, $31
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $32, $33, $34, $35, $36, $37
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $38, $39, $3a, $3b, $3c
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $3d, $3e, $3a, $3a, $3a, $3a
    db $3f, $3f, $3f, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $3a, $3a, $3a, $3a
    db $48, $48, $48, $48, $49, $4a, $4b, $4c, $3a, $3a, $3a, $3a, $4d, $4e, $4e, $4e
    db $48, $48, $48, $48, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $3a
    db $48, $48, $48, $48, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65
    db $48, $48, $48, $48, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71
    db $48, $48, $48, $48, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d
    db $48, $48, $48, $48, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89
    db $48, $48, $48, $48, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95
    db $48, $48, $48, $48, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1
    db $48, $48, $48, $48, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $48, $48, $48, $48, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9

Image115PaletteIndex:: ; 0x7770
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $06, $06, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $02, $07, $01, $01, $06, $07
    db $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $02, $07, $01, $01, $06, $03
    db $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $02, $07, $05, $06, $02, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $06, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $01, $01, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $05, $05, $05, $05, $05, $06, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $04, $01, $01, $01, $00, $00, $00, $00, $03, $03, $03, $03
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $05, $05, $05, $05, $05
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $05, $05, $06, $06, $05, $05
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $05, $06, $06, $06, $06, $06
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $05, $06, $03, $03, $03
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $01, $01, $02, $00, $00
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $01, $01, $06, $00, $00
    db $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $05, $00

Image115TilesetPart1:: ; 0x78b0
    INCBIN "gfx/bank02c_Image115Part1_78b0.2bpp"

