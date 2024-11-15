SECTION "ROM Bank $083", ROMX[$4000], BANK[$83]

Image410TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank082_Image410Part2_4000.2bpp"

Image411Tilemap:: ; 0x51a0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $56, $46, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d
    db $7e, $7f, $80, $46, $81, $46, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b
    db $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b
    db $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $95, $95, $95, $a4, $a5, $a6, $a7, $a8
    db $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $95, $95, $b1, $b2, $46, $b3, $b4, $b5
    db $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $95, $bf, $c0, $46, $c1, $c2, $c3
    db $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $46, $46, $cf, $d0, $d1
    db $d2, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $46, $dc, $dd, $de, $df
    db $d2, $d2, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed
    db $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd
    db $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d

Image411PaletteIndex:: ; 0x52e0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $01, $01, $41, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $02, $04, $06, $06, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $02, $04, $04, $04, $04, $06, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $02, $06, $04, $04, $04, $04, $02, $02, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $06, $04, $04, $04, $04, $02, $02, $01, $01
    db $01, $01, $04, $04, $02, $01, $01, $01, $06, $04, $04, $04, $02, $02, $01, $01
    db $01, $01, $01, $01, $02, $01, $01, $01, $02, $04, $04, $02, $02, $02, $01, $01
    db $01, $01, $01, $01, $02, $01, $01, $00, $00, $02, $02, $02, $02, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $02, $02, $02, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $00, $00, $00, $01, $01, $02, $02, $01, $01, $01
    db $01, $01, $09, $09, $09, $09, $08, $08, $08, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $08, $08, $08, $08, $09, $09, $09, $09, $09, $09, $09, $09
    db $08, $09, $09, $09, $08, $08, $08, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image411Tileset:: ; 0x5420
    INCBIN "gfx/bank083_Image411_5420.2bpp"

Image412Tilemap:: ; 0x6700
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $08, $08
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $08, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $08, $29, $08, $2a
    db $08, $08, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $08, $35, $36, $37
    db $38, $39, $3a, $3b, $3c, $3d, $08, $3e, $3f, $40, $41, $42, $43, $08, $44, $45
    db $46, $47, $48, $49, $4a, $4b, $08, $4c, $4d, $4e, $4e, $4f, $50, $08, $51, $52
    db $08, $53, $08, $54, $55, $56, $57, $58, $59, $4e, $4e, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $4e, $4e, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $08, $74, $4e, $4e, $75, $76, $08, $77, $78
    db $79, $7a, $7b, $7c, $7d, $7e, $7f, $08, $80, $81, $4e, $82, $83, $08, $84, $85
    db $86, $87, $87, $88, $89, $8a, $8b, $08, $8c, $8d, $4e, $0f, $8e, $08, $8f, $90
    db $91, $87, $87, $87, $92, $93, $94, $08, $95, $96, $97, $98, $99, $08, $9a, $9b
    db $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $08, $a4, $4e, $a5, $a6, $08, $a7, $a8
    db $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $08, $37, $b6
    db $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $08, $c4, $4e
    db $c5, $c6, $c7, $c8, $c9, $ca, $08, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3
    db $d4, $d5, $d6, $08, $08, $08, $08, $08, $d7, $d8, $d9, $da, $db, $0f, $dc, $dd
    db $de, $df, $e0, $e1, $e2, $e3, $e4, $08, $08, $e5, $e6, $e7, $e8, $e9, $ea, $eb
    db $ec, $ed, $ee, $ef, $f0, $61, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa
    db $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a

