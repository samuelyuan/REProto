SECTION "ROM Bank $0dc", ROMX[$4000], BANK[$dc]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0dc_4060

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp [hl]
    rst $38
    inc bc
    inc bc
    pop bc
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ret nz

    rst $38

jr_0dc_4060:
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ld hl, sp-$01
    inc bc
    inc bc
    add b
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0dc_411e

    nop
    nop
    cp $fe
    nop
    nop
    ld a, l
    rst $38
    nop
    nop
    add e
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38

jr_0dc_411e:
    ldh a, [$f0]
    rrca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    ldh [$e0], a
    ld bc, $c0ff
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, a
    ld a, a
    rlca
    rlca
    ldh [rIE], a
    add hl, de
    rra
    db $fc
    rst $38
    dec sp
    daa
    ldh a, [rIE]
    dec sp
    daa
    ldh [rIE], a
    dec sp
    daa
    ldh [rIE], a
    dec de
    rra
    ldh a, [rIE]
    rlca
    rlca
    db $fc
    rst $38
    ld bc, $c001
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08

jr_0dc_4290:
    ld a, $ff
    ld a, b
    ld hl, sp-$3f
    rst $38
    jr c, jr_0dc_4290

    rrca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rrca
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh [$e0], a
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    add b
    add b
    jr jr_0dc_436d

    sbc $de
    rla
    jr jr_0dc_43b4

    rst $38
    inc de
    rra
    ld hl, sp-$01
    rla
    rra
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    ld [bc], a

jr_0dc_436d:
    inc bc
    jr @+$01

    ld [bc], a
    inc bc
    rrca
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_43b4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ret z

    ld hl, sp-$04
    rst $38
    ld [$81f8], sp
    cp $d0
    jr nc, jr_0dc_44b8

    ld a, a
    ld h, b
    ldh [rSB], a
    ld bc, $c0c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_44b8:
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ld c, $fe
    jr @+$21

    add c
    rst $38
    rla
    dec de
    ld hl, sp-$01
    rla
    rra
    ld hl, sp-$01
    rla
    rra
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    ld [bc], a
    inc bc
    jr @+$01

    ld bc, $cf01
    rst $38
    nop
    nop
    jr nc, jr_0dc_4537

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_4537:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    ret nz

    ret nz

jr_0dc_4598:
    rrca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rrca
    rst $38
    ret z

    ld hl, sp-$04
    rst $38
    db $10
    ldh a, [$80]
    rst $38
    jr nz, jr_0dc_4598

    ld h, b
    ld a, a
    ld b, b
    ret nz

    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    ld [bc], a
    inc bc
    ld [$04f8], sp
    rlca
    ld b, $fe
    ld [$010f], sp
    rst $38
    ld [$000f], sp
    rst $38
    rla
    rra
    ld hl, sp-$01
    rra
    rra
    ldh a, [rIE]
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rla
    rra
    ldh a, [rIE]
    rrca
    rrca
    ld hl, sp-$01
    inc bc
    inc bc
    rst $08
    rst $38
    nop
    nop
    jr nc, jr_0dc_46b7

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_46b7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop

jr_0dc_4714:
    add c
    rst $38
    ret nz

    ret nz

jr_0dc_4718:
    rrca
    rst $38
    ldh [$e0], a

jr_0dc_471c:
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    ld hl, sp-$01
    jr nz, jr_0dc_4714

    add b
    rst $38
    jr nz, jr_0dc_4718

    ld h, b
    ld a, a
    jr nz, jr_0dc_471c

    db $10
    rra
    ld b, b
    ret nz

    rrca
    rrca
    add b
    add b
    rra
    rra
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f801
    ld hl, sp+$02
    inc bc
    ld b, $fe
    inc b
    rlca
    ld bc, $08ff
    rrca
    nop
    rst $38
    dec bc
    rrca
    ld hl, sp-$01
    rla
    rra
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    dec bc
    rrca
    ld hl, sp-$01
    inc b
    rlca
    rrca
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    nop
    nop
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
    inc a
    inc a
    ldh [$e0], a

jr_0dc_4890:
    ld b, e
    ld a, a
    ldh a, [$f0]

jr_0dc_4894:
    add c
    rst $38
    jr jr_0dc_4890

jr_0dc_4898:
    rrca
    rst $38
    add sp, -$28

jr_0dc_489c:
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    ld hl, sp-$01
    jr nz, jr_0dc_4894

    add b
    rst $38
    jr nz, jr_0dc_4898

    ld [hl], b
    ld a, a
    jr nz, jr_0dc_489c

    ld [$200f], sp
    ldh [rTAC], a
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

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
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    inc bc
    inc bc
    add c
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    inc de
    rra
    ldh a, [rIE]
    db $10
    rra
    ccf
    rst $38
    dec bc
    inc c
    add c
    ld a, a
    ld b, $07
    cp $fe
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0dc_4a08:
    ld bc, $f001
    ldh a, [$7b]
    ld a, e
    jr jr_0dc_4a08

    add [hl]
    rst $38
    add sp, $18
    rra
    rst $38
    ret z

    ld hl, sp+$1f
    rst $38
    add sp, -$08
    rrca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    jr @+$01

    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    rrca
    rrca
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    inc bc
    inc bc
    add c
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    inc de
    rra
    ldh a, [rIE]
    ld [$3f0f], sp
    rst $38
    inc b
    rlca
    ld bc, $02ff
    inc bc
    ld b, $fe
    ld bc, $f801
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    ldh [$e0], a

