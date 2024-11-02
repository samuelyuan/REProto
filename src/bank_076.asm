SECTION "ROM Bank $076", ROMX[$4000], BANK[$76]

Image366TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank075_Image366Part2_4000.2bpp"

Image367Tilemap:: ; 0x46a0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $10, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $10, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d
    db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd
    db $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $0a, $d8, $d9, $da, $db, $dc
    db $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $10, $e5, $0a, $e6, $e7, $e8, $e9, $ea
    db $eb, $ec, $ed, $ee, $11, $ef, $f0, $f1, $f2, $f3, $0a, $f4, $f5, $f6, $f7, $f8
    db $f9, $fa, $fb, $fc, $10, $fd, $fe, $ff, $00, $01, $0a, $02, $03, $04, $05, $06
    db $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0a, $0a, $0a, $0a, $0f, $10, $11, $12
    db $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $0a, $0a, $0a, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f

Image367PaletteIndex:: ; 0x47e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $01, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01, $01, $01, $00
    db $02, $02, $02, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $02, $02, $06, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $06, $01, $00, $01, $01, $05, $03, $03, $03, $00, $01, $01, $01, $01
    db $02, $06, $06, $01, $00, $01, $01, $00, $03, $03, $03, $00, $01, $01, $01, $01
    db $06, $06, $01, $01, $00, $01, $01, $01, $00, $00, $00, $00, $01, $01, $01, $00
    db $01, $01, $01, $01, $00, $01, $01, $01, $00, $00, $00, $00, $01, $01, $01, $00
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $01
    db $01, $01, $00, $00, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $01, $01, $05, $03, $43, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $03, $03, $03, $03, $03, $0b, $0b, $00, $08, $08, $08, $08, $08
    db $09, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $00, $00, $00, $00, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $0b, $0b, $0b, $0b, $00, $00, $00, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image367Tileset:: ; 0x4920
    INCBIN "gfx/bank076_Image367_4920.2bpp"

Image368Tilemap:: ; 0x5c20
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

Image368PaletteIndex:: ; 0x5d60
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $06, $06, $06, $06, $01, $01, $01, $01, $00, $00, $00
    db $00, $00, $00, $01, $06, $02, $06, $06, $06, $01, $01, $01, $01, $00, $00, $00
    db $00, $00, $00, $01, $01, $06, $05, $03, $03, $03, $03, $01, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $05, $03, $03, $03, $03, $01, $01, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $04, $03, $03, $03, $03, $01, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $00, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image368Tileset:: ; 0x5ea0
    INCBIN "gfx/bank076_Image368_5ea0.2bpp"

Image369Tilemap:: ; 0x72a0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $0a, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $0a, $29, $2a, $2b, $2c, $2d
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $0a, $0a, $37, $38, $39, $3a, $3b
    db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
    db $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b
    db $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b
    db $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b
    db $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
    db $bc, $bd, $be, $bf, $b0, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca
    db $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea
    db $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa
    db $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $0a, $31, $32, $33, $34, $35, $36, $37, $38, $39

Image369PaletteIndex:: ; 0x73e0
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $01, $05, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00
    db $01, $00, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $00
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00
    db $01, $01, $01, $00, $00, $00, $00, $03, $03, $03, $00, $00, $01, $01, $00, $00
    db $06, $01, $00, $00, $00, $00, $01, $01, $00, $00, $00, $00, $01, $01, $00, $00
    db $02, $06, $00, $00, $00, $01, $06, $06, $01, $01, $00, $00, $01, $01, $01, $00
    db $02, $06, $00, $00, $00, $01, $02, $06, $01, $01, $00, $00, $01, $01, $01, $00
    db $02, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $06, $06, $06, $01, $01, $01, $01, $01, $00, $00, $00, $01, $01, $01, $00, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $09, $08, $08, $08, $08, $08, $08, $08, $09, $09, $09
    db $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $09, $09
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08

Image369TilesetPart1:: ; 0x7520
    INCBIN "gfx/bank076_Image369Part1_7520.2bpp"

