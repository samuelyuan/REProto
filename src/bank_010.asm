SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

IntroScene1Tilemap:: ; 0x4000
    db $00, $01, $02, $03, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0c, $0c
    db $0c, $0d, $0e, $03, $0f, $10, $03, $11, $12, $13, $14, $15, $0b, $0c, $0c, $0c
    db $0c, $0c, $16, $03, $17, $18, $19, $03, $1a, $1b, $1c, $1d, $0b, $0c, $0c, $0c
    db $0c, $0c, $0c, $03, $1e, $1f, $20, $21, $22, $23, $24, $25, $0b, $0c, $26, $27
    db $0c, $0c, $0c, $03, $03, $28, $29, $21, $2a, $2b, $2c, $2d, $0b, $0c, $2e, $2f
    db $0c, $0c, $0c, $03, $30, $31, $32, $21, $33, $34, $35, $36, $0b, $0c, $37, $38
    db $0c, $39, $3a, $03, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $0b, $0c, $0c, $43
    db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $0b, $0c, $0c, $0c
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $0b, $0c, $5c, $5d
    db $03, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $0b, $0c, $69, $6a
    db $03, $5e, $5f, $60, $61, $62, $63, $64, $6b, $6c, $6d, $68, $0b, $0c, $6e, $6f
    db $70, $51, $52, $53, $54, $55, $56, $57, $58, $71, $72, $5b, $0b, $0c, $73, $74
    db $75, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $0b, $0c, $0c, $0c
    db $0c, $76, $77, $03, $3b, $78, $79, $7a, $3f, $40, $41, $42, $0b, $0c, $0c, $43
    db $0c, $0c, $0c, $03, $03, $7b, $7c, $21, $33, $34, $35, $36, $0b, $0c, $37, $38
    db $0c, $0c, $0c, $03, $03, $7d, $7e, $21, $2a, $2b, $2c, $2d, $0b, $0c, $2e, $2f
    db $0c, $0c, $0c, $03, $03, $7f, $80, $21, $22, $23, $24, $25, $0b, $0c, $26, $27
    db $0c, $0c, $16, $03, $03, $81, $82, $83, $84, $85, $1c, $1d, $0b, $0c, $0c, $0c
    db $0c, $0d, $0e, $03, $0f, $10, $03, $86, $87, $88, $14, $15, $0b, $0c, $0c, $0c
    db $00, $01, $02, $03, $03, $89, $8a, $8b, $07, $8c, $8d, $0a, $0b, $0c, $0c, $0c

IntroScene1TilemapPaletteIndex:: ; 0x4140
    db $00, $00, $00, $00, $00, $06, $06, $06, $01, $06, $02, $02, $05, $02, $02, $02
    db $00, $00, $00, $00, $06, $06, $00, $06, $06, $06, $02, $02, $05, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $02, $02, $05, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $06, $02, $02, $05, $02, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $06, $02, $02, $05, $02, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $06, $02, $02, $05, $02, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $02, $02, $05, $02, $02, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $06, $06, $02, $02, $05, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $02, $05, $02, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $02, $05, $02, $05, $05
    db $00, $20, $20, $20, $20, $20, $20, $20, $05, $05, $05, $22, $05, $02, $05, $05
    db $00, $20, $20, $20, $00, $20, $20, $20, $25, $05, $05, $22, $05, $02, $05, $05
    db $00, $20, $20, $20, $20, $20, $20, $20, $26, $26, $22, $22, $05, $02, $02, $02
    db $00, $00, $00, $00, $20, $00, $00, $00, $26, $26, $22, $22, $05, $02, $02, $25
    db $00, $00, $00, $00, $00, $00, $00, $00, $21, $26, $22, $22, $05, $02, $25, $25
    db $00, $00, $00, $00, $00, $00, $00, $00, $21, $26, $22, $22, $05, $02, $25, $25
    db $00, $00, $00, $00, $00, $00, $00, $00, $21, $26, $22, $22, $05, $02, $25, $25
    db $00, $00, $20, $00, $00, $00, $00, $00, $01, $06, $22, $22, $05, $02, $02, $02
    db $00, $20, $20, $00, $26, $26, $00, $01, $06, $06, $22, $22, $05, $02, $02, $02
    db $20, $20, $20, $00, $00, $01, $01, $06, $22, $06, $02, $22, $05, $02, $02, $02

IntroScene1Tileset:: ; 0x4280
    INCBIN "gfx/image_010_4280.2bpp"

    INCBIN "gfx/image_010_4a80.2bpp"

