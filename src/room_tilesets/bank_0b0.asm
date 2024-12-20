SECTION "ROM Bank $0b0", ROMX[$4000], BANK[$b0]

Image575TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank0af_Image575Part2_4000.2bpp"

Image576Tilemap:: ; 0x4d30
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $18, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $18, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $18, $18, $18, $57, $58, $59, $5a
    db $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $18, $18, $18, $18, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $18, $6f, $70, $71, $72, $73, $74, $75
    db $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $80, $81, $82, $83, $84
    db $85, $86, $87, $88, $89, $8a, $8b, $18, $8c, $8d, $80, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $80, $a1
    db $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $80, $b0
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $80, $bf
    db $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $80
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $80
    db $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $18, $18, $ea, $eb
    db $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb
    db $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b
    db $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $18, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a

Image576PaletteIndex:: ; 0x4e70
    db $01, $01, $01, $02, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01
    db $01, $01, $02, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $01, $01, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $01, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $01, $01, $03, $01, $01, $01, $01, $01, $01, $01, $03
    db $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01, $01, $01, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $03, $01, $03, $03, $01, $03, $03, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01, $01
    db $02, $07, $07, $03, $03, $03, $03, $00, $03, $03, $03, $01, $01, $01, $01, $01
    db $00, $00, $00, $06, $07, $03, $01, $00, $03, $03, $03, $03, $03, $03, $03, $01
    db $00, $00, $00, $00, $07, $01, $03, $03, $03, $03, $03, $03, $03, $03, $03, $01
    db $00, $00, $06, $07, $01, $03, $03, $05, $05, $01, $03, $03, $00, $00, $03, $01
    db $06, $06, $00, $07, $01, $03, $04, $04, $01, $03, $03, $03, $03, $03, $03, $01
    db $06, $02, $07, $01, $0c, $0c, $0c, $09, $09, $0b, $0b, $0b, $0b, $0b, $0b, $09
    db $0b, $0b, $09, $0c, $0c, $0c, $0c, $09, $0b, $0b, $00, $0b, $0b, $0b, $0b, $09
    db $09, $09, $09, $09, $09, $0c, $0d, $08, $0b, $08, $0b, $0b, $0b, $0b, $0b, $0b

Image576Tileset:: ; 0x4fb0
    INCBIN "gfx/bank0b0_Image576_4fb0.2bpp"

Image577Tilemap:: ; 0x6260
    db $00, $01, $02, $02, $02, $02, $02, $02, $02, $03, $04, $02, $02, $02, $02, $02
    db $00, $05, $02, $02, $02, $02, $02, $02, $02, $03, $04, $02, $02, $02, $02, $02
    db $00, $06, $02, $02, $02, $02, $02, $02, $02, $03, $04, $02, $02, $02, $02, $02
    db $00, $07, $02, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14
    db $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
    db $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $34, $34, $34, $34, $34
    db $40, $41, $42, $43, $44, $33, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34
    db $45, $46, $47, $48, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34
    db $49, $4a, $4b, $4c, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34
    db $4d, $4e, $4f, $50, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34
    db $51, $52, $53, $33, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34
    db $54, $55, $56, $57, $58, $59, $5a, $34, $34, $34, $34, $34, $34, $34, $34, $34
    db $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $34, $34, $34, $34
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $34
    db $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85
    db $00, $07, $02, $02, $86, $87, $88, $0a, $89, $8a, $8b, $8c, $8d, $8e, $11, $8f
    db $00, $90, $02, $02, $02, $02, $02, $02, $02, $03, $04, $02, $02, $02, $02, $02
    db $00, $91, $02, $02, $02, $02, $02, $02, $02, $03, $04, $02, $02, $02, $02, $02
    db $00, $01, $02, $02, $02, $02, $02, $02, $02, $03, $04, $02, $02, $02, $02, $02

Image577PaletteIndex:: ; 0x63a0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $02, $06, $06, $06, $06, $06, $06
    db $03, $00, $00, $00, $00, $00, $00, $00, $06, $06, $06, $06, $06, $06, $06, $01
    db $00, $00, $06, $06, $06, $06, $06, $06, $06, $06, $06, $01, $01, $01, $01, $01
    db $07, $06, $06, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $06, $06, $06, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $01, $01, $01, $01
    db $07, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $06, $06, $06, $06, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $02, $02, $06, $06, $06, $06
    db $01, $01, $01, $01, $01, $01, $01, $21, $01, $01, $01, $01, $01, $01, $21, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image577Tileset:: ; 0x64e0
    INCBIN "gfx/bank0b0_Image577_64e0.2bpp"

