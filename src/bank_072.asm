SECTION "ROM Bank $072", ROMX[$4000], BANK[$72]

    sbc $3f
    ld e, [hl]
    cp a
    ld e, [hl]
    cp a
    ld c, a
    cp a
    ld l, a
    sbc a
    ld h, a
    sbc a
    ld h, a
    sbc a
    ld [hl], a
    adc a
    ld [hl], a
    adc a
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $20
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
    sbc a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add e
    rst $38
    adc e
    rst $38
    add e
    rst $38
    jp $c1ff


    rst $38
    add c
    rst $38
    jp nz, $e0ff

    rst $38
    ldh [rIE], a
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
    cp a
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    rst $28
    rst $38
    adc [hl]
    rst $38
    call nz, $c4ff
    rst $38
    rst $20
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    ld d, $ff
    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    add h
    rst $38
    adc e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

Jump_072_4100:
    ld a, a
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp h
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp [hl]
    rst $38
    ld e, $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $ec
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ret


    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    ld c, a
    rst $38
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc h
    rst $38
    jp nz, Jump_072_64ff

    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    add b
    rst $38
    add h
    rst $38
    db $e4
    rst $38
    add sp, -$01
    db $fc
    rst $38
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
    cp $ff
    cp $ff
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc l
    rst $38
    ld [hl-], a
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, e
    rst $38
    ld h, [hl]
    rst $38
    ld b, a
    rst $38
    add $ff
    ld h, $ff
    ld c, a
    rst $38
    ld l, a
    rst $38
    adc $ff
    ld e, a
    rst $38
    rst $18
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    rla
    rst $38
    or a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    add a
    rst $38
    adc $ff
    rst $08
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld hl, sp-$01
    add hl, sp
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
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
    jr jr_072_4293

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_072_42a3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_072_42b3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_072_42c3

    ld [hl-], a

jr_072_4293:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_072_42d3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

Jump_072_42a3:
jr_072_42a3:
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_072_42b3:
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

jr_072_42c3:
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
    ld [hl], c
    ld [hl], d

jr_072_42d3:
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
    xor d
    xor e
    xor h
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
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $b4c3

    call nz, $c6c5
    rst $00
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
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_072_4394

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_072_43a4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_072_43b4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc bc
    ld l, $2f
    jr nc, jr_072_43c5

jr_072_4394:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_072_43d5

    ld a, [hl-]
    dec sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_072_43a4:
    nop
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_072_43b4:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_072_43c5:
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_072_43d5:
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0707
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    adc a
    adc a
    adc a
    sbc [hl]
    adc a
    rrca
    adc a
    ld b, [hl]
    rrca
    ld b, $2f
    ld b, $27
    sbc [hl]
    scf
    rrca
    rla
    xor a
    rla
    ld c, $9f
    rlca
    adc a
    ld d, a
    adc a
    rla
    adc a
    ld e, e
    adc a
    ld l, a
    rrca
    rst $00
    rlca
    adc [hl]
    add [hl]
    rlca
    add a
    ld h, $47
    and e
    add a
    ld d, e
    ld b, a
    xor e
    ld a, a
    add l
    ld a, a
    ld [hl], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, [$f0b0]
    xor b
    ld hl, sp+$36
    ldh a, [$3c]
    or b
    ld a, h
    ld hl, sp+$58
    cp a
    ld hl, sp-$61
    ld hl, sp-$02
    ld sp, hl
    rst $38
    db $fd
    cp a
    rst $38
    cp d
    rst $38
    cp l
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    add a
    ld sp, hl
    sbc l
    ld hl, sp-$39
    jr c, jr_072_4598

    inc e
    rst $30
    rrca
    rrca
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ei
    db $fc
    xor a
    ld [hl], b
    cp a
    nop
    ld c, c
    add [hl]
    ld [hl], e
    call z, $ff72
    ld l, a
    rra
    rlca
    ld bc, $f83f
    db $fc
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3d], a
    ret nz

    ld [hl+], a

jr_072_458f:
    ret nz

    ld [hl], b
    add b
    ld e, a
    and b
    sbc a
    rst $38
    rst $38
    rst $38

jr_072_4598:
    rst $18
    rst $38

jr_072_459a:
    ld b, e
    cp a
    cp l
    ld b, e
    rst $38
    nop
    rra
    nop
    rrca
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $08
    jr nc, jr_072_459a

    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_072_458f

    ldh [$c5], a
    cp $9f
    rst $38
    cp l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    ccf
    rra
    rlca
    inc bc
    ld bc, $7c00
    nop
    db $e3
    inc a
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $c0
    rrca
    ldh a, [$f1]
    cp $fa
    rst $38
    rst $38
    rst $38
    adc b
    push bc
    pop af
    ld [$fdf8], a
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    cp $ff
    call c, $9cfc
    db $fc
    ld a, h
    db $fc
    ld a, l
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $30
    jp hl


    ei
    push hl
    rst $30
    jp hl


    db $fd
    rst $38
    rst $18
    rst $38
    rrca
    rrc h
    ret nz

    ld c, [hl]
    and c
    adc [hl]
    ld d, c
    adc d
    ld h, c
    dec bc
    sub b
    adc c
    ld [hl], d
    db $dd
    and d
    pop af
    ret z

    db $e3
    ret c

    pop hl
    and d
    di
    db $ed
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    cp h
    rst $38
    sbc h
    db $fc
    sbc d
    cp $9c
    sbc [hl]
    db $ec
    rst $08
    sub d
    rst $08
    push de
    adc $c0
    call nz, $c0c8
    db $ec
    add sp, -$2f
    rst $08
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp e
    dec sp
    push af
    jr nc, jr_072_46a7

    jr nc, @+$59

    ld [hl-], a
    dec d
    ld [hl], b
    ld e, $5f
    ld e, a
    or d
    ld e, a
    ldh a, [$9f]
    ld a, l
    cp $59
    cp $3c
    rst $38
    rra
    rst $38
    add a
    rst $38
    rst $38
    rst $08
    rst $20
    cp a
    inc bc
    rst $38
    pop bc
    ld a, a
    jp c, $f265

    db $fd
    jp hl


    rst $30
    rst $18
    pop hl
    cp a
    ret nz

    ld a, a
    add b
    rst $38
    ld [$00ff], sp
    adc c
    ld a, [hl]
    add a
    ld a, b
    db $fc
    ld b, e
    inc a
    jp $877a


    or c
    rst $08
    ld sp, hl
    rlca
    rst $18
    jr nz, @+$01

    ld b, b
    rst $38
    inc b
    rst $38
    nop
    ei
    nop
    ld e, a
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp [hl]
    ldh [$fe], a
    db $fc
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp e
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_072_46a7:
    nop
    inc a
    nop
    ld hl, sp+$00
    rst $38
    ld bc, $04ff
    db $e3
    ld e, $90
    rrca
    adc a
    ret nz

    pop de
    ldh [$e0], a
    ldh a, [$e4]
    ld hl, sp-$46
    db $fc
    rra
    rst $38
    xor $ff
    db $fc
    rst $38
    ld h, b
    ccf
    cp $07
    dec a
    jp $e31d


    cp a
    ld b, b
    ld l, a
    ret nc

    cp $01
    rst $38
    nop
    call z, $ff03
    nop
    rst $28
    db $10
    push af
    rrca
    rrca
    ldh a, [$ec]
    ld hl, sp-$01
    cp $ff
    adc $df
    add $af
    ld b, e
    ld a, a
    rlca
    ld a, a
    inc bc
    ccf
    ld b, d
    dec sp
    nop
    jr jr_072_4712

    jr jr_072_4718

    jr jr_072_4726

    dec de
    or h
    cp a
    or d
    cp a
    cp [hl]
    cp a
    xor a
    rst $38
    add a
    pop hl
    add $e8
    rst $00
    ccf
    ret nz

    rst $38
    ld e, e
    rst $38
    dec e
    rst $38
    inc e
    ld a, a
    and b
    db $fd
    ld l, b
    ld a, h
    and b

jr_072_4712:
    ret nz

    inc h
    and b
    ld b, l
    pop af
    add c

jr_072_4718:
    di
    pop bc
    rst $38
    db $eb
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    db $fc
    rrca
    ld a, a
    inc e

jr_072_4726:
    ld a, a
    ld h, d
    ld h, b
    inc de
    sub b
    ld b, a
    add b
    jp nz, $4380

    nop
    ld [bc], a
    ld [bc], a
    dec b
    rrca
    nop
    ld [bc], a
    dec c
    ld a, c
    and $f9
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld [bc], a
    cp $0d
    sbc h
    cp e
    sbc h
    xor h
    inc e
    xor b
    ld [$009c], sp
    inc b
    inc b
    nop
    ei
    add h
    rst $38
    dec b
    cp $05
    rst $38
    rlca
    ccf
    rst $28
    db $fc
    rst $38
    rst $38
    db $fd
    ld hl, sp-$18
    rst $28
    ldh a, [$ec]
    pop af
    rst $20
    ld sp, hl
    ld sp, hl
    cp $fd
    cp $fe
    rst $38
    ld b, b
    rst $38
    or b
    nop
    ret nz

    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $10
    inc a
    inc e
    ldh [$5d], a
    ld [c], a
    ld a, a
    ret nz

    ld l, a
    sub b
    sbc a
    ldh [$63], a
    db $fc
    rst $38
    inc hl
    ei

Call_072_4787:
    inc bc
    rst $38
    add b
    ld a, a
    add b
    rst $38
    ld [bc], a
    rst $28
    nop
    rst $38
    ld bc, $033f
    ld a, a
    inc bc
    ei
    inc b
    ld l, e
    call c, $ffef
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    db $fd
    cp $91
    cp $9f
    ld h, b
    ld sp, hl
    nop
    ld a, [hl]
    nop
    ld c, a
    ldh a, [rIE]
    nop
    rst $38
    ld [$fe01], sp
    or e
    call z, Call_000_04ff
    ld a, [hl]
    dec b
    cp [hl]
    ld bc, $013e
    ei
    inc b
    ld c, a
    ldh a, [rIF]
    di
    dec b
    cp $a1
    ld e, [hl]
    ld h, c
    sbc [hl]
    sbc [hl]
    ld sp, hl
    ld d, $fd
    sub $3f
    push hl
    ld e, $ff
    jr nz, jr_072_4853

    add b
    rst $38
    ld [$00df], sp
    sbc b
    nop
    xor b
    db $10
    ld h, b
    db $10
    rst $38
    ld h, e
    rst $38
    db $eb
    rst $38
    ld h, e
    rst $30
    db $eb
    rst $38
    ld h, e
    rst $38
    ld a, e
    ccf
    ccf
    inc sp
    rrca
    ld a, e
    ld b, l
    di
    ld c, l
    ld [hl], l
    jp z, Jump_072_52e9

    ret


    ld h, e
    ld [$fad5], a
    push bc
    db $e3
    ret z

    pop hl
    ret nc

    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
    ld a, $7f
    db $fc
    db $fc
    ld a, c
    ld hl, sp-$10
    ldh a, [$b0]
    ldh a, [$a8]
    ld [hl], l
    cp b
    cp a
    ld e, h
    ld a, a
    sbc a
    cp a
    ld e, [hl]
    rra
    cp a
    ccf
    ccf
    cp a
    ccf
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    cp a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp d
    cp [hl]
    ld l, b
    sbc a
    inc a
    sbc a
    ld c, $17
    cp a
    daa
    sbc a
    ld [hl], a
    ld c, $66
    inc c
    ld b, $25
    ld c, $f4
    ld l, a
    sub h
    rst $38
    adc a
    rst $28
    rst $38
    and a

jr_072_4853:
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    db $e4
    rst $38
    and h
    rst $38
    ld a, [c]
    rrca
    cp h
    jp $857a


    di
    adc h
    ldh [$1f], a
    xor $11
    rst $00
    jr c, jr_072_48a3

    ret nz

    ld hl, sp-$20
    ld a, b
    ccf
    rst $20
    ld e, $07
    db $fc
    xor a
    cp $b7
    ld l, a
    cpl
    inc bc
    sub e
    nop
    pop bc
    nop
    ldh [rP1], a
    db $ed
    nop
    rst $38
    nop
    ld e, [hl]
    db $fd
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld d, l
    rst $38
    ret nz

    rst $38
    jp $c7fc


    ld hl, sp+$2e
    ld hl, sp-$01
    ld a, b
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    ccf
    rst $38
    cp l

jr_072_48a3:
    ld a, a
    rst $38
    ccf
    ccf
    ld a, a
    add e
    ld a, a
    rst $38
    ld b, c
    ld a, h
    inc bc
    ld a, [$f900]
    nop
    db $f4
    rrca
    ld sp, hl
    rlca
    ret nz

    cp a
    jr nz, @+$01

    pop de
    rst $38
    ld d, a
    rst $38
    rst $00
    ccf
    rst $28
    rra
    jp nz, $c63f

    add hl, sp
    db $db
    inc h
    ld a, a
    call z, $82ff
    pop af
    add d
    rst $30
    nop
    ldh a, [rP1]
    ld sp, hl
    nop
    ld a, $01
    dec c
    inc bc
    rlca
    inc bc
    dec bc
    rrca
    ld l, $1e
    ld a, h
    ld a, b
    add b
    dec b
    nop
    add h
    add b
    ld b, h
    pop bc
    add b
    pop hl
    db $f4
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    dec e
    cp a
    sbc $bf
    jp nz, $c23f

    ld a, a
    ret nz

    inc b
    pop hl
    inc b
    ld bc, $0804
    ldh [rPCM12], a
    db $fc
    sub $fe
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    ei
    ld [hl], a
    ld [hl], e
    and e
    ld e, d
    add a
    sbc [hl]
    ld c, d
    scf
    jp c, $9577

    rst $30
    dec c
    rst $38
    adc l
    rst $38
    dec c
    db $e3
    ld c, b
    ei
    call c, $ffff
    rst $38
    rst $38
    rst $28
    rst $38
    pop hl
    rst $38
    pop af
    ld [c], a
    db $e3
    ld a, [c]
    db $e3
    db $f4
    pop af
    and $eb
    ld a, [c]
    rst $38
    di
    rst $38
    ei
    dec sp
    rla
    inc sp
    add hl, sp
    inc sp
    db $ec
    ld a, [c]
    dec a
    sub c
    cp $f8
    cp h
    ld hl, sp+$24
    or b
    ld b, b
    sub b
    and b
    nop
    sub b
    sub b
    sub b
    rst $18
    ccf
    ld c, [hl]
    rst $38
    rst $38
    call c, $9ffb
    ld h, d
    sbc l
    add e
    ld a, h
    dec hl
    db $fc
    rla
    ldh [$c5], a
    ld hl, sp+$23
    call c, $c639
    db $fc
    inc bc
    sbc l
    inc bc
    ld c, a
    rlca
    rst $28
    ld a, $2d
    ld hl, sp-$01
    nop
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp e
    ld a, a
    rst $20
    rra
    rst $18
    ccf
    rst $18
    inc hl
    sub a
    ldh [$3f], a
    ret nz

    sbc e
    db $e4
    rst $38
    ld hl, sp-$55
    db $fc
    ld b, $ff
    jp $7f3f


    adc a
    ld a, b
    rrca
    ldh a, [rIF]
    ld a, [$c707]
    add b
    pop bc
    nop
    and e
    nop
    cp b
    sub b
    xor $d8
    db $fd
    cp $e9
    rst $38
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rst $18
    rst $38
    adc $f1
    sbc c
    ldh [$fc], a
    add b
    ld c, a
    add b
    pop bc
    nop
    jp nz, Jump_072_4100

    add b
    call nc, Call_000_0fc0
    add b
    add a
    rrca
    cp [hl]
    rrca
    cp a
    rrca
    rra
    rrca
    cpl
    rra
    ccf
    ld a, $fe
    ccf
    cp d
    ld a, a
    rst $30
    rst $38
    cp a
    ret nz

    db $e3
    ret nz

    db $e3
    nop
    pop bc
    nop
    nop
    nop
    db $fc
    ei
    ld hl, sp-$01
    pop af
    ld hl, sp-$0e
    push af
    ld a, [c]
    db $f4
    ldh a, [$f3]
    push af
    ld a, [c]
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $38
    di
    ld a, a
    rst $30
    rra
    dec sp
    rra
    ld h, a
    ld l, a
    pop de
    pop af
    ld h, h
    db $fd
    ld a, h
    ei
    ld a, l
    ld sp, hl
    ld l, a
    ld sp, hl
    cp $fd
    ld a, b
    ld a, l
    ld a, [$7afd]
    db $fd
    ld a, [hl]
    cp $fd
    ld a, [hl]
    db $fc
    adc $77
    add $63
    ld a, [c]
    ld b, l
    ld [$7a72], a
    dec b
    ld [hl], e
    adc h
    scf
    jp $27f3


    rst $38
    inc sp
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    and a
    rst $38
    or a
    and a
    ei
    rst $08
    or e
    and a
    db $dd
    add l
    di
    and b
    ld d, e
    and l
    ret nc

    xor $ff
    rst $38
    db $e3
    rst $30
    ei
    rst $30
    ei
    rst $30
    jp $c0f3


    ldh a, [$c3]
    ld h, b
    pop af
    ld h, b
    ld sp, hl
    ld l, b
    pop bc
    ld l, b
    ld c, c
    rst $38
    ei
    rst $20
    rst $38
    ld c, l
    rst $30
    db $ed
    ld sp, $41fe
    rst $38
    ld hl, sp-$07
    ldh a, [$e9]
    jr nc, jr_072_4a6e

    nop
    ei
    rlca
    rst $08
    ccf
    cp $1f
    db $dd
    ld a, $02
    rst $38
    adc [hl]
    pop af
    cp a
    ld h, b

jr_072_4a6e:
    db $fc
    nop
    jp z, $fb00

    ldh [$fa], a
    rst $38
    ei
    db $fc
    cp $d9
    call $4583
    add e
    db $fd
    add e
    or $f9
    scf
    cp $f0
    ccf
    or $0c
    ld a, [$641c]
    ld [$00f8], sp
    add b
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    ld [hl], b
    ldh [rNR23], a
    ldh a, [$cd]
    jr c, jr_072_4b0e

    rst $08
    cp a
    ld a, a
    rst $28
    rra
    rlc a
    jr z, jr_072_4aab

    cp a
    inc c
    rst $08
    inc a
    db $db
    cp $b7

jr_072_4aab:
    rst $38
    rst $38
    cp $dc
    rst $38
    adc l
    ld a, [c]
    adc l
    ldh a, [$8f]
    ld a, a
    rst $30
    ld h, d
    rst $28
    add [hl]
    ld b, c
    ld c, $1f
    ld c, $38
    rra
    ld [hl], b
    ccf
    or d
    ld a, l
    cp [hl]
    pop af
    ld a, h
    jp $c679


    ret z

    rst $38
    cp b
    rst $38
    ld a, c
    rst $38
    rst $38
    db $f4
    or a
    ret nz

    cp a
    ret nz

    ld a, [$2fe0]
    ld hl, sp-$28
    ld a, a
    rst $00

