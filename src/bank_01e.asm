SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    nop
    ld a, $00
    rrca
    nop
    ld a, e
    nop
    dec hl
    nop
    adc l
    nop
    rst $00
    nop
    rst $38
    nop
    ld h, b
    nop
    stop
    inc c
    nop
    ld c, [hl]
    nop
    ret


    nop
    ret nz

    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    dec a
    nop
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    sbc a
    nop
    cpl
    nop
    sub a
    nop
    jp $a100


    nop
    sub d
    nop
    adc a
    nop
    cp $00
    ld a, [$fe00]
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    cp $02
    db $fc
    ld [bc], a
    cp $02
    rst $38
    inc bc
    cp $02
    cp $02
    cp $02
    cp $02
    rst $38
    inc bc
    cp $02
    db $fc
    ld [bc], a
    cp $02
    nop
    nop
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    ei
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rra
    nop
    ld bc, $c000
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
    ld a, a
    nop
    rst $08
    nop
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    xor a
    nop
    rst $30
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld a, $00
    rrca
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    stop
    adc h
    nop
    jp nz, $e100

    nop
    ldh a, [rP1]
    db $fc
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
    sbc e
    nop
    rst $08
    nop
    rst $20
    nop
    rst $30
    nop
    db $eb
    nop
    ld sp, $1f00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    inc e
    ld a, a
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e4
    nop
    rst $38
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
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    ld sp, hl
    nop
    rst $20
    nop
    ei
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    nop
    ccf
    add b
    ccf
    ld h, b
    rrca
    db $10
    dec b
    ld [$2200], sp
    add b
    nop
    ret nz

    nop
    ld [hl], b
    nop
    jr jr_01e_41ab

jr_01e_41ab:
    inc c
    nop

jr_01e_41ad:
    add a
    nop
    jp $e000


    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ld a, a
    ld a, e
    rst $38
    set 7, a
    dec bc
    rst $38
    dec bc
    db $f4
    dec bc
    call nz, $343b
    bit 6, h
    adc e
    db $f4
    dec bc
    ld [hl], b
    adc a
    jr nc, jr_01e_41ad

    db $10
    rst $28
    db $10
    rst $28
    inc d
    db $eb
    inc b
    ei
    inc b
    ei
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
    inc b
    ei
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
    nop
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    ld hl, sp+$00
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
    ld a, e
    nop
    jr jr_01e_422b

jr_01e_422b:
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    add a
    nop
    ld hl, sp+$00
    rst $38
    nop
    db $e3
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rlca
    ld [$0003], sp
    ld bc, $8000
    nop
    ret nz

    nop
    ld [hl], b
    nop
    jr c, jr_01e_4257

jr_01e_4257:
    inc c
    nop
    ld b, $00
    ld bc, $a000
    nop
    ret nc

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
    ld a, $01
    rrca
    nop
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
    ccf
    nop
    rst $00
    nop
    ldh [rP1], a
    jr jr_01e_4291

jr_01e_4291:
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
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
    ld a, a
    nop
    sbc a
    nop
    daa
    nop
    ld [$2000], sp
    nop
    ld [$0240], sp
    db $10
    add e
    nop
    ret nz

    nop
    ld h, b
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
    ret nz

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
    ldh [$1f], a
    db $fc
    inc bc
    rra
    nop
    ld bc, $00c0
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
    rra
    nop
    add e
    nop
    ret nz

    nop
    ld hl, sp+$00
    cp [hl]
    nop
    rst $20
    nop
    dec sp
    nop
    ld c, $00
    ld bc, $8800
    nop
    ldh [rP1], a
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
    rst $30
    nop
    ld a, a
    nop
    ld [hl], e
    nop
    or h
    nop
    ld e, a
    nop
    or $00
    inc a
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
    ret nz

    ccf
    db $fc
    inc bc
    ccf
    nop
    inc bc
    add b
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    or b
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld h, $00
    ld bc, $8000
    nop
    ld a, [c]
    nop
    cp $00
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
    scf
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $100f
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0016
    rla
    jr jr_01e_43d7

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_43ef

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_43d7:
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_01e_4407

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    nop
    ld l, $2f
    jr nc, jr_01e_441f

    ld [hl-], a

jr_01e_43ef:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01e_442f

    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_01e_4407:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, l
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

jr_01e_441f:
    ld e, e
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, l
    ld e, h
    ld e, h
    ld e, h
    ld e, l
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_01e_442f:
    ld h, e
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, l
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    add hl, sp
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
    xor c
    ld e, h
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    cp d
    cp e
    cp h
    ld e, h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    xor e
    cp e
    jp nz, $b45c

    jp $c5c4


    add $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    inc bc
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
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
    nop
    jr nz, jr_01e_4598

    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc

jr_01e_4598:
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    ld bc, $0001
    ld bc, $0000
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0041
    nop
    nop
    nop
    ld bc, $0001
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
    nop
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
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    ld hl, sp+$00
    pop bc
    add b
    ld b, $00
    inc e
    nop
    ld h, b
    nop
    add b
    nop
    nop
    rlca
    nop
    ld c, $60
    ld [$00c0], sp
    rlca
    nop
    ld b, $00
    sbc b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld bc, $1300
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
    nop
    rst $38
    ld a, l
    rst $38
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld sp, hl
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
    cp $01
    ldh a, [rIF]
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
    db $fc
    inc b
    ldh a, [rP1]
    add e
    inc bc
    inc e
    nop
    ldh a, [rLCDC]
    add b
    ld bc, $0700
    nop
    inc e
    nop
    jr c, jr_01e_46d8

jr_01e_46d8:
    ldh [$03], a
    nop
    rrca
    nop
    inc a
    nop
    ldh [rP1], a
    add b
    nop
    nop
    ld [bc], a
    ld bc, $0e00
    nop
    jr jr_01e_46eb

jr_01e_46eb:
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$07
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
    ld bc, $04fc
    ldh [rNR42], a
    add b
    add b
    nop
    nop
    ldh [rP1], a
    nop
    ld bc, $0400
    nop
    ld c, d
    nop
    or b
    ld bc, $0470
    add b
    nop
    nop
    inc d
    nop
    nop
    nop
    ld bc, $2600
    nop
    dec e
    nop
    jr nc, jr_01e_4753

jr_01e_4753:
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    cpl
    nop
    rra
    nop
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    ret nz

    rst $38
    nop
    db $fc
    inc bc
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
    dec b
    ld hl, sp+$0c
    ldh [$30], a
    add b
    add b
    nop
    nop
    nop
    ld [$0c00], sp
    nop
    ld [$4000], sp
    ld bc, $0e40
    add b
    dec a
    nop
    rst $30
    nop
    cp a
    nop
    ld c, [hl]
    nop
    inc c
    nop
    jr c, jr_01e_47a9

jr_01e_47a9:
    ldh [rP1], a
    add b
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$04
    ldh [$08], a

Jump_01e_47c0:
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
    ldh [$1f], a
    rra
    rst $38
    ld hl, sp-$01
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $3f
    ret nz

    ld b, b
    and c
    ld b, b
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    cp e
    nop
    cp a
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
    add e
    ld a, h
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rNR10]
    ret nz

    ld h, b
    nop
    nop
    nop
    ld bc, $0300
    nop
    jr c, jr_01e_4810

jr_01e_4810:
    ldh [$03], a
    add b
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld b, b
    nop
    and b
    ld bc, $0320
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    cp $00
    db $fc
    ld [bc], a
    ld hl, sp+$04
    pop hl
    ld [$00d2], sp
    adc h
    nop
    dec [hl]

jr_01e_4839:
    add b
    pop hl
    nop
    ld d, h
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

jr_01e_4847:
    nop
    rst $38
    nop
    nop
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
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $0ffe
    ldh a, [$7e]
    add c
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    nop
    inc a
    nop
    ldh a, [rP1]
    ld b, b
    nop
    nop
    rra
    nop
    rst $18
    nop
    db $fc
    nop
    ld hl, sp+$00
    ret nz

    nop
    add b
    nop
    nop
    inc b
    nop
    rrca
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld hl, sp+$02
    pop af
    inc c
    jp z, $8e00

    jr nz, jr_01e_4847

    ld b, c
    ld h, b
    add b
    ld [c], a
    nop
    inc b
    ld bc, $0218
    jr nz, @+$06

    ld b, b
    jr jr_01e_4839

    jr nc, jr_01e_48bb

jr_01e_48bb:
    ld h, b
    nop
    ret nz

    nop
    add c
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
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
    nop
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
    inc bc
    db $fc
    inc a
    jp $0ff0


    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    pop af
    ld [$0083], sp
    dec c
    nop
    rla
    nop
    ld e, a
    jr nc, jr_01e_4902

jr_01e_4902:
    ldh [$08], a
    add b
    nop
    nop
    ld b, e
    nop
    inc b
    nop
    jr jr_01e_490d

jr_01e_490d:
    ret nz

    dec de
    nop
    inc de
    nop
    rlca
    nop
    ld c, $00
    dec a
    nop
    ld [hl], c
    nop
    db $e3
    nop
    add [hl]
    nop
    ld [$5001], sp
    inc bc
    ld bc, $020e
    inc e
    inc b
    jr c, jr_01e_4929

jr_01e_4929:
    ld a, c
    nop
    ld [hl-], a
    nop
    ld h, h
    nop
    ret nz

    inc b
    add b
    nop
    ld bc, $0200
    nop
    ld b, $00
    inc c
    nop
    ld e, a
    nop
    or h
    nop
    ld a, e
    rra
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff00
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    ei
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    rlca
    ld hl, sp+$07
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

jr_01e_4992:
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
    rst $38
    rlca
    rst $38
    nop
    ld bc, $0100
    nop
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $01
    cp $00
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld [hl], b
    adc [hl]
    add b
    ld a, [hl]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    sbc a
    nop
    ld [hl], a
    nop
    rst $38
    nop
    db $f4
    nop
    pop bc
    nop
    ret nz

    nop
    nop
    ld [bc], a
    stop
    nop
    ld [bc], a
    ld b, b
    dec b
    nop
    ld [$3800], sp
    nop
    pop af
    inc b
    db $e3
    ld [$00ce], sp
    ret nc

    nop
    ld hl, $6200
    nop
    call nz, RST_00
    jr nc, jr_01e_4a0d

    ld h, h
    nop
    ret nz

    add b
    nop
    nop
    nop
    ld bc, $0240
    add b
    ld b, $00
    ld b, $00
    inc c

