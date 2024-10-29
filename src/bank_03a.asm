SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

Jump_03a_4000:
    nop
    rst $38
    nop
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $00
    rst $38
    ld [hl], e
    rst $38
    add hl, sp
    rst $38
    jr @+$01

    adc [hl]
    rst $38
    rst $00
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
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
    ccf
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
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ret nz

    rst $38
    ldh a, [rIE]
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
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
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
    nop
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rra
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    dec bc
    db $f4
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIF]
    rst $38
    nop
    ldh a, [rIE]
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
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    ld b, $00
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
    rrca
    stop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03a_41b0

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03a_419f

jr_03a_419f:
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_03a_41d6

    ld a, [hl+]
    dec hl
    inc l

jr_03a_41b0:
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_03a_41e9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03a_41f9

    nop
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
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld c, c
    ld c, d

jr_03a_41d6:
    ld c, e
    ld c, h
    inc sp
    ld b, d
    ld c, l
    ld c, [hl]
    ld b, l
    ld b, l
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

jr_03a_41e9:
    ld b, d
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld b, d
    ld b, d
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_03a_41f9:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld b, d
    ld l, l
    ld l, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld b, d
    db $76
    ld [hl], a
    ld a, b
    nop
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
    nop
    nop
    adc b
    adc c
    nop
    nop
    nop
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld b, d
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc e
    sbc h
    sbc l
    ld b, d
    ld b, d
    sbc [hl]
    sbc a
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    and d
    and e
    ld b, d
    ld b, d
    and h
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and [hl]
    and a
    ld b, d
    ld b, d
    ld b, d
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $42aa
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor e
    ld l, $42
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0606
    ld b, $06
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
    ld bc, $0606
    ld b, $07
    rlca
    ld b, $05
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0605
    ld b, $06
    rlca
    ld [bc], a
    inc b
    rlca
    ld b, $06
    dec b
    nop
    nop
    nop
    ld bc, $0601
    ld b, $06
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    rlca
    nop
    ld bc, $0101
    dec b
    ld b, $06
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0606
    ld b, $07
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $07
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
    ld b, $06
    rlca
    inc b
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
    ld b, $07
    rlca
    inc b
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
    ld b, $06
    ld b, $07
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
    ld bc, $0606
    rlca
    rlca
    inc b
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
    ld bc, $0606
    ld b, $07
    rlca
    nop
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
    ld bc, $0601
    ld b, $06
    nop
    nop
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
    ld bc, $0601
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
    ld bc, $0105
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    ld bc, $0300
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    db $10
    add b
    ld b, b
    nop
    add b
    add b
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ld e, $01
    nop
    rrca
    nop
    rrca
    dec bc
    rlca
    ld bc, $0407
    inc bc
    ld [bc], a
    ld bc, $0300
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $013e
    ld c, $01
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
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
    rrca
    nop
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    add e
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh [$1f], a
    add c
    ld a, a
    rlca
    rst $38
    rra
    rst $38
    ei
    db $fc
    rst $28
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld [hl], b
    adc a
    ld b, e
    cp a
    ld c, a
    cp a
    cpl
    rst $18
    cpl
    rst $18
    daa
    rst $18
    rla
    ld l, a
    inc de
    ld l, a
    ld e, e
    daa
    dec bc
    scf
    add hl, bc
    scf
    dec d
    dec bc
    inc b
    dec de
    inc b
    dec de
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    dec bc
    inc b
    inc bc
    inc b
    ld bc, $0706
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0002
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
    nop
    nop
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
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ret nz

    ccf
    inc bc
    rst $38
    ld [bc], a
    rst $38
    dec a
    cp $f7
    ld hl, sp-$21
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    pop bc
    ccf
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
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
    rst $30
    nop
    xor a
    nop
    call c, Call_000_3803
    rlca
    jr c, jr_03a_45b9

    inc a
    inc bc
    inc e
    inc bc
    sbc h
    add e
    sbc [hl]

jr_03a_45b9:
    add c
    add [hl]
    add c
    add $c1
    ld b, a
    ld b, b
    ld h, a
    sbc a
    and a
    ld e, a
    scf
    rst $08
    ld [hl], e
    adc a
    inc de
    ld l, a
    add hl, de
    ld h, a
    jr jr_03a_4635

    inc c
    inc sp
    rrca
    inc sp
    rlca
    dec sp
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, bc
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc b
    inc bc
    ld b, $03
    ld b, $01
    inc bc
    ld bc, $0103
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
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
    inc bc
    rst $38
    rra
    add e
    ld a, a
    rlca
    rst $38
    inc [hl]
    rst $38
    sub e
    db $fc
    sbc a
    ldh [$7f], a
    add b
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    rlca
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
    ld a, a
    rst $38
    rst $38

jr_03a_4635:
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
    rst $20
    nop
    rst $18
    nop
    ld a, h
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
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$1f], a
    or b
    rrca
    jr nc, @+$11

    jr c, jr_03a_467f

    jr z, jr_03a_4681

    ld a, h
    inc bc
    inc a
    inc bc
    cp h

jr_03a_467f:
    add e
    sbc a

jr_03a_4681:
    ld a, a
    sbc a
    ld a, a
    srl a
    call Call_03a_6f3f
    sbc a
    ld h, a
    sbc a
    ld h, [hl]
    sbc a
    or d
    ld c, a
    ld sp, $19cf
    rst $20
    ld e, b
    and a
    jr jr_03a_46ff

    dec l
    ld d, e
    dec l
    inc de
    inc c
    inc sp
    ld d, $29
    rrca
    add hl, de
    rrca
    inc e
    rrca
    inc d
    rlca
    inc c
    rlca
    ld a, [bc]
    inc bc
    ld c, $03
    rlca
    inc bc
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    pop bc
    ccf
    rlca
    rst $38
    rra
    rst $38
    ld a, e
    db $fc
    rst $08
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    cp $01
    ld hl, sp+$07
    db $e3
    rra
    add a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38

jr_03a_46ff:
    rst $38
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld sp, hl
    nop
    rst $20
    nop
    sbc a
    nop
    ld a, h
    inc bc
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    or l
    rst $38
    cp [hl]
    rst $38
    rst $30
    rst $38
    cp e
    rst $38
    cp l
    rst $38
    sub $ff
    ei
    rst $38
    rst $18
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
    sbc a
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    daa
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    inc bc
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ccf
    ret nz

    ccf
    and b
    rra
    and b
    rra
    ret nc

    rrca
    ret nc

    rrca
    ld [hl], b
    rrca
    add sp, $07
    add sp, $07
    ld a, h
    inc bc
    inc a
    inc bc
    jr c, jr_03a_477b

    sbc b
    add c
    sbc b

jr_03a_477b:
    add c
    ret c

    pop bc
    jp z, $ffc0

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
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ff3
    ldh [$1f], a
    inc bc
    rst $38
    rra
    rst $38
    ld a, h
    rst $38
    di
    db $fc
    rst $18
    ldh [$7f], a
    add b
    rst $38
    nop
    db $fc
    inc bc
    pop af
    rrca
    add a
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38
    or $ff
    db $f4
    rst $38
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
    rst $38
    db $fd
    rst $38
    db $e4
    rst $38
    ld sp, hl
    rst $38
    rst $20
    nop
    cp a
    nop
    ld a, h
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
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    sbc $ff
    rst $28
    rst $38
    db $fd
    rst $38
    or [hl]
    rst $38
    db $db
    rst $38
    db $ed
    rst $38
    ld [hl], a
    rst $38
    cp e
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    pop hl
    rra
    add e
    ld a, a
    rrca
    rst $38
    ld a, [hl]
    rst $38
    ld sp, hl
    cp $ef
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    rst $00
    ccf
    rra
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
    rst $38
    cp $00
    ld sp, hl
    nop
    db $fc
    nop
    pop af
    nop
    ld b, e
    nop
    adc a
    nop
    inc a
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    or b
    rst $38
    db $fc
    rst $38
    ld l, [hl]
    rst $38
    or [hl]
    rst $38
    db $76
    rst $38
    ld l, a
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    rst $28
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
    cp $ff
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    or $ff
    ei
    rst $38
    db $ed
    rst $38
    or [hl]
    rst $38
    db $db
    rst $38
    db $ed
    rst $38
    or [hl]
    rst $38
    ld a, [$6eff]
    rst $38
    adc [hl]
    inc bc
    adc $03
    adc $03
    adc $03
    adc $03
    adc $03
    adc $03
    adc $03
    adc $03
    adc $03
    rst $08
    ld bc, $01ef
    rst $28
    ld bc, $01ef
    rst $28
    ld bc, $01ef
    rst $28
    ld bc, $01ef
    rst $28
    ld bc, $01ef
    rst $28
    ld bc, $01ef
    rst $28
    ld bc, $01ef
    rst $28
    ld bc, $01ef
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
    adc a
    ld [hl], b
    rlca
    ld hl, sp-$1f
    cp $f0
    rst $38
    sbc h
    rst $38
    ld l, h
    sbc a
    db $f4
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    ret z

    scf
    inc a
    di
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    ld e, [hl]
    rst $38
    inc a
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    sub b
    rst $38
    ret nz

    nop
    ld [$7800], sp
    nop
    cp $00
    rst $38
    inc a
    rra
    db $fc
    ccf
    rst $38
    rla
    rst $38
    nop
    ld hl, sp+$00
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, c
    rst $38
    rst $28
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp [hl]
    pop bc
    cp a
    jp $cfb7


    sbc [hl]
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld a, [$ffff]
    rst $38
    xor $ff
    cp l
    cp $fb
    db $fc
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    ld a, h
    rst $38
    or [hl]
    rst $38
    ld a, l
    rst $38
    or h
    rst $38
    ret c

    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    add sp, -$01
    ldh [rIE], a
    ld d, b
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
    inc c
    ld a, [c]
    ld b, $f9
    inc bc
    db $fc
    ld [bc], a
    db $fd
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, $00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    ld a, a
    rlca
    ld a, a
    inc bc
    ccf
    inc bc
    ccf
    ld bc, $6000
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld b, b
    cp a
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    or b
    ld a, a
    and b
    ld a, a
    pop hl
    ld a, a
    ld h, [hl]
    ld sp, hl
    call nc, $9cfb
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ret nc

    ccf
    ldh a, [$3f]
    ld [hl], b
    rst $38
    db $fc
    rst $38
    call $d9ff
    rst $38
    ldh [rIE], a
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    db $10
    ret nc

    jr z, jr_03a_4aef

    call z, $f608
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$03
    db $fc
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
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
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
    ld a, a