IntroScene3Tilemap:: ; 0x4b60
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $15, $37, $38, $39, $3a, $3b, $3c, $3d, $3e
    db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
    db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $81, $81, $90, $91, $92, $93, $94, $95, $96, $97, $81, $98, $99, $9a, $9b
    db $9c, $81, $81, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9
    db $aa, $81, $81, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7
    db $b8, $81, $81, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5
    db $c6, $81, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4
    db $d5, $81, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $81, $e0, $e1, $e2
    db $e3, $e4, $81, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1
    db $f2, $f3, $f4, $f5, $f6, $f7, $15, $15, $15, $f8, $f9, $fa, $fb, $fc, $fd, $fe
    db $f8, $ff, $00, $01, $02, $03, $04, $05, $15, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $15, $11, $12, $13, $14, $15, $04, $15, $16, $81, $17, $18
    db $19, $1a, $1b, $1c, $15, $1d, $1e, $1f, $15, $15, $15, $15, $20, $21, $22, $23

IntroScene3PaletteIndex:: ; 0x4ca0
    db $00, $04, $04, $04, $02, $00, $02, $02, $02, $03, $02, $02, $02, $02, $02, $02
    db $00, $04, $04, $04, $02, $00, $02, $02, $02, $04, $02, $02, $02, $02, $02, $02
    db $05, $05, $04, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $05, $05, $04, $04, $02, $02, $02, $00, $02, $02, $02, $05, $02, $02, $02, $02
    db $05, $05, $05, $05, $02, $00, $02, $02, $02, $02, $02, $05, $07, $02, $02, $02
    db $05, $05, $05, $05, $02, $02, $02, $00, $06, $02, $02, $05, $07, $02, $02, $02
    db $05, $05, $05, $05, $02, $03, $03, $01, $01, $01, $05, $05, $05, $02, $02, $02
    db $05, $05, $04, $04, $02, $01, $01, $01, $01, $06, $07, $05, $05, $02, $02, $02
    db $05, $00, $00, $04, $02, $03, $01, $01, $01, $06, $07, $05, $05, $02, $02, $02
    db $05, $00, $00, $04, $02, $03, $01, $01, $01, $06, $07, $02, $05, $02, $02, $02
    db $05, $00, $00, $00, $02, $00, $03, $01, $06, $06, $07, $05, $05, $07, $02, $02
    db $05, $00, $00, $04, $02, $00, $00, $01, $01, $01, $07, $05, $05, $05, $02, $02
    db $05, $00, $00, $04, $02, $00, $00, $02, $06, $01, $02, $05, $05, $05, $02, $01
    db $05, $00, $04, $04, $02, $00, $00, $01, $01, $01, $02, $05, $05, $05, $02, $01
    db $05, $00, $04, $04, $02, $00, $00, $01, $06, $01, $02, $05, $02, $05, $02, $01
    db $05, $00, $00, $04, $02, $00, $00, $02, $06, $01, $01, $07, $05, $05, $05, $02
    db $00, $00, $00, $05, $02, $00, $00, $00, $00, $01, $01, $07, $05, $05, $05, $02
    db $00, $00, $08, $0d, $0a, $08, $09, $09, $00, $09, $09, $0f, $0d, $0d, $0d, $0a
    db $08, $08, $08, $08, $00, $09, $09, $09, $09, $00, $29, $0a, $0a, $02, $0d, $0a
    db $08, $08, $08, $08, $00, $09, $09, $09, $00, $00, $00, $00, $0a, $0a, $0d, $0a

IntroScene3Tileset:: ; 0x4de0
    INCBIN "gfx/image_010_4de0.2bpp"

    INCBIN "gfx/image_010_5fe0.2bpp"

IntroScene4Tilemap:: ; 0x6020
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0c, $0c, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $0c, $0c, $0c, $0c
    db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $0c, $0c
    db $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46
    db $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56
    db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76
    db $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86
    db $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96
    db $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $5d, $a3, $a4, $a5
    db $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5
    db $0c, $0c, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3
    db $0c, $0c, $c4, $c5, $c6, $c7, $c8, $0c, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0
    db $0c, $0c, $d1, $d2, $d3, $d4, $0c, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd
    db $de, $df, $e0, $e1, $e2, $5d, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec
    db $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc
    db $fd, $fe, $ff, $00, $01, $02, $0c, $03, $04, $05, $06, $07, $08, $09, $0a, $0b
    db $0c, $0d, $0e, $0f, $10, $11, $0c, $0c, $12, $13, $14, $15, $16, $17, $18, $19
    db $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29

