SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

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
    ld hl, sp+$07
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
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
    rst $38
    rst $38
    rlca
    db $fc
    inc bc
    ld bc, $07ff
    rst $38
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
    nop
    rst $38
    rlca
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
    nop
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
    nop
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
    rst $38
    rst $38
    ld a, a
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld bc, $01fe
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
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $0f
    cp $0f
    db $fc
    rra
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    add b
    rst $38
    add b
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $3f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    ret nz

    rst $38
    ret nz

    rst $38
    add b
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
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$00
    ld bc, $0200
    inc bc
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
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0409], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [bc]
    dec bc
    add hl, bc
    inc b
    inc b
    inc b
    ld a, [bc]
    inc c
    dec b
    dec c
    ld c, $0e
    rrca
    db $10
    dec b
    dec b
    dec b
    dec b
    ld de, $1312
    inc d
    ld [de], a
    inc b
    dec d
    ld d, $17
    jr jr_03e_425e

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec b
    dec b
    dec e
    ld e, $04
    inc b
    rra
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    jr nz, jr_03e_4279

    ld [hl+], a
    nop
    inc hl
    inc b
    inc h
    dec h

jr_03e_425e:
    ld h, $04
    daa
    jr z, jr_03e_428c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03e_429c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc b
    ld [hl], $12
    scf
    jr c, jr_03e_42ae

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_03e_4279:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc b
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
    ld c, a

jr_03e_428c:
    ld d, b
    ld d, c
    ld d, d
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
    ld e, l
    ld e, [hl]

jr_03e_429c:
    ld e, a
    ld h, b
    dec b
    inc b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_03e_42ae:
    ld l, [hl]
    inc b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add c
    add d
    add e
    add h
    add l
    inc b
    add [hl]
    add a
    inc [hl]
    adc b
    inc b
    inc b
    adc c
    ld hl, $2121
    adc d
    adc d
    adc d
    adc e
    adc h
    adc l
    inc b
    adc [hl]
    adc a
    inc b
    inc b
    sub b
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    sub c
    inc b
    inc b
    sub d
    sub e
    inc b
    dec b
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc b
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    inc b
    inc b
    sbc l
    sbc [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    sbc a
    and b
    inc b
    inc b
    and c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    and d
    and e
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    and h
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    and l
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0001
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
    nop
    ld bc, $2101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$04

    ld bc, $0202
    ld bc, $0200
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    dec b
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
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    jr nz, jr_03e_440f

jr_03e_440f:
    nop
    nop
    nop
    jr nz, jr_03e_4434

    jr nz, jr_03e_4416

jr_03e_4416:
    nop
    nop
    nop
    nop
    ld bc, $0201
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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_03e_4434:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
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
    nop
    nop
    ld [bc], a
    ld bc, $0001
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
    nop
    nop
    nop
    ld [bc], a
    ld bc, $fffc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rrca
    di
    rra
    db $e3
    ccf
    jp $c33f


    ld a, a
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $01ff
    ld a, a
    add e
    rra
    rst $20
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
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
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$ef], a
    ldh a, [$e7]
    ld hl, sp-$3d
    db $fc
    pop bc
    cp $c0
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld [hl], b
    ccf
    jr nc, @+$39

    jr c, jr_03e_472a

    inc a
    db $10
    rra
    db $10
    rra
    nop
    rra
    nop
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    cp $1f
    cp $1f
    xor $1f
    rst $08
    ccf
    rst $00
    ccf
    add e
    ccf
    sbc l
    inc bc
    and d
    ld bc, $01a2
    and e
    ld bc, $039d
    sub [hl]
    add hl, bc
    sub [hl]
    add hl, bc
    sbc [hl]
    dec bc
    sbc [hl]
    dec bc
    sbc a
    dec bc
    sbc [hl]
    ld [$089e], sp

jr_03e_472a:
    sbc a
    ld [$0d9b], sp
    sbc e
    dec c
    db $db
    adc l
    db $db
    adc l
    db $db
    adc l
    db $db
    adc l
    db $db
    adc l
    db $db
    adc l
    rst $18
    adc l
    rst $18
    adc l
    rst $18
    adc l
    rst $18
    adc l
    db $ed
    adc a
    db $ed
    adc a
    db $ed
    adc a
    db $ed
    adc a
    db $ed
    adc a
    db $ec
    adc a
    db $ec
    adc a
    db $ec
    adc a
    db $ec
    adc a
    db $ec
    rst $08
    db $ec
    rst $08
    db $ec
    rst $08
    db $ec
    rst $08
    db $ec
    rst $08
    db $ec
    rst $08
    db $ec
    rst $08
    db $ec
    rst $08
    db $ec
    rst $00
    db $ec
    rst $00
    db $ec
    rst $00
    db $ec
    rst $00
    db $ec
    rst $00
    inc bc
    call nz, $c403
    inc bc
    push bc
    inc bc
    push bc
    rlca
    rst $00
    rlca
    rst $00
    rlca
    rst $00
    rlca
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $08
    ccf
    rst $08
    rra
    rst $18
    rra
    rst $18
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$01
    ldh [rIE], a
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
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    ret nz

    cp $80
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    add b
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    or b
    rrca
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    xor a
    nop
    and e
    nop
    and c
    nop
    and c
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and c
    nop
    and c
    nop
    db $e3
    nop
    rst $28
    add b
    rst $38
    add b
    rst $38
    add b
    cp $81
    db $fc
    add e
    ld hl, sp-$79
    ldh [$9f], a
    add b
    rst $38
    add b
    rst $38
    ld b, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld hl, sp-$39
    rst $38
    ret nz

    cp $c0
    db $fc
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$bf], a
    ret nz

    sbc a
    ldh [$80], a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    cp $8f
    ldh a, [$1f]
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$03], a
    db $fc
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$00
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0300
    nop
    ccf
    nop
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ccf
    pop bc
    ccf
    ld a, [hl]
    ld bc, $03fc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ccf
    add a
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
    nop
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ccf
    nop
    ld bc, $8000
    nop
    rst $08
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

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
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
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
    ld a, a
    add b
    rlca
    ld hl, sp+$00
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
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rrca
    nop
    rra
    nop
    ccf
    ld bc, $07f9
    ldh a, [rIF]
    ret nz

    ccf
    inc bc
    rst $38
    cp $ff
    cp $ff
    ld [bc], a
    rst $38
    ld [bc], a
    cp $02
    cp $03
    cp $03
    cp $03
    cp $03
    cp $07
    cp $07
    cp $07
    cp $07
    cp $07
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $1f
    cp $1f
    cp $1f
    cp $3f
    cp $3f
    cp $7f
    cp $7f
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    ld bc, $001f
    ld bc, $0000
    nop
    ld bc, $e000
    rra
    nop
    rst $38
    rra
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
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38

jr_03e_4a87:
    nop
    rst $38