jr_03a_4aef:
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ldh a, [rIE]
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
    nop
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
    ldh [$fe], a
    ldh a, [$fe]
    ld hl, sp+$7c
    ld hl, sp+$3e
    db $fc
    ld a, $fe
    ld e, $fe
    rrca
    rst $38
    ld c, $fe
    ld c, $fe
    rlca
    ld bc, $0003
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
    jr nz, @+$01

    ld b, h
    ei
    db $fc
    jp $c1be


    cp [hl]
    pop bc
    cp [hl]
    pop bc
    ld b, b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    cp $01
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
    add b
    add b
    ld b, b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld a, b
    add h
    ld a, h
    add d
    ld e, $e1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $05fe
    ld a, [$fb04]
    ld b, $f9
    dec b
    ld a, [$f20d]
    dec c
    ld a, [c]
    inc c
    di
    rrca
    pop af
    rrca
    pop af
    dec c
    di
    rrca
    pop af
    rrca
    pop af
    dec bc
    push af
    ld a, [bc]
    or $0e
    ld a, [c]
    ld c, $f2
    ld a, [bc]
    or $0a
    or $0a
    or $0c
    db $f4
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    jr nz, @-$1e

    nop
    ldh [rP1], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    ld b, d
    cp $61
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld e, $ff
    dec bc
    rst $38
    dec bc
    nop
    add b
    nop
    ret


    add b
    pop bc
    add b
    ld [c], a
    ret nz

    ldh a, [$e0]
    ld a, b
    ldh [$78], a
    ldh a, [$3c]
    ld hl, sp+$1e
    ld hl, sp+$1e
    db $fc
    rrca
    db $fc
    rrca
    cp $17
    rst $38
    inc hl
    rst $38
    rlca
    rst $38
    nop
    xor $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    ret nz

    ccf
    ret nz

    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
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
    ld a, a
    add b
    ldh [rP1], a
    ldh a, [$80]
    ld a, h
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp-$79
    db $fc
    add e
    cp $c3
    cp $61
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jr @+$01

    jr @+$01

    inc c
    nop
    ld c, $00
    ld c, $00
    rrca
    nop
    rlca
    nop
    adc c
    nop
    rlc b
    add $80
    pop hl
    ret nz

    pop hl
    ret nz

    ldh a, [$e0]
    ld hl, sp-$20
    ld hl, sp-$10
    inc a
    ldh a, [$7e]
    ld hl, sp+$7e
    db $fc
    rst $38
    ld bc, $01cf
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    dec de
    nop
    rlca
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    db $fd
    nop
    cp $00
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
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
    dec e
    nop
    jr jr_03a_4d2f

jr_03a_4d2f:
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
    ret nz

    rrca
    ldh a, [rSB]
    cp $00
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
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    db $fc
    add a
    db $fc
    jp $c3fe


    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    sub b
    rst $38
    jr @+$01

    inc a
    rst $38
    inc l
    rst $38
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    nop
    add a
    nop
    add a
    nop
    jp nz, $c680

    add b
    pop hl
    ret nz

    di
    ret nz

    ld a, [c]
    ldh [$f8], a
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp-$02
    db $fc
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    ld a, a
    nop
    rra
    nop
    rrca
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
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$0f
    db $fc
    add a
    cp $c3
    cp $c3
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $ec
    rst $38
    ld b, $ff
    rla
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld de, $81ff
    rst $38
    add c
    rst $38
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rrca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh a, [$3f]
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rrca
    db $fc
    add a
    cp $c3
    rst $38
    jp $e1ff


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
    ld hl, sp+$07
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

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
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

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
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03a_4ee3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03a_4ef3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec bc
    dec bc
    ld l, $2f
    jr nc, jr_03a_4f05

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03a_4f15

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_03a_4ee3:
    ld b, c
    ld b, d
    ld b, e
    ld b, e
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

jr_03a_4ef3:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld b, e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_03a_4f05:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
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

jr_03a_4f15:
    ld l, h
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld b, e
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld b, e
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
    dec bc
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    inc b
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
    sbc d
    sbc d
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
    dec bc
    dec bc
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
    jp nc, $c4d3

    call nc, $d6d5
    jp nc, $d8d7

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    jp nc, $e1e0

    ld [c], a
    db $e3
    ld b, e
    ld b, e
    dec bc
    db $e4
    ld h, e
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    ld b, e
    ld b, e
    ld b, e
    xor $ef
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$63fb]
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    ld b, e
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
    jr jr_03a_4ff3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_03a_4ff3:
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
    inc bc
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
    ld [bc], a
    inc bc
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
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03a_503e

jr_03a_503e:
    ld b, $06
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
    rlca
    rlca
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0501
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    nop
    nop
    rlca
    ld b, $01
    ld b, $06
    ld bc, $0305
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    rlca
    rlca
    rlca
    ld bc, $0101
    dec b
    inc bc
    inc bc
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0606
    ld b, $06
    dec b
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0606
    ld b, $06
    dec b
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    nop
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc

jr_03a_510c:
    inc c
    inc c
    ld [$0b08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c

jr_03a_511e:
    inc c
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld [hl], b
    rst $18
    jr nz, jr_03a_510c

    jr nz, jr_03a_511e

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp

jr_03a_513e:
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d

jr_03a_5150:
    cp l
    ld b, d
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    sbc $21
    sbc $21
    sbc $21
    rst $18
    jr nz, jr_03a_513e

    jr nz, jr_03a_5150

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, l
    rst $38
    cp l
    rst $38
    cp h
    rst $38
    or b
    db $fc
    add b
    ldh [rP1], a
    nop
    ld bc, $0f00
    nop
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$1d
    db $fc
    di
    db $fc
    di
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    pop bc
    cp $81
    cp $07
    ld hl, sp+$20
    rra
    jp Jump_000_0f3c


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
    cp $01
    ldh a, [rIF]
    ldh [$1f], a
    add $39
    rst $08
    jr nc, @-$3f

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    cp $01
    ld a, b
    add h
    ld [hl], b
    adc [hl]
    ld h, b
    sbc a
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc

jr_03a_5210:
    rrca
    ldh a, [$1f]
    ldh [rNR33], a
    ld [c], a
    sbc l
    ld h, d
    adc a
    ld [hl], b
    rrca
    ldh a, [$df]
    jr nz, @+$01

    nop
    inc e
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
    ret nz

    dec a
    jp nz, $c23d

    cp l
    ld b, d

jr_03a_5232:
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    cp [hl]
    ld b, c

jr_03a_523a:
    sbc $21
    sbc $21
    rst $18
    jr nz, jr_03a_5210

    jr nc, jr_03a_5232

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $20
    jr jr_03a_523a

    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp

jr_03a_5254:
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    cp l
    ld b, d

jr_03a_5268:
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    sbc $21
    sbc $21
    rst $18
    jr nz, jr_03a_5254

    jr nz, @-$1f

    jr nz, jr_03a_5268

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    rst $38
    rst $30
    rst $38
    rlca
    sbc a
    rlca
    rra
    rlca
    rrca
    inc hl
    rrca
    and e
    rrca
    and e
    rrca
    db $e3
    rlca
    db $d3
    rlca
    pop de
    rlca
    pop de
    rlca
    pop de
    rlca
    jp hl


    inc bc
    pop hl
    inc bc
    add sp, $03
    inc d
    add sp, $04
    ld hl, sp+$0a
    db $f4
    ld c, $f0
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    inc b
    ld a, [$fa05]
    rlca
    ld hl, sp+$04
    ei
    ld bc, $01fe
    cp $02
    db $fd
    ld [bc], a
    db $fd
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ret nz

    ccf
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    cp $5d
    cp $3d
    cp $39
    db $fc
    db $d3
    ld hl, sp-$5b
    ldh a, [rSTAT]
    ldh [rSB], a
    add b
    pop bc
    add e
    nop
    rlca
    nop
    rrca
    ld [bc], a
    rra
    inc b
    ccf
    ld b, d
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    rst $38
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $e2
    dec e
    push hl
    ld a, [de]
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    di
    inc c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, e
    add h
    add hl, sp
    add $3a
    push bc
    ld a, d
    add l
    cp c
    ld b, [hl]
    cp e
    ld b, h
    sbc h
    ld h, e
    cp l
    ld b, d
    sbc l
    ld h, d
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    call c, $dc23
    inc hl
    sbc $21
    sbc $21
    xor $11
    xor $11
    xor $11
    xor $11
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$8877], sp
    ld [hl], a
    adc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp l
    ld b, d
    cp l
    ld b, d
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    call c, $ee23
    ld de, $11ee
    xor $11
    xor $11
    xor $11
    or $09
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, l
    add d
    ld a, l
    add d
    dec a
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    inc a
    ld a, a
    inc a
    ld a, a
    jr jr_03a_543b

    sub [hl]
    ld a, a
    ld a, [de]
    ld a, a
    ld b, b
    add b
    ld b, b
    add b
    nop
    ret nz

    ld bc, $a7c0
    ld b, c
    cpl
    call nz, Call_03a_699f
    rra
    di
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $30
    rrca
    rst $30
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ei
    inc bc
    cp $03
    db $fc
    inc bc
    db $fc
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    ld h, b
    sbc a
    ld [hl], c
    adc [hl]
    ccf
    ret nz

    ccf
    ret nz

    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    di
    inc c
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ld a, a
    add b
    rst $38
    nop
    rst $10
    jr z, jr_03a_548a

    and [hl]
    ld c, h
    or e
    ldh a, [rIF]
    xor $11
    cp [hl]
    ld b, c
    cp a