jr_01e_4a0d:
    ld bc, $4018
    jr nc, jr_01e_4992

    ld d, b
    nop
    ldh [rSB], a
    ldh [$03], a
    nop
    rlca
    nop
    rst $38
    nop
    db $db
    nop
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    add b
    ld a, a
    ld a, a
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    nop
    ld b, c
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    nop
    ld b, c
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    nop
    ld b, c
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $ff
    ld a, $7f
    add b
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    ccf
    dec de
    and b
    sub b
    inc h
    sub b
    ld h, h
    sub b
    inc h
    sub b
    inc h
    nop
    rst $38
    ldh a, [rDIV]
    ldh a, [rDIV]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec bc
    nop
    add c
    nop
    nop
    nop
    adc d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor $00
    cp b
    nop
    ld [hl], b
    nop
    add b
    ld [$1a00], sp
    nop
    ld [bc], a
    nop
    ld b, b
    ld a, [bc]
    ret nz

    ld bc, $0018
    jr nc, jr_01e_4ada

jr_01e_4ada:
    ld h, b
    nop
    nop
    nop
    and b
    ld b, b
    ld b, b
    nop
    add b
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01e_4af2

jr_01e_4af2:
    jr nz, jr_01e_4af5

    ld b, b

jr_01e_4af5:
    inc bc
    ld b, b
    inc bc
    ld b, b
    inc bc
    ld b, b
    ld b, $40
    add hl, bc
    ld b, b
    dec de
    nop
    ld e, $00
    ld a, b
    nop
    ld sp, hl
    nop
    or e
    nop
    and c
    nop
    ret nz

    nop
    add h
    ld [bc], a
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld [bc], a
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    nop
    inc b
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    nop
    inc b
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    nop
    inc b
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    db $fc
    ld [bc], a
    nop
    cp $00
    nop
    rst $38
    nop
    nop
    rst $38
    rst $00
    cp a
    nop
    cp a
    ld a, b
    add a
    ld b, h
    add c
    ld b, b
    add a
    nop
    adc a
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    nop
    inc b
    nop
    ret z

    nop
    ldh [rP1], a
    or $00
    adc h
    nop
    ld de, $6100
    nop
    jp Jump_000_0300


    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld h, b
    nop
    jr nz, jr_01e_4b91

    ld [bc], a

jr_01e_4b91:
    add c
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
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
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld b, a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp h
    nop
    db $fc
    nop
    ld e, a
    nop
    ccf
    nop
    jr nc, jr_01e_4bbf

jr_01e_4bbf:
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    rst $38
    nop
    rst $38
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
    scf
    nop
    dec l
    nop
    rra
    nop
    scf
    nop
    ld l, a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp $00
    db $fc
    nop
    ld e, b
    nop
    ld [de], a
    nop
    jr nc, jr_01e_4c09

jr_01e_4c09:
    inc h
    nop
    ld l, c
    nop
    ld de, $5300
    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ld [$f800], a
    nop
    ld hl, sp+$00
    ld a, [$7e00]
    nop
    cp $01
    and $00
    db $e3
    nop
    add c
    ld [bc], a
    add b
    ld [bc], a
    ret nz

    ld bc, $01e2
    and h
    inc bc
    ldh [$03], a
    xor b
    inc bc
    adc b
    rst $38
    nop
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    and b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    or $ff
    db $f4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ret nc

    rst $38
    ldh a, [rIE]
    and b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    cp a
    nop
    ld a, a
    nop
    cp c
    nop
    ld sp, $2100
    nop
    ld h, b
    nop
    ld b, d
    nop
    ld b, d
    nop
    ret c

    nop
    ret z

    nop
    and h
    nop
    ld b, b
    nop
    nop
    nop
    ld [$0000], sp
    stop
    nop
    nop
    nop
    db $10
    ld bc, $0308
    ld [$0042], sp
    ld b, b
    nop
    ld [bc], a
    nop
    and b
    nop
    jr nz, jr_01e_4cca

jr_01e_4cca:
    ld d, [hl]
    add b
    ld b, h
    nop
    call nz, $c401
    nop
    call z, $ce01
    nop
    adc $01
    add d
    ld bc, $0083
    add d
    ld bc, $0184
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    rst $38
    nop
    dec e
    nop
    dec de
    nop
    add hl, de
    nop
    add hl, de
    nop
    dec de
    nop
    rra
    nop
    jr jr_01e_4d0b

jr_01e_4d0b:
    stop
    stop
    jr nc, jr_01e_4d11

jr_01e_4d11:
    jr nc, jr_01e_4d13

jr_01e_4d13:
    jr nc, jr_01e_4d15

jr_01e_4d15:
    jr nc, jr_01e_4d17

jr_01e_4d17:
    jr nc, jr_01e_4d19

jr_01e_4d19:
    jr nc, jr_01e_4d1b

jr_01e_4d1b:
    jr nc, jr_01e_4d1d

jr_01e_4d1d:
    jr nz, jr_01e_4d1f

jr_01e_4d1f:
    ld h, b
    nop
    jr nz, jr_01e_4d23

jr_01e_4d23:
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    pop bc
    nop
    pop bc
    nop
    add c
    nop
    add c
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add d
    nop
    add d
    nop
    ld [bc], a
    db $e3
    db $fc
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fb], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fd], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fd], a
    ldh [$f8], a
    ld [c], a
    ld hl, sp-$1e
    ld hl, sp+$02
    add hl, de
    ld [bc], a
    jr jr_01e_4d71

    dec c
    rlca

jr_01e_4d71:
    rst $38
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    ld [bc], a
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    rlca
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    nop
    ld hl, sp+$00
    ld hl, sp+$01
    ld sp, hl
    inc bc
    ei
    inc bc
    ei
    ei
    inc bc
    rlca
    nop
    rlca
    nop
    nop
    db $fc
    nop
    cp $00
    db $fd
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
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld bc, $01fc
    cp $00
    cp $00

jr_01e_4de3:
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

jr_01e_4df1:
    rst $38

jr_01e_4df2:
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    nop
    rst $38
    nop
    rst $08
    nop
    push de
    nop
    sub $20
    jp nz, $c620

    jr nz, jr_01e_4de3

    jr nz, jr_01e_4e6b

    jr nz, jr_01e_4e67

    jr nz, jr_01e_4e6c

    jr nz, jr_01e_4df1

    jr nz, jr_01e_4df2

    nop
    or $00
    or $00
    cp $00
    cp $20
    sbc $10
    rst $28
    db $10
    rst $20
    nop
    di
    nop
    di
    nop
    di
    nop
    ld [hl], a
    nop
    scf
    nop
    ld [hl-], a
    nop
    add hl, sp
    add c
    add a
    add c
    add a
    add e
    add a
    add e
    add a
    inc bc
    rlca
    inc bc
    rlca
    dec b
    inc bc
    inc bc
    rlca
    inc hl
    daa
    pop hl
    rst $20
    pop hl
    rst $20
    push hl
    db $e3
    push hl
    db $e3
    rst $20
    db $e3
    rst $20
    db $e3
    db $e4
    db $e3
    push hl
    db $e3
    and $e3
    push hl
    db $e3
    and e
    rst $20
    and a
    db $e3
    push hl
    db $e3
    push hl
    db $e3
    push bc
    db $e3
    rst $20
    db $e3
    rst $20
    pop hl
    ld h, a
    db $e3
    ld h, a

jr_01e_4e67:
    db $e3
    ld h, a
    db $e3
    ld h, a

jr_01e_4e6b:
    db $e3

jr_01e_4e6c:
    push hl
    db $e3
    ld h, a
    db $e3
    ld h, a
    db $e3
    rst $20
    db $e3
    rst $20
    db $e3
    ld h, a
    db $e3
    rst $20
    db $e3
    rst $20
    db $e3
    rst $20
    db $e3
    rst $20
    db $e3
    rst $20
    db $e3
    ld h, a
    db $e3
    rst $20
    db $e3
    and $e3
    ld h, a
    db $e3
    rst $20
    db $e3
    ld h, a
    db $e3
    ld h, a
    db $e3
    ld h, a
    db $e3
    ld h, a
    db $e3
    and $e3
    ld h, a
    ld [c], a
    ld h, h
    db $e3
    ldh [$e7], a
    ldh [$e7], a
    ldh [$ef], a
    ldh [$ef], a
    pop hl
    rst $28
    db $e3
    rst $28
    rst $20
    rst $28
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    ccf
    nop
    rst $38
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    jr jr_01e_4ecb

jr_01e_4ecb:
    ld c, $00
    inc bc
    inc b
    ld bc, $0007
    rlca
    nop
    rlca
    nop
    rlca
    ld [$0807], sp
    rlca
    nop
    rlca
    ld [$0807], sp
    add a
    ld [$0887], sp
    ld b, a
    ld [$0843], sp
    ld hl, $2008
    ld [$8810], sp
    db $10
    add b
    inc e
    ret nz

    inc e
    ret nz

    ld e, $c0
    ld c, $c0
    rrca
    and b
    rlca
    ld h, b
    rlca
    ld h, b
    rlca
    ld d, b
    inc bc
    sub b
    inc bc
    or b
    ld bc, $01d8
    add sp, $01
    adc b
    nop
    call nc, Call_01e_6c00
    nop
    halt
    jp nz, Jump_000_2200

    nop
    or l
    nop
    ld h, e
    nop
    ld h, e
    nop
    or l
    nop
    or h
    nop
    ld d, d
    nop
    di
    nop
    ld sp, hl
    nop
    ld a, b
    nop

jr_01e_4f27:
    jr c, jr_01e_4f29

jr_01e_4f29:
    cp b
    nop
    cp h
    nop
    inc a
    nop
    inc a
    inc c
    db $d3
    inc c
    jp $e204


    inc b
    rl h

jr_01e_4f39:
    rlc h
    rlc h
    db $db
    inc b
    db $db
    inc h
    db $db
    inc h
    jp c, $9b00

    nop
    adc e
    nop
    dec de
    nop
    ld c, e
    add b
    ld c, e
    nop
    ld e, e
    nop
    reti


    nop
    db $eb
    nop
    db $db
    nop
    db $db
    nop
    db $db
    jr nz, jr_01e_4f27

    jr nz, jr_01e_4f39

    nop

