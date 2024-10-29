SECTION "ROM Bank $0db", ROMX[$4000], BANK[$db]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $f901
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    and b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0db_40a3

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
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

jr_0db_40a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0db_4102:
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
    jr nc, jr_0db_4102

    nop
    nop
    jr c, @-$06

    nop
    nop
    ld c, $fe
    nop
    nop
    rlca
    rst $38
    nop
    nop
    inc bc
    rst $38
    add b
    add b
    add hl, bc
    rst $38
    add b
    add b
    dec c
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    ld e, a
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $e001
    ld h, b
    inc bc
    ld [bc], a
    ret nc

    jr nc, jr_0db_41c8

    inc b
    adc b
    ld a, b
    inc bc
    ld [bc], a
    ld [hl], a
    rst $38

jr_0db_41c8:
    ld [bc], a
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $f901
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    and b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0db_4227

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
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

jr_0db_4227:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0db_4286:
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
    jr nc, jr_0db_4286

    nop
    nop
    jr c, @-$06

    nop
    nop
    inc c
    db $fc
    nop
    nop
    rlca
    rst $38
    nop
    nop
    inc bc
    rst $38
    ret nz

    ret nz

    add hl, bc
    rst $38
    ldh [$e0], a
    inc c
    rst $38
    ldh a, [$f0]
    inc e
    rst $38
    ldh a, [$f0]
    cp $ff
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    cp a
    rst $38
    ret nz

    ret nz

    ld e, a
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rra
    rra
    nop
    nop
    dec h
    dec sp
    nop
    nop
    ld e, [hl]
    ld a, l
    nop
    nop
    rst $38
    cp $01
    ld bc, $ffff
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $7c01
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    inc b
    rlca
    jr @+$01

    ld c, $0f
    ld [$1fff], sp
    rra
    inc b
    rst $38
    rrca
    rrca
    db $f4
    rst $38
    rlca
    rlca
    adc d
    adc a
    inc bc
    inc bc
    dec b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_43e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0db_43e6

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld c, $fe
    nop
    nop
    ld bc, $00ff
    nop
    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    rst $08
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    add b
    add b
    db $ed
    sbc a
    nop
    nop
    and d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, [hl-]
    scf
    nop
    nop
    ld c, l
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $7c01
    rst $38
    ld bc, $3801
    rst $38
    nop
    nop
    sbc b
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    inc h
    ccf
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    add hl, bc
    rrca
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_4566:
    nop
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
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0db_4566

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld c, $fe
    nop
    nop
    ld bc, $00ff
    nop
    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    rst $08
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

    ld e, $ff
    add b
    add b
    add c
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr @+$21

    nop
    nop
    jr nz, jr_0db_467b

    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    ld bc, $fe01
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld bc, $fc01
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    cp b
    rst $38
    nop
    nop
    sbc b
    rst $38
    nop
    nop
    ld c, h
    ld a, a
    nop
    nop
    inc h
    ccf
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    add hl, bc
    rrca
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
    inc b

jr_0db_467b:
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld e, $1f
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
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_46e6:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0db_46ee:
    nop
    nop
    ldh a, [$f0]

jr_0db_46f2:
    nop
    nop
    jr c, jr_0db_46ee

jr_0db_46f6:
    nop
    nop
    jr jr_0db_46f2

    nop
    nop
    jr jr_0db_46f6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0db_46e6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld c, $fe
    nop
    nop
    ld bc, $00ff
    nop
    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    rst $08
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    rrca
    rst $38
    nop
    nop
    ld a, $fe
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
    nop
    nop
    rlca
    rlca
    nop
    nop
    jr jr_0db_47d7

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    sbc b
    rst $38
    ld bc, $7c01
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld [bc], a
    inc bc
    ld a, b

jr_0db_47d7:
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    ld bc, $1801
    rst $38
    nop
    nop
    adc h
    rst $38
    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    add hl, bc
    rrca
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
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr jr_0db_4830

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_4830:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_485a:
    nop
    nop
    nop
    nop

jr_0db_485e:
    nop
    nop
    nop
    nop

jr_0db_4862:
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0db_485a

    nop
    nop
    jr nz, jr_0db_485e

    nop
    nop
    jr nz, jr_0db_4862

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld c, $fe
    nop
    nop
    ld bc, $00ff
    nop

jr_0db_489c:
    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    jr nc, jr_0db_489c

    rst $08
    rst $38
    ldh a, [$b0]
    rst $38
    rst $38
    ret nc

    ldh a, [$7f]
    rst $38
    and b
    ldh [$3f], a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    ld l, $ee
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0db_4968

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld hl, sp-$01
    ld bc, $fc01
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    dec b
    rlca
    db $fd
    rst $38
    dec b
    rlca
    ld hl, sp-$01
    inc b
    rlca
    ldh a, [rIE]
    rlca
    ld b, $70
    rst $38
    dec b
    ld b, $f8
    ccf
    inc bc
    inc bc
    ret c

    ld a, a
    ld bc, $e801
    rst $38
    nop
    nop
    inc d
    rra

jr_0db_4968:
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $07
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

jr_0db_49e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0db_49e6

