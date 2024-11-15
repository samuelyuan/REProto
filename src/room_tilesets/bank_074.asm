SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

Image360TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank073_Image360Part2_4000.2bpp"

Image361Tilemap:: ; 0x4820
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

Image361PaletteIndex:: ; 0x4960
    db $01, $01, $01, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $0a, $0a, $0a, $0a, $09, $0a, $0a, $0a, $0a, $0a, $0a, $0a

Image361Tileset:: ; 0x4aa0
    INCBIN "gfx/bank074_Image361_4aa0.2bpp"

Image362Tilemap:: ; 0x5ea0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $13, $13, $13, $13, $13, $13, $13, $13, $13, $20, $21, $22, $23, $24, $25, $26
    db $13, $13, $13, $13, $13, $13, $13, $13, $13, $13, $27, $28, $29, $2a, $2b, $2c
    db $13, $13, $13, $13, $13, $13, $2d, $2e, $2f, $2f, $30, $31, $32, $33, $34, $35
    db $13, $13, $13, $13, $13, $13, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $13, $13, $13, $13, $13, $13, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49
    db $13, $13, $13, $13, $13, $13, $13, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
    db $13, $13, $13, $13, $13, $13, $13, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $13, $13, $13, $13, $13, $13, $13, $5c, $5d, $13, $13, $5e, $5f, $60, $61, $62
    db $13, $13, $13, $13, $13, $13, $63, $64, $65, $13, $13, $66, $67, $68, $69, $6a
    db $13, $13, $13, $13, $13, $6b, $6c, $6d, $6e, $6f, $13, $70, $71, $72, $73, $74
    db $13, $13, $13, $13, $13, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $13, $13, $13, $13, $13, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a
    db $13, $13, $13, $13, $13, $13, $8b, $8c, $8d, $13, $13, $8e, $8f, $90, $91, $92
    db $13, $13, $13, $13, $13, $13, $13, $93, $94, $13, $13, $95, $96, $97, $98, $99
    db $13, $13, $13, $13, $13, $13, $13, $9a, $13, $13, $13, $9b, $9c, $9d, $9e, $9f
    db $13, $13, $13, $13, $13, $13, $13, $13, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7
    db $13, $13, $13, $13, $13, $13, $13, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0
    db $13, $13, $13, $13, $13, $13, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba

Image362PaletteIndex:: ; 0x5fe0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $06, $06, $06, $06, $06, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $06, $06, $06, $06, $06, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $06, $06, $06, $06, $06, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image362Tileset:: ; 0x6120
    INCBIN "gfx/bank074_Image362_6120.2bpp"

Image363Tilemap:: ; 0x6cd0
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

Image363PaletteIndex:: ; 0x6e10
    db $01, $00, $00, $00, $00, $03, $01, $01, $01, $01, $01, $04, $01, $04, $04, $04
    db $01, $03, $00, $00, $03, $02, $02, $01, $01, $03, $03, $04, $04, $04, $04, $04
    db $01, $03, $00, $03, $01, $02, $02, $02, $02, $02, $04, $04, $04, $04, $01, $04
    db $04, $03, $00, $03, $01, $02, $02, $02, $02, $01, $04, $04, $04, $04, $04, $04
    db $04, $04, $00, $00, $01, $02, $02, $02, $02, $01, $04, $04, $04, $04, $04, $04
    db $03, $04, $03, $03, $04, $01, $01, $04, $04, $04, $04, $03, $04, $04, $04, $03
    db $04, $03, $03, $03, $03, $04, $04, $04, $03, $03, $04, $03, $04, $00, $03, $03
    db $03, $04, $04, $03, $03, $00, $03, $03, $04, $04, $04, $03, $03, $03, $03, $03
    db $00, $04, $01, $03, $03, $03, $03, $03, $04, $04, $03, $03, $00, $00, $00, $03
    db $00, $03, $01, $03, $03, $03, $03, $03, $04, $03, $03, $00, $00, $03, $00, $00
    db $00, $04, $01, $03, $04, $01, $01, $03, $03, $00, $03, $03, $00, $03, $03, $00
    db $00, $01, $01, $03, $03, $03, $01, $03, $00, $00, $03, $03, $00, $00, $03, $03
    db $00, $04, $04, $03, $03, $01, $01, $03, $03, $00, $00, $03, $00, $00, $03, $03
    db $03, $03, $04, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04
    db $03, $03, $04, $00, $03, $03, $01, $03, $03, $03, $03, $03, $03, $03, $04, $04
    db $03, $03, $04, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $04
    db $0b, $0c, $0b, $0b, $0c, $0e, $0d, $0d, $0d, $09, $0c, $09, $0b, $0b, $0c, $0c
    db $08, $0b, $0b, $0b, $0c, $0a, $0a, $0a, $0a, $0e, $0e, $0c, $0c, $08, $0c, $0c
    db $08, $08, $0b, $08, $0b, $0d, $0e, $0d, $0c, $0c, $0c, $09, $0c, $0c, $0c, $0c
    db $08, $08, $08, $08, $08, $0b, $0c, $0b, $0b, $0b, $0c, $09, $0c, $0b, $09, $0c

Image363TilesetPart1:: ; 0x6f50
    INCBIN "gfx/bank074_Image363Part1_6f50.2bpp"
