SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

Image27TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank016_Image27Part2_4000.2bpp"

Image28Tilemap:: ; 0x40a0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $46, $8c, $8d
    db $8e, $8f, $90, $91, $92, $93, $46, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $46, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $ac, $ad, $ae, $af, $b0, $b1, $46, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $46, $b9
    db $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9
    db $ca, $cb, $cc, $cd, $ce, $cf, $d0, $46, $d1, $d2, $d3, $d4, $d5, $d6, $46, $d7
    db $d8, $d9, $da, $db, $dc, $dd, $46, $46, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5
    db $e6, $e7, $e8, $e9, $ea, $eb, $46, $46, $46, $ec, $ed, $ee, $ef, $f0, $f1, $f2
    db $f3, $f4, $f5, $f6, $46, $46, $46, $46, $46, $f7, $f8, $f9, $fa, $fb, $fc, $fd
    db $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c

Image28PaletteIndex:: ; 0x41e0
    db $03, $03, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01
    db $01, $03, $01, $01, $01, $03, $03, $03, $03, $03, $03, $03, $03, $03, $01, $01
    db $03, $03, $01, $01, $01, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $01
    db $03, $03, $01, $01, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $05, $02, $02, $00, $00, $03, $03, $05, $02, $02, $02, $02, $03
    db $03, $03, $05, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $03, $05, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $05, $02, $02, $02, $02, $02, $03, $02, $06, $06, $02, $02, $02
    db $01, $01, $03, $03, $02, $02, $02, $02, $05, $03, $05, $05, $05, $00, $03, $03
    db $01, $01, $03, $03, $03, $03, $00, $03, $03, $01, $03, $03, $03, $03, $03, $03
    db $01, $01, $03, $03, $03, $03, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $01, $01, $03, $03, $03, $03, $00, $03, $03, $03, $03, $03, $03, $03, $01, $03
    db $01, $01, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $01, $01, $01, $01, $01, $03, $03, $00, $03, $03, $03, $03, $03, $03, $00, $03
    db $03, $03, $01, $01, $03, $03, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $01, $03
    db $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $09, $09, $09, $09, $09, $09, $0b, $0b, $09, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $09, $09, $09, $09, $09, $0b, $0b, $0b, $09, $09, $09, $09, $0b, $0b

Image28Tileset:: ; 0x4320
    INCBIN "gfx/bank017_Image28_4320.2bpp"

Image29Tilemap:: ; 0x55f0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $00, $00, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $00, $00, $00, $00, $1e, $1f, $20, $21, $22, $23, $00, $24, $25, $26, $27, $28
    db $00, $00, $00, $29, $2a, $2b, $2c, $2d, $2e, $2f, $00, $30, $31, $32, $33, $34
    db $35, $36, $00, $00, $37, $38, $39, $3a, $3b, $3c, $00, $3d, $3e, $3f, $40, $41
    db $00, $42, $43, $00, $44, $45, $46, $00, $00, $00, $00, $47, $48, $49, $4a, $4b
    db $00, $4c, $4d, $00, $4e, $4f, $50, $51, $52, $53, $00, $54, $55, $56, $57, $58
    db $59, $00, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67
    db $68, $00, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76
    db $77, $00, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85
    db $86, $00, $87, $88, $89, $8a, $8b, $00, $8c, $8d, $8e, $8f, $90, $91, $92, $93
    db $94, $95, $96, $00, $00, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1
    db $a2, $a3, $00, $00, $00, $a4, $a5, $a6, $a7, $00, $00, $a8, $a9, $aa, $ab, $ac
    db $ad, $00, $00, $ae, $af, $b0, $b1, $b2, $b3, $b4, $0b, $b5, $b6, $b7, $b8, $b9
    db $00, $00, $00, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6
    db $00, $00, $00, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3
    db $d4, $43, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2
    db $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $00, $ee, $ef, $f0, $f1
    db $00, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $45, $fa, $fb, $fc, $fd, $fe, $ff
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $45, $09, $0a, $0b, $0c, $0d, $0e

Image29PaletteIndex:: ; 0x5730
    db $00, $03, $03, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03
    db $00, $00, $03, $03, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $01
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $00, $03, $03, $03, $03, $03
    db $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $00, $03, $03, $03, $03, $01
    db $03, $03, $00, $00, $03, $01, $04, $04, $03, $03, $00, $03, $03, $03, $03, $03
    db $00, $03, $03, $00, $03, $01, $04, $00, $00, $00, $00, $03, $03, $03, $03, $01
    db $00, $03, $03, $00, $03, $03, $04, $04, $03, $03, $00, $03, $03, $03, $03, $03
    db $03, $00, $03, $02, $05, $05, $01, $01, $03, $03, $03, $03, $05, $03, $03, $03
    db $03, $00, $05, $02, $02, $05, $05, $03, $06, $06, $02, $02, $02, $05, $03, $03
    db $03, $00, $05, $02, $02, $02, $02, $02, $06, $06, $02, $02, $02, $05, $03, $03
    db $03, $00, $03, $02, $02, $05, $05, $00, $06, $06, $02, $02, $02, $03, $03, $03
    db $03, $03, $03, $00, $00, $03, $03, $03, $02, $02, $02, $05, $03, $03, $03, $03
    db $03, $03, $00, $00, $00, $03, $03, $03, $03, $00, $00, $03, $03, $03, $03, $03
    db $03, $00, $00, $03, $03, $01, $01, $03, $03, $03, $43, $03, $03, $03, $03, $03
    db $00, $00, $00, $03, $01, $01, $01, $01, $03, $01, $03, $03, $03, $03, $03, $03
    db $00, $00, $00, $03, $01, $01, $01, $03, $03, $01, $03, $03, $03, $03, $03, $03
    db $03, $43, $03, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $01
    db $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $03, $03, $03, $03
    db $00, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03
    db $0b, $0b, $09, $09, $09, $0b, $0b, $0b, $09, $01, $09, $0b, $0b, $0b, $0b, $0b

