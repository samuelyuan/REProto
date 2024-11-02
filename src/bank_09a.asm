SECTION "ROM Bank $09a", ROMX[$4000], BANK[$9a]

Image486TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank099_Image486Part2_4000.2bpp"

Image487Tilemap:: ; 0x4c00
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $40, $1f, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $1f, $52, $1f, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $1f, $76, $77, $78, $79, $7a
    db $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $1f, $85, $86, $87, $88, $89
    db $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $1f, $94, $95, $96, $97, $98
    db $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $1f, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7
    db $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7
    db $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7
    db $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7
    db $e8, $e9, $ea, $eb, $08, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6
    db $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $08, $03, $04, $05
    db $06, $07, $08, $1f, $09, $0a, $0b, $0c, $0d, $08, $08, $0e, $0f, $10, $11, $08
    db $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
    db $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31

Image487PaletteIndex:: ; 0x4d40
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $00, $00, $00, $00, $00, $00, $04, $02, $02, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $00, $04, $04, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $00, $04, $04, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $01, $01, $00, $00, $00, $04, $04, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $02, $00, $00, $00, $02, $04, $04, $04, $00, $00, $00, $00, $00
    db $01, $02, $01, $01, $01, $00, $00, $02, $04, $04, $04, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $00, $00, $01, $01, $04, $04, $02, $00, $00, $00, $00
    db $01, $01, $01, $00, $01, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $08, $08, $08, $00, $08, $08, $08
    db $0a, $0a, $08, $00, $08, $08, $08, $08, $08, $00, $00, $08, $09, $08, $08, $00
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image487Tileset:: ; 0x4e80
    INCBIN "gfx/bank09a_Image487_4e80.2bpp"

Image488Tilemap:: ; 0x61a0
    db $00, $01, $01, $01, $02, $03, $01, $01, $01, $01, $04, $05, $05, $05, $05, $05
    db $06, $01, $01, $01, $07, $08, $09, $0a, $0b, $0c, $0d, $05, $05, $05, $05, $05
    db $0e, $01, $01, $01, $0f, $10, $11, $12, $13, $14, $15, $16, $05, $05, $05, $05
    db $17, $18, $01, $01, $01, $01, $01, $01, $19, $1a, $1b, $1c, $1d, $1e, $05, $05
    db $1f, $20, $01, $01, $01, $01, $01, $01, $21, $22, $23, $24, $25, $26, $05, $05
    db $27, $28, $01, $01, $01, $01, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $05, $05
    db $31, $32, $33, $34, $35, $01, $36, $37, $38, $39, $3a, $3b, $3c, $05, $05, $05
    db $31, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $05
    db $4b, $4c, $4d, $31, $31, $31, $31, $4e, $4f, $05, $50, $51, $52, $53, $54, $55
    db $56, $57, $31, $31, $31, $31, $31, $58, $05, $05, $59, $5a, $5b, $5c, $5d, $51
    db $5e, $5f, $31, $60, $61, $62, $62, $63, $64, $05, $65, $66, $67, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $6f, $70, $71, $70, $72, $73, $74, $75, $76, $77, $78, $79
    db $31, $7a, $7b, $7c, $7d, $31, $31, $31, $7e, $7f, $80, $81, $82, $31, $31, $31
    db $31, $83, $31, $84, $85, $86, $87, $62, $88, $89, $31, $31, $8a, $31, $31, $31
    db $31, $57, $31, $31, $31, $31, $31, $8b, $8c, $8d, $31, $31, $8e, $31, $31, $31
    db $31, $8f, $31, $31, $31, $31, $31, $90, $91, $8d, $31, $31, $92, $31, $31, $31
    db $93, $94, $31, $31, $95, $96, $97, $98, $99, $8d, $31, $31, $9a, $31, $31, $31
    db $9b, $9c, $31, $31, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $31, $31
    db $a7, $a8, $a9, $3f, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $31
    db $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $be, $be, $be, $bf, $c0, $31

Image488PaletteIndex:: ; 0x62e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $06, $06, $06, $00, $00, $07, $07, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $05, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $05, $05, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $03, $05, $02, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $00, $00, $05, $02, $05, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $00, $03, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $02, $00, $05, $02, $00, $00, $00
    db $00, $02, $00, $00, $00, $00, $00, $03, $05, $02, $02, $02, $05, $03, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $05, $05, $03, $00, $20
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $05, $05, $00, $00, $00, $00
    db $00, $00, $00, $01, $00, $00, $00, $00, $05, $05, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $00, $00, $00, $00, $03, $03, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $07, $00, $00, $07, $07, $00, $00
    db $00, $00, $00, $00, $06, $06, $00, $00, $00, $01, $00, $01, $00, $01, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00

Image488Tileset:: ; 0x6420
    INCBIN "gfx/bank09a_Image488_6420.2bpp"