jr_03e_4a89:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    cp $0f
    db $fc
    inc bc
    db $fc

jr_03e_4ab8:
    inc bc
    db $fc

jr_03e_4aba:
    ld a, e
    db $fc

jr_03e_4abc:
    rst $38

jr_03e_4abd:
    ld hl, sp-$39
    cp b

jr_03e_4ac0:
    db $fc
    jr c, jr_03e_4abd

    ld a, [hl-]
    cp $3e
    db $fc
    inc a
    ld a, [hl-]
    jr nc, @+$3c

    jr nc, jr_03e_4a89

    jr c, jr_03e_4a87

    jr c, jr_03e_4b09

    jr c, jr_03e_4b0b

    jr c, jr_03e_4b0d

    jr c, jr_03e_4b0f

    jr c, jr_03e_4b11

    jr c, jr_03e_4b13

    jr c, jr_03e_4b15

    jr c, jr_03e_4b17

    jr c, jr_03e_4b19

    jr c, jr_03e_4b1b

    jr c, jr_03e_4b1d

    jr c, jr_03e_4b1f

    jr c, jr_03e_4b21

    jr c, jr_03e_4b23

    jr c, jr_03e_4b65

    jr c, @-$01

    jr c, jr_03e_4ab8

    jr c, jr_03e_4aba

    jr c, jr_03e_4abc

    jr c, @-$37

    jr c, jr_03e_4ac0

    jr c, @-$37

    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38

jr_03e_4b09:
    rst $38
    rst $38

jr_03e_4b0b:
    rst $38
    rst $38

jr_03e_4b0d:
    ld a, a
    rst $38

jr_03e_4b0f:
    rrca
    rst $28

jr_03e_4b11:
    rra
    adc a

jr_03e_4b13:
    ld a, a
    rrca

jr_03e_4b15:
    rst $38
    rrca

jr_03e_4b17:
    rst $38
    rrca

jr_03e_4b19:
    rst $38
    rlca

jr_03e_4b1b:
    rst $38
    inc bc

jr_03e_4b1d:
    rst $38
    inc bc

jr_03e_4b1f:
    rst $38
    pop bc

jr_03e_4b21:
    ccf
    db $fc

jr_03e_4b23:
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rra
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
    ld hl, sp+$07
    add b
    ld a, a
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

jr_03e_4b65:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    db $e3
    rra
    jp Jump_000_023f


    cp $03
    cp $01
    cp $01
    cp $01
    cp $01
    cp $ff
    cp $ff
    cp $81
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $7c
    cp $7c
    rst $38
    ld a, [hl]
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    rrca
    rst $38
    adc a
    ld a, a
    rst $20
    rra
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ld a, a
    rlca
    rra
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
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
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp h
    ld a, h
    ld hl, sp+$78
    ld [hl], b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    rst $20
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    add c
    nop
    add c
    nop
    ld bc, $0100
    nop
    ld hl, $2120
    jr nz, @-$1d

    ldh [$c1], a
    ret nz

    ld b, c
    ld bc, $0121
    ld hl, $c101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    inc bc
    adc a
    inc bc
    sbc a
    inc bc
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    jp $f3fc


    db $fc
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
    ld a, a
    rst $38
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rrca
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $03fd
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0101
    ld bc, $0302
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld b, $07
    ld [$0101], sp
    add hl, bc
    ld a, [bc]
    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0c0c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0112
    ld bc, $0101
    ld bc, $0101
    inc de
    inc d
    dec d
    ld d, $17
    ld bc, $1801
    add hl, de
    ld a, [de]
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $1d1c
    ld e, $1f
    jr nz, jr_03e_4f49

    ld [hl+], a
    inc c
    inc hl
    inc h
    dec h
    ld h, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $2701
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $0101
    ld bc, $0101
    ld bc, $3130

jr_03e_4f49:
    ld [hl-], a
    inc sp
    inc [hl]
    inc sp
    dec [hl]
    ld [hl], $37
    ld bc, $0101
    ld bc, $0101
    ld bc, $3830
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld bc, $0101
    ld bc, $4101
    ld b, d
    ld b, e
    ld b, h
    ld bc, $0101
    ld bc, $3345
    ld b, [hl]
    ld bc, $0101
    ld bc, $4701
    inc c
    ld c, b
    ld c, c
    ld c, d
    ld bc, $0101
    ld c, e
    inc sp
    ld c, h
    ld c, l
    ld bc, $0101
    ld c, [hl]
    inc c
    inc c
    ld c, b
    inc c
    ld c, a
    ld d, b
    ld d, c
    ld bc, $5201
    inc c
    ld c, h
    ld d, e
    ld d, h
    ld d, l
    inc c
    ld d, [hl]
    inc c
    ld c, b
    inc c
    inc c
    inc c
    inc c
    ld d, a
    dec b
    add hl, sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    rla
    inc c
    inc c
    inc c
    ld e, l
    ld bc, $5f5e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc c
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    dec hl
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld h, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, h
    ld h, h
    ld [hl], l
    db $76
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [hl], a
    ld a, b
    ld a, [de]
    ld a, c
    ld bc, $0101
    ld bc, $0101
    ld b, c
    inc c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld bc, $7f7e
    add b
    ld bc, $0101
    ld bc, $0101
    ld bc, $1781
    ld bc, $0101
    ld bc, $8382
    add h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add l
    add [hl]
    add a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    ld bc, $0001
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
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03e_50e0

jr_03e_50e0:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0141
    ld bc, $0200
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0101
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
    nop
    nop
    ld b, b
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
    jr nz, jr_03e_5129

jr_03e_5129:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03e_5131

jr_03e_5131:
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03e_5143

jr_03e_5143:
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
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
    nop
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
    rst $38
    rst $38
    db $fc
    ei
    db $fc
    jp Jump_000_01fe


    cp $01
    cp $01
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
    ret nz

    cp a
    ldh [$1f], a
    pop af
    rra
    pop af
    ld c, $f9
    cp a
    rst $38
    adc [hl]
    ld sp, hl
    rst $08
    ld hl, sp-$12
    ld a, c
    db $fc
    dec sp
    db $fc
    inc de
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fc
    inc bc
    cp $00
    cp $00
    cp $00
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38