jr_0dc_4b8c:
    ld [hl], b
    ld a, a
    ldh a, [$f0]
    add c
    rst $38
    jr jr_0dc_4b8c

    rra
    rst $38
    add sp, -$28
    rra
    rst $38
    add sp, -$08
    rrca
    rst $38
    add sp, -$08
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    jr @+$01

    ld b, b
    ret nz

    di
    rst $38
    add b
    add b
    inc c
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    inc bc
    inc bc
    add c
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    inc b
    rlca
    rra
    rst $38
    inc b
    rlca
    ld bc, $04ff
    rlca
    ld b, $fe
    ld [bc], a
    inc bc
    ld [$01f8], sp
    ld bc, $f0f0
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_4cf0:
    nop
    nop
    nop
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
    rrca
    rrca
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    db $10
    rra
    ld b, b
    ret nz

    ld h, b
    ld a, a
    jr nz, jr_0dc_4cf0

    add b
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    add sp, -$08
    rrca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rrca
    rst $38
    add sp, -$08
    rra
    rst $38
    ldh a, [$f0]
    di
    rst $38
    ret nz

    ret nz

    inc c
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    inc a
    rrca
    rrca
    jp nz, Jump_000_18fe

    rra
    add c
    rst $38
    rla
    dec de
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    inc b
    rlca
    rra
    rst $38
    inc b
    rlca
    ld bc, $04ff
    rlca
    ld c, $fe
    inc b
    rlca
    db $10
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_4e74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    add b
    add b
    ld h, b
    ld a, a
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0dc_4e74

jr_0dc_4e94:
    nop
    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    ret nc

    ldh a, [rIF]
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    ret nc

    ldh a, [$f0]
    rst $38
    jr nz, jr_0dc_4e94

    nop
    rst $38
    ret nz

    ret nz

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
    ld bc, $0001
    nop
    rlca
    ld b, $00
    nop
    jr @+$21

    nop
    nop
    jr nz, jr_0dc_4f6b

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
    ld bc, $8001
    rst $38
    ld [bc], a
    inc bc
    ret nc

    ccf
    dec b
    ld b, $bf
    ld a, a
    ld a, [bc]
    dec c
    ldh a, [rIE]
    rla
    rra
    rst $30
    ld hl, sp+$17
    rra
    rst $38
    ld hl, sp+$17
    rra
    ld hl, sp-$01
    inc de
    rra
    rst $38
    rst $38
    add hl, bc
    rrca
    ld sp, hl
    rst $38
    rlca
    rlca
    pop hl
    rst $38
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ccf

jr_0dc_4f6b:
    ccf
    nop
    nop
    jr nz, jr_0dc_4faf

    nop
    nop
    rra
    rra
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_4faf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $c6
    nop
    nop
    cpl
    jp hl


    nop
    nop
    rra
    ld hl, sp-$80
    add b
    rra
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    rra
    ld hl, sp-$80
    add b
    dec de
    db $fc
    ld b, b
    ret nz

    inc a
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ldh [$e0], a
    rst $38
    ccf
    ldh [$e0], a
    cp a
    ld a, a
    ret nz

    ret nz

    cp $ff
    ld b, b
    ret nz

    rst $00
    rst $38
    add b
    add b
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    db $f4
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
    add h
    db $fc
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
    sbc h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld h, $3e
    nop
    nop
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    add a
    ld hl, sp+$03
    inc bc
    rra
    ldh [$03], a
    inc bc
    dec a
    jp $0303


    ld a, d
    add [hl]
    rlca
    rlca
    add c
    rst $38
    rrca
    rrca
    ld hl, sp-$01
    rrca
    rrca
    or $f9
    rrca
    rrca
    rst $28
    ldh a, [rTAC]
    rlca
    db $ed
    ei
    inc bc
    inc bc
    jp $01ff


    ld bc, $fec3
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
    jr nz, jr_0dc_513f

    nop
    nop
    rra
    rra
    nop
    nop
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_513f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $12
    nop
    nop
    ld e, $12
    nop
    nop
    ld [de], a
    ld e, $00
    nop
    ld [de], a
    ld e, $00
    nop
    ld a, [c]
    cp $00
    nop
    or d
    sbc $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $12
    nop
    nop
    sbc $d2
    nop
    nop
    ld [hl], $fa
    nop
    nop
    ld b, [hl]
    ld a, [$0000]
    xor $72
    nop
    nop
    ld l, l
    di
    jr nc, jr_0dc_51e0

    jr nz, @+$01

    ld hl, sp-$08
    jr nc, @+$01

    ld a, b
    ld hl, sp+$38
    rst $38
    ld a, b
    ld hl, sp+$7c
    rst $38
    ldh a, [$f0]
    db $fd
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ld [hl], e
    ld [hl], e
    ret nz

    ret nz

    ld bc, $8001
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

