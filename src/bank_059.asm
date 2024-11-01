SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

Image280TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank058_Image280Part2_4000.2bpp"

Image281Tilemap:: ; 0x4d80
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $00, $00, $00, $00, $00
    db $00, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $00, $14, $15, $00, $00, $00
    db $00, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $00, $00, $00, $00, $00
    db $00, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae
    db $00, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $00, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $00
    db $00, $cc, $cd, $ce, $cf, $d0, $d1, $00, $d2, $d3, $d4, $d5, $d6, $d7, $00, $00
    db $00, $00, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $00
    db $00, $00, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $00, $00
    db $00, $00, $00, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $00, $f8, $f9, $00, $fa, $00
    db $00, $00, $00, $00, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06
    db $00, $00, $00, $00, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $00

Image281PaletteIndex:: ; 0x4ec0
    db $00, $00, $00, $00, $00, $00, $05, $03, $03, $03, $03, $01, $01, $01, $01, $01
    db $00, $00, $05, $00, $05, $00, $00, $05, $03, $03, $01, $03, $03, $01, $01, $01
    db $00, $00, $05, $00, $05, $03, $03, $03, $03, $01, $03, $01, $01, $01, $01, $01
    db $00, $06, $05, $05, $05, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01, $01
    db $05, $05, $05, $05, $05, $03, $03, $03, $03, $03, $01, $01, $01, $01, $01, $01
    db $05, $06, $05, $05, $05, $03, $03, $03, $03, $03, $01, $01, $01, $05, $05, $05
    db $05, $00, $03, $05, $05, $03, $03, $03, $03, $01, $05, $05, $05, $00, $00, $00
    db $05, $00, $05, $03, $03, $03, $03, $03, $05, $05, $05, $00, $00, $00, $00, $00
    db $05, $05, $03, $03, $03, $03, $03, $05, $05, $05, $05, $00, $00, $00, $00, $00
    db $05, $00, $05, $03, $03, $03, $03, $05, $05, $05, $00, $00, $00, $00, $00, $00
    db $00, $05, $05, $05, $03, $03, $03, $05, $05, $05, $00, $00, $00, $00, $00, $00
    db $05, $05, $05, $03, $03, $03, $03, $03, $05, $05, $05, $05, $05, $05, $05, $05
    db $00, $05, $05, $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $01, $01, $01
    db $00, $00, $00, $05, $03, $03, $03, $03, $03, $03, $03, $05, $05, $05, $01, $01
    db $00, $00, $05, $05, $03, $03, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01, $01
    db $00, $00, $00, $05, $05, $05, $03, $03, $03, $03, $03, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $05, $05, $05, $05, $03, $05, $01, $03, $03, $01, $01, $01
    db $00, $00, $00, $00, $00, $05, $05, $00, $00, $0d, $0b, $0b, $0b, $0b, $0b, $09
    db $00, $00, $00, $00, $08, $08, $08, $08, $0d, $0d, $0b, $0b, $0b, $0b, $0b, $01

Image281Tileset:: ; 0x5000
    INCBIN "gfx/bank059_Image281_5000.2bpp"

Image282Tilemap:: ; 0x6120
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $6c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $6c
    db $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $6c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc
    db $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc
    db $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc
    db $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec
    db $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc
    db $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $0a
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $0a