jr_03e_51d4:
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    call nc, $fc7f
    db $fd
    cp $fe
    rst $38
    cp $ff
    rst $38
    cp $fa
    db $fc
    inc c
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_03e_51d4

    db $10
    ldh [$08], a
    ldh a, [rTAC]
    ld hl, sp+$00
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
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0cff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    jr c, @+$01

    inc e
    rst $38
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    adc a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$06
    cp $07
    cp $07
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    ld hl, sp-$08
    ld hl, sp-$10
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$30]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rP1], a
    ldh [rP1], a
    db $fd
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld e, $ff
    ld e, $ff
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
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
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIE]
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
    ld hl, sp+$07
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
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
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rrca
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
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
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
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    cp $01
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
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
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
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $fc
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
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
    cp $ff
    cp $ff
    cp $ff
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
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    cp $ff
    cp $ff
    cp $ff
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02fe
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    ld bc, $03fd
    cp $03
    rst $38
    ld a, a
    cp $57
    db $fd
    ld a, [hl]
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp a
    ld a, a
    ld h, b
    rra
    rra
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$1007], sp
    rrca
    jr nz, jr_03e_59c7

    ret nz

    ccf
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
    ld b, $fb
    rrca
    pop af
    rra
    pop af
    rra
    pop hl
    ccf
    ei

jr_03e_59c7:
    rst $38
    db $e3
    ld a, $e7
    ld a, $ef
    inc a
    ld a, a
    cp b
    ld a, a
    sub b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    ld bc, $0302
    inc b
    dec b
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
    nop
    ld b, $07
    ld [$0a09], sp
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
    nop
    nop
    ld [$0808], sp
    dec bc
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
    nop
    nop
    inc c
    ld [$0d08], sp
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
    nop
    nop
    ld c, $08
    ld [$100f], sp
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03e_5a53

    ld a, [de]
    dec de
    inc e
    ld [$1d08], sp
    ld e, $1f
    jr nz, jr_03e_5a65

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03e_5a75

    ld [$2b2a], sp
    inc l
    ld [$2d08], sp

jr_03e_5a53:
    ld l, $2f
    jr nc, jr_03e_5a88

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_5a60

jr_03e_5a60:
    add hl, sp
    ld [$0808], sp
    ld a, [hl-]

jr_03e_5a65:
    dec sp
    ld [$3c08], sp
    dec a
    ld a, $3f
    jr c, jr_03e_5a6e

jr_03e_5a6e:
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_03e_5a75:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    nop
    nop
    ld [$084b], sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_03e_5a88:
    ld d, c
    ld [$0052], sp
    nop
    nop
    nop
    nop
    ld [$0853], sp
    ld d, h
    ld d, l
    ld d, [hl]
    ld [$570f], sp
    ld [$581d], sp
    nop
    nop
    nop
    nop
    ld [$5a59], sp
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    rla
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld h, d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [$7877], sp
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
    ld a, c
    ld [hl], a
    ld a, d
    ld a, e
    ld a, h
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, [hl]
    ld [$0808], sp
    ld [$007f], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add c
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop
    add d
    add e
    add h
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    add l
    add [hl]
    add a
    db $76
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0103
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
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld [bc], a
    ld bc, $0101
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
    nop
    nop
    ld [bc], a
    ld bc, $0101
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
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld [bc], a
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0303
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    dec b
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    jr nz, jr_03e_5bf5

jr_03e_5bf5:
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03e_5c57

jr_03e_5c57:
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
    rst $38
    dec d
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
    ld e, e
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld a, [$ffff]
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
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
    rst $38
    ld e, a
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    pop de
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
    rrca
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
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
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $fd
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$67
    db $fc
    ld e, e
    cp $47
    rst $38
    ld e, c
    rst $38
    ld d, [hl]
    rst $38
    ld d, c
    ld e, [hl]
    ld e, [hl]
    ld d, c
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld e, h
    ld d, e
    ld e, a
    ld d, b
    ldh a, [$5f]
    ldh a, [$1f]
    sbc b
    rrca
    sbc b
    rrca
    sbc b
    rrca
    ld hl, sp-$01
    ld hl, sp-$51
    ld hl, sp-$11
    xor a
    xor b
    xor a
    xor b
    xor b
    xor a
    jr z, jr_03e_5ec7

    jr z, jr_03e_5ec9

    jr z, jr_03e_5ecb

    jr z, jr_03e_5ecd

    jr z, jr_03e_5ecf

    jr z, jr_03e_5ed1

    jr z, @+$31

    jr z, jr_03e_5ed5

    jr z, jr_03e_5ed7

    jr z, jr_03e_5ed9

    jr z, jr_03e_5edb

    jr z, jr_03e_5edd

    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc h
    daa
    inc d
    rla
    inc d

jr_03e_5ec7:
    rla
    inc d

jr_03e_5ec9:
    dec d
    inc d

jr_03e_5ecb:
    inc d
    inc d

jr_03e_5ecd:
    rla
    inc d

jr_03e_5ecf:
    rla
    dec d

jr_03e_5ed1:
    rla
    ld d, $17
    inc d

jr_03e_5ed5:
    rla
    inc d

jr_03e_5ed7:
    rla
    ld [de], a

jr_03e_5ed9:
    inc de
    inc de

jr_03e_5edb:
    inc de
    inc de

jr_03e_5edd:
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    inc b
    ei
    inc c
    di
    inc c
    di
    ld e, $e1
    ld e, $e1
    cp $c1
    rst $38
    jr nc, @+$01

    call z, Call_000_3333
    call $3acd
    ld a, [$fc04]
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $e4
    inc e
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    push hl
    dec e
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $0a
    cp $1a
    cp $32
    cp $4a
    cp $12
    cp $12
    cp $32
    cp $6a
    cp $63
    rst $38
    add e
    rst $38
    adc e
    rst $38
    sub a
    rst $38
    rra
    rst $38
    ld e, $fe
    cp [hl]
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    ldh [$e0], a
    ret nz

    ret nz

    add d
    add d
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
    di
    rst $38
    rst $30
    rst $38
    and $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    or c
    rst $38
    ld [hl-], a
    cp $62
    cp $64
    db $fc
    call nz, $c8fc
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    rst $38
    add b
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
    nop
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    and b
    rra
    and b
    rra
    ldh [rIE], a
    ret nz

    rst $38
    ld a, a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
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
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr @+$01

    rra
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    rst $38
    rlca
    ei
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    ei
    db $f4
    ei
    db $f4
    ei
    db $f4
    ei
    push af
    ld a, [$f8f7]
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0b
    ld a, [$fbf4]
    db $f4
    ei
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    cp $ff
    db $fc
    ei
    db $fc
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    rra
    rst $38
    rlca
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
    ldh [$1f], a
    ldh a, [rIF]
    cp b
    rlca
    cp b
    ld b, a
    ld hl, sp+$47
    ld c, a
    ld b, b
    ld e, a
    ld b, b
    cp $41
    db $fc
    ld b, e
    ld hl, sp+$47
    ldh a, [rVBK]
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    ld b, b
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    rlca
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
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
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
    ld h, c
    cp $61
    cp $61
    cp $f0
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03e_61e0:
    rlca
    rst $38
    inc bc
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
    ld bc, $01ff
    rst $38
    db $e3
    rra
    rst $38
    inc bc
    cp $03
    cp $07
    cp $fd
    cp $fd
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    adc h
    rst $38
    inc b
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [hl], d
    adc l
    ld a, [$de05]
    ld bc, $21de
    cp $21
    dec h
    jr nz, jr_03e_61e0

    jr nz, @-$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_03e_6264

    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    db $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