jr_072_4add:
    jr c, @-$1f

    jr nz, jr_072_4add

    cp c
    sbc $e9
    rst $08
    db $ec
    rst $08
    rst $28
    rst $38
    ret


    ld sp, hl
    rst $08
    rst $28
    sbc b
    or c
    ld e, h
    sbc c
    ld a, l
    reti


    ld bc, $9181
    add c
    ld sp, $f1a1
    and c
    inc de
    cp e
    ld e, a
    ld [hl], a
    xor l
    di
    inc hl
    db $e3
    ld [hl], a
    rst $30
    ld a, [bc]
    rst $38
    db $10
    db $fd
    xor b
    ld hl, sp+$7d
    cp $78

jr_072_4b0e:
    db $fc
    jp c, $11ff

    rst $38
    call c, Call_072_77dd
    ld d, a
    jp hl


    ld l, a
    jp nc, $642b

    dec l
    or d
    cp [hl]
    dec b
    adc a
    ld hl, sp-$31
    jp nc, $eadf

    cp $fe
    rst $38
    cp $ff
    cp $ff
    and $ff
    rst $20
    rst $30
    xor $f7
    and $f6
    ld [c], a
    or $e2
    rst $30
    ld a, [c]
    ei
    rst $30
    rst $38
    db $e3
    rst $38
    inc hl
    dec sp
    sub [hl]
    cp e
    daa
    cp a
    inc hl
    cp a
    ld [hl], l
    cp a
    push af
    rst $38
    and [hl]
    rst $38
    rst $30
    rst $38
    ld a, [$b7ff]
    inc a
    ld [bc], a
    ld sp, hl
    inc c
    or c
    or b
    dec sp
    jr z, @+$39

    ld de, $0206
    rrca
    inc bc
    db $fd
    rst $08
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    cpl
    rst $00
    jp hl


    ld [hl], b
    dec a
    ld c, $fd
    inc bc
    db $ec
    rra
    ld a, a
    and [hl]
    ld a, h
    ret nz

    db $fc
    ret nz

    ei
    ldh a, [$cf]
    ld hl, sp+$59
    or $37
    ret nz

    rst $28
    inc e
    ld hl, sp-$80
    ldh a, [rLCDC]

jr_072_4b88:
    ccf
    nop
    inc c
    rlca
    inc bc

jr_072_4b8d:
    inc bc
    rrca
    inc bc
    rra
    ld c, $1d
    jr jr_072_4bd1

    db $10
    ld [hl], h
    jr nc, jr_072_4b8d

    ld h, b
    rst $38
    ei
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    db $e3
    ld a, [hl+]
    rst $20
    rst $28
    nop
    ld sp, $2001
    ld bc, $01e1
    jp $e301


    inc bc
    add $03
    ei
    rlca
    rst $18
    rst $38
    rst $30
    rra
    db $fd
    inc bc
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    add b
    ld hl, sp+$00
    db $fc
    nop
    ld a, b
    add b
    jr c, jr_072_4b88

    sbc a
    ldh [$e8], a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $e3

jr_072_4bd1:
    rra
    ret nz

    ccf
    db $fc
    rlca
    ld hl, sp+$0f
    pop af
    rrca
    and b
    ld a, a
    rst $38
    nop
    jp hl


    ld b, $ff
    rla
    rst $38
    ld b, a
    adc a

jr_072_4be5:
    ld [hl], a
    adc a
    ld e, a
    rst $08
    ccf
    rst $38
    cp $ff
    cp $fe
    ld a, l
    cp $dc
    sbc $75
    xor a
    ld d, b
    add a
    inc a
    daa
    call Call_000_2f25
    ld l, a
    add hl, sp
    rst $38
    ret z

    rst $38
    jp hl


    rst $38
    pop de
    rst $38
    db $dd
    rst $38
    ld [hl], a
    rst $18
    ld l, e
    ei
    add c
    inc de
    pop hl
    inc bc
    ld a, [hl]
    rst $18
    ld [hl+], a
    xor $d8
    cp $fd
    rst $38
    db $fd
    db $fc
    ei
    rst $38
    ld e, h
    rst $18
    dec a
    ld l, a
    sbc e
    xor a
    ld b, c
    and l
    call nz, Call_072_5ee4
    cp a
    ld c, b
    ei
    ld a, l
    db $fd
    rst $38
    db $fc
    rst $38
    rst $18
    ld c, $de
    adc a
    sbc $8e
    sbc $8f
    ld a, a
    sbc a
    rst $38
    sub d
    jp nc, $deff

    db $e3
    rst $18
    ld [$53de], a
    ld e, a
    add $4b
    add a
    rlc a
    rst $08
    cp e
    rst $38
    di
    ei
    sbc a
    rst $38
    ld a, l
    rra
    sbc a
    ld a, $d9
    cp $78
    inc a
    jr nc, jr_072_4be5

    inc b
    rst $00
    nop
    ld a, e
    nop
    adc h
    nop
    ccf
    ret nz

    ld a, a
    ldh [$e8], a
    pop af
    db $ed
    pop af
    push af
    ei
    ei
    rst $38
    dec d
    rst $38
    add hl, bc
    rst $30
    rst $08
    db $fc
    cpl
    rst $10
    and a
    rra
    cpl
    rra
    dec c
    rlca
    sub e
    ld bc, $00ff
    rst $30
    ld [$ff76], sp
    and [hl]
    ld a, a
    ld l, [hl]
    ccf
    ld a, a
    inc e
    db $fd
    ld h, b
    rst $10
    add b
    xor l
    ld a, [de]
    rst $18
    jr nc, jr_072_4d04

    ldh [$fa], a
    inc bc
    dec l
    inc bc
    ld de, $630f
    rra
    ld a, l
    db $e3
    or a
    ret nz

    rst $00
    add b
    add [hl]
    nop
    rst $38
    nop
    sub a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    and e
    ld a, a
    cp a
    nop
    rst $38
    nop
    dec [hl]
    nop
    dec h
    nop
    ld c, a
    inc bc
    rst $30
    rrca
    cp a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], $ff
    db $fd
    cp $5d
    cp $0b
    db $fc
    rra
    ld hl, sp+$0e
    ldh a, [$fc]
    nop
    nop
    nop
    xor $fd
    xor $e8
    xor $fd
    cp $ff
    rst $38
    sub b
    sbc a
    add sp, -$41
    rst $08
    rst $38
    sbc a
    sbc e
    push hl
    cp e
    rst $18
    cp e
    rst $00
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $30
    rst $38
    cp a
    rst $28
    cp a
    rst $28
    ld a, a

jr_072_4d04:
    ld c, a
    ld a, [c]
    rst $00
    ld e, d
    bit 6, [hl]
    rst $38
    jp c, $b7df

    rst $18
    dec hl
    rst $18
    jr nz, jr_072_4d52

    ld e, b
    ccf
    ld a, e
    cp e
    ld a, a
    ld a, a
    cp e
    rst $38
    dec de
    rst $38
    db $eb
    ei
    rst $30
    ei
    xor a
    ld a, [$fa85]
    dec c
    cp a
    jp z, $b6ff

    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rra
    ld e, a
    cp a
    ccf
    ld d, [hl]
    scf
    sbc [hl]
    sub a
    ld [$d3ff], a
    rst $38
    ld [hl], a
    db $fd
    ld [hl], d
    ld a, h
    db $eb
    ld a, h
    db $eb
    db $ed
    ld a, e
    rst $38
    ld l, c
    rst $28
    rst $38
    rst $38
    db $e4
    ret c

    and e
    rst $20
    dec de
    sbc l
    dec hl
    rrca
    add b

jr_072_4d52:
    inc bc
    dec d
    inc hl
    sub l
    ccf
    dec hl
    rra
    rlca
    rra
    ld e, $07
    rlca
    inc bc
    ld bc, $07ff
    cp $17
    db $f4
    sbc e
    ld e, a
    adc b
    cp h
    ret nz

    sbc a
    ldh [$f6], a
    ld bc, $e0b1
    sbc a
    ld hl, sp+$7e
    add c
    cp a
    ret nz

    reti


    ldh [$f6], a
    ld sp, hl
    db $fd
    rst $38
    db $fd
    ld hl, sp-$01
    db $10
    call Call_072_7a72
    pop hl
    jp c, $ef2f

    rra
    or h
    rrca
    ei
    inc c
    rst $38
    nop
    db $eb
    sbc h
    ld hl, sp+$78
    ldh a, [$e0]
    ldh [$c0], a
    and b
    ret nz

    ret nc

    ldh a, [$78]
    ldh a, [rIE]
    inc a
    ccf
    inc bc
    ld e, c
    ld b, $ff
    rst $38
    db $fc
    rst $38
    or $f9
    cp $ff
    rst $38
    cp $fa
    rst $38
    ldh a, [rIE]
    pop de
    rst $38
    add c
    rst $38
    jp nz, $c7ff

    db $fc
    rst $38
    ldh a, [rIE]
    add b
    and [hl]
    nop
    db $fd
    nop
    rst $30
    jr nz, @-$07

    add hl, hl
    rst $38
    rst $38
    reti


    xor $59
    and $3e
    rst $00
    cp l
    rst $00
    ld l, a
    adc a
    rst $18
    adc a
    db $eb
    rra
    xor e
    rra
    ccf
    rra
    cp a
    ccf
    ccf
    ccf
    ld a, [hl]
    ld a, a
    db $fd
    ld a, [hl]
    db $fd
    ld e, d
    rst $38
    ld b, b
    db $fd
    ld e, d
    ei
    ld d, l
    ld a, c
    or a
    rst $38
    sbc e
    sbc $ff
    rst $38
    ld d, [hl]
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
    db $fd
    cp e
    db $fd
    cp d
    ld sp, hl
    or $fb
    ld [hl], h
    rst $38
    pop af
    rst $38
    ldh a, [$fb]
    db $fd
    ei
    db $fd
    rst $38
    db $fd
    db $fd
    rst $30
    rst $38
    di
    ld a, a
    rst $20
    ld a, a
    rst $20
    rst $38
    ld a, a
    rst $38
    rst $30
    ld a, a
    di
    ld a, [$fd75]
    sub d
    rst $38
    rla
    rst $38
    sbc a
    rst $38
    scf
    rst $38
    inc bc
    rst $38
    ld e, a
    rst $38
    db $fd
    rst $38
    and c
    rst $20
    sbc e
    adc a
    ld [hl], a
    rst $38
    ld e, e
    db $fd
    di
    pop hl
    rst $38
    di
    ld c, a
    add a
    ld a, e
    rlca
    cp a
    adc a
    ld h, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    db $eb
    ld l, a
    db $d3
    rst $08
    pop af
    db $db
    rst $20
    rst $38
    ld h, e
    rst $38
    db $d3
    ld e, a
    and b
    rst $28
    push de
    rst $38
    db $fc
    rst $38
    cp $ff
    adc [hl]
    rlca
    rlca
    adc a
    add a
    ldh [$a0], a
    and b
    add b
    db $fd
    ld b, $bf
    ld b, b
    ccf
    ldh a, [rIF]
    inc b
    rlca
    inc bc
    add a
    rlca
    adc a
    rrca
    sbc $2f
    di
    rrca
    dec de
    and $00
    rst $38
    inc sp
    db $ec
    di
    adc $de
    add c
    ld a, e
    ret nz

    db $fd
    rlca
    call c, Call_072_776f
    ret z

    ccf
    ret nz

    dec sp
    call nz, $ff05
    rst $38
    add b
    ld e, c
    and b
    inc hl
    db $fc
    rrca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $ed
    rst $38
    rst $38
    rlca

jr_072_4ea2:
    xor a
    rst $18
    cp a
    rst $38
    rst $00
    ccf
    rst $28
    rra
    rst $18
    ccf
    rst $18
    ccf
    rst $08
    ccf
    sbc a
    rst $38
    cp a
    rst $38
    db $fc
    rst $00
    ret nc

    rrca
    db $fc
    dec bc
    rst $20
    jr jr_072_4ea2

    dec de
    or c
    rra
    rst $38
    rra
    cp a
    ld a, a
    or e
    rst $38
    or c
    ld a, a
    db $fd
    ld a, a
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rla
    rst $28
    ld l, a
    rst $38
    ld a, a
    rst $38
    di
    rst $28
    rst $20
    db $db
    db $e3
    cp $f7
    adc a
    and a
    jp c, Jump_072_669f

    cp a
    ld e, a
    ld a, a
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec de
    rst $20
    dec hl
    rst $10
    adc e
    ld [hl], a
    dec bc
    rst $30
    add e
    ld a, a
    sub e
    ld l, a
    sbc e
    ld h, a
    dec de
    rst $20
    inc bc
    rst $38
    ld b, e
    cp a
    xor e
    ld d, a
    cp e
    ld b, a
    ld de, $09ef
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $09ff
    rst $30
    dec hl
    rst $10
    ld c, e
    or a
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
    rst $20
    sbc a
    rst $20
    add a
    rst $30
    rst $28
    ei
    rst $20
    rst $30
    xor a
    rst $20
    ld d, a
    rst $00
    rst $38
    rst $28
    sbc d
    rst $38
    sbc a
    xor a
    sbc $ff
    rst $20
    rst $38
    rrca
    rst $28
    dec l
    rst $00
    nop
    ld a, c
    ld a, b
    ld bc, $f800
    add e
    ei
    ld c, b
    cp a
    ld hl, sp-$7e
    ld sp, hl
    rst $38
    ldh [rIE], a
    db $e4
    xor h
    di
    rra
    xor $46
    call nz, Call_000_04fd
    rst $38
    ld c, b
    ld b, c
    rst $38
    rst $28
    ret nc

    ld l, a
    sbc a
    ccf
    rst $38
    db $ed
    di
    ccf
    ldh a, [rIE]
    db $10
    cp a
    ret nz

    cp [hl]
    ld b, c
    ldh [$81], a
    add b
    ld bc, $018c
    rst $38
    inc bc
    ld a, a
    rst $10
    ld a, [$3c9f]
    nop
    ld bc, $0700
    nop
    ld c, $05
    ld h, a
    inc e
    ld h, d
    ret nz

    add a
    ret nz

    cp [hl]
    ret nz

    rst $38
    add b
    cp $84
    db $fc
    adc b
    or $c8
    push hl
    sbc b
    ld h, a
    sbc b
    push af
    adc b
    rst $28
    sbc b
    ld h, l
    ret c

    ld a, c
    ldh [rIE], a
    and b
    db $fd
    ld [bc], a
    rla
    add sp, -$11
    pop af
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38

jr_072_4fcc:
    xor $ff
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
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $8f
    or $b7
    ld c, a
    ld a, a
    add a
    ld a, a
    add a
    rst $38
    adc [hl]
    sbc a
    xor $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    xor $ff
    jp c, Jump_072_7aff

    ld a, a
    ldh a, [$7f]
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    push hl
    rst $38
    add h
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld b, b
    rst $38
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
    rst $38

jr_072_502a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    dec d
    ld [$7a85], a
    dec bc
    db $f4
    ld d, d
    xor l
    rst $18
    jr nz, jr_072_4fcc

    ld [hl], b
    and l
    ld e, d
    sub l
    ld l, d
    sbc c
    ld h, [hl]
    or a
    ld c, b
    or a
    ld c, b
    rst $18
    jr nz, jr_072_502a

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    cp $cf
    cp a
    rst $10
    rst $28
    rst $38
    ld a, [$6fff]
    rst $38
    cp c
    db $fd
    push hl
    ld sp, hl
    ldh a, [$8d]
    ld a, a
    db $dd
    ld a, $e8
    ld e, a
    ld e, c
    add [hl]
    add [hl]
    ld bc, $0fff
    ld [hl], a
    ld hl, sp-$11
    db $10
    dec sp
    db $10
    rst $38
    rrca
    sbc [hl]
    ld [hl], e
    rst $38
    add b
    db $e3
    ld a, a
    ld [hl], d
    adc a
    ld c, h
    cp a
    cp $c0
    ld [hl], b
    nop
    ei
    nop
    add b
    ld a, a
    ret nc

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f0
    xor $f0
    add sp, -$10
    pop af
    and b
    ldh [rNR41], a
    or b
    ld h, b
    cp b
    ldh [$bf], a
    ldh a, [$b3]
    nop
    inc de
    nop
    ld [bc], a
    nop
    rlca
    nop
    rrca
    nop
    rrca
    ld bc, $018e
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    ccf
    nop
    sbc e
    nop
    rst $30
    inc c
    push af
    rrca
    jp Jump_000_3a7f


    rst $38
    ld [c], a
    rst $38
    add h
    rst $38
    or h
    rst $38
    ld a, l
    cp $fc
    rst $38
    db $f4
    rst $38
    pop de
    rst $38
    pop af
    rst $38
    ld a, [c]
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    ld a, a
    cp [hl]
    ld a, a

jr_072_50eb:
    cp $7f
    cp $7f
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    ld a, a
    db $fc
    cp $f1
    ld hl, sp-$09
    and $f9
    rst $38
    rst $38
    ld e, $e1
    inc c
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld l, h
    sub e
    jr c, jr_072_50eb

    and [hl]
    ld e, c
    sbc $21
    cp $01
    ld a, [hl]
    add c
    rst $38
    nop
    db $dd
    ld [hl+], a
    dec b
    rst $38
    and c
    rst $38
    ld de, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_072_513e:
    ldh [$1f], a
    cp a
    ld a, a
    rst $38
    ld a, a
    ld [hl], b
    rst $28
    pop af
    ld h, c
    rst $38
    ld d, h
    di
    and c
    jp Jump_000_3340


    ld [hl-], a
    rst $38
    rrca
    rst $00
    inc a
    rst $28
    sub b
    inc sp
    db $fc
    ei
    cp $97
    ld hl, sp-$0b
    ccf
    ccf
    ccf
    rst $38
    ccf
    cp h
    rst $38
    ld l, a
    ld hl, sp-$07
    ld b, b
    ldh [rP1], a
    dec l
    inc bc
    ld a, [$7f0f]
    nop
    inc bc
    nop
    or e
    rrca
    rra
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cp $83
    ld [bc], a
    nop

jr_072_517e:
    ld [bc], a
    nop
    ld e, a
    nop
    push hl
    ld a, [de]
    ld a, [$571f]
    jr c, jr_072_51c7

    jr jr_072_517e

    inc c
    ld [hl], e
    dec c
    ld a, e
    inc c
    ld h, c
    ld e, $e5
    ld e, $ce
    ld a, a
    pop bc
    rst $38
    ld a, [hl]
    ret


    ld a, a
    call $c0bf
    dec hl
    ret nz

    ld b, a
    add b
    jp $c000


    nop
    add sp, $00
    add sp, $00
    cp h
    nop
    adc c
    nop
    ldh [rP1], a
    ld a, d
    ret nz

    db $fd
    ret nz

    inc e
    ldh a, [$58]
    cp b
    rra
    ld a, [$ee97]
    or $fd
    push af
    rst $38
    or e
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38

