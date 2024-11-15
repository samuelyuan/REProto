SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

Image132PaletteIndexPart2:: ; 0x4000
    db $02, $02, $01, $03, $01, $01, $01, $01, $01, $01, $02, $02, $02, $42, $00, $02
    db $02, $01, $01, $03, $01, $01, $01, $01, $01, $01, $07, $02, $01, $02, $02, $02
    db $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $05, $02, $02, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $07, $00, $02, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $07, $00, $02, $01, $01
    db $02, $02, $02, $22, $01, $01, $01, $01, $01, $01, $01, $07, $00, $42, $01, $01
    db $00, $00, $00, $02, $02, $01, $01, $01, $01, $01, $01, $07, $00, $42, $01, $01

Image132Tileset:: ; 0x8080
    INCBIN "gfx/bank030_Image132_8080.2bpp"

Image133Tilemap:: ; 0x49f0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $06, $00, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $09, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0d, $0e, $0f, $10, $11, $12
    db $13, $14, $15, $16, $17, $17, $17, $17, $17, $18, $19, $1a, $00, $1b, $1c, $1d
    db $00, $00, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $00, $28, $1c, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $00, $36, $37, $38
    db $39, $1c, $1c, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $00, $43, $44, $1c
    db $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $00, $51, $52, $1c
    db $53, $54, $55, $56, $57, $58, $1c, $1c, $1c, $59, $5a, $5b, $00, $5c, $5d, $1c
    db $5e, $5f, $60, $1c, $1c, $1c, $1c, $1c, $1c, $61, $62, $00, $00, $63, $64, $1c
    db $65, $66, $67, $68, $69, $69, $6a, $6b, $6c, $6d, $6e, $6f, $00, $44, $70, $71
    db $1c, $72, $73, $74, $75, $75, $75, $76, $77, $78, $79, $7a, $00, $7b, $7c, $1c
    db $1c, $1c, $1c, $1c, $1c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $1c
    db $1c, $87, $7f, $88, $89, $00, $00, $00, $00, $00, $8a, $8b, $8c, $36, $8d, $1c
    db $8e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $8f, $90, $91, $92, $1c
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $93, $8b, $94, $2e, $1c
    db $95, $95, $17, $17, $17, $17, $96, $96, $96, $97, $98, $99, $9a, $9b, $53, $1c
    db $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $9c, $00, $00, $53, $1c

Image133PaletteIndex:: ; 0x4b30
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $02, $00, $02
    db $01, $01, $01, $06, $06, $06, $03, $02, $02, $02, $02, $02, $01, $02, $00, $02
    db $02, $02, $02, $02, $02, $06, $06, $00, $00, $00, $02, $02, $01, $02, $02, $02
    db $02, $00, $00, $02, $02, $06, $06, $02, $02, $02, $02, $02, $01, $02, $02, $00
    db $02, $06, $06, $06, $06, $06, $02, $02, $02, $02, $02, $02, $01, $02, $02, $00
    db $02, $06, $06, $06, $06, $03, $00, $00, $00, $02, $02, $02, $01, $02, $02, $00
    db $02, $06, $06, $00, $00, $00, $00, $00, $00, $02, $02, $01, $01, $02, $02, $00
    db $06, $06, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $42, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $07, $02, $01, $02, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $07, $02, $02, $02, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $00, $02, $22, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $00, $02, $02, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $00

Image133Tileset:: ; 0x4c70
    INCBIN "gfx/bank031_Image133_4c70.2bpp"

