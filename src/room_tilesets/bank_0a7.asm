SECTION "ROM Bank $0a7", ROMX[$4000], BANK[$a7]

Image543TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank0a6_Image543Part2_4000.2bpp"

Image544Tilemap:: ; 0x43a0
    db $00, $01, $02, $03, $04, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $06
    db $07, $08, $09, $0a, $0b, $0c, $05, $05, $05, $0d, $05, $05, $0e, $05, $0f, $10
    db $11, $12, $13, $14, $15, $16, $05, $05, $05, $17, $05, $05, $18, $05, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $05, $23, $05, $24, $25, $05, $26, $27
    db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $05, $30, $31, $05, $32, $33, $34, $35
    db $05, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44
    db $05, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
    db $05, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62
    db $05, $05, $63, $64, $65, $66, $67, $68, $69, $05, $6a, $6b, $6c, $61, $6d, $6e
    db $05, $6f, $70, $71, $72, $73, $74, $75, $76, $05, $77, $78, $79, $61, $7a, $7b
    db $05, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $05, $84, $85, $86, $87, $88, $89
    db $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $61, $97, $98
    db $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $61, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $05, $ae, $af, $05, $b0, $b1, $b2, $b3, $b4, $b5
    db $b6, $b7, $b8, $b9, $ba, $05, $05, $05, $bb, $05, $bc, $bd, $be, $bf, $b4, $c0
    db $c1, $c2, $c3, $05, $05, $05, $c4, $05, $c5, $c6, $05, $c7, $c8, $c9, $ca, $cb
    db $cc, $cd, $ce, $cf, $d0, $05, $05, $05, $d1, $d2, $05, $d3, $d4, $d5, $d6, $d7
    db $d8, $d9, $da, $db, $dc, $05, $05, $05, $dd, $05, $05, $de, $df, $d4, $e0, $e1
    db $05, $05, $05, $05, $05, $05, $05, $05, $e2, $05, $05, $e3, $e4, $d4, $e5, $e6
    db $05, $05, $05, $05, $05, $05, $05, $05, $e7, $05, $05, $e8, $e9, $ea, $eb, $ec

Image544PaletteIndex:: ; 0x44e0
    db $02, $02, $06, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $06, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $06, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image544Tileset:: ; 0x4620
    INCBIN "gfx/bank0a7_Image544_4620.2bpp"

Image545Tilemap:: ; 0x54f0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $09, $09, $09, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $09, $09, $09, $25, $26, $27, $28, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $09, $09, $32, $33, $34, $35, $36, $37
    db $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $09, $09, $40, $41, $42, $43, $44, $45
    db $46, $47, $48, $49, $4a, $4b, $4c, $09, $09, $4d, $4e, $4f, $50, $51, $52, $53
    db $54, $55, $56, $57, $58, $59, $09, $09, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61
    db $62, $63, $64, $65, $09, $09, $09, $09, $66, $67, $68, $69, $6a, $6b, $6c, $6d
    db $6e, $09, $4c, $09, $09, $09, $09, $09, $6f, $70, $71, $72, $73, $74, $75, $76
    db $09, $09, $09, $09, $09, $09, $09, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $09, $09, $09, $09, $09, $09, $81, $82, $83, $84, $85, $86, $87, $88, $89
    db $8a, $8b, $8c, $8d, $8e, $09, $09, $09, $8f, $90, $91, $92, $93, $94, $95, $96
    db $97, $98, $99, $9a, $9b, $9c, $09, $09, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4
    db $a5, $a6, $a7, $a8, $a9, $aa, $09, $09, $25, $ab, $ac, $ad, $ae, $af, $b0, $b1
    db $b2, $b3, $b4, $b5, $b6, $09, $b7, $09, $09, $b8, $9e, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $09, $09, $09, $c5, $c6, $9e, $c7, $c8, $c9
    db $ca, $cb, $cc, $cd, $ce, $cf, $09, $d0, $09, $09, $09, $d1, $d2, $d3, $d4, $d5
    db $d6, $1d, $d7, $d8, $d9, $da, $db, $dc, $09, $09, $dd, $de, $df, $e0, $e1, $e2
    db $e3, $e4, $e5, $e6, $e7, $e8, $0a, $e9, $ea, $eb, $ec, $ed, $ee, $09, $ef, $f0
    db $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00

Image545PaletteIndex:: ; 0x5630
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08

Image545Tileset:: ; 0x5770
    INCBIN "gfx/bank0a7_Image545_5770.2bpp"

Image546Tilemap:: ; 0x6780
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $05, $06, $07, $08, $09, $0a, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $00, $00, $00, $00, $14, $15, $16
    db $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $00, $00, $00, $00, $20, $21, $22
    db $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $00, $00, $2c, $2d, $2e, $2f, $30
    db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $00, $3b, $00, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $00, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $00, $5a, $5b, $5c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c
    db $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c
    db $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $00
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $00, $00, $00, $00, $c4, $c5, $00, $00
    db $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $00, $00, $00, $00, $00, $ce, $00, $00
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $00, $00, $00, $00
    db $db, $d1, $d1, $d2, $dc, $dd, $de, $df, $e0, $e1, $00, $e2, $e3, $00, $00, $00
    db $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $00, $00, $00

Image546PaletteIndex:: ; 0x68c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image546Tileset:: ; 0x6a00
    INCBIN "gfx/bank0a7_Image546_6a00.2bpp"

Image547Tilemap:: ; 0x7910
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $0f
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $0f, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d
    db $0f, $3e, $3f, $40, $41, $42, $43, $44, $0f, $0f, $45, $46, $0f, $47, $48, $49
    db $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59
    db $0f, $0f, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67
    db $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77
    db $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $0f, $0f, $80, $81, $82, $83, $84, $85
    db $86, $87, $88, $89, $8a, $8b, $8c, $8d, $0f, $0f, $8e, $8f, $90, $91, $92, $93
    db $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $0f, $9d, $9e, $90, $9f, $a0, $a1
    db $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $0f, $ab, $90, $90, $ac, $ad, $a1
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $0f, $b7, $b8, $90, $b9, $ba, $bb
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb
    db $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db
    db $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb
    db $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb
    db $df, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $8d, $07, $08, $09
    db $0a, $0b, $df, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $0f, $16, $17
    db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27

Image547PaletteIndex:: ; 0x7a50
    db $00, $00, $00, $00, $06, $05, $05, $00, $00, $00, $00, $04, $04, $04, $05, $00
    db $00, $00, $00, $00, $06, $05, $05, $05, $05, $00, $00, $04, $00, $05, $00, $00
    db $00, $00, $05, $05, $00, $04, $05, $05, $05, $05, $05, $04, $05, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $05, $05, $05, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $00, $08, $08, $08
    db $08, $08, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image547TilesetPart1:: ; 0x7b90
    INCBIN "gfx/bank0a7_Image547Part1_7b90.2bpp"
