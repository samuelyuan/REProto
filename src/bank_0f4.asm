SECTION "ROM Bank $0f4", ROMX[$4000], BANK[$f4]

    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld b, $05
    ld hl, $07ff
    inc b
    rst $38
    ld a, a
    dec bc
    inc c
    pop hl
    ld a, a
    rrca
    ld [$bfa1], sp
    add hl, bc
    ld c, $a1
    cp a
    rrca
    ld [$bfbf], sp
    rrca
    ld [$bfa0], sp
    rrca
    ld [$bfa0], sp
    rrca
    rrca
    and c
    cp a
    rrca
    rrca
    pop hl
    rst $38
    rrca
    rrca
    ld b, [hl]
    rst $38
    rrca
    ld c, $c1
    ld a, a
    ld a, [bc]
    dec c
    ld b, c
    rst $38
    rlca
    rlca
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0401
    db $fc
    nop
    nop

jr_0f4_40a6:
    adc b
    ld hl, sp+$00
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    ret nz

    ret nz

jr_0f4_40c2:
    nop
    nop
    jr nz, jr_0f4_40a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_40c2

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_40dc:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    cp a
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_40dc

    ld [$20ff], sp

Call_0f4_40ff:
    ldh [$08], a
    rst $38
    ret nz

    ld b, b
    rst $38
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    and b
    ld h, b
    dec bc
    ld a, [$20e0]
    dec bc
    ld a, [$e020]
    ei
    ld a, [$20e0]
    dec bc
    ld a, [$20e0]
    dec bc
    ld a, [$20e0]
    dec bc
    ei
    ldh [$e0], a
    rrca
    rst $38
    ldh [$e0], a
    push bc
    rst $38
    ldh [$e0], a
    rlca
    db $fc
    ldh [$e0], a
    inc b
    rst $38
    and b
    ld h, b
    add e
    rst $38
    ret nz

    ret nz

    add d
    cp $00
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_41d3

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    ld bc, $ef01
    rst $28
    inc bc
    inc bc
    rst $38
    db $fd
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    ld sp, hl
    rst $38
    inc b
    rlca
    ld a, b
    rst $38
    inc b
    rlca
    jr nz, @+$01

    dec bc
    inc c
    and b
    ld a, a
    rrca
    ld [$ff60], sp
    ld e, $11
    cp a
    cp a
    dec e
    inc de
    ld hl, $103f
    rra
    and c
    cp a
    ld [$610f], sp

jr_0f4_41d3:
    rst $38
    inc b
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ldh [$df], a
    inc bc
    inc bc
    jp nz, Jump_000_02bf

    inc bc
    jp nz, $013f

    ld bc, $fffd
    nop
    nop
    add d
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
    nop
    cp $fe
    ld bc, $1e01
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0401
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    call c, RST_00

jr_0f4_4268:
    rst $38
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    sbc a
    rst $38
    ldh a, [$f0]
    adc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [$0c]
    rst $38
    jr nz, jr_0f4_4268

    ei
    ld a, [$60a0]
    dec bc
    ld a, [$60a0]
    dec bc
    ld a, [$60a0]
    db $fd
    cp $20
    ldh [rIF], a
    db $fc
    ld b, b
    ret nz

    rrca
    db $fc
    ld b, b
    ret nz

    rlca
    db $fc
    ld b, b
    ret nz

    rlca
    db $fc
    ld b, b
    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    add a
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    db $fc
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f4_4319

    ld b, b
    ret nz

    jr nz, jr_0f4_431d

    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    add b
    add b
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_434f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop

jr_0f4_4319:
    nop
    ccf
    ccf
    nop

jr_0f4_431d:
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld c, $09
    ld hl, $0fff
    ld [$ff21], sp
    ld [$7f0f], sp
    rst $38
    ld [$610f], sp
    rst $38
    inc b
    rlca
    ld h, c

jr_0f4_434f:
    rst $38
    rlca
    inc b
    pop hl
    ld a, a
    rlca
    inc b
    rst $38
    ld a, a
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    pop hl
    cp a
    rlca
    rlca
    pop hl
    cp a
    ld [bc], a
    inc bc
    xor $7f
    ld bc, $c101
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop

jr_0f4_43a6:
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    add hl, de
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld c, b
    ld a, b
    ret nz

    ret nz

jr_0f4_43c2:
    nop
    nop
    jr nz, jr_0f4_43a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_43c2

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_43dc:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f4_43e4:
    rst $38
    cp a
    add b
    add b

jr_0f4_43e8:
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a

jr_0f4_43f4:
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_43dc

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0f4_43e4

    db $fc
    rst $38
    jr nz, jr_0f4_43e8

    inc c
    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ld h, b
    and b
    inc c
    rst $38
    jr nz, jr_0f4_43f4

    ei
    rst $38
    ret nz

    ret nz

    rrca
    ei
    ret nz

    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    call nz, Call_000_00fc
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_44cf

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    rrca
    ld [$ff21], sp
    rrca
    ld [$ff7f], sp
    inc c
    dec bc
    ld h, c
    rst $38
    inc c
    dec bc
    ld h, c

jr_0f4_44cf:
    rst $38
    dec bc
    inc c
    ld h, c
    rst $38
    rlca
    inc b
    ld a, a
    rst $38
    rlca
    inc b
    ld h, b
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    rlca
    and c
    rst $38
    rlca
    rlca
    pop hl
    cp a
    rlca
    rlca
    xor $bf
    ld [bc], a
    inc bc
    pop bc
    ld a, a
    ld bc, $c101
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    sbc l
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop

jr_0f4_4526:
    dec e
    dec e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    pop af
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    add hl, sp
    add hl, sp
    ret nz

    ret nz

jr_0f4_4542:
    nop
    nop
    jr nz, jr_0f4_4526

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_4542

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_455c:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f4_4564:
    rst $38
    cp a
    add b
    add b

jr_0f4_4568:
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_455c

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0f4_4564

    db $fc
    rst $38
    jr nz, jr_0f4_4568

    inc c
    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    ldh [rNR41], a
    db $fc
    rst $38
    jr nz, @-$1e

    rrca
    rst $38
    ret nz

    ret nz

    dec bc
    rst $38
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    rst $00
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_464f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld c, $09
    ld a, a
    rst $38
    ld c, $09
    ld h, c
    rst $38
    inc c
    dec bc
    ld h, c

jr_0f4_464f:
    rst $38
    rrca
    ld [$ff61], sp
    dec bc
    inc c
    ld a, a
    rst $38
    dec bc
    inc c
    ld h, b
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    and d
    rst $38
    rlca
    rlca
    ld [c], a
    cp a
    rlca
    rlca
    db $ed
    cp a
    inc bc
    inc bc
    jp nz, Jump_000_00ff

    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop

jr_0f4_46a6:
    dec a
    dec a
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_0f4_46c2:
    nop
    nop
    jr nz, jr_0f4_46a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_46c2

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_46dc:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f4_46e4:
    rst $38
    cp a
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_46dc

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0f4_46e4

    db $fc
    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    ld h, b
    and b
    dec c
    cp $e0
    jr nz, @-$01

    cp $a0
    ld h, b
    dec c
    cp $a0
    ld h, b
    rrca
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    rst $00
    ei
    ret nz

    ret nz

    inc bc
    rst $38
    add b
    add b
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    call z, Call_000_00fc
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_47cf

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$7f0f], sp
    rst $38
    inc c
    dec bc
    ld h, c
    rst $38
    ld c, $09
    ld h, c