jr_01e_4f5f:
    db $db
    inc b
    pop bc
    inc c
    db $e3
    ld [$00e3], sp
    db $e3
    nop
    db $eb
    inc b
    db $db
    inc b
    db $db
    nop
    sbc e
    ld b, b
    cp e
    nop
    ccf
    nop
    ld a, l
    nop
    ld a, a
    db $10
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
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
    rst $28
    db $10
    rst $28
    jr nz, jr_01e_4f5f

    ld b, b
    adc a
    ld [hl], b
    rrca
    or b
    rrca
    add b
    rla
    nop
    daa
    nop
    rrca
    nop
    rra
    nop
    ccf
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
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
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$78], a
    rst $38
    sbc [hl]
    ld a, a
    adc a
    ld e, a
    ld h, e
    add a
    cp c

jr_01e_4fd9:
    ld b, e
    db $f4

jr_01e_4fdb:
    ld [$807f], sp
    rst $28
    db $10
    ei
    nop
    rst $18
    nop
    cp e
    nop
    cp a
    nop
    sbc a
    nop
    adc a
    nop
    rst $10
    nop
    ld l, a
    nop
    ld a, a
    nop
    rla
    nop
    rra
    nop
    dec de
    nop
    inc de
    nop
    add hl, bc
    nop
    adc c
    nop
    add l
    nop
    push bc
    ld a, [hl-]
    ld b, e
    cp h
    db $e3
    inc e
    pop hl
    ld e, $c1
    ld e, $c0
    rrca
    ret nz

    rrca
    ld h, b
    add a
    ld h, b
    add a
    ld [hl], b
    add e
    jr c, jr_01e_4fd9

    jr c, jr_01e_4fdb

    inc e
    pop hl
    sbc h
    pop hl
    sbc [hl]
    ldh [$8e], a
    ldh a, [rIF]
    ld b, b
    rlca
    ret nz

    rlca
    ret nz

    rlca
    ld h, b
    inc bc
    jr nz, jr_01e_502e

    jr nz, jr_01e_502e

    db $10

jr_01e_502e:
    ld bc, $1010
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$fc]
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
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_01e_50c2:
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, a
    rst $38
    ccf
    ccf
    adc a
    rra
    db $e3
    rlca
    pop af
    inc bc
    call c, $ee20
    db $10
    rst $30
    ld [$00ff], sp
    rst $20
    jr jr_01e_50c2

    inc e
    pop hl
    inc c
    ldh a, [$0e]
    ldh [rTMA], a
    ldh a, [rSB]
    pop de
    nop
    cp a
    nop
    xor a
    nop
    rst $10
    nop
    rst $20
    nop
    dec bc
    nop
    sub a
    nop
    rra
    nop
    adc a
    nop
    adc a
    nop
    rst $00
    nop
    ld h, a
    nop
    ld [hl], e
    nop
    inc sp
    nop
    add hl, de
    nop
    ld bc, $0800
    nop
    inc b
    nop
    inc c
    nop
    ld b, $00
    ld b, $79
    ld [bc], a
    ld a, l
    add d
    dec a
    add c
    ld a, $c1
    ld e, $c0
    rra
    ldh [rIF], a
    ldh [rIF], a
    nop
    nop
    ccf
    nop
    rst $38
    nop

jr_01e_5126:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_01e_5137:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ccf
    adc a
    rra
    rst $00
    rlca
    pop af
    inc bc
    ret z

    jr nc, jr_01e_5137

    jr c, jr_01e_5126

    inc a
    add c
    ld a, [hl]
    ld d, c
    cp [hl]
    db $10
    rst $38
    adc b
    ld a, a
    ret nc

    ccf
    add sp, $1f
    ldh [rDIV], a
    ret nz

    ld [bc], a
    ldh [$09], a
    ldh [$0c], a
    ret nz

    inc c
    ret nz

    ld a, [de]
    ret nz

    dec e
    ret nz

    ld e, $e0
    dec de
    ldh [rNR24], a
    ld [c], a
    ld [$08e1], sp
    ld a, [c]
    nop
    ld h, d
    nop
    ld [hl], l
    nop
    inc sp
    nop
    dec de
    nop
    adc e
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rSB]
    ld hl, sp+$03
    ld hl, sp+$03
    ld a, b
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
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ccf
    ccf
    add hl, bc
    rra
    call nz, $ef1b
    db $10
    ld l, a
    sub b
    rrca
    ldh a, [$8f]
    ld [hl], b
    ld l, a
    sub b
    xor a
    nop
    ld c, a
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    add b
    rrca
    ret nz

    rrca
    ldh [rTAC], a
    ld [hl], b
    rlca
    or b
    rlca
    ldh a, [rTAC]
    ld [hl], b
    rlca
    ld [hl], b
    add a
    jr nc, @+$09

    nop
    rlca
    nop
    rlca
    jr nc, jr_01e_521a

    jr nc, jr_01e_521c

    jr nc, @+$09

    jr nc, jr_01e_5220

    db $10

jr_01e_521a:
    rlca
    or b

jr_01e_521c:
    rlca
    ldh a, [rTAC]
    ld a, b

jr_01e_5220:
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
    nop
    nop
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, $ff
    rst $18
    ccf
    rst $20
    rra
    ld sp, hl
    rlca
    or $01
    pop af
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    jp $c700


    nop
    rst $28
    nop
    rst $20
    nop
    rst $20
    nop
    push hl
    nop
    push hl
    nop
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    db $10
    dec bc
    ld de, $1312
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $14
    dec d
    dec bc
    ld d, $17
    jr @+$1b

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $1a
    dec de
    dec bc
    inc e
    dec e
    ld e, $1f
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $20
    dec bc
    ld hl, $2322
    inc h
    dec h
    ld h, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    daa
    jr z, jr_01e_52f4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld h, $0e
    ld c, $0e
    ld c, $0e
    ld c, $30
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01e_531b

    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    jr c, jr_01e_533d

jr_01e_52f4:
    dec bc
    ld c, d
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
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_01e_531b:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    dec bc
    ld [hl], d
    ld b, a
    ld b, a
    ld c, c
    dec bc
    dec bc
    dec bc
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld l, h
    dec bc
    dec bc
    ld b, a
    ld b, a
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec bc
    add b
    add c
    add d

jr_01e_533d:
    dec bc
    dec bc
    dec bc
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
    dec bc
    dec bc
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
    dec bc
    dec bc
    dec bc
    sbc [hl]
    sbc a
    and b
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
    xor d
    xor e
    dec bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    xor l
    or h
    or l
    or [hl]
    or a
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
    add $c7
    dec de
    dec bc
    dec bc
    ret z

    ret


    jp z, $caca

    jp z, $caca

    jp z, $caca

    jp z, $cccb

    dec bc
    dec bc
    jp z, $caca

    jp z, $caca

    jp z, $caca

    jp z, $caca

    jp z, $cecd

    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rlca
    ld [hl+], a
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
    ld b, b
    rlca
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
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
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
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
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
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
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
    nop
    nop
    jr nz, jr_01e_54be

    inc b
    nop
    nop
    nop

jr_01e_54be:
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    nop
    jr nz, jr_01e_54cf

jr_01e_54cf:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    jr nz, jr_01e_5570

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

jr_01e_5570:
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
    rst $38
    nop
    rst $38
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
    nop
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
    adc a
    nop
    rst $28
    nop
    rst $18
    nop
    db $dd
    nop
    ei
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ccf
    nop
    ld hl, sp+$07
    db $e3
    rra
    adc a
    ld a, a
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
    rst $20
    nop
    rst $08
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
    ld [bc], a
    db $fc
    ld bc, $00fc
    ld hl, sp+$00
    di
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    reti


    nop
    ld [hl], e
    nop
    and $00
    db $dd
    nop
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    ld a, $01
    pop af
    rrca
    rst $00
    ccf
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
    nop
    rst $38
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
    ld b, $f8
    ld [$30e0], sp
    pop bc
    ld h, b
    add e
    add b
    rrca
    nop
    rra
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$f400]
    nop
    ld a, b
    nop
    ret nc

    nop
    and b
    nop
    ld b, b
    inc b
    add c
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
    ld bc, $0f00
    nop
    inc a
    inc bc
    di
    rrca
    adc a
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
    rst $38
    nop
    rst $38

jr_01e_56ac:
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fc
    ld hl, sp+$0c
    ldh [rNR23], a
    jp $8760


    ret nz

    rrca
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    db $e3
    nop
    add $00
    adc h
    nop
    cp h
    nop
    ld a, d
    nop
    ldh [rP1], a
    ldh [rP1], a
    add c
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    jr jr_01e_56e5

jr_01e_56e5:
    jr nc, jr_01e_56e7

jr_01e_56e7:
    ld [hl], b
    ld [bc], a
    ret nz

    nop
    add c
    nop
    nop
    ld [$0300], sp
    nop
    rrca
    nop
    ld a, b
    rlca
    rst $20
    rra
    rra
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
    ld bc, $07fc
    ld hl, sp+$0e
    ldh [rNR32], a
    pop bc
    ld [hl], b
    add a
    ldh [rIF], a
    nop
    rra
    nop
    ld a, [hl]
    nop
    db $fd
    nop
    ld a, [$f400]
    ld bc, $02f8
    ldh a, [rDIV]
    ldh [rP1], a

jr_01e_5721:
    call nz, $8800
    nop
    db $10
    ld [$1020], sp
    ld b, b
    jr nz, jr_01e_56ac

    nop
    nop
    stop
    nop
    ld [$1000], sp
    nop
    jr nz, jr_01e_5737

jr_01e_5737:
    ld b, b
    nop
    add b
    nop
    inc b
    ld [$0004], sp
    add hl, bc
    nop
    stop
    jr nz, jr_01e_5745

jr_01e_5745:
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld c, $0f
    nop
    rlca