jr_0db_4a06:
    nop
    nop
    and b
    ldh [rP1], a
    nop
    jr c, jr_0db_4a06

    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add hl, bc
    rst $38
    add b
    add b
    dec c
    rst $38
    ret nz

    ret nz

    rrca
    cp $60
    ldh [rIF], a
    rst $38
    or b
    ld [hl], b
    rra
    rst $38
    ldh a, [$b0]
    rst $38
    rst $38
    and b
    ldh [$7f], a
    rst $38
    and b
    ldh [$3f], a
    rst $38
    ld b, b
    ret nz

    rra
    rst $38
    add b
    add b
    rrca
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    and b
    ldh [rP1], a
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
    jr nc, jr_0db_4ae8

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld hl, sp-$01
    ld bc, $7c01
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    db $fd
    rst $38
    ld [bc], a
    inc bc
    ld hl, sp-$01
    ld [bc], a
    inc bc
    ldh a, [rIE]
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    ld bc, $0801
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    ld b, h
    ld a, a

jr_0db_4ae8:
    nop
    nop
    inc sp
    ccf
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_4b66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0db_4b66

jr_0db_4b86:
    nop
    nop
    and b
    ldh [rP1], a
    nop
    jr c, jr_0db_4b86

    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc bc
    rst $38
    ret nz

    ret nz

    add hl, bc
    rst $38
    ldh [$e0], a
    inc c
    rst $38
    ld [hl], b
    ldh a, [rIF]
    rst $38
    or b
    ldh a, [rIF]
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    or b
    ldh a, [rIE]
    rst $38
    ldh a, [$b0]
    ld a, a
    rst $38
    ld h, b
    ldh [$3f], a
    rst $38
    ld b, b
    ret nz

    rra
    rst $38
    add b
    add b
    rst $08
    rst $38
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0db_4c68

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld hl, sp-$01
    ld bc, $fc01
    rst $38
    inc bc
    inc bc
    cp $ff
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    ld [bc], a
    inc bc
    ldh a, [rIE]
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    inc b
    rlca
    jr c, @+$01

    inc b
    rlca
    jr @+$01

    ld c, $0f
    ld [$0fff], sp
    rrca
    inc b
    rst $38

jr_0db_4c68:
    rrca
    rrca
    di
    rst $38
    rlca
    rlca
    adc l
    adc a
    inc bc
    inc bc
    inc b
    rlca
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_4ce6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0db_4ce6

jr_0db_4d06:
    nop
    nop
    and b
    ldh [rP1], a
    nop
    jr c, jr_0db_4d06

    ldh [$e0], a

jr_0db_4d10:
    dec b
    db $fd
    ldh a, [$f0]
    ld [bc], a
    rst $38
    jr c, jr_0db_4d10

jr_0db_4d18:
    ld [$18ff], sp
    ld hl, sp+$08
    rst $38
    jr jr_0db_4d18

    inc c
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    db $10
    ldh a, [rIE]
    rst $38
    and b
    ldh [rIE], a
    rst $38
    and b
    ldh [$7f], a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld [de], a
    ld e, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld l, $3e
    nop
    nop
    ld e, e
    ld [hl], a
    nop
    nop
    ld a, [$01ff]
    ld bc, $fffc
    inc bc
    inc bc
    cp $ff
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    ld bc, $f001
    rst $38
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    inc b
    rlca
    jr c, @+$01

    inc b
    rlca
    jr @+$01

    ld [$080f], sp
    rst $38
    ld c, $0f
    inc b
    rst $38
    rra
    rra
    inc sp
    rst $38
    ccf
    ccf
    ld c, c
    rst $08
    ccf
    ccf
    add [hl]
    add a
    rra
    rra
    ld [bc], a
    inc bc
    ld c, $0e
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_4e66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_4e7c:
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0db_4e66

jr_0db_4e86:
    nop
    nop
    and b
    ldh [rP1], a
    nop
    jr c, jr_0db_4e86

    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc bc
    rst $38
    ret nz

    ret nz

    ld a, [bc]
    rst $38
    jr nz, jr_0db_4e7c

    ld [$10ff], sp
    ldh a, [$0c]
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    db $10
    ldh a, [rIE]
    rst $38
    and b
    ldh [rIE], a
    rst $38
    and b
    ldh [$7f], a
    rst $38
    ld b, b
    ret nz

    ccf
    rst $38
    ld b, b
    ret nz

    ld e, $ff
    add b
    add b
    adc c
    rst $38
    nop
    nop
    db $76
    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld sp, hl
    ld bc, $0601
    rst $38
    ld [bc], a
    inc bc
    ld l, h
    di
    inc b
    rlca
    ld a, [$05fd]
    rlca
    cp $ff
    dec b
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $fc01
    rst $38
    nop
    nop
    rst $38
    db $fc
    nop
    nop
    reti


    cp $01
    ld bc, $ff8c
    ld bc, $8701
    rst $38
    ld [bc], a
    inc bc
    adc l
    rst $38
    ld [bc], a
    inc bc
    ld e, b
    rst $38
    ld bc, $3001
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld c, c
    ld a, a
    nop
    nop
    add a
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld a, [bc]
    rrca
    ld [$11f8], sp
    rra
    db $10
    ldh a, [$3b]
    ccf
    ldh [$e0], a
    cpl
    ccf
    add b
    add b
    scf
    ccf
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld [hl], $3e
    nop
    nop
    ld e, $1e
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
    nop
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
    inc e
    db $fc
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld bc, $80fe
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b