jr_03a_543b:
    ld b, b
    cp $01
    rst $38
    nop
    rst $30
    ld [$807f], sp
    rst $38
    nop
    db $76
    adc c
    ld a, d
    add l
    ld [hl], l
    adc d
    ld [hl], l
    adc d
    ld [hl], h
    adc e
    ld l, d
    sub l
    ld [hl], $c9
    cp d
    ld b, l
    cp e
    ld b, h
    cp d
    ld b, l
    xor d
    ld d, l
    sbc [hl]
    ld h, c
    sub l
    ld l, d
    or l
    ld c, d
    jp c, $da25

    dec h
    ret c

jr_03a_5467:
    daa
    call c, $d823
    daa
    jp z, $e435

    dec de
    ld [c], a
    dec e
    add sp, $17
    db $e4
    dec de
    ld h, h
    sbc e
    ld h, d
    sbc l
    ld h, h
    sbc e
    ld [hl], b
    adc a
    ld h, d
    sbc l
    ld [hl], d
    adc l
    ld [hl+], a
    db $dd
    and b
    ld e, a
    jr nz, jr_03a_5467

    sub d
    ld l, l

jr_03a_548a:
    db $10
    rst $28
    db $10
    rst $28
    add hl, bc
    or $90
    rst $38
    ld d, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_03a_549a:
    add b
    cp $40
    ld hl, sp+$00
    ldh a, [$1f]
    add hl, bc
    ld a, a
    db $10
    rst $38
    ld b, b
    rst $38
    adc b
    rst $38
    dec [hl]
    rst $38

Jump_03a_54ab:
    sbc [hl]
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    add sp, -$01
    ld [$d5ff], a
    rst $38
    add d
    rst $38
    sub b
    cp $81
    db $fd
    jp nz, $c4fb

    rst $38
    ret nz

    rst $28
    sub b
    rst $38
    nop
    cp a
    ld b, b
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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld bc, $02ff
    cp $05
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    di
    inc c
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, @-$1f

    jr nz, jr_03a_549a

    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    cp $00
    rst $38
    nop
    rst $38
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
    ret c

    daa
    ret


    ld [hl], $c0

jr_03a_5529:
    ccf
    ret nz

jr_03a_552b:
    ccf
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    call nz, $c03b
    ccf
    and b
    ld e, a
    ldh a, [rIF]
    ld a, b
    add a
    ld e, b
    and a
    adc b
    ld [hl], a
    jr nz, jr_03a_5529

    jr nz, jr_03a_552b

    ld b, b
    cp a
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
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$100f], sp
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
    ld b, b
    cp $01
    db $fd
    ld [bc], a
    rst $38
    ld b, b
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
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ld a, $87
    ld a, b
    ld l, a
    sub b
    ld b, a
    cp b
    rst $18
    jr nz, jr_03a_5622

    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    jr nz, @+$01

    ld h, c
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_03a_55b9:
    jr nz, jr_03a_55b9

    ld bc, $07f8
    ld [c], a
    dec e
    ld h, d
    sbc l
    add a
    ld a, b
    adc a
    ld [hl], b
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    ld bc, $03fc
    ld hl, sp+$03
    ldh a, [rTAC]
    ldh a, [rSC]
    db $fd
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
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
    rlca
    rst $38

jr_03a_5622:
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
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    ld a, a
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
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nc, @-$2f

    ldh [$1f], a
    ret nz

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
    ld bc, $04fe
    ei
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ccf
    ret nz

    rst $18
    jr nz, @+$01

    cp $fe
    db $fd
    db $fc
    rst $38
    db $fc
    ei
    ld hl, sp-$09
    ld hl, sp-$0a
    ldh a, [$e8]
    ldh a, [$c1]
    ldh [$d9], a
    ret nz

    cp c
    add b
    ld a, c
    add b
    ld a, e
    add b
    ld a, a
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld de, $00ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$ffff], a
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
    rst $38
    rra
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    rst $38
    add sp, -$01
    jr nz, @+$01

    and b
    rst $38
    ret nz

    rst $38
    jp nc, $c8ff

    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    ld b, h
    rst $38
    ret nz

    rst $38
    xor b
    rst $38
    ret z

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    jp hl


    rst $38
    add sp, -$01
    add sp, -$01
    add sp, -$01
    db $ec
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    cp $ff
    ld [$f4ff], a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03a_572d:
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
    rlca
    ld hl, sp+$01
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

jr_03a_5755:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$30f7], sp
    rst $08
    jr c, jr_03a_572d

    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $30
    ld bc, $03ff
    cp $07
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    pop hl
    ccf
    db $e3
    ld a, a
    rst $00
    ld a, a
    add $7f
    db $ec
    ld a, a
    add sp, -$01
    ld l, c
    rst $38
    inc hl
    inc hl
    rst $38
    or a
    ld a, a
    scf
    cp $37
    cp $b7
    ld a, h
    ld [hl], $f8
    inc [hl]
    ld hl, sp+$34
    ld hl, sp-$08
    jr c, @-$06

    jr c, jr_03a_5755

    jr nc, @+$72

    jr nc, @+$62

    jr nz, jr_03a_580b

    jr nz, jr_03a_57ed

    nop
    ret nz

    nop
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $ffff
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    rst $38
    add b
    rst $38
    adc c
    cp $81
    cp $81
    cp $81
    cp $80
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
    ld b, b
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

jr_03a_57ed:
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    adc b

jr_03a_580b:
    rst $38
    jr nz, @+$01

    add c
    rst $38
    and b
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    nop
    rst $38
    sbc [hl]
    ld h, c
    sbc a
    ld h, b
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    and b
    nop
    rst $38
    nop
    rst $38

jr_03a_5836:
    nop
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
    db $fc
    rst $38
    ei
    db $fc
    rst $30
    ld hl, sp-$11
    pop af
    rst $18
    db $e3
    cp a
    rst $00
    adc $ff
    call z, $c8ff
    rst $38
    pop bc
    rst $38
    jp $c7ff


    rst $38
    rst $28
    rst $38
    rst $28
    cp $ef
    db $fc
    rst $28
    ld hl, sp+$6f
    ldh a, [$7f]
    rst $38
    ld a, a
    rst $38
    ld [hl], d
    db $fd
    ld [hl], h
    ld a, [$fe7e]
    ld [hl], h
    ld hl, sp+$78
    db $f4

jr_03a_5874:
    ld a, b
    ldh a, [rSVBK]
    ldh a, [$31]
    ldh a, [$a1]
    ldh [$a3], a
    ldh [$83], a
    ret nz

    jp $8380


    nop
    add a
    nop
    rlca
    nop
    rrca
    nop
    ld c, $00
    jr jr_03a_588e

jr_03a_588e:
    stop
    cp a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, d
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
    ld hl, sp-$21
    jr nz, @-$2f

    jr nc, jr_03a_5874

    jr c, jr_03a_5836

    ld a, b
    add a
    ld a, b
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld bc, $04fe
    ei
    inc bc
    db $fc
    rlca
    ld hl, sp+$09
    or $07
    ld hl, sp+$0a
    push af
    dec b
    ld a, [$fa05]
    ld b, $f9
    add hl, bc
    or $05
    ld a, [$f20d]
    ld de, $06ee
    ld sp, hl
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$fc03]
    dec b
    ld a, [$fb04]
    ld a, [hl+]
    push de
    dec b
    ld a, [$fd02]
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
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $a05f
    ld e, a
    and b
    cpl
    ret nc

    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$01
    cp $ff
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    cp [hl]
    pop hl
    and c
    cp $21
    cp $23
    db $fc
    inc hl
    db $fc
    and a
    ld hl, sp-$59
    ld hl, sp-$49
    ret nz

    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    adc a
    nop
    add a
    add b
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld e, $00
    ld a, $00
    ld a, h
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rIF]
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $08
    nop
    rst $20
    nop
    rst $30
    nop
    ld a, a
    nop
    dec sp
    nop
    dec e
    nop

jr_03a_5970:
    dec e
    nop
    rrca
    nop
    rrca
    nop
    ld b, $00
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
    dec d
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
    ld hl, sp+$04
    ei
    ld [hl], l
    adc d
    ld a, a
    add b
    ld l, l
    sub d
    scf
    ret z

    ld d, a
    xor b
    daa
    ret c

    rra
    ldh [rTAC], a
    ld hl, sp-$41
    ld b, b
    cpl
    ret nc

    sbc a
    ld h, b

jr_03a_59ae:
    sbc a
    ld h, b
    xor a
    ld d, b
    rra
    ldh [$bf], a
    ld b, b
    rra
    ldh [$af], a
    ld d, b
    ccf
    ret nz

    cp a
    ld b, b
    ld e, a
    and b
    ld e, a
    and b
    rra
    ldh [$5f], a
    and b
    sbc a
    ld h, b
    ld e, a
    and b
    ld e, a
    and b
    rst $18
    jr nz, jr_03a_59ae

    jr nz, jr_03a_5970

    ld h, b
    ld e, a
    and b
    sbc a
    ld h, b
    ld e, a
    and b
    rra
    ldh [$87], a
    ld a, b
    dec hl
    call nc, $906f
    ld l, a
    sub b
    ld c, a
    or b
    cpl
    ret nc

    ld b, a
    cp b
    cpl
    ret nc

    dec hl
    call nc, $f40b
    dec b
    ld a, [$f50a]
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    rra
    ldh [$e0], a
    rra
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec hl
    rst $38
    inc sp
    rst $38
    jr nc, @+$01

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
    add b
    rst $38
    ret nz

    cp a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ld sp, hl
    nop
    ldh a, [rP1]
    ldh a, [$03]
    pop hl
    inc bc
    db $e3
    rlca
    rst $00
    rrca
    call nz, $900f
    ld c, $9e
    nop
    add hl, bc
    inc e
    add hl, sp
    inc e
    add hl, sp
    inc e
    ld e, b
    inc a
    ld e, h
    ccf
    ld e, h
    ccf
    ld b, e
    inc a
    inc e
    inc bc
    nop
    nop
    nop
    db $fc
    db $fc
    inc bc
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, [$0005]
    rst $38
    nop
    rst $38
    nop
    rst $38
    push de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $dfff
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    sbc $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $fe
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ld [hl], l
    adc d
    db $76
    adc c
    ld d, l
    xor d
    ld h, [hl]
    sbc c
    sub b
    ld l, a
    ld d, b
    xor a
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    ld h, b
    rlca
    ld sp, hl
    ld hl, sp+$07
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    and $19
    add b
    rst $38
    cp $ff
    ld a, a
    rst $38
    add b
    ld a, a
    push af
    ld a, [bc]
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rra
    nop
    ldh [rP1], a
    inc bc
    db $fc
    ret z

    rst $38
    dec e
    cp $0f
    ld e, $e5
    ld c, $e6
    inc c
    ld [$c804], a
    inc d
    adc h
    jr jr_03a_5b45

    ld a, b
    ld sp, $e9f8
    ldh a, [$e8]
    pop af
    ld a, [bc]
    pop af
    ld a, [c]
    ld bc, $0102
    ld bc, $01f2
    cp $c1
    ld a, $f0

