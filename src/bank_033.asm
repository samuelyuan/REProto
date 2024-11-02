SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

Image140TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank032_Image140Part2_4000.2bpp"

Image141Tilemap:: ; 0x4c70
    db $00, $01, $02, $03, $04, $05, $05, $06, $07, $08, $09, $0a, $0b, $0c, $00, $0d
    db $0e, $0f, $10, $03, $11, $05, $05, $12, $13, $14, $15, $16, $00, $00, $17, $18
    db $19, $1a, $1b, $03, $1c, $05, $05, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25
    db $26, $27, $28, $03, $29, $05, $05, $2a, $2b, $2c, $2d, $00, $2e, $2f, $30, $31
    db $32, $33, $34, $35, $36, $05, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40
    db $41, $42, $43, $44, $45, $05, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $19, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $05, $05, $05, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $6c, $6d, $6e, $6f, $70, $70, $71, $72, $73, $05, $74, $75, $76, $77, $78, $79
    db $7a, $7b, $7b, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87
    db $88, $05, $05, $05, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94
    db $95, $05, $05, $05, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1
    db $a2, $70, $70, $70, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $05
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $05, $05, $05
    db $bb, $bc, $05, $05, $05, $05, $05, $bd, $be, $05, $05, $05, $05, $05, $05, $05
    db $bf, $c0, $c1, $05, $05, $05, $05, $c2, $c3, $05, $05, $05, $05, $05, $05, $05
    db $c4, $c5, $c6, $05, $05, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $05, $05
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $05, $05, $d7, $d8, $d9, $da, $db, $dc, $dd
    db $de, $df, $e0, $e1, $e2, $e3, $05, $05, $05, $05, $05, $05, $05, $e4, $e5, $e6
    db $e7, $e8, $1c, $e9, $94, $ea, $45, $05, $05, $05, $05, $05, $05, $05, $05, $05

Image141PaletteIndex:: ; 0x4db0
    db $01, $05, $03, $03, $03, $01, $01, $01, $02, $00, $00, $00, $07, $01, $01, $02
    db $05, $05, $03, $03, $03, $01, $01, $02, $00, $00, $00, $07, $01, $01, $02, $00
    db $05, $05, $03, $03, $03, $01, $01, $02, $00, $00, $07, $07, $01, $02, $02, $00
    db $05, $05, $03, $03, $03, $01, $01, $02, $00, $00, $07, $01, $02, $02, $00, $00
    db $05, $05, $03, $03, $03, $01, $02, $00, $00, $07, $01, $01, $02, $00, $00, $00
    db $03, $05, $03, $03, $03, $01, $02, $00, $00, $07, $01, $01, $00, $00, $00, $00
    db $05, $05, $05, $03, $03, $03, $03, $03, $00, $05, $05, $01, $06, $06, $00, $00
    db $05, $05, $05, $01, $01, $01, $03, $03, $00, $03, $03, $03, $06, $06, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $00, $01, $02, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $02, $00, $00, $00, $00, $00
    db $03, $01, $01, $01, $02, $00, $03, $03, $00, $00, $03, $00, $00, $00, $00, $00
    db $03, $01, $01, $01, $02, $00, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $02, $02, $03, $00, $00, $02, $00, $00, $00, $00, $00
    db $05, $03, $03, $03, $03, $03, $03, $00, $03, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $05, $03, $01, $01, $01, $01, $02, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $05, $05, $01, $01, $03, $03, $03, $02, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $03, $03, $03, $03, $03, $01, $01, $01, $02, $02, $02, $02, $00, $00
    db $05, $03, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02
    db $03, $03, $43, $03, $03, $03, $23, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image141Tileset:: ; 0x4ef0
    INCBIN "gfx/bank033_Image141_4ef0.2bpp"

Image142Tilemap:: ; 0x5da0
    db $00, $01, $02, $03, $04, $01, $01, $01, $01, $05, $06, $07, $01, $08, $09, $0a
    db $0b, $0c, $0d, $0e, $0f, $01, $01, $01, $10, $11, $01, $12, $13, $14, $01, $01
    db $15, $16, $17, $18, $19, $01, $01, $1a, $1b, $09, $0a, $1c, $01, $01, $01, $01
    db $1d, $1e, $1f, $20, $21, $22, $23, $13, $14, $01, $01, $01, $01, $01, $01, $01
    db $24, $25, $26, $01, $01, $01, $27, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $01, $01, $01, $01
    db $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43
    db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
    db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63
    db $64, $65, $66, $67, $01, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72
    db $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82
    db $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $05, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1
    db $a2, $a3, $a4, $a5, $97, $01, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $97, $01, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $01, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc
    db $cd, $ce, $cf, $d0, $01, $01, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $01, $01, $01, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7
    db $e8, $e9, $ea, $0e, $01, $01, $01, $eb, $ec, $ed, $ee, $ef, $f0, $f0, $f1, $f2
    db $f3, $f4, $f5, $f6, $01, $01, $01, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $f2