jr_03e_6264:
    cpl
    rst $38
    ld a, a
    rst $38
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rlca
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    jr c, @+$01

    add hl, sp
    cp $71
    cp $71
    cp $61
    cp $e1
    cp $c3
    db $fc
    jp $83fc


    db $fc
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rrca
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    di
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
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
    add b
    cp a
    ret nz

    rst $18
    ldh [$c7], a
    ld hl, sp-$20
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
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
    ld bc, $07ff
    rst $38
    rra
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
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
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    inc b
    inc b
    inc b
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03e_651a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $04
    inc b
    rra
    jr nz, jr_03e_652c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $1a
    ld a, [de]
    daa
    jr z, jr_03e_653e

    ld a, [hl+]
    inc b
    inc b
    dec hl
    inc l

jr_03e_651a:
    dec l
    ld l, $2f
    jr nc, jr_03e_6550

    ld [hl-], a
    inc sp
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_6564

    ld a, [hl-]

jr_03e_652c:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld a, [de]
    ld a, [de]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_03e_653e:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
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

jr_03e_6550:
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
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_03e_6564:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
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
    add c
    add d
    inc bc
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    inc b
    inc b
    inc b
    inc b
    inc b
    adc h
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    and b
    and c
    and d
    and e
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
    xor d
    xor e
    xor h
    xor l
    and e
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    inc b
    inc b
    inc b
    or h
    or l
    or [hl]
    or a
    and e
    cp b
    cp c
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
    and e
    and e
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $a3a3

    and e
    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    and e
    and e
    and e
    and e
    and e
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and e
    and e
    and e
    and e
    and e
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    inc b
    inc b
    inc b
    and e
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0404
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0101
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0401
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0401
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0500
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld d, [hl]
    xor c
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld a, [hl-]
    push bc
    dec d
    ld [$d52a], a
    dec d
    ld [$d52a], a
    dec d
    ld [$f50a], a
    dec d
    ld [$f50a], a
    ld de, $0aee
    push af
    nop
    rst $38
    ld a, [bc]
    push af
    inc b
    ei
    ld a, [bc]
    push af
    inc b
    ei
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    ld bc, $00fe
    rst $38
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld e, $1f
    ld a, c
    ld a, [hl]
    rst $20
    ld hl, sp+$1f
    ldh [rIE], a
    nop
    nop
    rst $38
    inc b
    ei
    ld a, a
    add b
    ld de, $2300
    nop
    add h
    inc bc
    rrca
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld e, a
    jr nz, @+$01

    nop
    db $fc
    inc bc

jr_03e_67dc:
    db $76
    add hl, bc
    rrca
    nop
    ld b, c
    nop
    inc hl
    nop
    add a
    nop
    rlca
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, $01
    ldh a, [rIF]
    db $f4
    rrca
    or $0f
    rst $20
    rra
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38

jr_03e_67fe:
    inc de
    rst $38

jr_03e_6800:
    ld h, h
    sbc e
    ld l, h
    sub e
    ld a, $c1
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$8f], a
    ld [hl], b
    add a
    ld a, b
    rst $00
    jr c, jr_03e_67dc

    jr c, jr_03e_67fe

    jr jr_03e_6800

    add hl, de
    rst $30
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    jr c, jr_03e_6876

    xor d
    xor a
    ld d, b
    rla
    add sp, -$56
    ld d, l
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b
    ld d, a
    xor b
    xor a
    ld d, b
    ld d, a
    xor b
    xor a
    ld d, b
    ld b, a
    cp b
    dec hl
    call nc, $b847
    xor e
    ld d, h
    ld d, a
    xor b
    xor e
    ld d, h
    rla
    add sp, -$55
    ld d, h
    ld d, l
    xor d
    dec hl
    call nc, $ba45
    xor d
    ld d, l
    ld d, l
    xor d
    adc d
    ld [hl], l
    ld de, $2aee
    push de
    ld d, l
    xor d
    ld a, [bc]
    push af
    ld de, $28ee
    rst $10
    dec d
    ld [$f50a], a
    dec b
    ld a, [$fd02]
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03e_6876:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$00
    jr c, jr_03e_68c1

    call nz, $affb
    ret nc

    ccf
    ret nz

jr_03e_6888:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec bc
    db $f4
    ld a, [hl]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03e_689a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_03e_6888

    jr nz, jr_03e_692a

    add b
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    sbc h
    ld h, e
    ld h, b
    sbc a
    nop
    rst $38

jr_03e_68bc:
    and b
    ld a, a
    jr nc, @+$01

    cp [hl]

jr_03e_68c1:
    ld a, c
    cp [hl]
    ld a, c
    cp [hl]
    ld a, c
    sbc a
    ld a, b
    rst $18
    jr c, jr_03e_689a

    jr c, jr_03e_68bc

    sbc b
    rst $20
    sbc b
    rst $30
    adc h
    rst $30
    adc h
    di
    call z, $c07f
    ld a, a
    ret nz

    cp a
    ld h, c
    cp a
    ld b, e
    rst $38
    ld c, $0c
    rst $38
    ld a, [bc]
    db $fc
    db $10
    ld hl, sp+$61
    ldh a, [$93]
    ldh [rNR43], a
    ret nz

    ld b, b
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    ld bc, $03fe
    db $fc
    rlca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    cp b
    ld e, a
    ld a, b
    sbc a
    cp b
    ld e, a
    ld a, b
    sbc a