jr_072_51c7:
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    pop af
    rst $38
    jp $b7cf


    rst $08
    ccf
    cp a
    ld e, e
    rst $38
    ld a, c
    db $fd
    di
    pop af

jr_072_51e1:
    rst $38

jr_072_51e2:
    jp $ffff


    and a

jr_072_51e6:
    rst $08
    ld [hl], a

jr_072_51e8:
    and a
    ld e, a
    adc a
    ld h, a
    ld a, a
    xor a
    rst $38
    cp $87
    ld a, b
    rla
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$1f
    ldh a, [rNR22]
    ld hl, sp+$17
    ld hl, sp+$07
    ld hl, sp+$4e
    or b

jr_072_5202:
    ld c, h
    or b

jr_072_5204:
    call nz, $c638
    jr c, jr_072_51e6

jr_072_5209:
    jr nc, jr_072_5269

    or b
    sbc $30
    sbc $30
    ld e, h
    or b
    call z, $ce30
    jr nc, jr_072_51e1

    jr nc, jr_072_51e2

    jr nc, jr_072_51e8

    jr nc, jr_072_5209

    db $10
    ld c, a
    or b
    rst $08
    jr nc, jr_072_5202

    jr nz, jr_072_5204

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ei
    db $fd
    rst $38
    rst $38
    di
    db $fd
    add e
    ld [bc], a
    push af
    rst $38
    ld c, c
    rst $38
    rst $38
    rst $38
    ret nc

    rst $18
    add hl, de
    sbc a
    add c
    xor l
    nop
    xor a
    ld [$0fed], sp
    rrc a
    db $eb
    rra
    ld a, d
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $28
    rst $38
    db $db
    ld hl, $27f8
    reti


    ld h, $52

jr_072_5269:
    dec l
    sbc a
    ld l, a
    rst $18
    rst $38
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    call c, $ff03
    rlca
    db $eb
    rra
    ld bc, $6efe
    sub c
    rst $38
    nop
    cp $00
    ret z

    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc b
    rst $38
    ld l, [hl]
    pop af
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sub a
    rst $38
    cp c
    ld a, a
    or a
    ld a, a
    db $e3
    ld a, a
    ld l, l
    dec sp
    cp $01
    ccf
    nop
    cp a
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    ld h, e
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ei
    rst $38
    rst $38
    sbc $ff
    cp a
    rst $18
    db $fd
    rst $38
    ldh [rIE], a
    rst $38
    ld hl, sp-$07
    db $f4
    ld a, [c]
    jp hl


    jp nz, $a3b1

    ret c

    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_52e9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    ld e, a
    rst $20
    db $db
    rst $38
    db $e3
    ei
    rst $30
    or a
    rst $28
    or a
    ld l, h
    push hl
    ld e, d
    add $bd
    rst $38
    cp [hl]
    db $e3
    rst $18
    rst $28
    inc de
    cp a
    ld a, a
    rst $38
    dec c
    rst $38
    ld e, l
    rst $38
    ld c, l
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    db $e3
    rst $30
    jp hl


    rst $30
    db $eb
    ld [hl], a
    jp hl


    ld [hl], e
    rst $38
    ld a, a
    dec de
    dec e
    db $eb
    ccf
    call c, $dfff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $30
    rst $20
    rst $38
    rst $20
    di
    db $e3
    rst $28
    di
    db $ed
    rst $30
    jp hl


    rst $30
    xor c
    rst $38
    pop bc
    rst $38
    and a
    ei
    and a

jr_072_533c:
    rst $38
    cp a
    rst $30
    xor h
    ei
    push af
    ld a, [c]
    db $ed
    ld a, a
    adc b
    pop af
    ldh [$fc], a
    and h
    cp $7c
    db $fc
    db $f4
    ldh a, [$f0]
    db $fc
    ldh [$fd], a
    jp nz, $fcf3

    cpl
    sbc b
    ld a, h
    add b
    jr jr_072_533c

    ld a, [hl-]
    pop hl
    ld l, l
    rst $30
    rst $38
    rst $38
    add e
    db $fc
    push hl
    rra
    ld a, a
    add c
    cp a
    ret nz

    or a
    ret nz

    or c
    ret nz

    call c, $a3f0
    cp $ff
    rst $38
    rst $38
    rst $38
    di
    rst $38
    jp $feff


    ei
    ld sp, hl
    ldh [$90], a
    ldh [$f7], a
    ld hl, sp-$01
    cp $1c
    ldh a, [$e7]
    nop
    ld [hl], l
    nop
    ld e, [hl]
    ldh a, [$fc]
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ldh [$1f], a
    ld sp, $01cf
    rst $38
    add e
    db $fc
    rst $38
    add b
    rst $38
    add b
    and c
    ret nz

    or c
    ret nz

    sbc [hl]
    ldh [$cf], a
    ldh a, [$e0]
    rst $38
    add e
    rst $38
    rst $08
    ccf
    ei
    rrca
    cp $03
    rst $38
    nop
    db $fd
    ld d, [hl]
    pop hl
    ccf
    rst $20
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    cp $a7
    ld hl, sp-$01
    ldh a, [$a9]
    ldh a, [$9f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$bf], a
    ret nz

    ld a, $c0
    ld e, [hl]
    and h
    ld c, $f6
    cp [hl]
    ld d, a
    rst $30
    ld c, $fe
    cp a
    rst $38
    ld [hl], d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $10
    rst $28
    sub l
    sbc a
    ld h, [hl]
    rst $38
    and [hl]
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or d
    rst $30
    xor e
    and a
    ei
    jp $43ff


    cp a
    inc bc
    cp $03
    rst $38
    rst $38
    rst $38
    ld a, a
    add a
    add l
    ld a, d
    ld b, $f9
    res 6, l
    ei
    pop de
    db $d3
    ld a, c
    db $d3
    ld sp, hl
    ei
    db $d3
    ei
    sub h
    rst $30
    sbc b
    rst $38
    db $76
    cp a
    rst $18
    rst $38
    rla
    rst $30
    cp c
    db $fd
    or a
    rst $38
    or a
    rst $38
    ld [hl], d
    ld a, [$ffff]
    cp $fe
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    adc $cf
    cp $fd
    jp z, $fbfe

    db $fc
    ei
    ld sp, hl
    cp $fb
    db $ec
    ld sp, hl
    rst $20
    ld l, a
    sub a
    ccf
    rst $38
    cp a
    ld e, h
    ld a, e
    cp h
    db $fd
    ld e, d
    rra
    ld d, $2f
    ld a, [hl+]
    rra
    inc c
    inc a
    ld [$000c], sp
    cp c
    rlca
    sbc a
    rlca
    rst $38
    rlca
    rst $10
    rrca
    rst $20
    rra
    cp l
    ld a, a
    rst $38
    ld sp, hl
    db $fc
    jp Jump_000_07da


    rst $30
    sbc b
    ld [hl], b
    add b
    ld h, h
    ret nz

    jp $f63c


    rrca
    ei
    inc c
    ld b, $00
    ld a, [$f200]
    add b
    sbc [hl]
    pop hl
    jp c, Jump_072_7ef5

    add c
    ldh [rP1], a
    rst $38
    ld bc, $037d
    rst $30
    nop
    jr z, jr_072_5484

jr_072_5484:
    ld [hl-], a
    nop
    db $fd
    nop
    ld [hl], l
    ld [$609d], sp
    ld d, d
    db $ec
    sbc e
    db $e4
    rst $30
    ldh [$ef], a
    ldh a, [$c8]
    rst $30
    add hl, de
    rst $20
    sbc h
    inc bc
    ld e, $01
    rst $38
    nop
    pop af
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld [hl], c
    add b
    rrca
    ldh a, [$c3]
    db $fc
    jp hl


    cp $ac
    rst $38
    ld sp, hl
    cpl
    ld a, [$021f]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ei
    rlca
    db $fc
    inc bc
    sbc $01
    rst $18
    nop
    rlca
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    add sp, $53
    xor e
    db $eb
    ld de, $ed53
    or c
    rst $08
    rst $30
    db $e3
    rst $30
    rst $00
    rst $20
    jp nc, Jump_072_77c3

    rst $10
    ld l, d
    ld a, [hl]
    db $db
    ld d, a
    and b
    ld [hl], d
    dec l
    ld a, d
    ld [hl], b
    ld a, d
    db $fd
    db $e3
    and b
    ret


    and b
    ret c

    db $e3
    ei
    jp z, $e6ff

    rst $38
    and $ef
    or [hl]
    rst $28
    or [hl]
    rst $38
    ld h, $7f
    ld [$77fb], a
    ei
    db $e3
    ei
    jp $d8a3


    ld [$ef91], a
    ld b, d
    rst $28
    ld b, $ef
    ld d, $ef
    inc e
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    db $fd
    rst $18
    ld hl, sp-$67

jr_072_551d:
    sbc $db
    call c, $9df8
    ld sp, hl
    sbc h
    db $fd
    sbc [hl]
    db $fd
    ld sp, hl
    db $fd
    rst $28
    rst $08
    db $fd
    rst $18
    rst $18
    rst $38
    rla
    cp a
    ld e, e
    rst $38
    dec bc
    db $db
    xor l

jr_072_5536:
    cp d
    call $0eb9
    sbc [hl]
    ld a, [hl-]
    sbc [hl]
    dec a
    sbc a
    inc l
    rst $38
    ret c

    ld a, d
    adc c
    ld a, [$ff3d]
    ld a, l
    cp a
    ld [$4adf], sp
    db $fd
    jr c, jr_072_5536

    and [hl]
    db $ec
    rst $30
    rst $38
    db $f4
    db $e3
    ldh a, [$e6]
    pop af
    db $dd
    rst $30
    ldh a, [rIF]
    rst $18
    jr nz, jr_072_551d

    ld b, c
    inc hl
    call c, Call_000_00ff
    ld h, a
    nop
    rra
    inc b
    sbc a
    nop
    ld e, a
    add b
    sub e
    nop
    ld c, $00

jr_072_5570:
    ld c, $00
    pop af
    nop
    ld c, $fc
    ld a, [hl-]
    ldh a, [$f6]
    add b
    ld a, a
    nop
    rra
    ldh [$db], a
    cp $07
    rst $38
    rst $28
    ld bc, $00f0
    add hl, sp
    ret nz

    add a
    ld a, b
    ld [bc], a
    db $fd
    add a
    ld a, b
    jp Jump_072_673c


    jr jr_072_55a4

    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $83ff
    ld a, a
    ldh [$1f], a
    jr jr_072_55a9

    rra
    nop

jr_072_55a4:
    ld a, a
    nop
    rst $38
    nop
    rst $38

jr_072_55a9:
    nop
    rst $30
    nop
    ldh a, [rP1]
    jr nc, jr_072_5570

    rst $28
    ldh a, [$f5]
    ld a, [$ff7a]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    pop bc
    ccf
    add sp, $17
    ld a, [$7107]
    rrca
    ld [hl], e
    rrca
    ld a, [hl-]
    rlca
    cp l
    add d

jr_072_55d2:
    rst $38
    jr nc, jr_072_55d2

    ld l, a
    rst $28
    sub [hl]
    rst $30
    ld b, $e7
    ld d, e
    rst $30
    add h
    rst $30
    and a
    scf
    add a
    and a
    inc c
    rra
    add d
    rrca
    sbc d
    ccf
    ld a, [de]
    rst $38
    ld l, $ff
    adc b
    xor $10
    sbc $26
    db $f4
    ld l, $f4
    ld l, [hl]
    push af
    ld l, b
    push af
    db $ec
    db $fc
    add $fe
    adc h
    db $fc
    adc [hl]
    cp $28
    rst $38
    ld c, [hl]
    ld a, a
    adc a
    ccf
    ld e, e
    ccf
    ld e, e
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld hl, sp+$7c
    push af
    db $f4
    ld d, l
    db $f4
    db $fc
    db $fc

jr_072_561b:
    cp h
    db $fc
    jr c, jr_072_561b

    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$10
    ld sp, hl
    pop af
    ei
    rst $30
    ld a, l
    cp $7e
    cp $7c
    ld a, [$f87c]
    ld a, [hl-]
    ldh a, [$7b]
    db $d3
    ld [hl], b
    pop de
    ld [hl], d
    ret nz

    ld [hl], e
    ret nz

    ld h, l
    db $e3
    call nz, $82c4
    jp nz, $c280

    adc c
    add e
    ld b, b
    jp Jump_000_13c3


    ld [de], a
    sub c
    sub b
    add c
    nop
    sub l
    dec d
    rst $28
    sub l
    ld sp, hl
    rst $18
    db $fd
    ei
    rst $30
    ei
    rst $30
    ei
    ld a, a
    or e
    pop af
    rra
    rst $38
    sub c
    pop af
    ld c, $fe
    ld bc, $07f9
    rst $38
    nop
    db $ed
    nop
    ld a, [c]
    nop
    rst $30
    nop
    nop
    nop
    jp nz, $f300

    rra
    ld hl, sp-$01
    cp $7f
    rst $38
    ld a, a
    sbc a
    ld a, a
    sbc $7f
    rst $38
    ccf
    rst $28
    ccf
    ld e, h
    rst $28
    cp [hl]
    rrca
    ld e, a
    ccf
    cp a
    ld a, a
    rrca
    ld a, [c]
    rlca
    db $fc
    dec bc
    rst $38
    rla
    db $fc
    ld b, e
    db $fc
    rst $18
    ld a, b
    cp b
    ld a, a
    jr @+$01

    sub e
    db $fc
    inc de
    db $fc
    add b
    rst $38
    rla
    ld hl, sp+$47
    cp b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $007f
    ld a, a
    nop
    rst $38
    nop
    db $dd
    ld [bc], a
    rst $30
    nop
    cp e
    rst $00
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    ld e, e
    or a
    reti


    sbc e
    db $db
    cp c
    cp a
    reti


    cp a
    rst $38
    cp e
    cp a
    ei
    add hl, sp
    dec sp
    ldh a, [rHDMA5]
    add hl, sp
    ld d, c
    or c
    ld h, c
    di

jr_072_56e4:
    db $eb
    ld [hl], c
    db $e3
    dec hl
    ld a, e
    push hl
    ld h, a
    ld sp, hl
    db $e3
    ld h, b
    ldh a, [$60]
    ldh [rNR41], a
    jr nz, jr_072_56e4

    ld h, c
    and b
    ld [hl], e
    ld h, l
    ld h, a
    ld [hl], e
    ld a, a
    ld h, e
    ld a, a
    ld h, a
    ld a, a
    dec bc
    ld a, a
    rst $18
    rst $38
    adc $fe
    sbc a
    cp $9f
    cp $9f
    cp $9f
    rst $38
    ld e, $ff
    ld e, $7e
    sbc a
    ld e, $be
    ld e, $fe
    ld a, $3c
    ld a, $7c
    ld a, [hl]
    inc a
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, a
    adc e
    ccf
    ld c, c
    ld a, e
    dec a
    ld a, c
    inc sp
    ld [hl], e
    or c
    ei
    ld h, e
    di
    ld l, e
    db $e3
    set 1, e
    ld h, a
    db $e3
    ld b, a
    rst $00
    ld l, d
    rst $08
    db $76
    rst $20
    rst $08
    rst $00
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $08
    adc a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    cp a
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp $ff
    cp a
    ld a, a
    ld e, $ff
    ld c, h
    cp a
    sbc h
    ld h, a
    db $fc
    inc bc
    ld sp, hl
    ld b, $59
    ld b, $9f
    inc b
    rst $30
    adc c
    db $ed
    rst $38
    cpl
    cp $ef
    cp $ff
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld a, a
    jp $c63f


    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $20
    rst $38
    inc bc
    db $fd
    nop
    db $fd
    nop
    rst $38
    db $10
    cp $41
    cp a
    jp nz, $807f

    rst $18
    jr nz, @+$01

    nop
    ld a, l
    add d
    ld a, $c1
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    db $fd
    ld h, e
    cp $01

jr_072_57b0:
    di
    rrca
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
    db $e3
    rst $38
    db $d3
    rst $38
    jp nz, $e2ff

    rst $20
    ret c

    add $e1
    push hl
    jp nz, $e2e1

    pop hl
    ldh a, [$f1]
    ld hl, sp-$05
    ldh a, [$fb]
    pop af

jr_072_57d8:
    ei
    push af
    rst $38
    db $eb
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    db $ec
    rst $38
    db $ed
    rst $38
    cp $ff
    sbc $ff
    db $db
    rst $38
    rst $18
    rst $38
    reti


    cp a
    pop af
    dec a
    sub b
    rra
    ld a, [hl-]
    ccf
    ld a, $3f
    rla
    ld e, l
    jr z, jr_072_57d8

    jr nz, jr_072_57b0

    ld l, c
    dec sp
    ld bc, $231f
    inc bc
    inc bc
    rlca
    ld d, d
    ld c, $01
    dec b
    ld [bc], a
    ld bc, $0100
    db $10
    ld de, $f4a2
    add d
    db $e4
    db $e3
    ret nz

    inc h
    ld b, b
    adc b
    ret c

    ld b, b
    ld hl, sp-$0f
    cp $f1
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$fb]
    ld [hl], a
    di
    rra
    cp a
    inc bc
    sbc a
    ld h, a
    rst $38
    and c
    pop hl
    ei
    pop hl
    or $f1
    db $f4
    pop hl
    ldh a, [$fa]
    ld [$f1f1], a
    ld sp, hl
    ld hl, sp-$07
    ldh a, [$d9]
    pop de
    rst $28
    reti


    rst $38
    ld sp, hl
    rst $38
    di
    rst $18
    ei
    sbc a
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    inc a
    rst $38
    dec e
    rst $38
    ld a, d
    cp a
    ld a, h
    cp a
    rst $38
    rst $38
    db $fd
    ld a, a
    cp $3f
    cp $3f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp $ff
    xor [hl]
    ld a, a
    xor $7f
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    push af
    ccf
    ld a, [hl]
    rst $38
    cp [hl]
    ldh [$78], a
    ret nz

    call c, Call_072_67e0
    ld hl, sp+$19
    cp $db
    rst $38
    ld a, b
    rst $38
    ld a, a
    ld hl, sp-$42
    ld a, b
    cp [hl]
    ld a, b
    or [hl]
    ld a, b
    dec sp
    db $fc
    inc e
    rst $38
    rst $28
    rra
    db $e3
    rra
    or $0f
    cp $0f
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr jr_072_58d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_072_58e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_072_58f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_072_5903

    ld [hl-], a

jr_072_58d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_072_5913

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_072_58e3:
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_072_58f3:
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

jr_072_5903:
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
    ld [hl], c
    ld [hl], d

jr_072_5913:
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
    xor d
    xor e
    xor h
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
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_072_59d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_072_59e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_072_59f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_072_5a03

    ld [hl-], a

jr_072_59d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_072_5a13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_072_59e3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a

jr_072_59f3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a

jr_072_5a03:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a

jr_072_5a13:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add b
    rra
    add b
    inc bc
    nop
    rla
    inc b