jr_0db_4ff8:
    nop
    rst $38
    adc b
    adc b
    add b
    rst $38
    cp h
    or h
    ld b, c
    rst $38
    ld a, h
    ld b, h
    ld a, $fe
    db $fc
    db $e4
    sbc l
    ld a, l
    ld hl, sp+$38
    rst $18
    ld a, $f0
    db $10
    cp [hl]
    rst $38
    ld h, b
    and b
    rst $38
    rst $38
    jr nz, jr_0db_4ff8

    ld a, a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    di
    rst $38
    add b
    add b
    rst $08
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $bf01
    cp a
    inc bc
    inc bc
    pop hl
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    rst $38
    ldh [rIF], a
    rrca
    rst $28
    ldh a, [rIF]
    rrca
    db $f4
    ei
    rlca
    rlca
    ei
    rst $38
    rlca
    rlca
    adc d
    or $02
    inc bc
    dec a
    db $e3
    inc b
    rlca
    dec c
    di
    inc b
    rlca
    dec a
    ei
    inc b
    rlca
    scf
    db $eb
    ld b, $07
    ld b, $ff
    rlca
    rlca
    dec b
    cp $03
    inc bc
    adc c
    cp $03
    inc bc
    db $fd
    cp $01
    ld bc, $fffc
    ld bc, $fc01
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    add hl, sp
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
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    ret nz

    ret nz

    ld b, c
    pop bc
    ldh [$e0], a
    ld a, [c]
    inc sp
    ldh [$e0], a
    db $ed
    ld a, $a0
    ld h, b
    ei
    db $ec
    ld b, b
    ret nz

    ld a, [hl]
    ld a, c
    add b
    add b
    dec a
    dec sp
    nop
    nop
    ld a, d
    ld a, [hl]
    nop
    nop
    cp h
    db $fc
    nop
    nop
    ld e, b
    cp b
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
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
    ld h, b
    ldh [rP1], a
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    jr jr_0db_5244

    nop
    nop
    inc a
    inc a
    ld bc, $fe01
    cp $03
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $20
    ld hl, sp+$07
    rlca
    rst $38
    ldh a, [rTAC]
    rlca
    db $f4
    ei

jr_0db_5244:
    dec bc
    rrca
    di
    rst $08
    dec bc
    rrca
    dec c
    ei
    ld a, [bc]
    rrca
    inc bc
    db $fd
    ld a, [bc]
    rrca
    inc bc
    rst $38
    ld [$020f], sp
    db $fd
    add hl, bc
    rrca
    nop
    rst $38
    add hl, bc
    rrca
    nop
    rst $38
    add hl, bc
    rrca
    add b
    rst $38
    dec b
    rlca
    ld [c], a
    rst $38
    inc b
    rlca
    cp $ff
    ld [bc], a
    inc bc
    cp $ff
    ld bc, $fe01
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    jr c, jr_0db_52bf

    nop
    nop
    db $10
    rra
    nop
    nop
    add hl, sp
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
    rrca
    rrca
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
    nop
    nop
    nop

jr_0db_52bf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    ld e, $12
    ld a, b
    ld hl, sp+$3e
    ld [hl+], a
    rst $18
    ccf
    ld e, h
    ld h, h
    db $dd
    ld a, $88
    ld hl, sp-$01
    rst $38
    db $10
    ldh a, [$1f]
    ld e, $30
    ret nc

    ld c, $0f

jr_0db_530e:
    ldh [$60], a
    dec bc
    rrca
    ret nz

    ret nz

    sbc l
    sub e
    add b
    add b
    xor a
    or c
    nop
    nop
    sbc $e2
    nop
    nop
    db $f4
    adc h
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    jr nz, jr_0db_530e

    nop
    nop
    ld b, b
    ret nz

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
    ld h, b
    ldh [rP1], a
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    ld h, b
    ld h, b
    nop
    nop
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$08
    rrca
    rrca
    cp $fe
    rra
    rra
    sbc l
    db $e3
    rra
    rra
    rst $38
    ret nz

    rra
    rra
    sub e
    db $ec
    ld l, $3f
    rrca
    rst $38
    inc l
    ccf
    inc b
    db $fc
    inc l
    ccf
    ld [bc], a
    cp $2c
    ccf
    ld [bc], a
    cp $26
    ccf
    ld [bc], a
    cp $27
    dec a
    ld [bc], a
    cp $25
    ld a, $83
    rst $38
    ld h, $3f
    ld b, a
    cp $17
    rra
    ei
    db $fc
    inc de
    rra
    ld sp, hl
    cp $0b
    rrca
    ld hl, sp-$01
    rlca
    rlca
    ld sp, hl
    rst $38
    inc bc
    inc bc
    ld a, [$01fe]
    ld bc, $fff1
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr jr_0db_5430

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_5430:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_5464:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0db_5494

    nop
    nop
    ld [hl], b
    ld d, b
    ldh [$e0], a
    ld hl, sp-$78
    ld a, l
    db $fd
    ld [hl], b
    sub b
    db $76
    ei
    jr nz, jr_0db_5464

    db $fc
    rst $38
    ld b, b
    ret nz

    ld a, h
    ld a, e
    ret nz

    ld b, b
    dec sp
    dec a
    add b
    add b
    cpl
    ccf
    nop
    nop

jr_0db_5494:
    db $76
    ld c, [hl]
    nop
    nop
    cp h
    call nz, RST_00
    ld a, b
    adc b
    nop
    nop
    ret nc

    jr nc, jr_0db_54a3

