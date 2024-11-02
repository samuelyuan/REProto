SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

Image200PaletteIndexPart2:: ; 0x4000
    db $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $07, $07, $07, $07, $07, $01, $06, $0f, $0e, $0a, $0d, $0f, $0f
    db $09, $09, $0f, $0f, $0f, $08, $0d, $08, $0e, $0b, $0f, $0e, $0e, $0d, $0f, $0d

Image200Tileset:: ; 0x8030
    INCBIN "gfx/bank040_Image200_8030.2bpp"

Image201Tilemap:: ; 0x5190
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $0b
    db $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $0b
    db $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6b
    db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $6b, $78, $79, $6b
    db $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89
    db $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $84, $94, $95, $96, $97, $6b
    db $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $6b, $6b, $a4, $6b
    db $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $6b, $6b, $6b, $6b
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $6b, $6b, $6b, $6b, $6b
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $6b, $c4, $c5, $6b, $c6, $c7, $c8, $6b
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $6b, $d1, $d2, $6b, $d3, $d4, $d5, $d6
    db $6d, $d7, $d8, $d9, $da, $db, $dc, $dd, $6b, $de, $df, $6b, $e0, $6b, $e1, $e2
    db $e3, $6d, $e4, $0b, $e5, $e6, $e7, $e8, $6b, $e9, $ea, $6b, $eb, $6b, $ec, $ed
    db $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd
    db $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0b, $0e, $0f, $10, $11, $12, $13, $0b, $0b, $14, $0b, $0b, $15, $16, $17, $18

Image201PaletteIndex:: ; 0x52d0
    db $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $00, $00, $02, $02, $02
    db $00, $00, $00, $00, $00, $02, $02, $02, $02, $07, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $02, $02, $02, $02, $06, $07, $07, $02, $02, $00, $04
    db $00, $00, $00, $00, $00, $02, $02, $02, $06, $06, $06, $05, $02, $00, $00, $00
    db $00, $00, $02, $02, $02, $02, $02, $02, $07, $07, $02, $02, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $07, $01, $02, $02, $00, $03, $00, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $07, $01, $02, $03, $03, $00, $00, $00, $00
    db $02, $02, $02, $07, $02, $01, $01, $01, $07, $03, $03, $03, $00, $01, $01, $00
    db $02, $02, $07, $07, $07, $07, $07, $07, $07, $03, $00, $03, $01, $01, $01, $01
    db $02, $02, $07, $07, $07, $07, $07, $07, $07, $03, $00, $03, $01, $01, $01, $00
    db $02, $02, $07, $07, $07, $07, $07, $07, $07, $03, $03, $03, $00, $00, $01, $00
    db $00, $00, $07, $02, $02, $02, $02, $07, $01, $00, $03, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $02, $07, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $02, $07, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $02, $07, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $02, $07, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $20, $00, $00, $00, $00, $00, $07, $01, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $02, $02, $02, $02, $07, $07, $01, $07, $01, $01, $01, $00, $00, $00
    db $00, $00, $0f, $0a, $0f, $0f, $0f, $09, $09, $0f, $0f, $0f, $09, $08, $08, $08
    db $00, $0a, $0f, $0a, $0f, $0f, $09, $01, $01, $09, $01, $01, $09, $08, $08, $08

Image201Tileset:: ; 0x5410
    INCBIN "gfx/bank041_Image201_5410.2bpp"

Image202Tilemap:: ; 0x65a0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $1a, $1a, $2c, $2d
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $1a, $36, $37, $38, $39, $1a, $3a, $3b
    db $3c, $3d, $3e, $3f, $14, $40, $41, $42, $43, $44, $1a, $45, $46, $47, $48, $1a
    db $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58
    db $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $1a, $1a, $1a, $61, $62, $63, $64, $65
    db $66, $67, $68, $69, $6a, $60, $6b, $6c, $6d, $6e, $6f, $70, $71, $1a, $1a, $1a
    db $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $1a, $1a, $1a
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $1a, $1a, $1a
    db $8c, $8d, $8e, $8f, $90, $91, $91, $91, $92, $93, $94, $95, $96, $97, $95, $95
    db $98, $99, $9a, $9b, $9c, $9d, $9e, $1a, $1a, $9f, $a0, $1a, $a1, $a2, $a3, $a4
    db $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $1a
    db $b4, $b5, $1a, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2
    db $c3, $c4, $c5, $c6, $c7, $c8, $1a, $1a, $c9, $1a, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $1a, $d1, $d2, $d3, $d4, $1a, $d5, $d6, $1a, $1a, $1a, $1a, $d7, $d8, $d9
    db $da, $db, $1a, $dc, $dd, $de, $df, $e0, $1a, $e1, $e2, $1a, $1a, $e3, $e4, $1a
    db $e2, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $1a, $c9, $e0, $e0, $1a, $ec, $ed, $1a
    db $ee, $ef, $f0, $1a, $1a, $f1, $f2, $1a, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $1a
    db $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $1a, $1a, $02, $1a, $1a, $03, $04, $1a