Image489Tilemap:: ; 0x7030
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $0e, $19, $1a, $1b, $0e, $0e
    db $1c, $1d, $1e, $1f, $11, $11, $20, $21, $11, $22, $23, $0e, $24, $25, $0e, $0e
    db $26, $27, $28, $0e, $29, $2a, $2b, $2c, $2d, $2e, $0e, $0e, $2f, $0e, $0e, $0e
    db $0e, $30, $31, $0e, $0e, $0e, $0e, $0e, $32, $0e, $0e, $0e, $33, $0e, $0e, $0e
    db $0e, $34, $0e, $0e, $0e, $0e, $0e, $0e, $35, $0e, $0e, $0e, $36, $0e, $0e, $0e
    db $0e, $37, $0e, $0e, $0e, $0e, $0e, $0e, $38, $0e, $0e, $0e, $39, $0e, $0e, $0e
    db $0e, $3a, $0e, $0e, $3b, $3c, $3d, $0d, $3e, $3f, $40, $41, $42, $43, $44, $45
    db $0e, $46, $47, $0e, $48, $11, $48, $33, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
    db $51, $52, $53, $0e, $48, $11, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d
    db $5e, $5f, $0e, $0e, $60, $61, $62, $63, $64, $58, $58, $58, $58, $65, $66, $67
    db $68, $69, $31, $0e, $0e, $0e, $0e, $0e, $6a, $58, $58, $58, $58, $6b, $6c, $6d
    db $0e, $0e, $33, $0e, $0e, $0e, $0e, $6e, $6f, $70, $58, $58, $58, $71, $72, $58
    db $0e, $18, $73, $74, $75, $76, $77, $78, $79, $7a, $58, $58, $58, $7b, $58, $58
    db $0e, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $58, $58, $86, $87, $88
    db $0e, $89, $8a, $0e, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $58, $93, $94, $95
    db $96, $97, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $98, $99, $9a, $9b, $9c, $9d, $95
    db $9e, $9f, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $a0, $a1, $a2, $a3, $a4, $a5, $58
    db $a6, $0e, $0e, $0e, $0e, $0e, $a7, $a8, $a9, $aa, $ab, $58, $58, $58, $58, $58
    db $ac, $0e, $0e, $0e, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $58, $58, $58, $58

Image489PaletteIndex:: ; 0x7170
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $00, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $20, $03, $03, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $41, $40, $02, $05, $05, $05, $03, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $01, $02, $02, $02, $05, $05, $05, $03, $00
    db $00, $00, $00, $00, $01, $01, $01, $01, $02, $02, $02, $02, $02, $02, $00, $00
    db $00, $00, $20, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $05, $00, $00
    db $00, $00, $40, $00, $00, $00, $00, $03, $05, $05, $02, $02, $02, $05, $00, $00
    db $00, $40, $00, $00, $00, $00, $00, $00, $03, $05, $02, $02, $02, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $05, $02, $02, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $02, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $05, $02, $00, $00, $20
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $05, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $07, $07, $00, $00, $00, $00

Image489Tileset:: ; 0x72b0
    INCBIN "gfx/bank09a_Image489_72b0.2bpp"

Image490Tilemap:: ; 0x7e00
    db $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $03, $04, $05, $06, $06, $06
    db $00, $00, $00, $00, $07, $08, $02, $02, $02, $02, $09, $0a, $0b, $06, $06, $06
    db $00, $00, $00, $00, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $06, $06, $06
    db $00, $00, $00, $00, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $22, $23, $24
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $25, $06, $06, $26, $27
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $28, $06, $29, $06, $2a
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2b, $2c, $06, $06, $2d, $2e
    db $00, $00, $00, $00, $2f, $30, $31, $32, $33, $34, $35, $36, $06, $06, $06, $37
    db $00, $00, $00, $00, $38, $39, $3a, $3b, $3c, $06, $3d, $3e, $06, $06, $3f, $06
    db $00, $00, $00, $00, $40, $41, $42, $43, $44, $45, $46, $06, $06, $06, $47, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $48, $06, $49, $4a, $4b, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4c, $06, $4d, $06, $4e, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $2b, $4f, $06, $50, $51, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $52, $53, $54, $55, $06, $06, $56, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $57, $58, $59, $5a, $06, $06, $5b, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $5c, $5d, $5e, $5f, $60, $61, $62, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $63, $64, $65, $06, $4d, $66, $06, $06, $06
    db $67, $68, $00, $00, $00, $69, $6a, $6b, $6c, $6d, $06, $6e, $6f, $06, $06, $06
    db $06, $06, $70, $71, $72, $73, $74, $06, $06, $75, $76, $06, $77, $06, $06, $06

Image490PaletteIndexPart1:: ; 0x7f40
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $05
    db $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00, $00, $00, $05
    db $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $00, $00, $00, $00, $05, $02
    db $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00, $05, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $05, $02