Jump_072_5b27:
    ccf
    ld c, $37
    rrca
    ld d, $0f
    ld [bc], a
    rlca
    jr jr_072_5b38

    add hl, hl
    daa
    inc bc
    rlca
    inc sp
    inc hl
    sbc a

jr_072_5b38:
    rst $18
    or e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, l
    ld a, [hl]
    dec a
    db $fc
    ld a, a
    inc a
    rst $18
    dec e
    ld a, [$d53a]
    adc b
    rst $30
    adc h
    rst $20
    ld b, h
    sbc [hl]
    ld b, h
    db $76
    ld b, $62
    rlca
    dec bc
    rrca
    ld [bc], a
    inc bc
    inc bc
    ld b, e
    and e
    rst $20
    ld [hl+], a
    rst $38
    ld a, [c]
    rst $38
    and $ff
    ld h, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, $3b
    sbc $7f
    adc d
    rst $38
    push bc
    ei
    ld sp, hl
    rst $38
    rst $10
    rst $38
    rrca
    cp a

Jump_072_5b9f:
    adc a
    ld l, [hl]
    rst $18
    inc [hl]
    rst $08
    inc e
    rst $28
    ld a, h
    rst $20
    ld l, h
    rst $30
    db $f4
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld e, b
    rst $38
    dec b
    rst $38
    ccf
    db $fd
    inc a
    db $eb
    rra
    rst $30
    sbc a
    rst $20
    ld c, a
    cp a
    sbc a
    rst $38
    rst $38
    ld a, a
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $38
    cp $c1
    rst $38
    add c
    rst $38
    sub d
    rst $38
    add b
    rst $38
    sub $ff
    push bc
    ei
    rst $30
    cp $eb
    db $fc
    di
    db $fc
    ret nz

    rst $38
    jp $c3ff


    rst $38
    ld h, c
    rst $38

jr_072_5bec:
    push hl
    rst $38
    pop hl
    cp $f3
    rra
    cp $3f
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
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ld e, a
    cp $0f
    rst $38
    cp $9f
    db $76
    sbc a
    cp d
    rst $08
    cp $cf
    ld a, [$40c7]
    ld h, c
    ld b, b
    pop hl
    ld h, b
    pop bc
    ld h, c
    adc b
    pop bc
    jr nz, jr_072_5bec

    xor a
    jp $c3cd


    and a
    add e
    rst $20
    rst $00
    add e
    rst $00
    add a
    add a
    rst $20
    rst $10
    and a
    rst $10
    daa
    rst $30
    rrca
    ld h, [hl]
    sbc a
    xor [hl]
    ld d, [hl]
    db $fc
    ld c, [hl]
    db $fc
    ld l, [hl]
    db $ec
    ld e, $ff
    inc c
    ld a, a
    sbc h
    rst $38
    sbc h
    rst $38
    db $d3
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    jp hl


    rst $38
    pop af
    ld a, a
    sub a
    cpl
    jp nc, $ca37

    rst $30
    ld a, [bc]
    or b
    ld c, [hl]
    sub b
    ld l, b
    ret c

    jr z, jr_072_5cc3

    xor b
    ld c, h
    ld a, $4e
    inc [hl]
    ld c, $ed
    adc [hl]
    db $76
    cp a
    add $df
    ld h, $1f
    adc $0f
    sbc e
    adc a
    ld d, e
    rst $18
    db $e3
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
    ld a, a
    sbc a
    ccf
    rst $18
    ccf
    rst $08
    rst $38
    ld l, a
    rst $18
    ld d, a
    rst $00
    ld b, c
    db $e3
    and b
    pop bc
    ret nz

    ret nz

    add b
    ret nc

    ret nc

    ret nz

    ld b, b
    sub $07
    rst $30
    nop
    rst $38
    ld l, c
    rst $38
    inc hl
    rst $38
    dec a
    rrca
    rst $38
    xor a
    rst $38
    ld h, a
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38

jr_072_5cc3:
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $28
    rst $38
    rrca
    rst $18
    ld l, a
    rst $30
    ccf
    rst $30
    adc a
    ei
    rrca
    di
    rrca
    rst $30
    ccf
    rst $30
    rra
    rst $30
    cp a
    sbc a
    rst $38
    sub a
    rst $38
    rrca
    cp $1f
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $08
    ld a, a
    rst $08
    ld [hl], a
    rst $18
    ld [hl], e
    rst $18
    ld h, a
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    ld a, a
    cp a
    ld a, [hl]
    rst $28
    db $fc
    cp a
    add sp, $7f
    rst $20
    jr @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    xor $01
    rst $38
    ld bc, $031e
    ld b, $03
    dec b
    rlca
    adc a
    rlca
    or e
    inc c
    di
    sbc c
    rst $30
    sub c
    di
    adc l
    di
    adc l
    ei
    add l
    ei
    add l
    rst $20
    cp c
    rst $20
    sbc e
    rst $20
    dec de
    rst $20
    sbc e
    and e
    rst $08
    rst $00
    and e
    rst $20
    cpl
    ld c, a
    ld [hl], a
    ld e, a
    ld [hl], a
    ld d, a
    cp a
    rst $10
    ld h, e
    rst $10
    ld h, c
    jp $ef77


    ld e, a
    rst $28
    ld c, a
    rst $28
    rla
    rst $28
    sub a
    rst $28
    sbc [hl]
    xor $8f
    rst $28
    rst $28
    cp $ef
    cp $fe
    cp $1c
    cp h
    ld e, [hl]
    ld e, $1c
    rra
    rra
    rra
    ccf
    ccf

jr_072_5d63:
    inc c
    dec a
    ld c, $3d
    ld a, [bc]
    dec a
    ld c, [hl]
    ld a, [hl]
    dec e
    ld a, a
    dec d
    rst $38
    jr nc, @+$76

    jr nc, jr_072_5d63

    ld l, h
    ld hl, sp+$64
    db $e4
    ld [hl], d
    or $e0
    rst $38
    ld a, [$ffff]
    rst $38
    db $ec
    cp $81
    ret nz

    add d
    ret nz

    ei
    ld hl, sp-$7f
    db $fd
    ret nz

    rst $38
    pop hl
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc a
    cp a
    rst $08
    cp a
    add a
    and a
    jp nz, $c0e7

    db $e3
    call nc, $c6e0
    ld [c], a
    pop hl
    ldh a, [$a9]
    ld a, b
    or h
    cp h
    jp c, $ee9f

    rst $28
    rst $20
    rst $38
    inc sp
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ei
    rst $20
    rst $18
    db $e3
    rst $38
    pop af
    cp $f9
    or $ff
    ld sp, hl
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $30
    ei
    db $eb
    rst $38
    rst $18
    rst $38
    rst $28
    rst $18
    cp $9f
    cp $3f
    sbc $bf
    db $dd
    cp a
    ld e, l
    rst $38
    cp a
    cp $7d
    cp $eb
    or $ea
    or a
    db $db
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $30
    ei
    db $eb
    rst $38
    rst $30
    adc a
    db $fd
    adc a
    ld a, a
    add a
    ei
    add a
    ld a, e
    add a
    ld [hl], a
    rst $08
    cp a
    rst $38
    ld [hl], d
    rst $38
    db $fc
    db $e3
    cp h
    jp $80ff


    ld a, e
    add b
    ld a, [$d050]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$f9], a
    ldh [$9f], a
    ld h, b
    pop af
    adc $c8
    rst $30
    call $c7f2
    sbc b
    push bc
    adc e
    ret


    or $f4
    ret


    rst $38
    ret nz

    rst $38
    db $ec
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    cp a
    ld a, a
    cp a
    ld [hl], a
    cp a
    rst $20
    cp a
    rst $28
    rst $08
    rst $30
    rst $08
    rst $10
    adc $bf
    xor $95
    db $fc
    sbc l
    db $fc
    adc h
    ld hl, sp+$1d
    ld a, b
    dec de
    ld a, b
    jr jr_072_5ec3

    ld d, b
    ld h, b
    db $10
    ldh [$60], a
    ld h, b
    ldh a, [rSVBK]
    pop af
    ld a, e
    ld a, h
    ld a, a
    ld [hl], e
    ld hl, $0342
    jp nz, $a5c3

    jp $e1e1


    sub b
    pop hl
    db $10
    ccf
    ret z

    cp a
    ld c, d
    rst $38
    ld de, $8b7f
    ld e, a
    xor e
    ld c, a
    rla
    ld c, a
    dec d
    ld d, a
    adc a
    cp a
    rst $10
    cp a
    ld d, [hl]
    cp a
    ld b, [hl]
    xor [hl]
    ld b, a
    ld l, [hl]
    and e
    and $bb
    ld a, [$ffe7]
    or d
    rst $38
    cp d
    ei
    xor h
    cp $c1
    rst $38
    add h
    rst $38
    ret nz

    db $e3
    push de
    db $ed
    jp nc, $e1f7

    ld [hl], a
    and b
    ld l, a
    db $f4
    rst $30
    ld h, $f7
    ld l, $f7
    cpl
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $20
    jp $f5ff


Call_072_5eb3:
    ei
    rst $08
    rst $38
    ld l, $ff
    or $bf
    ld [$f77f], a
    adc l
    rst $38
    inc c
    rst $38
    ld [bc], a
    db $fd

jr_072_5ec3:
    ld b, d
    rst $28
    rla
    rst $18
    ld [hl], a
    ld a, e
    rst $28
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, [$7bff]
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    cp e
    rst $18
    rst $38
    rst $18
    cp $df
    ld l, a
    rst $18

Call_072_5ee4:
    ld l, $df
    ld a, [hl]
    cp a
    rst $38
    cp a
    cp [hl]
    rst $38
    rra
    cp $9f
    cp $7f
    rst $38

jr_072_5ef2:
    ld a, a
    cp $af
    db $fc
    rra
    db $fc
    xor a
    ld sp, hl
    rst $10
    ld a, [$feeb]
    rst $30
    add sp, -$30
    rst $28
    add b
    rst $38
    xor a
    rst $18
    ld a, b
    rst $18
    rst $28
    sub b
    cp e
    ld b, b
    dec a
    ret nz

    dec sp
    add $f7
    ld a, [bc]
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    ld a, $00
    rst $38
    sbc a
    rst $28
    sbc a
    rst $20
    sbc e
    rst $10
    and [hl]
    rst $10
    xor a
    rst $20
    rlca
    rst $00
    rrca
    rst $08
    rlca
    adc a
    ld c, a
    adc a
    ld e, a
    sbc a
    cpl
    rst $18
    xor a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    daa
    rst $38
    inc hl
    rst $30
    rst $20
    inc sp
    ld h, a
    cp l
    ld a, a
    db $ec
    ld a, [hl]
    db $ed
    db $fd
    call c, $cafd
    ld l, b
    dec e
    jr z, jr_072_5fa1

    dec l
    jr nc, @+$03

    jr c, jr_072_5ef2

    ld bc, $b719
    sbc l
    cp e
    cp e
    sub a
    ld l, e
    rst $38
    ld a, a
    dec sp
    ccf
    ld [hl], a
    ccf
    rst $18
    cp a
    rst $08
    or c
    ld c, l
    ld c, c
    sub l
    call c, $9c2f
    ld a, l
    sbc a
    ld a, [hl]
    sbc a
    ld e, h
    sbc [hl]
    sbc l
    sbc l
    ld e, [hl]
    sbc a
    inc e
    cp a
    db $dd
    rst $18
    ld [hl], $df
    or a
    rst $18
    rst $38
    rst $18
    ld a, a
    rst $38
    ld e, a
    rst $18
    ld l, a
    ld c, h
    ei
    ld c, b
    ld e, e
    ld c, c
    ld l, [hl]
    ld b, c
    ld l, h
    ld b, c
    ld e, h
    ld b, b
    call $04dd
    db $dd
    ld a, $9f
    ld a, l
    rst $18
    ccf
    rst $18
    ccf
    rst $18

jr_072_5fa1:
    ccf
    rst $38
    sbc $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    cp $ff
    cp [hl]
    db $fd
    cp a
    rst $38
    cp $ff
    db $ec
    rst $18
    cp $cf
    ld a, [$ffcf]
    rst $18
    xor a
    rst $38
    cp a
    rst $38
    ld a, [hl+]
    rst $38
    ld l, a
    ei
    xor a
    ld sp, hl
    rst $28
    ld sp, hl

jr_072_5fcc:
    sbc $f9
    add $f9
    adc $f9
    db $76
    ld sp, hl
    db $76
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    inc sp
    rst $38
    or d
    ld a, a
    sbc b
    ld a, a
    push af
    ccf
    rst $38
    jr c, jr_072_5fcc

    inc a
    ei
    rlca
    push af
    add e
    ld l, c
    and a
    ld h, l
    xor a
    or c
    rst $18
    inc sp
    rst $38
    cp a
    rst $38
    db $d3
    ccf
    ei
    ld e, $ee
    sbc a
    or $8f
    ld sp, hl
    rlca
    cp $a1
    ld a, a
    add b
    daa
    ld hl, sp+$1b
    db $fc
    ld c, c
    cp [hl]
    add d
    rst $38
    sbc [hl]
    ld h, c

jr_072_600c:
    db $fc
    nop
    ld hl, sp+$00
    rst $28
    jr jr_072_600c

    ld c, a
    db $fc
    inc hl
    rst $28
    db $10
    ld e, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    inc bc
    sbc a
    ld c, a
    rra
    rst $20
    cpl
    or d
    rst $00
    ld l, d
    ld l, a
    add b
    ld l, a
    db $f4
    ld a, l
    db $ed
    ld a, a
    ld sp, hl
    cp d
    scf
    cp a
    ld [hl-], a
    cp [hl]
    ld [hl], e
    cp $2c
    cp [hl]
    ld e, l
    cp [hl]
    ld c, l
    ld a, a
    sbc h
    rra
    ld a, a
    ccf
    ld d, [hl]
    or e
    inc d
    or a
    pop bc
    sub a
    pop hl
    sub e
    or a
    sub a
    ld a, [$def3]
    rst $30
    ld a, [$fdf2]
    ld a, [$ffe4]
    or [hl]
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $28
    cp [hl]
    rst $38
    dec l
    rst $38
    rst $30
    di
    ld a, c
    db $d3
    ld [hl], b
    pop bc
    ld [hl], b
    jp $d7f2


    or a
    rst $28
    push de
    rst $20
    adc $e7
    add l
    rst $20
    and d
    rst $38
    add d
    rst $38
    dec bc
    ccf
    adc a
    sbc a
    cpl
    ld e, a
    ld a, [hl+]
    rst $38
    rst $08
    rst $38
    add hl, de
    ccf
    ld c, c
    cp a
    ld h, a
    rst $38
    dec [hl]
    rst $38
    ld a, [c]
    rst $38
    push hl
    rst $38
    dec h
    ld h, a
    cp b
    cp a
    ld b, e
    ccf
    sbc e
    sbc a

Jump_072_6097:
    ccf
    rst $38
    ld e, a
    ld a, a
    rst $28
    ld a, a
    cp a
    ccf
    rst $28
    ld [hl], a
    cp a
    rst $20
    cp a
    ld [hl], c
    rst $38
    ld [hl], d
    rst $18
    rst $38
    rst $28
    cp $c7
    db $ed
    rst $30
    ld a, [hl]
    rst $38
    cp h
    rst $38
    rst $08
    rst $38
    sbc $ff
    cpl
    rst $38
    db $fd
    rst $28
    db $dd
    rst $28
    sbc a
    db $ed
    ld a, $cd
    ld a, a
    db $dd
    db $eb
    db $fc
    rst $38
    cp b
    rst $28
    cp b
    db $fc
    rra
    db $f4
    dec sp
    ld [hl], b
    cp a
    ld l, d
    or a
    xor $bf
    ld a, [$dae7]
    push hl
    rst $38
    ret nc

    rst $38
    call z, $dcef
    ld d, a
    ld hl, sp+$7f
    db $fc
    cp [hl]
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, [$ffff]
    db $fc
    ei
    db $fc
    ei
    db $fc
    or $fd
    db $dd
    ld a, [c]
    cp l
    ld [c], a
    xor [hl]
    pop bc
    db $fc

Jump_072_60f7:
    add e

jr_072_60f8:
    jr c, @+$01

    rra
    ldh [rNR21], a
    ldh [$bf], a
    ret nz

    and c
    ld a, [hl]
    ret nz

    ccf
    rst $30
    rra
    rst $38
    ld bc, $e01f
    ld b, e
    cp l
    cp a
    ld b, b
    ld a, a
    ld bc, $fcf7
    ld a, a
    add c
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld bc, $0ff9
    rst $28
    rst $38
    rst $38
    rst $38
    cp h
    ld c, c
    xor h
    ld d, c
    ret


    ld h, $ef
    jr nc, jr_072_60f8

    and $ff
    adc $fe
    pop hl
    rst $30
    ld a, a
    ld a, a
    or a
    rst $38
    ld a, a
    ld a, a
    cp [hl]
    cp $79
    db $fd
    ld e, $be
    ld e, c
    db $db
    or a
    rst $18
    or d
    sbc $1c
    ld e, h
    xor d
    add sp, $14
    rst $28
    or a
    rst $20
    rst $38
    rst $18
    ld h, a
    ld e, e
    rst $38
    db $db
    ld [hl], h
    ld [hl], e
    db $fd
    ld e, l
    rst $38
    rst $28
    db $fd
    rst $38
    ld sp, hl
    ei
    call $f9ec
    pop hl
    ld a, c
    and c
    ld sp, hl
    db $eb
    pop af
    xor [hl]
    pop af
    ld [hl], d
    db $fd
    sub a
    db $fc
    rst $38
    ld h, b
    rst $38
    db $e3
    inc sp
    rst $08
    xor e
    rst $38
    adc $ff
    sbc a
    cp $bf
    call z, $ccae
    adc $8c
    xor a
    call z, $fc5f
    call Call_072_7da7
    add d
    xor e
    db $dd
    ei
    sbc h
    rst $38
    sbc h
    ld a, [$ff9f]
    dec a
    db $fd
    dec bc
    ld sp, hl
    rra
    adc $b1
    ld c, d
    or l
    or d
    rst $08
    cp [hl]
    call $ff84
    adc d
    db $fd
    sbc l
    or $bf
    add $db
    db $ec
    ld c, a
    cp $1b
    rst $30
    sub c
    rst $30
    sub a
    rst $20
    sub a
    rst $20
    xor a
    ret nz

    ld a, a
    ret nz

    or c
    ret nc

    or $51
    or c
    ld b, b
    or l
    rst $18
    rra
    di
    ld a, a
    rst $30
    ld a, e
    rst $30
    ld e, a
    rst $20
    ld h, h
    sbc e
    call z, Call_072_7c33
    inc hl
    db $dd
    dec sp
    sbc [hl]
    pop af
    scf
    ldh [rIE], a
    ldh a, [rIE]
    ret nz

    ld a, a
    pop hl
    ld l, $c1
    rst $08
    ldh a, [rSB]
    cp $18
    rst $30
    rrca
    ldh a, [rNR33]
    ldh [rNR34], a
    ldh [$03], a
    ldh [$be], a
    db $d3
    ret


    cp $f3
    nop
    and $01
    or $01
    db $fc
    inc bc
    rst $38
    nop
    ld a, [c]
    inc c
    add d
    ld a, h
    ld [hl], a
    sbc b
    rst $20
    cp b
    ld [hl], a
    ld hl, sp-$27
    ld a, [hl]
    rrca
    nop
    rlca
    inc bc
    rst $38
    rlca
    or a
    ld a, a
    ld hl, sp-$01
    cp b
    rst $38
    jp c, $dcbd

    ccf
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    db $f4
    ld a, $dc
    ld a, a
    rst $38
    db $fd
    cp $bc
    ld e, c
    jr c, jr_072_6283

    ei
    ld h, l
    rst $38
    rst $18
    adc a
    sbc a
    rra
    adc a
    rra
    db $eb
    rst $38
    ld a, h
    db $76
    cp c
    ei
    scf
    rst $38
    sbc a
    rst $38
    ccf
    ccf
    rst $18
    ld a, l
    cp [hl]
    rst $18
    scf
    cp $cb
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp a
    ld a, $94
    ld a, [hl]
    cp $ff
    cp $87
    rst $28
    add a
    add e
    sbc a
    dec b
    adc a
    dec b
    rst $00
    rlca
    rst $38
    rst $18
    rst $38
    rst $38
    call Call_072_7bff
    call $adfb
    or a
    adc c
    rst $18
    add c
    cp a
    rst $18
    rst $28
    sbc a
    db $eb
    sbc a
    sbc [hl]
    adc a
    sbc [hl]
    add c
    adc c
    rlca
    adc h
    add e
    xor $ff
    cp $ff
    rst $00
    rst $38
    ld l, c
    sub [hl]
    ld l, [hl]