jr_0db_54a3:
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
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
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    ld c, $0f
    nop
    nop
    ld e, $1f
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $7f01
    rst $38
    ld [bc], a
    inc bc
    rst $38
    ld a, a
    dec b
    ld b, $ff
    ld a, a
    dec b
    ld b, $fe
    ccf
    inc bc
    inc bc
    ld h, e
    sbc a
    dec b
    rlca
    add $fe
    rlca
    dec b
    rst $28
    rst $38
    inc bc
    ld [bc], a
    ld a, a
    rst $18
    ld bc, $fe01
    ld a, $00
    nop
    db $fc
    db $fc
    nop
    nop
    jr jr_0db_55ac

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_55ac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rra
    ldh a, [$f0]

jr_0db_55f8:
    ccf
    ccf
    add sp, -$08
    ld a, a
    ld a, a
    db $e4
    db $fc
    jp $e4ff


    db $fc
    add c
    rst $38
    db $f4
    db $ec
    ld bc, $f4ff
    call z, $ff01
    add sp, -$68
    ld bc, $d0ff
    jr nc, jr_0db_5616

    rst $38

jr_0db_5616:
    jr nz, jr_0db_55f8

    inc bc
    cp $c0
    ret nz

    ld b, $fd
    add b
    add b
    rrca
    rst $30
    nop
    nop
    adc [hl]
    ld a, [$0000]
    call nc, Call_000_00f4
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
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
    rst $38
    cp a
    ld bc, $ff01
    ccf
    ld bc, $ff01
    rra
    ld bc, $bf01
    rst $08
    ld [bc], a
    inc bc
    rst $30
    rst $30
    inc bc
    ld [bc], a
    ei
    ei
    ld bc, $b801
    ld l, b
    nop
    nop
    ldh a, [$90]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e001
    ldh [rTAC], a
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ld hl, sp-$08
    rra
    rra
    db $f4
    db $fc
    ccf
    ccf
    ld a, [c]
    cp $61
    ld a, a
    ld a, [c]
    cp $c0
    rst $38
    ld a, [$80f6]
    rst $38
    ld a, [$00e6]
    rst $38
    db $f4
    call z, $ff00
    add sp, -$68
    nop
    rst $38
    sub b
    ldh a, [rSB]
    rst $38
    ldh [$60], a
    inc bc
    cp $40
    ret nz

    add a
    ei
    add b
    add b
    rst $00
    db $fd

jr_0db_57a6:
    nop
    nop
    ld [$00fa], a
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nc, jr_0db_57a6

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
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
    ld a, [hl]
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
    cp a
    ld hl, sp+$00
    nop
    add a
    db $fc
    nop
    nop
    add e
    db $fc
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
    ld b, e
    ld a, a
    nop
    nop
    ld b, e
    ld a, [hl]
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add hl, hl
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
    rrca
    dec bc
    nop
    nop
    rlca
    inc b
    nop
    nop
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
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
    ret nz

    ld b, b
    nop
    nop

jr_0db_5900:
    and b
    ld h, b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ret nc

    jr nc, jr_0db_590b

jr_0db_590b:
    nop
    ld a, b
    sbc b
    nop
    nop
    rst $28
    rra
    add b
    add b
    rst $08
    ccf
    ret nz

    ret nz

    db $fd
    cp a
    ret nz

    ret nz

    ld a, h
    ei
    jr nz, jr_0db_5900

    xor $f1
    and b
    ld h, b
    rst $38
    ld [c], a
    ld b, b
    ret nz

    rst $38
    rst $20
    add b
    add b
    rst $30
    rst $28
    nop
    nop
    adc $f2
    nop
    nop
    db $fc
    call nz, RST_00
    cp $0e
    nop
    nop
    cp $7e
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh [$e0], a
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
    ld c, $0e
    nop
    nop
    rra
    rra
    nop
    nop
    rst $38
    rst $38
    ld bc, $fe01
    cp $03
    inc bc
    di
    rst $38
    inc bc
    inc bc
    ei
    db $fc
    dec b
    rlca
    pop hl
    cp $05
    rlca
    ret nz

    rst $38
    inc b
    rlca
    ret nz

    rst $38
    inc b
    rlca
    ret nz

    cp a
    inc b
    rlca
    and b
    rst $18
    inc b
    rlca
    ret nc

    rst $28
    ld [bc], a
    inc bc
    ld l, [hl]
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $7f01
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, a
    ld e, [hl]
    nop
    nop
    ccf
    jr nz, jr_0db_5a01

jr_0db_5a01:
    nop
    ld a, a
    ld [hl], e
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
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_5a7a:
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
    ld h, b
    ldh [$c0], a
    ret nz

    pop de
    ld sp, $60a0
    rst $38
    ld e, $e0
    jr nz, jr_0db_5af0

    cp h
    ret nz

    ld b, b
    ccf
    ld hl, sp-$80
    add b
    ld a, $f1
    ld b, b
    ret nz

    ld a, l
    ld [c], a
    ld b, b
    ret nz

    cp [hl]
    push bc
    add b
    add b
    ld a, a
    adc a
    nop
    nop
    xor $1e
    nop
    nop
    ld e, h
    xor h
    nop
    nop
    jr c, jr_0db_5a7a

    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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

