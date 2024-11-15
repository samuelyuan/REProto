SECTION "ROM Bank $08c", ROMX[$4000], BANK[$8c]

Image439PaletteIndexPart2:: ; 0x4000
    db $00, $00, $00, $00, $00, $06, $05, $05, $05, $05, $05, $05, $05, $05, $06, $06
    db $00, $00, $00, $00, $00, $06, $05, $05, $05, $05, $05, $05, $05, $06, $06, $00
    db $00, $00, $00, $00, $06, $05, $05, $05, $05, $05, $05, $05, $06, $06, $00, $00
    db $00, $00, $00, $00, $06, $05, $05, $05, $05, $05, $03, $06, $06, $00, $00, $00
    db $00, $00, $00, $00, $06, $05, $05, $05, $05, $05, $06, $06, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $06, $06, $06, $06, $06, $00, $00, $00, $00
    db $00, $00, $00, $00, $06, $05, $05, $05, $05, $05, $05, $06, $00, $00, $07, $07
    db $00, $00, $00, $00, $06, $05, $03, $05, $05, $05, $05, $06, $07, $07, $07, $07
    db $00, $00, $00, $00, $06, $05, $05, $05, $05, $05, $05, $06, $07, $01, $07, $07
    db $00, $00, $00, $00, $06, $06, $06, $06, $08, $08, $08, $08, $0f, $0f, $0f, $09
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image439Tileset:: ; 0x8100
    INCBIN "gfx/bank08b_Image439_8100.2bpp"

Image440Tilemap:: ; 0x5460
    db $00, $01, $02, $01, $03, $04, $05, $01, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $01, $01, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $29, $39
    db $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $26, $43, $44, $29, $45, $46, $47
    db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $29, $56
    db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $29, $71, $72, $73, $74, $75
    db $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85
    db $86, $87, $88, $89, $8a, $8b, $8c, $7d, $8d, $8e, $8f, $90, $91, $92, $93, $94
    db $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4
    db $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4
    db $b5, $b6, $b7, $b8, $a9, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3
    db $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $bd, $be, $cd, $ce, $cf, $d0, $d1
    db $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $bd, $db, $dc, $dd, $de, $df, $e0
    db $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $bd, $bd, $ea, $eb, $ec, $ed, $ee
    db $ef, $f0, $f1, $f2, $bd, $f3, $f4, $f5, $f6, $bd, $bd, $f7, $f8, $f9, $fa, $fb
    db $fc, $fd, $fe, $ff, $bd, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a

Image440PaletteIndex:: ; 0x55a0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07
    db $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00, $07, $07, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $27, $07, $07, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $01, $01, $01, $01, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $01, $01, $07, $07, $07, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $05, $06, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $06, $06, $06, $05, $05, $05, $05, $06, $00, $00, $00, $00
    db $00, $00, $00, $06, $03, $05, $05, $05, $05, $05, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $03, $05, $05, $05, $03, $03, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $05, $05, $05, $05, $03, $03, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $03, $05, $05, $05, $03, $03, $05, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $03, $05, $05, $05, $05, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $03, $05, $05, $05, $05, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $06, $03, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $08, $08, $08, $08
    db $08, $08, $08, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $08, $0e, $0e, $0e, $0e, $08
    db $08, $08, $08, $08, $08, $08, $0e, $0e, $0e, $0e, $0e, $0d, $0d, $0d, $0e, $0e

Image440Tileset:: ; 0x56e0
    INCBIN "gfx/bank08c_Image440_56e0.2bpp"

Image441Tilemap:: ; 0x6990
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $0c, $0c, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $0c, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $0c, $34, $35, $36, $37, $38, $39, $3a
    db $3b, $3c, $07, $3d, $3e, $3f, $40, $0c, $0c, $41, $42, $43, $44, $45, $46, $47
    db $48, $49, $4a, $4b, $4c, $0c, $0c, $0c, $0c, $4d, $4e, $4f, $0c, $50, $0c, $51
    db $52, $53, $54, $55, $56, $57, $0c, $58, $59, $5a, $0c, $5b, $5c, $0c, $0c, $5d
    db $5e, $55, $5f, $60, $61, $0c, $0c, $62, $0c, $63, $64, $65, $66, $67, $68, $69
    db $6a, $6b, $55, $6c, $6d, $6e, $0c, $6f, $70, $0c, $0c, $71, $72, $73, $74, $75
    db $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $0c, $84
    db $55, $55, $85, $86, $87, $88, $0c, $89, $8a, $0c, $8b, $8c, $8d, $0c, $0c, $8e
    db $8f, $90, $91, $92, $93, $94, $0c, $95, $0c, $26, $0c, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $0c, $a1, $a2, $a3, $0c, $a4, $a5, $a6, $0c, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $0c, $ae, $af, $b0, $0c, $b1, $b2, $b3, $0c, $b4
    db $b5, $b6, $b7, $b8, $b9, $ba, $0c, $bb, $bc, $bd, $0c, $be, $bf, $0c, $0c, $c0
    db $c1, $c2, $c3, $c4, $c5, $0c, $0c, $c6, $c7, $c8, $0c, $c9, $ca, $0c, $cb, $cc
    db $cd, $ce, $cf, $d0, $d1, $d2, $0c, $d3, $d4, $0c, $d5, $d6, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $df, $0c, $e0, $0c, $e1, $e2, $e3, $0c, $e4, $e5, $e6, $e7
    db $55, $e8, $e9, $ea, $eb, $ec, $ed, $0c, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5
    db $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05

Image441PaletteIndex:: ; 0x6ad0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $07, $01, $01, $01, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $01, $07, $07, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $07, $07, $07, $00, $00
    db $00, $00, $00, $00, $00, $00, $07, $07, $01, $07, $01, $07, $07, $07, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $07, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $07, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $07, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $07, $01, $01, $07, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $07, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $07, $01, $01, $07, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $07, $01, $01, $07, $07, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $07, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08

Image441Tileset:: ; 0x6c10
    INCBIN "gfx/bank08c_Image441_6c10.2bpp"

Image442Tilemap:: ; 0x7c70
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $78, $78, $78, $78, $79, $7a
    db $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $78, $78, $78, $78, $78, $78, $78
    db $84, $85, $86, $87, $88, $89, $8a, $8b, $78, $78, $78, $78, $78, $78, $78, $78
    db $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $78, $78, $78, $78, $78, $78
    db $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $78, $78, $78, $78
    db $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $78, $78
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $bb, $bb, $cc
    db $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $bb, $d9, $da, $db
    db $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $db
    db $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $bb
    db $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $bb, $bb
    db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $bb, $15, $16

Image442PaletteIndex:: ; 0x7db0
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
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $08, $08

Image442TilesetPart1:: ; 0x7ef0
    INCBIN "gfx/bank08c_Image442Part1_7ef0.2bpp"
