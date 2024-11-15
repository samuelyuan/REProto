SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

Image251TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank04f_Image251Part2_4000.2bpp"

Image252Tilemap:: ; 0x4e60
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $33, $40, $41, $42, $43, $44, $45, $37, $46, $47, $48, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $52, $53, $54, $37, $55, $56, $57, $58, $59, $5a, $5b, $5c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $33, $76, $77, $78, $79, $7a, $7b
    db $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $33, $85, $86, $87, $88, $89, $8a
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa
    db $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca
    db $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $df, $e0, $d2, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9
    db $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9
    db $fa, $fb, $fc, $fd, $fe, $d2, $d2, $ff, $00, $01, $02, $03, $04, $05, $06, $07
    db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17
    db $18, $09, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26
    db $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36

Image252PaletteIndex:: ; 0x4fa0
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $01, $00, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $01, $01, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $07, $01, $01, $01, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $00, $01, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01, $01, $01, $00, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $01, $07, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $07, $07, $01, $01, $01, $07, $07, $01, $01, $01, $01, $00
    db $01, $01, $00, $07, $07, $01, $01, $01, $01, $01, $07, $01, $01, $01, $01, $01
    db $01, $00, $00, $07, $07, $07, $01, $07, $01, $01, $07, $01, $01, $01, $01, $01
    db $01, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $00, $00, $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01
    db $01, $00, $00, $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01
    db $01, $00, $00, $07, $07, $00, $00, $00, $00, $01, $01, $01, $00, $01, $00, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $01, $01, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $00
    db $01, $00, $00, $00, $00, $00, $00, $00, $08, $08, $09, $09, $09, $08, $09, $08
    db $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $09, $09, $09, $09, $09, $09
    db $09, $09, $08, $08, $08, $08, $08, $08, $09, $09, $09, $09, $09, $09, $0f, $0f
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image252Tileset:: ; 0x50e0
    INCBIN "gfx/bank050_Image252_50e0.2bpp"

Image253Tilemap:: ; 0x6450
    db $00, $01, $02, $03, $04, $05, $06, $07, $07, $07, $07, $07, $07, $08, $07, $09
    db $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19
    db $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
    db $3a, $3b, $3c, $3d, $3e, $3e, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
    db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57
    db $58, $59, $3e, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76
    db $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $07
    db $77, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $07, $07
    db $77, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $61, $07
    db $77, $77, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $07, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $af, $b0, $b1, $b2, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
    db $bc, $bd, $be, $bf, $c0, $3e, $3e, $3e, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8
    db $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8
    db $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08
    db $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $3e
    db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27

Image253PaletteIndex:: ; 0x6590
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $00, $00, $01, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $00, $00, $00, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $00, $01, $01, $00, $01, $01, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $00, $01, $00, $00, $01, $01, $01, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $00, $01, $00, $00, $01, $01, $01, $00, $00
    db $00, $00, $01, $01, $00, $00, $00, $00, $01, $00, $00, $01, $01, $01, $00, $00
    db $00, $00, $01, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $09, $08, $08, $08, $00
    db $09, $09, $09, $09, $09, $08, $08, $08, $08, $08, $08, $09, $08, $08, $08, $0c

Image253Tileset:: ; 0x66d0
    INCBIN "gfx/bank050_Image253_66d0.2bpp"

Image254Tilemap:: ; 0x7950
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $02, $11, $12, $13, $14, $02, $15, $02, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $02, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $02, $02, $2d, $2e, $2f, $02, $02, $30, $31, $32, $33, $34, $35, $36, $37
    db $38, $39, $02, $3a, $02, $3b, $02, $02, $02, $3c, $3d, $3e, $3f, $40, $41, $42
    db $02, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51
    db $52, $02, $02, $53, $54, $55, $02, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $02, $02, $02, $60, $02, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
    db $6b, $02, $02, $02, $6c, $02, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76
    db $02, $02, $02, $77, $78, $02, $02, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81
    db $02, $02, $02, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $9f, $02, $02, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $02, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
    db $bc, $bd, $02, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca
    db $cb, $cc, $cd, $ce, $cf, $02, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9
    db $02, $da, $02, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7
    db $02, $02, $02, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4
    db $02, $02, $02, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01
    db $02, $02, $03, $02, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $02

Image254PaletteIndex:: ; 0x7a90
    db $04, $04, $00, $04, $04, $04, $04, $04, $04, $04, $04, $06, $06, $06, $06, $04
    db $04, $00, $04, $04, $04, $04, $04, $04, $00, $02, $02, $06, $06, $06, $06, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $02, $02, $02, $06, $06, $06, $06, $04
    db $04, $04, $04, $04, $04, $04, $00, $00, $02, $02, $02, $06, $06, $02, $06, $06
    db $04, $04, $04, $06, $04, $04, $00, $00, $00, $02, $02, $02, $06, $06, $06, $06
    db $04, $04, $04, $06, $04, $06, $02, $02, $02, $02, $03, $03, $06, $06, $06, $06
    db $04, $04, $04, $04, $04, $02, $00, $02, $02, $03, $03, $02, $06, $06, $06, $04
    db $04, $04, $04, $04, $04, $00, $02, $02, $02, $03, $03, $02, $06, $06, $06, $06
    db $04, $04, $04, $04, $04, $00, $02, $02, $02, $05, $02, $02, $06, $06, $06, $06
    db $04, $04, $04, $04, $04, $00, $00, $02, $02, $05, $05, $02, $02, $02, $06, $06
    db $04, $04, $04, $04, $04, $04, $02, $02, $02, $05, $05, $02, $02, $06, $06, $06
    db $04, $04, $04, $04, $04, $04, $02, $02, $02, $05, $05, $02, $02, $06, $06, $02
    db $04, $00, $00, $04, $04, $04, $02, $02, $05, $05, $02, $02, $06, $06, $02, $02
    db $04, $04, $00, $04, $04, $04, $02, $02, $05, $05, $05, $05, $06, $02, $02, $02
    db $04, $04, $00, $04, $04, $04, $02, $02, $05, $05, $05, $05, $02, $02, $06, $02
    db $04, $04, $04, $04, $04, $00, $02, $05, $05, $05, $03, $05, $05, $02, $06, $02
    db $04, $04, $04, $04, $04, $04, $02, $02, $05, $05, $05, $05, $06, $06, $06, $02
    db $04, $04, $04, $04, $04, $04, $02, $02, $05, $05, $05, $02, $02, $02, $06, $02
    db $04, $04, $04, $04, $04, $04, $02, $02, $05, $05, $02, $06, $06, $06, $0e, $0c
    db $04, $0c, $0c, $04, $0c, $0c, $0e, $0a, $0a, $0a, $0e, $0e, $0e, $0e, $0c, $00

Image254TilesetPart1:: ; 0x7bd0
    INCBIN "gfx/bank050_Image254Part1_7bd0.2bpp"