jr_0dc_51e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    rrca
    ld bc, $9601
    sbc c
    inc bc
    inc bc
    rst $28
    pop af
    rlca
    rlca
    jp nc, Jump_000_07ee

    rlca
    cp h
    call nz, Call_000_0707
    ld a, $ce
    rlca
    rlca
    pop hl
    rst $38
    rrca
    rrca
    cp $f5
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rlca
    rlca
    add b
    rst $38
    dec b
    rlca
    add b
    rst $38
    inc b
    rlca
    add b
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld bc, $1501
    ei
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    jr nc, jr_0dc_52cf

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_52cf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    nop
    nop
    ld e, $12
    nop
    nop
    ld e, $12
    nop
    nop
    ld e, $12
    nop
    nop
    ld [de], a
    ld e, $00
    nop
    ld [de], a
    ld e, $00
    nop
    ld [de], a
    ld e, $00
    nop
    ld [hl], e
    ld a, l
    nop
    nop
    cp a
    db $d3
    nop
    nop
    rst $38
    di
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $18
    pop de
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    rla
    add hl, de
    nop
    nop
    dec d
    dec de
    nop
    nop
    sbc a
    sub c
    nop
    nop
    rst $38
    pop af
    nop
    nop
    sbc a
    ld [hl], c
    nop
    nop
    ld c, a
    pop af
    nop
    nop
    ld hl, $00ff
    nop
    ld sp, $30ff
    jr nc, jr_0dc_53b6

    rst $38
    ld hl, sp-$08
    db $fc
    rst $38
    ld a, b
    ld hl, sp-$04
    rst $38
    ld a, b
    ld hl, sp-$08
    rst $38
    ldh a, [$f0]
    ld sp, hl
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    ld bc, $8001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_53b6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, l
    ld h, [hl]
    nop
    nop
    ei
    db $fc
    ld bc, $f401
    ei
    ld bc, $ef01
    pop af
    ld bc, $cf01
    di
    ld bc, $f001
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    ld bc, $e001
    rst $38
    ld bc, $7001
    rst $38
    ld bc, $3f01
    rst $38
    nop
    nop
    sbc e
    db $fc
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    inc hl
    ccf
    nop
    nop
    db $10
    rra
    nop
    nop
    inc c
    rrca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc b
    add b
    add b
    rlca
    inc b
    add b
    add b
    rlca
    inc b
    add b
    add b
    inc b
    rlca
    add b
    add b
    inc b
    rlca
    add b
    add b
    inc e
    rra
    ret nz

    ld b, b
    inc l
    scf
    ret nz

    ret nz

    rst $38
    db $fc
    ret nz

    ret nz

    ld a, l
    rst $38
    ret nz

    ret nz

    cp a
    ld a, a
    ret nz

    ret nz

    rst $30
    ld [hl], h
    ret nz

    ld b, b
    add a
    add h
    ret nz

    ld b, b
    rlca
    inc b
    ret nz

    ld b, b
    push bc
    add $c0
    ld b, b
    dec h
    and $40
    ret nz

    rla
    db $f4
    ret nz

    ld b, b
    rla
    db $f4
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    nop
    rst $38
    ld b, b
    ret nz

    jr @+$01

    ld b, b
    ret nz

    db $fc
    rst $38
    ld c, h
    call z, Call_0dc_7fbe
    ld a, [hl]
    cp $7f
    rst $38
    ld e, $fe
    rst $38
    rst $38
    ld e, $fe
    cp $ff
    inc a
    db $fc
    ld a, $ff
    ld a, h
    db $fc
    rst $38
    rst $38
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
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
    ccf
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
    inc a
    ccf
    nop
    nop
    jr c, jr_0dc_557f

    nop
    nop
    jr nc, jr_0dc_5583

    nop
    nop
    jr nc, jr_0dc_5587

    nop
    nop
    jr nc, jr_0dc_558b

    nop
    nop
    jr nc, jr_0dc_558f

    nop
    nop
    jr nc, jr_0dc_5593

    nop
    nop
    jr c, @+$41

    nop
    nop
    jr c, jr_0dc_559b

    nop
    nop
    inc a
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
    ccf
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
    rra
    rra
    nop
    nop
    rla

jr_0dc_557f:
    rra
    nop
    nop
    rla

jr_0dc_5583:
    jr jr_0dc_5585

jr_0dc_5585:
    nop
    inc de

jr_0dc_5587:
    inc e
    nop
    nop
    dec bc