jr_072_6283:
    or b
    sub e
    db $fc
    ld a, [c]
    db $dd
    dec a
    rst $38
    rst $38
    ld bc, $c33d
    db $e4
    rst $38
    ld e, d
    and l
    ld h, a
    add e
    ld c, l
    add a
    ld [hl], $fd
    ld a, a
    ld sp, hl
    rra
    db $e3
    sbc a
    rlca
    add a
    inc bc
    cp a
    inc bc
    sub [hl]
    rst $38
    db $fc
    di
    dec sp
    pop hl
    ld [hl], l
    ldh [$fd], a
    ldh [$f1], a
    rst $28
    db $e3
    ld a, l
    ld l, l
    ldh a, [$5f]
    ldh a, [$fc]
    nop
    add [hl]
    add c
    push bc
    add e
    ld a, a
    db $e3
    ld a, [c]
    cp a
    ld a, d
    db $dd
    ld a, l
    rst $00
    ld [hl], b
    xor a
    ld a, a
    adc d
    ld d, b
    rst $28
    ld b, c
    cp $dd
    ld [hl-], a
    db $db
    inc a
    ei
    ld e, $3b
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    push af
    ld a, a
    dec de
    db $fc
    ld bc, $b1ff
    ld a, [hl]
    and a
    ld a, h
    ld e, a
    ld a, [c]
    ld a, a
    and d
    db $fd
    rlca
    rst $38
    rra
    ld a, a
    rst $38
    ccf
    rst $38
    scf
    rst $38
    cp a
    ld a, b
    ld l, a
    ld hl, sp-$19
    ld a, h
    rlca
    ld hl, sp-$5b
    ld a, d
    sbc c
    ld a, [hl]
    add a
    ld a, a
    rst $30
    dec c
    xor a
    ret nc

    cp a
    ret nc

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], l
    add b
    xor a
    pop de
    rst $18
    di
    rst $38
    rst $38
    add sp, -$01
    adc c
    cp $e8
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    cp e
    daa
    dec bc
    jp Jump_000_0faf


    call c, Call_072_6f9c
    rst $38
    db $fd
    db $fd
    db $fc
    db $fd
    rst $38
    rst $38
    rst $38
    adc a
    ld h, [hl]
    rst $38
    add e
    ld a, e
    or a
    ld a, [hl]
    ld sp, hl
    rst $38
    db $fd
    ld a, [$fe75]
    rst $38
    rst $38
    inc a
    rst $38
    ld e, l
    ld a, a
    db $fd
    rst $18
    or l
    db $eb
    db $fd
    rst $38
    ld a, [$43bf]
    cpl
    inc b
    rra
    add hl, bc
    ld a, l
    ld a, [de]
    ld a, l
    ei
    ld a, a
    ld a, d
    ccf
    rrca
    ccf
    inc d
    rst $38
    or $ff
    rst $28
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    ld a, [$fbfd]
    db $fd
    rst $38
    db $fd
    ei
    db $fd
    ld a, [$10fd]
    rst $38
    pop af
    rra
    db $d3
    ccf
    sbc e
    ld a, a
    ccf
    rst $30
    pop de
    ld a, a
    sub a
    ld a, a
    rst $38
    rst $38
    cp a
    ld l, a
    sbc a
    ld l, a
    xor a
    rst $30
    rst $28
    rst $38
    rst $18
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    jp hl


    rst $30
    db $db
    rst $20
    rst $38
    rst $30
    adc $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $fb
    cp $57
    rst $38
    dec sp
    rst $00
    rst $18
    rst $38
    xor a
    rst $30
    db $fd
    add [hl]
    sbc e
    db $e4
    db $ed
    rst $38
    cp $bf
    or a
    ld c, l
    sub a
    ld a, a
    rst $38
    inc bc
    ld d, [hl]
    rst $28
    ld sp, hl
    cp $0e
    rst $38
    db $fd
    add a
    ei
    add a
    db $fd
    cp $de
    db $fc
    ld [hl], a
    adc l
    ld [hl], a
    add d
    ld a, [hl]
    add e
    db $fd
    rlca
    rst $38
    ld [de], a
    db $fd
    rlca
    rst $18
    db $e4
    cp $ff
    ei
    rst $38
    rst $38
    ld a, a
    db $fd
    inc bc
    call c, $ff63
    rlca
    xor a
    inc bc
    db $fd
    inc bc
    ld [hl], e
    call c, $fcfb
    cp $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $7f
    inc e
    ei
    rlca
    ei
    ld b, $fb
    ld b, $90
    rst $28
    ld c, a
    rst $30
    di
    daa
    rst $38
    inc bc
    ei
    ld b, l
    rst $38
    ld bc, $03ff
    rst $28
    inc bc
    adc $03
    ld sp, hl
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ccf
    ret nz

    ld a, a
    nop
    ld a, a
    ret nz

    and c
    cp $01
    cp $85
    ld a, [$ff50]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rra
    db $ed
    ld a, [$93f5]
    xor $b1
    rst $28
    jp nz, $ffa1

    ccf
    rst $38
    pop af
    rst $38
    daa
    ccf
    add $fd
    ld a, d
    ld a, [hl]
    cp l
    ld a, [$f83d]
    push af
    di
    ld hl, sp-$03
    jp nc, $f5fb

    rst $38
    ei
    rst $38
    di
    ei
    rst $18
    rst $38
    ld [$faff], a
    rst $38
    db $d3
    rst $30
    sbc d
    rst $38
    xor l
    rst $38
    sub c
    ei
    ret nc

    db $fd
    db $76
    ld sp, hl
    or e
    db $fc
    ld sp, hl
    cp $f5
    rst $38
    db $fc
    ei
    ldh a, [$f9]
    di
    pop af
    di
    ld hl, sp+$73
    rst $38
    ld a, l
    rst $38
    ld [hl], c
    push af
    or $f4
    rst $30
    rst $38
    db $fc
    di
    ldh a, [$f3]
    or b
    rst $38
    cp b
    cp $f8
    cp $30
    cp $81
    rst $18
    sub d
    sbc a
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    xor b
    rst $38
    ret z

    cp $dd
    cp $fd
    sbc $84
    cp $dd
    rst $38
    jp c, Jump_000_263f

    ccf
    ld d, $e2
    ccf
    ld a, a
    rst $38
    sbc a
    ld a, a
    cp a
    rst $18
    ei
    ld e, a
    cp $1f
    rst $38
    rra
    rst $38
    rst $38
    cp $ff
    jp nc, Jump_072_7a3f

    cp a
    ccf
    rst $08
    ld e, [hl]
    db $e3
    db $fc
    dec de
    ld sp, hl
    ld l, a
    pop hl
    ccf
    rst $38
    rst $20
    cp [hl]
    rst $08
    rst $28
    ld h, d
    cp [hl]
    ld b, d
    db $fd
    ld [bc], a
    rst $30
    rrca
    dec a
    jp $ff1b


    add c
    ld bc, $00e1
    ld sp, hl
    add b
    rst $38

jr_072_64d7:
    ret


    rst $30
    ret nz

    ld l, l
    ld a, [$acdf]
    ld e, a
    cp h
    rst $08
    cp [hl]
    ld l, a
    sbc a
    rst $08
    inc bc
    db $d3
    nop
    rst $38
    add b
    rst $28
    ldh a, [$0e]
    di
    adc a
    ld [hl], b
    ld e, c
    xor $db
    db $fc
    rst $30
    inc e
    cp $0c
    cp [hl]
    ret nz

    sbc $e0
    xor $f8
    pop hl

Jump_072_64ff:
    rst $38
    ld h, c
    rst $38
    ld b, $f9
    adc l
    ldh a, [rIF]
    ldh a, [$bf]
    ld b, [hl]
    ld a, c
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    dec de
    cp $01
    db $fd
    nop
    db $fd
    ld b, b
    ccf
    ret nz

    rst $38
    nop
    rst $20
    jr jr_072_64d7

    db $fd
    adc a
    rst $18
    rst $10
    adc a
    rst $08
    add h
    rst $08
    adc h
    rst $18
    ld a, a
    ccf
    ret c

    cp a
    ld a, h
    inc a
    cp $7c
    xor [hl]
    or [hl]
    ld e, e
    rst $38
    ld [de], a
    adc [hl]
    ld d, a
    rst $08
    scf
    db $eb
    sub a
    rst $08
    cp a
    rst $08
    ld c, $ef
    ld e, h
    rst $38
    db $fc
    db $fd
    ld a, d
    ld sp, hl
    sbc [hl]
    rst $30
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp+$3d
    adc $ff
    ld l, l
    cp a
    ld a, a
    ld a, [$ffa5]
    ld a, [hl]
    rst $38
    db $fc
    ld a, [$e3f5]
    sbc c
    rst $30
    ld c, d
    cp $7d
    ld a, [$f8bd]
    ld de, $954b
    inc bc
    adc l
    ld d, e
    cpl
    ccf
    rst $18
    ld sp, hl
    rst $30
    pop af
    cp a
    ld a, [c]
    db $fd
    ldh a, [rIE]
    rst $30
    ld hl, sp-$0d
    db $fd
    rst $38
    push af
    scf
    call c, Call_072_513e
    cp a
    inc l
    xor a
    dec de
    cp a
    ld l, a
    rst $38
    ld l, $be
    ld b, l
    cp $e5
    db $fc
    ld h, d
    ld l, [hl]
    cp c
    ld a, a
    add hl, hl
    ld a, a
    inc sp
    rst $38
    rst $38
    rst $38
    cp $7e
    cp a
    ld a, $dc
    sbc h
    ld a, h
    ld a, h
    sbc d
    rst $38
    ei
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [$f9ff]
    rst $38
    ld sp, hl
    rst $38
    db $dd
    rst $38
    or $37
    db $fc
    ld e, a
    ldh a, [$5e]
    db $e3
    ld h, a
    pop hl
    db $fc
    sbc a
    rst $00
    ld a, a
    cp a
    ld h, d
    rst $28
    db $10
    ld [hl], e
    sub b
    ld a, a
    call c, $f8bd
    cp l
    ld a, [hl]
    db $e3
    ld a, $eb
    inc e
    xor $98
    db $76
    adc b
    push af
    adc d
    cp $f3
    rst $08
    rst $30
    rst $20
    ld sp, hl
    ld c, a
    db $fc
    rst $38
    sbc b
    sub e
    db $fc
    ret


    ld [hl], $bd
    ld [de], a
    rst $38
    ld hl, sp-$15
    db $f4
    rst $20
    ld [hl], c
    rst $38
    dec e
    sbc a
    ld hl, sp-$03
    ld hl, sp-$22
    db $fd
    rst $28
    jr jr_072_6612

    db $10
    ei

jr_072_65f5:
    ld sp, $337e
    inc e
    dec bc
    dec bc
    ld b, $0f
    inc b
    add a
    ld b, $6d
    and $97
    ld a, a
    jr jr_072_65f5

    ld [$d51f], a
    ld hl, sp-$09
    ld hl, sp-$01
    db $fd
    cp $ff
    xor a
    rst $18

jr_072_6612:
    dec sp
    rst $08
    db $f4
    dec bc
    rst $38
    nop
    ccf
    ret nz

    ld a, h
    add a
    ret nz

    rst $38
    rst $38
    add b
    rst $38
    add hl, bc
    rst $28
    pop de
    cp $ff
    rst $38
    rst $08
    di
    inc e
    rst $38
    ld a, b
    or a
    ld c, d
    db $d3
    xor a
    rla
    ld l, a
    rra
    dec bc
    rra
    add hl, hl
    ld e, a
    xor a
    rst $30
    ld l, c
    rst $30
    jp hl


    rst $20
    rst $18
    add a
    ld c, a
    rst $18
    db $e3
    rst $38
    dec sp
    ld a, a
    cp d
    sbc c
    ld a, [hl]
    ld a, a
    cp b
    db $fd
    ld a, a
    dec a
    ld [c], a
    jr nz, jr_072_66c7

    pop af
    cpl
    ld sp, hl
    db $e3
    rst $30
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld sp, hl
    db $f4
    ldh [$d1], a
    db $e3
    db $fc
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
    db $e3
    rst $10
    rst $30
    db $eb
    ei
    ld [hl], a
    rst $10
    ld a, c
    ret nc

    xor [hl]
    db $e4
    add $fe
    db $e3
    rst $20
    sbc d
    ld d, e
    xor d
    ei
    dec bc
    db $eb
    di
    rst $30
    adc e
    rst $30
    db $eb
    rst $30
    ld l, a
    rst $20
    sbc $e6
    push de
    sub $29
    sbc a
    ld a, [hl]
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    cp $fc

Jump_072_669f:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    rst $38
    ld e, e
    rst $20
    ld a, e
    rst $30
    ld a, d
    rst $38
    daa
    db $fc
    rst $10
    xor b
    rst $38
    ld a, a
    db $fd
    cp $da
    add a
    ld a, a
    add b
    ld [hl], a
    cp $7e
    cp a
    rst $08
    ldh a, [$df]
    ld sp, hl
    rst $38
    ld [hl], b
    sub a
    inc c
    db $fc
    ccf
    rst $30

jr_072_66c7:
    ld e, $ff
    ld [$ff83], sp
    db $ed
    inc de
    ccf
    inc bc
    ei
    cp $ff
    ldh a, [$67]
    pop bc
    adc e
    ld b, $ff
    add b
    cp [hl]
    ld b, e
    pop af
    ld a, [hl]
    rst $10
    add sp, -$51
    pop de
    rst $30
    rrca
    rst $38
    rra
    cp a
    ccf
    rst $38
    ld a, [c]
    db $eb
    or [hl]
    cp h
    ld [hl], e
    db $eb
    cp $94
    ld l, e
    rst $38
    add hl, bc
    adc $31
    ei
    sub a
    cp e
    add a
    rst $10
    rrca
    ld [hl], e
    rrca
    inc de
    rrca
    and e
    rra
    sbc $3f
    rst $08
    ccf
    rst $38
    add $79
    add $df
    ld [$18ff], sp
    db $eb
    cp $be
    rst $38

jr_072_6712:
    rst $38
    rst $38
    db $fd
    cp $f4
    dec sp
    call c, $f73b
    jr jr_072_6712

    cp b
    db $d3
    ld a, h
    ei
    rst $38
    pop af
    rst $38
    pop af
    ld l, $f7
    ld l, h
    ldh a, [$6f]
    rst $38
    inc d
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    add a
    rra
    rst $20
    adc a
    ld a, a
    ei
    push bc
    ld c, a
    ei

Jump_072_673c:
    or $cf
    cp $fb
    ld sp, hl
    cp [hl]
    db $fd
    ld [de], a
    ld sp, hl
    cp [hl]
    ld a, e
    db $fd
    db $fd
    ei
    rst $18
    xor e
    rst $28
    inc c
    xor a
    ld c, l
    ld l, a
    xor a
    rst $00
    dec hl
    rst $28
    sub b
    rst $30
    ret


    db $d3
    db $ed
    sub $e9
    xor a
    ld d, [hl]
    rst $18
    cpl
    rra
    nop
    rra
    nop
    ld sp, hl
    ld b, $ed
    ld b, $5d
    ld b, $0e
    rlca
    adc $07
    ld a, $07
    cp $07
    ld e, [hl]
    rlca
    xor $07
    sbc [hl]
    rlca
    ld e, $07
    inc e
    rlca
    ld e, h
    rlca
    xor b
    rlca
    rla
    rst $08
    rst $00
    ccf
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $28
    inc h
    rst $18
    rst $20
    rra
    rst $30
    rrca
    rst $00
    ccf
    inc bc
    rst $38
    db $76
    adc a
    ld [hl], a
    adc a
    db $76
    adc a
    rst $30
    rrca
    inc hl
    rst $18
    ld d, c
    adc a
    ld b, b
    sbc a
    nop
    rst $18
    ld bc, $309f
    adc a
    nop
    inc bc
    ld bc, $bd0e
    ld l, a
    db $fc
    dec bc
    ld a, e
    add a
    cp c
    ld l, a
    xor l
    jp nz, $ceb9

    inc a
    rst $18
    rst $28
    rra
    adc $3f
    add $7f

jr_072_67c4:
    rst $38
    add e
    dec sp
    rlca
    push bc
    rst $38
    sbc $f4
    ld e, a
    ldh [$cd], a
    ldh a, [$2d]
    di
    rst $08
    ld a, a
    rst $08
    rst $08
    rst $38
    rlca
    dec sp
    rst $38
    ld a, [hl]
    rst $18
    db $fc
    inc bc
    di
    ccf

