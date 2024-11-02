SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

Image39TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank019_Image39Part2_4000.2bpp"

Image40Tilemap:: ; 0x48d0
    db $00, $01, $01, $02, $03, $04, $05, $01, $01, $01, $01, $01, $01, $06, $07, $08
    db $09, $0a, $0b, $0c, $0c, $0c, $0d, $0e, $0f, $01, $01, $01, $10, $11, $12, $13
    db $14, $15, $16, $0c, $17, $18, $19, $0c, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
    db $22, $01, $23, $24, $25, $26, $27, $0c, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $75, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $75, $94, $95, $96, $97, $98, $99, $8b, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $aa, $ab
    db $9d, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $9d, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $aa, $c4, $c5, $c6, $c7, $c8
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8
    db $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $9d, $e4, $e5, $e6, $e7
    db $e8, $e9, $ea, $eb, $01, $01, $01, $01, $01, $01, $ec, $9d, $ed, $ee, $ef, $f0
    db $f1, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ec, $9d, $f2, $f3, $f4, $f5
    db $f1, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ec, $9d, $f6, $f7, $f8, $f9
    db $f1, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ec, $9d, $fa, $fb, $fc, $fd

Image40PaletteIndex:: ; 0x4a10
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $07, $04, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $07, $04, $04, $04, $00, $00, $00
    db $01, $01, $06, $01, $01, $01, $01, $01, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $06, $06, $06, $07, $06, $07, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $06, $01, $01, $07, $06, $00, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $06, $01, $01, $07, $06, $00, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $07, $01, $01, $07, $01, $00, $00, $00, $00, $04, $04, $00, $00, $00
    db $00, $01, $07, $07, $07, $07, $07, $00, $00, $00, $03, $03, $04, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00

Image40Tileset:: ; 0x4b50
    INCBIN "gfx/bank01a_Image40_4b50.2bpp"

Image41Tilemap:: ; 0x5b30
    db $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0a, $0c, $0d
    db $0e, $00, $0f, $10, $11, $12, $13, $14, $15, $16, $0a, $17, $18, $0a, $0c, $0d
    db $00, $00, $19, $1a, $03, $1b, $1c, $1d, $1e, $0a, $1f, $20, $21, $0a, $0c, $0d
    db $00, $00, $22, $23, $24, $25, $26, $27, $28, $0a, $29, $28, $0a, $0a, $0c, $0d
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $0a, $0a, $0c, $0d
    db $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $0a, $0c, $0d
    db $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $0a, $0a, $0c, $0d
    db $4f, $50, $45, $51, $52, $03, $53, $54, $55, $56, $57, $58, $59, $0a, $0c, $0d
    db $5a, $5b, $45, $5c, $5d, $03, $5e, $5f, $60, $61, $62, $63, $64, $65, $0c, $0d
    db $66, $67, $45, $68, $69, $6a, $6b, $6c, $6d, $0a, $6e, $6f, $70, $71, $0c, $0d
    db $72, $73, $74, $75, $76, $77, $78, $59, $0a, $0a, $0a, $0a, $0a, $0a, $0c, $0d
    db $79, $7a, $7b, $7c, $7d, $03, $7e, $7f, $80, $81, $82, $83, $84, $85, $0c, $0d
    db $86, $87, $45, $88, $89, $8a, $8b, $8c, $8d, $0d, $8e, $8f, $90, $91, $0c, $0d
    db $92, $93, $94, $95, $96, $97, $98, $99, $9a, $0d, $15, $9b, $9c, $6e, $0c, $0d
    db $9d, $9e, $45, $9f, $a0, $a1, $a2, $a3, $a4, $0d, $a5, $a6, $0a, $0a, $0c, $0d
    db $a7, $a8, $45, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $0a, $0c, $0d
    db $b3, $b4, $45, $b5, $b6, $00, $b7, $b8, $b9, $0a, $0a, $71, $ba, $bb, $0c, $0d
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $0d, $0d, $c3, $c4, $0a, $c5, $28, $0c, $0d
    db $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $0d, $0d, $ce, $cf, $d0, $0a, $0c, $0d
    db $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $0d, $0d, $db, $dc, $0c, $0d