jr_0dc_558b:
    rrca
    nop
    nop
    rlca

jr_0dc_558f:
    rlca
    nop
    nop
    inc bc

jr_0dc_5593:
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    nop

jr_0dc_559b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub b
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    call nc, Call_000_00ec
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    ld a, h
    db $e4
    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $f4
    nop
    nop
    inc e
    db $f4
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $e4
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    add sp, -$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    call c, Call_000_00fc
    nop
    sbc [hl]
    cp $00
    nop
    sbc [hl]
    ld a, [hl]
    nop
    nop
    sbc $fe
    nop
    nop
    db $fc
    call c, RST_00
    ld hl, sp-$68
    nop
    nop
    ldh [rNR41], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
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
    ccf
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
    inc a
    ccf
    nop
    nop
    jr c, jr_0dc_56ff

    nop
    nop
    jr nc, jr_0dc_5703

    nop
    nop
    jr nc, jr_0dc_5707

    nop
    nop
    jr nc, jr_0dc_570b

    nop
    nop
    jr nc, jr_0dc_570f

    nop
    nop
    jr nc, jr_0dc_5713

    nop
    nop
    jr c, @+$41

    nop
    nop
    jr c, jr_0dc_571b

    nop
    nop
    inc a
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
    ccf
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
    rra
    rra
    nop
    nop
    rrca

jr_0dc_56ff:
    rrca
    nop
    nop
    rrca

jr_0dc_5703:
    ld [$0000], sp
    rlca

jr_0dc_5707:
    inc b
    nop
    nop
    rlca

jr_0dc_570b:
    rlca
    nop
    nop
    inc bc

jr_0dc_570f:
    inc bc
    nop
    nop
    inc bc

jr_0dc_5713:
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    nop

jr_0dc_571b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub b
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    call nc, Call_000_00ec
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    ld a, h
    db $e4
    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $f4
    nop
    nop
    inc e
    db $f4
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $e4
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    and $fe
    nop
    nop
    xor $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret nz

    ret nz

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
    ldh a, [$90]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    cp $fe
    rlca
    rlca
    dec a
    jp Jump_000_0707


    ei
    db $fc
    rrca
    rrca
    cp $ff
    rrca
    rrca
    db $eb
    db $f4
    rrca
    rrca
    rst $38
    ldh [rTAC], a
    rlca
    push af
    ei
    dec b
    rlca
    pop bc
    rst $38
    inc b
    rlca
    add c
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    jr nc, jr_0dc_58bf

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_58bf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0dc_591a

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
    and [hl]
    cp [hl]
    nop
    nop
    ld a, e
    push hl
    nop
    nop
    ld sp, hl
    ld h, a
    nop
    nop
    ld a, e
    push hl

jr_0dc_591a:
    nop
    nop
    rst $38
    ld h, a
    nop
    nop
    rst $38
    rst $20
    nop
    nop
    xor e
    push af
    nop
    nop
    or e
    ld a, l
    jr nc, jr_0dc_595c

    add hl, sp
    rst $38
    ld hl, sp-$08
    inc a
    rst $38
    ld a, b
    ld hl, sp+$7e
    db $fd
    ld a, b
    ld hl, sp-$02
    ld sp, hl
    ldh a, [$f0]
    db $fd
    ei
    ldh a, [$f0]
    ei
    rst $38
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a
    dec de
    dec de
    ret nz

    ret nz

    ld bc, $8001
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

jr_0dc_595c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    db $dd
    db $e3
    ld c, $0f
    ld a, l
    add e
    rrca
    rrca
    add c
    rst $38
    rra
    rra
    add b
    rst $38
    rra
    rra
    nop
    rst $38
    rra
    rra
    nop
    rst $38
    rrca
    rrca
    nop
    rst $38
    dec bc
    rrca
    add b
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    inc b
    rlca
    db $dd
    db $e3
    ld [bc], a
    inc bc
    dec hl
    rst $30
    ld bc, $1f01
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0dc_5aa2

    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld a, h
    ld c, h
    nop
    nop
    or $ca
    nop
    nop
    ld a, [c]
    adc $00
    nop
    or $ca
    nop
    nop
    cp $ce
    nop
    nop
    cp $ce
    nop
    nop
    ld a, [c]
    adc $00
    nop
    db $76
    jp z, RST_00

    ld [hl], $ca

