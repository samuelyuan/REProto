SECTION "ROM Bank $0af", ROMX[$4000], BANK[$af]

Image570TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank0ae_Image570Part2_4000.2bpp"

Image571Tilemap:: ; 0x4220
    db $00, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $04, $02, $02, $02
    db $05, $06, $02, $02, $02, $02, $02, $02, $02, $02, $07, $08, $02, $02, $02, $02
    db $09, $0a, $0b, $02, $02, $02, $02, $02, $02, $0c, $0d, $0e, $02, $02, $02, $02
    db $0f, $10, $11, $12, $13, $14, $13, $15, $16, $0f, $17, $18, $02, $02, $02, $02
    db $0f, $19, $1a, $1b, $0f, $0f, $0f, $0f, $0f, $1c, $1d, $02, $02, $02, $02, $02
    db $1e, $0f, $1f, $20, $0f, $0f, $0f, $0f, $21, $22, $23, $02, $02, $02, $02, $02
    db $24, $0f, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $02, $02, $02, $02, $02
    db $2e, $0f, $2f, $30, $14, $31, $32, $33, $34, $35, $36, $02, $02, $02, $02, $02
    db $37, $0f, $38, $39, $02, $02, $02, $02, $3a, $3b, $3c, $02, $02, $02, $02, $02
    db $0f, $0f, $38, $3d, $3e, $3f, $40, $41, $3f, $42, $43, $02, $02, $02, $44, $45
    db $0f, $0f, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $02, $02, $4f, $50, $51
    db $0f, $52, $53, $54, $55, $56, $57, $58, $02, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $02, $6b, $6c, $6d, $02
    db $62, $62, $6e, $02, $02, $02, $02, $02, $02, $6f, $70, $71, $72, $73, $74, $75
    db $62, $62, $76, $02, $02, $02, $02, $02, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $62, $62, $7f, $02, $02, $02, $02, $80, $81, $82, $83, $84, $85, $86, $87, $88
    db $62, $62, $89, $8a, $8b, $8c, $8a, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95
    db $62, $96, $97, $98, $99, $9a, $9a, $9a, $9b, $9c, $9d, $9e, $9f, $9b, $a0, $a1
    db $a2, $a3, $a4, $a4, $14, $14, $a4, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $ad, $ae, $af, $b0, $b1, $b2

Image571PaletteIndex:: ; 0x4360
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $41, $01, $01, $01, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $21, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00
    db $00, $00, $01, $01, $01, $01, $41, $01, $01, $01, $01, $01, $03, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $20, $00, $00
    db $01, $01, $01, $01, $21, $21, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00

Image571Tileset:: ; 0x44a0
    INCBIN "gfx/bank0af_Image571_44a0.2bpp"

Image572Tilemap:: ; 0x4fd0
    db $00, $01, $02, $02, $02, $02, $02, $03, $04, $05, $05, $05, $05, $05, $05, $06
    db $07, $08, $09, $0a, $0a, $0a, $09, $05, $05, $0b, $0c, $0d, $0e, $0f, $10, $11
    db $12, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $02
    db $12, $12, $20, $21, $22, $05, $05, $05, $23, $24, $25, $26, $27, $28, $02, $02
    db $12, $12, $29, $2a, $2b, $2c, $2d, $05, $2e, $2f, $30, $31, $12, $32, $02, $02
    db $12, $12, $33, $34, $35, $02, $02, $36, $37, $38, $39, $3a, $3b, $3c, $02, $02
    db $3d, $12, $12, $3e, $3f, $02, $02, $02, $40, $41, $42, $43, $44, $45, $02, $02
    db $46, $47, $12, $48, $49, $02, $02, $02, $4a, $4b, $4c, $4d, $4e, $4f, $02, $02
    db $05, $50, $12, $51, $52, $02, $02, $02, $53, $05, $54, $02, $02, $02, $02, $02
    db $05, $55, $12, $56, $02, $02, $02, $02, $57, $05, $58, $02, $02, $02, $02, $02
    db $59, $05, $5a, $5b, $02, $02, $02, $5c, $5d, $05, $5e, $02, $02, $02, $02, $02
    db $5f, $60, $61, $62, $63, $64, $63, $65, $66, $67, $68, $02, $02, $02, $02, $02
    db $69, $6a, $29, $6b, $05, $05, $05, $6c, $6d, $6e, $6f, $02, $02, $02, $02, $02
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $02, $02, $02, $02, $02
    db $7b, $7c, $12, $7d, $05, $7e, $7f, $80, $81, $82, $83, $84, $02, $02, $02, $02
    db $85, $86, $87, $88, $05, $89, $89, $8a, $8b, $8c, $8d, $8e, $02, $02, $02, $02
    db $8f, $12, $90, $05, $05, $05, $05, $05, $05, $05, $91, $92, $02, $02, $02, $02
    db $12, $12, $93, $05, $05, $05, $05, $05, $05, $05, $05, $94, $02, $02, $02, $02
    db $12, $95, $96, $05, $05, $05, $05, $05, $05, $05, $05, $97, $98, $02, $02, $02
    db $12, $99, $05, $05, $05, $05, $05, $05, $05, $05, $05, $9a, $9b, $02, $02, $02

