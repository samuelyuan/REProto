SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

DeathScreenTileset:: ; 0x4000
    INCBIN "gfx/bank00d_deathscreen_4000.2bpp"

DeathScreenTilemap:: ; 0x46e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $03, $04, $05, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $07, $08, $09, $0a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $0b, $0c, $0d, $0e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $0f, $10, $11, $12, $00, $00, $00, $00, $13, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $14, $15, $16, $17, $00, $00, $18, $19, $1a, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $1b, $1c, $1d, $1e, $00, $00, $1f, $20, $21, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $22, $23, $00, $00, $00, $00, $24, $25, $26, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $27, $28, $29, $2a, $00, $2b, $2c, $2d, $2e, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $2f, $30, $31, $32, $00, $33, $34, $35, $36, $37, $00, $00, $00, $00, $00
    db $00, $00, $00, $38, $39, $3a, $3b, $00, $3c, $3d, $3e, $3f, $40, $00, $00, $00, $00, $00
    db $00, $00, $00, $41, $42, $43, $44, $45, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $46, $47, $48, $49, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $4a, $4b, $4c, $4d, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $4e, $4f, $50, $51, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $52, $53, $54, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 

bank00d_4848:
    db $00, $00, $00, $13, $00, $00, $55, $56, $57, $00, $58, $58, $58, $58, $58, $58, $58, $58
    db $00, $18, $19, $1a, $00, $00, $59, $5a, $5b, $00, $58, $58, $58, $58, $58, $58, $58, $58
    db $00, $1f, $20, $21, $00, $00, $5c, $5d, $5e, $00, $58, $58, $58, $58, $58, $58, $58, $58
    db $00, $24, $25, $26, $00, $00, $5f, $60, $61, $00, $58, $58, $58, $58, $58, $58, $58, $58
    db $2b, $2c, $2d, $2e, $00, $00, $62, $63, $64, $65, $58, $58, $58, $58, $58, $58, $58, $58
    db $33, $34, $35, $36, $37, $66, $67, $68, $69, $6a, $58, $58, $58, $58, $58, $58, $58, $58
    db $3c, $3d, $3e, $3f, $40, $00, $6b, $6c, $6d, $00, $58, $58, $58, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58, $58

DeathScreenPaletteIndex:: ; 0x4920
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

bank00d_4a88:
    db $00, $00, $00, $01, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $00, $00, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    
DeathScreenPaletteBGP:: ; 0x4b60
    db $9a, $10, $51, $08, $28, $04, $00, $00
    db $00, $00, $b1, $29, $bf, $56, $a5, $14
    db $00, $00, $00, $54, $bf, $56, $a5, $14
    db $00, $7c, $00, $7c, $00, $7c, $00, $7c
    db $00, $7c, $00, $7c, $00, $7c, $00, $7c
    db $00, $7c, $00, $7c, $00, $7c, $00, $7c
    db $00, $7c, $00, $7c, $00, $7c, $00, $7c
    db $00, $7c, $00, $7c, $00, $7c, $00, $7c
    db $00, $00, $9c, $31, $50, $25, $21, $04
    db $00, $00, $9c, $31, $40, $41, $84, $10

PauseScreenTileset:: ; 0x4bb0
    INCBIN "gfx/bank00d_pausescreen_4bb0.2bpp"

PauseScreenTilemap:: ; 0x5420
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $02, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $04, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $07, $08, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $09, $0a, $0b, $00
    db $00, $00, $00, $00, $0c, $0d, $0e, $00, $00, $00, $00, $00, $00, $00, $0f, $10, $11, $00
    db $00, $00, $00, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $00, $00, $00, $1b, $1c, $00
    db $00, $00, $00, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $00, $27, $28, $29, $00
    db $00, $00, $00, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $00, $34, $35, $36, $00
    db $00, $00, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $00
    db $00, $00, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $00
    db $00, $00, $00, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $00, $5f, $60, $61, $00
    db $00, $00, $00, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $00, $6c, $6d, $6e, $00
    db $00, $00, $00, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $00, $00, $78, $79, $7a, $00
    db $00, $00, $00, $00, $7b, $7c, $7d, $00, $00, $00, $00, $00, $00, $00, $7e, $7f, $80, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $27, $28, $81, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $82, $35, $83, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $84, $85, $86, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