jr_01e_5753:
    nop
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
    nop
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
    nop
    ld e, $01
    ld [hl], c
    rrca
    ret nz

    rrca
    nop
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
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    ld hl, sp+$0f
    ld [hl], b
    jr c, jr_01e_5753

    ld [hl], b
    add a
    ldh [rIF], a
    add c
    ld a, $03
    ld a, b
    rlca
    ldh a, [$0c]
    ldh [rNR10], a
    ret nz

    jr nz, jr_01e_5721

    reti


    nop
    inc bc
    nop
    rlca
    nop
    ld a, [bc]
    db $10
    add c
    nop
    add hl, sp
    nop
    ld [hl], e
    nop
    rst $20
    nop
    ld b, b
    db $10
    adc b
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
    add hl, bc
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    dec c
    nop
    rra
    nop
    ld a, [hl-]
    nop
    ld a, h
    nop
    ld a, c
    nop
    pop hl
    nop
    jp $d700


    nop
    rst $00
    nop
    xor a
    nop
    rra
    nop
    rra
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc e
    inc bc
    di
    rrca
    adc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $10
    rst $20
    jr nz, @-$63

    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0e
    pop af
    inc c
    di
    ld [$81e7], sp
    ld e, $83
    inc a
    ld b, $f0
    rrca
    ldh [rNR34], a
    ret nz

    inc l
    add b
    db $fd
    nop
    sbc a
    nop
    add a
    nop
    dec c
    jr nz, jr_01e_5886

    nop
    scf
    add b
    ld l, a
    nop
    sbc $00
    cp h
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rSB], a
    ret nz

    inc bc
    add b
    ld [bc], a
    nop
    inc b
    nop
    inc c
    nop
    jr jr_01e_5847

jr_01e_5847:
    inc d
    nop
    jr nz, jr_01e_584b

jr_01e_584b:
    ld b, c
    nop
    sub e
    nop
    add d
    nop
    daa
    nop
    rrca
    nop
    rrca
    nop
    dec de
    nop
    scf
    nop
    scf
    nop
    ld a, a
    nop
    rst $30
    nop
    rst $38
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
    db $fd
    nop
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc

jr_01e_5886:
    ld bc, $0101
    ld bc, $0080
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ff01
    ld bc, $01ff
    rst $38
    nop
    cp $00
    cp $00
    cp $01
    cp $01
    cp $fe
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    ld bc, $0719
    rst $20
    rra
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
    cp $01
    db $fc
    ld a, [bc]
    pop af
    jr nc, @-$37

    ld [hl], b
    adc a
    ret nz

    ld e, $80
    ld a, $00
    ld [hl], d
    ld bc, $07e0
    ret nz

    rrca
    nop
    adc c
    nop
    rlc b
    rst $30
    nop
    ld a, a
    nop
    rst $08
    nop
    rst $38
    nop
    cp $00
    db $ec
    nop
    ldh a, [rP1]
    ldh [rSC], a
    ret nz

    ld [bc], a
    add b
    inc b
    nop
    ld [$1100], sp
    nop
    inc hl
    nop
    ld b, e
    nop
    add d
    nop
    add h
    nop
    dec d
    nop
    add hl, de
    nop
    inc de
    nop
    dec [hl]
    add b
    ld h, a
    nop
    ld c, a
    nop
    sbc $00
    sbc [hl]
    nop
    call c, $bc00
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    pop af
    nop
    pop af
    nop
    db $eb
    nop
    rst $30
    nop
    push af
    nop
    db $ed
    nop
    ld a, [$fa00]
    nop
    db $f4
    nop
    db $f4
    nop
    add sp, $00
    add sp, $00
    ld sp, hl
    nop
    pop de

jr_01e_595e:
    nop
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01e_5972:
    rst $38
    rst $38
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
    ld a, a
    nop
    rra
    nop
    adc a
    nop
    add a
    nop
    sub e
    nop
    sbc b
    nop
    jr jr_01e_59a5

jr_01e_59a5:
    add hl, de
    nop
    add hl, bc
    nop
    ld bc, $0100
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38

jr_01e_59c2:
    nop
    rst $38
    nop
    ld a, a
    nop
    ld l, a
    nop
    rst $18
    nop
    ld a, a
    nop
    db $e3
    nop
    ei
    add b
    ld a, a
    nop
    cp $00
    call c, $d000
    nop
    add b
    nop
    ld b, b
    jr nz, jr_01e_595e

    ld d, b
    nop
    cp [hl]
    nop
    ld a, c
    nop
    ld sp, hl
    nop
    pop af
    nop
    and b
    nop
    add c
    nop
    ld d, c
    jr nz, jr_01e_5972

    nop
    add e
    ld [hl], b
    rlca
    ld l, b
    inc bc
    ldh a, [rTMA]
    ldh [$0a], a
    and b
    dec e
    add b
    inc e
    ld b, b
    ld l, b
    nop
    ld [hl], b
    nop
    jr nc, jr_01e_5a04

jr_01e_5a04:
    jr nz, jr_01e_5a06

jr_01e_5a06:
    nop
    ld de, $2100
    inc b
    ld h, d
    ld [$08c0], sp
    call nz, $8411
    nop
    ld [$1800], sp
    nop
    stop
    jr nc, jr_01e_5a1b

jr_01e_5a1b:
    jr nz, jr_01e_5a25

    ld h, b
    ld [de], a
    ld h, b
    nop
    ret nz

    inc d
    ret


    nop

jr_01e_5a25:
    add c
    ld [$0880], sp
    add d
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld b, h
    nop
    inc c
    jr nz, jr_01e_59c2

    nop
    inc c
    nop
    inc e
    nop
    jr jr_01e_5a3d

jr_01e_5a3d:
    jr c, jr_01e_5a3f

jr_01e_5a3f:
    jr c, jr_01e_5a41

jr_01e_5a41:
    nop
    nop
    nop
    nop
    inc e
    rra
    jr nz, jr_01e_5a88

    ld b, b
    cp a
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
    ret nz

    ei
    call nz, $c4fb
    ei
    call nz, $c4fb
    ei
    call nz, $c4fb
    ei
    call nz, $c6f9
    ld sp, hl
    add $f9
    add $f9
    add $39
    ld b, $39
    ld b, $39
    ld b, $f9
    ld b, $f9
    ld b, $06

jr_01e_5a81:
    rst $38
    ld b, $ff
    ld h, $df
    ld h, $df

jr_01e_5a88:
    ld h, $df
    ld h, $df
    ld h, $df
    ld h, $df
    ld h, $df
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc h
    ld e, a
    inc h
    rra
    inc h
    sbc a
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rra
    jr nz, jr_01e_5ad1

    jr nz, jr_01e_5ad3

    jr nz, jr_01e_5ad5

    ld hl, $211e
    ld e, $21
    ld e, $23
    inc e
    daa
    jr jr_01e_5a81

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    rst $38
    nop
    add b
    rst $38
    cp a
    rst $38
    nop

jr_01e_5ad1:
    rst $38
    nop

jr_01e_5ad3:
    ld a, a
    db $10

jr_01e_5ad5:
    ld l, a
    ld bc, $006e
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    jr nz, jr_01e_5b09

    nop
    ld b, b
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rra
    sub b
    ld bc, $1000
    and b
    stop
    ld [hl-], a
    ld bc, $4022
    ld [hl+], a
    dec de
    ld b, b
    dec de
    add b
    ld d, a
    nop
    daa
    nop
    and a

jr_01e_5b09:
    nop
    rrca
    db $10
    rrca
    nop
    ld c, $00
    ld e, $20
    sbc c
    nop
    ld [bc], a
    add hl, sp
    nop
    ld b, l
    nop
    ld b, d
    nop
    ld [bc], a
    nop
    and d
    nop
    add b
    nop
    inc b
    nop
    dec d
    nop
    rlca

jr_01e_5b26:
    nop
    ld bc, $0008
    ld [$0001], sp
    dec b
    db $10
    add hl, bc
    nop
    add hl, de
    nop
    dec e
    nop
    rla
    nop
    rla
    nop
    inc sp
    nop
    daa
    nop
    scf
    nop
    ld d, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    scf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_01e_5b26

    jr nz, @-$3e

    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    add b
    ld a, a
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    scf
    add b
    rlca
    add b
    dec bc
    nop
    rrca
    ld b, b
    ccf
    nop
    ccf
    ret nz

    cpl
    add b
    cpl
    add b
    ccf
    add b
    ccf
    nop
    ccf
    nop
    rra
    nop
    sbc a
    nop
    adc a
    nop
    adc a
    nop
    rra
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $18
    nop
    ccf
    nop
    ld a, [hl]
    nop
    sub $00
    cp [hl]
    nop
    cp [hl]
    nop
    cp d
    nop
    cp a
    nop
    cp a
    nop
    cp [hl]
    nop
    rst $38
    nop
    cp $3f
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
    rst $38
    rst $38
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
    rrca
    nop
    add a
    add b
    rrca
    nop
    xor e
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    pop de
    nop
    pop af
    nop
    di
    nop
    ld sp, hl
    ld [bc], a
    ldh a, [rP1]
    pop af
    nop
    db $fd
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ei
    nop
    push af
    nop
    di
    nop
    push af
    nop
    push hl
    nop
    ld sp, hl
    nop
    ld sp, hl
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
    rst $38
    cp $ff
    cp $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    ld bc, $01fe
    cp $01
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    cp $01
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
    ld [bc], a
    cp $02
    cp $03
    rst $38
    rst $38
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
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    nop
    call c, $2e00
    nop
    ld l, $00
    rst $28
    nop
    cp a
    nop
    rst $28
    nop
    rst $38
    nop
    cp $00
    push de
    nop
    db $fc
    nop
    db $f4
    nop
    db $e4
    ld [$0002], sp
    ld [de], a
    nop
    ld [de], a
    nop
    jp nc, $f200

    nop
    ld sp, hl
    nop
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
    cp $00
    rst $38
    nop
    ei
    nop
    ld a, [$ff00]
    nop
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
    ld hl, sp-$01
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e1], a
    ldh [$c1], a
    ret nz

    jp $83c0


    add b
    add a
    add b
    add a
    add b
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ret nz

    nop
    ret nz

    ld bc, $0180
    add b
    ld bc, $0000
    inc c
    inc b
    inc e
    inc b
    inc e

jr_01e_5d5f:
    inc c
    jr c, jr_01e_5d6a

    jr c, jr_01e_5d7c

    jr c, jr_01e_5d7e

    ret c

    ret c

    ret c

    ret c

jr_01e_5d6a:
    sub b
    sbc b
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    sbc b

jr_01e_5d7c:
    sbc b
    sbc b

jr_01e_5d7e:
    sbc b
    sbc b
    sbc b
    sbc b