jr_0db_5af0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    ld bc, $fe01
    cp $03
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $20
    ld hl, sp+$07
    rlca
    ldh [rIE], a
    dec bc
    rrca
    ret nz

    rst $38
    dec bc
    rrca
    add b
    rst $38
    add hl, bc
    rrca
    ld b, b
    cp a
    add hl, bc
    rrca
    ldh [$1f], a
    add hl, bc
    rrca
    ld [hl], b
    adc a
    add hl, bc
    rrca
    cp h
    rst $00
    inc b
    rlca
    rst $08
    rst $38
    inc b
    rlca
    cp $ff
    inc b
    rlca
    rst $38
    cp $02
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    cp $ff
    ld bc, $fc01
    rst $38
    nop
    nop
    rst $38
    cp h
    nop
    nop
    rst $38
    ret nz

    ld bc, $ff01
    rst $20
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ldh [$80], a
    add b
    pop de
    ld sp, $40c0
    rst $38
    ld e, $e0
    jr nz, jr_0db_5c64

    cp h
    ret nz

    ld b, b
    ccf
    ld hl, sp-$80
    add b
    ld a, $f1
    ld b, b
    ret nz

    ld a, l
    ld [c], a
    ld b, b
    ret nz

    cp $c5
    add b
    add b
    ld a, a
    adc a
    nop
    nop
    xor $1e
    nop
    nop
    call c, Call_000_0024
    nop
    cp b
    ld c, b
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
    nop
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

jr_0db_5c64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    ld l, $3f
    nop
    nop
    ld b, [hl]
    ld a, a
    nop
    nop
    add d
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $0101
    rst $38
    inc bc
    inc bc
    inc bc
    rst $38
    rra
    rra
    add $ff
    ld a, $3f
    ld l, h
    rst $38
    ld a, d
    ld a, a
    ld e, b
    rst $18
    ld l, e
    ld a, a
    adc b
    adc a
    cpl
    ccf
    ld [$1c0f], sp
    inc e
    ld c, $0f
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc sp
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld h, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr jr_0db_5d38

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_5d38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    nop
    or b
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    db $e4
    db $fc
    nop
    nop
    ld a, [$00fe]
    nop
    dec c
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    add b
    add b
    ld bc, $40ff
    ret nz

    nop
    rst $38
    and b
    ldh [rP1], a
    rst $38
    sub b
    ldh a, [rP1]
    rst $38
    ret z

    ld hl, sp+$00
    rst $38
    add sp, -$08
    add c
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld hl, sp-$08
    rra
    rst $38
    db $fc
    db $fc
    rrca
    rst $38
    db $fc
    db $fc
    rlca
    rst $38
    db $fc
    db $fc
    rlca
    rst $38
    ld hl, sp-$08
    dec bc
    ei
    ldh a, [$f0]
    db $10
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    dec b
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
    inc b
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
    inc b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    pop af
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0db_5ecc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_5ecc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    call nz, Call_000_00fc
    nop
    ld [c], a
    cp $00
    nop
    rst $38
    pop af
    nop
    nop
    rst $20
    ld hl, sp-$80
    add b
    jp $c0fc


    ret nz

    ret nz

    rst $38
    ldh [$e0], a
    add b
    rst $38
    ldh [$e0], a
    add b
    rst $38
    ld [hl], b
    or b
    ret nz

    cp a
    ld [hl], b
    ldh a, [$e0]
    sbc a
    ld h, b
    and b
    or b
    rst $08
    ret nz

    ld b, b
    db $db
    rst $38
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    cp $ff
    add b
    add b
    cp $ff
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    dec sp
    rst $38
    ldh [$e0], a
    sub e
    xor $50
    ldh a, [$7f]
    jp $d0b0


    rst $18
    pop hl
    ldh a, [$d0]
    cpl
    ld sp, $e0a0
    rra
    rra
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
    inc c
    inc c
    nop
    nop
    ld e, $1e
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    di
    db $fc
    inc bc
    inc bc
    rst $38
    ld hl, sp+$03
    inc bc
    ei
    db $fc
    dec b
    rlca
    ld sp, hl
    and $05
    rlca
    add [hl]
    db $fd
    dec b
    rlca
    ld bc, $05fe
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04fe
    rlca
    add b
    rst $38
    inc b
    rlca
    add b
    rst $38
    inc b
    rlca
    ret nz

    rst $38
    ld [bc], a
    inc bc
    pop af
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld bc, $7f01
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    sbc a
    cp $00
    nop
    adc a
    db $fc
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    inc a
    ccf
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
    rlca
    rlca
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
    nop
    nop
    nop
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
    and b
    ld h, b
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh [rNR41], a
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
    ld h, b
    ldh [rP1], a
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld hl, sp-$68
    nop
    nop
    ld hl, sp-$28

jr_0db_60b2:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [$60], a
    nop
    nop
    and b
    ld h, b
    nop
    nop
    jr nc, jr_0db_60b2

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    inc c
    inc c
    nop
    nop
    ld e, $1e
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    di
    db $fc
    inc bc
    inc bc
    rst $38
    ld hl, sp+$03
    inc bc
    ei
    db $fc
    dec b
    rlca
    ld sp, hl
    rst $20
    dec b
    rlca
    add [hl]
    db $fd
    dec b
    rlca
    ld bc, $05fe
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04fe
    rlca
    add b
    rst $38
    inc b
    rlca
    add b
    rst $38
    inc b
    rlca
    ret nz

    rst $38
    ld [bc], a
    inc bc
    pop af
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld bc, $7f01
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    sbc a
    cp $00
    nop
    adc a
    db $fc
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    inc a
    ccf
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
    rlca
    rlca
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
    nop
    nop
    nop
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
    and b
    ld h, b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nc

    jr nc, jr_0db_620b