Image412PaletteIndex:: ; 0x6840
    db $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $00, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $00, $01
    db $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $00, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $02, $06, $04, $02, $02, $00, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $04, $04, $04, $02, $00, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $06, $04, $04, $04, $04, $02, $02, $01
    db $00, $00, $00, $01, $01, $01, $01, $02, $06, $04, $04, $04, $04, $02, $02, $01
    db $00, $00, $00, $00, $01, $01, $02, $02, $04, $04, $04, $04, $04, $06, $02, $01
    db $00, $01, $01, $00, $00, $01, $02, $02, $04, $04, $04, $04, $04, $02, $02, $01
    db $01, $01, $01, $01, $01, $01, $02, $02, $04, $04, $04, $04, $04, $02, $02, $01
    db $01, $01, $01, $01, $01, $01, $02, $02, $04, $04, $04, $04, $04, $02, $02, $01
    db $01, $01, $01, $01, $01, $00, $02, $02, $04, $04, $04, $04, $04, $02, $02, $01
    db $01, $01, $01, $01, $01, $01, $02, $02, $02, $04, $04, $04, $04, $02, $02, $01
    db $01, $01, $01, $00, $01, $01, $01, $02, $02, $06, $04, $04, $04, $02, $42, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $06, $02, $02, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $41, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $01
    db $01, $01, $01, $01, $01, $41, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01
    db $01, $01, $01, $01, $01, $09, $09, $09, $09, $09, $09, $09, $09, $08, $08, $08

Image412Tileset:: ; 0x6980
    INCBIN "gfx/bank083_Image412_6980.2bpp"

Image413Tilemap:: ; 0x7a30
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $5b, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $5b, $9a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd
    db $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd
    db $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed
    db $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd
    db $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d

Image413PaletteIndex:: ; 0x7b70
    db $05, $07, $07, $01, $01, $07, $07, $05, $05, $05, $05, $05, $05, $05, $05, $05
    db $05, $01, $07, $06, $06, $07, $07, $05, $05, $05, $05, $05, $05, $05, $05, $05
    db $06, $01, $07, $01, $01, $07, $07, $07, $07, $07, $05, $07, $07, $07, $07, $01
    db $06, $06, $06, $06, $06, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $01, $01, $07, $07, $07, $07, $07, $07, $05, $07, $07, $07, $07, $07, $07, $07
    db $01, $01, $01, $01, $07, $07, $07, $00, $05, $05, $05, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $07, $07, $07, $02, $07, $05, $02, $00, $00, $00, $00, $00
    db $01, $01, $01, $07, $07, $07, $07, $00, $05, $05, $02, $00, $00, $00, $00, $00
    db $07, $07, $07, $07, $05, $07, $05, $05, $05, $05, $02, $00, $00, $00, $00, $00
    db $07, $07, $05, $05, $05, $05, $05, $05, $05, $02, $02, $00, $00, $00, $00, $00
    db $05, $05, $07, $07, $07, $07, $07, $07, $07, $07, $02, $02, $00, $00, $00, $00
    db $07, $07, $01, $00, $00, $00, $00, $00, $00, $00, $07, $02, $02, $00, $00, $00
    db $01, $01, $04, $04, $04, $04, $04, $04, $04, $04, $03, $07, $07, $02, $02, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $02, $04, $05, $07, $07, $02, $02
    db $01, $01, $06, $01, $01, $01, $01, $01, $07, $07, $04, $04, $07, $07, $07, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $07, $01, $04, $04, $05, $07, $07
    db $06, $06, $0e, $09, $09, $0f, $09, $09, $0f, $0f, $0f, $0d, $0c, $0c, $0d, $0d
    db $0e, $0e, $0e, $0e, $09, $09, $09, $09, $0f, $0f, $0f, $0f, $0c, $0c, $0d, $0d
    db $0e, $0e, $0e, $0e, $0e, $09, $09, $0f, $0f, $0f, $0f, $0f, $0f, $0d, $0d, $0d
    db $0e, $0e, $0e, $0e, $09, $0f, $0f, $0f, $0f, $0d, $0f, $0f, $0f, $0f, $0d, $0a

Image413TilesetPart1:: ; 0x7cb0
    INCBIN "gfx/bank083_Image413Part1_7cb0.2bpp"