Image578Tilemap:: ; 0x6e00
    db $00, $01, $02, $03, $04, $05, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $05, $36, $37, $38, $39, $3a, $3b, $3c, $3d
    db $00, $3e, $3f, $3f, $40, $41, $25, $42, $43, $44, $45, $3f, $46, $47, $48, $49
    db $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $54, $54, $55, $56, $57
    db $58, $59, $05, $05, $05, $5a, $3f, $3f, $5b, $5c, $5d, $5e, $5f, $60, $61, $62
    db $63, $64, $65, $05, $66, $67, $3f, $3f, $3f, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $3f, $3f, $3f, $3f, $73, $74, $75, $76, $77, $78, $79, $7a
    db $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a
    db $00, $54, $8b, $8c, $8d, $8e, $8f, $90, $91, $91, $92, $93, $94, $95, $96, $97
    db $00, $00, $98, $99, $9a, $9b, $9c, $00, $00, $00, $9d, $9e, $9f, $a0, $a1, $05
    db $00, $00, $a2, $a3, $00, $00, $00, $00, $00, $00, $9d, $3f, $3f, $a4, $a5, $a6
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9d, $3f, $3f, $3f, $3f, $a7
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9d, $3f, $3f, $3f, $3f, $a8
    db $00, $a9, $aa, $aa, $aa, $aa, $aa, $ab, $00, $00, $ac, $3f, $3f, $3f, $3f, $ad
    db $ae, $af, $3f, $3f, $3f, $3f, $3f, $b0, $b1, $00, $b2, $3f, $3f, $3f, $3f, $3f
    db $b3, $3f, $3f, $3f, $3f, $3f, $b4, $b5, $b6, $b7, $b8, $3f, $3f, $3f, $3f, $3f
    db $85, $3f, $3f, $3f, $3f, $3f, $b9, $ba, $bb, $bc, $bd, $be, $bf, $3f, $3f, $3f
    db $3f, $3f, $3f, $3f, $3f, $3f, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $3f, $3f

Image578PaletteIndex:: ; 0x6f40
    db $00, $00, $06, $06, $00, $00, $00, $06, $06, $06, $00, $00, $00, $06, $00, $00
    db $00, $00, $06, $06, $00, $00, $00, $06, $06, $06, $00, $06, $06, $00, $00, $00
    db $00, $00, $00, $06, $06, $00, $00, $06, $06, $06, $00, $06, $06, $00, $00, $00
    db $00, $00, $00, $00, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $03, $03, $03, $00, $00, $00, $06, $06, $06, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $01, $01, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $21, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image578Tileset:: ; 0x7080
    INCBIN "gfx/bank0b0_Image578_7080.2bpp"

Image579Tilemap:: ; 0x7d00
    db $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $0d, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16
    db $00, $00, $00, $00, $00, $00, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20
    db $00, $00, $00, $00, $00, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $00, $00, $00, $00, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37
    db $00, $00, $00, $00, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43
    db $44, $45, $44, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
    db $53, $53, $53, $53, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $53, $53, $53, $53, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
    db $6b, $6c, $53, $53, $53, $53, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $00
    db $76, $77, $78, $79, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $00, $83
    db $84, $85, $86, $00, $00, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91
    db $92, $93, $94, $95, $00, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $00
    db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $9d, $ac, $ad, $ae
    db $af, $b0, $b1, $b2, $00, $00, $00, $00, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $53, $c9
    db $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9
    db $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $cc, $e6, $cc, $e7
    db $e8, $e9, $ea, $53, $53, $53, $53, $53, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2
    db $f3, $f4, $f5, $53, $53, $53, $53, $53, $53, $f6, $f7, $f8, $cc, $cc, $f9, $fa

Image579PaletteIndex:: ; 0x7e40
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $01
    db $01, $01, $01, $01, $07, $00, $00, $00, $02, $02, $01, $03, $03, $03, $00, $03
    db $01, $01, $00, $03, $00, $00, $00, $06, $06, $06, $00, $01, $01, $01, $03, $03
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $01, $00, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $01, $01, $01
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $00, $01, $01

Image579TilesetPart1:: ; 0x7f80
    INCBIN "gfx/bank0b0_Image579Part1_7f80.2bpp"