jr_0f4_47cf:
    rst $38
    ld c, $09
    ld h, c
    rst $38
    ld [$7f0f], sp
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    ld [c], a
    cp a
    inc bc
    inc bc
    ld [c], a
    rst $38
    ld bc, $cd01
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop

jr_0f4_4826:
    ccf
    ccf
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    ret nz

    ret nz

jr_0f4_4842:
    nop
    nop
    jr nz, jr_0f4_4826

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_4842

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_485c:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    cp a
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_485c

    ld [$20ff], sp
    ldh [$09], a
    cp $e0
    jr nz, @-$01

    cp $e0
    jr nz, jr_0f4_4895

    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ld h, b
    and b
    dec c
    cp $a0
    ld h, b
    db $fd

jr_0f4_4895:
    cp $c0
    ld b, b
    dec c
    cp $c0
    ld b, b
    inc c
    rst $38
    ld b, b
    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    rst $00
    ei
    ret nz

    ret nz

    ld b, $fd
    add b
    add b
    rlca
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sbc [hl]
    cp $00
    nop
    ld h, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_494f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$7f0f], sp
    rst $38
    inc c
    dec bc
    ld h, c
    rst $38
    inc c
    dec bc
    ld h, c

jr_0f4_494f:
    rst $38
    ld [$610f], sp
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    ldh [$bf], a
    rlca
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    pop bc
    rst $38
    ld bc, $c101
    rst $38
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop

jr_0f4_49a6:
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

jr_0f4_49c2:
    nop
    nop
    jr nz, jr_0f4_49a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_49c2

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_49dc:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    cp a
    add b
    add b

jr_0f4_49e8:
    cp a
    ld a, a
    ret nz

    ret nz

jr_0f4_49ec:
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_49dc

    ld [$e0ff], sp
    jr nz, jr_0f4_4a0a

jr_0f4_4a01:
    cp $e0
    jr nz, jr_0f4_4a01

    rst $38
    jr nz, jr_0f4_49e8

    inc c
    rst $38

jr_0f4_4a0a:
    jr nz, jr_0f4_49ec

    inc c
    rst $38
    ld b, b
    ret nz

    rrca
    db $fc
    ret nz

    ld b, b
    rst $38
    db $fc
    ret nz

    ld b, b
    inc c
    rst $38
    ld b, b
    ret nz

    dec bc
    rst $38
    ret nz

    ret nz

    rrca
    ei
    ret nz

    ret nz

    rrca
    ei
    ret nz

    ret nz

    adc $fd
    add b
    add b
    rlca
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    adc h
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [hl], h
    db $fc

jr_0f4_4a5e:
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0f4_4a5e

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc h
    inc a
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_4acf

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$7f0f], sp
    rst $38
    inc c
    dec bc
    ld h, c
    rst $38
    ld c, $09
    ld h, c

jr_0f4_4acf:
    rst $38
    ld c, $09
    ld h, c
    rst $38
    ld [$7f0f], sp
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    pop bc
    cp a
    inc bc
    inc bc
    pop bc
    rst $38
    ld bc, $ce01
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop

jr_0f4_4b26:
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

jr_0f4_4b42:
    nop
    nop
    jr nz, jr_0f4_4b26

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_4b42

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_4b5c:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    cp a
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_4b5c

    ld [$20ff], sp
    ldh [$09], a
    cp $e0
    jr nz, @-$01

    cp $e0
    jr nz, jr_0f4_4b95

    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ld h, b
    and b
    dec c
    cp $a0
    ld h, b
    db $fd

jr_0f4_4b95:
    cp $c0
    ld b, b
    dec c
    cp $c0
    ld b, b
    inc c
    rst $38
    ld b, b
    ret nz

    dec bc
    rst $38
    ret nz

    ret nz

    rrca
    ei
    ret nz

    ret nz

    rst $08
    ei
    ret nz

    ret nz

    ld b, $fd
    add b
    add b
    rlca
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    adc h
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [hl], d
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    add $fe
    nop
    nop
    jr c, jr_0f4_4c36

    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_4c4f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca

jr_0f4_4c36:
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld c, $09
    ld a, a
    rst $38
    ld c, $09
    ld h, c
    rst $38
    inc c
    dec bc
    ld h, c

jr_0f4_4c4f:
    rst $38
    rrca
    ld [$ff61], sp
    dec bc
    inc c
    ld a, a
    rst $38
    dec bc
    inc c
    ld h, b
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    ret nz

    cp a
    rlca
    rlca
    rst $00
    cp a
    inc bc
    inc bc
    add b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop

jr_0f4_4ca6:
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [c]
    cp $00
    nop
    call z, $c0fc
    ret nz

jr_0f4_4cc2:
    nop
    nop
    jr nz, jr_0f4_4ca6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_4cc2

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_4cdc:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f4_4ce4:
    rst $38
    cp a
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_4cdc

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0f4_4ce4

    db $fc
    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    ld h, b
    and b
    dec c
    cp $e0
    jr nz, @-$01

    cp $a0
    ld h, b
    dec c
    cp $a0
    ld h, b
    rrca
    rst $38
    ret nz

    ret nz

    adc e
    rst $38
    ret nz

    ret nz

    adc a
    ei
    ret nz

    ret nz

    ld l, a
    ei
    ret nz

    ret nz

    add a
    rst $38
    add b
    add b
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_4dcf

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    rrca
    ld [$ff21], sp
    rrca
    ld [$ff7f], sp
    inc c
    dec bc
    ld h, c
    rst $38
    inc c
    dec bc
    ld h, c

jr_0f4_4dcf:
    rst $38
    dec bc
    inc c
    ld h, c
    rst $38
    rlca
    inc b
    ld a, a
    rst $38
    rlca
    inc b
    ld h, b
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    ret nz

    cp a
    rlca
    rlca
    rst $00
    cp a
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld bc, $c001
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_4e26:
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [c]
    cp $00
    nop
    call z, $c0fc
    ret nz

jr_0f4_4e42:
    nop
    nop
    jr nz, jr_0f4_4e26

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_4e42

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_4e5c:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f4_4e64:
    rst $38
    cp a
    add b
    add b

jr_0f4_4e68:
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_4e5c

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0f4_4e64

    db $fc
    rst $38
    jr nz, jr_0f4_4e68

    inc c
    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    ldh [rNR41], a
    db $fc
    rst $38
    jr nz, @-$1e

    rrca
    rst $38
    ret nz

    ret nz

    dec bc
    rst $38
    ret nz

    ret nz

    adc a
    ei
    ret nz

    ret nz

    adc a
    rst $38
    add b
    add b
    ld h, a
    rst $38
    nop
    nop
    add h
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    adc h
    db $fc
    nop
    nop
    ld a, [$00fe]
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    nop
    nop
    db $fd
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    ld [bc], a
    inc bc
    ldh a, [rIE]
    inc b
    rlca
    jr nz, @+$01

    inc b
    rlca
    jr nz, @+$01

    inc b
    rlca
    jr nz, @+$01

    ld [bc], a
    inc bc
    ccf
    rst $38
    inc bc
    ld [bc], a
    ldh a, [$3f]
    inc bc
    ld [bc], a
    add sp, $2f
    inc bc
    ld [bc], a
    ld hl, sp+$3f
    inc bc
    ld [bc], a
    rst $28
    rra
    ld bc, $0401
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr @+$21

    nop
    nop
    dec sp
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0f4_4fdb

    nop
    nop
    jr nz, jr_0f4_4fdf

    nop
    nop
    jr nz, jr_0f4_4fe3

    nop
    nop
    jr nz, jr_0f4_4fe7

    nop
    nop
    jr nz, jr_0f4_4feb

    nop
    nop
    ld h, $3f
    nop
    nop
    rla
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f4_4fdb:
    nop
    nop
    nop
    nop