PauseScreenPaletteIndex:: ; 0x5588
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $02, $03, $02, $02, $02, $02, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $00, $00, $00, $03, $02, $02, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $00, $00, $00, $00, $02, $02, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $00, $00, $00, $00, $03, $02, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $00, $00, $00, $03, $02, $02, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $02, $03, $03, $02, $02, $02, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

PauseScreenPalette:: ; 0x56f0
    dw $7fff, $063c, $0574, $0000
    dw $7fff, $6b5f, $000a, $001f
    dw $7fff, $5ad6, $318c, $0000
    dw $7fff, $5ad6, $0574, $0000
    dw $7c00, $7c00, $7c00, $7c00
    dw $7c00, $7c00, $7c00, $7c00
    dw $7c00, $7c00, $7c00, $7c00
    dw $7c00, $7c00, $7c00, $7c00

    db $00, $00, $9c, $31, $50, $25, $21, $04, $00, $00, $9c, $31, $40, $41, $84, $10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $f8, $7f, $ff
    db $f9, $07, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $7f, $80, $7d, $82, $f3, $fc

SaveScreenTileset:: ; 0x5770
    INCBIN "gfx/bank00d_savescreen_5770.2bpp"

SaveScreenTilemap:: ; 0x6930
    db $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0a, $0a, $0a
    db $00, $00, $00, $00, $00, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17
    db $00, $00, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $00, $24, $25, $26
    db $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $00
    db $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $46, $47, $00
    db $48, $49, $4a, $4b, $46, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $46, $56, $00
    db $46, $46, $46, $57, $58, $59, $5a, $5b, $5c, $46, $5d, $5e, $5f, $60, $61, $62, $46, $63
    db $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $46, $74
    db $00, $00, $00, $00, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82
    db $00, $00, $00, $00, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $46
    db $00, $00, $00, $00, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $46
    db $00, $00, $00, $00, $00, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $46
    db $00, $00, $00, $00, $00, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $46
    db $00, $00, $00, $00, $00, $b5, $b6, $b7, $b8, $46, $46, $b9, $ba, $bb, $bc, $bd, $46, $46
    db $00, $00, $00, $00, $00, $be, $bf, $c0, $c1, $46, $46, $46, $c2, $46, $c3, $46, $c4, $c5
    db $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7
    db $46, $46, $46, $46, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $00, $00, $00, $00
    db $46, $46, $46, $46, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $00, $e9, $ea, $eb, $ec, $00, $00
    db $46, $46, $46, $46, $46, $ed, $ee, $ef, $46, $f0, $f1, $00, $f2, $f3, $f4, $f5, $f6, $00
    db $46, $46, $46, $46, $46, $f7, $46, $46, $46, $f8, $f9, $00, $00, $fa, $fb, $00, $00, $00
    db $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $fc, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e

SaveScreenPaletteIndex:: ; 0x6abc
    db $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $02, $02, $02, $02, $02, $02, $02, $02
    db $01, $01, $01, $01, $01, $01, $01, $04, $04, $02, $02, $02, $02, $02, $00, $00, $02, $02
    db $01, $01, $01, $01, $00, $00, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $02, $02, $02, $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $0a, $0a, $0a, $0a, $0a, $0a, $02, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a

SaveScreenPalette:: ; 0x6c48 
    dw $29f6, $214d, $10a6, $0000
    dw $0160, $016e, $0008, $0000
    dw $7fff, $4a52, $294a, $0000
    dw $7fff, $214d, $10a6, $0000
    dw $4a52, $016e, $0008, $0000
    dw $7fff, $214d, $10a6, $0000
    dw $7fff, $29f6, $214d, $10a6
    dw $7c00, $7c00, $7c00, $7c00
    
    dw $0000, $7fe0, $5280, $0000

    ds $1370, $00