jr_03a_5b45:
    rrca
    ld hl, sp+$07
    rst $38
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    nop
    ldh a, [rP1]
    ret nc

    nop
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
    ei
    ccf
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    nop
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    ld [$08f7], sp
    or $09
    or $09
    and d
    ld e, l
    ld hl, $44de
    cp e
    ld b, l
    cp d
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
    rst $38
    or b
    rra
    rst $20
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    dec c
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    and h
    ld e, e
    and b
    ld e, a
    ld e, e
    rst $38
    dec d
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    di
    rra
    xor $1f
    and b
    rra
    jr nz, jr_03a_5c23

    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    ld b, c
    cp a
    ld b, c
    cp a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add e
    ld a, a
    add e
    ld a, [hl]
    add e

jr_03a_5c23:
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    inc bc
    cp $07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor c
    ld d, [hl]
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    add b
    rst $38
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
    db $f4
    rst $38
    push de
    rst $38
    db $f4
    rst $38
    call nc, Call_000_20ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    ld a, d
    add l
    ld l, d
    sub l
    ldh a, [rIF]
    and $19
    ret nz

    nop
    jp nz, Jump_03a_4000

    nop
    ld b, b
    nop
    ld b, b
    nop
    db $fc
    db $fc
    add e
    rst $38
    add b
    rst $38
    rst $38
    inc hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fcff]
    rst $38
    nop
    ld a, a
    add b
    add $ff
    dec bc
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ei
    rra
    ld sp, hl
    rra
    ld sp, hl
    rra
    push af
    rra
    push af
    ccf
    push af
    ccf
    push af
    ld a, a
    push bc
    ld a, a
    jp $c67f


    ld a, a
    add $3f
    call nz, $f43f
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $ec
    ld a, a
    db $ec
    ld a, a
    db $ec
    ld a, a
    db $fc
    db $fc
    rst $28
    ld [$d1df], a
    rst $38
    sub l
    rst $38
    db $f4
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ld [$fa1f], a
    rra
    ld a, [$f41f]
    rra
    push af
    rra
    pop af
    rra
    ld [c], a
    rra
    xor $1f
    ld hl, sp-$01
    pop af
    cp $fb
    db $ec
    db $eb
    db $fc
    rst $00
    ld hl, sp-$29
    ld hl, sp-$69
    ld hl, sp-$79
    ld hl, sp+$27
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld a, [$0005]
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    call nc, $f5ff
    rst $38
    rst $20
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    push de
    rst $38
    ldh [rIE], a
    xor b
    rst $38
    and h
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei

jr_03a_5d7b:
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    di
    inc c
    pop af
    ld c, $e1
    ld e, $61
    sbc [hl]
    ret nc

    cpl
    and b
    ld e, a
    ld b, b
    cp a
    jr nz, jr_03a_5d7b

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
    xor $00
    rst $38
    db $fc
    rst $38
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    call nc, $80ff
    rst $38
    nop
    rst $38
    nop
    sbc [hl]
    ld h, c
    inc b
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rrca
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    nop
    stop
    ld bc, $0780
    ret nz

    rla
    ret nz

    inc de
    ldh [rNR22], a
    ld h, b
    rla
    ld h, b
    add a
    ldh [$95], a
    ld h, b
    inc bc
    ld h, b
    ld [$99e0], sp
    ldh [$9c], a
    pop hl
    sbc h
    ldh [$9c], a
    ldh [$98], a
    ldh [$88], a
    ldh [$80], a
    ld h, b
    sub c
    ld h, d
    add l
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    db $e4
    ld bc, $01c6
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    rrca
    nop
    rra
    nop
    ccf
    pop bc
    ld a, $00
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
    rlca
    rst $38
    nop
    nop
    ld [bc], a
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $fb
    inc b
    ei
    inc b
    db $eb
    inc d
    ei
    inc b
    db $eb
    inc d
    ld [$d915], a
    ld h, $43
    cp h
    ld b, d
    cp l
    add e
    ld a, h
    dec b
    ld a, [$fd02]
    inc b
    ei
    ld [bc], a
    db $fd
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    rst $38
    add d
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld c, a
    cp a
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    ld l, a
    sub a
    ld l, a
    rla
    rrca
    rla
    adc a
    rla
    rst $28
    add a
    ld a, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
    rst $38
    ret nz

    ccf
    and b
    ld e, a
    nop
    nop
    nop
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
    rlca
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
    rst $38
    nop
    ret nz

jr_03a_5f3b:
    rst $38
    ret nc

    rst $38
    db $ec
    rst $38
    ld hl, sp+$07
    ldh [$1f], a
    ret c

    daa
    db $e4
    dec de
    ret c

    daa
    cp b
    ld b, a
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
    add b
    ld a, a
    jr nz, jr_03a_5f3b

    ld b, b
    cp a
    nop
    rst $38
    rst $38
    nop
    sbc $21
    add hl, bc
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
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    and b
    ld e, a
    or b
    ld c, a
    sub b
    ld l, a
    ret nc

    cpl
    ret nz

    ccf
    ret nc

    cpl
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld c, b
    or a
    ret c

    daa
    ldh [$1f], a
    ret z

    scf
    ld [hl], b
    adc a
    ldh a, [rIF]
    db $f4
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$03]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    ld [hl], a
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
    and b
    ld e, a
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
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
    ld bc, $0100
    ret nz

    ld bc, $01fe
    db $fc
    inc bc
    db $f4
    dec bc
    ld hl, sp+$07
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
    inc b
    ei
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ldh a, [rIF]
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [$0c]
    ldh a, [rP1]
    db $fc
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    jr c, jr_03a_605f

jr_03a_605f:
    jr c, jr_03a_6061

jr_03a_6061:
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    cp $04
    ei
    nop
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    nop
    ld bc, $0002
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
    rrca
    db $f4
    rlca
    cp $07
    ld a, [$fd02]
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $03
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
    ld sp, hl
    rrca
    ldh a, [rIF]
    pop af
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    ld h, b
    sbc a
    add b
    ld a, a
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld bc, $070e
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
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
    nop
    nop
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    add b
    ccf
    db $10
    ldh [$08], a
    ldh a, [rSC]
    db $fc
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld sp, hl
    ld bc, $03f1
    ldh a, [$03]
    ldh a, [$03]
    ld a, [c]
    inc bc
    ldh a, [$03]
    ldh [rTAC], a
    ldh [rTAC], a
    pop hl
    rlca
    db $e4
    rlca
    pop hl
    rlca
    jp nz, $c10f

    rrca
    pop de
    rrca
    pop bc
    rrca
    pop bc
    rra
    add c
    rra
    and e
    rra
    add c
    rra
    add d
    rra
    add b
    ccf
    jp nz, $443f

    ccf
    inc b
    ccf
    add c
    ccf
    add c
    ld a, a
    add c
    ld a, a
    nop
    ld a, a
    ld bc, $027f
    ld a, a
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec b
    ld a, a
    inc bc
    ld a, a
    add hl, bc
    ccf
    inc bc
    ccf
    rlca
    rra
    rst $20
    ldh [$df], a
    ldh a, [$d7]
    ldh a, [$f7]
    ld hl, sp-$15
    ld hl, sp+$7b
    db $fc
    ld [hl], a
    db $fc
    or c
    cp $9b
    cp $8c
    rst $38
    add l
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    ld b, d
    rst $38
    ld b, e
    rst $38
    ld bc, $ffff
    rst $18
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    scf
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    and e
    rst $38
    db $e3
    rst $38
    ld l, a
    rst $38
    ld c, l
    ld a, a
    rst $08
    ld a, a
    add a
    ccf
    rst $00
    ccf
    call nz, $c03f
    rra
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rra
    inc bc
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    ld [$01f7], sp
    cp $81
    ld a, [hl]
    ld b, b
    cp a
    add c
    ld a, [hl]
    ld bc, $01fe
    cp $03
    db $fc
    ld [bc], a
    db $fd
    ld b, $f9
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc b
    ei
    ld [bc], a
    db $fd
    dec b
    ld a, [$f40b]
    rrca
    ldh a, [rIF]
    ldh a, [rNR13]
    db $ec
    ld c, e
    or h
    dec hl
    call nc, $a45b
    xor a
    ld d, b
    xor a
    ld d, b
    dec sp
    call nz, $a857
    ld e, a
    and b
    ld l, a
    sub b
    ld e, a
    and b
    cpl
    rst $38
    ld l, [hl]
    rst $38
    ld e, $ff
    ld a, [hl]
    ld a, a
    ld a, $7f
    dec e
    ld a, a
    ld e, l
    rst $38
    dec e
    rst $38
    db $dd
    ld [hl+], a
    cp e
    ld b, h
    cp e
    ld b, h
    ei
    inc b
    ld a, e
    add h
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld l, a
    sub b
    ld l, a
    sub b
    xor a
    ld d, b
    rst $28
    db $10
    rst $18
    jr nz, jr_03a_62fc

    and b
    rst $18
    jr nz, @+$61

    and b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], a
    adc b
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    cp $01
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld b, d
    cp e
    ld b, h
    cp e
    ld b, h
    ei
    inc b
    ei
    inc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    xor $11
    adc $31
    sbc $21
    ld e, [hl]
    and c
    sbc l
    ld h, d
    sbc l
    ld h, d
    cp l
    ld b, d
    dec a
    jp nz, $c43b

    dec sp
    call nz, $a45b
    ld [hl], a
    nop
    ld [hl], a
    nop
    rst $30
    nop
    ld l, a
    add b
    ld l, a
    add b
    cpl
    ret nz