IntroScene4PaletteIndex:: ; 0x6160
    db $00, $00, $00, $02, $05, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $02, $04, $04, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $04, $00, $00, $02, $00, $04, $02, $02, $02, $02, $02, $05, $05, $05, $05, $05
    db $04, $00, $00, $02, $01, $04, $02, $02, $06, $06, $02, $02, $02, $02, $02, $02
    db $04, $00, $00, $02, $01, $02, $02, $06, $01, $01, $01, $06, $02, $02, $02, $02
    db $04, $00, $00, $02, $01, $02, $06, $01, $01, $01, $01, $02, $02, $02, $02, $06
    db $02, $05, $00, $03, $01, $02, $00, $06, $06, $01, $01, $06, $02, $02, $06, $06
    db $05, $05, $00, $02, $02, $06, $06, $06, $06, $06, $06, $06, $06, $02, $02, $06
    db $05, $05, $05, $05, $02, $00, $01, $01, $01, $06, $01, $06, $06, $02, $06, $06
    db $05, $05, $00, $00, $02, $02, $02, $06, $06, $01, $01, $01, $06, $01, $06, $02
    db $05, $00, $05, $05, $02, $02, $03, $03, $06, $06, $01, $01, $01, $01, $01, $01
    db $00, $00, $05, $04, $02, $02, $01, $01, $01, $06, $06, $01, $01, $01, $01, $01
    db $00, $00, $04, $04, $02, $02, $02, $06, $06, $06, $06, $01, $01, $01, $01, $01
    db $00, $00, $04, $04, $02, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $00, $04, $02, $02, $00, $00, $01, $01, $01, $06, $01, $01, $01, $01, $01
    db $00, $04, $04, $02, $02, $00, $03, $06, $06, $06, $06, $01, $01, $01, $01, $01
    db $04, $04, $02, $02, $02, $03, $03, $06, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $04, $02, $0a, $0a, $09, $00, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $0d, $0d, $0d, $0e, $09, $08, $00, $00, $09, $09, $09, $09, $09, $09, $09, $09
    db $0d, $0d, $0a, $0e, $09, $08, $08, $08, $09, $09, $09, $09, $09, $09, $09, $09

IntroScene4Tileset:: ; 0x62a0
    INCBIN "gfx/image_010_62a0.2bpp"

    INCBIN "gfx/image_010_74a0.2bpp"

bank010_7540:
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $04
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_010_7574

    ld a, [de]
    dec de
    inc e
    dec e
    inc b
    ld e, $1f
    db $10
    dec d
    dec d
    jr nz, jr_010_757c

    ld hl, $1522
    dec d
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_010_759b

    ld a, [hl+]
    dec hl

jr_010_7574:
    dec d
    inc l
    dec l
    dec d
    ld l, $2f
    jr nc, jr_010_75ad

jr_010_757c:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_010_75bd

    ld a, [hl-]
    dec d
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc b
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, h
    ld c, l

jr_010_759b:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    inc b
    inc b
    inc b
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_010_75ad:
    ld e, l
    ld e, [hl]
    ld e, a
    inc b
    inc b
    inc b
    inc b
    ld h, b
    ld h, c
    ld h, d
    ld d, e
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_010_75bd:
    ld l, b
    ld l, c
    ld l, d
    inc b
    inc b
    inc b
    inc b
    ld l, e
    ld l, h
    ld l, l
    inc b
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc b
    inc b
    inc b
    inc b
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld a, a
    inc b
    inc b
    inc b
    inc b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    inc b
    inc b
    inc b
    inc b
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    inc b
    inc b
    inc b
    inc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld a, a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    or b
    or c
    or d
    or e
    or h
    or l
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld d, e
    or [hl]
    or a
    cp b
    cp c
    cp d
    inc b
    inc b
    inc b
    inc b
    cp e
    cp h
    cp l
    inc b
    inc b
    inc b
    inc b
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c3c3

    jp $c4c3


    push bc
    add $c7
    ret z

    ret z

    ret z

    ret


    jp z, $cccb

    call Call_010_7f7f
    ld a, a
    ld a, a
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $01
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0206
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $02
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld b, $06
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld b, $06
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0206
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld b, $02
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    ld bc, $0601
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $ff83
    pop bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ret nc

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    rst $38
    ld [$f0ff], a
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $20
    rst $38
    or b
    rst $38
    ret c

    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $ff
    sbc a
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    call nz, $c0ff
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    ei
    rst $38
    push hl
    rst $38
    sbc e
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ld a, a
    rst $38
    call c, Call_010_7bff
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    sbc $ff
    add sp, -$01
    rst $30
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    sbc b
    rst $38
    db $ec
    rst $38
    ld [hl], b
    rst $38
    sbc b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, $ff
    rst $30
    rst $38
    and b
    rst $38
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp $ff
    ld hl, sp-$01
    jp $feff


    rst $38
    ld [hl], d
    rst $38
    cp b
    rst $38
    db $e3
    rst $38
    cp $ff
    cp h
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    xor $ff
    ldh a, [rIE]
    add b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    ldh [rIE], a
    add b
    rst $38
    call z, $b6ff
    rst $38
    call c, $38ff
    rst $38
    ret nc

    rst $38
    jr nc, @+$01

    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    rrca
    rst $38
    inc [hl]
    rst $38
    ret c

    rst $38
    ld h, c
    rst $38
    add $ff
    cp a
    rst $38
    sbc $ff
    ld a, h
    rst $38
    or e
    rst $38
    ld e, [hl]
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    pop af
    rst $38
    ld h, [hl]
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$d5ff]
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    add b
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    ret nz

    rst $38
    ld [bc], a
    rst $38
    cp $ff
    cp h
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    cp [hl]
    ret nz

    cp $c0
    sbc $e0
    cp $e0
    rst $28
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    db $fd
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr z, @+$01

    jr z, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nc, @+$01

    jr nz, @+$01

    jr @+$01

    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]