jr_0dc_5aa2:
    nop
    nop
    sub $ea
    nop
    nop
    and $fa
    ld h, b
    ld h, b
    di
    rst $38
    ldh a, [$f0]
    ld hl, sp-$01
    ldh a, [$f0]
    db $fc
    ei
    ldh a, [$f0]
    db $fd
    di
    ldh [$e0], a
    ei
    rst $30
    ldh [$e0], a
    rst $30
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    rlca
    rlca
    rst $30
    ld sp, hl
    rrca
    rrca
    cp a
    pop bc
    ld c, $0f
    rst $38
    ld bc, $0f0e
    add e
    ld a, a
    rrca
    rrca
    add b
    rst $38
    rra
    rra
    nop
    rst $38
    rra
    rra
    nop
    rst $38
    rra
    rra
    nop
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    rst $38
    rst $38
    add hl, bc
    rrca
    db $dd
    db $e3
    inc b
    rlca
    db $dd
    db $e3
    ld [bc], a
    inc bc
    dec hl
    rst $30
    ld bc, $1f01
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld a, h
    ld c, h
    nop
    nop
    or $ca
    nop
    nop
    ld a, [c]
    adc $00
    nop
    or $ca
    nop
    nop
    cp $ce
    nop
    nop
    cp $ce
    nop
    nop
    ld a, [c]
    adc $00
    nop
    or $ca
    nop
    nop
    db $76
    jp z, RST_00

    db $76
    jp z, RST_00

    or [hl]
    jp z, RST_00

    sub $ea
    nop
    nop
    and $fa
    ld h, b
    ld h, b
    di
    rst $38
    ldh a, [$f0]
    ld hl, sp-$01
    ldh a, [$f0]
    db $fc
    ei
    ldh a, [$f0]
    db $fd
    di
    ldh [$e0], a
    ei
    rst $30
    ldh [$e0], a
    rst $30
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    nop
    ld b, b
    ld a, a
    ld bc, $8001
    rst $38
    rlca
    rlca
    db $fc
    rst $38
    rrca
    rrca
    ld hl, sp-$01
    rra
    rra
    ldh a, [rIE]
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh a, [rIE]
    rrca
    rrca
    ld hl, sp-$01
    rlca
    rlca
    db $fc
    rst $38
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
    ld a, h
    ld a, h
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    rra
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    ldh [$e0], a
    add c
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
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    daa
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc de
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fe01
    cp $02
    inc bc
    ld a, a
    add a
    inc b
    rlca
    ei
    rlca
    rrca
    rrca
    add c
    cp $1f
    rra
    nop
    rst $38
    rra
    rra
    nop
    rst $38
    rra
    rra
    nop
    rst $38
    rrca
    rrca
    add b
    rst $38
    rlca
    rlca
    ret nz

    cp a
    dec b
    rlca
    db $fd
    jp Jump_000_0302


    ld a, e
    rst $20
    ld bc, $1f01
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rlca
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    ret


    ld sp, hl
    add b
    add b
    db $eb
    ld a, [$40c0]
    db $fd
    rst $38
    ld h, b
    and b
    rst $38
    db $fd

jr_0dc_5f16:
    ldh [$e0], a
    rst $30
    rst $38

jr_0dc_5f1a:
    ldh [$e0], a
    rst $20
    ld hl, sp-$40
    ret nz

    db $db
    db $e4
    add b
    add b
    rra
    pop hl
    nop
    nop
    xor $f2
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0dc_5f16

    nop
    nop
    jr nz, jr_0dc_5f1a

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $18
    pop hl
    rlca
    rlca
    cp a
    jp Jump_000_0707


    inc sp
    rst $08
    rlca
    rlca
    db $e3
    rst $38
    rrca
    rrca
    cp $f5
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rlca
    rlca
    add b
    rst $38
    dec b
    rlca
    add b
    rst $38
    inc b
    rlca
    add b
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld bc, $1501
    ei
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    jr nc, jr_0dc_6047

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_6047:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$a0], a
    nop
    nop
    ld h, b
    and b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    inc de
    di
    nop
    nop
    rla
    db $f4
    add b
    add b
    rrca
    db $fc
    ret nz

    ld b, b
    cpl
    db $fc
    ret nz

    ret nz

    scf
    cp $f0
    ldh a, [$7b]
    rst $38
    ld hl, sp-$08
    rst $38
    db $fc
    ld a, b
    ld hl, sp-$02
    db $fd
    ld a, b
    ld hl, sp-$04
    ei
    ldh a, [$f0]
    ld sp, hl
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    ld [hl], e
    ld [hl], e
    ret nz

    ret nz

    ld bc, $8001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    cp $fe
    rlca
    rlca
    db $dd
    db $e3
    rlca
    rlca
    cp a
    ret nz

    rlca
    rlca
    ld sp, $07ce
    rlca
    ldh [rIE], a
    rrca
    rrca
    cp $f5
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rlca
    rlca
    add b
    rst $38
    dec b
    rlca
    add b
    rst $38
    inc b
    rlca
    add b
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld bc, $1501
    ei
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    jr nc, jr_0dc_61c7

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_61c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    db $db
    db $eb
    nop
    nop
    xor a
    ld e, h
    add b
    add b
    ld c, a
    db $fc
    ret nz

    ld b, b
    cpl
    db $fc
    ret nz

    ret nz

    scf
    cp $f0
    ldh a, [$7b]
    rst $38
    ld hl, sp-$08
    rst $38
    db $fc
    ld a, b
    ld hl, sp-$02
    db $fd
    ld a, b
    ld hl, sp-$04
    ei
    ldh a, [$f0]
    ld sp, hl
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    ld [hl], e
    ld [hl], e
    ret nz

    ret nz

    ld bc, $8001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc b
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    ld e, $1b
    nop
    nop
    jr jr_0dc_6317

    rlca
    rlca
    cp b
    cp a
    dec bc
    inc c
    ld a, h
    rst $38
    rrca
    dec bc
    rst $38
    rst $38
    rrca
    dec bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld bc, $bf01
    ld a, a
    nop
    nop
    db $dd
    cp a
    nop
    nop
    ld h, e