Image29Tileset:: ; 0x5870
    INCBIN "gfx/bank017_Image29_5870.2bpp"

Image30Tilemap:: ; 0x6960
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $35, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d
    db $5e, $5f, $60, $35, $35, $35, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a
    db $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa
    db $ab, $ac, $ad, $ae, $af, $35, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9
    db $ba, $bb, $bc, $bd, $35, $35, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7
    db $c8, $c9, $ca, $35, $35, $35, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4
    db $d5, $d6, $d7, $d8, $35, $35, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2
    db $35, $e3, $e4, $35, $35, $35, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee
    db $ef, $f0, $35, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd
    db $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d

Image30PaletteIndex:: ; 0x6aa0
    db $03, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $03, $03, $03, $03, $03, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03
    db $01, $01, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $04, $04, $03, $03, $00, $00, $03, $03, $03, $03, $03, $01, $03, $01, $03
    db $03, $00, $00, $04, $04, $03, $00, $03, $03, $03, $03, $03, $03, $03, $01, $03
    db $03, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $00, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $01, $03, $03, $03
    db $01, $01, $01, $01, $04, $03, $03, $03, $03, $03, $01, $03, $03, $03, $03, $03
    db $01, $03, $01, $03, $01, $03, $03, $03, $03, $01, $03, $03, $03, $03, $03, $03
    db $01, $01, $03, $01, $01, $03, $03, $03, $03, $01, $03, $03, $01, $03, $03, $03
    db $01, $01, $04, $04, $03, $00, $03, $03, $03, $03, $03, $03, $05, $06, $02, $02
    db $03, $04, $00, $00, $00, $00, $03, $03, $03, $03, $05, $06, $06, $06, $02, $02
    db $03, $00, $00, $00, $00, $00, $03, $03, $03, $03, $06, $06, $02, $02, $02, $02
    db $03, $04, $04, $03, $00, $00, $03, $03, $03, $03, $06, $06, $02, $02, $02, $02
    db $01, $03, $03, $00, $00, $00, $03, $03, $03, $05, $02, $02, $02, $02, $02, $05
    db $03, $03, $00, $03, $03, $03, $03, $03, $03, $05, $02, $02, $02, $02, $05, $03
    db $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0d, $0e, $0a, $0e, $0b, $09
    db $0b, $09, $09, $09, $0b, $0b, $09, $0b, $0b, $0b, $0b, $0b, $0a, $0d, $0b, $09
    db $09, $09, $09, $09, $09, $09, $09, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $09, $0b

Image30Tileset:: ; 0x6be0
    INCBIN "gfx/bank017_Image30_6be0.2bpp"

Image31Tilemap:: ; 0x7ec0
    db $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0a, $0b, $0c, $0d, $0e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f, $00, $10, $11
    db $12, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $13, $14, $15, $16
    db $17, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $19, $1a, $1b, $1c
    db $1d, $1e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $22, $23
    db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33
    db $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $00
    db $43, $44, $45, $46, $47, $48, $49, $4a, $00, $4b, $4c, $4d, $4e, $4f, $50, $00
    db $43, $43, $51, $52, $53, $54, $55, $00, $00, $56, $57, $58, $59, $5a, $00, $00
    db $43, $43, $43, $5b, $5c, $00, $00, $4b, $5d, $5e, $23, $5f, $60, $61, $62, $00
    db $43, $43, $63, $23, $64, $65, $66, $67, $68, $23, $23, $5f, $69, $00, $00, $00
    db $43, $43, $6a, $23, $6b, $6c, $6d, $6e, $23, $23, $23, $5f, $6f, $70, $71, $00
    db $43, $43, $72, $23, $73, $74, $23, $23, $23, $23, $23, $5f, $75, $76, $00, $00
    db $43, $43, $77, $78, $79, $7a, $7b, $7c, $23, $23, $23, $7d, $7e, $7f, $80, $00
    db $43, $43, $81, $82, $83, $00, $84, $85, $86, $23, $23, $87, $88, $00, $00, $00
    db $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $23, $23, $92, $93, $00, $94, $95
    db $96, $97, $98, $99, $00, $84, $9a, $9b, $23, $23, $23, $9c, $9d, $9e, $9f, $a0
    db $a1, $a2, $a3, $a4, $a5, $67, $a6, $a7, $23, $23, $23, $23, $23, $23, $a8, $a9
    db $23, $aa, $ab, $6d, $ac, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23

