SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

Image115TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank02c_Image115Part2_4000.2bpp"

Image116Tilemap:: ; 0x4450
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $04, $04, $04, $04, $04, $04, $04
    db $09, $09, $09, $0a, $0b, $0c, $0d, $0d, $0d, $0e, $0f, $10, $11, $12, $13, $14
    db $09, $09, $09, $09, $15, $16, $0d, $0d, $0d, $0d, $0d, $17, $0d, $0d, $0d, $0d
    db $09, $09, $09, $09, $09, $18, $0d, $0d, $0d, $0d, $0d, $19, $0d, $0d, $0d, $0d
    db $09, $09, $09, $09, $09, $1a, $1b, $0d, $0d, $0d, $0d, $1c, $1d, $0d, $0d, $0d
    db $09, $09, $09, $09, $09, $1e, $1f, $20, $21, $22, $23, $24, $25, $0d, $0d, $0d
    db $26, $09, $09, $09, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32
    db $33, $09, $09, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40
    db $41, $42, $43, $04, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $0d
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $0d
    db $04, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $0d, $0d, $0d, $0d
    db $04, $5e, $5f, $60, $60, $60, $60, $69, $09, $09, $6a, $6b, $6c, $3d, $3d, $3d
    db $04, $6d, $6e, $60, $60, $60, $6f, $70, $71, $72, $73, $74, $75, $76, $0d, $0d
    db $04, $77, $78, $79, $7a, $7b, $09, $7c, $7d, $7e, $7f, $80, $81, $82, $0d, $0d
    db $04, $77, $83, $09, $09, $00, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $91, $92, $93, $93, $94, $95, $96, $97, $98, $99, $9a, $0d, $0d
    db $9b, $09, $09, $09, $09, $09, $09, $09, $09, $9c, $9d, $04, $9e, $9f, $a0, $a1
    db $09, $09, $09, $09, $09, $09, $09, $a2, $a3, $03, $04, $04, $04, $04, $04, $04
    db $09, $09, $09, $09, $a4, $a5, $a6, $a7, $04, $04, $04, $04, $04, $04, $04, $04
    db $a8, $a9, $aa, $ab, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04

Image116PaletteIndex:: ; 0x4590
    db $00, $00, $00, $00, $00, $06, $00, $00, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $06, $00, $00, $00, $00, $00, $06, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $06, $00, $00, $00, $00, $00, $06, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $06, $00, $00, $00, $00, $00, $01, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $05, $01, $00, $00, $00, $00, $01, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $00, $00, $00, $00, $06, $01, $01, $01, $01, $01, $03, $01, $03, $03, $03, $03
    db $00, $00, $00, $00, $06, $01, $01, $01, $01, $00, $03, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $06, $01, $01, $01, $01, $00, $03, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $01, $01, $06, $06, $06, $03, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $04, $04, $04, $00, $06, $05, $05, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $00, $01, $01, $01, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $04, $04, $01, $01, $01, $00, $00
    db $00, $00, $00, $00, $00, $20, $00, $04, $05, $05, $05, $05, $05, $06, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $05, $06, $01, $01, $01, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image116Tileset:: ; 0x46d0
    INCBIN "gfx/bank02d_Image116_46d0.2bpp"