Call_072_67e0:
    reti


    rst $20
    rst $20
    rst $38
    ei
    cp $5f
    ldh [rIE], a
    jr nz, @+$01

    jr nc, jr_072_67c4

    xor b
    inc a
    ld hl, sp-$1a
    add b
    rst $38
    ld b, b
    or e
    db $fc
    add h
    ld hl, sp-$48
    ret nz

    and b
    ret nz

    cp b
    ret nc

    cp $fc
    db $dd
    and a
    sub [hl]
    nop
    rst $38
    ld bc, $17ef
    rst $38
    ccf
    ld a, a
    ccf
    rra
    ccf
    ccf
    rra
    cp [hl]
    rra
    cp a
    rra
    rst $38
    rra
    ccf
    ret c

    db $fd
    ld e, $da
    rrca
    or $0f
    push de
    rst $08
    rst $38
    ld a, [$d2ff]
    di
    adc l
    ld a, c
    sbc h
    rst $18
    cp h
    ld a, a
    cp e
    rst $38
    ld a, [c]
    rst $38
    ret nc

    di
    db $ec
    cp c
    and $25
    sbc h
    xor l
    ld d, e
    db $fd
    ccf
    rst $28
    sbc l
    adc a
    ld a, [hl]
    rrca
    rst $18
    ld e, a
    xor [hl]
    ld a, $79
    cp c
    ld [hl], d
    db $fd
    ld [hl], d
    db $fd
    rst $20
    rst $38
    push hl
    rst $38
    ret


    rst $38
    ld c, a
    rst $08
    ld e, e
    rst $28
    ld a, e
    ld e, a
    ld [c], a
    ld a, a
    cp h
    rst $38
    inc a
    sbc $ff
    sub [hl]
    ld sp, hl
    ld a, [c]
    db $fd
    rlca
    ld hl, sp-$17
    or $40
    rst $38
    ld b, d
    db $fd
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    and l
    ld a, [$f9a4]
    and b
    db $fc
    and b
    rst $38
    and c
    cp $a0
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and c
    cp $a1
    cp $01
    cp $81
    cp $01
    cp $81
    cp $03
    db $fc
    rlca
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp+$41
    cp $41
    cp $00
    rst $38
    add e
    db $fc
    add e
    db $fc
    add d
    db $fd
    add e
    db $fc
    add [hl]
    ld sp, hl
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$04
    ei
    ld b, $f9
    cp l
    ld a, a
    ld a, a
    adc a
    ld l, e
    sbc a
    db $ed
    ei
    ret c

    ld a, a
    db $db
    ld a, $46
    cp a
    ld [hl], a
    adc a
    ldh [$9f], a
    ld e, [hl]
    and c
    rst $30
    add b
    cp a
    ret nz

    db $db
    db $fc
    ld [hl], e
    db $ec
    xor a
    ld [hl], b
    ld d, l
    ld a, [$ffe1]
    ld a, [$ffff]
    rst $38
    rst $30
    ld hl, sp-$01
    ret nz

    ld a, $c1
    ld b, [hl]
    add c
    rst $20
    nop
    sub a
    rrca
    ld a, a
    sub b
    ldh a, [rP1]
    rst $18
    ld bc, $3fe1
    sub d
    ld a, a
    ld sp, hl
    ccf
    rra
    ccf
    rst $38
    ld e, $e7
    ccf
    cp a
    rst $28
    ccf
    inc c
    nop
    nop
    ld bc, $0300
    nop
    ld a, a
    rrca
    cp $d1
    ld l, [hl]
    dec sp
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld [hl], a
    rst $38
    rst $38
    ld c, b
    rst $38
    add b
    ccf
    ret nz

    ld e, a
    ldh [$e0], a
    rra
    rst $28
    pop af
    db $fc
    xor c
    ld hl, sp-$0c
    ld a, b
    and l
    jp hl


    sub [hl]
    xor a
    ld h, l
    xor a
    ld b, a
    ld l, a
    sub a
    ld a, a
    rst $00
    rst $28
    sbc $ee
    sub e
    ld sp, hl
    rst $08
    rst $38
    pop de
    rst $38
    or b
    cp a
    jp $bdd3


    ld e, e
    push de
    ld a, e
    db $d3
    ld a, e
    xor c
    add hl, sp
    rst $08
    cp a
    db $fd
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    rst $28
    rst $28
    cp $ee
    rst $20
    and $ed
    db $e4
    ld [hl], a
    and $77
    ld [hl], e
    or [hl]
    ld [hl], e
    rst $30
    rst $38
    di
    ei
    or $7f
    ei
    ld a, a
    jp Jump_072_5b27


    cpl
    ld a, [bc]
    dec hl
    sbc h
    ld a, $8d
    cp [hl]
    ld de, $febf
    rst $38
    ld [hl], e
    rst $38
    cp $fb
    push hl
    ld [hl], l
    jp z, Jump_000_2bd4

    cp c
    ld d, [hl]
    adc a
    jr nc, @+$81

    add [hl]
    rst $28
    rst $30
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    add hl, de
    rst $18
    dec l
    adc a
    push af
    adc [hl]
    push hl
    rst $28
    add l
    rst $38
    dec a
    rst $38
    rst $38
    ei
    rst $38
    ei
    ld a, h
    ld a, a
    ei
    ld a, l
    ld a, [$bd7a]
    ld hl, sp-$01
    db $fd
    cp $5e
    db $fd
    ld e, [hl]
    xor a
    ei
    ld d, a
    ld a, a
    ld a, a
    ld a, a
    ld e, l
    cp e
    ld a, a
    rst $30
    ld a, a
    or a
    rst $38
    sub a
    rst $38
    rst $30
    rst $38
    cp [hl]
    ld a, a
    ld c, $ff
    adc l
    or $5b
    cp l
    ld a, a
    sub c
    ei
    ld a, [hl]
    rst $18
    ld a, $fe
    rst $18
    rst $30
    rrca
    rst $30
    rrca
    daa
    rra
    xor a
    rra
    ld a, a
    cp h
    db $ed
    ld hl, sp-$29
    ld hl, sp+$40
    rst $38
    ld [$16f7], sp
    rst $28
    ld e, a
    cp a
    rst $18
    rst $30
    rst $30
    rrca
    rst $18
    ccf
    ccf
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    jp $c7c0


    nop
    ld [hl], h
    add e
    ld b, h
    and e
    db $d3
    ld hl, $30f9
    rst $18
    dec sp
    db $eb
    rst $38
    inc l
    ld hl, sp+$7f
    db $fc
    ld a, l
    cp $9f
    cp $5e
    cp a
    rst $28
    rst $18
    add a
    rst $38
    ccf
    rst $38
    ccf
    db $fc
    ld e, a
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    or [hl]
    ld bc, $073d
    ld [hl], a
    rrca
    adc a
    rst $38
    cp $85
    adc l
    sbc $ff
    inc a
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    adc a
    rst $28
    rla
    inc hl
    rst $00
    pop bc
    inc sp
    add e
    push hl
    rst $30
    rrca
    rst $38
    rla
    rst $38
    rst $08
    rst $38
    sbc a
    cp a
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rra
    rst $08
    rst $08
    adc a
    rst $18
    cpl
    rst $08
    or a
    db $fc
    xor a
    db $fc
    ld a, l
    db $fc
    ld a, a
    rst $30
    xor $f7
    db $ec
    and $7e
    ld [hl], d
    rst $20
    ld h, e
    ld [hl], l
    ld [hl], c
    ld [hl], d
    ld [hl], b
    ld a, c
    ld a, c
    cp b
    ld a, b
    add hl, sp
    ccf
    ld a, e
    ld a, l
    cp d
    ld sp, hl
    dec sp
    pop af
    db $db
    cp e
    push de
    cp a
    jp $9def


    rst $28
    push bc
    xor a
    add a
    adc a
    daa
    rst $28
    sbc a
    rst $38
    sub a
    rst $38
    inc b
    rst $28
    db $dd
    rst $38
    push hl
    db $fd
    or a
    db $fd
    and e
    db $eb
    sbc c
    jp c, $beb3

    db $eb
    cp [hl]
    inc de
    inc a
    sub a
    cp a
    inc d
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp e
    ei
    or a
    dec sp
    db $db
    ld a, e
    or a
    inc sp
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $20
    ld l, a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    rst $28
    rst $38
    sub $ff
    and $df
    ld h, e
    ccf
    ld b, a
    ccf
    ld a, [hl]
    add e
    rst $18
    pop bc
    db $fd
    jp $ddbb


    rst $30
    ld [$20df], sp
    adc e
    ld a, h
    add e
    cp $1d
    ldh [$d9], a
    and b
    ld a, [$fc0f]
    add e
    ld a, e
    add b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $20
    cp $ef
    ld e, $df
    ccf
    add hl, bc
    rst $38
    db $76
    set 7, [hl]
    rlca
    ld hl, sp-$71
    cp h
    ld a, a
    ld sp, hl
    ld e, $ff
    nop
    rst $08
    nop
    di
    nop
    cp e
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_072_6b6a

    and b
    add a
    ld hl, sp-$11
    inc a
    jp z, $f737

    rra
    db $ed
    rra
    and a
    rst $38
    rst $28
    pop af
    add $f9
    rst $30
    ld hl, sp-$11
    ldh a, [$fe]
    ld sp, $f0ff
    rst $38
    db $fd
    rst $38
    xor l
    db $fd
    rra
    cp a
    ld c, l
    sbc a
    dec c
    sbc a
    ld c, l
    sbc a
    set 3, a
    ld b, c
    rst $38
    push af
    rst $38
    cp a
    rst $38
    cp b
    rst $38
    cp e
    sbc a
    or l
    dec de
    or h
    or l
    ret


    pop bc
    ld hl, sp-$40
    pop af
    ret nz

    db $fc
    ld [c], a
    ret z

    db $ec
    ld a, [c]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $30
    rst $28
    dec [hl]
    rst $20
    ld a, h
    push af
    ld b, [hl]
    rst $10
    db $eb
    db $eb
    ld d, a
    db $eb
    rst $10
    db $e3
    ld a, a
    rst $28
    inc sp
    ld [hl], a
    cp c
    ld a, e
    ld [hl], a
    ccf
    ld [hl], l
    ccf
    ld a, [c]

jr_072_6b6a:
    cp $b9
    ccf
    db $fc
    cp a
    ld bc, $cd22
    rst $30
    ld a, [bc]
    rst $38
    rst $08
    rst $28
    cp a
    rst $28
    rst $38
    rst $28
    sbc [hl]
    adc $bf
    rst $18
    ld l, [hl]
    rst $18
    xor a
    rst $18
    xor h
    rst $18
    sbc l
    rst $18
    cp a
    rst $38
    sbc a
    and l
    rst $38
    and a
    ld a, c
    dec hl
    rst $10
    ld l, a
    sub e
    rst $18
    ld h, e
    rst $10
    jp hl


    db $e3
    push af
    db $e3
    rst $30
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $18
    rst $28
    ret c

    db $db
    db $e4
    ret c

    or a
    sub b
    pop hl
    pop af
    pop bc
    xor $ee
    ei
    rst $20
    pop hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld e, d
    rst $38
    ld b, d
    rst $38
    call c, Call_072_7fff
    rst $38
    ld a, [$bfcd]
    rst $08
    rst $30
    bit 6, [hl]
    adc e
    cp $8b
    rst $38
    rst $28
    db $fd
    rst $38
    db $fd
    cp a
    rst $30
    rrca
    pop de
    ccf
    ld a, b
    rst $20
    ld a, h
    jp $07f8


    ei
    inc b
    rst $38
    nop
    xor a
    ret nz

    cp $00
    rst $00
    nop
    db $e3
    ld e, $ed
    sbc $7f
    add b
    rst $38
    nop
    ld a, [hl]
    ld bc, $82fd
    rst $20
    ld hl, sp-$21
    ldh [$df], a
    add b
    xor c
    ld a, a
    db $fc
    rst $38
    db $e4
    ld a, e
    ret nz

    ccf
    rst $10
    ccf
    rst $28
    ccf
    xor $7d
    rst $30
    ld [$08f6], sp
    rst $38
    nop
    ei
    inc b
    pop af
    ld c, $ea
    rra
    ld a, d
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
    ld a, [hl]
    rst $38
    rst $08
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
    rst $18
    ccf
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
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    xor a
    rst $18
    sbc a
    rst $08
    rst $18
    rst $08
    sbc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    add a
    rst $08
    and a
    rst $08
    add a
    rst $08
    inc sp
    sbc $a3
    cp $c3
    rst $28
    sbc e
    rst $38
    pop bc
    db $dd
    db $e3
    rst $08
    pop af
    rst $38
    push af
    rst $30
    db $fd
    push af
    rst $08
    rst $30
    db $ec
    rst $28
    db $f4
    rst $38
    ld [$daef], a
    rst $28
    sbc $ff
    cp $ff
    or a
    ccf
    and a
    rst $38
    and e
    ld a, a
    inc hl
    cp d
    push bc
    or b
    call $d199
    dec de
    add l
    rla
    add hl, bc
    sbc a
    ld [de], a
    sbc a
    xor [hl]
    ld a, a
    cp a
    ccf
    and a
    and a
    ld e, a
    rst $38
    rst $00
    rst $38
    dec hl
    rst $38
    daa
    ld a, a
    ld h, e
    ld [hl], a
    cpl
    rst $10
    cpl
    sbc a
    ld l, a
    rra
    ld e, [hl]
    ld a, $15
    ld a, $b4
    rst $28
    ld a, [hl]
    rst $28
    rst $10
    rst $20
    rst $18
    rst $00
    ld a, a
    rlca
    sbc a
    rra
    xor a
    rst $18
    ccf
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    push af
    rst $38
    ei
    db $fd
    rst $18
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld a, l
    rst $38
    db $d3
    cp a
    cp e
    rst $38
    dec l
    rst $38
    ld l, e
    rst $38
    rst $38
    db $fd
    ld a, $f9
    cp $fb
    cp $ff
    ld sp, $4eff
    or c
    rst $18
    inc sp
    ld a, [$ff0f]
    nop
    ld e, a
    ld bc, $3fd3
    ei
    ld a, a
    ld a, a
    rra
    rst $38
    rrca
    rst $38
    ld b, a
    ld l, a
    rst $38
    rst $38
    nop
    or [hl]
    ld bc, $0ff0
    sbc b
    rst $20
    cp h
    jp $ef50


    ld d, h
    rst $28
    ld c, a
    ld a, [$c0bf]
    cp e
    ret nz

    rst $38
    ldh [$f3], a
    db $fc
    db $ed
    ccf
    cp a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $28
    add b
    ld a, $e3
    dec de
    rst $38
    ld h, a
    rst $38
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
    db $fd
    cp $fd
    cp $fd
    cp $dd
    db $fc
    rst $18
    db $fd
    sbc [hl]
    db $fd
    rst $18
    rst $18
    rst $28
    rst $18
    db $e4
    adc $d1
    call nz, $c0ca
    adc $cb
    push hl
    db $e3
    cp $ef
    cp $ef
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [$daff]
    cp c
    ld c, [hl]
    inc a
    rr b
    xor $18
    xor [hl]
    ld a, [de]
    xor h
    cp [hl]
    dec bc
    ld e, $e9
    sbc [hl]
    cp h
    cp [hl]
    db $dd
    cp a
    rst $18
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $30
    ei
    rst $20
    dec de
    ld l, a
    sub e
    ld a, a
    add h
    and a
    jp c, $eb97

    sub a
    ld c, a
    add a
    ld a, [hl-]
    rst $30
    ld a, [bc]
    rst $08
    ld [hl], e
    rst $08
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    ei
    push bc
    ld [$ccc5], a
    inc bc
    dec b
    adc d
    inc bc
    dec b
    rlca
    ld [$a05f], sp
    rst $38
    ret


    rst $38
    ld sp, hl
    db $fd
    ld [$f1fe], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    db $fc
    db $ec
    rst $28
    ld sp, hl
    rst $28
    di
    xor $f3
    db $eb
    rst $38
    rst $30
    rst $38
    pop hl
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    jp hl


    rst $38
    jp hl


    rst $38
    di
    db $fd
    rst $38
    rst $38
    cp a
    rst $30
    ld e, a
    or e
    rst $38
    jp $03ff


    rst $38
    jp $83ff


    rst $38
    jp $e37f


    xor a
    rst $30
    rst $18
    rst $38
    or a
    rst $28
    rst $38
    or a
    db $fd
    rst $30
    rst $38
    rst $38
    ld a, [$f3ff]
    db $fc
    rst $38
    ret nz

    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    pop bc
    rra
    ldh a, [$2b]
    db $f4
    ld de, $13fe
    db $fd
    nop
    rst $38
    ldh a, [rIF]
    adc h
    inc bc
    rrca
    nop
    rst $38
    add b
    db $db
    cp $a3
    rst $38
    di
    cpl
    rst $38
    ld a, a
    cp h
    ld a, a
    rst $38
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ret nz

    rst $38
    ld [$f0ff], a
    rst $38
    ldh a, [rIE]
    rst $38
    and $ff
    rst $20
    rst $28
    ld [hl], a
    rst $08
    ld [hl], a
    adc a
    ld [hl], a
    sbc a
    rst $10
    sbc a
    rla
    rra
    sub a
    rla
    ccf
    daa
    ld d, a
    ld h, a
    ccf
    ld h, a
    ei
    rst $38
    ld h, e
    ld a, a
    rst $30
    ld a, a
    sbc a
    rra
    ld a, a
    rra
    dec a
    dec c
    ld a, [de]
    add hl, bc
    ld e, $09
    inc e
    dec c
    ld [$0f09], sp
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$080d], sp
    dec c
    ld [$090f], sp
    ld e, $18
    ccf
    rra
    cp b
    db $fc
    ld a, c
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    or [hl]
    ld a, a
    add c
    cp a
    ld b, c
    ld a, l
    jp nz, $c631

    ld b, e
    ld h, h
    dec b
    db $e3
    add c
    rlca
    ld b, l
    cp e
    cp $5f
    rst $28
    ld a, [hl]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $20
    ld e, [hl]
    add [hl]
    ld a, b
    ld l, h
    sbc b
    db $fc
    jp z, $98ff

    cp a
    ld hl, sp+$7e
    cp c
    rst $38
    ld e, h
    db $fd
    jp c, $bff9

    pop af
    cp e
    ld [hl], e
    sbc h
    ld a, l
    and b
    ld a, c
    sub d
    ld sp, hl
    sub $fb
    db $e4
    ei
    db $f4
    rst $38
    db $f4
    rst $38
    ld [hl], b
    add hl, de
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    scf
    db $fd
    ld a, [hl-]
    db $fd
    ccf
    db $fd
    add [hl]
    db $fd
    rst $08
    ld sp, hl
    rst $18
    db $fd
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    db $fd
    cp $93
    cp $8f
    cp $df
    cp $5f
    db $fc
    rst $18
    db $f4
    rst $38
    xor $ff
    call z, $ccb7
    cp a
    ret z

    or a
    ret c

    ld a, a
    ld hl, sp+$1f
    ld hl, sp+$5f
    or b
    rst $38
    cp [hl]
    ld a, a
    cp a
    ei
    rra
    jp $ff01


    ldh [$ef], a
    ld a, b
    rst $28
    ld [hl], b
    reti


    jr nc, @-$67

    ld a, c
    db $e3
    ccf
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    dec b
    rst $38
    inc bc
    di
    rrca
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $30
    rrca
    jr c, jr_072_6f1b

    adc [hl]
    inc bc
    add e
    nop
    pop bc
    nop
    ld b, c

jr_072_6f1b:
    add b
    ld h, c
    add b
    ld h, d
    add b
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
    jr jr_072_6f53

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_072_6f63

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_072_6f73

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_072_6f83

    ld [hl-], a