Image41PaletteIndex:: ; 0x5c70
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $01, $04, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $01, $04, $04, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $01, $04, $04, $04, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $01, $04, $04, $01, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $01, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $01, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $01, $04, $04, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $01, $01, $01, $01, $01, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $00, $04, $04, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $00, $24, $04, $04, $44, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $00, $04, $04, $01, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $01, $01, $44, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $04, $01, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $03, $04, $00, $00, $04, $04, $04, $01, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $04, $04, $04, $00, $00, $04, $04, $04, $00

Image41Tileset:: ; 0x5db0
    INCBIN "gfx/bank01a_Image41_5db0.2bpp"

Image42Tilemap:: ; 0x6b80
    db $00, $01, $02, $03, $04, $05, $06, $06, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $06, $06, $15, $16, $17, $18, $19, $0d, $1a
    db $1b, $1c, $1d, $1e, $1f, $06, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $0d
    db $39, $3a, $3b, $06, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $0d
    db $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $0d, $54, $55
    db $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $0d, $0d, $0d, $62
    db $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $0d, $70, $71
    db $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $44, $7d, $7e, $7f, $80
    db $81, $82, $83, $84, $85, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $0d
    db $9f, $a0, $a1, $a2, $a3, $0d, $0d, $0d, $0d, $a4, $a5, $a6, $a7, $a8, $a9, $54
    db $9f, $aa, $ab, $0d, $0d, $0d, $0d, $ac, $ad, $ae, $af, $b0, $b1, $0d, $b2, $b3
    db $9f, $9f, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $44
    db $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $0d, $0d, $ce
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $0d, $0d, $0d, $db
    db $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $0d, $e7, $e8, $e9, $0d
    db $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $e8, $f5, $0d, $0d, $0d
    db $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $0d, $a8, $a9, $0d, $0d
    db $01, $02, $03, $04, $05, $0d, $06, $07, $08, $09, $0a, $e6, $0d, $0b, $0c, $0d

Image42PaletteIndex:: ; 0x6cc0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $00, $00, $02, $05, $05, $05, $05, $05, $05, $02, $02, $01, $01, $01, $01, $01
    db $00, $00, $00, $05, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $05, $01, $01, $01, $01, $01, $01, $01, $41, $01, $01, $01, $01
    db $00, $00, $00, $05, $05, $05, $05, $05, $05, $05, $05, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01, $02, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01, $01, $01, $21
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $07, $07, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $06, $07, $07, $01, $01, $01, $41
    db $00, $00, $00, $02, $05, $05, $05, $05, $01, $01, $05, $01, $01, $01, $01, $01
    db $00, $00, $02, $02, $02, $05, $00, $00, $05, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $02, $02, $02, $05, $00, $00, $05, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $05, $00, $00, $05, $05, $05, $05, $05, $01, $01, $01, $01, $01, $01
    db $00, $00, $05, $02, $05, $05, $05, $05, $00, $05, $09, $01, $01, $01, $01, $01
    db $08, $08, $0d, $0d, $08, $00, $0d, $0d, $0d, $09, $09, $01, $01, $09, $09, $09

Image42Tileset:: ; 0x6e00
    INCBIN "gfx/bank01a_Image42_6e00.2bpp"

Image43TilemapPart1:: ; 0x7ee0
    db $00, $01, $02, $03, $04, $05, $06, $06, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $30, $31, $32, $33, $06, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
    db $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
    db $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c
    db $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c
    db $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc
    db $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc
    db $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc
    db $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec
    db $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $e7, $f9, $fa, $fb
    db $fc, $fd, $fe, $ff, $00, $01, $02, $6b, $03, $04, $05, $06, $07, $08, $09, $0a
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a