jr_0db_620b:
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld a, b
    add sp, $00
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld hl, sp-$68
    nop
    nop
    ld hl, sp-$28

jr_0db_6232:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [$60], a
    nop
    nop
    and b
    ld h, b
    nop
    nop
    jr nc, jr_0db_6232

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    ld a, b
    ld a, b
    ccf
    ccf
    add h
    db $fc
    ld d, [hl]
    ld l, c
    db $f4
    db $ec
    ld a, a
    ld b, b
    cp h
    db $fc
    ld l, e
    ld [hl], a
    cp l
    db $fd
    add e
    rst $38
    rst $38
    rst $38
    inc bc
    cp $7f
    sbc a
    nop
    rst $38
    rst $18
    ccf
    nop
    rst $38
    rst $38
    ccf
    add b
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $18
    ccf
    db $fc
    rst $38
    cp a
    rst $18
    jr @+$01

    ld a, a
    ld a, a
    db $10
    rst $38
    inc bc
    inc bc
    jr @+$01

    inc bc
    inc bc
    adc b
    rst $38
    ld bc, $f701
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $6101
    rst $38
    ld bc, $1e01
    cp $03
    inc bc
    inc c
    db $fc
    inc bc
    inc bc
    ld [$03f8], sp
    inc bc
    or b
    ldh a, [rSB]
    ld bc, $e0e0
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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    dec sp
    dec a
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ld a, d
    ld l, [hl]
    nop
    nop
    cp $fe
    add b
    add b
    db $f4
    db $fc
    add e
    add e
    ld hl, sp+$38
    db $fd
    cp $f0
    db $10
    ld a, c
    cp $e0
    jr nz, jr_0db_6409

    rst $38
    ret nz

    ld b, b
    ld a, [hl]
    rst $38
    add b
    add b
    ld a, a
    rst $38

jr_0db_6396:
    nop
    nop
    cp $fe

jr_0db_639a:
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    jr z, jr_0db_639a

    nop
    nop
    jr nc, jr_0db_6396

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$e0], a
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

jr_0db_6409:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc e
    ld a, b
    ld a, b
    ld l, $3e
    add h
    db $fc
    ld a, a
    ld a, a
    ld [bc], a
    cp $ff
    sbc a
    ld bc, $fdff
    dec c
    nop
    rst $38
    rst $30
    rla
    nop
    rst $38
    rst $08
    ccf
    nop
    rst $38
    ld c, a
    cp a
    add b
    rst $38
    rst $08
    cp a
    pop bc
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    ld c, a
    ld a, a
    db $fc
    rst $38
    daa
    ccf
    jr @+$01

    rra
    rra
    db $10
    rst $38
    inc bc
    inc bc
    jr @+$01

    inc bc
    inc bc
    adc b
    rst $38
    ld bc, $f701
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    add c
    rst $38
    inc b
    rlca
    ld h, [hl]
    cp $06
    rlca
    inc e
    db $fc
    ld b, $07
    ld [$07f8], sp
    rlca
    db $10
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    dec sp
    dec a
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ld a, d
    ld l, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    db $f4
    db $fc
    inc bc
    inc bc
    ld hl, sp+$38
    db $fd
    cp $f0
    db $10
    ld sp, hl

jr_0db_650d:
    cp $e0
    jr nz, jr_0db_650d

    rst $38
    ret nz

    ld b, b
    cp $ff
    add b
    add b
    rst $38
    rst $38

jr_0db_651a:
    nop
    nop
    cp $fe

jr_0db_651e:
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    jr z, jr_0db_651e

    nop
    nop
    jr nc, jr_0db_651a

    nop
    nop
    ld h, b
    ldh [rP1], a
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
    ld a, b
    ld a, b
    nop
    nop
    add h
    db $fc
    ld bc, $0201
    cp $01
    ld bc, $ff01
    ld bc, $0001
    rst $38
    rlca
    rlca
    nop
    rst $38
    rra
    rra
    nop
    rst $38
    cpl
    ccf
    add b
    rst $38
    cpl
    ccf
    pop bc
    rst $38
    ld l, a
    ld e, a
    rst $38
    rst $38
    ld l, a
    ld e, a
    db $fc
    rst $38
    ld h, a
    ld e, a
    jr @+$01

    ld [hl], a
    ld c, a
    db $10
    rst $38
    ccf
    ccf
    jr @+$01

    dec bc
    dec bc
    adc b
    rst $38
    ld bc, $f701
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    add c
    rst $38
    inc b
    rlca
    ld h, [hl]
    cp $06
    rlca
    inc e
    db $fc
    ld b, $07
    ld [$07f8], sp
    rlca
    db $10
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    dec sp
    dec a
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ld a, d
    ld l, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    db $f4
    db $fc
    inc bc
    inc bc
    ld hl, sp+$38
    db $fd
    cp $f0
    db $10
    ld sp, hl

jr_0db_668d:
    cp $e0
    jr nz, jr_0db_668d

    rst $38
    ret nz

    ld b, b
    cp $ff
    add b
    add b
    rst $38
    rst $38

jr_0db_669a:
    nop
    nop
    cp $fe