jr_0dc_6317:
    ld e, l
    nop
    nop
    ccf
    ld hl, $0000
    ld e, $12
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ldh [$a0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld a, b
    cp b
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], h
    ld c, h
    nop
    nop
    ld e, h
    ld h, h
    nop
    nop
    ld a, [hl-]
    ld h, $00
    nop
    ld hl, $003f
    nop
    dec a
    ccf
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    cp $ff
    add b
    add b

jr_0dc_63a0:
    cp $3f
    add b
    add b

jr_0dc_63a4:
    sbc $7f
    add b
    add b
    ld [hl], $ef
    add b
    add b
    inc sp
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b

jr_0dc_63b4:
    dec b
    rst $38
    ret nz

    ret nz

    ld [$a0ff], sp
    ldh [$39], a
    rst $38
    jr nz, jr_0dc_63a0

    adc $ff
    jr nz, jr_0dc_63a4

    inc b
    rst $38
    ld h, b
    ldh [$88], a
    rst $38
    ld h, b
    ldh [$f0], a
    rst $38
    and b
    ldh [$67], a
    ld a, a
    jr nz, jr_0dc_63b4

    jr jr_0dc_63f5

    jr nc, @-$0e

    ld b, $07
    ld [hl], b
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    ld bc, $c001
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

jr_0dc_63f5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    add b
    rst $38
    inc e
    inc e
    ld b, b
    ld a, a
    ld a, $3a
    ld h, b
    ld a, a
    cpl
    ccf
    ld a, a
    ld a, a
    ld a, $3e
    rst $38
    rst $38
    ccf
    inc hl
    cp $ff
    ld a, $23
    rst $38
    rst $38
    inc a
    inc hl
    ld a, a
    rst $38
    ld l, $31
    inc a
    db $fc
    rla
    jr jr_0dc_64af

    ld hl, sp+$0f
    rrca
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_64af:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    inc e
    inc d
    nop
    nop
    inc e
    inc d
    nop
    nop
    inc e
    inc d
    nop
    nop
    ld d, $1e
    nop
    nop
    ld hl, $003f
    nop
    cpl
    scf
    nop
    nop
    dec a
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    rra
    ld de, $0000
    ld hl, $003f
    nop
    ld a, a
    ld a, a
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
    ld a, l
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    inc sp
    rst $38
    nop
    nop

jr_0dc_6530:
    inc hl
    rst $38
    nop
    nop

jr_0dc_6534:
    ld h, e
    rst $38
    add b
    add b
    pop hl
    rst $38
    ld b, b
    ret nz

    sub d
    rst $38
    ld b, b
    ret nz

    inc c
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

jr_0dc_6548:
    ld de, $e0ff
    ldh [$ef], a
    rst $38
    jr nz, jr_0dc_6530

    ldh a, [rIE]
    jr nz, jr_0dc_6534

    db $10
    rra
    jr nc, jr_0dc_6548

    inc c
    rrca
    ld [hl], b
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    nop
    ld b, a
    ld a, d
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $be01
    ld a, [hl]
    ld bc, $ee01
    ld d, $00
    nop
    db $fc
    call nz, RST_00
    jr c, jr_0dc_6658

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_6658:
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    inc e
    inc d
    nop
    nop
    inc e
    inc d
    nop
    nop
    inc e
    inc d
    nop
    nop
    ld d, $1e
    nop
    nop
    ld hl, $003f
    nop
    cpl
    scf
    nop
    nop
    dec a
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    rra
    ld de, $0000
    ld hl, $003f
    nop
    ld a, a
    ld a, a
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
    ld a, l
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    inc sp
    rst $38
    nop
    nop

jr_0dc_66b0:
    inc hl
    rst $38
    nop
    nop

jr_0dc_66b4:
    ld h, e
    rst $38
    add b
    add b
    pop hl
    rst $38
    ld b, b
    ret nz

    sub d
    rst $38
    ld b, b
    ret nz

    inc c
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