Image282PaletteIndex:: ; 0x6260
    db $06, $06, $06, $06, $00, $01, $01, $01, $01, $06, $03, $03, $03, $03, $03, $03
    db $06, $06, $06, $06, $02, $01, $01, $01, $01, $05, $03, $03, $01, $03, $03, $03
    db $04, $01, $01, $06, $06, $01, $01, $01, $01, $06, $03, $03, $01, $01, $05, $05
    db $04, $04, $04, $04, $04, $01, $01, $01, $01, $06, $03, $03, $01, $05, $05, $07
    db $04, $04, $04, $04, $04, $01, $01, $01, $01, $00, $03, $03, $00, $07, $07, $07
    db $04, $04, $04, $00, $00, $01, $01, $01, $01, $07, $06, $05, $07, $07, $01, $01
    db $06, $06, $06, $06, $04, $01, $01, $01, $01, $07, $07, $07, $01, $01, $01, $01
    db $06, $06, $05, $01, $01, $01, $01, $01, $01, $07, $01, $01, $01, $01, $01, $01
    db $04, $04, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $04, $06, $01, $01, $01, $01, $01, $01, $07, $07, $07, $07, $07, $07, $00
    db $04, $04, $06, $01, $01, $01, $01, $01, $01, $07, $06, $05, $07, $07, $05, $05
    db $06, $06, $02, $02, $01, $01, $01, $01, $01, $07, $05, $03, $01, $01, $01, $01
    db $01, $01, $01, $05, $01, $01, $01, $01, $01, $07, $06, $03, $03, $01, $01, $01
    db $06, $06, $06, $06, $01, $01, $01, $01, $01, $07, $05, $03, $07, $07, $01, $01
    db $04, $04, $04, $04, $01, $01, $01, $01, $01, $07, $05, $03, $01, $07, $07, $01
    db $04, $04, $04, $0c, $0c, $09, $09, $09, $09, $0f, $0e, $0b, $0b, $09, $09, $09
    db $0c, $0c, $0c, $0c, $0e, $0a, $09, $09, $09, $0f, $0e, $0b, $0b, $09, $09, $09
    db $0a, $0e, $0e, $0e, $0a, $0a, $09, $09, $09, $0f, $0e, $0b, $0b, $09, $09, $09
    db $0e, $0a, $0a, $0e, $0a, $0e, $09, $09, $09, $0f, $0e, $0b, $0b, $09, $09, $09

Image282Tileset:: ; 0x63a0
    INCBIN "gfx/bank059_Image282_63a0.2bpp"

Image283Tilemap:: ; 0x7750
    db $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $00, $00, $00, $00, $00, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19
    db $1a, $00, $00, $00, $00, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25
    db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35
    db $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
    db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55
    db $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65
    db $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85
    db $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95
    db $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5
    db $a6, $a7, $a8, $a9, $aa, $00, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4
    db $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4
    db $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4
    db $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4
    db $e5, $e6, $e7, $e8, $e9, $ea, $eb, $a6, $a6, $ec, $ed, $ee, $ef, $f0, $f1, $f2
    db $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02
    db $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12
    db $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22
    db $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32

Image283PaletteIndex:: ; 0x7890
    db $01, $01, $04, $04, $04, $04, $04, $07, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $04, $04, $07, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $01, $01, $01, $01, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $04, $04, $04, $04, $04, $04, $07, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $06, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $06, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $04, $00, $00, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $05, $04, $04, $00, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $05, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $03, $03, $00, $06, $00, $07, $01, $01, $01, $01, $01, $01, $01
    db $05, $04, $04, $00, $03, $01, $06, $06, $05, $07, $07, $01, $01, $01, $01, $01
    db $00, $04, $00, $06, $02, $03, $06, $01, $01, $06, $07, $01, $07, $01, $01, $01
    db $00, $00, $00, $00, $02, $03, $06, $01, $01, $01, $05, $01, $07, $07, $07, $07
    db $00, $00, $00, $06, $03, $03, $02, $01, $01, $01, $05, $01, $07, $00, $00, $07
    db $02, $06, $00, $00, $02, $03, $03, $03, $01, $01, $07, $07, $07, $0d, $0e, $0d
    db $08, $08, $0e, $0e, $0e, $0e, $0b, $0b, $09, $0d, $0f, $09, $0f, $0b, $0b, $0e
    db $0a, $0e, $08, $08, $0e, $08, $0e, $09, $09, $0d, $0f, $09, $0f, $0b, $0d, $08
    db $0e, $08, $08, $0e, $08, $08, $08, $0e, $09, $0e, $0f, $0f, $0f, $0b, $0d, $08

Image283TilesetPart1:: ; 0x79d0
    INCBIN "gfx/bank059_Image283Part1_79d0.2bpp"