jr_01e_5d82:
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    jr c, jr_01e_5dce

    jr c, jr_01e_5dd0

    sbc b
    jr @-$36

    add hl, bc
    jr nz, jr_01e_5d5f

    jr nc, @-$3d

    jr jr_01e_5d82

    sbc h
    ldh [$8e], a
    pop af
    add a
    ld hl, sp-$39
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp+$05
    and b
    dec b
    add b
    dec b
    ret nz

    dec b
    ret nz

    dec b
    ret nz

    ld bc, $01e0
    ld [c], a
    ld bc, $05f2
    ld hl, sp+$07
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$01
    inc a
    ld bc, $013c
    ld a, [hl]

jr_01e_5dce:
    nop
    ld l, [hl]

jr_01e_5dd0:
    nop
    ccf
    nop
    rrca
    nop
    cpl
    nop
    cpl
    nop
    scf
    nop
    cpl
    nop
    rrca
    nop
    adc a
    nop
    xor a
    nop
    cp a
    nop
    rst $08
    nop
    rst $10
    nop
    rst $10
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc e
    inc c
    inc e
    inc c
    inc a
    inc c
    ld a, h
    inc c
    ld a, h
    inc e
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld e, h
    db $fc
    ld e, h
    db $fc
    ld a, h
    db $fc
    ld e, h
    db $fc
    ld c, b
    ld hl, sp-$38
    ld hl, sp+$18
    ld hl, sp+$78
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$38
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$68
    ld hl, sp-$68
    ld hl, sp-$28

jr_01e_5e6d:
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$38
    ld a, b
    jr jr_01e_5ebe

    nop
    sbc b
    add b
    ld c, b
    ret nz

    jr nz, jr_01e_5e6d

    db $10
    ldh a, [$08]
    ldh a, [$0c]
    ld hl, sp+$06
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    call nc, $d801
    nop
    ld a, b
    nop
    ld l, h
    nop
    inc a
    add b
    inc [hl]
    add b
    jr @-$3e

    jr @-$3e

    nop
    ret nz

jr_01e_5ebe:
    nop
    ldh [rDIV], a
    pop hl
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [$fe00]
    nop
    db $fd
    nop
    db $fc
    nop
    cp $c0
    rst $38
    ret nz

    rst $38
    pop bc
    cp $c3
    db $fc
    jp $c7fc


    ld hl, sp-$31
    ldh a, [$ce]
    ldh a, [$cc]
    ldh a, [$cc]
    ldh a, [$c8]
    ldh a, [$c8]
    ldh a, [$c0]
    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    add b
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$7f
    ld hl, sp-$7f
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$7f
    ldh a, [$81]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIF]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    dec bc
    ld a, a
    ld b, a
    ld a, a
    ld [hl+], a
    ccf
    dec bc
    rrca
    rlca
    add a
    inc bc
    jp Jump_01e_61c1


    and b
    ld [hl], b
    ld b, b
    cp b
    ldh [rNR34], a
    sbc [hl]
    ld h, a
    dec hl
    rst $30
    scf
    rst $38
    rra
    cp $1c
    rst $38
    rra
    db $fc
    sbc l
    cp $01
    inc l
    nop
    inc l
    nop
    inc h
    adc b
    ld [hl], d
    nop
    inc sp
    nop
    inc d
    ld bc, $0114
    inc a
    nop
    dec a
    nop
    cp l
    nop
    db $dd
    nop
    ld a, a
    nop
    ld l, l
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld c, a
    nop
    rst $08
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    dec c
    nop
    rrca
    nop
    rra
    nop
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
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, [$f400]
    nop
    pop af
    nop
    rst $20
    nop
    rst $00
    nop
    rla
    nop
    scf
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    db $f4
    nop
    ret nz

    nop
    ld bc, $2f00
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rrca
    nop
    nop
    nop
    ldh [rP1], a
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    add a
    add e
    jp $e141


    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    ret nz

    dec c
    ld b, b
    ld b, $00
    inc bc
    nop
    ld bc, $0000
    nop
    add b
    nop
    ret z

    nop
    jp nc, $e400

    nop
    cp $00
    rst $38
    nop
    db $eb
    nop
    rst $20
    nop
    rst $00
    nop
    jp $c100


    nop
    jp $c700


    nop
    rst $20
    nop
    db $e3
    nop
    db $e3
    nop
    di
    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    xor a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    rrca
    nop
    cpl
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    ld e, $fe
    ld e, $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
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
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    rlca
    rlca
    add e
    add e
    ld b, b
    ret nz

    add b
    ret nz

    ret nc

    ldh a, [rBCPS]
    ld hl, sp+$34
    db $fc
    ld e, $fe
    nop
    rrca
    nop
    rlca
    nop
    inc sp
    nop
    ld c, c
    nop
    and h
    nop
    db $f4
    nop
    db $fc
    nop
    cp $7f
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, h
    db $fc
    ld a, $fe
    sbc a
    rst $38
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    add b

Jump_01e_61c1:
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, h
    db $fc
    ld a, $fe
    ld e, a
    cp a
    jr nz, jr_01e_61e1

    db $10
    rlca
    nop
    and e
    inc b
    pop de
    nop
    add sp, $00
    db $f4
    nop
    ld a, [$fd00]
    nop

jr_01e_61e1:
    nop
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
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_01e_6232

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_6242

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$0a

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

jr_01e_6232:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [$3938], sp
    ld [$3b3a], sp
    inc a
    dec a
    ld a, $3f

jr_01e_6242:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [$4746], sp
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld [$504f], sp
    ld d, c
    ld d, d
    ld d, e
    ld [$5554], sp
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld [$5d08], sp
    ld e, [hl]
    ld e, a
    ld h, b
    ld [$6261], sp
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [$0808], sp
    ld l, d
    ld [$6c6b], sp
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [$0808], sp
    ld [$7776], sp
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld [$0808], sp
    ld [$8108], sp
    add d
    ld b, b
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld [$0808], sp
    ld [$4008], sp
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
    ld [$0808], sp
    ld [$0808], sp
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
    ld [$0808], sp
    ld [$0808], sp
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
    ld [$0808], sp
    ld [$0808], sp
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    ld [$0808], sp
    ld [$0808], sp
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ld [$ba08], sp
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

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
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0505
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld b, $06
    inc bc
    inc bc
    inc bc
    ld [bc], a
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
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
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
    ld b, $03
    ld [bc], a
    inc bc
    inc bc
    inc bc
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
    ld b, $03
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
    nop
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
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
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    ldh [rIF], a
    nop
    rra
    nop
    ld c, $02
    ld sp, $e708
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop

jr_01e_64a5:
    db $fd
    inc b
    ldh a, [$0c]
    pop af
    nop
    rst $20
    nop
    rst $30
    ld bc, $07ce
    jr c, jr_01e_64d2

    ld h, b
    ccf
    ret nz

    db $fc
    ld bc, $03f8
    ldh [rTAC], a
    ret nz

    rra
    add b
    ccf
    nop
    nop
    nop
    nop
    nop
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
    nop
    rra
    nop

jr_01e_64d2:
    ld a, a
    nop
    cp $01
    db $fd
    inc bc
    di
    rrca
    rst $18
    ccf
    ld a, a
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01e_64ef:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $077c
    ld hl, sp+$1f
    ldh [$3e], a
    ret nz

    ld a, h
    ld bc, $07f0
    ldh [$1f], a
    add b
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    rst $38
    ld bc, $00fc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ccf
    nop
    rst $38
    nop
    cp $01
    db $eb
    inc b
    and d
    jr jr_01e_64a5

    ld a, e
    nop
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
    nop
    rst $38
    nop
    ei
    nop
    di
    db $10
    db $e3
    inc b
    pop bc
    ld [$00e3], sp
    rst $10
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [rNR34]
    ldh [$74], a
    add e
    ldh a, [rTAC]
    ldh [rIF], a
    ret nz

    rra
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop bc
    jr nz, jr_01e_64ef

    ld b, c
    inc b
    inc bc
    ld [$ffc0], sp
    ret nz

    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    call nz, $c0c0
    ret nz

    ret nz

    ldh [$e0], a
    ld e, $1f
    rra
    rra
    dec de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec e
    rra
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e7], a
    ldh [$e3], a
    ldh a, [$f0]
    db $fc
    ldh a, [$fe]
    pop af
    or $f0
    ld hl, sp-$10
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f7]
    ldh a, [$f3]
    ld hl, sp-$0f
    db $fc
    ldh a, [$fe]
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
    rst $38
    db $fc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_01e_6607:
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
    nop
    rrca
    nop
    ccf
    nop
    ld sp, hl
    ld b, $ff
    rlca
    rst $18
    ccf
    cp a
    ld a, a
    or a
    ld e, a
    ret nz

    rra
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07be
    ld a, b
    ld c, $f0
    jr c, jr_01e_6607

    ld [hl], h
    add e
    ldh a, [rTAC]
    ret nz

    rra
    ld b, b
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
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    add d
    nop
    inc c
    nop
    jr c, jr_01e_6665

jr_01e_6665:
    ld h, b
    ld [bc], a
    ret nz

    jr nz, @-$7e

    add sp, $00
    sbc b
    nop
    jr nz, jr_01e_6670

jr_01e_6670:
    db $fc
    inc bc
    nop
    rst $38
    ld b, $f9
    ld h, [hl]
    sbc c
    ld h, b
    sbc a
    nop
    rst $38
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    cp $00
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rTAC]
    ld hl, sp+$01
    sbc $00
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    or $df
    cp $c7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    adc $fe
    rst $38
    rst $08
    rst $08
    rst $00
    rst $20
    ld c, a
    or $27
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    add a
    rst $38
    adc a
    rst $38
    ld b, a
    ld a, a
    cpl
    ccf
    rla
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_01e_66c7:
    rst $38
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

jr_01e_66d7:
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
    ld hl, sp+$00
    rst $38
    nop
    rst $18
    jr nz, jr_01e_66c7

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01e_66f5:
    rst $30
    nop
    rst $38
    nop
    xor a
    nop
    rst $38
    nop
    inc bc
    ret c

    rlca
    ldh a, [rSB]
    ret nc

    add hl, bc
    ret nz

    ccf
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    jr jr_01e_66f5

    jr c, jr_01e_66d7

    ld h, b
    adc a
    ld b, b
    rra
    ret nz

    rra
    and b
    rra
    and b
    rra
    ld b, b
    rra
    add b
    rra
    nop
    rrca
    ret nz

    rra
    ld b, b
    rrca
    nop
    rra
    ld d, b
    adc a
    nop
    adc a
    nop
    cp a
    ld h, b
    rlca
    ret nz

    rrca
    nop
    ccf
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    call c, $f800
    nop
    pop hl
    nop
    add h
    inc b
    ld [$1000], sp
    nop
    jr nz, jr_01e_674b

