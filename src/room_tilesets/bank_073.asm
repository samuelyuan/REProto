SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

Image357TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank072_Image357Part2_4000.2bpp"

Image358Tilemap:: ; 0x4570
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $61, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $61, $61, $61, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b
    db $8c, $61, $61, $61, $61, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97
    db $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7
    db $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7
    db $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7
    db $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7
    db $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7
    db $f8, $61, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06
    db $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16
    db $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26
    db $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36

Image358PaletteIndex:: ; 0x46b0
    db $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $01, $01, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $01, $01, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $01, $01, $01, $01, $01, $01, $04, $04, $00, $04, $04, $04, $01, $01
    db $02, $02, $01, $01, $01, $01, $01, $04, $04, $01, $01, $01, $04, $04, $04, $01
    db $02, $02, $01, $00, $00, $01, $01, $07, $01, $01, $01, $01, $01, $01, $01, $04
    db $01, $00, $00, $00, $00, $07, $01, $07, $01, $01, $01, $01, $01, $01, $01, $04
    db $02, $00, $00, $00, $00, $01, $01, $07, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $00, $00, $00, $07, $01, $01, $07, $01, $01, $01, $01, $01, $01, $01, $00
    db $02, $00, $00, $00, $00, $01, $07, $07, $01, $01, $01, $01, $01, $01, $01, $00
    db $02, $02, $02, $02, $01, $02, $01, $07, $01, $01, $01, $01, $01, $01, $00, $00
    db $02, $02, $02, $02, $01, $01, $07, $07, $01, $01, $01, $01, $01, $00, $00, $01
    db $02, $02, $02, $02, $02, $02, $07, $01, $01, $01, $01, $01, $00, $00, $01, $01
    db $02, $02, $02, $02, $02, $02, $04, $04, $01, $01, $01, $01, $00, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $01, $00, $01, $01, $01, $01, $00, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $01, $01, $04, $01, $01, $01, $04, $01, $01, $01
    db $02, $00, $01, $01, $01, $02, $01, $01, $01, $09, $09, $09, $0c, $09, $09, $09
    db $0a, $0a, $0a, $09, $09, $0a, $09, $09, $09, $09, $09, $09, $08, $09, $09, $09
    db $0a, $0a, $0a, $0a, $09, $0a, $09, $09, $09, $09, $0c, $08, $0c, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image358Tileset:: ; 0x47f0
    INCBIN "gfx/bank073_Image358_47f0.2bpp"

Image359Tilemap:: ; 0x5b60
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
    db $f0, $f1, $f2, $f3, $e4, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe
    db $ff, $00, $01, $02, $e4, $e4, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $e4, $13, $14, $15, $16, $17, $18, $19, $1a, $1b
    db $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b

Image359PaletteIndex:: ; 0x5ca0
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $01, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $00, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $00, $00, $04, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $00, $01, $00, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $00, $00, $01, $04, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $00, $00, $00, $00, $01, $04, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $00, $00, $00, $00, $01, $04, $01, $01, $01, $01, $01, $01
    db $01, $0a, $0a, $0a, $00, $00, $08, $08, $09, $08, $09, $09, $09, $09, $09, $09
    db $09, $0a, $0a, $0a, $0a, $0a, $00, $0c, $09, $0c, $09, $09, $09, $09, $09, $09
    db $09, $09, $0a, $0a, $0a, $0a, $0a, $0c, $09, $0c, $09, $09, $09, $09, $09, $09
    db $09, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0c, $0c, $0c, $09, $09, $09, $09, $09

Image359Tileset:: ; 0x5de0
    INCBIN "gfx/bank073_Image359_5de0.2bpp"

Image360Tilemap:: ; 0x71a0
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

Image360PaletteIndex:: ; 0x72e0
    db $02, $02, $01, $02, $02, $02, $01, $01, $01, $00, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $02, $02, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $00, $04, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $01, $04, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $01, $04, $00, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $02, $02, $02, $02, $01, $01, $00, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $07, $00, $07, $00, $01, $04, $04, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $07, $00, $00, $00, $01, $04, $01, $01, $01, $01, $01, $01, $01
    db $09, $0a, $0a, $0f, $0f, $0f, $0a, $0c, $0c, $09, $09, $09, $09, $09, $09, $09
    db $09, $0a, $0a, $0a, $0a, $0a, $0a, $09, $0c, $09, $09, $09, $09, $09, $09, $09
    db $09, $0a, $0a, $0a, $0a, $0a, $0a, $09, $0c, $09, $09, $09, $09, $09, $09, $09
    db $09, $0a, $0a, $0a, $0a, $0a, $0a, $09, $0c, $09, $09, $09, $09, $09, $09, $09

Image360TilesetPart1:: ; 0x7420
    INCBIN "gfx/bank073_Image360Part1_7420.2bpp"