Image117Tilemap:: ; 0x5190
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $00, $00, $00, $00, $04
    db $00, $00, $00, $00, $00, $00, $05, $06, $07, $08, $00, $00, $00, $00, $00, $09
    db $00, $00, $00, $00, $00, $0a, $0b, $0c, $0d, $0e, $09, $00, $00, $00, $0f, $10
    db $00, $00, $00, $11, $12, $13, $14, $15, $16, $17, $18, $00, $19, $1a, $1b, $1c
    db $00, $00, $1d, $1e, $1f, $20, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29
    db $00, $2a, $2b, $2c, $2d, $20, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37
    db $00, $38, $39, $3a, $3b, $20, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
    db $00, $46, $47, $20, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $37, $51, $37
    db $00, $00, $52, $53, $54, $55, $56, $45, $57, $58, $59, $37, $37, $37, $37, $37
    db $00, $00, $00, $11, $5a, $5b, $5c, $5d, $5e, $5f, $37, $60, $61, $37, $37, $37
    db $00, $00, $00, $00, $00, $00, $62, $20, $63, $37, $37, $64, $65, $37, $37, $66
    db $00, $00, $00, $00, $00, $00, $67, $20, $68, $69, $37, $6a, $6b, $6c, $6d, $6e
    db $00, $00, $00, $00, $00, $6f, $20, $70, $71, $72, $73, $74, $75, $76, $77, $78
    db $00, $00, $00, $00, $09, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83
    db $00, $00, $00, $00, $84, $20, $20, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $00, $00, $09, $8e, $20, $20, $20, $8f, $90, $91, $92, $93, $20, $20, $20, $20
    db $00, $94, $95, $20, $20, $20, $20, $20, $20, $96, $97, $98, $99, $9a, $9a, $9b
    db $9c, $9d, $20, $20, $20, $20, $9e, $9f, $a0, $00, $00, $00, $00, $00, $00, $00
    db $20, $20, $20, $20, $a1, $a2, $a3, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $20, $20, $a4, $a5, $a6, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image117PaletteIndex:: ; 0x52d0
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $04, $04, $01, $01, $01, $41, $01, $01, $01, $01, $01
    db $00, $00, $00, $04, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $00
    db $00, $04, $01, $01, $01, $01, $01, $01, $01, $01, $05, $05, $05, $01, $06, $00
    db $00, $04, $01, $01, $01, $01, $01, $01, $03, $03, $05, $05, $05, $00, $06, $00
    db $00, $00, $04, $01, $01, $01, $01, $21, $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $24, $04, $04, $00, $00, $00, $01, $00, $03, $03, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $03, $03, $00, $00, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $00, $06, $06
    db $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $06, $00, $06, $06, $06, $00
    db $00, $00, $00, $00, $00, $00, $05, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image117Tileset:: ; 0x5410
    INCBIN "gfx/bank02d_Image117_5410.2bpp"

Image118Tilemap:: ; 0x5e80
    db $00, $01, $02, $00, $03, $04, $04, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $04, $04, $04, $04, $04, $12, $13, $14, $15, $16, $17
    db $04, $18, $19, $1a, $1b, $04, $04, $04, $04, $04, $1c, $1d, $1e, $1f, $20, $21
    db $22, $23, $24, $25, $26, $04, $04, $04, $04, $04, $27, $28, $29, $2a, $21, $2b
    db $2c, $2d, $2e, $2f, $30, $04, $31, $32, $33, $34, $35, $36, $1f, $37, $38, $39
    db $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $21, $42, $43, $44, $45, $46, $47, $48
    db $21, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $04
    db $21, $57, $58, $59, $5a, $5a, $5b, $5c, $14, $5d, $5e, $5f, $21, $60, $61, $04
    db $21, $62, $63, $64, $65, $65, $65, $66, $67, $68, $69, $6a, $21, $6b, $04, $04
    db $21, $6c, $6d, $6e, $21, $6f, $70, $71, $72, $73, $74, $75, $21, $76, $77, $04
    db $21, $78, $79, $7a, $7b, $7c, $04, $04, $7d, $7e, $7f, $80, $21, $81, $82, $83
    db $21, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $21, $90, $91
    db $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1
    db $a2, $21, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b8, $b9, $ba, $bb, $bc, $bd, $be, $14
    db $bf, $21, $c0, $21, $c1, $c2, $04, $c2, $c3, $c4, $c5, $c6, $14, $14, $c7, $14
    db $c8, $c9, $ca, $21, $21, $21, $21, $21, $21, $21, $cb, $cc, $14, $14, $cd, $14
    db $85, $ce, $cf, $21, $21, $21, $21, $21, $21, $21, $d0, $d1, $d2, $14, $d3, $14
    db $21, $d4, $d5, $21, $21, $21, $21, $21, $d6, $d7, $d8, $d9, $da, $14, $db, $bb
    db $dc, $dd, $65, $de, $de, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8

