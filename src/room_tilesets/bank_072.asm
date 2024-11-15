SECTION "ROM Bank $072", ROMX[$4000], BANK[$72]

Image354TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank071_Image354Part2_4000.2bpp"

Image355Tilemap:: ; 0x4260
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
    db $c0, $c1, $c2, $c3, $b4, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de
    db $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee
    db $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe
    db $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $03
    db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $04, $04

Image355PaletteIndex:: ; 0x43a0
    db $02, $02, $02, $02, $00, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $01, $07, $07, $07, $00, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $00, $00, $00, $00, $07, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $00, $00, $00, $00, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09, $41
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $00, $00

Image355Tileset:: ; 0x44e0
    INCBIN "gfx/bank072_Image355_44e0.2bpp"

Image356Tilemap:: ; 0x58a0
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

Image356PaletteIndex:: ; 0x59e0
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $00, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $00, $00, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $07, $07, $07, $07, $07, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $09, $09, $09, $09

Image356Tileset:: ; 0x5b20
    INCBIN "gfx/bank072_Image356_5b20.2bpp"

Image357Tilemap:: ; 0x6f20
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $43, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae
    db $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de
    db $df, $e0, $e1, $43, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed
    db $ee, $ef, $f0, $43, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc
    db $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c
    db $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c

Image357PaletteIndex:: ; 0x7060
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $01, $01, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $02, $01, $01, $01, $01, $01, $01
    db $02, $01, $02, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $02, $00, $01, $01, $01, $01, $01
    db $02, $01, $01, $02, $02, $01, $01, $01, $01, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $01, $02, $01, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01
    db $02, $01, $02, $02, $02, $02, $02, $02, $01, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $01, $02, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $01, $01, $01, $01, $01, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $02, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01
    db $02, $01, $02, $00, $01, $01, $01, $02, $02, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $00, $01, $02, $01, $01, $01, $02, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $0a, $0a, $0a, $09, $09, $09, $0a, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $0a, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $0a, $0a, $0a, $0a, $09, $09, $09, $0a, $09, $09, $09, $09, $09, $09
    db $0a, $0a, $09, $09, $09, $09, $09, $09, $09, $0a, $09, $09, $09, $09, $09, $09

Image357TilesetPart1:: ; 0x71a0
    INCBIN "gfx/bank072_Image357Part1_71a0.2bpp"
