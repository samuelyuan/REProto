SECTION "ROM Bank $085", ROMX[$4000], BANK[$85]

Image416Tileset:: ; 0x8000
    INCBIN "gfx/bank084_Image416_8000.2bpp"

Image417Tilemap:: ; 0x5400
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f
    db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf
    db $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df
    db $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $9d, $ee
    db $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe
    db $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $9d, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $30, $31, $32, $33, $9d, $9d, $34, $35, $36, $37, $38, $39, $3a, $3b

Image417PaletteIndex:: ; 0x5540
    db $05, $05, $05, $05, $05, $05, $05, $02, $05, $05, $05, $05, $05, $05, $05, $00
    db $05, $05, $05, $05, $05, $05, $05, $02, $05, $05, $05, $05, $05, $05, $05, $02
    db $05, $05, $05, $05, $05, $05, $05, $02, $05, $05, $05, $05, $05, $05, $02, $00
    db $05, $05, $05, $05, $05, $05, $05, $02, $05, $05, $05, $05, $05, $05, $02, $02
    db $05, $05, $05, $05, $05, $05, $05, $02, $05, $05, $05, $05, $05, $02, $02, $02
    db $07, $07, $07, $05, $05, $05, $05, $02, $05, $05, $05, $05, $05, $02, $02, $02
    db $07, $07, $07, $07, $05, $05, $05, $02, $05, $05, $05, $05, $02, $02, $02, $02
    db $01, $06, $01, $01, $01, $01, $07, $00, $05, $05, $05, $05, $02, $02, $02, $00
    db $07, $01, $01, $01, $01, $01, $01, $05, $05, $05, $05, $02, $02, $02, $00, $02
    db $02, $07, $07, $07, $07, $01, $07, $05, $05, $05, $05, $02, $02, $00, $02, $02
    db $02, $02, $02, $05, $07, $06, $05, $05, $05, $02, $02, $02, $00, $00, $02, $02
    db $00, $00, $00, $00, $01, $01, $01, $07, $05, $02, $02, $00, $00, $02, $02, $02
    db $02, $00, $00, $00, $07, $01, $01, $07, $05, $02, $00, $00, $02, $02, $02, $02
    db $00, $00, $00, $00, $07, $01, $01, $07, $05, $02, $00, $00, $02, $02, $02, $02
    db $00, $00, $00, $00, $07, $07, $03, $05, $02, $02, $00, $00, $00, $00, $00, $02
    db $05, $07, $01, $07, $05, $05, $07, $05, $05, $07, $04, $00, $02, $02, $02, $02
    db $05, $09, $09, $09, $0d, $0d, $0d, $0a, $0d, $0d, $0d, $0f, $0f, $0a, $0a, $0a
    db $0f, $09, $0f, $0f, $0f, $0d, $0d, $0a, $0d, $0d, $0d, $0d, $0f, $0f, $0a, $0a
    db $0f, $0f, $0f, $0f, $0d, $0d, $0d, $00, $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0f
    db $0f, $0f, $0f, $0d, $0d, $0d, $00, $00, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0f

Image417Tileset:: ; 0x5680
    INCBIN "gfx/bank085_Image417_5680.2bpp"

Image418Tilemap:: ; 0x6a40
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f
    db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf
    db $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df
    db $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef
    db $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f

Image418PaletteIndex:: ; 0x6b80
    db $06, $06, $06, $06, $06, $06, $06, $01, $04, $00, $07, $07, $05, $05, $05, $02
    db $06, $06, $06, $06, $06, $06, $01, $07, $00, $02, $07, $05, $05, $05, $05, $00
    db $06, $01, $01, $01, $01, $01, $07, $07, $02, $02, $05, $05, $05, $05, $05, $00
    db $06, $06, $01, $01, $01, $01, $01, $07, $00, $02, $05, $05, $05, $05, $02, $00
    db $06, $01, $01, $01, $01, $01, $07, $01, $05, $00, $05, $05, $05, $05, $00, $00
    db $07, $01, $01, $01, $01, $07, $07, $07, $05, $05, $05, $05, $05, $05, $00, $00
    db $07, $07, $07, $07, $01, $01, $01, $01, $07, $05, $05, $05, $05, $02, $00, $00
    db $00, $02, $02, $07, $05, $07, $07, $07, $07, $05, $05, $05, $02, $00, $00, $00
    db $00, $00, $02, $05, $05, $05, $05, $05, $05, $05, $05, $05, $02, $00, $00, $00
    db $00, $00, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $02, $00, $00, $00
    db $00, $00, $05, $07, $07, $07, $07, $07, $07, $05, $05, $05, $02, $00, $00, $00
    db $00, $02, $07, $01, $07, $07, $07, $01, $05, $05, $05, $05, $00, $00, $00, $00
    db $00, $05, $01, $01, $05, $02, $02, $02, $07, $07, $07, $07, $02, $00, $00, $00
    db $00, $07, $01, $06, $02, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00
    db $00, $07, $06, $06, $02, $00, $00, $00, $00, $02, $00, $00, $02, $00, $00, $00
    db $05, $07, $06, $06, $00, $00, $00, $00, $00, $02, $05, $05, $02, $00, $00, $00
    db $09, $0e, $09, $09, $09, $09, $09, $09, $0f, $0d, $0d, $0d, $0d, $0d, $0a, $08
    db $09, $09, $09, $09, $09, $09, $09, $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $08
    db $0f, $0f, $0f, $0f, $09, $0f, $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $08
    db $0f, $0f, $0f, $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $08

Image418TilesetPart1:: ; 0x6cc0
    INCBIN "gfx/bank085_Image418Part1_6cc0.2bpp"