jr_03e_692a:
    cp b
    ld e, a
    ld a, h
    adc a
    cp h
    ld c, a
    ld e, [hl]
    and a
    adc [hl]
    ld [hl], a
    ld e, a
    and a
    xor e
    ld d, l
    ld d, a
    xor c
    xor e
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec b
    ld a, [$fd02]
    ld bc, $02fe
    db $fd
    ld bc, $00fe
    rst $38
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    ld bc, $0f00
    nop
    ccf
    nop
    rst $38
    ld h, b
    sbc a
    ld sp, hl
    ld b, $77
    adc b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    rrca
    cp h
    inc bc
    rst $30
    nop
    rst $38
    nop
    ld a, [$ff05]
    nop
    rst $08
    jr nc, @-$03

    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    ret nz

    ccf
    rst $38
    ld bc, $01ff
    db $fd
    ld b, e
    db $fd
    jp $e7f9


    ld a, c
    rst $20
    ld a, b
    rst $20
    ld a, b
    rst $20
    ld a, b
    rst $20
    inc a
    di
    inc a
    di
    ld a, $f1
    inc a
    di
    ld de, $9fff
    ld a, a
    rst $08
    ccf
    rrca
    rst $38
    ld c, $ff
    dec c
    cp $7b
    db $fc
    rst $20
    ld hl, sp-$80
    ld hl, sp-$40
    ldh a, [rNR50]
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1000], sp
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $03ff
    cp $03
    cp $03
    cp $07
    cp $8f
    db $fc
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    xor e
    ld d, h
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    rlca
    rst $38
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    ld bc, $04fe
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
    ld e, e
    and h
    rst $28
    db $10
    rst $38
    nop
    dec c
    ld a, [c]
    dec sp
    call nz, Call_000_11ee
    db $ec
    inc de
    ei
    inc b
    di
    inc c
    ld a, [c]
    dec c
    ldh [$1f], a
    cp b
    ld b, a
    ld hl, sp+$07
    ret


    scf
    ld bc, $01ff
    rst $38
    ld bc, $41ff
    rst $38
    ldh [rIE], a
    db $fd
    di
    db $fd
    di
    ld sp, hl
    rst $30
    db $fc
    di
    cp $f1
    ld hl, sp-$09
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, c
    cp $f3
    db $fc
    ei
    db $fc
    db $e4
    ei
    rrca
    ldh a, [$5e]
    and b
    ldh a, [rP1]
    pop hl
    nop
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    nop
    nop
    ld [bc], a
    nop
    rrca
    nop
    rrca
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, a
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    inc bc
    inc bc
    nop
    rrca
    nop
    ccf
    ldh [$1f], a
    inc e
    inc bc
    inc bc
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    db $fc
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, [hl]
    ret nz

    ld a, $d9
    dec h
    pop af
    dec c
    di
    dec bc
    di
    dec bc
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rrca
    rst $30
    rlca
    rst $30
    rrca
    ei
    rlca
    ei
    rst $18
    ei
    rst $08
    ei
    rst $00
    ei
    rst $00
    ei
    rst $28
    ei
    rst $28
    ei
    rst $28
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
    db $fc
    rst $38
    pop af
    cp $f3
    db $fc
    rst $28
    ldh a, [$9c]
    ldh [rSVBK], a
    add b
    or b
    nop
    jp nz, $c000

    nop
    call nz, $c000
    nop
    jr nc, jr_03e_6b32

jr_03e_6b32:
    ld b, b
    nop
    inc bc
    nop
    rla
    nop
    rrca
    nop
    dec de
    nop
    inc a
    nop
    reti


    nop
    inc [hl]
    nop
    xor b
    nop
    ld bc, $0300
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld h, a
    nop
    nop
    nop
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
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rra

jr_03e_6b87:
    rlca
    cpl
    inc bc
    ld e, a
    inc bc
    cp a
    inc bc
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fc
    nop
    ldh a, [rP1]
    add b
    nop
    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    rrca
    ld [$0407], sp
    inc bc
    inc c
    inc bc
    jr nc, jr_03e_6b87

    ld b, b
    add e
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ffff

jr_03e_6be2:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $e3
    db $fc
    ld hl, sp-$01
    pop hl
    cp $87
    ld hl, sp+$1f
    ldh [$3e], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    pop af
    nop
    jp nz, $8700

    nop
    ld b, $00
    ld a, [bc]
    nop
    ld [de], a
    nop
    inc d
    nop
    jr c, jr_03e_6c0e

jr_03e_6c0e:
    jr c, jr_03e_6c10

jr_03e_6c10:
    nop
    nop
    add b
    nop
    ldh [rP1], a
    pop bc
    nop
    ld [c], a
    nop
    ld [hl], d
    nop
    ret c

    nop
    inc e
    nop
    jr c, jr_03e_6c22

jr_03e_6c22:
    jp nz, $c600

    nop
    call $fb00
    nop
    rst $30
    nop
    db $fd
    nop
    db $fd
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    add b
    ld a, a
    ld bc, $82fe
    ld a, l
    dec b
    ld a, [$748b]
    push bc
    ld a, [hl-]
    sub a
    ld l, b
    swap h
    sub a
    ld l, b
    rst $08
    jr nc, jr_03e_6be2

    ld l, b
    swap h
    sub l
    ld l, d
    swap h
    add h
    ld a, e
    pop bc
    ld a, $e0
    rra
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ccf
    nop
    rra
    nop
    ccf
    nop
    ld e, $00
    ld hl, sp-$08
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, l
    adc l
    db $fd
    db $fd
    ld l, a
    ld l, a
    pop bc
    pop bc
    db $fc
    ld e, h
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    sbc h
    add h
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    or $f6
    cp $fe
    ld a, [$fefa]
    add $7f
    ld b, c
    add e
    add e
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    jr nz, jr_03e_6cc6

    cp a
    cp a
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
    inc bc
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

jr_03e_6cc6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$f0ff], a
    rst $38
    adc h
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    xor a
    nop
    rrca
    nop
    ld e, [hl]
    nop
    dec a
    nop
    ld a, [$f400]
    nop
    ld d, b
    nop
    and e
    nop
    ld b, [hl]
    nop
    inc c
    nop
    inc c
    nop
    ld bc, $2300
    nop
    ld [hl+], a
    nop
    ld b, l
    nop
    ld c, l
    nop
    dec bc
    nop
    rla
    nop
    rrca
    nop
    ld e, $01
    rra
    nop
    rrca
    nop
    ld c, d
    ld bc, $0047
    and a
    nop
    and d
    ld bc, $0102
    jp $8300


    nop
    add a
    nop
    nop
    nop
    nop
    rst $38
    dec d
    ld [$b54a], a
    scf
    ret z

    rst $18
    jr nz, jr_03e_6dbc

    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld hl, sp+$07
    cp $01
    ld sp, hl
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    rla
    add sp, $2b
    call nc, $f807
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$c0], a
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rrca
    rst $38
    ld sp, hl
    ld sp, hl
    db $ed
    db $ed
    db $fc
    db $fc
    rla
    rst $38
    ldh [rIE], a
    push af
    push af
    pop de
    pop de
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
    ld e, a
    ld e, [hl]
    rst $38
    db $fc
    rst $38
    db $e3
    rst $38
    db $e3
    rst $30
    rst $30
    rst $38
    rst $38
    jp nc, Jump_03e_7bd2

    dec sp
    ld a, a
    ld bc, $b4bc
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    db $ec
    db $ec
    ei
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
    ld a, a
    rst $38
    rlca
    rst $38