jr_01e_674b:
    ret nz

    nop
    nop
    ld bc, $0704
    nop
    ld a, [bc]
    db $10
    ld bc, $001e
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$67
    sbc b
    ld h, b
    sbc a
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld a, b
    ld hl, sp+$3c
    db $fc
    cp $be
    rst $38
    ccf
    ei
    ccf
    ld sp, hl
    rst $38
    jr @+$01

    ld a, h
    sbc e
    ld hl, sp-$01
    ccf
    ccf
    dec de
    inc e
    sbc l
    ld e, $3f
    rst $38
    sbc b
    ld sp, hl
    ld e, b
    ld hl, sp-$04
    db $fc
    db $fc
    rst $38
    db $fd
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push hl
    nop
    db $db
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $10
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    di
    nop
    ldh a, [$08]
    ldh a, [rNR41]
    ret nz

    nop
    pop bc
    nop
    add h
    nop
    adc e
    nop
    inc hl
    nop
    ld b, d
    ld bc, $0084
    jr jr_01e_681b

jr_01e_681b:
    jr nc, jr_01e_681d

jr_01e_681d:
    ld b, b
    nop
    add b
    ld bc, $0200
    ld [$000d], sp
    ccf
    nop
    ld a, $00
    ld a, d
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ld b, b
    nop
    ld b, b
    ld bc, $0300
    nop
    ld b, $00
    inc c
    nop
    ld e, $00
    jr nc, jr_01e_6874

    call z, $cc33
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
    cp $fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    ld a, a
    ldh [$e0], a
    ldh a, [$f0]

jr_01e_6874:
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld l, a
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $20
    ld a, a
    ld [hl], a
    ld a, a
    ld a, a
    rst $38
    ld h, e
    ld l, a
    ld h, c
    rst $20
    ld [hl], e
    di
    rst $38
    rst $38
    pop af
    pop af
    ld hl, sp-$10
    ld a, [c]
    db $fc
    ld sp, hl
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
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
    ld l, a
    nop
    ld l, e
    nop
    push de
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
    nop
    cp a
    nop
    ld d, a
    ld [bc], a
    cp h
    nop
    inc a
    nop
    ld [c], a
    nop
    rst $38
    nop
    rst $30
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
    nop
    db $fc
    nop
    jp hl


    nop
    inc sp
    nop
    cp l
    nop
    dec bc
    nop
    cpl
    nop
    ld e, a
    nop
    cp [hl]
    nop
    ld a, h
    nop
    cp c
    nop
    pop af
    nop
    db $e4
    ld [bc], a
    ld [$1005], sp
    ld b, d
    nop
    inc b
    nop
    ld c, b
    ld bc, $03b0
    jr nz, jr_01e_6912

jr_01e_6912:
    add b
    nop
    add b
    ld bc, $0300
    nop
    ld b, [hl]
    nop
    ld c, $00
    inc e
    nop
    add hl, sp
    nop
    ld d, c
    nop
    and c
    nop
    and e
    nop
    ld b, $00
    inc c
    nop
    dec e
    ld b, b
    ld sp, $3700
    ld [hl-], a
    call $ff00
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    nop
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
    rst $38
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
    nop
    ccf
    nop
    rra
    ldh a, [$f0]
    ld hl, sp-$08
    sbc $fe
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    jp $e3c3


    db $e3
    rst $20
    rst $38
    nop
    di
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rra
    nop
    ld l, a
    nop
    rst $28
    nop
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
    nop
    ccf
    nop
    dec h
    nop
    ld b, c
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
    nop
    ld a, a
    nop
    ld [bc], a
    nop
    add b
    inc b
    ret nz

    nop
    ldh a, [rP1]
    ret z

    nop
    ret nc

    nop
    ld c, [hl]
    nop
    add hl, de
    nop
    inc hl
    nop
    ld a, [hl]
    nop
    cp b
    nop
    pop af
    nop
    ld [c], a
    nop
    call nz, $8000
    nop
    stop
    jr nz, jr_01e_69dd

jr_01e_69dd:
    ld b, d
    nop
    add c
    nop
    rlca
    nop
    rra
    add b
    rrca
    nop
    rrca
    nop
    ld c, a
    nop
    ld a, a
    nop
    ld a, l
    nop
    db $fd
    nop
    rst $20
    nop
    add e
    nop
    daa
    nop
    ld c, a
    nop
    ld l, a
    nop
    ld e, a
    nop
    rst $38
    nop
    cp $00
    db $dd
    nop
    cp a
    nop
    ccf
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    sbc b
    nop
    ldh a, [rSB]
    ld [hl], b
    nop
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
    cp $ff
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
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
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
    nop
    nop
    nop
    cp a
    cp a
    sbc a
    sbc a
    adc a
    adc a
    cp a
    rst $38
    sbc a
    rst $38
    add a
    rst $30
    sub $ee
    rst $28
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    and l
    nop
    db $ec
    nop
    cp $00
    rst $38
    nop
    rst $30
    nop
    sub l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $30
    nop
    rst $38
    nop
    add a
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld b, b
    nop
    jr jr_01e_6a95

jr_01e_6a95:
    ld h, c
    nop
    add $00
    ret z

    nop
    stop
    jr nz, jr_01e_6a9f

jr_01e_6a9f:
    ret nz

    add b
    add hl, bc
    nop
    inc hl
    nop
    ld h, a
    nop
    sub e
    nop
    cpl
    nop
    ld l, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add d
    nop
    add h
    nop
    adc b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh [rP1], a
    pop de
    nop
    add e
    nop
    add $08
    inc b
    nop
    ld [$1000], sp
    nop
    jr nc, jr_01e_6add

jr_01e_6add:
    jr nz, jr_01e_6adf

jr_01e_6adf:
    ld b, b
    ld a, a
    rst $38
    rst $38
    rst $38
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
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    call c, $fffc
    rst $38
    ld e, a
    rst $18
    cp a
    ld a, a
    ld e, a
    cp a
    xor a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $01
    db $fc
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
    cp a
    nop
    rra
    nop
    rrca
    nop
    ei
    nop
    ei
    nop
    rst $20
    nop
    ld c, $80
    ld e, $00
    inc [hl]
    nop
    or b
    nop
    and b
    nop
    nop
    ld bc, $0100
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    adc l
    nop
    inc bc
    nop
    ld [hl], $00
    inc c
    nop
    add hl, sp
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    add sp, $00
    pop af
    nop
    jp z, $8400

    nop
    ld bc, $0300
    nop
    rla
    nop
    rla
    nop
    ld c, a
    nop
    dec sp
    nop
    sub a
    nop
    cpl
    nop
    ld e, $00
    inc [hl]
    nop
    inc h
    nop
    ld h, b
    nop
    pop bc
    nop
    add c
    ld b, c
    add d
    ld bc, $0204
    nop
    nop
    ld [$100c], sp
    ld [$0810], sp
    jr nz, jr_01e_6bb6

    nop
    dec h
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop

jr_01e_6bb6:
    nop
    nop
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    db $fd
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
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    nop
    sbc a
    nop
    rst $18
    nop
    db $fd
    ld b, $f8
    inc bc
    db $fc
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
    ld a, a
    nop
    ccf

Call_01e_6c00:
    ret nz

    cpl
    db $10
    rlca
    jr nz, jr_01e_6c09

    ld b, b
    inc bc
    add b

jr_01e_6c09:
    nop
    nop
    ld [$0100], sp
    nop
    ld bc, $4400
    nop
    ld [$5000], sp
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    stop
    ld de, $2100
    ld [bc], a
    ld bc, $1a04
    ld [$1004], sp
    add sp, $00
    ld a, b
    nop
    or b
    nop
    ld [hl], c
    nop
    db $e3
    nop
    ld [c], a
    nop
    call nz, $c400
    nop
    adc b
    nop
    jr jr_01e_6c41

jr_01e_6c41:
    db $10
    ld bc, $0020
    ld h, b
    ld [de], a
    ld b, c
    inc b
    add b
    ld [$8802], sp
    ld bc, $0190
    sub b
    rlca
    jr nz, jr_01e_6c62

    nop
    ld [bc], a
    nop
    ld [bc], a
    add b
    nop
    nop
    ld bc, $3100
    nop
    and e
    rst $38
    rst $38

jr_01e_6c62:
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
    ldh a, [$9f]
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ccf
    ld b, b
    ccf
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    jr nz, jr_01e_6cb3

jr_01e_6cb3:
    stop
    dec b
    nop
    ld [$0800], sp
    nop
    ld de, $2200
    nop
    ld [bc], a
    nop
    call nz, $8c00
    nop
    adc b
    nop
    db $10
    ld bc, $0120
    ld h, b
    nop
    ld b, b
    ld [bc], a
    add h
    nop
    adc h
    ld b, b
    stop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    ld [de], a
    nop
    rlca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $30
    nop
    ld sp, hl
    nop
    ret


    nop
    cp l
    nop
    cp l
    nop
    ei
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_6d0d:
    nop
    ccf
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    rst $38
    add b
    ldh [$df], a
    rst $38
    rst $30
    cp [hl]
    pop bc
    ld d, b
    adc d
    inc c
    add b
    ld h, b
    add l
    db $10
    rst $00
    jr jr_01e_6d0d

    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$06
    ldh a, [$0d]
    ldh a, [rNR22]
    ldh [$37], a
    ret nz

    daa
    add b
    ld c, $80
    dec e
    ret nz

    dec a
    add b
    add hl, sp
    add b
    inc de
    nop
    rlca
    nop
    ld l, $10
    inc c
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    adc b
    nop
    ld bc, $0f00
    nop
    inc bc
    nop
    ld [hl+], a
    nop
    ld b, $00
    inc c
    nop
    sub l
    nop
    rrca
    nop
    ld c, a
    nop
    rrca
    nop
    ld e, a
    nop
    ccf
    nop
    cp a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and b
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld sp, hl
    nop
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
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
    rst $38
    nop
    nop
    rst $38
    and a
    rst $18
    rst $38
    ccf
    rlca
    ld [$7f00], sp
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    xor a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    db $fc
    nop
    cp b
    nop
    adc b
    ld bc, $0170
    add sp, $00
    db $e4
    ld [bc], a
    ldh [rP1], a
    ret nz

    inc b
    and b
    inc b
    ldh [$08], a
    and b
    ld [$0180], sp
    nop
    ld bc, $2100
    nop
    ld b, e
    nop
    ld b, e
    ld b, b
    sub h
    nop
    adc h
    nop
    jr z, jr_01e_6dff