jr_0dc_66c8:
    ld de, $e0ff
    ldh [$ef], a
    rst $38
    jr nz, jr_0dc_66b0

    ldh a, [rIE]
    jr nz, jr_0dc_66b4

    db $10
    rra
    jr nc, jr_0dc_66c8

    inc c
    rrca
    ld [hl], b
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    cp $fe
    rlca
    rlca
    db $dd
    db $e3
    rlca
    rlca
    cp a
    ret nz

    rlca
    rlca
    ld sp, $07ce
    rlca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rlca
    rlca
    add b
    rst $38
    dec b
    rlca
    add b
    rst $38
    inc b
    rlca
    add b
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld bc, $1501
    ei
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    jr nc, jr_0dc_6947

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_6947:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    db $db
    db $eb
    nop
    nop
    cpl
    call c, $8080
    rrca
    db $fc
    ret nz

    ld b, b
    cpl
    db $fc
    ret nz

    ret nz

    scf
    cp $f0
    ldh a, [$7b]
    rst $38
    ld hl, sp-$08
    rst $38
    db $fc
    ld a, b
    ld hl, sp-$02
    db $fd
    ld a, b
    ld hl, sp-$04
    ei
    ldh a, [$f0]
    ld sp, hl
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    ld [hl], e
    ld [hl], e
    ret nz

    ret nz

    ld bc, $8001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9c01
    sbc h
    inc bc
    ld [bc], a
    ld [c], a
    ld a, [hl]
    rlca
    inc b
    pop bc
    ccf
    rlca
    rlca
    cp $bf
    rlca
    rlca
    pop bc
    rst $38
    rlca
    rlca
    ld b, b
    cp a
    rlca
    inc b
    ld a, [$07fd]
    ld b, $ff
    ld hl, sp+$0f
    rrca
    db $fd
    cp $0f
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    db $10
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    add b
    add b
    ld b, a
    ld a, [hl]
    ret nz

    ld b, b
    add e
    db $fc
    ldh [rNR41], a
    rst $38
    db $fd
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    dec b
    ei
    ldh [$e0], a
    rst $18
    ld a, $a0
    ld h, b
    rst $38
    ld e, $a0
    ldh [$7f], a
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    ld l, a
    rst $18
    ldh [$e0], a
    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0dc_6ce7:
    rst $38
    rst $38
    rst $38
    rst $38

jr_0dc_6ceb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

jr_0dc_6d30:
    rrca
    rrca
    ldh [$e0], a
    inc c
    rrca
    ld h, b
    ldh [$0b], a
    inc c
    and b
    ld h, b
    dec bc
    inc c
    and b
    ld h, b
    dec bc
    inc c
    and b
    ld h, b
    rla
    jr jr_0dc_6ce7

    ld h, b
    rla
    jr jr_0dc_6ceb

    ld h, b

jr_0dc_6d4c:
    db $10
    rra
    jr nz, jr_0dc_6d30

    db $10
    rra
    jr c, jr_0dc_6d4c

    inc de
    rra
    rst $38
    rst $38
    rla
    rra
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    ld [bc], a
    inc bc
    jr @+$01

    ld [bc], a
    inc bc
    rrca
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    rlca
    rst $38
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    ld [$01f8], sp
    ld bc, $f0f0
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f0f0
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ret z

    ld hl, sp-$04
    rst $38
    ld [$83f8], sp
    db $fc
    add sp, $18
    ld a, e
    ld a, h
    ret nc

    jr nc, @+$07

    ld b, $d0
    jr nc, @+$09

    ld b, $f0
    jr nc, @+$05

    inc bc
    ld h, b
    ldh [rSB], a
    ld bc, $c0c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_6e6b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_6e87:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    inc c
    rrca
    ld h, b
    ldh [$0b], a
    inc c
    and b
    ld h, b
    dec bc
    inc c
    and b
    ld h, b
    rla
    jr jr_0dc_6e6b

    ld h, b
    rla
    jr jr_0dc_6e87

    ld a, b
    db $10
    rra
    inc b
    db $fc
    inc de
    rra
    ei
    rst $38
    rla
    rra
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    ld [bc], a
    inc bc
    jr @+$01

    ld [bc], a
    inc bc
    rrca
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ret z

    ld hl, sp-$04
    rst $38
    ld [$83f8], sp
    db $fc
    ret nc

    jr nc, jr_0dc_7034

    ld a, h
    and b
    ld h, b
    inc c
    rrca
    ld h, b
    ldh [rTMA], a
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_7034:
    nop
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
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    ld [bc], a
    inc bc
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    ld [$040f], sp
    db $fc
    ld [$030f], sp
    rst $38
    inc de
    rra
    ld hl, sp-$01
    rla
    rra
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    rlca
    rlca
    ld hl, sp-$01
    inc bc
    inc bc
    rst $08
    rst $38
    nop
    nop
    jr nc, jr_0dc_70b7

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_70b7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_7114:
    rst $38
    rst $38
    ret nz

    ret nz