Image202PaletteIndex:: ; 0x66e0
    db $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $07, $02
    db $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $01, $02, $02, $02, $07, $02
    db $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $01, $01, $07, $02
    db $00, $00, $00, $00, $00, $02, $02, $02, $01, $02, $02, $02, $02, $01, $07, $02
    db $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $01, $02, $02, $07, $07, $01
    db $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $01, $02, $02, $07, $07, $02
    db $02, $02, $02, $02, $02, $02, $01, $01, $00, $00, $00, $00, $02, $02, $07, $02
    db $02, $02, $02, $02, $02, $21, $03, $06, $01, $06, $02, $02, $02, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $06, $01, $01, $06, $06, $02, $02, $01, $01, $01
    db $02, $02, $02, $02, $00, $00, $02, $06, $06, $02, $06, $02, $02, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $07, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $01, $01, $01, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $01, $02, $01, $02, $02, $02, $02, $02, $06, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $01, $01, $02, $01, $02, $02, $07, $07, $07, $02
    db $02, $01, $02, $02, $02, $02, $01, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $01, $02, $02, $02, $02, $02, $01, $02, $02, $01, $01, $01, $01, $01
    db $42, $02, $02, $02, $02, $02, $02, $02, $01, $02, $22, $42, $01, $01, $01, $01
    db $02, $02, $02, $01, $01, $02, $02, $01, $02, $02, $02, $02, $02, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $0a, $0a, $01, $01, $0a, $01, $01, $09, $09, $01

Image202Tileset:: ; 0x6820
    INCBIN "gfx/bank041_Image202_6820.2bpp"

Image203Tilemap:: ; 0x7870
    db $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $0f, $10, $11, $12, $13, $14
    db $15, $16, $17, $00, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23
    db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33
    db $34, $34, $35, $36, $00, $00, $00, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $34, $34, $40, $41, $00, $00, $00, $00, $00, $42, $43, $44, $45, $46, $47, $48
    db $34, $34, $49, $41, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55
    db $34, $34, $56, $57, $58, $14, $14, $14, $59, $00, $5a, $5b, $5c, $5d, $5e, $5f
    db $34, $34, $60, $61, $62, $63, $64, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $34, $34, $6d, $6e, $6f, $70, $71, $72, $73, $74, $74, $75, $76, $77, $78, $79
    db $34, $34, $7a, $7b, $7c, $7d, $7e, $7f, $80, $74, $74, $81, $82, $83, $84, $85
    db $34, $86, $87, $88, $00, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93
    db $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3
    db $a4, $a5, $a6, $a7, $a8, $a8, $a9, $a8, $a8, $a8, $aa, $ab, $ac, $ad, $ae, $af
    db $34, $b0, $b1, $b2, $b3, $b3, $b3, $b4, $b5, $b5, $b6, $b7, $b8, $b9, $ba, $bb
    db $34, $34, $bc, $bd, $be, $bf, $bf, $c0, $c1, $c2, $4f, $c3, $c4, $c5, $c6, $c7
    db $34, $c8, $c9, $14, $14, $ca, $cb, $cb, $cc, $cd, $ce, $cf, $74, $d0, $d1, $d2
    db $34, $d3, $d4, $14, $14, $d5, $d6, $d7, $d8, $14, $d9, $da, $db, $dc, $74, $dd
    db $c8, $de, $14, $14, $14, $df, $e0, $e1, $e2, $14, $14, $e3, $e4, $74, $e5, $74
    db $d3, $e6, $14, $14, $14, $14, $14, $14, $14, $14, $14, $e7, $e8, $e9, $74, $74

Image203PaletteIndex:: ; 0x79b0
    db $00, $00, $04, $04, $04, $00, $04, $04, $04, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $02, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $04, $01, $01, $01, $01, $00, $02, $02, $02, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $02, $02, $07, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $00, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $02, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $02, $00, $00, $00, $04, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $00, $00, $00, $04, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $05, $05, $05, $05, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $05, $00, $02, $05, $01, $01, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $05, $05, $05, $05, $01, $01, $01, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00

Image203TilesetPart1:: ; 0x7af0
    INCBIN "gfx/bank041_Image203Part1_7af0.2bpp"