Image572PaletteIndex:: ; 0x5110
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03
    db $01, $01, $01, $01, $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $03, $03
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $03, $03, $07, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $03, $07, $07, $00, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $07, $07, $03, $01, $01, $01, $01
    db $01, $00, $00, $01, $01, $01, $01, $01, $01, $07, $07, $01, $01, $01, $01, $01
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $41, $01, $07, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $41, $01, $01, $01, $01, $01, $07, $07, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $07, $00, $00, $03, $01, $01, $01, $01, $01
    db $01, $01, $00, $01, $01, $01, $01, $07, $00, $00, $00, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $41, $07, $07, $01, $03, $03, $01, $01, $01, $01
    db $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01

Image572Tileset:: ; 0x5250
    INCBIN "gfx/bank0af_Image572_5250.2bpp"

Image573Tilemap:: ; 0x5c10
    db $00, $00, $01, $02, $03, $03, $03, $04, $05, $06, $06, $07, $08, $03, $03, $03
    db $00, $00, $09, $03, $03, $03, $03, $03, $0a, $0b, $06, $0c, $0d, $03, $03, $03
    db $00, $00, $0e, $03, $03, $03, $03, $03, $03, $0f, $06, $10, $11, $03, $03, $03
    db $00, $00, $12, $03, $03, $03, $03, $03, $03, $13, $06, $10, $14, $03, $03, $03
    db $00, $00, $15, $03, $03, $03, $03, $03, $03, $16, $06, $17, $18, $03, $03, $03
    db $00, $00, $00, $19, $03, $03, $03, $03, $03, $1a, $06, $1b, $03, $03, $03, $03
    db $00, $00, $00, $1c, $03, $03, $03, $03, $1d, $06, $06, $1e, $03, $03, $03, $03
    db $00, $00, $00, $1f, $20, $21, $22, $23, $24, $06, $06, $25, $03, $03, $03, $03
    db $00, $00, $00, $26, $06, $06, $06, $06, $06, $06, $06, $27, $28, $03, $03, $03
    db $00, $00, $00, $29, $2a, $06, $06, $06, $06, $06, $2b, $2c, $2d, $03, $03, $03
    db $00, $00, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $03, $03, $03
    db $00, $00, $39, $3a, $3b, $3c, $3d, $3e, $33, $3f, $40, $41, $42, $03, $03, $03
    db $00, $39, $43, $06, $06, $06, $44, $45, $06, $06, $06, $46, $47, $03, $03, $03
    db $39, $43, $06, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $06, $50, $03, $03, $03
    db $43, $06, $51, $52, $53, $54, $55, $56, $57, $55, $58, $59, $5a, $5b, $03, $03
    db $06, $06, $5c, $5d, $5e, $5f, $06, $60, $61, $06, $62, $63, $64, $65, $19, $03
    db $06, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $06, $06, $6e, $6f, $70, $71, $03
    db $06, $72, $73, $74, $74, $74, $75, $76, $76, $77, $78, $78, $78, $78, $79, $03
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $7a, $7b
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $7c, $7d

Image573PaletteIndex:: ; 0x5d50
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01, $01
    db $00, $00, $01, $01, $01, $01, $01, $01, $21, $01, $01, $03, $01, $01, $01, $01
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $21, $03, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03

Image573Tileset:: ; 0x5e90
    INCBIN "gfx/bank0af_Image573_5e90.2bpp"

