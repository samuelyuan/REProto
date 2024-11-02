SECTION "ROM Bank $0aa", ROMX[$4000], BANK[$aa]

Image553TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank0a9_Image553Part2_4000.2bpp"

Image554Tilemap:: ; 0x45a0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $09, $09, $09
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $09, $16, $17, $09, $09, $09, $09
    db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $09, $09, $20, $21, $09, $09, $09, $09
    db $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $09, $09, $09, $09, $09, $09
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $09, $35, $36, $09, $09, $09, $09
    db $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $09, $09, $3f, $40, $09, $09, $09, $09
    db $41, $42, $43, $44, $45, $46, $47, $48, $49, $09, $4a, $4b, $09, $09, $09, $09
    db $4c, $4d, $4e, $4f, $09, $50, $51, $52, $09, $09, $53, $54, $09, $09, $09, $09
    db $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $09, $5e, $09, $09, $09, $09, $09
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $09, $09, $09, $09, $09
    db $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $09, $09, $09, $09
    db $76, $77, $78, $79, $7a, $09, $7b, $7c, $20, $7d, $7e, $09, $09, $09, $09, $09
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $09, $09, $09, $09, $09
    db $8a, $8b, $8c, $8d, $8e, $8f, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $90, $91, $92, $09, $09, $09, $93, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $09, $09, $09, $09
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $09, $09, $09
    db $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $09
    db $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9
    db $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9

Image554PaletteIndex:: ; 0x46e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $00, $00
    db $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $05, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $03, $02, $06, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $06, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $00, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $02, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00
    db $00, $06, $06, $06, $06, $06, $06, $06, $02, $02, $00, $00, $00, $00, $00, $00
    db $06, $06, $06, $06, $03, $06, $06, $02, $06, $06, $00, $00, $00, $00, $00, $00
    db $06, $06, $00, $03, $03, $06, $06, $00, $06, $06, $06, $02, $00, $00, $00, $00
    db $06, $06, $00, $00, $00, $00, $06, $06, $06, $06, $06, $00, $00, $00, $00, $00

Image554Tileset:: ; 0x4820
    INCBIN "gfx/bank0aa_Image554_4820.2bpp"

Image555Tilemap:: ; 0x55c0
    db $00, $01, $02, $03, $04, $05, $05, $05, $05, $06, $05, $05, $07, $05, $05, $08
    db $09, $0a, $0b, $0c, $0d, $05, $05, $05, $05, $0e, $05, $05, $0f, $05, $05, $10
    db $11, $12, $13, $14, $15, $16, $17, $05, $18, $19, $1a, $05, $1b, $1c, $05, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $22, $22, $22, $30, $22, $22, $31, $32, $33, $34, $35, $36, $37, $38
    db $39, $3a, $3b, $22, $22, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46
    db $47, $48, $49, $4a, $22, $22, $22, $22, $22, $4b, $4c, $4d, $4e, $4f, $50, $51
    db $52, $53, $05, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $22
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $97, $98, $05, $05, $99, $9a, $9b, $22, $22
    db $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $05, $05, $05, $a5, $a6, $22, $22
    db $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $05, $b1, $b2, $b3, $b4, $b5
    db $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5
    db $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5
    db $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5
    db $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5
    db $22, $22, $22, $22, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01
    db $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11

Image555PaletteIndex:: ; 0x5700
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $03, $00, $06, $06, $06, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $03, $06, $03, $00, $00, $00, $00, $00, $00, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image555Tileset:: ; 0x5840
    INCBIN "gfx/bank0aa_Image555_5840.2bpp"

Image556Tilemap:: ; 0x6960
    db $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $07, $07, $07, $09, $0a
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
    db $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a
    db $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $00, $59
    db $5a, $5b, $5c, $5d, $5e, $5f, $60, $07, $07, $61, $62, $63, $64, $00, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $07, $07, $07, $6d, $6e, $6f, $00, $00, $70, $71
    db $72, $73, $74, $75, $76, $77, $55, $07, $07, $78, $79, $7a, $00, $00, $00, $7b
    db $7c, $7d, $7e, $7f, $80, $81, $82, $07, $07, $83, $84, $85, $00, $00, $00, $7b
    db $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $00, $00, $00, $92
    db $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $00, $00, $a0
    db $a1, $a2, $a3, $a4, $00, $00, $00, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $00, $00, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
    db $00, $00, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9
    db $ca, $cb, $cc, $07, $07, $07, $07, $07, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4
    db $d5, $d6, $07, $07, $07, $07, $07, $07, $07, $d7, $d8, $d9, $da, $db, $dc, $dd
    db $de, $df, $07, $07, $07, $07, $e0, $e1, $07, $e2, $e3, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $07, $07, $07, $07, $07, $07, $ec, $ed, $ee, $ef, $f0, $f1, $f2
    db $f3, $f4, $f5, $07, $f6, $f7, $07, $07, $07, $f8, $f9, $fa, $fb, $fc, $fd, $fe

Image556PaletteIndex:: ; 0x6aa0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
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
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image556Tileset:: ; 0x6be0
    INCBIN "gfx/bank0aa_Image556_6be0.2bpp"

Image557Tilemap:: ; 0x7bd0
    db $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $02, $02, $04, $05, $06, $07
    db $00, $00, $00, $00, $00, $08, $09, $0a, $0b, $0c, $02, $02, $0d, $0e, $0f, $10
    db $11, $00, $00, $00, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $30, $31, $32, $00, $00, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
    db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
    db $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $02, $02, $02, $6f, $70, $71, $72, $73, $74, $75, $76, $77
    db $78, $79, $7a, $7b, $7c, $7d, $7e, $02, $02, $02, $7f, $80, $81, $82, $83, $84
    db $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $02, $02, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $98, $99, $02, $02, $02, $02, $9a, $9b, $9c, $9d, $9e
    db $9f, $a0, $a1, $a2, $a3, $a4, $a5, $02, $a6, $a7, $02, $7e, $a8, $a9, $aa, $ab
    db $ac, $ad, $ae, $00, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $00
    db $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9
    db $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9
    db $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9
    db $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9
    db $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $02
    db $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18

Image557PaletteIndex:: ; 0x7d10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $02, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $02, $06, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $00, $03, $03, $00, $00, $06, $00, $00
    db $00, $00, $00, $03, $00, $00, $03, $03, $03, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $02, $02, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $08, $08, $08, $08, $08, $08

Image557TilesetPart1:: ; 0x7e50
    INCBIN "gfx/bank0aa_Image557Part1_7e50.2bpp"