Image118PaletteIndex:: ; 0x5fc0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $04, $03, $00, $00, $00
    db $00, $00, $05, $04, $05, $00, $00, $00, $00, $00, $05, $03, $00, $00, $00, $00
    db $00, $00, $05, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $07, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $06, $00, $06, $06, $07, $07, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $05, $01, $03, $03, $01, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $01, $03, $03, $03, $03, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $01, $03, $03, $03, $03, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $05, $05, $05, $05, $05, $06, $06, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $03, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $06, $02, $03, $00, $00, $00
    db $00, $00, $20, $00, $00, $00, $07, $07, $07, $07, $07, $03, $03, $00, $00, $00

Image118Tileset:: ; 0x6100
    INCBIN "gfx/bank02d_Image118_6100.2bpp"

Image119Tilemap:: ; 0x6f90
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $02, $03, $04, $05, $00, $00, $00, $00, $00, $00, $00, $06, $07, $08, $09, $0a
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $11, $12, $13, $14, $15, $16, $17, $0e, $0e
    db $18, $0e, $19, $0e, $0e, $0f, $1a, $1b, $1c, $1d, $1e, $1f, $0e, $0e, $0e, $0e
    db $20, $21, $22, $23, $24, $00, $00, $00, $25, $26, $27, $28, $0e, $0e, $0e, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $0e, $0e, $35, $36, $37
    db $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $0e, $35, $43, $37, $37
    db $44, $45, $46, $47, $48, $0e, $0e, $49, $4a, $4b, $4c, $0e, $4d, $37, $4e, $4f
    db $00, $50, $51, $52, $53, $0e, $54, $55, $56, $57, $58, $59, $5a, $4e, $5b, $5c
    db $00, $5d, $5b, $5e, $5f, $0e, $60, $61, $62, $63, $64, $65, $37, $66, $67, $68
    db $00, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77
    db $00, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86
    db $00, $00, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $37, $91, $92, $93
    db $00, $94, $95, $96, $97, $98, $00, $00, $99, $9a, $9b, $0e, $9c, $9d, $9e, $9f
    db $00, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $0e, $aa, $ab, $ac, $ad
    db $94, $ae, $af, $b0, $b1, $b2, $86, $86, $86, $b3, $b4, $b5, $b6, $b7, $b8, $b9
    db $ba, $00, $bb, $bc, $bd, $86, $86, $86, $86, $86, $be, $bf, $0e, $c0, $c1, $b8
    db $c2, $c3, $c4, $c5, $c6, $86, $86, $86, $86, $86, $c7, $c8, $0e, $0e, $c9, $c1
    db $00, $ca, $cb, $cc, $cd, $ce, $86, $86, $86, $86, $cf, $d0, $d1, $0e, $0e, $d2
    db $d3, $d4, $d5, $d6, $d7, $d8, $86, $86, $86, $86, $d9, $da, $db, $0e, $0e, $0e

Image119PaletteIndex:: ; 0x70d0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $00, $00
    db $00, $00, $00, $00, $00, $20, $00, $00, $03, $04, $03, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $03, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $06, $06, $06, $06, $06, $06, $07, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $01, $01, $01, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $20, $00, $01, $01, $01, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $02, $01, $01, $03, $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $07, $06, $06, $06, $00, $00, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $01, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $06, $06, $00, $00, $06, $06, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $05, $05, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image119Tileset:: ; 0x7210
    INCBIN "gfx/bank02d_Image119_7210.2bpp"

Image120TilemapPart1:: ; 0x7fd0
    db $00, $01, $02, $02, $02, $02, $02, $02, $02, $02, $03, $04, $05, $06, $07, $00
    db $00, $08, $02, $02, $02, $02, $02, $02, $02, $02, $09, $0a, $0b, $0c, $0d, $0e
    db $00, $0f, $10, $11, $12, $13, $14, $02, $02, $02, $02, $15, $16, $17, $18, $19

