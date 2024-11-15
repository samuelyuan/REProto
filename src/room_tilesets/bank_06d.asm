SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

Image340TilemapPart2:: ; 0x4000
    db $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $05, $05, $05, $05
    db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $05, $05, $05, $05, $05
    db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $05, $44, $45, $05, $05, $05, $46, $47
    db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $05, $53, $54, $55, $56
    db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $05, $05, $60, $61, $62, $63, $64
    db $65, $66, $67, $68, $69, $6a, $05, $6b, $6c, $05, $6d, $6e, $6f, $70, $05, $71
    db $72, $73, $74, $75, $76, $77, $78, $79, $05, $05, $7a, $7b, $7c, $05, $05, $7d
    db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $05, $05, $87, $88, $05, $05, $89
    db $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $05, $05, $44
    db $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $05, $05, $05
    db $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $a0, $af, $05, $05, $05
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $05, $05, $05
    db $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $05, $05, $05
    db $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $05
    db $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8

Image340PaletteIndex:: ; 0x4100
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $03, $02, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $03, $00, $00, $00, $00, $02, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $04, $00, $00, $00, $00
    db $01, $01, $01, $05, $05, $05, $05, $05, $05, $05, $00, $00, $00, $00, $00, $00
    db $02, $01, $01, $05, $04, $04, $04, $04, $00, $04, $04, $00, $00, $00, $04, $04
    db $00, $02, $01, $05, $05, $05, $05, $01, $01, $04, $04, $00, $04, $04, $04, $04
    db $02, $07, $07, $01, $01, $01, $01, $01, $01, $00, $00, $04, $04, $04, $04, $04
    db $02, $07, $07, $07, $07, $07, $00, $01, $01, $00, $04, $04, $04, $04, $00, $04
    db $02, $07, $07, $07, $07, $07, $01, $01, $00, $00, $04, $04, $04, $00, $00, $04
    db $00, $07, $07, $07, $07, $07, $07, $01, $01, $00, $00, $04, $04, $00, $00, $04
    db $06, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $04, $04, $00, $00, $24
    db $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00
    db $06, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $24, $04, $00, $00, $00
    db $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $07, $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $00
    db $07, $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01

Image340Tileset:: ; 0x8240
    INCBIN "gfx/bank06c_Image340_8240.2bpp"

Image341Tilemap:: ; 0x51d0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $2d, $2d, $3c
    db $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
    db $4d, $4e, $4f, $50, $51, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $5f, $51, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $51, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79
    db $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $51, $86, $51, $51
    db $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96
    db $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $51
    db $a6, $a7, $a8, $a9, $51, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4
    db $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4
    db $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4
    db $d5, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3
    db $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3
    db $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03
    db $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $51, $12
    db $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $51, $51
    db $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $18, $51

Image341PaletteIndex:: ; 0x5310
    db $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01
    db $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $03
    db $07, $07, $07, $07, $00, $00, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $07, $07, $07, $07, $00, $01, $01, $01, $01, $01, $03, $01, $03, $03, $03, $00
    db $01, $01, $01, $01, $00, $01, $01, $01, $01, $03, $03, $01, $02, $01, $01, $01
    db $01, $01, $01, $01, $05, $05, $01, $01, $01, $03, $03, $01, $00, $01, $00, $00
    db $05, $05, $05, $05, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $04, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $04, $04, $04, $00, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $03, $05, $05, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $03, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $09, $09
    db $0e, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09, $09, $09, $0b, $09, $00, $09
    db $0f, $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09, $09, $09, $09, $00, $00
    db $0f, $0f, $0f, $0f, $0f, $0f, $09, $0f, $0f, $0f, $0f, $09, $09, $09, $29, $00

Image341Tileset:: ; 0x5450
    INCBIN "gfx/bank06d_Image341_5450.2bpp"

Image342Tilemap:: ; 0x6740
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $56, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $56, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7b
    db $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $7b, $8a, $7b
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $7b, $97, $98, $99
    db $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9
    db $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9
    db $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $7b
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $7b, $99
    db $d7, $d8, $d9, $da, $56, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5
    db $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $7b, $f0, $f1, $f2, $f3, $7b
    db $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $7b, $fe, $ff, $00, $01, $7b
    db $02, $03, $04, $05, $06, $07, $08, $09, $56, $0a, $0b, $0c, $0d, $0e, $0f, $10
    db $11, $12, $13, $14, $15, $16, $17, $18, $56, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f

Image342PaletteIndex:: ; 0x6880
    db $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $01, $01, $00, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $01, $01, $00, $02, $01, $01, $03, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $01, $00, $00, $02, $01, $01, $03, $01, $01, $01, $01, $01
    db $07, $07, $01, $01, $01, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $01, $00, $00, $02, $01, $01, $01, $01, $01, $00, $01, $00
    db $07, $07, $07, $01, $01, $02, $00, $00, $01, $01, $01, $01, $01, $00, $01, $00
    db $07, $07, $07, $01, $01, $02, $00, $00, $01, $01, $01, $01, $00, $01, $01, $01
    db $07, $07, $07, $01, $01, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $03, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $07, $07, $07, $01, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $00, $21
    db $07, $07, $07, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $00
    db $0f, $0f, $0f, $09, $09, $09, $09, $09, $00, $09, $09, $09, $09, $09, $09, $09
    db $0f, $0f, $0f, $09, $09, $09, $09, $09, $00, $09, $09, $09, $09, $09, $09, $09
    db $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image342Tileset:: ; 0x69c0
    INCBIN "gfx/bank06d_Image342_69c0.2bpp"

Image343Tilemap:: ; 0x7cc0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0b, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $0f, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $0f, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
    db $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
    db $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c
    db $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c
    db $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $89, $9b
    db $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb
    db $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db
    db $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb
    db $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $0b, $0b, $f4, $f5, $f6, $f7, $f8, $f9
    db $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $0b, $04, $05, $06, $07, $08
    db $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $0b, $14, $15, $16, $17
    db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27
    db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37

Image343PaletteIndex:: ; 0x7e00
    db $06, $07, $07, $07, $07, $07, $07, $03, $01, $01, $03, $00, $00, $00, $01, $01
    db $06, $06, $06, $07, $07, $07, $01, $03, $01, $03, $00, $00, $00, $01, $01, $01
    db $06, $06, $07, $07, $07, $07, $01, $03, $03, $00, $00, $00, $01, $01, $01, $01
    db $06, $06, $07, $07, $07, $07, $01, $03, $01, $00, $00, $01, $01, $01, $01, $01
    db $06, $06, $07, $07, $07, $06, $07, $03, $01, $01, $00, $01, $01, $01, $01, $01
    db $06, $06, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $41, $01
    db $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $06, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $06, $06, $06, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $06, $07, $07, $07, $07, $07, $01, $01, $00, $00, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $09, $09, $09, $09, $00, $09, $09, $09, $09, $09
    db $0f, $0f, $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $00, $09, $09, $09, $09
    db $0f, $0f, $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $0f, $0f, $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image343TilesetPart1:: ; 0x7f40
    INCBIN "gfx/bank06d_Image343Part1_7f40.2bpp"