jr_0dc_7118:
    rrca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    ld hl, sp-$01
    jr nz, jr_0dc_7114

    add b
    rst $38
    jr nz, jr_0dc_7118

    ld [hl], b
    ld a, a
    ld b, b
    ret nz

    rrca
    rrca
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    ld [$030f], sp
    rst $38
    dec bc
    rrca
    ld hl, sp-$01
    rla
    rra
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    dec bc
    rrca
    ld hl, sp-$01
    dec b
    ld b, $cf
    ccf
    dec b
    ld b, $e0
    rra
    ld [bc], a
    inc bc
    rra
    rst $38
    ld bc, $e001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    inc c
    ret nz

    ret nz

    dec bc
    inc c
    ld b, b
    ret nz

    dec bc
    inc c
    and b
    ld h, b
    dec bc
    inc c
    and b
    ld h, b

jr_0dc_7294:
    ei
    db $fc
    and b
    ld h, b

jr_0dc_7298:
    rrca
    rst $38
    ldh [$e0], a

jr_0dc_729c:
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    ld hl, sp-$01
    jr nz, jr_0dc_7294

    add b
    rst $38
    jr nz, jr_0dc_7298

    ld [hl], b
    ld a, a
    jr nz, jr_0dc_729c

    ld [$200f], sp
    ldh [rTAC], a
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

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
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_7338:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    inc de
    rra
    ldh a, [rIE]
    db $10
    rra
    ccf
    rst $38
    rla
    jr jr_0dc_7338

    ccf
    dec bc
    inc c
    sbc $3e
    dec bc
    inc c
    and b
    ld h, b
    rrca
    inc c
    ldh [$60], a
    ld b, $07
    ret nz

    ret nz

    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_73e8:
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    ld b, $07
    jr nc, jr_0dc_73e8

    dec b
    ld b, $d0
    jr nc, @+$07

    ld b, $d0
    jr nc, @+$07

    ld b, $d0
    jr nc, @+$07

    ld b, $e8
    jr jr_0dc_740e

    ld b, $e8
    jr jr_0dc_7411

    rlca

jr_0dc_740e:
    ld [$1cf8], sp

jr_0dc_7411:
    rra
    ld [$fff8], sp
    rst $38
    ret z

    ld hl, sp+$1f
    rst $38
    add sp, -$08
    rrca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    jr @+$01

    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ldh [rIE], a
    ld b, b
    ret nz

    jr nz, jr_0dc_747d

    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    rrca
    rrca
    add b
    add b
    rrca
    rrca
    add b
    add b
    rrca
    rrca
    add b
    add b
    rrca
    rrca
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_747d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    inc de
    rra
    ldh a, [rIE]

jr_0dc_74f0:
    db $10
    rra
    ccf
    rst $38
    dec bc
    inc c
    pop bc
    ccf
    dec b
    ld b, $de
    ld a, $06
    rlca
    jr nc, jr_0dc_74f0

    inc bc
    inc bc
    ld h, b
    ldh [rSB], a
    ld bc, $c0c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_7570:
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    ld b, $07
    jr nc, jr_0dc_7570

    dec b
    ld b, $d0
    jr nc, @+$07

    ld b, $d0
    jr nc, @+$07

    ld b, $e8
    jr jr_0dc_75aa

    ld e, $e8
    jr @+$22

    ccf
    ld [$dff8], sp
    rst $38
    ret z

    ld hl, sp+$1f
    rst $38
    add sp, -$08
    rrca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38

jr_0dc_75aa:
    ldh [$e0], a
    jr @+$01

    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    rrca
    rrca
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    inc b
    rlca
    rra
    rst $38
    inc b
    rlca
    ld bc, $02ff
    inc bc
    ld c, $fe
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_76f0:
    nop
    nop
    nop
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
    rrca
    rrca
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    db $10
    rra
    ld b, b
    ret nz

    jr nz, jr_0dc_774d

    jr nz, jr_0dc_76f0

    jr nz, jr_0dc_7751

    db $10
    ldh a, [$c0]
    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    ret z

    ld hl, sp+$0f
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    ldh [$e0], a
    di
    rst $38
    ret nz

    ret nz

    inc c
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_774d:
    nop
    nop
    nop
    nop

jr_0dc_7751:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$30]
    ld [bc], a
    inc bc
    ret nc

    jr nc, @+$07

    ld b, $d0
    jr nc, @+$07

    ld b, $d0
    jr nc, jr_0dc_77da

    ld b, $df
    ccf
    rlca
    rlca

jr_0dc_77da:
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    inc b
    rlca
    rra
    rst $38
    inc b
    rlca
    ld bc, $04ff
    rlca
    ld c, $fe
    inc b
    rlca
    db $10
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dc_7874:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    db $10
    rra
    ld b, b
    ret nz

    jr nz, jr_0dc_78d1

    jr nz, jr_0dc_7874

    ret nz

    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    ret nc

    ldh a, [rIF]
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    ret nc

    ldh a, [$f3]
    db $fc
    and b
    ld h, b
    rlca
    ld hl, sp-$60
    ld h, b
    ld hl, sp-$01
    ld b, b
    ret nz

    rlca
    rlca
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
    nop
    nop

jr_0dc_78d1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_0dc_7fbe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