jr_072_6f53:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_072_6f93

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_072_6f63:
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_072_6f73:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld b, e
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_072_6f83:
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
    ld [hl], c

jr_072_6f93:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d

Call_072_6f9c:
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
    xor d
    xor e
    xor h
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
    ld b, e
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [rSCX]
    pop af
    ld a, [c]
    di
    db $f4
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_072_7056

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_072_7066

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_072_7076

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_072_7056:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_072_7066:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101

jr_072_7076:
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0002
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    nop
    ld bc, $0101
    ld bc, $0201
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0002
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0102
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $ed
    ret z

    cp $ec
    db $fc
    adc $fe
    db $ec
    cp $c6
    db $fd
    db $e4
    db $fd
    db $ec
    db $fc
    call nz, $c4ff
    rst $38
    ld h, a
    rst $30
    ld [hl], e
    ld a, a
    or e
    ccf
    ld de, $191d
    sbc a
    dec c
    rst $18
    add h
    rst $38
    add $7f
    jp nz, Jump_072_60f7

    rst $30
    ld e, d
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $30
    rst $30
    rst $20
    rst $20
    db $e3
    di
    pop hl
    di
    pop hl
    pop af
    pop af
    ldh a, [$f8]
    ld hl, sp-$10
    jr nc, jr_072_725a

    jr c, jr_072_721c

    inc a
    jr @-$42

    ld a, h
    cp $fc
    rst $38
    db $fc
    rst $38
    ld a, [$1eff]
    rst $38
    db $fd
    rst $38
    db $fc
    cp $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $30
    and b
    db $10
    ld a, l
    sub b
    ld sp, hl
    ld hl, sp-$05
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ld a, h
    db $fd
    db $fd
    db $fd
    db $fc

jr_072_721c:
    db $fd
    db $fc
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    add b
    adc h
    ld d, $1e
    inc c
    ld e, a
    ld l, $7e
    ld b, $ee
    add b
    adc a
    ld [bc], a
    rst $38
    adc a
    cp $ff
    cp $ff
    cp $ff
    ld h, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp l
    ld a, e
    rst $30
    cp d
    rst $08
    or c
    rst $38
    and c
    or $ef
    cp $ff
    ld sp, hl
    rst $38
    rst $30
    ld sp, hl
    ld [hl], a
    ld sp, hl
    ld b, a
    ld hl, sp+$6f
    reti


    ccf
    pop de
    cp c
    ld h, c
    ld e, c
    pop hl

jr_072_725a:
    db $dd
    pop hl
    ld d, e
    ldh [rOCPD], a
    ldh a, [$7b]
    rst $38
    ld a, a
    rst $38
    db $fd
    ei
    db $ec
    ldh a, [$ce]
    pop af
    cp e
    ld b, b
    and [hl]
    ld e, b
    rst $08
    db $fc
    adc [hl]
    ld [hl], b
    inc c
    ldh a, [rKEY1]
    or b
    dec sp
    add $3e
    ret nz

    adc [hl]
    ld [hl], b
    db $76
    db $fc
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    ret nc

    ld hl, sp-$10
    ldh a, [$f0]
    ldh [$e5], a
    ret nz

    cp $c3
    rst $30
    db $fc
    rst $38
    ld hl, sp-$08
    ldh a, [$ec]
    add hl, de
    db $dd
    ld a, $df
    sbc a
    rst $18
    rrca
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    ei
    ei
    ld sp, hl
    ld hl, sp-$14
    db $fc
    call nz, $04fc
    cp a
    nop
    add a
    add b
    jp $e180


    pop bc
    pop bc
    pop bc
    ldh [rLCDC], a
    ldh a, [$c0]
    ldh a, [$e1]
    ld hl, sp-$10
    db $fc
    db $fc
    cp $fe
    or $ff
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $fe
    ei
    db $fc
    ei
    ld a, [$7ffd]
    ld hl, sp-$41
    ld a, b
    cp [hl]
    ld a, l
    ld e, h
    cp a
    sbc h
    rst $38
    ccf
    rst $38
    ld c, a
    cp a
    ld c, a
    cp a
    rst $28
    cp a
    ld l, $ff
    ld a, a
    sbc a
    ld l, $ff
    sub $bf
    ld [c], a
    rst $18
    ld a, a
    rst $28
    db $ed
    ld a, e
    inc bc
    db $fd
    xor [hl]
    ld sp, hl
    inc a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    ld d, c
    cp a
    ld a, h
    jp $e17e


    ld a, a
    ldh [$ad], a
    ld [hl], d
    ld [hl], l
    ld a, [$7fba]
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $f0
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ldh a, [$7f]
    ld a, h
    rst $38
    ld a, h
    rst $38
    cp a
    ld a, [hl]
    db $db
    ld a, a
    cp l
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    jr c, jr_072_73b2

    jr c, jr_072_73b3

jr_072_7337:
    add hl, sp
    db $fc
    jr c, jr_072_7337

    ld a, $7f
    cp [hl]
    ld a, [hl]
    ccf
    ld a, a
    cp [hl]
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    rst $38
    ld e, a
    inc bc
    rst $38
    sbc $fe
    db $fd
    cp a
    rst $38
    ld e, a
    cp h
    ld c, l
    cp [hl]
    push hl
    ld e, $f7
    ld c, $ae
    rra
    cp a
    sbc a
    db $e3
    sbc a
    sbc $ff
    rst $38
    rst $18

jr_072_7364:
    cp $fb
    call c, Call_072_5eb3
    and c
    sbc [hl]
    ld h, c
    and [hl]
    ld b, c
    add l
    ld [bc], a
    ld a, [bc]
    inc b
    ld [hl], h
    jr @+$2e

    ldh a, [$f8]
    nop
    adc c
    nop
    ccf
    inc de
    sbc $7f
    ld a, [$fbff]
    cp $f7
    rst $38
    rst $20
    rst $38
    sbc $ef
    xor a
    sbc $bb
    sbc h
    ld h, [hl]
    jr jr_072_73d8

    jr nc, jr_072_7364

    ld hl, $34df
    ld a, b
    nop
    ld [bc], a
    ld bc, $0305
    rst $38
    sub e
    ld [hl], a
    db $e3
    xor $47
    ld bc, $1f20
    and d
    rst $38
    cp $9f
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
    adc a

jr_072_73b2:
    rst $18

jr_072_73b3:
    add e
    bit 0, a
    bit 4, c
    rst $28
    ld h, h
    cp $27
    ei
    dec [hl]
    ei
    cp l
    db $fc
    push hl
    cp $f4
    rst $38
    rst $30
    ld a, a
    rst $38
    ld a, a
    ld [hl], b
    db $fc
    ld l, b
    db $fc
    ld sp, hl
    rst $38
    rst $00
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38
    cp $78

jr_072_73d8:
    cp $7d
    rst $38
    ccf
    rst $38
    ld a, [hl-]
    ld a, a
    inc a
    or h
    ld a, a
    ld a, [$5b3f]
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    cp a
    ld e, a
    rst $38
    sbc a
    rst $38
    sbc a
    cp $97
    rst $20
    sbc a
    rst $30
    rst $18
    ld [hl-], a
    rst $08
    ld a, [$ea87]
    add a
    ld sp, hl
    rst $00
    ld [c], a
    rst $38
    ldh a, [$ef]
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $00
    ei
    ld b, b
    rst $38
    pop af
    cp $48
    rst $38
    ld e, a
    ldh [rKEY1], a
    ld hl, sp+$7d
    add sp, $5c
    rst $38
    ld a, [$abff]
    ld a, [hl]
    ld d, d
    db $fd
    dec e
    rst $38
    cp a
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp a
    ld a, a
    xor a
    ld a, a
    adc $7f
    ld a, e
    xor a
    sbc a
    adc a
    rst $38
    add $ff
    db $fc
    rst $38
    db $fd
    ccf
    ld a, a
    ccf
    ld a, e
    rst $38
    ld a, $3f
    inc de
    rra
    nop
    stop
    ld bc, $f310
    and h
    cp $bc
    cp $78
    ld e, a
    ccf
    ccf
    sbc a
    ei
    cp a
    ld a, l
    sbc a
    ccf
    rst $18
    cp a
    rst $18
    ld a, a
    sbc a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld e, a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ld h, a
    sbc b
    ld a, [hl]
    add b
    dec bc
    add b
    rst $00
    ld bc, $07c2
    rrca
    rlca
    inc a
    ld [$3078], sp
    sub c
    ld h, b
    and c
    ld b, b
    adc $01
    ld e, [hl]
    ld bc, $00e7
    ld [de], a
    ld c, $dc
    inc a
    db $fd
    ld hl, sp+$79
    pop af
    ld h, l
    di
    ld e, d
    rst $20
    or l
    xor $f9

jr_072_748f:
    adc $3f
    ret c

    ldh a, [$38]
    ld hl, sp+$70
    ret nz

    ldh [$a0], a
    ret nz

    cp b
    add b
    jr jr_072_749e

jr_072_749e:
    call nc, $f108
    ret nz

    ldh [$c0], a
    di
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $81ff


    ld a, e
    ret nz

    ld a, [hl]
    nop
    ld d, b
    jr z, jr_072_748f

    ld [$08f0], sp
    ld a, [$ff00]
    adc h
    rst $38
    jp nz, $83ff

    rra
    ld a, [hl+]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $08
    rlca
    inc bc
    rra
    add e
    add a
    add e
    add e
    ld b, c
    db $d3
    ld bc, $cf31
    add sp, -$09
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    ei
    rst $00
    rst $38
    sub $ef
    ld a, [$efe7]
    push af
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f6]
    ld hl, sp+$7e
    ld hl, sp-$02
    db $fc
    rst $38
    rst $38
    cp $ff
    ld [hl], a
    db $fc
    cpl
    ldh a, [$2b]
    cp $66
    ei
    sbc [hl]
    ld l, l
    ld sp, $61cf
    rst $08
    rst $38
    ld c, a
    ldh a, [rVBK]
    pop de
    rst $28
    db $dd
    rst $28
    ld e, l
    rst $38
    ld c, h
    rst $30
    sbc $e7
    db $fc
    rst $20
    db $f4
    rst $38
    cp l
    cp $0f
    cp $0e
    rst $38
    inc e
    rst $28
    ld c, h
    cp a
    sbc a
    dec b
    adc a
    ld b, $0f
    ld b, $8f
    rlca
    sbc a
    rra
    cp a
    rst $38
    rst $38
    dec sp
    rst $38
    ld b, a
    ld l, e
    rst $38
    pop de
    rst $28
    sub e
    rst $28
    push af
    dec bc
    rst $28
    ld d, e
    cp a
    ld h, e
    cp a
    jp $ffcb


    ei
    rst $38
    ld l, a
    rst $38
    xor e
    rst $30
    ei
    rst $20
    db $fd
    di
    rst $38
    ei
    ei
    di
    db $eb
    di
    rst $08
    di
    rst $08
    rst $30
    rst $20
    rst $30
    sbc l
    ld h, e
    xor e
    ld a, a
    rlca
    rst $38
    ccf
    rst $38
    ld a, a
    cp $ff
    db $fc
    rst $38
    ld a, c
    ei
    rla
    rst $30
    ld [hl], e
    db $e4
    jp $8669


    sbc b
    rlca
    inc a
    inc bc
    ld e, d
    daa
    ld [hl], c
    ld a, $1b
    db $fc
    xor e
    call c, $9c6b
    rra
    rst $38
    adc l
    ld a, a

jr_072_758e:
    rst $10
    jr c, jr_072_75dd

    jr nc, jr_072_758e

    inc h
    rst $20
    nop
    ld h, d
    ld bc, $0325
    call $8f03
    inc bc
    ld [hl], e
    rrca
    rst $38
    cpl
    ld a, a
    cpl
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $08
    ccf
    di
    rrca
    inc bc
    inc bc
    dec b
    inc bc
    ld e, a
    inc hl
    rst $38
    cpl
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

jr_072_75dd:
    nop
    rst $38
    nop
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, [hl]
    pop hl
    cp $f1
    db $ec
    di
    ld l, b
    rst $38
    ld sp, hl
    rst $30
    db $fd
    di
    ld a, h
    ei
    rra
    db $fd
    ld [$751d], a
    inc c
    ei
    inc b
    ld [hl], a
    inc c
    ld a, a
    ld c, $fa
    rst $38
    cp e
    db $fc
    jp hl


    ld a, $fe
    ccf
    db $ec
    rra
    cp $9f
    sbc [hl]
    rst $38
    adc $ff
    adc c
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    cp $ff
    ei
    rst $38
    di
    rst $38
    jp hl


    rst $30
    ld a, c
    rst $30
    ld a, a
    di
    ld h, a
    ei
    ld l, a
    rst $38
    ld e, e
    rst $20
    db $db
    rst $20
    rst $18
    rst $28
    add [hl]
    rst $38
    cp [hl]
    rst $18
    inc l
    rst $18
    sbc d
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    ei
    ld a, [$ebf1]
    pop af
    db $eb
    di
    db $ed
    di
    db $db
    db $e3
    db $dd
    db $e3
    db $dd
    db $e3
    rst $08
    di
    db $db
    rst $20
    ld a, [$d2ef]
    rst $28
    pop de
    rst $38
    ld hl, sp-$11
    or $ef
    rst $18
    ei
    sub [hl]
    ei
    cp $d7
    and d
    rst $18
    cp b
    rst $08
    ei
    db $dd
    pop af
    and b
    ldh [rP1], a
    jp hl


    ld d, [hl]
    ld a, [hl]
    adc h
    ld a, [$ec07]
    sub e
    cpl
    ret nc

    ld l, a
    ldh a, [$33]
    db $fc
    ld h, e
    db $fc
    di
    nop
    inc hl
    nop
    add h
    inc bc
    rla
    dec c
    rst $00
    dec a
    db $dd
    db $e3
    db $ed
    add e
    add a
    inc bc
    dec bc
    rlca
    rrca
    rlca
    rst $10
    ccf
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    db $fd
    rst $30
    ld [$0203], sp
    db $eb
    nop
    rst $38
    ret nz

    rst $38
    ld [hl], e
    rst $38
    ccf
    rst $38
    cpl
    cp a
    ld c, a
    cp a
    inc bc
    cp e
    ld bc, $c0f3
    pop af
    ldh [$f1], a
    ldh a, [$f8]
    sbc h
    db $fc
    cp h
    rst $28
    sbc $ff
    rst $00
    rst $38
    rst $00
    rst $18
    db $e3
    rst $08
    jp $c1c2


    ret nz

    ldh [$f0], a
    ldh [rIE], a
    pop af
    db $fc
    ld a, [$fcfc]
    db $fc
    ld hl, sp-$04
    ld a, [$fcfe]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sub a
    ld a, a
    ld a, l
    cp $fb
    cp $ff
    ld a, [$fbfe]
    cp $f9
    dec sp
    db $fc
    rst $38
    ld a, h
    ld c, a
    cp h
    xor [hl]
    rst $38
    adc $7f
    rst $38
    ccf
    rst $18
    ccf
    cp [hl]
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    and b
    rst $18
    daa
    ld hl, sp+$63
    sbc l
    jr nz, @+$01

    ld a, [hl]
    cp c
    cp [hl]
    ld sp, hl
    rst $00
    ld sp, hl
    xor a
    pop af
    cpl
    pop af
    ld c, h
    di
    adc $f3
    db $fc
    db $e3
    call z, $dcf3
    db $e3
    rst $28
    di
    rst $28
    rst $30
    cp a
    db $eb
    ld [hl], a
    db $eb
    rst $18
    or a
    ld a, a
    and a
    xor a
    adc e
    cp a
    sub [hl]
    ccf
    rst $38
    ccf
    ld a, a
    rst $38
    ld a, a
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
    xor c
    rst $38
    rst $28
    ldh a, [$7f]
    ldh a, [$6e]
    pop af
    db $fc
    di
    push af
    ld [hl], d
    inc a
    ld [hl], a
    db $fd
    scf
    ld [hl], c
    cp a
    ld [hl], c
    rst $38
    or h
    ld a, a
    ld a, [hl]
    ld h, c
    ld a, $41
    inc e
    ld [hl], e
    ld e, e
    cp $8d
    cp $7f
    rrca
    rst $28
    rra
    rst $38
    rra
    ld a, a

Call_072_776f:
    rra
    ld a, a
    ccf
    ld a, [hl]
    rst $38
    pop af
    cp $da
    ldh [$c0], a
    add b
    ret nz

    add b
    or b
    ret nz

    ret z

    ldh a, [$c7]
    ld hl, sp-$7a
    ld sp, hl
    pop hl
    cp $f2
    rst $38
    push af
    rst $38
    db $fd
    cp $ff
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    push af
    ld a, [hl+]
    pop af
    nop
    or a
    ld c, d
    ei
    ld [hl], a
    ei
    or a
    rst $38
    ld a, a
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    or $ff
    cp $ff
    cp $ff
    ld a, $ff
    rrca
    rst $38
    di
    rra
    sbc a
    ld a, a
    sbc [hl]
    ld a, a
    adc $3f
    cp l
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    inc a
    rst $38

Jump_072_77c3:
    ld [hl], a
    rst $38
    ld h, e
    inc sp
    ld b, h
    inc de
    jr nz, jr_072_77cb

jr_072_77cb:
    jr nz, @-$7d

    nop
    nop
    db $10
    and e
    ld d, h
    rst $38
    cp $fe
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a