jr_0f4_4fdf:
    nop
    nop
    nop
    nop

jr_0f4_4fe3:
    nop
    nop
    nop
    nop

jr_0f4_4fe7:
    nop
    nop
    nop
    nop

jr_0f4_4feb:
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    rst $38
    rra
    add b
    add b
    rrca
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    ld b, e
    rst $38
    ldh a, [$f0]
    ld b, e
    rst $38
    ldh a, [$f0]
    ld b, d
    rst $38
    db $10
    ldh a, [rSCY]
    rst $38
    db $10
    ldh a, [rSCY]
    rst $38
    db $10
    ldh a, [$fe]
    rst $38
    db $10
    ldh a, [rLCDC]
    rst $38
    db $10
    ldh a, [rSCX]
    rst $38
    ldh a, [rNR10]
    ld b, l
    db $fd
    ldh a, [rNR10]
    db $fd
    db $fd
    sub b
    ld [hl], b
    dec c
    db $fd
    sub b
    ld [hl], b
    ld b, $ff
    and b
    ld h, b
    add e
    cp $a0
    ld h, b
    add c
    cp $20
    ldh [$61], a
    cp $20
    ldh [$81], a
    cp $20
    ldh [$81], a
    rst $38
    ret nz

    ret nz

    add c
    rst $38
    ret nz

    ret nz

    pop bc
    rst $38
    ret nz

    ret nz

    db $dd
    rst $38
    ret nz

    ret nz

    db $e3
    cp $c0
    ld b, b
    db $e3
    cp $80
    add b
    rst $38
    rst $38
    nop
    nop
    ld [c], a
    cp $00
    nop
    cp $fe
    nop
    nop
    ld [c], a
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
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_50d7

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rst $38
    rst $28
    ld bc, $ff01
    ei
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld bc, $e201
    rst $38
    nop
    nop
    ld [c], a
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [hl+], a

jr_0f4_50d7:
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_5123

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_513f

    nop
    nop
    jr nz, jr_0f4_5143

    nop
    nop
    jr nz, jr_0f4_5147

    nop
    nop
    jr nz, jr_0f4_514b

    nop
    nop
    jr nz, jr_0f4_514f

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_5123:
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f4_5168

    nop
    nop
    jr c, jr_0f4_516c

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc

jr_0f4_513f:
    db $fc
    nop
    nop
    nop

jr_0f4_5143:
    nop
    nop
    nop
    nop

jr_0f4_5147:
    nop
    call z, Call_000_00cc

jr_0f4_514b:
    nop
    ld a, $f2
    nop

jr_0f4_514f:
    nop
    ld e, $f2
    nop
    nop
    ld e, $f2
    nop
    nop
    ld e, $f2
    nop
    nop
    ld [hl-], a
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop

jr_0f4_5168:
    db $fd
    di
    nop
    nop

jr_0f4_516c:
    rst $30
    ld sp, hl
    nop
    nop
    rst $38
    cp a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    ld b, b
    ret nz

    jr c, @+$01

    add b
    add b
    daa
    rst $38
    nop
    nop
    inc h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_51bc:
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

jr_0f4_51d0:
    sbc a
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    inc c
    rrca
    jr nz, jr_0f4_51bc

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0f4_51d0

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    nop
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_5257

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    ei
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $e201
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [hl+], a

jr_0f4_5257:
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_52a3

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_52bf

    nop
    nop
    jr nz, jr_0f4_52c3

    nop
    nop
    jr nz, jr_0f4_52c7

    nop
    nop
    jr nz, jr_0f4_52cb

    nop
    nop
    jr nz, jr_0f4_52cf

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_52a3:
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop

jr_0f4_52ae:
    jr c, jr_0f4_52e8

    nop
    nop
    jr c, jr_0f4_52ec

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc

jr_0f4_52bf:
    db $fc
    nop
    nop
    nop

jr_0f4_52c3:
    nop
    nop
    nop
    nop

jr_0f4_52c7:
    nop
    ret nz

    ret nz

jr_0f4_52ca:
    nop

jr_0f4_52cb:
    nop
    jr nz, jr_0f4_52ae

    nop

jr_0f4_52cf:
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_52ca

    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_52e0:
    ld hl, sp-$08
    nop
    nop

jr_0f4_52e4:
    ld hl, sp-$08
    nop
    nop

jr_0f4_52e8:
    cp $fe
    nop
    nop

jr_0f4_52ec:
    rst $38
    or c
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f4_52e0

    jr c, @+$01

    jr nz, jr_0f4_52e4

    jr nz, @+$01

    ld b, b
    ret nz

    daa
    rst $38
    add b
    add b
    db $fc
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_533c:
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

jr_0f4_5350:
    sbc a
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    inc c
    rrca
    jr nz, jr_0f4_533c

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0f4_5350

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    nop
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_53d7

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    ei
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $6201
    rst $38
    nop
    nop
    rst $38
    cp a
    nop
    nop
    ld h, d
    ld e, a
    nop
    nop
    ld [hl+], a

jr_0f4_53d7:
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_5423

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_543f

    nop
    nop
    jr nz, jr_0f4_5443

    nop
    nop
    jr nz, jr_0f4_5447

    nop
    nop
    jr nz, jr_0f4_544b

    nop
    nop
    jr nz, jr_0f4_544f

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_5423:
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop

jr_0f4_542e:
    jr c, jr_0f4_5468

    nop
    nop
    jr c, jr_0f4_546c

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc

jr_0f4_543f:
    db $fc
    nop
    nop
    nop

jr_0f4_5443:
    nop
    nop
    nop
    nop

jr_0f4_5447:
    nop
    ret nz

    ret nz

jr_0f4_544a:
    nop

jr_0f4_544b:
    nop
    jr nz, jr_0f4_542e

    nop

jr_0f4_544f:
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_544a

    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_5460:
    ld hl, sp-$08
    nop
    nop

jr_0f4_5464:
    ld hl, sp-$08
    nop
    nop

jr_0f4_5468:
    ldh a, [$f0]
    nop
    nop

jr_0f4_546c:
    rst $38
    cp a
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f4_5460

    jr c, @+$01

    jr nz, jr_0f4_5464

    jr nz, @+$01

    jr nz, jr_0f4_5468

    inc hl
    db $fc
    ld b, b
    ret nz

    rst $38
    ld hl, sp+$40
    ret nz

    ld a, [bc]
    db $fd
    add b
    add b
    rrca
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_54bc:
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

jr_0f4_54d0:
    sbc a
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    inc c
    rrca
    jr nz, jr_0f4_54bc

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0f4_54d0

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld bc, $0401
    db $fc
    ld [bc], a
    inc bc
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $08
    rrca
    ld b, $fe
    dec b
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    inc a
    ccf
    ccf
    rst $38
    ccf
    ccf
    ld hl, sp-$01
    ld a, [hl-]
    ccf
    ld [hl], b
    rst $38
    ld a, [hl-]
    ccf
    ld [hl], b
    rst $38
    ld a, [hl+]
    ccf
    ld b, b
    rst $38
    ld a, [hl+]
    ccf
    ld b, b
    rst $38
    rra
    rra
    rst $38
    ld hl, sp+$09
    rrca
    rlca
    ld hl, sp+$05
    rlca
    rlca
    ld hl, sp+$05
    rlca
    inc bc
    db $fc
    inc bc
    inc bc
    ld bc, $03fe
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    nop
    rst $38
    inc b
    rlca
    ld b, b
    rst $38
    inc b
    rlca
    ld b, b
    rst $38
    dec b
    rlca
    cp b
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $1001
    rst $38
    ld bc, $1001
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0501
    db $fd
    nop
    nop
    add sp, -$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    ld bc, $fc01
    db $fc
    ld bc, $fe01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f4_55da:
    nop
    nop
    nop
    nop

