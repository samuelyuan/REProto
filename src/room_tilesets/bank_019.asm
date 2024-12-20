SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

Image34TilesetPart2:: ; 0x4000
    INCBIN "gfx/bank018_Image34Part2_4000.2bpp"

Image35Tilemap:: ; 0x4210
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07
    db $00, $00, $00, $00, $00, $00, $00, $08, $09, $03, $0a, $0b, $0c, $0d, $0e, $0f
    db $00, $00, $00, $10, $11, $09, $12, $0a, $13, $14, $0c, $15, $16, $17, $18, $19
    db $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $25, $26, $27, $28
    db $29, $2a, $2b, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $26, $2c, $2d
    db $2e, $2f, $25, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $00
    db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $00
    db $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $00
    db $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69
    db $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $73, $73, $74, $75, $76, $77
    db $25, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $80, $81, $82, $83, $84, $85
    db $25, $86, $87, $88, $25, $25, $89, $8a, $8a, $8a, $8b, $8c, $8d, $8e, $8f, $90
    db $25, $91, $92, $93, $94, $25, $25, $25, $95, $96, $97, $00, $98, $99, $9a, $9b
    db $25, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $00, $00, $00, $00, $a3, $a4, $00, $a5
    db $a6, $a7, $a8, $a9, $aa, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $00, $b3
    db $b4, $b5, $b6, $10, $11, $b7, $03, $aa, $b8, $b9, $0c, $0c, $ba, $00, $bb, $bc
    db $bd, $be, $00, $00, $00, $00, $bf, $c0, $aa, $aa, $c1, $c2, $c3, $c4, $c5, $c6
    db $c7, $00, $00, $00, $00, $00, $00, $00, $c8, $c9, $aa, $ca, $05, $cb, $cc, $cd
    db $ce, $00, $00, $00, $00, $00, $00, $00, $00, $cf, $c9, $aa, $d0, $d1, $d2, $d3
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $d4, $aa, $aa, $d5, $d6, $d7

Image35PaletteIndex:: ; 0x4350
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $06
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $06, $06
    db $00, $00, $00, $00, $06, $06, $06, $02, $02, $02, $02, $02, $02, $02, $06, $00
    db $06, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00
    db $02, $02, $02, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $00
    db $02, $02, $06, $00, $06, $00, $00, $00, $04, $04, $03, $03, $03, $03, $00, $00
    db $02, $02, $06, $06, $06, $00, $00, $03, $01, $01, $01, $03, $03, $03, $00, $00
    db $02, $02, $02, $06, $06, $00, $03, $03, $01, $01, $01, $03, $03, $03, $00, $00
    db $02, $02, $02, $06, $06, $04, $04, $04, $04, $04, $04, $04, $04, $04, $00, $00
    db $02, $02, $02, $06, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $06, $06, $06, $06, $06, $06, $06, $06, $06, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $06, $00
    db $02, $02, $02, $02, $06, $06, $02, $02, $02, $02, $02, $02, $02, $06, $00, $00
    db $02, $02, $02, $06, $00, $00, $00, $00, $06, $02, $02, $02, $02, $06, $00, $00
    db $02, $02, $06, $20, $20, $00, $20, $00, $00, $00, $00, $00, $02, $02, $06, $00
    db $02, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $06, $00
    db $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $06, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $06, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $00

Image35Tileset:: ; 0x4490
    INCBIN "gfx/bank019_Image35_4490.2bpp"

Image36Tilemap:: ; 0x5210
    db $00, $01, $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $05, $06, $06
    db $07, $08, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $09, $06, $06
    db $0a, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0b, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0c, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0d, $0e, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $0f, $10, $06, $06, $06, $11, $12
    db $03, $03, $03, $03, $03, $03, $03, $13, $14, $15, $16, $17, $18, $19, $1a, $1b
    db $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
    db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
    db $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b
    db $7c, $7d, $03, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $04, $03, $03, $03, $a6
    db $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $03, $03, $03, $03, $03, $03, $03
    db $03, $b0, $b1, $b2, $b3, $b4, $b5, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $b6, $b7, $b8, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03

Image36PaletteIndex:: ; 0x5350
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $04, $04, $04, $01, $01, $01, $01, $01, $07, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $04, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $06, $06, $06, $04, $00, $00, $00, $00, $00, $00, $00, $03, $03, $01, $01, $00
    db $04, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $43, $01, $01, $01, $01
    db $03, $04, $00, $00, $00, $00, $07, $04, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $06, $00, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image36Tileset:: ; 0x5490
    INCBIN "gfx/bank019_Image36_5490.2bpp"

Image37Tilemap:: ; 0x6020
    db $00, $01, $01, $01, $01, $01, $01, $02, $03, $03, $03, $03, $03, $03, $03, $03
    db $04, $05, $01, $01, $01, $01, $01, $06, $07, $03, $03, $03, $03, $03, $03, $03
    db $08, $09, $0a, $01, $01, $01, $01, $01, $0b, $03, $03, $03, $03, $03, $03, $0c
    db $08, $08, $0d, $01, $01, $01, $01, $01, $0b, $03, $03, $03, $03, $03, $0c, $0e
    db $08, $0f, $10, $01, $01, $01, $01, $06, $07, $03, $03, $03, $03, $11, $12, $13
    db $14, $15, $01, $01, $01, $01, $01, $16, $03, $03, $03, $17, $18, $19, $1a, $1b
    db $1c, $1d, $01, $01, $01, $01, $1e, $1f, $03, $03, $20, $21, $22, $23, $24, $25
    db $26, $27, $28, $29, $2a, $2b, $2c, $03, $03, $2d, $2e, $2f, $30, $31, $32, $33
    db $34, $35, $36, $03, $03, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41
    db $03, $42, $43, $44, $45, $2a, $2a, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $03, $03, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
    db $03, $5d, $5e, $5f, $01, $01, $01, $60, $61, $62, $63, $64, $65, $66, $67, $68
    db $03, $69, $6a, $01, $01, $01, $01, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73
    db $03, $69, $74, $01, $75, $76, $77, $6b, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $03, $89, $8a, $8b, $8c, $8d, $8e
    db $01, $01, $01, $01, $01, $01, $8f, $90, $91, $92, $03, $03, $93, $94, $95, $96
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $97, $98, $03, $03, $99, $9a
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $9b, $03, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $9c, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $9d, $9e, $03, $03, $03