jr_01e_6dff:
    ld e, b
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    jp $c100


    nop
    add c
    nop
    add d
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0100
    ld b, b
    ld bc, $0300
    nop
    inc de
    nop
    inc bc
    ld b, b
    ld b, $00
    ld h, $00
    dec h
    nop
    dec h
    nop
    ld c, l
    nop
    ld c, l
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    adc e
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rra
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
    or $01
    db $e3
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub e
    nop
    inc de
    nop
    ld [bc], a
    ld b, b
    ld a, [hl+]
    nop
    ld h, $00
    inc c
    nop
    ld e, h
    nop
    ld c, l
    nop
    adc a
    nop
    dec bc
    nop
    ld a, d
    nop
    sub $00
    push af
    nop
    db $fd
    nop

jr_01e_6e97:
    db $fc
    nop
    ld [hl], h
    nop
    jr z, jr_01e_6e9d

jr_01e_6e9d:
    jr z, jr_01e_6e9f

jr_01e_6e9f:
    dec de
    nop
    inc bc
    nop
    ld h, d
    nop
    ld d, [hl]
    nop
    ld h, $00
    sub [hl]
    nop
    sbc $00
    inc e
    nop
    inc e
    nop
    inc l
    db $10
    inc l
    db $10
    inc l
    db $10
    ld l, h
    nop
    ld e, h
    jr nz, jr_01e_6f10

    jr nz, jr_01e_6e97

    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld a, [$7900]
    nop
    ei
    nop
    ei
    nop
    di
    nop
    di
    nop
    push af
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    di
    nop
    rst $30
    nop
    ld h, a
    nop
    ld [hl], e
    nop
    db $76
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01e_6f10:
    nop
    rst $38
    ret c

    rlca
    ld d, [hl]
    xor b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, @+$04

    nop
    ld bc, $0040
    ld b, h
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld [$0c01], sp
    nop
    ld [$0800], sp
    nop
    ld c, b
    nop
    jr jr_01e_6f39

jr_01e_6f39:
    stop
    sub b
    ld bc, $00d0
    ldh a, [rP1]
    ld [hl], b
    nop
    ld sp, $2100
    nop
    ld hl, $2d00
    nop
    scf
    nop
    ld [hl], c
    nop
    ld h, c
    nop
    db $e3
    nop
    db $e3
    nop
    jp $c700


    nop
    add $00
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    sbc a
    nop
    sub a
    nop
    sub a
    nop
    add a
    nop
    and a
    nop
    or a
    nop
    scf
    nop
    rla
    ld [$0027], sp
    daa
    nop
    daa
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $fc
    cp e
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $20
    ld e, [hl]
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    inc c
    ld [bc], a
    ld c, h
    inc bc
    inc a
    ld bc, $012c
    xor h
    ld bc, $8128
    inc l
    ld bc, $030c
    adc h
    ld bc, $01ac
    adc h
    ld bc, $018c
    xor h
    ld bc, $001e
    inc e
    nop
    ld e, $00
    sbc [hl]
    nop
    ld e, [hl]
    nop
    sbc $00
    jp c, $ff00

    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
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
    ld a, a
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ld [bc], a
    cp $02
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [bc], a
    cp $02
    cp $06
    cp $06
    cp $04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    dec b
    db $fc
    dec b
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$1a

jr_01e_7053:
    ld hl, sp+$18
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]

jr_01e_705f:
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$34]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR42], a
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c

jr_01e_7075:
    pop hl
    ld h, c

jr_01e_7077:
    pop hl

jr_01e_7078:
    ld h, c
    pop hl

jr_01e_707a:
    pop hl
    ld bc, $01f1
    pop af
    ld bc, $7c8c
    sbc h
    ld a, h
    sbc h
    ld a, h
    sbc h
    ld a, h
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    ret nc

    jr nc, jr_01e_7053

    jr nc, jr_01e_7075

    db $10
    ld d, b
    and b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sbc b
    jr nz, jr_01e_7078

    jr z, jr_01e_707a

    dec e
    db $ed
    ld [hl], $cf
    ld e, b
    and a
    ld [hl], b
    rst $08
    ld a, b
    add a
    ld [hl], b
    adc a
    jr c, jr_01e_7077

    ld a, b
    nop
    jr c, jr_01e_70b4

jr_01e_70b4:
    jr c, jr_01e_70b6

jr_01e_70b6:
    ld a, h
    nop
    inc e
    nop
    call c, $2e00
    ld b, b
    sbc h
    nop
    sbc h
    jr nz, jr_01e_705f

    ld b, b
    ld c, $60
    ld e, $60
    ld c, $e0
    rra
    ldh [$0e], a
    ld h, b
    ld e, $e1
    ld a, [bc]
    ldh [$27], a
    ret nz

    daa
    ld b, b
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    db $eb
    nop
    rst $00
    nop
    rla
    nop
    inc sp
    nop
    rla
    nop
    dec hl
    nop
    scf
    nop
    inc de
    nop
    daa
    nop
    and e
    nop
    inc sp
    nop
    inc bc
    nop
    inc bc
    nop
    dec hl
    nop
    inc sp
    nop
    dec sp
    add b
    dec sp
    add b
    nop
    ld bc, $0101
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
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e1], a
    ldh [$e1], a
    ldh [$e1], a
    ld h, b
    pop hl
    ldh [$e1], a
    ldh [$e1], a
    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    add b
    add a
    add c
    add a
    add c
    add a
    add c
    add a
    add c
    add a
    add e
    add a
    add c
    add a
    add c
    add a
    add d
    adc a
    nop
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    dec bc
    ccf
    rrca
    dec sp
    add hl, de
    ccf
    jr jr_01e_7209

    inc e
    ld a, a
    inc e
    ld a, a
    ld e, $7f
    ld e, $7f
    ld a, $7f
    ld e, $7f
    ld a, $7f
    ld a, $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, l
    nop
    ccf
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld e, e
    nop
    ccf
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    rrca
    nop
    ld d, [hl]
    nop
    ld [de], a
    nop
    ld [hl+], a
    nop
    rrca
    nop
    ld l, $00
    ld c, $40
    ld b, $00
    ld c, $00
    ld c, $00
    rla
    nop
    rlca
    nop
    inc de
    db $10
    rrca
    nop
    rlca
    add b
    rlca
    add b
    dec b
    add b
    inc bc
    ret nz

    dec bc
    add b
    ccf
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    rra
    ldh [$1f], a
    db $fc
    inc bc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a

jr_01e_7209:
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    rlca
    ld a, a
    ld c, $7f
    ld c, $7f
    ld b, $7f
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0c
    rst $38
    nop
    inc e
    nop
    inc e
    nop
    inc e
    ld [bc], a

jr_01e_7227:
    jr jr_01e_7238

    nop
    ld a, $41
    jr c, jr_01e_726f

    jr nz, jr_01e_7279

    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, e
    inc b
    ld a, e

jr_01e_7238:
    inc b
    dec sp
    nop
    cp e
    nop
    cp e
    nop
    cp e
    nop
    di
    nop
    di
    nop
    rst $30
    nop
    rst $30
    ld [$00f7], sp
    rst $30
    nop
    rst $30
    nop
    or $00
    and $00
    xor $00
    xor $01
    xor $01
    ld l, $80
    ld b, $ae
    nop
    ld l, $80
    ld c, $c0
    ld [bc], a
    pop de
    ld [bc], a
    db $dd
    nop
    db $dd
    nop
    db $dd
    nop
    db $dd
    nop
    reti


    nop

jr_01e_726f:
    reti


    nop
    cp e
    nop
    cp e
    inc b
    cp e
    nop
    cp e
    nop

jr_01e_7279:
    cp e
    nop
    or e
    nop
    or e
    nop
    scf
    nop
    ld [hl], a
    ld [$0877], sp
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld h, a
    db $10
    ld l, a
    db $10
    cpl
    ld d, b
    rrca
    ld h, b
    rrca
    jr nz, jr_01e_7227

    nop
    adc a
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    sbc a
    ld b, b
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $7e
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    jr jr_01e_7310

    add b
    nop
    nop
    add b
    add b
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
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    dec b

jr_01e_7310:
    nop
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
    ld [$0904], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_01e_734e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc b
    jr nz, jr_01e_735f

    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    inc b
    jr z, jr_01e_7371

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_01e_734e:
    jr nc, jr_01e_7381

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01e_7391

    ld a, [hl-]
    dec sp
    inc a
    inc b
    inc b
    inc b
    inc b

jr_01e_735f:
    dec a
    ld a, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    ccf
    ld b, b
    ld b, c
    ld b, d
    inc b
    inc b
    inc b
    inc b
    ld b, e
    ld b, h

jr_01e_7371:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    inc b
    inc b
    ld c, e
    ld c, h
    ld c, l

jr_01e_7381:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld c, [hl]
    inc b
    ld c, a
    ld d, b
    ld d, c
    inc b
    inc b
    inc b
    ld d, d
    ld d, e
    ld d, h

jr_01e_7391:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld c, [hl]
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc b
    inc b
    inc b
    ld e, c
    ld e, d
    ld e, e
    inc b
    inc b
    inc b
    inc b
    inc b
    ld c, [hl]
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    inc b
    inc b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc b
    inc b
    inc b
    ld c, [hl]
    inc b
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
    ld [hl], c
    inc b
    inc b
    ld [hl], d
    inc b
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc b
    inc b
    db $76
    ld [hl], a
    ld a, b
    inc b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    inc b
    inc b
    inc b
    ld d, l
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
    inc b
    inc b
    inc b
    adc e
    adc h
    adc l
    inc b
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
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    inc b
    inc b
    inc b
    or c
    or d
    or e
    or h
    xor b
    xor b
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    inc b
    inc b
    cp [hl]
    cp a
    ret nz

    xor b
    xor b
    xor b
    pop bc
    jp nz, $04c3

    call nz, $8b04
    push bc
    add $04
    inc b
    rst $00
    ret z

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0105
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
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
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
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
    ld [bc], a
    inc b
    inc b
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
    nop
    ld [bc], a
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
    ld [bc], a
    inc b
    inc b
    nop
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
    inc b
    inc b
    nop
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_01e_757b