jr_03e_6dbc:
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
    inc a
    cp $f0
    db $fc
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [$cf]
    ld hl, sp+$07
    ldh [$1f], a
    call z, $fd33
    ld [bc], a
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
    db $d3
    nop
    ld b, [hl]
    nop
    inc e
    nop
    sbc c
    nop
    ld [hl+], a
    nop
    ld h, a
    nop
    push af
    nop
    ei
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    ld [$1ee1], sp
    ld b, d
    dec a
    ld h, h
    dec de
    push hl
    ld a, [de]
    ld l, e
    sub h
    ccf
    ret nz

    rla
    add sp, $3e
    pop bc
    ld l, h
    sub e
    call c, $b923
    ld b, [hl]
    ld [hl], c
    adc [hl]
    pop af
    ld c, $8f
    ld [hl], b
    adc a
    ld [hl], b
    inc e
    db $e3
    ld l, b
    sub a
    ld h, d
    sbc l
    db $e4
    dec de
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    and d
    ld e, l
    call c, $fb23
    inc b
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld [$e015], a
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld c, $fe
    cp $81
    add b
    add c
    add b
    add c
    add b
    ld bc, $8300
    add d
    adc e
    adc d
    ld bc, $0100
    nop
    ld bc, $8100
    add b
    add c
    add b
    ld bc, $8100
    add b
    pop bc
    ret nz

    pop bc
    ld b, b
    add c
    add b
    push bc
    call nz, $e0e1
    ld bc, $0100
    nop
    ld bc, $8100
    add b
    add c
    add b
    add c
    add b
    ld bc, $0100
    nop
    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    ld b, a
    ld b, a
    sbc a
    sbc a
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
    rra
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add sp, $17
    cp $01
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ret c

    daa
    ld a, [hl]

jr_03e_6ef9:
    add c
    xor $11
    rst $38
    nop
    jp c, $fe25

    ld bc, $03fc
    ld hl, sp+$07
    ld hl, sp+$07
    or b
    ld c, a
    ld [hl], d
    adc l
    call nz, Call_000_0a3b
    push af
    jr jr_03e_6ef9

    sub c
    ld l, [hl]
    db $e4
    dec de
    ldh [$1f], a
    ret nz

    ccf
    ret nc

jr_03e_6f1b:
    cpl
    add b
    ld a, a
    and b
    ld e, a
    and c
    ld e, [hl]
    ld b, d
    cp l
    ld b, d
    cp l
    ld d, b
    xor a
    add c
    ld a, [hl]
    dec b
    ld a, [$fb04]
    dec b
    ld a, [$ff00]
    nop

jr_03e_6f33:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_03e_6f1b

    ret nc

    cpl
    xor b
    ld d, a
    ret nc

    cpl
    db $f4
    dec bc
    ld hl, sp+$07
    db $f4
    dec bc
    ld hl, sp+$07
    db $ec
    inc de
    ret nc

jr_03e_6f4d:
    cpl
    xor b
    ld d, a
    ret nc

jr_03e_6f51:
    cpl
    jr nz, jr_03e_6f33

    add b
    ld a, a
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
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    jr z, jr_03e_6f4d

    ld d, b
    xor a
    jr z, jr_03e_6f51

    inc d
    db $eb
    ld [$14f7], sp
    db $eb
    nop
    rst $38
    add hl, bc
    or $04
    ei
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld bc, $0000
    nop
    ret nz

    ret nz

    db $fc
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    sub a
    rst $38
    ei
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03e_6fce:
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
    ld bc, $01fe
    cp $d0
    cpl
    ld hl, sp+$07
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ld a, [$f905]
    ld b, $ff
    nop
    cp $01

jr_03e_6ff0:
    rst $38
    nop
    rst $38
    nop

jr_03e_6ff4:
    rst $38
    nop
    rst $20
    jr jr_03e_6ff4

    inc b
    rst $38
    nop
    rst $18
    jr nz, jr_03e_6fce

    jr nc, jr_03e_6ff0

    db $10
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    ei
    inc b
    ld a, [$fa05]
    dec b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld sp, hl
    rst $38
    ldh a, [rIE]
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
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38

jr_03e_706d:
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $000f
    ld bc, $0000
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
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
    jr nz, jr_03e_706d

    db $10
    rst $28
    inc b
    ei
    add hl, bc
    or $d2
    dec l
    ld d, b
    xor a
    ld a, [c]
    dec c
    or $09
    ld h, [hl]
    sbc c
    ld sp, hl
    ld b, $ca
    dec [hl]
    ret z

    scf
    ld hl, sp+$07
    add sp, $17
    add sp, $17
    db $ec
    inc de
    add sp, $17
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [c]
    dec c
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    rra
    ld h, e
    sbc a
    ld [hl], e
    adc a
    ld [hl], e
    adc a
    inc sp
    rst $08
    inc de
    rst $28
    inc sp
    rst $08
    scf
    rst $08
    cpl
    rst $18
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop
    add b
    add b
    inc e
    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
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
    ccf
    rst $18
    rlca
    dec de
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    db $e4
    nop
    db $e4
    nop
    call nz, $8400
    nop
    jp nz, $c200

    nop
    add d
    nop
    add d
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $03
    inc bc
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    dec bc
    dec bc
    rrca
    rrca
    ld bc, $00ff
    rst $38
    ld bc, $0aff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld e, l
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld bc, $0001
    nop
    nop
    nop
    db $f4
    db $f4
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
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rra
    rrca
    cpl
    rrca
    cpl
    rrca
    ld c, a
    adc a
    ld c, a
    adc a
    sbc a
    rra
    sbc a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec e
    dec e
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec e
    dec e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    rrca
    rrca
    add hl, sp
    add hl, sp
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fe
    sbc $de
    push af
    push af
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    sbc a
    db $e3
    db $e3
    ld sp, hl
    ld sp, hl
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
    ld bc, $00ff
    rst $38
    ld bc, $02ff
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    cp a
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
    rrca
    rrca
    nop
    nop
    nop
    nop
    add b
    add b
    db $fc
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
    rst $38
    rst $38
    ei
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
    rst $30
    rst $30
    push af
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld a, [hl]
    ld a, [hl]
    ld e, a
    ld e, a
    push hl
    push hl
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    push af
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
    ld a, a
    rst $38
    rst $38
    ei
    ei
    db $fc
    db $fc
    ld a, a
    ld a, a
    adc a
    adc a
    pop af
    pop af
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld e, a
    db $ed
    db $ed
    ei
    ei
    rst $38
    rst $38
    ld a, a
    ld a, a
    dec sp
    dec sp
    rst $00
    rst $00
    ei
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld de, $02ff
    rst $38
    ld d, l
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    db $db
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
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    ei
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
    ld a, [$1ffb]
    rra
    db $ed
    rst $28
    ld a, l
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $28
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    rst $38
    ccf
    ccf
    set 1, e
    pop af
    pop af
    cp $fe
    cp a
    cp a
    xor a
    xor a
    rst $28
    rst $28
    rst $30
    rst $30
    ld e, e
    ld e, e
    dec c
    dec c
    pop af
    pop af
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld de, $22ff
    rst $38
    ld b, l
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    xor b
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    and e
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    cp e
    rst $38
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
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
    rra
    rra
    ld bc, $0001
    nop
    nop
    nop
    ldh [$e0], a
    jp c, $9eda

    sbc [hl]
    db $ed
    db $ed
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $28
    rst $28
    ld a, c
    ld a, c
    call nz, $f8c4
    ld hl, sp-$7b
    add l
    ld hl, sp-$08
    rst $30
    rst $38