jr_0f4_55de:
    nop
    nop
    nop
    nop

jr_0f4_55e2:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0f4_55da

    nop
    nop
    jr nz, jr_0f4_55de

    nop
    nop
    jr nz, jr_0f4_55e2

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]

jr_0f4_561e:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

jr_0f4_5636:
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f4_561e

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nc, jr_0f4_5636

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld bc, $0401
    db $fc
    ld [bc], a
    inc bc
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $08
    rrca
    ld b, $fe
    dec b
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    inc a
    ccf
    ccf
    rst $38
    ccf
    ccf
    ld hl, sp-$01
    ld a, [hl-]
    ccf
    ld [hl], b
    rst $38
    ld a, [hl-]
    ccf
    ld [hl], b
    rst $38
    ld a, [hl+]
    ccf
    ld b, b
    rst $38
    ld a, [hl+]
    ccf
    ld b, b
    rst $38
    rra
    rra
    rst $38
    ld hl, sp+$0d
    rrca
    rlca
    ld hl, sp+$05
    rlca
    rlca
    ld hl, sp+$05
    rlca
    inc bc
    db $fc
    dec b
    rlca
    ld bc, $07fe
    rlca
    cp $ff
    inc b
    rlca
    ld bc, $08ff
    rrca
    nop
    rst $38
    ld [$400f], sp
    rst $38
    ld [$400f], sp
    rst $38
    dec bc
    rrca
    cp b
    rst $38
    inc b
    rlca
    jr nz, @+$01

    inc b
    rlca
    jr nz, @+$01

    ld [bc], a
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    ld bc, $1701
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    adc b
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0801
    rst $38
    ld [bc], a
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$01ff], sp
    ld bc, $ff08
    ld bc, $ec01
    rst $38
    ld bc, $f701
    rst $30
    ld bc, $e301
    db $e3
    ld bc, $e301
    db $e3
    ld bc, $f301
    di
    ld bc, $ff01
    rst $38
    ld bc, $ff01
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

jr_0f4_5752:
    nop
    nop
    nop
    nop

jr_0f4_5756:
    nop
    nop
    nop
    nop

jr_0f4_575a:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0f4_5752

    nop
    nop
    jr nz, jr_0f4_5756

    nop
    nop
    jr nz, jr_0f4_575a

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ret nz

jr_0f4_57a6:
    nop
    nop
    add b
    add b

jr_0f4_57aa:
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f4_57a6

jr_0f4_57c6:
    nop
    nop
    jr nz, jr_0f4_57aa

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0f4_57c6

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    ei
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    cp a
    ld a, a
    ld bc, $6201
    sbc a
    nop
    nop
    jp nz, Jump_000_00ff

    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_58a3

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_58bf

    nop
    nop
    jr nz, jr_0f4_58c3

    nop
    nop
    jr nz, jr_0f4_58c7

    nop
    nop
    jr nz, jr_0f4_58cb

    nop
    nop
    jr nz, jr_0f4_58cf

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_58a3:
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop

jr_0f4_58ae:
    jr c, jr_0f4_58e8

    nop
    nop
    jr c, jr_0f4_58ec

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc

jr_0f4_58bf:
    db $fc
    nop
    nop
    nop

jr_0f4_58c3:
    nop
    nop
    nop
    nop

jr_0f4_58c7:
    nop
    ret nz

    ret nz

jr_0f4_58ca:
    nop

jr_0f4_58cb:
    nop
    jr nz, jr_0f4_58ae

    nop

jr_0f4_58cf:
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_58ca

    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_58e0:
    ld hl, sp-$08
    nop
    nop

jr_0f4_58e4:
    ld hl, sp-$08
    nop
    nop

jr_0f4_58e8:
    ldh a, [$f0]
    nop
    nop

jr_0f4_58ec:
    rst $38
    cp a
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f4_58e0

    jr c, @+$01

    jr nz, jr_0f4_58e4

    jr nz, @+$01

    jr nz, jr_0f4_58e8

    inc hl
    db $fc
    ret nz

    ld b, b
    ei
    db $fc
    ret nz

    ld b, b
    dec c
    cp $c0
    ld b, b
    dec c
    cp $c0
    ld b, b
    dec c
    cp $c0
    ld b, b
    db $fd
    cp $40
    ret nz

    ld [$80ff], sp
    add b
    rlca
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_593c:
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

jr_0f4_5950:
    sbc a
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    inc c
    rrca
    jr nz, jr_0f4_593c

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0f4_5950

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    nop
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    ei
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    cp a
    ld a, a
    ld bc, $6201
    sbc a
    nop
    nop
    jp nz, Jump_000_00ff

    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_5a23

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_5a3f

    nop
    nop
    jr nz, jr_0f4_5a43

    nop
    nop
    jr nz, jr_0f4_5a47

    nop
    nop
    jr nz, jr_0f4_5a4b

    nop
    nop
    jr nz, jr_0f4_5a4f

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_5a23:
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop

jr_0f4_5a2e:
    jr c, jr_0f4_5a68

    nop
    nop
    jr c, jr_0f4_5a6c

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc

jr_0f4_5a3f:
    db $fc
    nop
    nop
    nop

jr_0f4_5a43:
    nop
    nop
    nop
    nop

jr_0f4_5a47:
    nop
    ret nz

    ret nz

jr_0f4_5a4a:
    nop

jr_0f4_5a4b:
    nop
    jr nz, jr_0f4_5a2e

    nop

jr_0f4_5a4f:
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_5a4a

    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_5a60:
    ld hl, sp-$08
    nop
    nop

jr_0f4_5a64:
    ld hl, sp-$08
    nop
    nop

jr_0f4_5a68:
    ldh a, [$f0]
    nop
    nop

jr_0f4_5a6c:
    rst $38
    cp a
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f4_5a60

    jr c, @+$01

    jr nz, jr_0f4_5a64

    jr nz, @+$01

    jr nz, jr_0f4_5a68

    inc hl
    db $fc
    ret nz

    ld b, b
    ei
    db $fc
    ret nz

    ld b, b
    dec c
    cp $c0
    ld b, b
    dec c
    cp $c0
    ld b, b
    dec c
    cp $c0
    ld b, b
    db $fd
    cp $40
    ret nz

    ld [$80ff], sp
    add b
    rlca
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_5abc:
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

jr_0f4_5ad0:
    sbc a
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    inc c
    rrca
    jr nz, jr_0f4_5abc

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0f4_5ad0

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc c
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    ld hl, $003f
    nop
    daa
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, a
    ld a, h
    ld bc, $f101
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    db $f4
    rst $38
    rlca
    rlca
    add h
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc b
    rlca
    add a
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld bc, $8201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_5ba3

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_5bbf

    nop
    nop
    jr nz, jr_0f4_5bc3

    nop
    nop
    jr nz, jr_0f4_5bc7

    nop
    nop
    jr nz, jr_0f4_5bcb

    nop
    nop
    jr nz, jr_0f4_5bcf

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_5ba3:
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f4_5be8

    nop
    nop
    jr c, jr_0f4_5bec

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc

jr_0f4_5bbf:
    db $fc
    nop
    nop
    nop

jr_0f4_5bc3:
    nop
    nop
    nop
    nop