jr_03a_62fc:
    ld h, a
    ret nz

    rra
    ldh [$af], a
    ldh [$8f], a
    ldh a, [$87]
    ldh a, [$c6]
    ld hl, sp+$06
    ld hl, sp+$22
    db $fc
    dec [hl]
    cp $13
    cp $fe
    db $e4
    rst $38
    rst $20
    rst $38
    or $ff
    di
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    cp $ff
    cp $00
    ld bc, $0101
    ld bc, $0201
    inc bc
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
    jr jr_03a_6357

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03a_6367

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03a_6377

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03a_6387

    ld [hl-], a

jr_03a_6357:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03a_6397

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_03a_6367:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $4a49
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_03a_6377:
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
    ld c, a

jr_03a_6387:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld bc, $016a
    ld bc, $0101
    ld l, e

jr_03a_6397:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld bc, $0175
    ld bc, $0101
    ld bc, $7601
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld bc, $017e
    ld bc, $0101
    ld bc, $807f
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    ld bc, $8988
    adc d
    ld bc, $8b01
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ld [hl], $01
    sub h
    sub l
    sub [hl]
    ld bc, $9897
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld [hl], $9e
    sbc a
    ld [hl], $a0
    and c
    and d
    and e
    and h
    and l
    inc e
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
    ld bc, $0101
    ld bc, $c3c2
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    ld bc, $0101
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    ld l, e
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    ld bc, $e401
    push hl
    and $4e
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $4e
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    ld a, $61
    ld a, $04
    dec b
    ld a, [$0706]
    ld [$0a09], sp
    dec bc
    ld bc, $360c
    inc b
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
    inc b
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    inc bc
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
    rlca
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    inc b
    nop
    rlca
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld bc, $0101
    ld b, $07
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    rlca
    rlca
    ld b, $01
    ld bc, $0101
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
    rlca
    rlca
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0106
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
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [$0808], sp
    ld a, [bc]
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0800], sp
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $02
    ld a, a

jr_03a_65aa:
    pop bc
    rra

jr_03a_65ac:
    ldh a, [rTAC]

jr_03a_65ae:
    db $fd
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
    cp a
    ld b, b
    cp a
    ld b, b

jr_03a_65c4:
    cp a
    ld b, b

jr_03a_65c6:
    cp a
    ld b, b
    rst $18
    jr nz, jr_03a_65aa

    jr nz, jr_03a_65ac

    jr nz, jr_03a_65ae

    jr nz, jr_03a_6640

    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    or a
    ld c, b

jr_03a_65e0:
    cp a
    ld b, b
    rst $18
    jr nz, jr_03a_65c4

    jr nz, jr_03a_65c6

    jr nz, jr_03a_6666

    add d
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b

jr_03a_65f2:
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    sbc $21
    db $db
    inc h
    db $db
    inc h
    rst $18
    jr nz, jr_03a_65e0

    jr nz, jr_03a_65f2

    db $10
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp $01
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    cp a
    ld b, b
    ei
    inc b
    ei
    inc b
    db $db
    inc h
    db $db
    inc h
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    cp $01
    and $19
    and $19
    rst $30
    nop
    ld h, a
    nop
    ld h, a
    ld bc, $0177
    db $76
    inc bc
    ld a, a
    inc bc
    ld a, [hl]
    inc bc
    cp $07

jr_03a_6640:
    ld a, l
    rlca
    ld a, c
    rrca
    dec sp
    rrca
    ei
    rrca
    ld a, d
    rra
    ld [hl], $1f
    inc [hl]
    ccf
    inc [hl]
    ccf
    ccf
    inc de
    ld a, a
    inc bc
    ld a, a
    daa
    ld a, a
    daa
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_03a_6666:
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, [hl]
    ld a, [hl]
    db $fc
    ccf
    call z, $e00f
    rlca
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nc

    nop
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $f4
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld hl, sp+$07
    ld hl, sp+$07
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    db $fd
    inc bc
    ei
    db $fc
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc $fe
    sbc $fe
    sbc $fe
    jp c, $ef03

    inc bc
    db $ec
    rlca
    ld l, h
    rlca
    ld [hl], h
    rlca
    ld a, b
    rrca
    ld a, h
    rrca
    cp d
    rra
    or b
    rra
    or b
    rra
    ldh [$3f], a
    ldh a, [$3f]
    ret nz

    ld a, a
    ld c, b
    ld a, a
    ret nz

    ld a, a
    sub b
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, d
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    and $ff
    and $fe
    and l
    cp $25
    cp $25
    db $fc
    daa

jr_03a_675a:
    rst $38
    jr z, jr_03a_675a

    ld a, [hl+]
    db $fc
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

jr_03a_676b:
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
    ld sp, $13ce
    db $ec
    dec bc
    db $f4
    dec c
    ld a, [c]
    inc b
    ei
    jr jr_03a_676b

    rlca
    ld hl, sp+$37
    ret z

    scf
    ret z

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$27], a
    ret c

    inc d
    db $eb
    ld a, [bc]
    push af
    db $10
    rst $28
    ld [de], a
    db $ed
    rlca
    ld hl, sp+$07
    ld hl, sp+$02
    db $fd
    dec bc
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    rra
    pop hl
    rra
    db $e3
    rrca
    di
    nop
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    rra
    ld h, b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rlca
    ld a, b
    rlca
    ld a, b
    inc bc
    inc a
    cp [hl]
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    sbc a
    ret nz

    rra
    ret nz

    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$6f]
    ldh a, [$7f]
    ldh a, [$6f]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    db $fc
    db $e3
    ld hl, sp-$39
    ld hl, sp-$69
    ld sp, hl
    sub [hl]
    ei
    add h
    pop af
    adc [hl]
    pop af
    adc [hl]
    ldh a, [$8f]
    pop hl
    ld a, $ff
    nop
    ei
    ld b, h
    rst $38
    ret nz

    rst $38

jr_03a_683d:
    ret nz

    cp $81
    rst $18
    and b
    di
    adc h
    add c
    cp $a0
    ld e, a
    and b
    ld e, a
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld e, $e1
    jr nz, jr_03a_683d

    ld b, b
    cp a
    rlca
    ld hl, sp+$01
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
    inc bc
    nop
    nop
    nop
    nop
    add b
    ld h, b
    and l
    ld e, d
    ld sp, $e5ce
    ld a, [de]
    db $fd
    ld [bc], a
    or $09
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp a
    ld b, b
    rst $28
    db $10
    ld e, a
    and b
    ld d, a
    xor b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_03a_6920

    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38

jr_03a_68a8:
    rrca
    rst $38

jr_03a_68aa:
    inc bc
    rst $38
    db $fd
    inc bc
    pop af
    inc bc
    inc e
    add sp, -$04
    ld hl, sp-$04
    ldh a, [$fc]
    ldh a, [$3e]
    ret nc

    cp [hl]
    ld d, b

jr_03a_68bc:
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    sbc $20
    sbc $28
    sbc $20
    rst $18
    jr nz, jr_03a_68a8

    jr nz, jr_03a_68aa

    jr z, jr_03a_68bc

    db $10
    rst $28
    db $10
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    rst $30
    ld a, [bc]
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, l
    add d
    dec a
    jp nz, $f20d

    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_03a_6920:
    rrca
    ldh a, [rDIV]
    ei
    inc a
    jp $07f8


    ld sp, hl
    ld b, $ff
    nop
    ei
    inc b
    rst $38
    nop
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
    rst $28
    db $10
    cp a
    ld b, b
    rst $38
    nop
    ld [hl], e
    adc h
    ei
    inc b
    ld h, a
    sbc b
    ld d, a
    xor b
    ld b, a
    cp b
    rlca
    ld hl, sp+$0f
    ldh a, [rSCX]
    cp h
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    ld b, [hl]
    cp c
    ld b, $f9
    ld [bc], a
    db $fd
    ld b, $f9
    rst $38
    nop
    cp a
    ld b, b
    ld d, a
    xor b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l

Call_03a_699f:
    add d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp [hl]
    ld b, c
    cp $01
    cp $01
    cp $01
    cp $01
    xor $11
    cp $01
    ld a, [hl]
    add c
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    and b
    and a
    ld e, b
    scf
    ret z

    rla
    add sp, $25
    jp c, $e41b

    ld a, [bc]
    push af
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $02

jr_03a_69d1:
    rst $38

jr_03a_69d2:
    ld bc, $01ff
    rst $38
    nop
    ld a, a

jr_03a_69d8:
    nop
    ld a, a

jr_03a_69da:
    nop
    ld a, a

jr_03a_69dc:
    nop
    ld a, a

jr_03a_69de:
    nop
    ld a, a

jr_03a_69e0:
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    pop bc
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
    rst $18
    jr nz, jr_03a_69d8

    jr nz, jr_03a_69da

    jr nz, jr_03a_69dc

    jr nz, jr_03a_69de

    jr nz, jr_03a_69e0

    jr nz, jr_03a_69d2

    jr nc, jr_03a_69d1

    inc sp
    ret nz

    ccf
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld h, b
    sbc a
    ld h, l
    sbc d
    ld [hl], e
    adc h
    scf
    ret z

    ccf
    ret nz

    inc bc
    db $fc
    dec hl
    call nc, $906f
    rst $38
    nop
    cp a
    ld b, b
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
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b

jr_03a_6a4c:
    ccf
    ret nz

jr_03a_6a4e:
    ccf
    ret nz

jr_03a_6a50:
    rst $38
    nop

jr_03a_6a52:
    rst $38
    nop

jr_03a_6a54:
    rst $38
    nop
    rla
    add sp, $55
    xor d
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
    nop