Image134Tilemap:: ; 0x5640
    db $00, $00, $01, $02, $00, $03, $03, $04, $05, $06, $07, $08, $08, $08, $08, $08
    db $00, $00, $09, $0a, $00, $00, $00, $00, $00, $00, $0b, $0c, $0d, $08, $08, $08
    db $00, $00, $0e, $0f, $00, $00, $00, $00, $00, $00, $00, $00, $10, $11, $08, $08
    db $12, $13, $14, $15, $00, $00, $00, $00, $00, $00, $00, $00, $00, $16, $08, $08
    db $04, $05, $17, $18, $19, $1a, $1b, $00, $00, $00, $00, $1c, $1d, $1e, $1f, $20
    db $00, $00, $00, $00, $00, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $00
    db $00, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $00, $00, $36, $00
    db $00, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $33, $3f, $00, $00, $00, $40, $00
    db $00, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $00, $00, $00, $4b, $00
    db $00, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a
    db $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $00, $00, $3f, $00, $00
    db $08, $08, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $00, $00, $6f, $00, $00
    db $08, $70, $71, $72, $73, $74, $75, $00, $76, $77, $78, $79, $00, $7a, $00, $00
    db $7b, $00, $00, $00, $00, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $00, $00
    db $85, $86, $6a, $87, $88, $89, $74, $35, $00, $00, $00, $8a, $8b, $8c, $8d, $8e
    db $08, $8f, $5b, $0b, $00, $00, $00, $00, $00, $00, $00, $90, $91, $08, $92, $93
    db $94, $35, $00, $00, $00, $00, $00, $00, $00, $00, $95, $96, $08, $08, $08, $97
    db $00, $00, $00, $00, $00, $00, $00, $00, $95, $98, $99, $08, $08, $08, $08, $08
    db $00, $00, $00, $00, $00, $9a, $7d, $9b, $9c, $08, $08, $08, $08, $08, $08, $08
    db $9d, $9e, $9f, $17, $a0, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image134PaletteIndex:: ; 0x5780
    db $00, $00, $06, $06, $00, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01
    db $00, $00, $06, $06, $00, $00, $00, $00, $00, $00, $02, $02, $02, $01, $01, $01
    db $00, $00, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $01, $01
    db $02, $02, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $00, $00, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $00, $00, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $22, $02, $00, $00, $00, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $00, $00, $00, $00, $00, $02, $02, $02, $02, $00, $00, $02, $00, $00
    db $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $02, $00, $00
    db $01, $02, $02, $02, $02, $02, $02, $00, $02, $02, $02, $02, $00, $02, $00, $00
    db $02, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00
    db $02, $02, $42, $02, $02, $02, $02, $02, $00, $00, $00, $02, $02, $02, $02, $02
    db $01, $02, $22, $42, $00, $00, $00, $00, $00, $00, $00, $02, $02, $01, $02, $02
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $01, $01, $01, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $22, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image134Tileset:: ; 0x58c0
    INCBIN "gfx/bank031_Image134_58c0.2bpp"

Image135Tilemap:: ; 0x62d0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $03, $0b, $0c, $0d, $0e
    db $00, $0f, $10, $11, $12, $13, $14, $15, $03, $16, $03, $17, $18, $19, $00, $1a
    db $00, $1b, $1c, $1d, $1e, $1f, $20, $21, $03, $03, $03, $03, $22, $00, $23, $24
    db $00, $25, $26, $27, $28, $29, $2a, $2b, $2c, $03, $03, $03, $2d, $2e, $2f, $30
    db $00, $00, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $00, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d
    db $00, $5e, $5f, $60, $61, $62, $63, $64, $00, $65, $66, $67, $68, $69, $6a, $6b
    db $00, $00, $00, $00, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $6a, $76
    db $00, $00, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84
    db $00, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $81, $81, $81
    db $00, $00, $91, $92, $93, $94, $95, $96, $81, $97, $98, $99, $9a, $51, $81, $9b
    db $00, $00, $00, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8
    db $00, $00, $00, $a9, $aa, $ab, $ac, $ad, $ae, $00, $af, $b0, $b1, $b2, $03, $03
    db $00, $00, $00, $00, $00, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $a5, $03, $03, $c6, $c7, $c8, $c9, $ca
    db $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $00, $00
    db $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $00, $00, $00
    db $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $00, $00
    db $f4, $f5, $00, $00, $f6, $f7, $f8, $f9, $00, $fa, $fb, $fc, $fd, $fe, $ff, $00

Image135PaletteIndex:: ; 0x6410
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $00, $03, $03, $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $05, $05, $05, $06, $06, $06, $06, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $06, $04, $04, $04, $04, $04, $06, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $04, $04, $04, $04, $04, $04, $04, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $04, $04, $04, $04, $04, $04, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $00, $20, $00, $00, $00, $00, $01, $00, $00
    db $01, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01

Image135Tileset:: ; 0x6550
    INCBIN "gfx/bank031_Image135_6550.2bpp"

Image136Tilemap:: ; 0x7550
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6b, $6c, $6d, $6e
    db $6f, $52, $70, $71, $72, $73, $74, $75, $76, $77, $78, $6b, $6b, $79, $7a, $7b
    db $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $52, $86, $87, $88, $89, $8a
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $6b, $92, $93, $94, $95, $96, $97, $98, $99
    db $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9
    db $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $52, $52, $b5, $b6, $b7
    db $b8, $b9, $ba, $bb, $bc, $bd, $be, $52, $bf, $c0, $c1, $c2, $52, $c3, $c4, $c5
    db $c6, $c7, $52, $52, $52, $52, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1
    db $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $b4, $52, $da, $db, $dc, $dd, $de, $df
    db $52, $52, $e0, $e1, $e2, $e3, $52, $db, $52, $52, $52, $52, $e4, $e5, $e6, $e7
    db $52, $52, $52, $52, $52, $63, $e8, $e9, $ea, $52, $52, $52, $52, $eb, $ec, $ed
    db $52, $52, $52, $52, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9
    db $52, $52, $52, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06
    db $52, $52, $52, $52, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12

Image136PaletteIndex:: ; 0x7690
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $01, $01, $01
    db $00, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $01, $00, $01, $01, $00, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $21, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $21, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $09, $09, $09, $09, $09
    db $01, $01, $01, $01, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image136TilesetPart1:: ; 0x77d0
    INCBIN "gfx/bank031_Image136Part1_77d0.2bpp"