Image574Tilemap:: ; 0x6670
    db $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $00, $00, $00, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19
    db $00, $00, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27
    db $28, $29, $1c, $1c, $1c, $1c, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33
    db $34, $35, $36, $1c, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $1c, $41
    db $42, $43, $44, $45, $46, $45, $45, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $1c, $1c, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d
    db $5e, $5f, $52, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c
    db $6d, $6e, $52, $60, $6f, $00, $00, $70, $71, $72, $73, $74, $75, $76, $77, $78
    db $79, $7a, $52, $7b, $7c, $00, $00, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85
    db $86, $87, $88, $89, $7c, $00, $00, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $00, $00, $00, $98, $99, $9a, $9b, $9c, $9d, $00, $9e
    db $9f, $a0, $a1, $52, $a2, $00, $00, $00, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa
    db $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca
    db $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea
    db $eb, $ec, $ed, $ee, $1c, $1c, $1c, $1c, $1c, $ef, $f0, $f1, $f2, $f3, $f4, $f5
    db $f6, $f7, $f8, $f9, $1c, $1c, $1c, $1c, $1c, $1c, $fa, $fb, $fc, $fd, $fe, $52
    db $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $52

Image574PaletteIndex:: ; 0x67b0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03
    db $01, $01, $01, $01, $01, $21, $21, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $00
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01
    db $01, $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $03, $01
    db $01, $01, $04, $04, $01, $00, $00, $00, $06, $06, $06, $07, $01, $03, $03, $03
    db $01, $01, $01, $01, $00, $00, $00, $06, $06, $06, $06, $00, $03, $03, $03, $00
    db $01, $01, $04, $04, $02, $00, $00, $00, $00, $02, $02, $00, $02, $03, $03, $03
    db $04, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $01, $01, $01
    db $01, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $01, $01
    db $01, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $00, $00
    db $01, $0b, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0e, $0e, $08, $08, $00

Image574Tileset:: ; 0x68f0
    INCBIN "gfx/bank0af_Image574_68f0.2bpp"

Image575Tilemap:: ; 0x79d0
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $14, $14, $14, $14, $14, $15, $16, $17, $18, $19, $0f
    db $1a, $1b, $1c, $1d, $14, $14, $14, $14, $14, $1e, $1f, $20, $21, $22, $23, $24
    db $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44
    db $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54
    db $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64
    db $65, $66, $67, $0f, $68, $69, $69, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71
    db $72, $73, $74, $75, $76, $69, $69, $69, $77, $78, $79, $7a, $7b, $7c, $69, $7d
    db $7e, $7f, $80, $81, $82, $69, $69, $83, $84, $85, $86, $87, $88, $89, $8a, $8b
    db $8c, $8d, $0f, $8e, $82, $69, $69, $8f, $90, $91, $92, $93, $94, $95, $96, $97
    db $98, $99, $0f, $9a, $9b, $69, $69, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4
    db $a5, $a6, $0f, $9a, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2
    db $b3, $b4, $0f, $b5, $b6, $14, $14, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf
    db $c0, $c1, $c2, $c3, $c4, $c3, $c3, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd
    db $ce, $cf, $d0, $14, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $14, $db
    db $dc, $dd, $14, $14, $14, $14, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7
    db $69, $69, $e8, $e9, $14, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4
    db $69, $69, $69, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01
    db $69, $69, $69, $69, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d

Image575PaletteIndex:: ; 0x7b10
    db $01, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $00, $00, $00
    db $01, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $00, $00
    db $01, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $01, $01
    db $04, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $01, $01, $01
    db $01, $01, $04, $04, $02, $00, $00, $00, $00, $02, $02, $00, $01, $03, $03, $03
    db $01, $01, $01, $01, $00, $00, $00, $06, $06, $06, $06, $00, $01, $03, $03, $00
    db $01, $01, $04, $04, $01, $00, $00, $00, $06, $06, $06, $07, $01, $03, $03, $03
    db $01, $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $03, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $00
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $01, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $01, $01, $01, $01, $01, $21, $21, $01, $01, $01, $01, $01, $01, $03, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09
    db $01, $01, $01, $01, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09

Image575TilesetPart1:: ; 0x7c50
    INCBIN "gfx/bank0af_Image575Part1_7c50.2bpp"