Image142PaletteIndex:: ; 0x5ee0
    db $03, $01, $03, $03, $03, $01, $01, $01, $01, $01, $02, $02, $00, $00, $00, $00
    db $05, $05, $03, $03, $03, $01, $01, $01, $02, $02, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $03, $03, $01, $01, $02, $02, $00, $00, $00, $00, $00, $00, $00
    db $03, $05, $05, $05, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $01, $01, $01, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $05, $05, $01, $00, $03, $02, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $01, $01, $01, $06, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $01, $01, $01, $06, $03, $05, $06, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $05, $05, $01, $06, $03, $03, $06, $00, $00, $00, $00, $00, $00
    db $05, $05, $03, $03, $01, $01, $06, $05, $05, $06, $00, $00, $00, $00, $00, $00
    db $05, $03, $03, $03, $03, $03, $00, $06, $03, $00, $00, $00, $00, $00, $00, $00
    db $05, $03, $03, $05, $03, $02, $00, $06, $02, $02, $00, $00, $00, $00, $00, $00
    db $03, $05, $05, $05, $03, $21, $02, $00, $07, $01, $02, $00, $00, $00, $00, $00
    db $05, $01, $05, $05, $03, $01, $02, $00, $00, $01, $02, $02, $00, $00, $00, $00
    db $05, $05, $05, $03, $03, $01, $02, $00, $00, $07, $01, $02, $00, $00, $00, $00
    db $01, $05, $05, $03, $03, $01, $02, $00, $00, $04, $02, $03, $02, $00, $00, $00
    db $01, $03, $05, $03, $01, $01, $01, $00, $00, $00, $07, $02, $01, $02, $00, $00
    db $05, $03, $05, $03, $01, $01, $01, $02, $00, $00, $07, $01, $01, $02, $02, $00
    db $05, $05, $05, $43, $01, $01, $01, $02, $00, $00, $00, $07, $01, $01, $02, $00
    db $03, $05, $05, $03, $01, $01, $01, $02, $00, $00, $00, $07, $07, $01, $01, $00

Image142Tileset:: ; 0x6020
    INCBIN "gfx/bank033_Image142_6020.2bpp"

Image143Tilemap:: ; 0x7010
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $0f, $0f, $0f, $0f
    db $1c, $1d, $1e, $1f, $20, $0f, $21, $22, $23, $24, $25, $26, $27, $28, $29, $29
    db $2a, $2b, $2c, $2d, $0f, $0f, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37
    db $38, $39, $3a, $3b, $0f, $0f, $0f, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44
    db $05, $45, $46, $47, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
    db $53, $54, $55, $56, $56, $57, $58, $0f, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $61, $62, $63, $0f, $64, $65, $66, $67, $59, $5a, $68, $69, $6a, $6b, $6c, $6d
    db $05, $6e, $6f, $0f, $70, $71, $72, $73, $74, $75, $4d, $76, $77, $78, $79, $7a
    db $05, $7b, $7c, $0f, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88
    db $05, $89, $8a, $8b, $8c, $8d, $8e, $0f, $8f, $90, $91, $92, $93, $94, $95, $95
    db $96, $97, $98, $99, $99, $9a, $9b, $9c, $9d, $90, $9e, $9f, $a0, $a1, $a2, $a3
    db $a4, $a5, $a6, $a7, $a8, $0f, $0f, $9c, $a9, $90, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $0f, $b6, $a9, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $7c, $0f, $0f, $0f, $0f
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $c8, $d3, $0f, $0f, $0f, $d4
    db $ca, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $c8, $de, $df, $e0, $e1, $e2
    db $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2
    db $f3, $f4, $f5, $f6, $0f, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01
    db $02, $03, $04, $0c, $0f, $0f, $05, $06, $cf, $07, $fc, $08, $0f, $09, $0a, $0f

Image143PaletteIndex:: ; 0x7150
    db $05, $05, $03, $03, $03, $00, $03, $03, $00, $00, $00, $04, $03, $01, $01, $01
    db $05, $05, $05, $05, $03, $01, $03, $03, $03, $00, $04, $03, $01, $01, $01, $01
    db $05, $05, $05, $05, $03, $01, $01, $01, $01, $06, $04, $03, $03, $03, $03, $03
    db $03, $05, $05, $05, $01, $01, $01, $01, $01, $06, $06, $05, $05, $05, $05, $05
    db $03, $03, $03, $03, $01, $01, $01, $01, $01, $04, $06, $03, $03, $03, $03, $03
    db $03, $05, $05, $03, $03, $03, $03, $01, $01, $06, $06, $03, $03, $03, $03, $03
    db $03, $05, $05, $05, $05, $05, $05, $01, $01, $06, $06, $03, $03, $03, $03, $03
    db $01, $05, $05, $01, $01, $01, $01, $01, $01, $06, $06, $05, $05, $01, $01, $05
    db $00, $03, $03, $01, $01, $01, $01, $01, $01, $06, $06, $03, $02, $02, $01, $03
    db $00, $03, $03, $01, $01, $01, $01, $01, $01, $06, $06, $03, $03, $01, $03, $03
    db $00, $03, $05, $05, $05, $05, $05, $01, $01, $06, $06, $05, $05, $05, $05, $45
    db $03, $03, $05, $01, $01, $05, $01, $01, $01, $06, $06, $03, $03, $03, $03, $03
    db $03, $03, $03, $05, $05, $01, $01, $21, $01, $26, $06, $05, $01, $03, $03, $03
    db $03, $03, $03, $01, $05, $05, $01, $01, $21, $06, $06, $05, $05, $05, $03, $03
    db $03, $03, $03, $05, $05, $05, $03, $03, $02, $00, $04, $03, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $03, $01, $01, $02, $00, $04, $03, $01, $01, $01, $02
    db $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $04, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $01, $01, $02, $00, $00, $04, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $01, $01, $01, $02, $00, $00, $04, $03, $03, $03, $0b, $0d
    db $0b, $0b, $0b, $03, $01, $01, $09, $0a, $20, $08, $04, $0b, $01, $09, $09, $01

Image143TilesetPart1:: ; 0x7290
    INCBIN "gfx/bank033_Image143Part1_7290.2bpp"