Image37PaletteIndex:: ; 0x6160
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $00
    db $01, $01, $01, $01, $01, $01, $01, $21, $21, $01, $01, $01, $01, $04, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image37Tileset:: ; 0x62a0
    INCBIN "gfx/bank019_Image37_62a0.2bpp"

Image38Tilemap:: ; 0x6c90
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $05, $05, $05
    db $00, $00, $07, $08, $00, $00, $00, $00, $00, $00, $00, $00, $09, $05, $05, $05
    db $0a, $0b, $0c, $0c, $0d, $0e, $00, $00, $00, $00, $00, $00, $00, $0f, $05, $05
    db $0c, $0c, $10, $11, $0c, $0c, $12, $00, $00, $00, $00, $00, $13, $05, $14, $15
    db $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $0c
    db $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44
    db $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $42, $51, $52, $53
    db $45, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $42, $5e, $5f, $60, $61
    db $45, $54, $62, $63, $64, $0c, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $45, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $42, $42, $79, $60, $7a
    db $7b, $7c, $7d, $7e, $7f, $7f, $80, $81, $82, $83, $84, $85, $42, $60, $86, $87
    db $88, $89, $8a, $8b, $8c, $05, $05, $05, $05, $8d, $82, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $7f, $7f, $98, $99, $9a, $05, $8d, $82, $8e, $0c, $9b
    db $00, $9c, $9d, $9e, $9f, $07, $00, $00, $00, $a0, $a1, $05, $05, $8d, $82, $8e
    db $a2, $a3, $a4, $a5, $0c, $0c, $a6, $00, $00, $00, $a7, $a8, $05, $05, $05, $8d
    db $a9, $0c, $0c, $0c, $0c, $aa, $ab, $00, $00, $00, $00, $ac, $05, $05, $05, $05
    db $00, $ad, $ae, $ae, $af, $00, $00, $00, $00, $00, $b0, $05, $05, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $b1, $b2, $05, $05, $05, $05, $05

Image38PaletteIndex:: ; 0x6dd0
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $06, $06, $06, $04, $04, $04, $04, $04, $04, $01, $01, $01, $00
    db $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $04, $04, $04, $04, $04, $07, $07, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $07, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $03, $01, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $04, $07, $00, $00, $00, $00, $00, $00, $20, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $07, $00, $00, $00, $20, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $02, $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image38Tileset:: ; 0x6f10
    INCBIN "gfx/bank019_Image38_6f10.2bpp"

Image39Tilemap:: ; 0x7a40
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $02, $02, $03
    db $00, $00, $00, $00, $00, $00, $00, $04, $02, $02, $02, $02, $02, $02, $05, $06
    db $00, $00, $00, $00, $00, $07, $08, $02, $02, $02, $02, $02, $02, $09, $0a, $0b
    db $0c, $0d, $0e, $0f, $10, $02, $02, $02, $02, $02, $02, $02, $09, $0a, $0b, $0b
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $11, $0b, $0b, $12
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $11, $0b, $0b, $13, $14
    db $15, $16, $17, $18, $19, $1a, $1b, $1c, $09, $02, $1d, $0b, $0b, $1e, $1f, $20
    db $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $0b, $0b, $2b, $2c, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $28, $36, $0b, $37, $38, $39, $3a, $3b, $3c
    db $3d, $3e, $3f, $40, $41, $42, $43, $0b, $0b, $44, $45, $46, $47, $48, $49, $4a
    db $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a
    db $5b, $5c, $5d, $5e, $5f, $60, $0b, $0b, $61, $62, $63, $64, $65, $66, $67, $68
    db $69, $6a, $6b, $6c, $6c, $6d, $6e, $0b, $0b, $6f, $70, $71, $72, $73, $74, $75
    db $76, $77, $78, $79, $7a, $7b, $7c, $7d, $0b, $7e, $7f, $80, $81, $82, $83, $84
    db $85, $86, $87, $88, $89, $8a, $8b, $8c, $0b, $8d, $8e, $6c, $8f, $90, $91, $92
    db $93, $94, $95, $96, $0b, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $00
    db $a1, $a2, $a3, $0b, $0b, $a4, $a5, $a6, $a7, $a8, $00, $00, $00, $00, $00, $00
    db $a9, $aa, $ab, $0b, $0b, $ac, $ad, $ae, $af, $b0, $b1, $00, $00, $00, $00, $00
    db $b2, $00, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $00, $00, $00, $00, $00
    db $00, $00, $00, $bc, $bd, $be, $bf, $c0, $00, $00, $00, $00, $00, $00, $00, $00

Image39PaletteIndex:: ; 0x7b80
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $07, $07, $01, $01, $01, $01, $01, $01, $41, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $06, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $02, $02, $01, $01, $00, $00, $00, $00, $00, $00, $00, $03
    db $00, $00, $02, $02, $02, $02, $01, $01, $01, $01, $03, $03, $03, $01, $01, $01
    db $00, $00, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

Image39TilesetPart1:: ; 0x7cc0
    INCBIN "gfx/bank019_Image39Part1_7cc0.2bpp"