jr_0f4_5bc7:
    nop
    nop
    nop
    nop

jr_0f4_5bcb:
    nop
    ldh [$e0], a
    nop

jr_0f4_5bcf:
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
    nop
    nop

jr_0f4_5be8:
    rst $38
    rst $38
    nop
    nop

jr_0f4_5bec:
    ld sp, hl
    rst $38
    add b
    add b
    ld [hl], b
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    rst $38
    ld hl, sp-$80
    add b
    rlca
    cp $80
    add b
    rlca
    cp $80
    add b
    ld b, $ff
    add b
    add b
    ld c, $ff
    add b
    add b
    inc c
    rst $38
    add b
    add b
    dec c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_5c3c:
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

jr_0f4_5c50:
    sbc a
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    inc c
    rrca
    jr nz, jr_0f4_5c3c

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0f4_5c50

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    ei
    rlca
    rlca
    ei
    db $fc
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld b, $05
    ld hl, $07ff
    inc b
    rst $38
    ld a, a
    dec bc
    inc c
    pop hl
    ld a, a
    rrca
    ld [$bfa1], sp
    add hl, bc
    ld c, $a1
    cp a
    rrca
    ld [$bfbf], sp
    rrca
    ld [$bfa0], sp
    rrca
    ld [$bfa0], sp
    rrca
    rrca
    or b
    cp a
    rrca
    rrca
    add sp, -$01
    rrca
    rrca
    ld b, a
    rst $38
    rrca
    ld c, $c1
    ld a, a
    ld a, [bc]
    dec c
    pop hl
    rst $38
    rlca
    rlca
    ld a, [hl-]
    cp $01
    ld bc, $fe26
    inc bc
    inc bc
    ld [c], a
    cp $02
    inc bc
    ld h, [hl]
    cp $07
    rlca
    add $fe
    inc b
    rlca
    adc $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f4_5d5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

jr_0f4_5d76:
    nop
    nop
    jr nz, jr_0f4_5d5a

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_5d76

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_5d90:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    cp a
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f4_5d90

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    ret nz

    ld b, b
    rst $38
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    and b
    ld h, b
    dec bc
    ld a, [$20e0]
    dec bc
    ld a, [$e020]
    ei
    ld a, [$20e0]
    dec bc
    ld a, [$20e0]
    dec bc
    ld a, [$20e0]
    dec de
    ei
    ldh [$e0], a
    cpl
    rst $38
    ldh [$e0], a
    push bc
    rst $38
    ldh [$e0], a
    rlca
    db $fc
    ldh [$e0], a
    ld c, $ff
    and b
    ld h, b
    cp c
    rst $38
    ret nz

    ret nz

    ret


    rst $38
    nop
    nop
    adc a
    rst $38
    add b
    add b
    call z, $80ff
    add b
    rst $08
    rst $38
    ret nz

    ret nz

    and $ff
    ld b, b
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
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    cpl
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    db $fd
    cp $01
    ld bc, $ffff
    ld bc, $ff01
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $7101
    rst $38
    ld bc, $3101
    rst $38
    ld bc, $3101
    rst $38
    nop
    nop
    rst $38
    sbc a
    nop
    nop
    ld [hl], c
    ld c, a
    nop
    nop
    ld sp, $003f
    nop
    ld de, $001f
    nop
    rra
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld l, $3f
    nop
    nop
    jr nz, jr_0f4_5eb7

    nop
    nop
    jr nz, jr_0f4_5ebb

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    jr nz, jr_0f4_5edb

    nop
    nop
    jr nz, jr_0f4_5edf

    nop
    nop
    jr nz, jr_0f4_5ee3

    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a

jr_0f4_5eb7:
    inc a
    nop
    nop
    ld a, [hl]

jr_0f4_5ebb:
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp

jr_0f4_5edb:
    nop
    ld [$00f8], sp

jr_0f4_5edf:
    nop
    ld hl, sp-$08
    nop

jr_0f4_5ee3:
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0f4_5eec:
    rst $38
    rst $38
    add b
    add b
    rst $18
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a

jr_0f4_5ef8:
    cp $ff
    jr nc, jr_0f4_5eec

    ld a, $ff
    db $10
    ldh a, [rNR32]
    rst $38
    db $10
    ldh a, [rNR10]
    rst $38
    db $10
    ldh a, [rNR10]
    rst $38
    and b
    ld h, b
    rst $38
    db $fc
    and b
    ld h, b
    inc bc
    db $fc
    and b
    ld h, b
    rlca
    db $fc
    jr nz, jr_0f4_5ef8

    ld b, $ff
    ld b, b
    ret nz

    db $fd
    db $fd
    add b
    add b
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop

jr_0f4_5f2c:
    ld bc, $00ff
    nop

jr_0f4_5f30:
    add c
    rst $38
    nop
    nop
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld d, b
    rst $18
    ld b, b
    ret nz

    ld d, b
    rst $18
    jr nz, jr_0f4_5f2c

    ld c, b
    rst $08
    jr nz, jr_0f4_5f30

    rst $08
    rst $08
    and b
    ldh [$cf], a
    rst $08
    ldh [$e0], a
    add [hl]
    add a
    db $10
    ldh a, [$84]
    add a
    db $10
    ldh a, [$84]
    add a
    ld [$02f8], sp
    inc bc
    ld [$02f8], sp
    inc bc
    ld [$01f8], sp
    ld bc, $f090
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_5fd7

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    ei
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $6201
    rst $38
    nop
    nop
    ld [c], a
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_5fd7:
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_6023

    nop
    nop
    jr nz, jr_0f4_6027

    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add [hl]
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, e

jr_0f4_6023:
    ld a, a
    nop
    nop
    inc a

jr_0f4_6027:
    inc a
    nop
    nop
    inc e
    inc e
    nop
    nop

jr_0f4_602e:
    jr jr_0f4_6048

    nop
    nop
    jr c, jr_0f4_606c

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
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

jr_0f4_6048:
    ret nz

    ret nz

jr_0f4_604a:
    nop
    nop
    jr nz, jr_0f4_602e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_604a

    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_6060:
    ld hl, sp-$08
    nop
    nop

jr_0f4_6064:
    ld hl, sp-$08
    nop
    nop

jr_0f4_6068:
    ldh a, [$f0]
    nop
    nop

jr_0f4_606c:
    rst $38
    cp a
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f4_6060

    jr c, @+$01

    jr nz, jr_0f4_6064

    jr nz, @+$01

    jr nz, jr_0f4_6068

    jr nz, @+$01

    jr nz, jr_0f4_606c

    dec h
    cp $e0
    jr nz, @-$01

    ld a, [$20e0]
    dec b
    ld a, [$20e0]
    ld bc, $a0fe
    ld h, b
    cp $ff
    ld b, b
    ret nz

    add hl, bc
    ld sp, hl
    add b
    add b
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_614f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    ei
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $6201
    rst $38
    nop
    nop
    ld [c], a
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_614f:
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f4_619b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    adc [hl]
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $fb01
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301

jr_0f4_619b:
    rst $38
    nop
    nop
    add l
    db $fd
    nop
    nop
    add l
    db $fd
    nop
    nop

jr_0f4_61a6:
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0f4_61e4

    nop
    nop
    jr c, jr_0f4_61e8

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    ret nz

    ret nz

jr_0f4_61c2:
    nop
    nop
    jr nz, jr_0f4_61a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f4_61c2

    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f4_61d8:
    ld hl, sp-$08
    nop
    nop

jr_0f4_61dc:
    ld hl, sp-$08
    nop
    nop