jr_01e_757b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    scf
    nop
    inc bc
    nop
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
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$007f]
    cp $00
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    nop
    nop
    nop
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    db $fc
    nop
    db $10
    ld bc, $0300
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $00fc
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $02
    db $fc
    ld bc, $00fe
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$3f
    nop
    db $fc
    nop
    nop
    nop
    nop
    add b
    nop
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop af
    cp $f1
    cp $f3
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    cp $00
    cp $00
    ld hl, sp+$00
    ld l, $c1
    ld a, [hl]
    ld bc, $0158
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, $00
    cp l
    nop
    cp l
    nop
    db $fd
    nop
    ei
    nop
    dec de
    nop
    rlca
    nop
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    ldh a, [$c0]
    ld hl, sp-$40
    ld hl, sp-$40
    db $ec
    ret nc

    or $c8
    ei
    call nz, $daf5
    ld a, [$01dd]
    ret z

    rlca
    ret c

    rlca
    add sp, $05
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$06
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    inc bc
    db $fc
    ld b, $d8
    inc bc
    sbc h
    ld [bc], a
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    nop
    scf
    nop
    scf
    nop
    ld [hl], a
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    ldh [$e0], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    jp Jump_01e_47c0


    ret nz

    add a
    ld b, b
    ld c, a
    pop bc
    call c, $f8c3
    rst $00
    ld a, [c]
    rst $08
    rst $20
    rst $38
    nop
    db $eb
    nop
    jp hl


    nop
    db $eb
    nop
    ld sp, hl
    nop
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$02
    db $ec
    ld [bc], a
    ld hl, sp+$02
    ld hl, sp+$04
    ld sp, hl
    inc b
    ld hl, sp+$00
    ld sp, hl
    nop
    di
    nop
    di
    nop
    rst $30
    nop
    or $00
    rst $30
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
    db $fc
    nop
    ld hl, sp+$00
    rst $30
    nop
    add a
    rst $38
    nop
    rra
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    nop
    db $f4
    nop
    and h
    nop
    ld l, $00
    ld c, $00
    ld l, $00
    adc h
    nop
    inc l
    nop
    ld h, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    inc h
    sub c
    add b
    ld a, d
    nop
    scf
    nop
    inc b
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fe00
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add d
    db $10
    inc bc
    db $10
    inc bc
    db $10
    rlca
    nop
    inc bc
    jr nz, @+$03

    jr nz, @+$42

    nop
    ld b, b
    nop
    ld b, h
    nop
    ld b, a
    nop
    ld [hl], a
    nop
    ld b, a
    nop
    rst $10
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    or b
    nop
    ld [hl], b
    ld d, h
    dec bc
    nop
    cp $00
    sbc [hl]
    nop
    ei
    nop
    ld hl, $0500
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $f4
    nop
    ldh [rP1], a
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    cp h
    nop
    cp $00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
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
    cp a
    nop
    ccf
    nop
    rra
    nop
    sbc [hl]
    xor b
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    db $f4
    nop
    rst $38
    nop
    ld sp, hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, $810c
    inc b
    add b
    ld [bc], a
    ld h, b
    ld [bc], a
    and b
    nop
    jr nz, jr_01e_7afb

jr_01e_7afb:
    ld [de], a
    nop
    ld de, $8900
    nop
    inc e
    nop
    ld [hl], h
    nop
    cp [hl]
    nop
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
    rst $38
    nop
    rst $38
    nop
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
    ld sp, hl
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    xor $00
    ld a, c
    nop
    ccf
    nop
    rst $30
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
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    adc a
    nop
    rst $08
    nop
    ld b, a
    nop
    ld h, a
    nop
    db $eb
    nop
    push af
    nop
    ld e, h
    nop
    db $ec
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
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
    cp $05
    ld hl, sp+$20
    ld e, a
    nop
    or $00
    rst $38
    nop
    rst $30
    nop
    rst $00
    nop
    ld a, a
    nop
    db $fd
    nop
    rst $38
    nop
    db $db
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    ld a, a
    ld [bc], a
    ld a, a
    ld bc, HeaderManufacturerCode
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp $00
    ld a, a
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fc
    nop
    cp $00
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    ld a, l
    nop
    or l
    nop
    cp [hl]
    nop
    rst $18
    nop
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rP1]
    ld a, l
    nop
    rst $38
    nop
    xor d
    nop
    adc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
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
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, e
    nop
    ld e, l
    nop
    ld a, $00
    ld c, a
    dec b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_01e_7d09

    db $10
    ccf
    ld [$003f], sp
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    ld [bc], a
    inc bc
    nop
    inc bc
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
    nop
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
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
    rst $28
    nop
    rst $30
    nop
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
    nop
    sub e
    nop
    pop bc
    nop
    pop bc
    nop
    pop hl
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ld l, h
    nop
    db $76
    ld bc, $00a6
    or l
    inc b
    ret nc

    nop
    cp $00
    ld b, b
    nop
    nop
    nop
    inc c
    nop
    inc bc
    nop
    rst $38
    nop
    rst $28
    nop

jr_01e_7d09:
    rst $38
    nop
    sbc $00
    cp $00
    ld e, a
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    ld e, a
    nop
    dec hl
    ld b, b
    inc de
    jr nz, jr_01e_7d47

    nop
    rrca
    db $10
    inc bc
    nop
    dec h
    nop
    stop
    jr jr_01e_7d37

jr_01e_7d37:
    rra
    nop
    ld l, a
    nop
    ld e, a
    nop
    cp a
    nop
    rst $18
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop

jr_01e_7d47:
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
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
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    rst $18
    nop
    rst $28
    nop
    rst $20
    nop
    ei
    nop
    rst $38
    nop
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    ld e, b
    nop
    rrca
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    db $f4
    nop
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    db $fc
    nop
    cp $00
    cp $00
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
    nop
    nop
    add hl, de
    nop
    rst $38
    rst $38

jr_01e_7de2:
    rst $38
    rst $38

jr_01e_7de4:
    rst $28
    rst $28

jr_01e_7de6:
    add [hl]
    add [hl]

jr_01e_7de8:
    cp $ef

jr_01e_7dea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc [hl]
    cp $de
    cp $df
    cp $ef
    rst $38
    ld [$05f0], sp
    ldh a, [rP1]
    ld hl, sp+$02
    db $fc
    ld bc, $00fe
    cp $00
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
    add b
    nop
    ret nz

    nop
    ret nz

    jr nz, jr_01e_7de2

    jr nz, jr_01e_7de4

    jr nc, jr_01e_7de6

    jr nc, jr_01e_7de8

    jr c, jr_01e_7dea

    inc a
    ret nz

    ld [bc], a
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
    rst $28
    nop
    ld a, d
    nop
    cp a
    nop
    ld e, a
    nop
    rst $20
    nop
    ei
    nop
    ld sp, hl
    nop
    ld a, [$bd00]
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $84
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ldh [rP1], a
    rrca
    nop
    cp a
    nop
    cp b
    nop
    add a
    nop
    rst $38
    nop
    rst $18
    nop
    ldh [$fc], a
    add b
    ldh a, [$c0]
    ldh [$e0], a
    db $10
    ldh a, [$0c]
    db $fc
    ld h, $de
    add e
    rst $38
    ret nz

    rst $38
    add sp, -$01
    ld a, [c]
    db $fd
    ld sp, hl
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ccf
    ccf
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    inc a
    jr jr_01e_7eca

    ld hl, sp+$1f
    rst $38
    rst $38
    inc a
    inc a
    inc e
    inc e
    inc a
    inc a
    rst $38
    inc a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, b
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$7c
    db $fc

jr_01e_7eca:
    rst $38
    ld a, h
    rst $38
    ld a, a
    cp h
    db $fc
    cp h
    cp $c8
    rst $30
    db $f4
    ei
    add sp, -$01
    or $fd
    ld sp, hl
    cp $f8
    rst $38
    db $fc
    rst $38
    ld bc, $00fe
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
    xor a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    ld l, $00
    or a
    nop
    ei
    nop
    db $fd
    nop
    cp b
    nop
    call z, $e600
    nop
    db $eb
    nop
    ld sp, hl
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
    nop
    rst $38
    nop
    ld hl, sp+$54
    dec bc
    nop
    ld a, a
    nop
    ld a, a
    nop
    rra
    nop
    rra
    nop
    ld a, a
    nop
    rst $30
    nop
    inc a
    nop
    cp $00
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    db $fc
    nop
    rrca
    nop
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01e_7f4e:
    ld a, a
    nop
    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp-$7c
    db $fc
    ld h, d
    cp $39
    rst $38
    sbc h
    rst $38
    ld c, a
    rst $38
    and a
    rst $38
    db $db
    rst $38
    db $ed
    rst $38
    or $ff
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    inc e
    inc e
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_01e_7f9c

    inc e
    inc e
    inc e
    inc e
    inc a
    inc a
    db $fc
    ccf
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    jr c, jr_01e_7f4e

    ld a, b
    ld hl, sp-$01
    inc a
    rst $38
    rst $38

jr_01e_7f9c:
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    inc a
    cp $f0
    sbc a
    and $d9
    db $d3
    db $ec
    ld sp, hl
    and $fc
    di
    ld b, $f8
    ld [bc], a
    ld hl, sp+$01
    db $fc
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
    ld e, a
    nop
    rst $38
    nop
    jp hl


    nop
    ld b, c
    nop
    jr nc, jr_01e_7fcf

jr_01e_7fcf:
    ld [$0c00], sp
    nop
    add [hl]
    nop
    ld h, a
    nop
    jr nc, jr_01e_7fd9

jr_01e_7fd9:
    ret c

    nop
    xor h
    nop
    sub $03
    ldh [$58], a
    rlca
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
    nop
    rst $38
    nop
    rst $08
    nop
    ldh a, [rP1]
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    and b
    db $01
    add b
