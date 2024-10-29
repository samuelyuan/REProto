SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    INCBIN "gfx/image_012_4000.2bpp"

    INCBIN "gfx/image_012_5200.2bpp"

    db $00, $01, $02, $03, $04, $05, $06, $07, $04, $04, $04, $08, $09, $0a, $0b, $0c
    db $0d, $0e, $0f, $10, $11, $12, $13, $14, $04, $04, $04, $15, $16, $17, $18, $19
    db $1a, $1b, $1c, $1d, $03, $1e, $1f, $20, $21, $04, $04, $22, $23, $24, $25, $26
    db $27, $28, $29, $2a, $2b, $11, $2c, $2d, $2e, $04, $04, $2f, $30, $31, $32, $33
    db $34, $35, $36, $37, $38, $03, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42
    db $43, $44, $45, $46, $47, $48, $11, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51
    db $52, $53, $54, $55, $56, $57, $03, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70
    db $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80
    db $81, $82, $71, $72, $83, $0a, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d
    db $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
    db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $0a, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $9d
    db $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db
    db $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb
    db $ec, $ed, $ee, $ef, $f0, $04, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa
    db $fb, $fc, $fd, $fe, $04, $04, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08
    db $09, $0a, $0b, $04, $04, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16
    db $17, $18, $04, $04, $04, $19, $1a, $1b, $1c, $04, $04, $1d, $1e, $1f, $20, $21
    db $00, $07, $04, $01, $01, $04, $03, $00, $00, $00, $00, $00, $02, $01, $01, $01
    db $00, $00, $07, $01, $01, $04, $03, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $00, $00, $00, $07, $01, $04, $04, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $00, $00, $00, $07, $01, $01, $04, $05, $00, $00, $00, $02, $01, $01, $01, $01
    db $05, $00, $00, $00, $07, $01, $04, $05, $00, $05, $05, $02, $01, $01, $01, $01
    db $05, $05, $00, $00, $07, $01, $01, $04, $05, $05, $05, $01, $01, $01, $01, $01
    db $05, $05, $05, $05, $00, $07, $01, $04, $00, $00, $02, $01, $01, $01, $01, $01
    db $05, $05, $03, $05, $05, $00, $01, $04, $05, $00, $02, $01, $01, $01, $01, $01
    db $03, $05, $05, $05, $05, $05, $07, $01, $03, $04, $03, $01, $01, $01, $01, $01
    db $00, $00, $03, $05, $05, $00, $03, $01, $05, $05, $03, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $03, $03, $03, $01, $03, $02, $02, $01, $01, $01, $01, $00
    db $00, $00, $00, $00, $03, $02, $03, $01, $03, $01, $02, $01, $01, $01, $01, $01
    db $00, $00, $00, $05, $03, $03, $03, $01, $03, $02, $02, $01, $01, $01, $01, $01
    db $00, $05, $05, $05, $05, $00, $03, $01, $05, $05, $03, $01, $01, $01, $01, $00
    db $05, $05, $05, $03, $05, $07, $01, $01, $03, $03, $03, $01, $01, $01, $01, $01
    db $03, $05, $05, $05, $07, $04, $01, $04, $07, $07, $03, $01, $01, $01, $01, $01
    db $05, $05, $07, $07, $01, $01, $04, $04, $00, $00, $02, $01, $01, $01, $01, $01
    db $00, $07, $04, $01, $01, $01, $04, $0d, $0b, $0a, $0d, $0a, $09, $09, $09, $09
    db $0f, $09, $09, $01, $01, $0c, $0c, $08, $08, $0a, $0d, $0a, $09, $09, $09, $09
    db $09, $09, $01, $01, $01, $0c, $0d, $08, $08, $00, $00, $0a, $0a, $09, $09, $09

    INCBIN "gfx/image_012_5570.2bpp"

    INCBIN "gfx/image_012_6770.2bpp"

    db $00, $01, $02, $02, $03, $04, $05, $05, $05, $06, $07, $08, $09, $0a, $0b, $0c
    db $0d, $00, $01, $02, $02, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18
    db $19, $1a, $1b, $1c, $02, $03, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26
    db $27, $28, $29, $2a, $2b, $02, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35
    db $36, $37, $38, $39, $3a, $2b, $3b, $3c, $02, $3d, $05, $3e, $3f, $40, $41, $42
    db $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
    db $53, $54, $55, $05, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61
    db $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6a, $6b, $6c, $6d, $6e, $6f, $70
    db $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $42, $7e, $7f
    db $80, $72, $73, $74, $81, $82, $83, $78, $84, $7a, $85, $86, $87, $88, $89, $8a
    db $8b, $8c, $64, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99
    db $9a, $9b, $55, $05, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $05, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6
    db $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6
    db $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6
    db $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6
    db $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $02, $f0, $f1, $f2, $f3, $f4, $f5
    db $f6, $f7, $f8, $f9, $fa, $fb, $fc, $02, $02, $02, $02, $fd, $fe, $ff, $00, $01
    db $02, $03, $04, $05, $02, $06, $07, $08, $02, $02, $09, $0a, $05, $0b, $0c, $99
    db $0d, $0e, $0f, $10, $11, $12, $05, $13, $02, $02, $14, $15, $16, $17, $18, $19
    db $01, $01, $01, $01, $04, $03, $00, $00, $00, $04, $07, $04, $03, $07, $01, $01
    db $04, $01, $01, $01, $01, $04, $03, $03, $03, $03, $07, $07, $03, $07, $01, $01
    db $00, $07, $01, $01, $01, $04, $03, $05, $05, $05, $03, $01, $01, $01, $01, $01
    db $00, $00, $07, $01, $01, $01, $04, $05, $00, $05, $03, $01, $01, $01, $01, $01
    db $05, $03, $00, $07, $01, $01, $04, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $05, $05, $05, $03, $07, $01, $04, $05, $05, $05, $03, $07, $01, $01, $01, $01
    db $03, $03, $03, $00, $03, $03, $04, $05, $05, $05, $05, $07, $01, $01, $01, $01
    db $05, $05, $05, $05, $05, $03, $01, $03, $03, $03, $03, $07, $01, $01, $01, $01
    db $03, $03, $00, $00, $00, $03, $01, $03, $02, $05, $03, $07, $01, $21, $01, $01
    db $03, $43, $20, $20, $00, $03, $01, $23, $02, $25, $03, $07, $01, $01, $01, $01
    db $05, $05, $25, $05, $05, $03, $01, $05, $05, $05, $03, $07, $01, $01, $01, $00
    db $03, $03, $23, $00, $03, $03, $04, $05, $05, $05, $00, $07, $01, $01, $01, $01
    db $03, $05, $05, $00, $03, $03, $04, $05, $05, $05, $03, $07, $01, $01, $01, $01
    db $05, $05, $05, $05, $05, $07, $04, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $05, $03, $05, $05, $07, $04, $04, $00, $03, $03, $03, $07, $01, $01, $01, $01
    db $03, $03, $00, $00, $07, $01, $04, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $03, $00, $00, $07, $01, $04, $05, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $00, $00, $00, $07, $01, $04, $05, $00, $00, $00, $00, $02, $01, $01, $09, $09
    db $08, $08, $0f, $09, $01, $0c, $08, $08, $00, $00, $08, $0a, $01, $09, $09, $00
    db $08, $0f, $0c, $09, $0c, $0b, $00, $08, $00, $00, $08, $0a, $09, $09, $09, $09

    INCBIN "gfx/image_012_6a10.2bpp"

    INCBIN "gfx/image_012_7b10.2bpp"

    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_012_7be3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1e
    rra
    jr nz, jr_012_7bf4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_012_7c04

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_012_7c14