jr_0f4_61e0:
    ldh a, [$f0]
    nop
    nop

jr_0f4_61e4:
    rst $38
    cp a
    nop
    nop

jr_0f4_61e8:
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f4_61d8

    jr c, @+$01

    jr nz, jr_0f4_61dc

    jr nz, @+$01

    jr nz, jr_0f4_61e0

    jr nz, @+$01

    jr nz, jr_0f4_61e4

    dec h
    cp $e0
    jr nz, @-$01

    ld a, [$20e0]
    dec b
    ld a, [$20e0]
    ld bc, $a0fe
    ld h, b
    cp $ff
    ld b, b
    ret nz

    add hl, bc
    ld sp, hl
    add b
    add b
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, @+$3a

    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr @+$21

    nop
    nop
    ccf
    ccf
    ld bc, $fb01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    ld sp, hl
    rst $38
    rlca
    rlca
    pop hl
    rst $38
    dec b
    rlca
    pop hl
    rst $38
    inc b
    rlca
    ld hl, $03ff
    ld [bc], a
    rst $38
    ccf
    inc bc
    ld [bc], a
    pop bc
    ccf
    inc bc
    ld [bc], a
    pop hl
    ccf
    ld [bc], a
    inc bc
    ld hl, $02ff
    inc bc
    ccf
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld [bc], a
    inc bc
    jr nz, @+$01

    inc bc
    inc bc
    ret nz

    rst $38
    dec b
    rlca
    pop bc
    rst $38
    rlca
    dec b
    pop bc
    rst $38
    dec b
    rlca
    pop bc
    rst $38
    inc bc
    ld [bc], a
    ld c, $ff
    ld bc, $8101
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $fb01
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    nop
    nop
    add l
    db $fd
    nop
    nop
    add l
    db $fd
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0f4_6364

    nop
    nop
    jr c, jr_0f4_6368

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    add b
    add b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop

jr_0f4_6354:
    ld [$00f8], sp
    nop
    inc d
    db $fc
    nop
    nop
    dec hl
    rst $30
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

jr_0f4_6364:
    cp a
    rst $38
    ldh [$e0], a

jr_0f4_6368:
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    and b
    ldh [$3e], a
    rst $38
    jr nz, jr_0f4_6354

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0f4_6426

    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f4_6426:
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    inc hl
    ccf
    ld [hl], c
    ld [hl], c
    rst $20
    rst $38
    res 7, e
    rst $38
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    cp $fd
    ld a, a
    rst $38
    sub a
    ld hl, sp+$7f
    rst $38
    db $f4
    ei
    ld a, b
    rst $38
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    rrca
    rrca
    ret nz

    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    add d
    rst $38
    nop
    nop
    adc l
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld b, h
    ld a, h
    nop
    nop
    jr c, jr_0f4_64e4

    nop
    nop
    jr c, jr_0f4_64e8

    nop
    nop
    jr c, jr_0f4_64ec

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
    nop
    nop
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

jr_0f4_64ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f4_64e4:
    ret nz

    ret nz

    nop
    nop

jr_0f4_64e8:
    jr nz, jr_0f4_64ca

    nop
    nop

jr_0f4_64ec:
    db $10
    ldh a, [rP1]
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    cp a
    rst $38
    ret nz

    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    sbc h
    rst $38
    ld b, b
    ret nz

    call z, Call_0f4_40ff
    ret nz

    jr c, @+$01

    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld b, $fd
    ld b, b
    ret nz

    rrca
    db $fc
    ld b, b
    ret nz

    rst $38
    db $fc
    ld b, b
    ret nz

    dec c
    cp $c0
    ld b, b
    inc c
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ld b, b
    ret nz

    jp $c0ff


    ret nz

    ld bc, $80fe
    add b
    add c
    cp $80
    add b
    ld a, a
    ld a, [hl]
    add b
    add b
    add c
    cp $80
    add b
    ld bc, $80fe
    add b
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_65d3

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    cp $01
    ld bc, $ffff
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    ld [bc], a
    inc bc
    ldh a, [rIE]
    ld [bc], a
    inc bc
    rra
    rst $38
    ld bc, $e001
    rra
    ld bc, $f001
    rra
    ld bc, $1001
    rst $38
    ld bc, $1f01

jr_0f4_65d3:
    rst $38
    ld bc, $1001
    rst $38
    ld bc, $1001
    rst $38
    ld bc, $e001
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    inc bc
    ld [bc], a
    ldh [rIE], a
    ld [bc], a
    inc bc
    ldh [rIE], a
    ld bc, $8701
    ld a, a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add e
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop

jr_0f4_6654:
    db $fc
    db $fc
    nop
    nop

jr_0f4_6658:
    db $fc
    db $fc
    nop
    nop

jr_0f4_665c:
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $38
    rst $18
    add b
    add b
    rst $18
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    sbc a
    rst $38
    jr nz, jr_0f4_6654

    adc [hl]
    rst $38
    jr nz, jr_0f4_6658

    add h
    rst $38
    jr nz, jr_0f4_665c

    add h
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld [hl], d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    add b
    add b
    rra
    rra
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_68df

    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $ff01
    ccf
    nop
    nop
    ld [c], a
    sbc a
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf

jr_0f4_68df:
    ccf
    nop
    nop
    jr nz, jr_0f4_6923

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_693f

    nop
    nop
    jr nz, jr_0f4_6943

    nop
    nop
    jr nz, jr_0f4_6947

    nop
    nop
    jr nz, jr_0f4_694b

    nop
    nop
    jr nz, jr_0f4_694f

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f4_6923:
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f4_6968

    nop
    nop
    jr c, jr_0f4_696c

    nop
    nop

jr_0f4_6936:
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc

jr_0f4_693f:
    db $fc
    nop
    nop
    nop

jr_0f4_6943:
    nop
    nop
    nop
    nop

jr_0f4_6947:
    nop
    nop
    nop
    nop

jr_0f4_694b:
    nop
    nop
    nop
    nop

jr_0f4_694f:
    nop
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f4_6936

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop

jr_0f4_6960:
    ldh a, [$f0]
    nop
    nop

jr_0f4_6964:
    ldh a, [$f0]
    nop
    nop

jr_0f4_6968:
    ld hl, sp-$08
    nop
    nop

jr_0f4_696c:
    rst $38
    rst $38
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f4_6960

    jr c, @+$01

    jr nz, jr_0f4_6964

    jr nz, @+$01

    jr nz, jr_0f4_6968

    ld hl, $40fe
    ret nz

    rst $38
    ld hl, sp+$40
    ret nz

    rlca
    ld hl, sp+$40
    ret nz

    ld c, $f9
    ld b, b
    ret nz

    inc c
    rst $38
    add b
    add b
    ei
    ei
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop

jr_0f4_69bc:
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

jr_0f4_69d0:
    sbc a
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    inc c
    rrca
    jr nz, jr_0f4_69bc

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0f4_69d0

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    add b
    add b
    rlca
    dec b
    ret nz

    ld b, b
    dec b
    rlca
    ld b, b
    ret nz

    rlca
    rlca
    pop bc
    pop bc
    rlca
    dec b
    adc $cf
    rlca
    dec b
    ld [hl], b
    cp a
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ld d, b
    rst $18
    rlca
    inc b
    ld c, b
    rst $08
    rlca
    inc b
    ld c, a
    rst $08
    rlca
    inc b
    ld a, a
    rst $38
    rlca
    dec b
    db $fd
    cp $07
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    ld bc, $9001
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_6aa7

    nop
    nop
    jr nz, jr_0f4_6aab

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a