jr_03a_6a66:
    nop
    nop
    nop
    nop
    rst $18
    jr nz, jr_03a_6a4c

    jr nz, jr_03a_6a4e

    jr nz, jr_03a_6a50

    jr nz, jr_03a_6a52

    jr nz, jr_03a_6a54

    jr nz, jr_03a_6a66

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld l, l
    sub d
    xor l
    ld d, d
    push af
    ld a, [bc]
    cp l
    ld b, d
    cp c
    ld b, [hl]
    xor l
    ld d, d
    add hl, sp
    add $9a
    ld h, l
    ld a, [de]
    push hl
    ld a, [bc]
    push af
    ld [bc], a
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
    ld hl, sp-$01
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add e
    db $fc
    db $e3
    db $fc
    db $ec
    di
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$0c
    add sp, -$0a
    add sp, -$0a
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$0b
    add sp, -$0c
    add sp, -$0a
    add sp, -$0a
    ld [$e8f4], a
    rst $30
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$0a
    add sp, -$09
    add sp, -$0a
    add sp, -$0a
    add sp, -$0c
    add sp, -$0c
    add sp, -$0b
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
    add sp, -$09
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
    rst $38
    nop
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    add b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    cp e
    ld b, h
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    db $dd
    ld [hl+], a
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    xor $11
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    nop
    ld d, a
    nop
    sub e
    nop
    ld a, a
    ld a, a
    add b
    rst $38
    db $fd
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $f8ff
    rst $38
    ret nc

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    ldh a, [rIF]
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$36
    ret


    inc c
    di
    ld [de], a
    ld l, l
    dec de
    inc h
    dec sp
    inc b
    dec de
    inc b
    add hl, de
    ld b, $18
    rlca
    ld [$8c07], sp
    inc de
    adc h
    inc bc
    inc c
    add e
    inc c
    inc hl
    inc c
    inc sp
    adc h
    inc de
    inc b
    ld b, e
    nop
    rst $08
    ld b, [hl]
    add c
    inc hl
    ret nz

    or c
    ld b, b
    ld bc, $0180
    stop
    ld [$0001], sp
    ld bc, $0320
    ret nz

    dec b
    ldh [$03], a
    ldh [$03], a
    ldh a, [rSB]
    db $f4
    inc bc
    db $fc
    ld bc, $01f8
    db $fc
    ld bc, $09f4
    ret nz

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
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    cp a
    nop
    ccf
    ccf
    ret nz

    rst $38
    ld a, [hl-]
    rst $38
    add b
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
    ret nz

    ret nz

jr_03a_6c88:
    rst $38
    rst $38
    rst $38
    rst $38

jr_03a_6c8c:
    rst $38
    rst $38
    rst $38
    db $fc
    rra
    ldh [$9f], a
    ld h, b
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_03a_6c88

    db $10
    rst $20
    jr jr_03a_6c8c

    sbc b
    rst $30
    ld c, b
    rst $30
    ld c, b
    ei
    ld b, h
    ei
    ld b, h
    ei
    ld h, h
    ld h, l
    ld a, [$7afd]
    xor l
    ld a, d
    cp d
    ld l, l
    cp b
    ld l, a
    jr c, jr_03a_6d23

    xor h
    ld [hl], a
    adc c
    db $76
    rst $28
    ld d, b
    cp $41
    sbc [hl]
    ld l, a
    rst $18
    daa
    ld c, [hl]
    rst $38
    ld h, a
    rst $38
    ld b, a
    rst $38
    inc hl
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rst $00
    ccf
    jp $f33f


    rra
    ei
    rra
    ei
    rra
    db $eb
    rra
    db $eb
    rra
    rst $28
    rra
    rrca
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
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    dec b
    ld a, [$ff00]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    dec h
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    nop
    rlca
    ld hl, sp+$0f

jr_03a_6d23:
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc c
    ldh a, [rSB]
    ldh [rDIV], a
    db $e3
    dec b
    di
    inc bc
    pop af
    inc bc
    ld sp, hl
    ld bc, $01f8
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    rra
    add sp, $0f
    ld hl, sp+$0f
    rst $38
    rlca
    rst $38
    rlca
    ei
    rst $38
    ld a, a
    ld l, a
    pop de
    rst $30
    add hl, bc
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    pop bc
    rst $38
    ld bc, $3fff
    ret nz

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
    db $fd
    ld [bc], a
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
    db $fd
    ld [bc], a
    rst $30
    ld [$00ff], sp
    di
    inc bc
    db $fc
    rst $38
    rlca
    rst $38
    ret nc

    rst $38

jr_03a_6da8:
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
    rra
    rra
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop hl
    nop
    inc c
    nop
    ld [bc], a
    db $fc
    ld hl, sp-$22
    xor l
    adc $ba
    pop bc
    ld a, d
    add c
    dec sp
    pop bc
    db $dd
    db $e3
    ld [hl], e
    rst $38
    cp d
    ld a, a
    nop
    ld a, b
    inc bc
    nop
    ld a, $00
    inc [hl]
    ret nz

    jr c, jr_03a_6da8

    dec [hl]
    ret nz

    ld a, [hl-]
    ret nz

    dec a
    ret nz

    ld e, $e0
    dec e
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$02
    db $fd
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $28
    db $fc
    rst $08
    db $fc
    call z, $ccff
    rst $38
    call z, $ccff
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    call z, $ccff
    rst $38
    call z, $c0ff
    rst $38
    add sp, $17
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ret nz

    scf
    ret z

    or a
    ld c, b
    cpl
    ret nc

    cp a
    ld b, b
    rst $38
    nop
    ei
    inc b
    cp e
    ld b, h
    ei
    inc b
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$00ff], sp
    rst $38
    nop
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
    cp a
    ld b, b
    db $fd
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    ld a, [$e8ff]
    rst $38
    jr nz, @+$01

    and b
    cp $ff
    ld bc, $ffff
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
    cp $00
    rlca
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    db $fd
    jp $c3fc


    db $fc
    db $e3
    ld a, [hl]
    ld [c], a
    ccf
    rst $18
    ccf
    sbc $3f
    xor $1f
    rst $30
    rrca
    ei
    rlca
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    ccf
    nop
    cp a
    nop
    rra
    add b
    ld c, a
    add b
    and a
    ret nz

    and a
    ret nz

    inc bc
    ret nz

    inc a
    inc bc
    or $01
    ld c, $01
    ld d, [hl]
    ld bc, $00af
    ld e, a
    nop
    xor a
    nop
    ld e, [hl]
    ld bc, $00bf
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    di
    ld a, b
    add a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ld b, b
    cp a
    nop
    rst $38
    ld d, h
    xor e
    nop
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    inc b
    ld hl, sp+$07
    db $fd
    ld [bc], a
    ld hl, sp+$07
    rst $38
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
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01

jr_03a_6f0c:
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    rst $20
    jr jr_03a_6f0c

    ld a, [de]
    and $19
    ld h, [hl]
    sbc c
    ld l, [hl]
    sub c
    and h
    ld e, e
    ret nz

    rst $38
    inc h
    rst $38
    inc b
    rst $38
    add h
    rst $38
    ld b, h
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop

Call_03a_6f3f:
    nop
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    xor b
    rst $38
    and b
    rst $38
    nop
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    pop hl
    rra
    ldh a, [rIF]
    ld [hl], b
    adc a
    or b
    ld e, a
    ret nc

    ccf
    ldh a, [$1f]
    ld d, b
    cp a
    sub b
    ld a, a
    ret c

    scf
    call c, Call_03a_7133
    sbc a
    cp b
    ld [hl], a
    call c, $ec33
    inc de
    and $19
    jp nz, $d33d

    inc l
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jr @+$01

    jr @+$01

    jr @+$01

    rra
    rst $38
    rra
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    ld [de], a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    ld [hl], b
    adc a
    jr nc, @-$2f

    ld h, b
    sbc a
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
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    jr nz, @-$1f

    add b
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $80ff
    rst $38
    nop
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $40fe
    cp a
    call z, $fc33
    inc bc
    db $fc
    inc bc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr @+$01

    inc e
    ei
    ld e, $f9
    rra
    ld hl, sp+$1f
    ld hl, sp-$65
    ld a, h
    sbc c
    ld a, [hl]
    ret c

    ccf
    call c, $de3b

jr_03a_704d:
    add hl, sp
    rst $18
    jr c, jr_03a_704d

    scf
    ld a, $f3
    rla
    ld sp, hl
    rlca
    ld hl, sp+$01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $e1
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    dec bc
    rst $38
    nop
    cp $01
    or b
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor e
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$f807]
    rrca
    ldh a, [$1f]
    ldh [rNR22], a
    add sp, $17
    add sp, $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    rrca
    ldh a, [rTAC]
    ld hl, sp+$3f
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR31], a
    db $e4
    ld a, [hl]
    add c
    rra
    ldh [$03], a
    db $fc
    rla
    add sp, $1b
    db $e4
    dec sp
    call nz, $ff1b
    rra
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $e07f
    nop
    ldh a, [rLCDC]
    db $fc

jr_03a_7115:
    jr nc, jr_03a_7115

    ld l, h
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    ld a, a
    add e
    ccf
    pop bc
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$7d

Call_03a_7133:
    ld a, h
    pop hl
    ld e, $f8
    rlca
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$7f], a
    call nz, $c0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld a, [$fcdf]
    rst $08
    rst $30
    rst $08
    ei
    rst $00
    db $db
    rst $20
    push bc
    ei
    add $f9
    add c
    cp $b4
    res 0, b
    rst $38
    ret nz

    cp a
    and b
    rst $18
    or b
    rst $08
    or b

jr_03a_7177:
    rst $08
    add b
    rst $38
    add b
    cp $0c
    di
    ld b, $f9
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld b, c
    cp [hl]
    ld l, c
    sub [hl]
    ld h, b
    sbc a
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_03a_7177

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
    ld l, b
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    ld bc, $003f
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    add b
    ld [hl], a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    ld b, a
    ld a, a
    add a
    cp a
    ld c, a
    ld a, a
    adc [hl]
    rst $28
    ld [de], a
    ei
    inc b
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    and b
    ld l, a
    sub b
    ccf
    ret nz