Call_072_77dd:
    ld e, a
    rra
    ld e, $ff
    rrca
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    cp a
    ld c, a
    sbc a
    ld l, a
    xor a
    ld [hl], a
    ccf
    rst $38
    and a
    rst $38
    dec hl
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    xor $13
    xor e
    ld d, a
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
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
    db $e3
    cp a
    jp $f719


    ld h, d
    sbc a
    cp a
    add c
    ld [hl], a
    ld b, b
    cp c
    ld b, b
    pop hl
    add b
    jp $ff81


    jp Jump_072_7fff


    rst $38
    ld a, a
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld [hl], e
    db $fd
    xor l
    ld [hl], e
    rst $08
    inc sp
    push de
    ld a, $e7
    ld e, $c6
    cp b
    ld a, [hl]
    add b
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    cp $7b
    db $fc
    set 7, h
    db $eb
    call c, $fce1
    rst $28
    call c, $e8be
    call c, $f8f0
    ldh [$fc], a
    ldh [$f8], a
    ret nz

    ret z

    ldh a, [$f7]
    cp $ff
    rst $38
    ld a, a
    rst $38
    xor l
    ld [hl], e
    ld [c], a
    ld bc, $897f
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec l
    rst $18
    ei
    rlca
    ccf
    nop
    ld a, [hl]
    ld bc, $023f
    ccf
    nop
    ld a, c
    rlca
    ld a, l
    add [hl]
    ei
    nop
    xor c
    ld d, b
    ld a, a
    ld hl, sp-$02
    rst $38
    db $fc
    rst $38
    cp $7d
    ld a, [de]
    rlca
    rst $00
    ld bc, $ea07
    cp $7d
    ld a, [hl]
    db $fd
    ld h, c
    sub $c0
    pop af
    ldh a, [$b0]
    ld hl, sp-$07
    db $fd
    ld sp, hl
    db $fc
    db $fd
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld l, $ff
    ld b, [hl]
    rst $38
    add $ff
    xor $fe
    ld hl, sp-$02
    ret nc

    ldh [$62], a
    rst $38
    inc h
    rst $38
    db $fc
    ld hl, sp+$36
    or $29
    rst $38
    add sp, -$01
    add hl, bc
    rst $38
    sub l
    rst $38
    ld sp, $31ff
    ld a, b
    scf
    ld a, h
    ld [hl], d
    ld a, [$2d37]
    ld b, d
    dec c
    dec bc
    dec c
    ld c, $0d
    inc bc
    db $fd
    sbc l
    db $fd
    ei
    rst $38
    db $fc
    cp $ff
    cp $de
    cp $df
    cp $fc
    db $fc
    cp d
    ld a, [$fefc]
    db $fc
    db $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $18
    db $fc
    jp $dfff


    ld h, e
    cp l
    ld h, e
    di
    rst $08
    cp e
    rst $00
    rst $38
    add d
    rst $28
    push bc
    rst $00
    ret nz

    jp nz, $c2c0

    ret nz

    ld [c], a
    db $e4
    pop hl
    adc d
    db $ed
    ret z

    rst $30
    rst $28
    rla
    rst $28
    ld a, a
    xor a
    ld a, [hl]
    cp a
    dec [hl]
    cp $a8
    rst $30
    ld sp, hl
    rst $20
    dec sp
    rst $20
    rst $38
    and a
    rst $38
    db $e3
    or $60
    or $22
    ldh a, [$60]
    ldh a, [$e1]
    pop af
    ldh [$f1], a
    pop bc
    adc c
    rst $30
    db $e3
    rst $38
    db $e3
    rst $38
    ld h, d
    rst $38
    db $db
    ld [hl], a
    ld d, e
    ld l, a
    ld c, e
    ld a, a
    pop de
    ld a, a
    pop bc
    ld a, [hl]
    ld h, e
    call c, $fcd3
    ld l, e
    db $fd
    or a
    ld a, a
    rst $38
    ld a, a
    db $fd
    ld a, a
    db $db
    daa
    ld e, a
    ld h, a
    ld e, c
    daa
    ld a, l
    inc hl
    ld l, l
    inc de
    ld d, l
    inc sp
    ld a, a
    inc sp
    ld a, c
    ld [hl], a
    rst $38
    ld [hl], h
    ei
    db $fc
    db $fd
    or $f8
    db $f4
    db $f4
    ld hl, sp-$08
    or b
    cp a
    ld [bc], a
    cp $7f
    cp a
    rst $38
    rst $08
    cp [hl]
    jp nc, $642c

    nop
    db $ec
    nop
    cp $01
    pop bc
    add hl, sp
    ld l, a
    sub c
    db $e3
    ld a, h
    cp h
    ld a, [hl]
    rst $10
    ld a, $ce
    scf
    rst $18
    daa
    ld [hl], a
    adc a
    ld e, b
    adc a
    ret c

    rrca
    ld e, d
    sbc [hl]
    rst $38
    rra
    cp a
    ld c, a
    cp a
    adc a
    cp a
    sbc d
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ccf
    rra
    ld a, a
    ld h, e
    rra
    ld h, e
    ld [hl], e
    ei
    ld h, e
    jp hl


    ld [hl], e
    ld a, a
    pop bc
    ld sp, hl
    ld b, e
    db $e3
    inc bc
    ei
    ld b, [hl]
    di
    ld a, [bc]
    ei
    add [hl]
    rst $08
    db $e3
    rst $20
    rst $00
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $18
    rst $20
    ccf
    rst $00
    cp a
    daa
    scf
    cpl
    scf
    cpl
    daa
    rrca
    rlca
    cpl
    rrca
    rlca
    ld e, a
    adc a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    ld a, a
    ld a, $7f
    ld a, $7f
    ld [de], a
    ld [hl], a
    ld a, [de]
    ld [hl], a
    ld [de], a
    ld d, a
    ld b, h
    ld b, a
    or l
    daa
    ld h, [hl]
    and $68
    ei
    ld h, l
    ld a, a
    ld c, d
    rst $38
    ld e, h
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $fc
    db $fd
    db $fc
    rst $38
    db $e4
    cp a
    xor $bd
    add d
    or h
    ld a, [bc]
    jr nc, jr_072_7a2a

    inc h
    add hl, bc
    ld c, l
    ld hl, $453f
    ld h, a
    cpl
    ld a, a
    ld l, a
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fd
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$04
    di
    ei
    ldh a, [$f3]
    ld hl, $a673
    rst $20
    ld [hl], b
    rst $20
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $38

jr_072_7a2a:
    rst $38
    cp e
    cp $3f
    cp [hl]
    ld a, $7f
    cp $7f
    cp $ff
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $7f
    ld [hl], a

Jump_072_7a3f:
    ei
    ld a, [hl]
    di
    ld b, d
    rst $38
    db $fd
    cp $f7
    ld a, [$f8b7]
    ld a, a
    ld hl, sp-$41
    ld a, c
    rst $20
    ret c

    ld a, b
    ret nc

    or $18
    adc [hl]
    ld [hl], c
    sub d
    pop hl
    dec e
    and b
    add b
    ld bc, $0181
    db $e3
    ld bc, $07ff
    add a
    rlca
    rrca
    rlca
    rrca
    rrca
    rrca
    rra
    cp a
    rra
    cp a
    ccf
    ld a, [hl]
    rst $38
    rst $38
    ld a, a

Call_072_7a72:
    ccf
    sbc a
    ld [hl], a
    adc [hl]
    ld a, [hl]
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    ld [hl], h
    add b
    sub $00
    ld c, a
    add b
    inc bc
    pop bc
    dec b
    jp nz, $cef7

    db $fc
    rst $38
    ccf
    db $fd

jr_072_7a8c:
    cp a
    ld a, l
    cp e
    ld a, l
    rst $18
    add a
    rst $08
    add a
    rst $08
    add h
    rst $18
    rrca
    rst $30
    cp $fe
    ldh a, [$fc]
    ldh a, [$fe]
    ld de, $0de6
    ld a, a
    rst $30
    ld a, a
    or $ff
    ld [hl], h
    ld a, a
    db $76
    ld a, a
    db $76
    ld a, a
    ld h, h
    rst $38
    dec l
    xor a
    ld a, l
    rst $28
    ld hl, $622f
    cpl
    dec hl
    cp l
    ld c, c
    cp a
    add c
    cp a
    and l
    db $fd
    and l
    db $fd
    db $ed
    db $fd
    ld sp, hl
    db $fd
    db $fc
    cp $b8
    cp $bc
    cp l
    jr c, jr_072_7a8c

    ld [hl-], a
    ccf
    or d
    ccf
    inc sp
    dec sp
    ld h, d
    inc sp
    ld l, a
    ld h, $37
    ld [hl], a
    ld [hl+], a
    ld a, a
    inc sp
    ld a, a
    cp d
    ld a, a
    or h
    ld l, l
    ld [$496c], a
    ld l, b
    call c, $68d8
    ret c

    jp nz, $40d0

    ld e, l
    jp Jump_072_5b9f


    rst $38
    rlca
    rst $38
    add a
    cp $8f
    xor $c4
    call c, $fc84
    db $f4
    rst $38
    jr nz, @-$1b

Jump_072_7aff:
    dec h
    rst $00
    inc bc
    ld e, a
    and a
    ld a, a

jr_072_7b05:
    ld a, c
    rst $28
    pop de
    rst $28
    add $cf
    db $e4
    rst $28
    call nc, $adff
    ld a, a

jr_072_7b11:
    dec d
    ccf
    ld c, b
    rst $08
    ld h, $ee
    ld b, a
    xor $75
    rst $38
    db $fd
    rst $18
    call nc, $01fd
    ld a, c
    add hl, de
    db $fd
    db $db
    rst $38
    ld sp, hl
    ei
    jp c, Jump_072_42a3

    ld l, [hl]
    rlca
    ld c, [hl]
    ld e, $7f
    ld e, $ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    ld a, [$ffef]
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, [hl]
    ld l, l
    ld a, $ff
    ld a, h
    ld [hl], e
    inc a
    ld l, a
    db $10
    db $fd
    ld [bc], a
    cp $03
    jr nz, jr_072_7b11

    db $ed
    ld [hl], b
    ld a, [hl-]
    nop
    ld h, b
    ld bc, $01ef
    or l
    rst $18
    cp a
    rst $00
    di
    rst $00
    cpl
    rst $00
    dec e
    rst $08
    rst $08
    sbc h
    sbc [hl]
    adc [hl]
    ld a, [hl]
    cp [hl]
    adc [hl]
    db $fc
    ld hl, sp-$24
    cp h
    ret c

    ld a, [de]
    ld hl, sp+$56
    ld hl, sp-$04
    ld hl, sp-$02
    ldh a, [$fd]
    db $10
    db $ed
    jr jr_072_7b05

    jr c, jr_072_7bc3

    jr nc, jr_072_7bbd

    jr nc, jr_072_7bf0

    ld b, b
    jp hl


    ldh a, [$7f]
    ld hl, sp-$03
    cp $fe
    cp $ff
    cp $ff
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    ld [hl], a
    call nz, $f829
    ldh a, [$f1]
    ld h, b
    ld [hl], a
    ld a, d
    ld a, a
    ld a, $7f
    ld a, e
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ret


    rst $38
    cp $ff
    add hl, de
    cp $1e
    rst $38
    rst $38
    ccf
    rst $38
    ld a, $9f
    ld a, a
    cpl
    rra
    rst $38
    xor a
    rst $38
    rst $08
    rst $38

jr_072_7bbd:
    adc e
    rst $38
    add l
    cp a
    ld c, c
    ei

jr_072_7bc3:
    rra
    ld a, e
    rst $18
    rst $38
    ld a, d
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    rst $18
    ld a, a
    or a
    or a
    sub l
    sub a
    ccf
    rla
    ccf
    ccf
    rst $30
    rst $38
    push af
    rst $38
    ld h, a
    ld a, a
    ld l, a
    ld a, a
    ld c, e
    ld a, a
    ld c, d
    ld a, a
    scf
    ccf
    cp [hl]
    cp [hl]
    rst $30
    rst $38
    rst $10
    rst $38
    sbc $ff
    ld [hl], l
    rst $38
    db $76

jr_072_7bf0:
    rst $38
    or $ff
    rst $38
    rst $38
    rrca
    rra
    or a
    rra
    ld e, a
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $38

Call_072_7bff:
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    sbc a
    cp a
    ccf
    ccf
    rst $08
    ld a, a
    rst $30
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    rst $38
    cp a
    rst $28
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $38
    adc $c7
    cp a
    rst $38
    call z, $ffb3
    rst $28

Call_072_7c33:
    ldh a, [$ef]

jr_072_7c35:
    pop af
    scf

jr_072_7c37:
    add sp, $04
    ld hl, sp+$23
    db $fc
    ld a, a
    nop
    ld hl, $7c0c
    db $10
    rst $38
    db $10
    dec hl
    or $99
    ld h, [hl]
    ld [hl], $68
    rst $38
    ld b, b
    db $dd
    di
    ld a, l
    rst $38
    rst $38
    ld sp, hl
    ei
    pop af
    ldh [$f3], a
    ret nc

    db $e3
    and c
    jp $8365


    db $fd
    inc bc
    rst $38
    add e
    xor [hl]
    rla
    db $76
    daa
    ld d, b
    daa
    sbc a
    ld h, b
    rst $38
    nop
    rla
    jr z, jr_072_7cdf

    dec c
    jr jr_072_7c97

    sub $2b
    xor b
    ld a, a
    db $db
    inc a
    ld a, [$fe3c]
    jr jr_072_7c37

    jr jr_072_7c35

    jr c, jr_072_7ca7

    jr c, @+$1a

    jr c, jr_072_7cb7

    ld [$0c30], sp
    ld c, $0c
    ccf
    inc b
    jr jr_072_7c92

    xor $12
    sub e
    cp $fe
    pop hl

jr_072_7c92:
    db $f4
    add sp, -$3f
    add d
    ld b, b

jr_072_7c97:
    ret nz

    jr nc, jr_072_7cfa

    inc a
    ld a, [hl-]
    ccf
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38

jr_072_7ca7:
    ld sp, hl
    rst $38
    rst $38
    ld a, l
    inc bc
    add hl, de
    db $10
    ei
    ld sp, $ccff
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38

jr_072_7cb7:
    rst $28
    rst $38
    ld hl, sp-$02
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fffd]
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38

jr_072_7cdf:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38

jr_072_7cfa:
    rst $38
    rst $38
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

jr_072_7d07:
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    db $fd
    rst $18
    rst $38
    rst $38
    sbc $ff
    add a
    rst $28
    db $fc
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld bc, $86ff
    db $ed
    ld [hl], $7f
    add hl, hl
    ld a, a
    call $444f
    rst $18
    call c, $fe9b
    sbc a
    ccf
    cp a
    ccf
    ld a, [hl]
    sbc a
    cp $1c
    ret c

    inc a
    cp l
    ld a, [hl]
    add $fd
    nop
    ld h, c
    reti


    ld hl, $205d
    ld h, l
    jr c, jr_072_7d07

    ld b, c
    cp $01
    rst $18
    ld a, a
    cp $ff
    cp $ff
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    rst $30
    db $fc
    rst $38
    rst $38
    ld h, e
    sbc a
    adc a
    nop
    dec e
    ld [$18af], sp
    xor $5a
    ld [hl], $c8
    or d
    call z, $84fb
    cp e
    db $e4
    nop
    db $fc
    ld [c], a
    inc e
    ld d, a
    cp b
    or $39
    sbc $71
    adc a
    ld [hl], l
    add h
    ld [hl], e
    or c
    ld h, e
    sub b
    ld h, e
    inc de
    ld h, d
    ccf
    ld b, d
    push af
    ld [bc], a
    db $dd
    ld [hl+], a
    ret nc

    daa
    sub c
    ld h, [hl]
    ld [hl], l
    ld b, $7d
    ld b, $7f
    ccf
    ld a, a
    ld a, a
    sbc a
    ld e, a
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rst $38
    rra
    rst $38
    di
    rst $28
    rst $30
    rst $28
    ld d, a
    db $fd
    add hl, de
    or a

Call_072_7da7:
    ret


    rst $30
    rst $28
    rst $38
    or [hl]
    rst $38
    ld [hl], h
    ld a, a
    ret


    db $fc
    ld c, c
    db $fd
    ret c

    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    or $ff
    rst $38
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    rst $38
    rst $20
    cp $ef
    cp $fd
    rst $38
    rst $08
    rst $38
    ld [hl], c
    db $fd
    db $f4
    or [hl]
    sub b
    ldh [rLCDC], a
    ld e, c
    ld [hl], l
    db $fd
    inc hl
    db $db
    and b
    ccf
    ld hl, sp-$80
    ld a, a
    inc a
    inc bc
    cp $39
    sbc $f9
    ld c, c
    or c
    jp $de00


    dec b
    ld l, [hl]
    sbc a
    rst $38
    ld a, a
    sbc l
    rra
    rrca
    add hl, bc
    ld b, b
    add a
    ld [$3fc7], a
    jp nz, Jump_072_6097

    and $00
    add l
    inc b
    db $ed
    db $e4
    xor l
    ret z

    rlca
    call nz, Call_072_4787
    push bc
    ld b, $06
    inc b
    inc b
    nop
    inc c
    nop
    rrc h
    ld c, a
    add b
    add b
    adc b
    add a
    adc b
    adc c
    add b
    sbc a
    add b
    db $db
    add b
    ld c, c
    inc de
    scf
    rrca
    rst $28
    ld e, $3c
    rst $38
    ld b, e
    cp h
    ld a, [$3e04]
    nop
    adc [hl]
    nop
    adc a
    nop
    add l
    ld [bc], a
    dec b
    ld [bc], a
    ld c, $07
    rst $38
    db $db
    rst $38
    pop hl
    ld sp, hl
    ldh [$df], a
    db $fc
    rst $18
    rst $20
    di
    jp hl


    ld hl, sp-$1a
    cp $e0
    ld [$e3d4], a
    inc c
    rst $30
    nop
    or a
    pop bc
    db $fc
    ret nz

    xor $45
    rst $38
    ld c, [hl]
    cp $c8
    ldh a, [$ed]
    xor $f1
    ld sp, hl
    ldh [$fb], a
    ld [hl], h
    rst $38
    ldh [$fd], a
    or $3f
    rst $30
    cp a
    ld hl, sp-$05
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
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
    rst $28
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
    db $fd
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_7ef5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38

jr_072_7f0e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    cp a
    cp a
    ld l, a
    ld a, a
    xor e

jr_072_7f1c:
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38

jr_072_7f23:
    ld a, [hl]
    ei
    db $eb
    ei
    jp nz, $fbff

    rst $38
    ld c, e
    rra
    ld b, d
    inc de
    inc bc
    sbc l
    db $e3
    jr jr_072_7f23

    ld d, a
    adc e
    reti


    rst $00
    or c
    rst $00
    ld b, a
    jp $c722


    jr nc, jr_072_7f0e

    ld [$7bf6], a
    add b
    inc sp
    nop
    ld sp, $b702
    ld h, b
    cp d
    ld [hl], c
    ld h, h
    dec sp
    dec hl
    rla
    ld de, $312e
    ld c, $79
    ld c, $f3
    cpl
    pop af
    ld l, a
    sbc h
    ld [hl], e
    and $41
    rst $38
    ld hl, sp+$7a
    rst $38
    xor e
    ld [hl], a
    inc bc
    ld a, a
    ld [hl], a
    ld a, a
    rst $38
    ld a, a
    rst $20
    ld a, a

jr_072_7f6c:
    cp $41
    ccf
    ld b, b
    rlca
    ld b, b
    ld bc, $8040
    ld b, b
    ld h, b
    ret nz

    ret c

    ldh a, [$ee]
    ld hl, sp+$6c
    ei
    ld a, h
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld l, e
    daa
    ld h, [hl]
    inc hl
    inc hl
    ld h, b
    ld b, a
    jr nz, jr_072_7f6c

    jr nz, jr_072_7f1c

    ld [hl], b
    ei
    rst $30
    rst $38
    ld sp, hl
    db $fd
    rst $38
    db $fd
    db $fd
    cp $f9
    cp $f9
    ld a, [hl]
    ld hl, sp+$7e
    db $fc
    ld a, a
    rst $38
    ld [hl], c
    rst $38
    ld a, [hl]
    ld sp, hl
    jr c, @+$01

    ccf
    rst $38
    ld [hl], e
    rst $38
    jp nc, Jump_000_2aff

    rst $38
    di
    rst $28
    db $e3
    pop de
    ld sp, hl
    db $e4
    rst $30
    db $ed
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    cp $b7
    rst $38

Call_072_7fff:
Jump_072_7fff:
    rst $38