jr_0f4_6aa7:
    ld a, $00
    nop
    inc e

jr_0f4_6aab:
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and b
    ld bc, $f001
    ld d, b
    ld bc, $5001
    ldh a, [$f1]
    pop af
    ldh a, [$f0]
    add hl, bc
    ld sp, hl
    ldh a, [$d0]
    rlca
    cp $70
    ret nc

    dec b
    db $fd
    ldh a, [$f0]
    add hl, bc
    ld sp, hl
    ld [hl], b
    ldh a, [rNR24]
    ld sp, hl
    ld [hl], b
    sub b

jr_0f4_6ae8:
    ld sp, hl
    ld sp, hl
    ld [hl], b
    sub b
    rst $38
    rst $38
    ld [hl], b
    sub b
    rst $18
    ccf
    ldh a, [$d0]
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    sbc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    jr nz, jr_0f4_6ae8

    add h
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    ld h, c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_6d57

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld [bc], a
    inc bc
    jr nc, @+$01

    inc b
    rlca
    db $10
    rst $38
    dec b
    ld b, $b0
    ld a, a
    dec b
    ld b, $9f
    ld a, a
    dec b
    ld b, $a0
    ld e, a
    dec b
    ld b, $a0
    ld e, a
    inc b
    rlca
    db $10
    rst $38
    ld [bc], a
    inc bc
    ccf

jr_0f4_6d57:
    rst $38
    ld bc, $d001
    rst $18
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f4_6da3

    nop
    nop
    jr nz, jr_0f4_6da7

    nop
    nop
    cpl
    ccf
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    and d
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    push bc
    rst $38
    nop
    nop
    push bc
    rst $38
    nop
    nop
    jp z, Jump_000_00fe

    nop
    ld a, h
    ld a, h
    nop
    nop
    jr nc, jr_0f4_6dd0

    nop
    nop
    nop

jr_0f4_6da3:
    nop
    nop
    nop
    nop

jr_0f4_6da7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop

jr_0f4_6dd0:
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop

jr_0f4_6dd8:
    db $fc
    db $fc
    nop
    nop

jr_0f4_6ddc:
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a

jr_0f4_6df0:
    cp a
    rst $38
    and b
    ldh [$9e], a
    rst $38
    jr nz, jr_0f4_6dd8

jr_0f4_6df8:
    add h
    rst $38
    jr nz, jr_0f4_6ddc

    add [hl]
    rst $38
    ldh a, [rNR10]
    add [hl]
    rst $38
    ldh a, [rNR10]
    cp $ff
    db $10
    ldh a, [$86]
    rst $38
    db $10
    ldh a, [$86]
    rst $38
    jr nz, jr_0f4_6df0

    add a
    cp $e0

jr_0f4_6e13:
    jr nz, jr_0f4_6e13

    rst $38
    jr nz, jr_0f4_6df8

    dec b
    rst $38
    ldh [$e0], a
    inc bc
    db $fd
    ldh [$e0], a
    add e
    db $fd
    ldh [$e0], a
    add e
    cp $40
    ret nz

    ld h, e
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_6ed3

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    db $fc

jr_0f4_6eaf:
    rst $38
    dec b
    rlca
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    inc b
    rlca
    db $10
    rst $38
    dec b
    ld b, $f0
    ccf
    dec b
    ld b, $bf
    ld a, a
    dec b
    ld b, $a0
    ld a, a
    ld [bc], a
    inc bc
    add b
    ld a, a
    ld [bc], a
    inc bc
    jr nz, jr_0f4_6eaf

    ld [bc], a
    inc bc
    rra

jr_0f4_6ed3:
    rst $38
    ld bc, $3001
    rst $38
    nop
    nop
    ret nc

    rst $18
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    daa
    ccf
    nop
    nop
    jr nz, jr_0f4_6f2b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    add d

jr_0f4_6f2b:
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a

jr_0f4_6f64:
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    sbc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [$87]
    db $fc
    ldh [rNR41], a
    add l

jr_0f4_6f7d:
    cp $e0
    jr nz, jr_0f4_6f7d

    rst $38
    jr nz, jr_0f4_6f64

    add h
    rst $38
    ld b, b
    ret nz

    add a
    db $fc
    ret nz

    ld b, b
    add a
    db $fc
    ret nz

    ld b, b
    db $fc
    rst $38
    ld b, b
    ret nz

    dec b
    rst $38
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    add a
    ei
    ret nz

    ret nz

    add d
    db $fd
    add b
    add b
    ld h, e
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    dec b
    ld b, $d0
    ccf
    dec b
    ld b, $df
    ccf
    inc b
    rlca
    jr nc, @+$01

    inc b
    rlca
    jr nc, @+$01

    inc b
    rlca
    jr nc, @+$01

    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld [hl], b
    rst $18
    inc bc
    inc bc
    ldh a, [$df]
    ld bc, $7001
    cp a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    jr nz, jr_0f4_70ab

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c

jr_0f4_708b:
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]

jr_0f4_70ab:
    ld a, [hl]
    nop
    nop
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0f4_70dc:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    sbc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$86]
    rst $38
    jr nz, jr_0f4_70dc

    add l
    cp $d0
    jr nc, @-$01

    cp $d0
    jr nc, jr_0f4_708b

    rst $38
    db $10
    ldh a, [$86]
    rst $38
    db $10
    ldh a, [$86]
    rst $38
    db $10
    ldh a, [$fc]
    rst $38
    jr nz, @-$1e

    rlca
    db $fd
    jr nz, @-$1e

    rlca
    db $fd
    ldh [$e0], a
    add a
    cp $40
    ret nz

    add e
    rst $38
    add b
    add b
    ld [hl], d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    adc [hl]
    cp $00
    nop
    ld b, a
    ld a, a
    nop
    nop
    inc hl
    ccf
    add b
    add b
    ld de, $801f
    add b
    ld c, $0e
    nop
    nop
    nop
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
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_71d3

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    inc b
    rlca
    db $10
    rst $38
    rlca
    inc b
    or b
    ld a, a
    rlca
    inc b
    ldh a, [$3f]
    ld [bc], a
    inc bc
    ccf
    rst $38
    ld [bc], a
    inc bc
    jr nc, @+$01

    inc bc
    ld [bc], a
    ldh a, [$3f]
    inc bc
    ld [bc], a
    ldh a, [$3f]
    ld [bc], a
    inc bc
    ccf

jr_0f4_71d3:
    rst $38
    inc bc
    inc bc
    or b
    rst $38
    inc bc
    inc bc
    ldh a, [$df]
    inc bc
    inc bc
    ldh [$df], a
    ld bc, $6001
    cp a
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f4_7253

    nop
    nop
    jr nz, jr_0f4_7257

    nop
    nop
    jr nz, jr_0f4_725b

    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop

jr_0f4_7253:
    nop
    db $fc
    db $fc
    nop

jr_0f4_7257:
    nop
    db $fc
    db $fc
    nop

jr_0f4_725b:
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    sbc a
    rst $38
    ldh a, [$f0]

jr_0f4_7270:
    sbc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [$87]
    cp $e0