jr_012_7be3:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_012_7c24

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_012_7bf4:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ccf
    ld b, l
    ld b, l
    ld b, l

jr_012_7c04:
    ld c, a
    ld d, b
    ld b, l
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec a
    ld d, [hl]
    ld e, $57
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_012_7c14:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_012_7c24:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld e, $74
    dec a
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld b, l
    ld a, c
    ld b, l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
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
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    dec a
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld e, $9b
    sbc h
    sub c
    ld d, a
    sbc l
    sbc [hl]
    sbc a
    sub e
    and b
    and c
    ld b, l
    and d
    ld b, l
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ld e, $ac
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    ld e, $b9
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    rrca
    add $c7
    ret z

    dec a
    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld h, c
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    ld e, $e4
    sub c
    ld e, $e5
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld e, $1e
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_012_7d01

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_012_7d11

    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0501

jr_012_7d01:
    dec b
    dec b
    nop
    nop
    nop
    dec b
    dec b
    nop
    dec b
    inc bc
    ld bc, $0101
    nop
    nop
    inc bc

jr_012_7d11:
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    dec b
    inc bc
    rlca
    inc bc
    inc bc
    rlca
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld bc, $0301
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0101
    nop
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    rlca
    ld bc, $0100
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    dec b
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    rlca
    ld bc, $0101
    nop
    ld bc, $0501
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0121
    ld bc, $0101
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    nop
    inc bc
    rlca
    ld bc, $0001
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101

