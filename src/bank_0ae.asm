SECTION "ROM Bank $0ae", ROMX[$4000], BANK[$ae]

Image567TilemapPart2:: ; 0x4000
    db $07, $07, $07, $07, $07, $cf, $d0, $d1, $d2, $8d, $d3, $d4, $d5, $d6, $d7, $d8
    db $07, $07, $07, $07, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $8d, $e3
    db $07, $07, $07, $07, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef

Image567PaletteIndex:: ; 0x4030
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04
    db $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $04, $05
    db $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01
    db $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00
    db $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image567Tileset:: ; 0x8170
    INCBIN "gfx/bank0ad_Image567_8170.2bpp"

Image568Tilemap:: ; 0x5070
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $08, $09, $0a, $0b, $0c, $0d, $00
    db $00, $0e, $0f, $10, $11, $00, $12, $13, $08, $08, $14, $15, $16, $17, $18, $00
    db $00, $00, $19, $1a, $00, $00, $00, $1b, $1c, $1d, $1e, $1f, $20, $00, $00, $00
    db $00, $00, $21, $22, $00, $00, $23, $24, $25, $26, $08, $27, $28, $00, $00, $00
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $00, $00, $00
    db $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $00, $00, $00
    db $43, $44, $45, $46, $47, $00, $48, $49, $08, $4a, $4b, $4c, $4d, $00, $00, $4e
    db $4f, $50, $51, $00, $52, $53, $54, $55, $08, $56, $57, $58, $59, $00, $5a, $5b
    db $5c, $5d, $5e, $5f, $60, $61, $61, $62, $63, $64, $65, $66, $67, $68, $69, $00
    db $08, $6a, $6b, $00, $6c, $6d, $6e, $08, $08, $6f, $70, $71, $72, $73, $00, $00
    db $74, $75, $76, $77, $78, $79, $7a, $74, $7b, $7c, $7d, $7e, $7f, $80, $00, $00
    db $08, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $00, $00
    db $08, $8e, $8f, $90, $91, $92, $93, $08, $08, $94, $95, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa
    db $ab, $08, $ac, $08, $08, $08, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6
    db $b7, $b8, $08, $08, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4
    db $c5, $08, $08, $c6, $c7, $08, $08, $c8, $c9, $be, $be, $be, $be, $ca, $cb, $cc
    db $08, $08, $08, $cd, $ce, $cf, $08, $d0, $d1, $be, $be, $be, $be, $be, $be, $d2
    db $08, $08, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $be, $be, $be, $be, $be, $be
    db $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $be, $be, $e4, $be, $be, $be, $be

Image568PaletteIndex:: ; 0x51b0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $07, $00, $00, $00, $20, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $07, $00, $05, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $05, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image568Tileset:: ; 0x52f0
    INCBIN "gfx/bank0ae_Image568_52f0.2bpp"

Image569Tilemap:: ; 0x6140
    db $00, $00, $01, $00, $00, $00, $02, $03, $04, $05, $06, $06, $06, $06, $07, $08
    db $00, $00, $09, $0a, $00, $09, $0b, $0c, $0d, $0e, $06, $06, $06, $06, $0f, $10
    db $11, $12, $13, $14, $15, $16, $17, $18, $19, $06, $06, $06, $06, $1a, $1b, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $06, $06, $06, $06, $06, $25, $26, $27
    db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37
    db $38, $39, $3a, $3b, $06, $06, $06, $3c, $3d, $3e, $3f, $40, $00, $41, $42, $43
    db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $0a, $00, $4f, $50, $51
    db $52, $53, $54, $55, $06, $06, $56, $57, $58, $59, $5a, $5b, $00, $5c, $5d, $5e
    db $5f, $60, $61, $06, $06, $06, $62, $63, $64, $65, $66, $67, $00, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $06, $74, $75, $76, $77, $78, $79
    db $7a, $7b, $06, $06, $7c, $7d, $7e, $7f, $80, $06, $81, $82, $83, $84, $85, $86
    db $87, $88, $89, $8a, $1a, $8b, $06, $8c, $8d, $8e, $8f, $90, $91, $92, $09, $93
    db $06, $94, $06, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $00, $00
    db $a0, $06, $a1, $06, $a2, $a3, $a4, $06, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $00
    db $ac, $06, $06, $06, $06, $ad, $1a, $06, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5
    db $b6, $b7, $06, $06, $06, $06, $b8, $b9, $1a, $ba, $bb, $bc, $bd, $be, $1a, $06
    db $bf, $06, $06, $06, $06, $06, $96, $c0, $c1, $c2, $c3, $36, $c4, $c5, $c6, $1a
    db $c7, $c8, $06, $06, $06, $c9, $ca, $a1, $cb, $cc, $cd, $ce, $36, $cf, $d0, $d1
    db $d2, $d3, $06, $06, $d4, $06, $06, $06, $d5, $d6, $06, $d7, $d8, $36, $d9, $da
    db $db, $06, $06, $06, $06, $06, $06, $06, $06, $dc, $06, $dd, $d8, $36, $de, $df

Image569PaletteIndex:: ; 0x6280
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00
    db $04, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00
    db $04, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $01
    db $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $40, $00
    db $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $40
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $20, $00, $00, $00

Image569Tileset:: ; 0x63c0
    INCBIN "gfx/bank0ae_Image569_63c0.2bpp"

Image570Tilemap:: ; 0x71c0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $09, $09, $09, $0a, $09, $09
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $09, $14, $09, $09, $15, $09, $09
    db $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $09, $09, $21, $09, $09
    db $22, $23, $24, $25, $0b, $0b, $0b, $0b, $26, $09, $27, $09, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
    db $3c, $3d, $3e, $3f, $40, $0b, $41, $42, $43, $09, $44, $09, $45, $09, $09, $46
    db $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $09, $4f, $50, $09, $09, $09, $51, $52
    db $53, $54, $55, $56, $57, $58, $09, $09, $09, $09, $59, $09, $09, $09, $5a, $5b
    db $5c, $09, $09, $5d, $5e, $5f, $09, $09, $60, $09, $09, $09, $09, $61, $62, $63
    db $09, $09, $09, $64, $65, $65, $65, $65, $66, $65, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $6c, $7b
    db $09, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $6c
    db $8a, $8b, $8c, $8d, $09, $09, $09, $8e, $8f, $0a, $90, $91, $92, $93, $94, $95
    db $96, $09, $97, $09, $09, $09, $09, $09, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f
    db $a0, $a1, $a2, $09, $09, $09, $09, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $ac, $ad, $ae, $af, $b0, $09, $09, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9
    db $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9
    db $09, $09, $09, $09, $ca, $97, $09, $09, $cb, $09, $09, $60, $cc, $cd, $ce, $cf
    db $09, $09, $09, $09, $d0, $d1, $09, $d2, $d3, $09, $09, $09, $d4, $d5, $d6, $d7
    db $09, $09, $09, $09, $09, $d8, $d9, $da, $db, $09, $09, $09, $09, $09, $dc, $dd

Image570PaletteIndex:: ; 0x7300
    db $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $04, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $05, $04, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Image570TilesetPart1:: ; 0x7440
    INCBIN "gfx/bank0ae_Image570Part1_7440.2bpp"