jr_0f4_727f:
    jr nz, jr_0f4_727f

    rst $38
    ldh [rNR41], a
    add d
    rst $38
    ldh [rNR41], a
    add b
    rst $38
    and b
    ld h, b
    add d
    db $fd
    jr nz, jr_0f4_7270

    db $fc
    rst $38
    jr nz, @-$1e

    ld b, $ff
    ld b, b
    ret nz

    dec b
    db $fd
    add b
    add b
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld a, d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    db $dd
    rst $38
    nop
    nop
    cp [hl]
    cp [hl]
    nop
    nop
    add $fe
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    inc hl
    ccf
    nop
    nop
    ld de, $001f
    nop
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_7357

    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    inc a
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    rlca
    inc b
    or b
    ld a, a
    rlca
    inc b
    or b
    ld a, a
    inc b
    rlca
    ccf
    rst $38
    inc b
    rlca
    jr nc, @+$01

    ld [bc], a
    inc bc
    jr nc, @+$01

    inc bc
    ld [bc], a
    ldh a, [$3f]
    ld [bc], a
    inc bc
    ccf

jr_0f4_7357:
    rst $38
    inc bc
    inc bc
    ret nc

    rst $38
    inc bc
    inc bc
    ldh [$df], a
    inc bc
    inc bc
    ldh [$df], a
    ld bc, $6001
    cp a
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b

jr_0f4_738f:
    ld a, a
    nop

jr_0f4_7391:
    nop
    ld b, b

jr_0f4_7393:
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0f4_73dc:
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    cp a
    rst $38
    ldh [$e0], a
    sbc a
    rst $38
    and b
    ldh [$86], a
    rst $38
    jr nz, jr_0f4_73dc

    add h
    rst $38
    db $10
    ldh a, [$86]
    rst $38
    ret nc

jr_0f4_7403:
    jr nc, jr_0f4_7403

    rst $38
    ret nc

    jr nc, jr_0f4_738f

    ld sp, hl
    ret nc

    jr nc, jr_0f4_7393

    ld sp, hl
    ret nc

    jr nc, jr_0f4_7391

    rst $38
    db $10
    ldh a, [$fe]
    rst $38
    jr nz, @-$1e

    dec b
    db $fd
    ret nz

    ret nz

    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld a, d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    and d
    rst $38
    add b
    add b
    pop hl
    rst $38
    add b
    add b
    pop de
    rst $38
    add b
    add b
    pop de
    rst $38
    add b
    add b
    xor c
    cp a
    add b
    add b
    sbc a
    sbc a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_74d3

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    inc b
    rlca
    db $10
    rst $38
    inc bc
    ld [bc], a
    ldh a, [$1f]
    inc bc
    ld [bc], a
    ret nc

    ccf
    ld [bc], a
    inc bc
    rra
    rst $38
    ld bc, $1001
    rst $38
    ld bc, $f001
    rra
    ld bc, $f001
    rra
    ld bc, $1f01

jr_0f4_74d3:
    rst $38
    ld bc, $d001
    rst $38
    ld bc, $f001
    rst $28
    ld bc, $f001
    rst $28
    nop
    nop
    and b
    rst $18
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    jr nz, jr_0f4_752b

    nop
    nop
    jr nz, jr_0f4_752f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc e

jr_0f4_752b:
    inc e
    nop
    nop
    inc e

jr_0f4_752f:
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    sbc a
    rst $38
    ldh a, [$f0]

jr_0f4_7570:
    sbc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [$87]
    cp $e0

jr_0f4_757f:
    jr nz, jr_0f4_757f

    rst $38
    ldh [rNR41], a
    add d
    rst $38
    ldh [rNR41], a
    add b
    rst $38
    and b
    ld h, b
    add d
    db $fd
    jr nz, jr_0f4_7570

    db $fc
    rst $38
    jr nz, @-$1e

    ld b, $ff
    ld b, b
    ret nz

    dec b
    db $fd
    add b
    add b
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld [hl], d
    cp $00
    nop
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and c
    cp a
    nop
    nop
    sbc [hl]
    sbc [hl]
    nop
    nop
    sbc [hl]
    sbc [hl]
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    jr nz, jr_0f4_7629

    add b
    add b
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca

jr_0f4_7629:
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    dec b
    ld b, $d0
    ccf
    dec b
    ld b, $df
    ccf
    inc b
    rlca
    jr nc, @+$01

    inc b
    rlca
    jr nc, @+$01

    inc b
    rlca
    jr nc, @+$01

    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld [hl], b
    rst $18
    inc bc
    inc bc
    ldh a, [$df]
    ld bc, $7001
    cp a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    daa
    ccf
    nop
    nop
    jr nz, jr_0f4_76ab

    nop
    nop
    jr nz, jr_0f4_76af

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b

jr_0f4_768b:
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    rra
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    jr c, @+$41

    nop
    nop
    ld [hl], c

jr_0f4_76ab:
    ld a, a
    nop
    nop
    ld [c], a

jr_0f4_76af:
    cp $00
    nop
    call nz, Call_000_00fc
    nop
    jr c, jr_0f4_76f0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0f4_76dc:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]

jr_0f4_76f0:
    sbc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$86]
    rst $38
    jr nz, jr_0f4_76dc

    add l
    cp $d0
    jr nc, @-$01

    cp $d0
    jr nc, jr_0f4_768b

    rst $38
    db $10
    ldh a, [$86]
    rst $38
    db $10
    ldh a, [$86]
    rst $38
    db $10
    ldh a, [$fc]
    rst $38
    jr nz, @-$1e

    rlca
    db $fd
    jr nz, @-$1e

    rlca
    db $fd
    ldh [$e0], a
    add a
    cp $40
    ret nz

    add e
    rst $38
    add b
    add b
    ld h, d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    pop bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and c
    cp a
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    sbc a
    sbc a
    add b
    add b
    cp a
    cp a
    add b
    add b
    ccf
    ccf
    nop
    nop
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f4_77d3

    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    db $fc

jr_0f4_77af:
    rst $38
    dec b
    rlca
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    inc b
    rlca
    db $10
    rst $38
    inc bc
    ld [bc], a
    ldh a, [$3f]
    inc bc
    ld [bc], a
    cp a
    ld a, a
    inc bc
    ld [bc], a
    and b
    ld a, a
    ld [bc], a
    inc bc
    add b
    ld a, a
    ld [bc], a
    inc bc
    jr nz, jr_0f4_77af

    ld [bc], a
    inc bc
    rra

jr_0f4_77d3:
    rst $38
    ld bc, $3001
    rst $38
    nop
    nop
    ret nc

    rst $18
    nop
    nop
    jr nz, jr_0f4_781f

    nop
    nop
    jr nz, jr_0f4_7823

    nop
    nop
    cpl
    ccf
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld a, $3e

jr_0f4_7814:
    nop
    nop
    ld sp, $003f
    nop
    ld hl, $003f
    nop
    ld h, d

jr_0f4_781f:
    ld a, [hl]
    nop
    nop
    ld b, h

jr_0f4_7823:
    ld a, h
    nop
    nop
    jr c, jr_0f4_7860

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

jr_0f4_7860:
    rst $38
    rst $38
    ldh [$e0], a

jr_0f4_7864:
    rst $38
    rst $38
    ldh a, [$f0]

jr_0f4_7868:
    rst $38
    rst $38
    ldh a, [$f0]
    sbc a
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [$86]
    rst $38
    ldh a, [rNR10]
    add a
    cp $f0
    db $10
    cp $ff
    jr nz, jr_0f4_7864

    add [hl]
    rst $38
    jr nz, jr_0f4_7868

    add a
    cp $e0
    jr nz, jr_0f4_7814

    cp $e0

jr_0f4_788f:
    jr nz, jr_0f4_788f

    rst $38
    jr nz, @-$1e

    ld b, $ff
    ldh [$e0], a
    rlca
    db $fd
    ldh [$e0], a
    add e
    db $fd
    ldh [$e0], a
    add e
    cp $40
    ret nz

    ld [hl], e
    rst $38
    add b
    add b
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, $3e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