jr_012_7e00:
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0909
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    add hl, bc
    ld hl, $0909
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $18
    jr nz, jr_012_7e00

    ld [hl-], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    rst $28
    db $10

jr_012_7e3a:
    cp $01
    or $09
    or $09
    or $09
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ld a, [$7d05]
    add d
    db $fd
    ld [bc], a
    or l
    ld c, d
    or l
    ld c, d
    cp a
    ld b, b
    ld a, [$da05]
    dec h
    rst $10
    jr z, jr_012_7e3a

    jr nz, @-$11

    ld [de], a
    cp l
    ld b, d
    ld b, $00
    stop
    and c
    nop
    inc bc
    nop
    inc bc
    add b
    inc c
    add b
    nop
    ret nz

    ld bc, $00c0
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$03], a
    ldh [rDIV], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $01
    cp $00
    rst $38
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
    cp $00
    ld [bc], a
    db $fc
    add h
    ld a, b
    adc b
    ld [hl], b
    adc a
    ld [hl], b
    rst $00
    ccf
    jp $c33f


    ccf
    db $e3
    inc e
    ld e, $00
    ld c, $00
    ld c, $00
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    rrca
    rrca
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
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    jr z, @+$21

    inc a
    rrca
    ld d, $0f
    ld d, a
    rrca
    ld d, a
    rrca
    rra
    rlca
    rrca
    rlca
    dec hl
    rlca
    add hl, hl
    rlca
    adc c
    rlca
    add c
    rlca
    sub l
    inc bc
    sub l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld c, e
    ld bc, $0102
    ld [hl+], a
    ld bc, $0023
    ld hl, $0500
    nop
    dec d
    nop
    sub c
    nop
    sub d
    nop
    db $ed
    ld [de], a
    push af
    ld a, [bc]
    or a
    ld c, b
    or [hl]
    ld c, c
    or $09
    jp c, $5a25

    and l
    db $db
    inc h
    ld e, c
    and [hl]
    xor l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    db $fd
    ld [bc], a
    sub $29
    sub $29
    sub $29
    ld a, [hl]
    add c
    db $eb
    inc d
    ld l, e
    sub h
    ld a, e
    add h
    cp l
    ld b, d
    cp l
    ld b, d
    xor l
    ld d, d
    db $fd
    ld [bc], a
    ld de, $8900
    nop
    add hl, bc
    nop
    ld bc, $0500
    nop
    inc b
    nop
    inc b
    nop
    ld b, $80
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    ret nz

    ld bc, $01c0
    ret nz

    ld b, c
    and b
    and b
    nop
    jr nz, jr_012_7fb0

jr_012_7fb0:
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$f807], sp
    di
    db $fc
    ld a, [$fbfd]
    db $fc
    ld [bc], a
    db $fd
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rSVBK]
    ld [hl], c
    ld [hl], c
    rst $38
    rst $38
    di
    di
    db $e3
    db $e3
    rst $20
    rst $20
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
