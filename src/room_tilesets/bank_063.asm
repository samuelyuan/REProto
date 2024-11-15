SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

Image310TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank062_Image310Part2_4000.2bpp"

Image311Tilemap:: ; 0x49b0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $03, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $51, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d
    db $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d
    db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd
    db $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd
    db $de, $51, $51, $51, $51, $03, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8
    db $e9, $ea, $eb, $51, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7
    db $f8, $f9, $03, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06
    db $07, $08, $09, $51, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15
    db $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25
    db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35

Image311PaletteIndex:: ; 0x4af0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $21, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $05, $05, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $05, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $03, $05, $01, $05, $05, $03, $01, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $05, $05, $05, $03, $05, $05, $00, $00, $01, $00
    db $01, $01, $01, $01, $01, $01, $05, $03, $03, $05, $01, $01, $00, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $03, $03, $05, $05, $05, $05, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $05, $05, $05, $01, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $05, $05, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $01
    db $01, $01, $41, $01, $01, $01, $01, $01, $01, $09, $09, $09, $09, $09, $08, $08
    db $09, $09, $09, $01, $09, $09, $09, $09, $09, $09, $09, $09, $09, $08, $09, $08
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image311Tileset:: ; 0x4c30
    INCBIN "gfx/bank063_Image311_4c30.2bpp"

Image312Tilemap:: ; 0x5f90
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $0f
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $0f, $2d
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d
    db $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d
    db $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d
    db $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d
    db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $0f, $b6, $b7, $b8, $b9, $ba, $bb, $bc
    db $bd, $be, $bf, $c0, $c1, $c2, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb
    db $cc, $cd, $ce, $cf, $d0, $d1, $c2, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea
    db $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa
    db $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a
    db $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a

Image312PaletteIndex:: ; 0x60d0
    db $01, $01, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $01, $02, $02, $01, $01, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $02, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02, $02
    db $05, $05, $05, $05, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $05, $05, $06, $06, $06, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $07, $06, $06, $07, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $05, $05, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $07, $07, $07, $01, $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $06, $04, $04, $03, $03, $03, $03, $01, $02, $02, $02, $02, $02, $02, $02
    db $00, $06, $04, $04, $04, $03, $03, $03, $03, $02, $02, $05, $00, $02, $02, $02
    db $00, $04, $04, $04, $04, $04, $03, $03, $03, $02, $02, $02, $02, $02, $05, $05
    db $00, $04, $04, $04, $04, $04, $03, $03, $03, $01, $02, $02, $00, $02, $05, $02
    db $00, $04, $04, $04, $04, $06, $03, $03, $03, $02, $05, $02, $02, $02, $05, $05
    db $00, $00, $00, $00, $00, $0d, $0d, $0d, $0a, $0a, $0d, $0d, $0a, $0a, $0d, $0d
    db $08, $08, $08, $08, $08, $08, $0d, $0a, $0a, $0a, $0a, $0d, $0d, $0d, $0d, $0d
    db $08, $08, $08, $08, $08, $08, $0a, $0a, $0d, $0d, $0d, $0d, $0a, $0a, $0d, $0d
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0d, $0d, $0a, $0a, $0a, $0a

Image312Tileset:: ; 0x6210
    INCBIN "gfx/bank063_Image312_6210.2bpp"

Image313Tilemap:: ; 0x75c0
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

Image313PaletteIndex:: ; 0x7700
    db $03, $02, $02, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02, $02, $01, $02, $02
    db $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02
    db $02, $01, $02, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02, $01, $02, $01
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $01
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $02, $02, $02
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $05, $02, $02, $02, $02, $01
    db $02, $02, $01, $02, $00, $00, $00, $00, $02, $05, $05, $02, $02, $02, $02, $01
    db $02, $02, $02, $02, $02, $05, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $05, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $02, $02, $01, $01, $01, $01, $02, $02, $01, $02, $02, $02
    db $0a, $09, $0a, $09, $09, $09, $0a, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $0a, $09, $0a, $0a, $0a, $0a
    db $0a, $0a, $0a, $0a, $0a, $09, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $0a
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a

Image313TilesetPart1:: ; 0x7840
    INCBIN "gfx/bank063_Image313Part1_7840.2bpp"
