SECTION "ROM Bank $06e", ROMX[$4000], BANK[$6e]

Image343TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank06d_Image343Part2_4000.2bpp"

Image344Tilemap:: ; 0x52c0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $39, $3b, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae
    db $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de
    db $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee
    db $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe
    db $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $08, $08, $29, $2a, $2b, $2c
    db $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c

Image344PaletteIndex:: ; 0x5400
    db $07, $07, $07, $07, $01, $01, $01, $01, $00, $00, $00, $00, $00, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $00, $00, $01, $00, $00, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $00, $00, $00, $00, $01, $01, $01, $01
    db $07, $07, $07, $01, $01, $01, $01, $01, $00, $00, $00, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $03, $01, $01, $01, $00, $00, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $00, $01, $01, $00, $00, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $02, $02, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $06, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $0f, $0f, $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09, $09, $09
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $00, $00, $09, $09, $09, $09
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $09, $09, $09, $09, $09, $09

Image344Tileset:: ; 0x5540
    INCBIN "gfx/bank06e_Image344_5540.2bpp"

Image345Tilemap:: ; 0x6910
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae
    db $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $74, $c7, $c8, $c9, $ca, $cb, $cc, $cd
    db $ce, $cf, $d0, $d1, $d2, $d3, $74, $74, $74, $d4, $83, $d5, $d6, $d7, $d8, $d9
    db $da, $db, $dc, $dd, $de, $df, $e0, $74, $74, $e1, $e2, $e3, $e4, $e5, $e6, $e7
    db $e8, $e9, $ea, $eb, $74, $ec, $ed, $74, $74, $74, $ee, $ef, $f0, $f1, $f2, $f3
    db $f4, $f5, $f6, $f7, $f8, $f9, $74, $74, $74, $74, $74, $74, $fa, $fb, $fc, $fd
    db $fe, $ff, $f5, $00, $01, $02, $03, $f5, $74, $74, $74, $74, $74, $74, $04, $05
    db $06, $07, $08, $09, $0a, $0b, $0c, $0d, $f9, $74, $74, $74, $74, $0e, $0f, $10
    db $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20

Image345PaletteIndex:: ; 0x6a50
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $03, $03, $03, $03, $00, $00, $01, $03, $01, $01, $03, $03, $03
    db $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $03, $00, $00, $00
    db $01, $01, $01, $01, $01, $03, $01, $05, $05, $05, $05, $05, $03, $03, $03, $03
    db $01, $01, $03, $01, $03, $01, $05, $04, $04, $05, $04, $05, $05, $05, $03, $03
    db $01, $03, $03, $03, $01, $00, $01, $01, $01, $01, $01, $05, $05, $05, $01, $03
    db $01, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03
    db $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $05, $05, $05, $01
    db $02, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $04, $05, $04, $04, $04
    db $03, $01, $01, $01, $01, $01, $01, $01, $00, $04, $04, $04, $04, $04, $04, $04
    db $03, $01, $01, $01, $01, $01, $00, $00, $00, $04, $44, $04, $04, $04, $04, $04
    db $01, $01, $01, $01, $01, $01, $01, $00, $00, $04, $04, $04, $04, $04, $04, $04
    db $01, $01, $01, $01, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, $04, $04
    db $01, $00, $01, $01, $04, $04, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04
    db $01, $01, $00, $09, $09, $0c, $0c, $04, $00, $00, $00, $00, $00, $00, $0c, $0d
    db $09, $09, $09, $09, $09, $09, $0c, $0c, $04, $00, $00, $00, $00, $09, $0d, $09
    db $09, $09, $09, $09, $09, $09, $09, $0c, $0c, $0c, $0c, $09, $09, $0a, $0b, $0b

Image345Tileset:: ; 0x6b90
    INCBIN "gfx/bank06e_Image345_6b90.2bpp"

Image346Tilemap:: ; 0x7da0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $56, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $64, $73, $56, $74, $75, $76, $77, $78, $79, $7a, $7b, $7a
    db $7c, $7d, $7e, $7f, $64, $80, $81, $82, $83, $84, $85, $86, $87, $7a, $88, $7a
    db $89, $8a, $8b, $8c, $64, $8d, $8e, $8f, $90, $91, $92, $93, $7a, $94, $95, $96
    db $97, $98, $99, $9a, $64, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5
    db $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5
    db $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $7a
    db $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $7a, $d3
    db $d4, $d5, $d6, $d7, $56, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2
    db $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $7a, $ee, $ef, $f0, $7a
    db $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $7a, $fb, $fc, $fd, $fe, $7a
    db $ff, $00, $01, $02, $03, $04, $05, $06, $56, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $56, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c

Image346PaletteIndexPart1:: ; 0x7ee0
    db $07, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $07, $07, $02, $02, $01, $01, $01, $01, $01, $00, $02, $01, $01
    db $07, $07, $07, $01, $02, $00, $00, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $02, $00, $00, $02, $01, $01, $03, $01, $01, $01, $01, $01
    db $07, $07, $01, $01, $02, $00, $00, $02, $01, $01, $03, $01, $01, $01, $01, $01
    db $07, $07, $01, $02, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $01, $02, $00, $00, $00, $02, $01, $01, $01, $01, $01, $00, $01, $00
    db $07, $07, $01, $02, $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $01, $00
    db $07, $07, $01, $02, $00, $00, $00, $00, $01, $01, $01, $01, $00, $01, $01, $01
    db $07, $07, $07, $02, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $02, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $02, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $07, $07, $07, $02, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01
    db $07, $07, $07, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $07, $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $07, $0f, $0f, $09, $09, $09, $09, $09, $00, $09, $09, $09, $09, $09, $09, $09