jr_03a_7218:
    rra
    ldh [$2f], a
    ret nc

    rrca
    ldh a, [$cf]
    jr nc, @+$01

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
    cp a
    ld a, a
    cp a
    ld a, a
    ld e, a
    cp a
    ld l, a
    sbc a
    daa
    rst $18
    dec de
    rst $20
    dec b
    ei
    ld [bc], a
    dec a
    ld bc, $000e
    rlca
    nop
    adc e
    nop
    sbc c
    add b
    ld c, c
    ret nz

    cpl
    ldh [rNR22], a
    ld h, b
    sbc a
    jr nc, jr_03a_7218

    jr nc, jr_03a_7218

    rst $30
    ld [$21de], sp
    add sp, $17
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
    add b
    ret nz

    nop
    nop
    nop
    nop
    rlca
    ld [$00ff], sp
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
    ei
    rst $38
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    db $f4
    di
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ld hl, sp-$0d
    ldh a, [$f3]
    ld hl, sp-$09
    ldh [$e7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh a, [$e7]
    ld [c], a
    db $ed
    rst $20
    add sp, -$31
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $28
    ret nz

    rst $28
    ret nz

    rst $38
    ret nz

    rst $28
    ret nz

    ret nz

    cp a
    ldh [$1f], a
    and b
    rst $18
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
    ld a, a
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    pop bc
    ld a, $e0
    rra
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    jr z, @+$01

    jr @+$01

    inc b
    rst $38
    ld [bc], a
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
    rst $38
    rst $38
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
    cp a
    ld a, a
    ld e, a
    cp a
    ld l, a
    sbc a
    scf
    rst $08
    dec de
    rst $20
    dec bc
    rst $30
    dec b
    ei
    ld [bc], a
    db $fd
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
    cp $00
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $1f06
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rla
    ld a, a
    nop
    inc bc
    nop
    nop
    nop
    ldh [rP1], a
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
    ret nz

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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    cp $00
    or h
    rst $38
    nop
    xor b
    ld d, a
    nop
    rst $38
    ld de, $3dee
    jp nz, $c03f

    ld e, a
    and b
    ld hl, $00de
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $05
    ld a, [$807f]
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld a, h
    add e
    inc e
    db $e3
    inc c
    di
    ld bc, $81fe
    ld a, [hl]
    pop bc
    ld a, $e1
    ld e, $f1
    rrca
    ei
    inc b
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_03a_7428

    ret nz

jr_03a_73ea:
    ld de, $03ee
    db $fc

jr_03a_73ee:
    add b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
    rra
    rst $38
    rst $38
    rst $38
    rst $38

jr_03a_73fe:
    ld hl, sp-$08
    inc bc
    ld a, h
    ld a, e
    add h
    ld a, e
    add h
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $30
    ld [$11ee], sp
    xor $11
    xor $11
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a

jr_03a_7424:
    db $dd
    ld [hl+], a

jr_03a_7426:
    cp l
    ld b, d

jr_03a_7428:
    cp l
    ld b, d
    cp l
    ld b, d
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rlca
    ccf
    rst $38
    cp $7b
    ld a, [hl]
    inc bc
    ld c, $e2
    ld c, $e2
    ld c, $e2
    ld c, $e4
    inc c
    db $e4
    inc c
    db $e4
    inc c
    push bc
    inc e
    push bc
    inc e
    push bc
    inc e
    ret


    jr jr_03a_7424

    jr jr_03a_7426

    jr jr_03a_73ea

    jr @-$73

    jr jr_03a_73ee

    jr c, @-$6b

    jr nc, jr_03a_73fe

    jr nc, jr_03a_7480

    jr nc, jr_03a_7482

    jr nc, jr_03a_7480

    ld [hl], b
    sub e
    ldh a, [$a7]
    ldh [$a7], a
    ldh [$a3], a
    ldh [$a3], a
    ldh [$e3], a
    ldh [$e1], a
    ldh [$c1], a
    ret nz

    ret nz

    ret nz

jr_03a_7480:
    add b
    ld b, b

jr_03a_7482:
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ldh [$60], a
    ld hl, sp+$78
    ld a, h
    sbc h
    ld a, a
    rst $00
    ld a, a
    di
    rst $38
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    di
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld [hl], l
    ld a, a
    sbc b
    cp a
    ld c, h
    rst $18
    inc hl
    rst $38
    ld bc, $18e7
    db $dd
    ld [hl+], a
    db $fc
    inc bc
    pop af
    ld c, $e1
    ld e, $e8
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $e3
    inc e
    ldh a, [rIF]
    cp b
    ld b, a
    inc a
    jp Jump_000_01fe


    adc $31
    ld e, l
    and d

jr_03a_74de:
    inc bc
    db $fc
    nop
    rst $38
    nop
    cp $00
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0001
    rra
    ld e, $e1
    sbc $21
    db $dd
    ld [hl+], a

jr_03a_74f4:
    db $dd
    ld [hl+], a

jr_03a_74f6:
    cp l
    ld b, d

jr_03a_74f8:
    cp l
    ld b, d

jr_03a_74fa:
    cp l
    ld b, d

jr_03a_74fc:
    cp l
    ld b, d
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    ld a, e
    add h
    ld a, e
    add h

jr_03a_7508:
    ld a, e
    add h
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $28
    db $10
    rst $18
    jr nz, jr_03a_74f4

    jr nz, jr_03a_74f6

    jr nz, jr_03a_74f8

    jr nz, jr_03a_74fa

    jr nz, jr_03a_74fc

    jr nz, jr_03a_74de

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, l
    add d
    ld a, l
    add d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b

jr_03a_7540:
    ei
    inc b

jr_03a_7542:
    ei
    inc b

jr_03a_7544:
    ei
    inc b

jr_03a_7546:
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $28

jr_03a_7555:
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $08

jr_03a_755f:
    jr nc, jr_03a_7540

    jr nz, jr_03a_7542

    jr nz, jr_03a_7544

    jr nz, jr_03a_7546

    jr nz, jr_03a_7508

    ld h, b
    sbc $21
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld a, $c1
    inc a
    jp $cb34


    dec d
    ld [$d629], a
    inc d
    db $eb
    jr z, jr_03a_7555

    jr nz, jr_03a_755f

    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    cp $1e
    rst $38
    rlca
    rst $38
    ld h, c
    rst $38
    ld [c], a
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $fd
    rst $38
    push bc
    rst $38
    ld c, l
    rst $38
    ret


    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld h, b
    rst $38

jr_03a_75a9:
    jr jr_03a_762a

jr_03a_75ab:
    adc b
    rra
    ldh [$cf], a

jr_03a_75af:
    jr nc, jr_03a_75b4

    db $fc
    add e
    ld a, h

jr_03a_75b4:
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    add b
    ld a, a
    jr nz, jr_03a_75a9

    jr nz, jr_03a_75ab

    add b
    ld a, a
    jr nz, jr_03a_75af

    nop
    ldh [rP1], a
    nop
    nop
    nop

jr_03a_75d6:
    nop
    nop
    ld c, $1f
    ld e, l
    ld a, [c]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    ld a, a
    add b
    ld a, a
    add b

jr_03a_75ee:
    ld a, [hl]
    add c

jr_03a_75f0:
    ld a, [hl]
    add c

jr_03a_75f2:
    ld a, [hl]
    add c

jr_03a_75f4:
    ld a, l
    add d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_03a_75ee

    jr nz, jr_03a_75f0

    jr nz, jr_03a_75f2

    jr nz, jr_03a_75f4

    jr nz, jr_03a_75d6

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, l
    add d

jr_03a_762a:
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $f2
    dec c
    xor e
    ld d, h
    ld d, d
    xor l
    and d
    ld e, l
    and e
    ld e, h
    ld [bc], a
    db $fd
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0080
    ret nz

    db $10
    ldh a, [$e4]
    db $fc
    rst $38
    adc h
    rst $38
    jp $80ff


    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03a_76a1

jr_03a_76a1:
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03a_76db

    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    inc sp
    inc [hl]
    dec [hl]
    nop
    ld [hl], $37
    jr c, jr_03a_76ee

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld a, [bc]
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
    ld a, [bc]
    ld e, l

jr_03a_76db:
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
    jr jr_03a_7753

    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_03a_76ee:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, [bc]
    ld a, c
    ld a, d
    ld a, d
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
    ld a, [bc]
    add [hl]
    ld a, d
    ld a, d
    ld a, d
    add a
    adc b
    ld a, [bc]
    adc c
    adc d
    adc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld a, d
    sub c
    sub d
    sub e
    ld a, [bc]
    ld a, [bc]
    sub h
    sub l
    sub [hl]
    sub a
    ld a, [bc]
    ld a, [bc]
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld a, [bc]
    ld a, [bc]
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld a, [bc]
    ld a, [bc]
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    ld a, [bc]
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ld a, [bc]
    ld a, [bc]
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    ld a, [bc]
    ld a, [bc]
    or a
    cp b
    cp c
    cp d
    ld a, [bc]

jr_03a_7753:
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
    sub $a0
    rst $10
    ret c

    reti


    jp c, $dba0

    call c, $dda0
    sbc $df
    ldh [$e1], a
    ld [c], a
    and b
    and b
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    nop
    ldh a, [$a0]
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    nop
    cp $ff
    nop
    ld bc, $0302
    ld a, d
    inc b
    dec b
    ld b, $07
    ld [$7a09], sp
    ld a, [de]
    ld a, [bc]
    dec bc
    inc c
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
    ld [bc], a
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
    nop
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
    nop
    inc bc
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
    nop
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
    ld [bc], a
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
    dec b
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
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    nop
    ld [bc], a
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
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    inc bc
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld [bc], a
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    dec h
    dec c
    dec bc
    ld a, [bc]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $01fe
    cp $03
    db $fc
    ret nz

    inc a
    ld b, b
    cp b
    adc h
    ld [hl], b
    db $10
    xor $2a
    push de
    db $10
    rst $28
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
    rst $38

jr_03a_7932:
    ld b, b
    cp a
    db $10
    rst $28
    add b
    ld a, a
    ld l, b
    sub a
    cp d
    ld b, l
    rst $00
    jr c, jr_03a_7932

    inc c
    db $fc
    inc bc
    cp [hl]
    ld b, c
    rst $28
    db $10
    pop af
    ld c, $3e
    pop bc
    rla
    add sp, $17
    add sp, $05
    ld a, [$0ff0]
    cp $01
    cpl
    ret nc

    rst $38

jr_03a_7957:
    nop
    ld a, a
    add b
    rrca
    ldh a, [$71]
    adc [hl]
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    ld c, a
    or b
    ld d, a
    xor b
    dec bc
    db $f4
    nop
    rst $38
    ld e, l
    and d
    sub a
    ld l, b
    ld e, a
    and b
    daa
    ret c

    cp a
    ld b, b
    ld d, a
    xor b
    nop
    rst $38
    add d
    ld a, l
    dec hl
    call nc, $a05f
    cp a
    ld b, b
    xor e
    ld d, h
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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

jr_03a_7995:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $01fe
    cp $05
    ld a, [$f906]
    rra
    ldh [$3d], a
    jp nz, $c837

    ld b, d

jr_03a_79cf:
    cp h
    ld hl, sp+$00
    ret nc

    jr nz, jr_03a_7995

    jr nc, jr_03a_7957

    ld a, b
    nop
    ld l, h
    nop
    cp [hl]
    nop
    cp h
    nop
    ld e, d
    nop
    ld h, h
    nop
    inc [hl]
    add b
    ld d, [hl]
    ld b, b
    xor b
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_03a_79cf

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
    and b
    ld e, a
    ld [hl], b
    adc a
    inc e
    db $e3
    add $39
    pop af
    ld c, $7e
    add c
    sbc a
    ld h, b
    db $e3
    inc e
    cp $01
    cp a
    ld b, b
    ccf
    ret nz

    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
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
    nop
    ld d, a
    xor b
    rst $38
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
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add c

jr_03a_7a6f:
    ld a, [hl]
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
    ei
    inc b

jr_03a_7a84:
    push hl
    ld a, [de]
    jp c, $f825

    rlca
    ldh [$1f], a
    add d
    ld a, l
    jr nz, jr_03a_7a6f

    nop
    rst $38
    nop
    rst $38
    nop
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
    ei
    rrca
    or $0f
    db $fc
    dec de
    db $fc
    ccf
    ret nc

    ld a, a
    add e
    ld a, [hl]
    add d
    inc a
    call nz, $e018
    jr nz, jr_03a_7a84

    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    add b
    nop
    nop
    add b
    ret nz

    nop
    ld b, b
    and b
    jr nc, jr_03a_7ac4

jr_03a_7ac4:
    jr c, jr_03a_7ac6

jr_03a_7ac6:
    jr jr_03a_7ac8

jr_03a_7ac8:
    inc c
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0300
    ld bc, $0006
    inc e
    nop
    jr c, jr_03a_7ad7

jr_03a_7ad7:
    ldh [rLCDC], a
    add b
    nop
    cp b
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03a_7af3:
    ccf
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    sbc a
    jr jr_03a_7af3

    ret nz

    ccf
    ld [hl], b
    adc a
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    cp [hl]
    ld b, c
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

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
    jr nz, @+$01

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
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_03a_7b4b:
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
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    push de
    ld a, [hl+]
    ld l, d
    sub l
    jr z, jr_03a_7b4b

    ret nz

    ccf
    ld bc, $0afe
    push af
    and h
    ld e, e
    add hl, bc
    or $90
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    and $3e
    db $fd
    cp $7d
    rst $38
    ret c

    rst $38
    nop
    db $fc
    nop
    db $fc
    ld b, b
    cp $20
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, $01
    rra
    nop
    dec c
    ld [bc], a
    ld b, $01
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    ld [bc], a
    inc d
    nop
    db $10
    ld [$2010], sp
    add b
    ld b, b
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_03a_7be5

    db $10
    jr jr_03a_7bc8

jr_03a_7bc8:
    ld c, $00
    inc b
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0700
    nop
    rrca
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
    ld bc, $07fe

jr_03a_7be5:
    ld hl, sp+$0e
    pop af
    jr @-$17

    jr nc, @-$2f

    ret nz

    ccf
    nop
    rst $38
    nop
    ld a, a
    jr nc, jr_03a_7c03

    jr c, jr_03a_7bfd

    inc e
    inc bc
    inc c
    inc bc
    ld c, $01
    rlca

jr_03a_7bfd:
    nop
    inc bc
    nop
    nop
    db $fc
    nop

jr_03a_7c03:
    cp $00
    cp $00
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, [$ff05]
    nop
    rst $38
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
    ld [bc], a
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, c
    add [hl]
    ld b, a
    cp b
    rra
    ldh [$7f], a
    add b
    cp a
    ld b, b
    ld d, a
    xor b
    sbc a
    ld h, b
    ld c, d
    or l

jr_03a_7c4c:
    dec [hl]
    jp z, Jump_03a_54ab

    nop
    rst $38
    inc bc
    db $fd
    rrca
    ldh a, [$e7]
    jr jr_03a_7c4c

    inc c
    ld a, [$fc04]
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ld [hl-], a
    pop bc
    sub e
    ld a, h
    sbc $28
    ld l, h
    ret c

    ld a, h
    ld h, $77
    xor b
    dec sp
    inc d
    dec c
    ld [de], a
    rla
    ld [$040b], sp
    dec b
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    ld bc, $27fe
    ret c

    ld c, $f1
    inc e
    db $e3
    ld a, e
    add h
    push hl
    ld a, [de]
    ret nz

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
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    add e
    ld a, h
    add c
    ld a, [hl]
    db $e3
    inc e
    ldh [$1f], a
    push af
    ld a, [bc]
    ld a, c
    ld b, $7d
    ld [bc], a
    inc a
    inc bc
    ld e, $01
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $c0
    cp $80
    rst $38
    ldh [$1f], a
    db $10
    rst $28
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    call nc, $fd2b
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    di
    inc c
    rst $18
    jr nz, jr_03a_7d5a

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
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fc
    inc bc
    add hl, sp
    add $00
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
    ldh a, [$1f]
    db $ec
    rst $38
    inc c
    cp $00
    db $fc
    nop
    ldh a, [$08]
    ldh [rTMA], a
    ld [hl], b
    ld b, $60
    ld bc, $0130
    jr nc, jr_03a_7d52

jr_03a_7d52:
    jr jr_03a_7d54

jr_03a_7d54:
    jr jr_03a_7d56

jr_03a_7d56:
    jr jr_03a_7d5c

    inc c
    nop

jr_03a_7d5a:
    inc b
    add hl, bc

jr_03a_7d5c:
    ld b, $01
    ld [bc], a
    inc b
    rrca
    nop
    db $10
    dec hl
    jr nc, jr_03a_7da7

    pop bc
    nop
    ret nz

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
    add b
    nop
    add b
    nop
    ld b, b
    add c
    and b
    ld b, a
    add b
    ld l, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    add hl, bc
    or $07
    ld hl, sp+$4e
    or c
    add hl, de
    and $7a
    add l
    ldh a, [rIF]
    ret nc

    cpl
    and b
    ld e, a
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
    ld b, b
    cp a
    nop

jr_03a_7da7:
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$75
    ld [hl], h
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03a_7dca:
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_03a_7dca

    db $10
    rst $30
    ld [$00ff], sp
    ld e, e
    inc h
    ld a, a
    nop
    dec a
    ld [bc], a
    ld e, $01
    rra
    nop
    rrca
    ld [$0007], sp
    inc bc
    nop
    ld b, c
    inc bc
    nop
    ld bc, $00c0
    ld b, b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $f4
    nop
    ldh [$1f], a
    ld d, b
    xor a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    rst $30
    ld [$40bf], sp
    rst $38
    nop
    rst $38
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
    ld sp, hl
    ld b, $f7
    ld [$10ef], sp
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    rla
    add sp, $1f
    ldh [$3f], a
    ret nz

    cp a
    ld b, b
    cp l
    ld b, d
    call z, Call_000_0c03
    inc bc
    dec c
    ld [bc], a
    ld c, $01
    ld b, $01
    ld b, $01
    rlca
    nop
    inc bc
    add b
    inc bc
    add b
    ld bc, $0182
    ld h, d
    ld bc, $007c
    add hl, sp
    nop
    ld a, a
    ld b, b
    adc a
    add b
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    nop
    ld b, e
    ld h, b
    rlca
    nop
    cpl
    nop

jr_03a_7e73:
    ccf
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    ld de, $07ee
    ld hl, sp+$4e
    or c
    cp l
    ld b, d
    ld a, e
    add h
    ldh [$1f], a
    ret nc

    cpl
    and b
    ld e, a
    ret nz

    ccf
    nop
    rst $38
    jr nz, jr_03a_7e73

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc c
    di
    rra
    ldh [$1f], a
    ldh [$6f], a
    sub b
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
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
    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    ld [hl], a
    ld [$047b], sp
    ccf
    nop
    dec a
    ld [hl+], a
    ld d, $19
    rra
    rra
    rlca
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    ld b, c
    inc bc
    add c
    ld bc, $0101
    ret nc

    nop
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ldh a, [rIF]
    ldh [$1f], a
    ret


    ld [hl], $dc
    inc hl
    inc a
    jp $03fc


    db $fc
    inc bc
    ld a, [$fc05]
    inc bc
    db $fc
    inc bc
    ld a, [$f705]
    ld [$10ef], sp
    ld bc, $047f
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ccf
    and b
    rra
    jr nz, jr_03a_7f4f

    ld b, b
    and b
    and b
    ld b, b
    ld h, b
    sub b
    ld h, b
    sub b
    and b
    ld d, b
    jr nz, @-$2e

    db $10
    ldh [$30], a
    ret z

    db $10
    add sp, -$58
    ld d, b
    adc b
    ld [hl], b
    ld [$88f4], sp
    ld [hl], h
    ld b, b
    cp h
    nop
    db $fc
    inc b

jr_03a_7f4f:
    ld a, [$fe00]
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_03a_7f5b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld c, $f1
    sbc h
    ld h, e
    ld a, b
    add a
    ldh [$1f], a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_03a_7f5b

    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [de], a
    db $ed
    add hl, sp
    add $fd
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
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec d
    rst $38
    dec bc
    rst $38
    add hl, de
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    rst $10
    rst $38
    ld [hl], e
    rst $38
    cpl
    rst $38
    ld b, e
    rst $38
    ld l, $ff
    ld de, $0bff
    rst $38
    ld bc, $05ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
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
    ld a, e
    inc b
    ld a, a
    nop
    ld a, $01
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