jr_03e_73f0:
    ei
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    jr c, jr_03e_73f0

    ld a, b
    ld hl, sp-$4b
    push af
    ld a, d
    ei
    ld a, [$dffb]
    rst $18
    jp z, $f1ca

    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    ld a, a
    ld a, a
    db $d3
    db $d3
    db $fd
    db $fd
    ld a, a
    ld a, a
    ccf
    ccf
    rst $00
    rst $00
    pop hl
    pop hl
    ld sp, hl
    ld sp, hl
    ld e, $1e
    jp $f9c3


    ld sp, hl
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    ld a, [$5ffa]
    ld e, a
    adc a
    adc a
    pop bc
    pop bc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    rla
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$18
    ld a, [$eefa]
    xor $bf
    cp a
    rst $18
    rst $18
    pop bc
    pop bc
    add b
    add b
    add sp, -$18
    sbc e
    sbc e
    jr nz, jr_03e_74da

    add d
    add d
    ld [hl], h
    ld [hl], h
    adc e
    adc e
    ldh a, [$f0]
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    push de
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld d, b
    ldh a, [$a0]
    ldh [$90], a
    sub b
    ret nz

    ret nz

    add sp, -$18

jr_03e_74da:
    ld sp, hl
    ld sp, hl
    ld [hl], a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    xor l
    xor l
    ld a, [c]
    ld a, [c]
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    rlca
    rlca
    or c
    or c
    ld a, d
    ld a, d
    cpl
    cpl
    jp $dcc3


    call c, $dede
    rst $38
    rst $38
    cp a
    cp a
    rst $28
    rst $28
    ld sp, hl
    ld sp, hl
    ld a, a
    ld a, a
    ccf
    ccf
    db $e3
    db $e3
    ld sp, hl
    ld sp, hl
    cp $fe
    ld e, l
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    cp e
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    ld a, a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    sub b
    sub b
    db $e4
    db $e4
    xor [hl]
    xor [hl]
    ldh [$e0], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], h
    inc e
    inc e
    jr nz, jr_03e_758e

    add b
    add b
    ld [hl], b
    ld [hl], b

jr_03e_7572:
    inc e
    inc e
    call nz, $e0c4
    ldh [$f4], a
    db $f4
    ld a, [c]
    ld a, [c]
    ld [hl], d
    ld [hl], d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$f0]
    db $e4
    db $e4
    db $fc
    db $fc
    db $e4
    db $e4
    db $e4
    db $e4

jr_03e_758e:
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    cp c
    cp b
    pop af
    ldh a, [rNR24]
    jr jr_03e_75a4

    ld [$9091], sp
    ld [hl], c
    ld [hl], b
    pop af
    ldh a, [$71]
    ld [hl], b

jr_03e_75a4:
    add hl, hl
    jr z, @+$53

    ld d, b
    pop af
    ldh a, [$71]
    ld [hl], b
    inc hl
    jr nz, jr_03e_7572

    ret nz

    di
    ldh a, [$e3]
    ldh [$e3], a
    ldh [rSCX], a
    ld b, b
    and e
    and b
    db $e3
    ldh [$63], a
    ld h, b
    inc hl
    jr nz, @+$01

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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $f8
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    ldh a, [$e0]
    sub b
    ld b, b
    ld sp, $4100
    nop
    ld b, c
    nop
    ld b, c
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $fc
    cp $f8
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    pop bc
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add e
    nop
    add e
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
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
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    ld c, $0e
    ld c, $00
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $17
    jr jr_03e_76f4

jr_03e_76f4:
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec d
    dec d
    dec d
    jr nz, jr_03e_7723

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_03e_7736

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03e_7746

    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec d
    dec d
    dec d
    dec d
    ld [hl], $37
    dec l
    dec l
    dec l

jr_03e_7723:
    jr c, jr_03e_775e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    dec l
    dec l
    dec l
    dec l
    ld b, l
    ld b, [hl]

jr_03e_7736:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc de
    dec l
    dec l
    dec l
    dec l
    ld d, b
    ld d, c

jr_03e_7746:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    inc de
    ld e, e
    ld e, h
    dec l
    dec l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    dec d
    ld h, l

jr_03e_775e:
    ld h, [hl]
    inc de
    dec l
    dec l
    dec l
    dec l
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    inc de
    inc de
    dec l
    dec l
    dec l
    dec l
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    inc de
    inc de
    dec l
    dec l
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
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
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
    and h
    and l
    and [hl]
    and a
    xor b
    dec l
    xor c
    xor d
    xor e
    xor h
    nop
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    dec d
    or l
    dec l
    xor c
    or [hl]
    or a
    cp b
    nop
    nop
    cp c
    cp d
    cp e
    cp h
    cp l
    dec d
    dec d
    dec d
    dec d
    dec l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, RST_00

    jp $c5c4


    dec d
    dec d
    dec d
    dec d
    dec d
    add $c7
    ld l, $c8
    ret


    jp z, RST_00

    set 1, h
    dec d
    dec d
    call Call_000_15ce
    dec d
    nop
    rst $08
    ret nc

    pop de
    jp nc, Jump_000_0005

    db $d3
    call nc, Call_000_15d5
    dec d
    sub $d7
    ret c

    reti


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0204
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    inc b
    inc b
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0404
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0304
    ld [bc], a
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
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $06
    ld b, $06
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld h, $06
    ld b, $06
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld b, $02
    ld [bc], a
    jr nz, jr_03e_7937

jr_03e_7937:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr z, @+$01

    inc [hl]
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    db $10
    rst $38
    dec e
    rst $38
    ld a, [bc]
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    xor b
    rst $38
    ret nz

    rst $38
    add sp, -$01
    call nc, $eaff
    rst $38
    call nc, $e8ff
    rst $38
    push af
    rst $38
    ld a, [$fdff]
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $fe
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    adc b
    rst $38
    ld d, c
    rst $38
    adc b
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$f1ff]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$fd02]
    ld bc, $02fe
    db $fd
    ld bc, $02fe
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
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
    ld [$10ff], sp
    rst $38
    xor b
    rst $38
    ld b, b
    rst $38
    xor b
    rst $38
    ld b, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push bc
    rst $38
    ld [$f1ff], a
    rst $38
    ld a, [$fdff]
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
    ld hl, sp-$08
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
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
    nop
    nop
    ld e, a
    and b
    xor a
    ld d, b
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    dec hl
    call nc, $a05f
    dec hl
    call nc, $a25d
    dec hl
    call nc, $aa55
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor d
    ld d, l
    dec d
    ld [$55aa], a
    dec d
    ld [$55aa], a
    ld d, a
    xor b
    xor d
    ld d, l
    dec d
    ld [$55aa], a
    ld d, l
    xor d
    ld [$45f7], sp
    cp d
    ld a, [hl+]
    push de
    dec d
    ld [$dd22], a
    ld bc, $02fe
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld hl, $01ff
    rst $38
    and c
    rst $38
    ld bc, $a1ff
    rst $38
    ld bc, $a1ff
    rst $38
    ld d, c
    rst $38
    and c
    rst $38
    ld d, c
    rst $38
    and c
    rst $38
    ld d, c
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ret nz

    ret nz

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
    nop
    nop
    and b
    and b
    add b
    add b
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
    nop
    nop
    db $10
    stop
    nop