jr_0db_669e:
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    jr z, jr_0db_669e

    nop
    nop
    jr nc, jr_0db_669a

    nop
    nop
    ld h, b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    di
    db $fc
    inc bc
    inc bc
    rst $38
    ld hl, sp+$03
    inc bc
    ei
    db $fc
    dec b
    rlca
    ld sp, hl
    rst $20
    dec b
    rlca
    add b
    rst $38
    dec b
    rlca
    nop
    rst $38
    dec b
    rlca
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    add b
    rst $38
    inc b
    rlca
    add b
    rst $38
    inc b
    rlca
    ret nz

    rst $38
    ld [bc], a
    inc bc
    pop af
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld bc, $7f01
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    sbc a
    cp $00
    nop
    adc a
    db $fc
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    inc a
    ccf
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
    rlca
    rlca
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
    nop
    nop
    nop
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
    and b
    ld h, b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nc

    jr nc, jr_0db_698b

jr_0db_698b:
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld a, b
    add sp, $00
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld hl, sp-$68
    nop
    nop
    ld hl, sp-$28

jr_0db_69b2:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [$60], a
    nop
    nop
    and b
    ld h, b
    nop
    nop
    jr nc, jr_0db_69b2

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    ld c, $0e
    nop
    nop
    dec e
    inc de
    nop
    nop
    ccf
    add hl, sp
    ld bc, $fe01
    db $fd
    inc bc
    inc bc
    xor $df
    rlca
    rlca
    jp hl


    rst $10
    rlca
    rlca
    ld hl, sp-$11
    rlca
    rlca
    db $fc
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $ff01
    ld hl, sp+$00
    nop
    rst $00
    db $fc
    nop
    nop
    add e
    db $fc
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
    ld b, e
    ld a, a
    nop
    nop
    inc hl
    ld a, $00
    nop
    db $10
    rra
    nop
    nop
    add hl, bc
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_6aea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    nop
    jr nz, jr_0db_6aea

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld e, h
    db $fc
    nop
    nop
    ld b, d
    cp $00
    nop
    or c
    ld a, a
    nop
    nop
    ld c, b
    cp a
    add b
    add b
    call nz, $c03f
    ret nz

    jp $a03e


    ld h, b
    rst $30
    cp e
    ldh [rNR41], a
    ld a, e
    rst $38
    ldh [$a0], a
    ei
    rst $30
    ret nz

    ret nz

    rst $30
    ld sp, hl
    add b
    add b
    db $fd
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0db_6b82

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0db_6b82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    dec bc
    inc c
    nop
    nop
    inc sp
    inc a
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $7c01
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    inc b
    rlca
    jr @+$01

    ld [$080f], sp
    rst $38
    db $10
    rra
    inc b
    rst $38
    inc e
    rra
    inc [hl]
    rst $38
    ld a, $3f
    jp z, Jump_0db_7fcf

    ld a, a
    dec b
    rlca
    cp $fe
    ld [bc], a
    inc bc
    db $fc
    db $fc
    ld [bc], a
    inc bc
    ld a, h
    ld a, h
    dec b
    ld b, $38
    jr c, jr_0db_6d8e

    inc c
    nop
    nop
    dec de
    inc e
    nop
    nop
    dec c
    ld c, $00
    nop
    rlca
    rlca
    nop
    nop

jr_0db_6d8e:
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
    jr nc, jr_0db_6e0e

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
    inc e
    db $fc
    nop
    nop
    ret c

    jr c, jr_0db_6def

jr_0db_6def:
    nop
    ret nc

    jr nc, jr_0db_6df3

jr_0db_6df3:
    nop
    and b
    ld h, b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ld b, b
    ret nz

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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a

jr_0db_6e0e:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    add b
    rst $08
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    ld a, a
    ldh [$e0], a
    cp a
    ld a, a
    ret nz

    ret nz

    rst $18
    ccf
    add b
    add b
    rst $18
    ccf
    nop
    nop
    ld l, $ee
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    dec bc
    inc c
    nop
    nop
    dec sp
    inc a
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $7c01
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    inc b
    rlca
    jr @+$01

    ld c, $0f
    ld [$1fff], sp
    rra
    inc h
    rst $38
    rrca
    rrca
    call nc, $07df
    rlca
    adc d
    adc a
    inc bc
    inc bc
    dec b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    ld b, $00
    nop
    dec c
    ld c, $00
    nop
    ld b, $07
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    and b
    ld h, b
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
    add b
    add b
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
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    add b
    rst $08
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    ld a, a
    ldh [$e0], a
    cp a
    ld a, a
    ret nz

    ret nz

    rst $18
    ccf
    add b
    add b
    rra
    rst $38
    nop
    nop
    xor $ee
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
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    jr nc, jr_0db_707b

    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $fc01
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    inc l
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b

jr_0db_707b:
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld e, $1f
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
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_70e6:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0db_70ee:
    nop
    nop
    ldh a, [$f0]

jr_0db_70f2:
    nop
    nop
    jr c, jr_0db_70ee

jr_0db_70f6:
    nop
    nop
    jr jr_0db_70f2

    nop
    nop
    jr jr_0db_70f6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0db_70e6

    nop
    nop
    ld b, b
    ret nz

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
    inc b
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    add b
    rst $08
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    ld l, $ee
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
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    jr nc, @+$41

    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    dec b
    ld b, $fc
    rst $38
    dec bc
    inc c
    ld hl, sp+$7f
    dec bc
    inc c
    jr c, @+$01

    dec b
    ld b, $98
    ld a, a
    ld [bc], a
    inc bc
    ld l, h
    rst $38
    ld bc, $9401
    sbc a
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec b
    rlca
    nop
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
    db $10
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr jr_0db_7230

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_7230:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_725a:
    nop
    nop
    nop
    nop