Call_010_7bff:
    rst $38
    ld a, $ff
    dec a
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
    add e
    add c
    pop bc
    add b
    pop bc
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $7e
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    sub b
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    dec c
    rst $38
    dec c
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec sp
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ld a, a
    cp $7e
    cp $7f
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    rst $38
    ccf
    rst $00
    ccf
    ld [hl], b
    rrca
    ldh a, [rIF]
    ld a, b
    add a
    ld hl, sp-$79
    cp b
    rst $00
    call c, $fce3
    db $e3
    db $ec
    di
    db $f4
    ei
    ld a, [hl]
    ld sp, hl
    ld a, d
    db $fd
    inc a
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    cpl
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld [de], a
    rst $38
    inc de
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    jr nc, @+$01

    ld [hl-], a
    rst $38
    inc [hl]
    rst $38
    jr nz, @+$01

    add hl, hl
    rst $38
    ld sp, $23ff
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    ld b, $ff
    rla
    cp $0f
    cp $2f
    cp $2d
    cp $5f
    db $fc
    ld e, a
    db $fc
    cp e
    db $fc
    cp a
    ld hl, sp-$47
    ld hl, sp+$78
    ld hl, sp+$70
    ld hl, sp+$78
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$f8], a
    ldh [$f0], a
    ldh [$c0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    ld bc, $8080
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$8f], a
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add c
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$cf]
    cp a
    ret nz

    db $fc
    add e
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    ldh a, [rIF]
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    rst $38
    nop
    ld a, b
    rlca
    ld a, $01
    rrca
    nop
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    rlca
    ld hl, sp-$7a
    ld a, c
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    ld a, $c1
    ld e, $e1
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    and a
    pop hl
    ld e, $ff
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    ld [$0000], sp
    nop
    db $fc
    nop
    add d
    ld a, h
    rrca
    ldh a, [$f1]
    ld c, $7f
    add b
    rra
    ldh [rSB], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld a, $c1
    ld e, b
    and a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld a, b
    add a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    xor $fd
    adc $fd
    adc [hl]
    cp $8d
    cp $8c
    cp $8c
    cp $8c
    cp $8c
    cp $8c
    cp $8d
    cp $8d
    cp $8d
    adc $bd
    adc $b5
    adc $b5
    xor $95
    xor $99
    db $ec
    sbc b
    db $fc
    sbc h
    rst $38
    sbc h
    db $fc
    adc [hl]
    call c, $dc8e
    add [hl]
    db $fc
    adc [hl]
    call c, $dc8e
    adc [hl]
    db $fc
    adc [hl]
    db $ec
    adc [hl]
    call z, $8c8e
    adc [hl]
    adc b
    adc h

jr_010_7f6c:
    add hl, bc
    sbc h

jr_010_7f6e:
    jr jr_010_7f6c

    jr jr_010_7f6e

    ld [$08fc], sp
    db $f4
    ld e, h
    and e
    rst $38
    nop
    db $eb
    inc d
    rst $38
    nop
    rst $38

Call_010_7f7f:
    nop
    rlca
    ld hl, sp-$80
    ld a, a
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    inc bc
    db $fc
    db $10
    rst $28
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    or $09
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, h
    add e
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ei
    rlca
    ei
    rlca
    ei
    rlca
    di
    rlca
    jp $4307


    add a
    ld h, e
    rlca
    inc hl
    rlca
    inc sp
    rlca
    sbc e
    rlca
    dec bc
    rlca
    inc bc
    rlca
    ld b, e
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    inc bc
    rlca
    rra
    adc a
    rra