Jump_03e_7bd2:
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    sbc $de
    ld a, b
    ld a, b
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
    nop
    nop

jr_03e_7bee:
    nop
    nop
    nop
    nop

jr_03e_7bf2:
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
    nop
    nop

jr_03e_7bfe:
    inc bc
    inc bc
    nop
    nop

jr_03e_7c02:
    nop
    nop
    ld bc, $0101
    ld bc, $0404
    ld bc, $0501
    dec b
    dec hl
    dec hl
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_03e_7bee

    ld b, b
    rst $18
    jr nz, jr_03e_7bf2

    ld b, b
    ld e, a
    and b
    rst $38
    nop
    ld e, a
    and b
    rst $38
    nop
    rst $18
    jr nz, jr_03e_7bfe

    ld b, b
    rst $18
    jr nz, jr_03e_7c02

    ld b, b
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    ld l, $d1
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, l
    cp d
    ld a, [hl+]
    push de
    dec b
    ld a, [$f50a]
    ld bc, $08fe
    rst $30
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
    db $fc
    inc bc
    db $e3
    rra
    sbc a
    ld a, a
    ld a, b
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, h
    ld h, l
    ld l, b
    ld l, a
    ld [hl], b
    ld a, a
    add e
    db $fc
    sub e
    db $ec
    sbc e
    db $e4
    cp a
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$07
    cp $fc
    rst $38
    cp $ff
    db $fd
    cp $fc
    rst $38
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
    ld bc, $8001
    add b
    jr nz, jr_03e_7cd0

    nop
    nop
    ld [hl], c
    ld [hl], c
    db $e3
    db $e3
    pop hl
    pop hl
    rst $20
    rst $20
    xor a
    xor a
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
    nop
    cp a
    ld b, b
    ld a, a
    add b
    xor a
    ld d, b

jr_03e_7cd0:
    rst $30
    ld [$44bb], sp
    ld e, l
    and d
    cp e
    ld b, h
    ld e, l
    and d
    xor e
    ld d, h
    ld d, a
    xor b
    ld a, [bc]
    push af
    ld de, $0aee
    push af
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    and b
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    nop
    rst $38
    rra
    rst $38
    rst $20
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld h, l
    sbc d
    rst $38
    nop
    ld a, b
    add a
    db $10
    rst $28
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
    cp a
    ret nz

    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    nop
    inc bc
    nop
    inc bc
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
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rla
    rla
    rrca
    rrca
    add hl, de
    add hl, de
    inc bc
    inc bc
    rrca
    rrca
    cpl
    cpl
    rrca
    rrca
    rra
    rra
    ld [hl], a
    ld [hl], a
    xor a
    xor a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    cp a
    cp a
    rst $28
    rst $28
    ld e, a
    ld e, a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    xor [hl]
    ld d, c
    ld e, l
    and d
    xor [hl]
    ld d, c
    push af
    ld a, [bc]
    cp a
    ld b, b
    push af
    ld a, [bc]
    cp e
    ld b, h
    ld e, a
    and b
    xor c
    ld d, [hl]
    dec b
    ld a, [$fd02]
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
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    jp nz, Jump_000_00fe

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $f1
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, h
    rst $38
    adc a
    ldh a, [rIE]
    nop
    xor a
    ld d, b
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    rlca
    ld hl, sp+$00
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

    ccf
    jr nz, jr_03e_7e27

    db $10
    rrca
    jr z, @+$29

    inc h
    inc hl
    ld h, $21
    ld bc, $0300
    inc bc
    ld bc, $0181
    add c
    ld bc, $0041
    ld b, b
    nop
    and b
    nop
    and b
    nop
    ld d, b
    nop
    ld d, b
    add b
    adc b
    add b

jr_03e_7e27:
    and [hl]
    ret nz

    rst $00
    ret nz

    pop de
    ret nz

    ret nc

    ret nz

    adc b
    ldh [$e4], a
    ldh [$e2], a
    ldh a, [$f1]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
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
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    ld e, l
    and d
    xor d
    ld d, l
    ld [hl], l
    adc d
    xor $11
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, [hl]
    nop
    ld a, $c1
    sbc h
    ld h, e
    db $ec
    inc de
    db $fc
    inc bc
    ldh a, [rIF]
    db $fc
    inc bc
    ld a, b
    add a
    db $e3
    inc e
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    cp $01
    ret nz

    ccf
    nop
    rst $38
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
    inc bc
    db $fc
    rrca
    di
    ldh a, [rP1]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $9f00
    nop
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    cp $00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
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
    ei
    inc b
    ld sp, hl
    ld b, $f0
    rrca
    rst $20
    jr @-$16

    db $10
    add sp, $10
    add sp, $10
    ld sp, hl
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
    cp a
    ld b, b
    ld a, l
    add d
    cp [hl]
    ld b, c
    ld e, a
    and b
    db $eb
    inc d
    rst $30
    ld [$05fa], sp
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, l
    cp d
    add b
    ld a, a
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
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    adc d
    rst $38
    ld d, b
    rst $38
    adc d
    rst $38
    ld d, c
    rst $38
    ld a, [hl+]
    rst $38
    ret nz

    inc de
    ldh [$0a], a
    rst $38
    rrca
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
    cp $01
    inc b
    ei
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rra
    ldh [$e0], a
    rra
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
    rlca
    ld hl, sp+$78
    add b
    ret nz

    ld b, b
    nop
    nop
    nop
    ld bc, $0f00
    nop
    ld a, b
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    rlca
    nop
    inc e
    rlca
    rst $30
    rrca
    add a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    nop
    ei
    inc b
    rst $30
    ld [$14eb], sp
    ld a, [bc]
    nop
    dec b
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, l
    nop
    cp h
    inc bc
    di
    rrca
    db $ec
    inc e
    pop af
    ld de, $1fff
    db $fc
    inc e
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    jr @+$21

    rra
    jr @+$21

    db $10
    rra
    db $10
    add hl, de
    ld d, $19
    ld e, $19
    ld e, $18
    rra
    inc e
    rra
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
    rra