jr_0db_725e:
    nop
    nop
    nop
    nop

jr_0db_7262:
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0db_725a

    nop
    nop

jr_0db_727c:
    jr nz, jr_0db_725e

    nop
    nop
    jr nz, jr_0db_7262

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
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [$30]
    jr nc, jr_0db_729d

    ld hl, sp+$78
    ld a, b
    inc b
    db $fc
    db $fc
    db $fc
    rlca

jr_0db_729d:
    rst $38
    ld a, h
    sbc h
    ld b, $ff
    ld hl, sp+$18
    inc bc
    cp $e8
    jr @+$09

    rst $38
    ret nc

    jr nc, jr_0db_727c

    rst $38
    and b
    ldh [rIE], a
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    ld l, $ee
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0db_7368

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $03
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    ld bc, $f001
    rst $38
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    dec b
    ld b, $b8
    ld a, a
    dec c
    ld c, $f8
    rra
    rrca
    inc c
    ret z

    ccf
    dec c
    ld c, $b4
    ld a, a

jr_0db_7368:
    ld b, $07
    set 1, a
    inc bc
    inc bc
    add h
    add a
    ld bc, $0201
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
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
    ld [$000f], sp
    nop
    inc e
    rra
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    db $fc
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_73ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld b, $06
    jr nz, jr_0db_73ee

    rrca
    rrca
    db $10
    ldh a, [$1f]
    rra
    ld [$63f8], sp
    ld a, a
    inc c
    db $fc
    sbc e
    rst $20
    rrca
    rst $38
    ld a, d
    add [hl]
    ld c, $ff
    db $f4
    inc c
    rrca
    rst $38

jr_0db_7426:
    ld l, b
    sbc b
    rra
    rst $38
    sub b
    ldh a, [rIE]
    rst $38
    and b
    ldh [$7f], a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    rrca
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    jr nz, jr_0db_7426

    nop
    nop
    ld b, b
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
    jr nc, jr_0db_74e8

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $03
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    add c
    add c
    ldh a, [rIE]
    add d
    add e
    ld [hl], b
    rst $38
    ld b, $07
    cp b
    ld a, a
    ld b, $07
    add sp, $1f
    ld b, $07
    ret z

    ccf
    inc bc
    inc bc
    ld [hl], h
    rst $38

jr_0db_74e8:
    ld bc, $eb01
    rst $28
    nop
    nop
    add h
    add a
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $07
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
    nop
    nop

jr_0db_756e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0db_756e

    nop
    nop
    db $10
    ldh a, [rNR32]
    inc e
    ld [$3ef8], sp
    ld a, $0c
    db $fc
    sbc $fe
    rrca
    rst $38
    ld a, $ce
    ld c, $ff
    db $f4
    inc c
    rrca
    rst $38
    ld l, b
    sbc b
    rra
    rst $38
    sub b
    ldh a, [rIE]
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    rrca
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    and b
    ldh [rP1], a
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
    jr nc, jr_0db_7668

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $03
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    ld bc, $f001
    rst $38
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    inc b
    rlca
    jr c, @+$01

    inc b
    rlca
    jr @+$01

    ld c, $0f
    ld [$0fff], sp
    rrca
    inc d
    rst $38

jr_0db_7668:
    rrca
    rrca
    db $eb
    rst $28
    rlca
    rlca
    add l
    add a
    inc bc
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0db_76ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0db_76ee

    ldh [$e0], a

jr_0db_7710:
    ld de, $f0f1
    ldh a, [$0a]
    ei
    jr c, jr_0db_7710

    inc c
    rst $38
    jr @-$06

    ld [$18ff], sp
    ld hl, sp+$0c
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    db $10
    ldh a, [rIE]
    rst $38
    and b
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    ccf
    ccf
    nop
    nop
    ld e, $1e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    nop
    nop
    dec sp
    inc a
    nop
    nop
    ld [hl], a
    ld a, b
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fdfe
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    ld bc, $f001
    rst $38
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    inc b
    rlca
    jr c, @+$01

    inc b
    rlca
    jr @+$01

    ld [$080f], sp
    rst $38
    ld c, $0f
    inc d
    rst $38
    rra
    rra
    dec hl
    rst $28
    ccf
    ccf
    ld b, l
    rst $00
    ccf
    ccf
    add d
    add e
    rra
    rra
    ld bc, $0e01
    ld c, $01
    ld bc, $0000
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
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

    nop
    nop
    ldh [$e0], a

jr_0db_786e:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh [$60], a
    nop
    nop

jr_0db_787c:
    ld b, b
    ret nz

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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0db_786e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    add hl, bc
    ld sp, hl
    ret nz

    ret nz

    ld c, $ff
    jr nz, jr_0db_787c

    ld [$10ff], sp
    ldh a, [$0c]
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    db $10
    ldh a, [$1f]
    rst $38
    db $10
    ldh a, [rIE]
    rst $38
    and b
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    add b
    add b
    cp a
    ld e, a
    nop
    nop
    cp $0e
    nop
    nop
    ld l, h
    sbc h
    nop
    nop
    sub b
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_0db_7fcf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
