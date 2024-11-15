SECTION "ROM Bank $0d2", ROMX[$4000], BANK[$d2]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    ld bc, $fc01
    or e
    inc bc
    ld [bc], a
    db $fc
    inc bc
    rlca
    inc b
    db $fc
    dec bc
    rlca
    inc b
    db $fc
    adc e
    rlca
    nop
    cp $89
    inc bc
    nop
    rst $38
    ld d, e
    nop
    inc bc
    ld a, h
    db $d3
    nop
    nop
    ccf
    ld [hl], $00
    nop
    inc a
    inc sp
    nop
    nop
    jr jr_0d2_4088

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_4088:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0d2_40c0:
Jump_0d2_40c0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0d2_40e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    rra
    and $c0
    ret nz

    rra
    ldh [$e0], a
    jr nz, jr_0d2_4130

    add sp, -$10
    db $10
    rra
    add sp, -$10
    sub b
    ccf
    ret z

    ldh a, [$80]
    rst $38
    ld h, l
    ldh [rP1], a
    rra
    push hl
    nop
    ldh [$7e], a
    or [hl]
    nop
    nop
    ld e, $e6
    nop
    nop
    inc c
    inc c
    nop
    nop

jr_0d2_4130:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    ld a, h
    ld [hl], e
    ld bc, $fc01
    add e
    inc bc
    ld [bc], a
    db $fc
    dec bc
    inc bc
    ld [bc], a
    db $fc
    dec hl
    inc bc
    nop
    cp $49
    inc bc
    ld [bc], a
    rst $38
    ld d, e
    inc bc
    ld [bc], a
    db $fc
    ld d, e
    inc bc
    ld [bc], a
    rst $38
    db $76
    inc bc
    nop
    db $fc
    di
    inc bc
    nop
    ret c

    ld e, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    nop
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    add b
    add b
    inc bc
    ld bc, $0080
    ld [bc], a
    ld bc, $8000
    nop
    inc bc
    ld b, b
    add b
    nop
    inc bc
    nop
    ldh [rSB], a
    ld [bc], a
    ld b, b
    add b
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    ld e, b
    nop
    nop
    rra
    rst $20
    nop
    nop

jr_0d2_428c:
    rra
    ldh [$c0], a
    ret nz

    rra
    add sp, -$20
    jr nz, @+$21

    ld [$20e0], a
    ccf
    ret


    ldh [rP1], a
    rst $38
    ld h, l
    ldh [rNR41], a
    rra
    push hl
    ldh [rNR41], a
    ld a, a
    or a
    ldh [rNR41], a
    rra
    rst $20
    ldh [$80], a
    dec c
    dec c
    ldh [rP1], a
    ld bc, $e001
    jr nz, @+$03

    ld bc, $20e0
    ld bc, $e001
    jr nz, @+$03

    ld bc, $00e0
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    jr nz, jr_0d2_428c

    ld bc, $0000
    ldh [rP1], a
    inc bc
    nop
    ldh [rSB], a
    nop
    ld b, b
    and b
    ld bc, $4000
    and b
    nop
    ld bc, $40a0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3d
    nop
    nop
    ld a, h
    ld [hl], e
    ld bc, $fc01
    add e
    inc bc
    ld [bc], a
    db $fc
    dec bc
    inc bc
    ld [bc], a
    db $fc
    dec hl
    inc bc
    nop
    cp $49
    inc bc
    ld [bc], a
    rst $38
    ld d, e
    inc bc
    ld [bc], a
    db $fc
    ld d, e
    inc bc
    ld [bc], a
    rst $38
    db $76
    inc bc
    nop
    db $fc
    di
    inc bc
    nop
    db $fc
    ld h, h
    inc bc
    ld [bc], a
    ret c

    ld e, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    nop
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    add b
    add b
    inc bc
    ld bc, $0080
    ld [bc], a
    ld bc, $8000
    nop
    inc bc
    ld b, b
    add b
    nop
    inc bc
    nop
    ldh [rSB], a
    ld [bc], a
    ld b, b
    add b
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    ld e, b
    nop
    nop
    rra
    rst $20
    nop
    nop

jr_0d2_440c:
    rra
    ldh [$c0], a
    ret nz

    rra
    add sp, -$20
    jr nz, @+$21

    ld [$20e0], a
    ccf
    ret


    ldh [rP1], a
    rst $38
    ld h, l
    ldh [rNR41], a
    rra
    push hl
    ldh [rNR41], a
    ld a, a
    or a
    ldh [rNR41], a
    rra
    rst $20
    ldh [$80], a
    dec c
    dec c
    ldh [rP1], a
    ld bc, $e001
    jr nz, @+$03

    ld bc, $20e0
    ld bc, $e001
    jr nz, @+$03

    ld bc, $00e0
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    jr nz, jr_0d2_440c

    ld bc, $0000
    ldh [rP1], a
    inc bc
    nop
    ldh [rSB], a
    nop
    ld b, b
    and b
    ld bc, $4000
    and b
    nop
    ld bc, $40a0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    ld a, h
    ld [hl], e
    ld bc, $fc01
    add e
    inc bc
    ld [bc], a
    db $fc
    dec bc
    inc bc
    ld [bc], a
    db $fc
    dec hl
    inc bc
    nop
    cp $49
    inc bc
    ld [bc], a
    rst $38
    ld d, e
    inc bc
    ld [bc], a
    db $fc
    ld d, e
    inc bc
    ld [bc], a
    rst $38
    db $76
    inc bc
    nop
    db $fc
    db $d3
    inc bc
    nop
    db $fc
    ld c, h
    inc bc
    ld [bc], a
    db $fc
    ld b, b
    inc bc
    ld [bc], a
    ret c

    ld h, h
    inc bc
    ld [bc], a
    db $e4
    ld a, h
    inc bc
    nop
    db $fc
    ld a, h
    inc bc
    ld [bc], a
    sbc b
    sbc b
    inc bc
    ld bc, $0080
    ld [bc], a
    ld bc, $8000
    nop
    inc bc
    ld b, b
    add b
    nop
    inc bc
    nop
    ldh [rSB], a
    ld [bc], a
    ld b, b
    add b
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    rrca
    nop
    nop
    nop
    cp a
    ld d, b
    nop
    nop
    rra
    rst $20
    nop
    nop

jr_0d2_458c:
    rra
    ldh [$c0], a
    ret nz

    rra
    add sp, -$20
    jr nz, @+$21

    ld [$20e0], a
    ccf
    ret


    ldh [rP1], a
    rst $38
    ld h, l
    ldh [rNR41], a
    rra
    push hl
    ldh [rNR41], a
    ld a, a
    or a
    ldh [rNR41], a
    dec e
    push hl
    ldh [$80], a
    ld bc, $e001
    nop
    ld bc, $e001
    jr nz, @+$03

    ld bc, $20e0
    ld bc, $e001
    jr nz, @+$03

    ld bc, $00e0
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    jr nz, jr_0d2_458c

    ld bc, $0000
    ldh [rP1], a
    inc bc
    nop
    ldh [rSB], a
    nop
    ld b, b
    and b
    ld bc, $4000
    and b
    nop
    ld bc, $40a0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    ld a, h
    ld [hl], e
    ld bc, $fc01
    add e
    inc bc
    ld [bc], a
    db $fc
    dec bc
    inc bc
    ld [bc], a
    db $fc
    dec hl
    inc bc
    nop
    cp $49
    inc bc
    ld [bc], a
    rst $38
    ld d, e
    inc bc
    ld [bc], a
    db $fc
    ld d, e
    inc bc
    ld [bc], a
    rst $38
    db $76
    inc bc
    nop
    db $fc
    di
    inc bc
    nop
    ret c

    ld e, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    nop
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    add b
    add b
    inc bc
    ld bc, $0080
    ld [bc], a
    ld bc, $8000
    nop
    inc bc
    ld b, b
    add b
    nop
    inc bc
    nop
    ldh [rSB], a
    ld [bc], a
    ld b, b
    add b
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld e, [hl]
    nop
    nop
    rra
    rst $20
    nop
    nop

jr_0d2_470c:
    rra
    ldh [$c0], a
    ret nz

    rra
    add sp, -$20
    jr nz, jr_0d2_4734

    ld [$20e0], a
    ccf
    ret


    ldh [rP1], a
    rst $38
    ld h, l
    ldh [rNR41], a
    rra
    push hl
    ldh [rNR41], a
    ld a, a
    or a
    ldh [rNR41], a
    rra
    rst $20
    ldh [$80], a
    rra
    inc de
    ldh [rP1], a
    dec c
    dec c
    ldh [rNR41], a

jr_0d2_4734:
    ld bc, $e001
    jr nz, @+$03

    ld bc, $20e0
    ld bc, $e001
    nop
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    jr nz, jr_0d2_470c

    ld bc, $0000
    ldh [rP1], a
    inc bc
    nop
    ldh [rSB], a
    nop
    ld b, b
    and b
    ld bc, $4000
    and b
    nop
    ld bc, $40a0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, b
    ld c, b
    nop
    nop
    ld e, b
    ld l, b
    nop
    nop
    ld e, b
    ld l, b
    nop
    nop
    ld e, [hl]
    ld l, l
    nop
    nop
    ld a, h
    ld [hl], e
    ld bc, $fc01
    add e
    inc bc
    ld [bc], a
    db $fc
    dec bc
    inc bc
    ld [bc], a
    db $fc
    dec hl
    inc bc
    nop
    cp $49
    inc bc
    ld [bc], a
    rst $38
    ld d, e
    inc bc
    ld [bc], a
    db $fc
    ld d, e
    inc bc
    ld [bc], a
    rst $38
    db $76
    inc bc
    nop
    call c, $03d3
    nop
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    nop
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    add b
    add b
    inc bc
    ld bc, $0080
    ld [bc], a
    ld bc, $8000
    nop
    inc bc
    ld b, b
    add b
    nop
    inc bc
    nop
    ldh [rSB], a
    ld [bc], a
    ld b, b
    add b
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    ld e, b
    nop
    nop
    rra
    rst $20
    nop
    nop

jr_0d2_488c:
    rra
    ldh [$c0], a
    ret nz

    rra
    add sp, -$20
    jr nz, jr_0d2_48b4

    ld [$20e0], a
    ccf
    ret


    ldh [rP1], a
    rst $38
    ld h, l
    ldh [rNR41], a
    rra
    push hl
    ldh [rNR41], a
    ld a, a
    or a
    ldh [rNR41], a
    rra
    push hl
    ldh [$80], a
    rra
    add hl, de
    ldh [rP1], a
    rra
    ld bc, $20e0

jr_0d2_48b4:
    rra
    ld bc, $20e0
    rra
    inc de
    ldh [rNR41], a
    rra
    rra
    ldh [rP1], a
    inc c
    inc c
    ldh [$a0], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    jr nz, jr_0d2_488c

    ld bc, $0000
    ldh [rP1], a
    inc bc
    nop
    ldh [rSB], a
    nop
    ld b, b
    and b
    ld bc, $4000
    and b
    nop
    ld bc, $40a0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0d2_4968

    nop
    nop
    ld a, b
    ld l, b
    nop
    nop
    ld l, b
    ld a, b
    nop
    nop
    ld l, b
    ld d, b
    nop
    nop
    ld b, b
    ld a, b
    nop
    nop
    ld b, b
    ld a, b
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    inc c
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    inc bc
    inc bc
    rst $38
    ret nz

    rlca
    inc b
    rst $38
    rlca
    rlca
    nop
    db $fd
    ld a, [bc]

jr_0d2_4968:
    rlca
    ld [bc], a
    ld hl, sp+$57
    rlca
    rlca
    ld hl, sp-$29
    rlca
    inc b
    ld hl, sp+$57
    rlca
    inc b
    cp b
    cp a
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    add b
    nop
    nop
    inc bc
    ld b, b
    add b
    nop
    inc bc
    nop
    ret nz

    ld bc, $0002
    add b
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    call c, RST_00
    cp $02
    nop
    nop
    cp $00
    nop
    nop
    cp $72
    nop
    nop
    cp $02
    nop
    nop
    cp $00
    nop
    nop
    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    jp nz, Jump_000_20e0

    ld a, a
    and b
    ldh [rP1], a
    ccf
    jp nc, Jump_0d2_40e0

    ccf
    db $d3
    ldh [$e0], a
    ccf
    sub $e0
    jr nz, jr_0d2_4a74

    rst $38
    ldh [rNR41], a
    ld e, $9e
    ret nz

    ret nz

    ld e, $1e
    ret nz

    nop
    inc c
    inc c
    nop
    ret nz

    ld bc, $0000
    ret nz

    ld [bc], a
    ld bc, $c000
    nop
    inc bc
    nop
    ret nz

    nop
    ld bc, $4080
    nop
    ld bc, $4000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_4a74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, $30
    nop
    nop
    ld e, $18
    nop
    nop
    ld e, $0e
    nop
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    ld [hl+], a
    ld a, $00
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    ccf
    ld [bc], a
    nop
    nop
    ld a, $0f
    ld bc, $fc01
    or e
    inc bc
    ld [bc], a
    db $fc
    inc bc
    rlca
    inc b
    db $fc
    dec bc
    rlca
    inc b
    db $fc
    adc e
    rlca
    nop
    cp $89
    inc bc
    nop
    rst $38
    ld d, e
    nop
    inc bc
    ld a, h
    db $d3
    nop
    nop
    ccf
    ld [hl], $00
    nop
    inc e
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, $06
    nop
    nop
    inc a
    inc c
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc h
    nop
    nop
    inc a
    inc h
    nop
    nop
    inc a
    jr nz, jr_0d2_4b83

jr_0d2_4b83:
    nop
    inc a
    inc b
    nop
    nop
    inc a
    jr nz, jr_0d2_4b8b

jr_0d2_4b8b:
    nop
    inc a
    inc h
    nop
    nop
    db $fc
    inc b
    nop
    nop
    cp [hl]
    ld a, b
    nop
    nop
    rra
    and $c0
    ret nz

    rra
    ldh [$e0], a
    jr nz, jr_0d2_4bc0

    add sp, -$10
    db $10
    rra
    add sp, -$10
    sub b
    ccf
    ret z

    ldh a, [$80]
    rst $38
    ld h, l
    ldh [rP1], a
    rra
    push hl
    nop
    ldh [$7e], a
    or [hl]
    nop
    nop
    inc e
    db $e4
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_4bc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    inc hl
    inc e
    nop
    nop
    ld d, c
    ld l, $00
    nop
    ld b, c
    ld a, $00
    nop
    pop bc
    cp a
    ld bc, $e301
    dec e
    ld bc, $fe01
    ld c, a
    inc bc
    ld [bc], a
    cp $25
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $17
    inc bc
    ld [bc], a
    rst $38
    ld c, c
    inc bc
    ld [bc], a
    rst $38
    cpl
    ld bc, $ef01
    rst $38
    nop
    nop
    sbc [hl]
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    inc c
    nop
    nop
    cp $02
    nop
    nop
    cp $11
    nop
    nop
    cp $89
    nop
    nop
    db $fc
    ld b, $00
    nop
    cp $36
    nop
    nop
    cp $9e
    nop
    nop
    ld a, h
    db $ec
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    nop
    ret nz

    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    inc hl
    inc e
    nop
    nop
    ld d, c
    ld l, $00
    nop
    ld b, c
    ld a, $00
    nop
    pop bc
    cp a
    ld bc, $e301
    dec e
    ld bc, $fe01
    ld c, a
    inc bc
    ld [bc], a
    cp $25
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $17
    inc bc
    ld [bc], a
    rst $38
    ld c, c
    inc bc
    ld [bc], a
    rst $38
    cpl
    ld bc, $ff01
    rra
    ld bc, $fe01
    ld c, $00
    nop
    db $fc
    sbc h
    nop
    nop
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ccf
    ld hl, $0000
    rra
    stop
    nop
    rrca
    ld [$0000], sp
    rlca
    dec b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    inc c
    nop
    nop
    cp $02
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    adc b
    add b
    nop
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    ld [hl], $e0
    jr nz, @+$01

    sbc a
    ldh a, [rNR10]
    ld a, h
    db $ec
    ld hl, sp-$80
    ret c

    ld a, b
    ld a, b
    ld e, b
    nop
    ret nz

    ld a, [de]
    inc d
    nop
    add b
    ld de, $000e
    nop
    ld [bc], a
    dec e
    nop
    nop
    dec c
    ld [de], a
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ret nz

    or b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    xor b
    ld d, b
    nop
    nop
    ld d, b
    jr nz, jr_0d2_4edf

jr_0d2_4edf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    inc hl
    inc e
    nop
    nop
    ld d, c
    ld l, $01
    ld bc, $bec1
    inc bc
    inc bc
    pop bc
    cp a
    inc bc
    inc bc
    db $e3
    dec e
    inc bc
    inc bc
    cp $4f
    inc bc
    ld [bc], a
    cp $25
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $17
    inc bc
    ld [bc], a
    rst $38
    ld c, c
    inc bc
    ld [bc], a
    cp $28
    ld bc, $fc01
    db $10
    ld bc, $f801
    ld [$0000], sp
    db $fc
    sbc h
    nop
    nop
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ccf
    ld hl, $0000
    rra
    stop
    nop
    rrca
    ld [$0000], sp
    rlca
    dec b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    inc c
    nop
    nop
    cp $02
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    adc b
    add b
    nop
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    ld [hl], $e0
    jr nz, @+$01

    sbc a
    ldh a, [rNR10]
    ld a, h
    db $ec
    ld hl, sp-$80
    ret c

    ld a, b
    ld a, b
    ld e, b
    nop
    ret nz

    ld a, [de]
    inc d
    nop
    add b
    ld de, $000e
    nop
    ld [bc], a
    dec e
    nop
    nop
    dec c
    ld [de], a
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ret nz

    or b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    xor b
    ld d, b
    nop
    nop
    ld d, b
    jr nz, jr_0d2_505f

jr_0d2_505f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    ld a, a
    ld b, e
    nop
    nop
    ccf
    inc h
    nop
    nop
    rra
    ld [$0000], sp
    inc hl
    inc e
    nop
    nop
    ld d, c
    ld l, $00
    nop
    ld b, c
    ld a, $00
    nop
    pop bc
    cp a
    ld bc, $e301
    dec e
    ld bc, $fe01
    ld c, a
    inc bc
    ld [bc], a
    cp $25
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $17
    inc bc
    ld [bc], a
    rst $38
    ld c, c
    inc bc
    ld [bc], a
    rst $38
    jr z, @+$03

    ld bc, $10ff
    ld bc, $ff01
    ld [$0000], sp
    cp $9d
    nop
    nop
    ld a, a
    inc bc
    nop
    nop
    ccf
    ld hl, $0000
    rra
    stop
    nop
    rrca
    ld [$0000], sp
    rlca
    dec b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    inc c
    nop
    nop
    cp $02
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    adc b
    add b
    nop
    rst $38
    inc b

jr_0d2_518a:
    ret nz

    ld b, b
    rst $38
    ld [hl], $e0
    jr nz, jr_0d2_518a

    sbc c
    ldh a, [rNR10]
    ld [hl], b
    ldh [$f8], a
    add b
    ret nz

    ld h, b
    ld a, b
    ld e, b
    nop
    ret nz

    ld a, [de]
    inc d
    nop
    add b
    ld de, $000e
    nop
    ld [bc], a
    dec e
    nop
    nop
    dec c
    ld [de], a
    nop
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    ret nz

    or b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    xor b
    ld d, b
    nop
    nop
    ld d, b
    jr nz, jr_0d2_51df

jr_0d2_51df:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    jr jr_0d2_5241

jr_0d2_5241:
    nop
    rra
    nop
    nop
    nop
    inc hl
    inc e
    nop
    nop
    ld d, c
    ld l, $00
    nop
    ld b, c
    ld a, $00
    nop
    pop bc
    cp a
    ld bc, $e301
    dec e
    ld bc, $fe01
    ld c, a
    inc bc
    ld [bc], a
    cp $25
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $17
    inc bc
    ld [bc], a
    rst $38
    ld c, c
    inc bc
    ld [bc], a
    rst $38
    cpl
    ld bc, $ff01
    rra
    ld bc, $fe01
    ld c, $00
    nop
    db $fc
    sbc h
    nop
    nop
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ccf
    ld hl, $0000
    rra
    stop
    nop
    rrca
    ld [$0000], sp
    rlca
    dec b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    inc c
    nop
    nop
    cp $02
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    adc b
    add b
    nop
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    ld [hl], $e0
    jr nz, @+$01

    sbc c
    ldh a, [rNR10]
    ld a, [hl]
    ldh [$f8], a
    add b
    call c, Call_0d2_7860
    ld e, b
    nop
    ret nz

    ld a, [de]
    inc d
    nop
    add b
    ld de, $000e
    nop
    ld [bc], a
    dec e
    nop
    nop
    dec c
    ld [de], a
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ret nz

    or b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    xor b
    ld d, b
    nop
    nop
    ld d, b
    jr nz, jr_0d2_535f

jr_0d2_535f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_5390:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc e
    inc e
    rra
    nop
    ld a, $3e
    inc hl
    inc e
    ccf
    add hl, sp
    ld d, c
    ld l, $3f
    jr nc, jr_0d2_5390

    ld a, $1f
    db $10
    pop bc
    cp a
    rrca
    add hl, bc
    db $e3
    dec e
    inc bc
    ld bc, $4ffe
    inc bc
    ld [bc], a
    cp $25
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $17
    inc bc
    ld [bc], a
    rst $38
    ld c, c
    inc bc
    ld [bc], a
    cp $2e
    ld bc, $f001
    db $10
    ld bc, $f801
    ld [$0000], sp
    db $fc
    sbc h
    nop
    nop
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ccf
    ld hl, $0000
    rra
    stop
    nop
    rrca
    ld [$0000], sp
    rlca
    dec b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    inc c
    nop
    nop
    cp $02
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    adc b
    add b
    nop
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    ld [hl], $e0
    jr nz, @+$01

    sbc c
    ldh a, [rNR10]
    ld a, a
    ldh [$f8], a
    add b
    rst $18
    ld h, b
    ld hl, sp+$58
    rrca
    ret nz

    ld a, [$0774]
    add b
    pop af
    xor $03
    inc bc
    ld [c], a
    db $fd
    ld bc, $cd01
    jp nc, RST_00

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
    add b
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    or b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    xor b
    ld d, b
    nop
    nop
    ld d, b
    jr nz, jr_0d2_54df

jr_0d2_54df:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1801
    jr jr_0d2_554a

    ld b, $3c
    inc a
    rrca
    add hl, bc
    ld a, [hl-]
    inc [hl]

jr_0d2_554a:
    rra
    ld [de], a
    add hl, de
    ld e, $3f
    jr nz, jr_0d2_555d

    dec bc
    rst $38
    ld b, b
    rlca
    dec b
    rst $38
    sub b
    inc bc
    inc bc
    rst $38
    jr nz, @+$03

jr_0d2_555d:
    ld bc, $01ff
    nop
    nop
    cp $83
    nop
    nop
    ld a, [hl]
    ld b, l
    nop
    nop
    ld a, $25
    nop
    nop
    ld a, a
    ld h, d
    nop
    nop
    rst $38
    pop de
    nop
    nop
    rst $38
    add h
    nop
    nop
    rst $38
    adc e
    nop
    nop
    cp $b2
    nop
    nop
    ld a, [hl]
    ld h, b
    nop
    nop
    ld a, $36
    nop
    nop
    ld b, $05
    nop
    nop
    ld [bc], a
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add [hl]
    nop
    nop
    rst $28
    ld l, l
    nop
    nop
    rst $38
    jr @-$7e

    add b
    rst $38
    ld [$c0c0], sp
    rst $38
    ld bc, $20e0
    rst $38
    ld b, $e0
    nop
    rst $38
    ld h, e
    ldh a, [$b0]
    rst $38
    sub e
    cp b
    and b
    rra
    rst $28
    ret nz

    call c, Call_0d2_778f
    ret nc

    adc $03
    ei
    sub d
    adc l
    nop
    ld hl, sp+$02
    inc e
    nop
    ldh a, [rP1]
    ld [de], a
    add b
    ld h, b
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
    ret nz

    jr nc, jr_0d2_564b

jr_0d2_564b:
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ld h, b
    sub b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0d2_56c0

    nop
    nop
    jr c, @+$3a

    nop
    nop
    ld a, b
    jr jr_0d2_56b1

jr_0d2_56b1:
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    jr jr_0d2_56b9

jr_0d2_56b9:
    nop
    ld a, h
    inc d
    nop
    nop
    ld a, $22

jr_0d2_56c0:
    nop
    nop
    rra
    ld de, $091f
    rrca
    ld [$697f], sp
    rlca
    inc b
    ld a, a
    ld a, [hl]
    inc bc
    ld [bc], a
    inc b
    inc bc
    add c
    nop
    ld [bc], a
    ld bc, $a063
    ld bc, $1e00
    ld sp, hl
    nop
    nop
    xor l
    ld e, [hl]
    nop
    nop
    call c, Call_000_00af
    nop
    ld a, h
    ld c, e
    nop
    nop
    ld a, $09
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ccf
    ld hl, $0000
    ld a, a
    ld d, c
    nop
    nop
    ld a, a
    ld e, c
    nop
    nop
    ld a, a
    ld c, $00
    nop
    ld a, a
    ld b, e
    nop
    nop
    jr c, jr_0d2_572c

    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_572c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    add a
    add b
    add b
    rst $38
    ld c, b
    ret nz

    ld b, b
    rst $38
    ld d, b
    ret nz

    nop
    rst $38
    ld h, d
    ret nz

    jr nz, @+$01

    sub c
    add b
    ld b, b
    ccf
    ret z

    add b
    add b
    rra
    ld [c], a
    add b
    add b
    rra
    pop hl
    add b
    add b
    rra
    ld [$8080], a
    scf
    call c, RST_00
    db $ec
    ld [hl-], a
    nop
    nop
    ret nc

    ld l, h
    nop
    nop
    ldh a, [rNR23]
    nop
    nop
    ldh [$b0], a
    nop
    nop
    ldh [$c0], a
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
    ld c, $0c
    nop
    nop
    rra
    stop
    nop
    ccf
    jr nz, jr_0d2_583d

jr_0d2_583d:
    nop
    ccf
    ld h, $00
    nop
    ccf
    ld bc, $0000
    ccf
    jr nz, jr_0d2_5849

jr_0d2_5849:
    nop
    ccf
    ld hl, $0000
    ld a, a
    ld c, [hl]
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld b, e
    ld a, l
    nop
    nop
    ld bc, $007f
    nop
    ld b, c
    ld a, $00
    nop
    ld bc, $007f
    nop
    ld b, e
    ld a, l
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, [hl]
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    jr nz, jr_0d2_5879

jr_0d2_5879:
    nop
    ccf
    ld bc, $0000
    ccf
    ld h, $00
    nop
    ccf
    jr nz, jr_0d2_5885

jr_0d2_5885:
    nop
    rra
    stop
    nop
    ld c, $0c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$60], a
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    ccf
    inc hl
    nop
    nop
    ccf
    inc h
    nop
    nop
    ccf
    ld hl, $0000
    ld a, a
    ld c, [hl]
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld b, e
    dec a
    nop
    nop
    ld bc, $007f
    nop
    ld b, c
    ld a, $00
    nop
    ld bc, $007f
    nop
    ld b, e
    dec a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, [hl]
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    inc h
    nop
    nop
    ccf
    inc hl
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rrca
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_5a40:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $e1
    sbc [hl]
    rst $38
    nop
    add $79
    rst $38
    jr nz, jr_0d2_5a40

    cp [hl]

jr_0d2_5a80:
    rst $38
    rst $38
    ld d, $09
    ldh [$60], a
    nop
    ld [$f0f0], sp
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$60], a
    nop
    ld [$ffff], sp
    ld d, $09
    rst $38
    jr nz, jr_0d2_5a80

    cp [hl]
    rst $38
    nop
    add $79
    rst $38
    adc $e1
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    ccf
    inc hl
    nop
    nop
    ccf
    inc h
    nop
    nop
    ccf
    ld hl, $0000
    ld a, a
    ld c, [hl]
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld b, e
    dec a
    nop
    nop
    ld bc, $007f
    nop
    ld b, c
    ld a, $00
    nop
    ld bc, $007f
    nop
    ld b, e
    dec a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, [hl]
    nop
    nop
    ld a, a
    ld h, c
    nop
    nop
    ld a, a
    ld h, h
    nop
    nop
    ccf
    inc hl
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rrca
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_5bc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $e1
    sbc [hl]
    rst $38
    nop
    add $79
    rst $38
    jr nz, jr_0d2_5bc0

    cp [hl]

jr_0d2_5c00:
    rst $38
    rst $38
    ld d, $09
    ldh [$60], a
    nop
    ld [$f0f0], sp
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ldh a, [$50]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ldh a, [rSVBK]
    nop
    ld [$ffff], sp
    ld d, $09
    rst $38
    jr nz, jr_0d2_5c00

    cp [hl]
    rst $38
    nop
    add $79
    rst $38
    adc $e1
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    nop
    nop
    rra
    stop
    nop
    rra
    db $10
    rlca
    rlca
    rst $38
    inc hl
    rlca
    ld b, $ff
    inc h
    rlca
    ld b, $ff
    ld hl, $0707
    rst $38
    ld c, $00
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld b, e
    dec a
    nop
    nop
    ld bc, $007f
    nop
    ld b, c
    ld a, $00
    nop
    ld bc, $007f
    nop
    ld b, e
    dec a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, [hl]
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    inc h
    nop
    nop
    ccf
    inc hl
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rrca
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_5d40:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $e1
    sbc [hl]
    rst $38
    nop
    add $79
    rst $38
    jr nz, jr_0d2_5d40

    cp [hl]

jr_0d2_5d80:
    rst $38
    rst $38
    ld d, $09
    ret nz

    ld b, b
    nop
    ld [$e0e0], sp
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ei
    ld d, a
    nop
    nop
    db $fd
    inc de
    add b
    add b
    db $fd
    db $e3
    add b
    add b
    ei
    ld b, a
    nop
    ld [$ffff], sp
    ld d, $09
    rst $38
    jr nz, jr_0d2_5d80

    cp [hl]
    rst $38
    nop
    add $79
    rst $38
    adc $e1
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    ccf
    inc hl
    nop
    nop
    ld a, a
    ld h, h
    nop
    nop
    ld a, a
    ld h, c
    nop
    nop
    ld a, a
    ld c, [hl]
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld b, e
    dec a
    nop
    nop
    ld bc, $007f
    nop
    ld b, c
    ld a, $00
    nop
    ld bc, $007f
    nop
    ld b, e
    dec a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, [hl]
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    inc h
    nop
    nop
    ccf
    inc hl
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rrca
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_5ec0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $e1
    sbc [hl]
    rst $38
    nop
    add $79
    rst $38
    jr nz, jr_0d2_5ec0

    cp [hl]

jr_0d2_5f00:
    rst $38
    rst $38
    ld d, $09
    ldh a, [rSVBK]
    nop
    ld [$e8f8], sp
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$60], a
    nop
    ld [$ffff], sp
    ld d, $09
    rst $38
    jr nz, jr_0d2_5f00

    cp [hl]
    rst $38
    nop
    add $79
    rst $38
    adc $e1
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    ccf
    inc hl
    nop
    nop
    ccf
    inc h
    nop
    nop
    ccf
    ld hl, $0000
    ld a, a
    ld c, [hl]
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld b, e
    dec a
    nop
    nop
    ld bc, $007f
    nop
    ld b, c
    ld a, $00
    nop
    ld bc, $007f
    nop
    ld b, e
    dec a
    nop
    nop
    ld a, a
    ld b, b
    rlca
    rlca
    rst $38
    adc $07
    inc b
    rst $38
    ld hl, $0506
    ccf
    db $e4
    rlca
    rlca
    rst $38
    db $e3
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rrca
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_6040:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $e1
    sbc [hl]
    rst $38
    nop
    add $79
    rst $38
    jr nz, jr_0d2_6040

    cp [hl]

jr_0d2_6080:
    rst $38
    rst $38
    ld d, $09
    rst $38
    ld b, e
    nop
    ld [$e1ff], sp
    add b
    add b
    rst $38
    ld de, $8080
    rst $38
    ld d, e
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ld b, b
    nop
    ld [$ffff], sp
    ld d, $09
    rst $38
    jr nz, jr_0d2_6080

    cp [hl]
    rst $38
    nop
    add $79
    rst $38
    adc $e1
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    dec l
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, b
    nop
    nop
    ld a, a
    ld [$0000], sp
    ld a, a
    ld c, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, b
    ld e, $1d
    ld a, a
    adc b
    jr jr_0d2_6189

    ld a, a
    ret nz

    ld e, $1d
    ld a, a
    ret nz

    rrca
    rrca
    rst $38
    rst $20
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001

jr_0d2_6189:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc h
    nop
    nop
    rst $38
    ld [hl-], a
    nop
    db $fc
    rst $38
    ld [de], a
    ld [$fcf0], sp
    inc d
    ld b, b
    inc a
    rst $38
    cp a
    jr nz, jr_0d2_6218

    rst $38
    rrca
    add b
    add b
    rst $38
    rlca
    add b
    add b
    rst $38
    ccf
    nop
    nop
    db $fc
    ld b, h
    nop
    nop

jr_0d2_6218:
    ret nz

    cp h
    nop
    nop
    add b
    cp $00
    nop
    ret nz

    cp [hl]
    nop
    nop
    add b
    cp $00
    nop
    ret nz

    cp h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    inc a
    nop
    nop
    db $fc
    inc b
    nop
    nop
    ld hl, sp+$38
    jr nz, jr_0d2_624c

    db $fc
    inc d
    ld b, b
    inc a
    rst $38
    ld [de], a
    ld [$fff0], sp
    ld [hl-], a
    nop
    db $fc
    db $fc
    sbc h
    nop
    nop

jr_0d2_624c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    ld h, b
    ld h, b

jr_0d2_62c6:
    inc bc
    nop
    ld [hl], b
    ld [hl], b
    rlca
    ld [bc], a
    ld a, a
    ccf
    rst $38
    ld e, d
    ld a, a
    inc l
    rst $38
    inc b
    ccf
    inc h
    rst $38
    inc b
    rra
    rlca
    db $fc
    or a
    nop
    nop
    ld [$0007], sp
    nop
    inc c
    inc bc
    nop
    nop
    ld [$1c07], sp
    inc b
    inc a
    ccf
    ccf
    inc h
    rst $08
    inc [hl]
    ld a, h
    cpl
    rra
    db $e4
    ld a, a
    jr c, jr_0d2_62c6

    ld [hl-], a
    ld [hl], b
    ld [hl], b
    ccf
    ld [hl-], a
    ld h, b
    ld h, b
    inc bc
    nop
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
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
    ldh [$c0], a
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ldh a, [rBCPS]
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    db $fc
    inc b
    nop
    nop
    cp $1e
    nop
    nop
    cp $e0
    nop
    nop
    cp $04
    nop
    nop
    inc [hl]
    sbc $00
    nop
    inc d
    ld a, [$0000]
    db $10
    xor $00
    nop
    inc d
    ld a, [$0000]
    inc [hl]
    sbc $00
    nop
    cp $04
    nop
    nop
    cp $e0
    nop
    nop
    cp $1e
    nop
    nop
    db $fc
    inc b
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ldh a, [rBCPS]
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld bc, $d801
    jr c, jr_0d2_644c

    ld [bc], a
    db $fc
    inc a

jr_0d2_644c:
    inc bc
    ld [bc], a
    cp $4e
    rlca
    inc b
    cp $9a
    rlca
    inc b
    db $fc
    ld d, $07
    inc b
    cp $07
    rlca
    inc b
    ld a, [$034d]
    ld [bc], a
    db $fc
    rrca
    inc bc
    ld [bc], a
    rst $00
    ld a, [hl-]
    ld bc, $8300
    ld a, a
    nop
    nop
    add e
    ld a, [hl]
    nop
    nop
    and e
    ld e, h
    nop
    nop
    ld b, a
    add hl, sp
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    cp b
    ld a, b
    nop
    nop
    db $fc
    call c, RST_00
    db $fc
    ld e, h
    nop
    nop
    db $fc
    inc a
    nop
    nop
    db $f4
    ld c, b
    nop
    nop
    ld hl, sp+$1c
    nop
    nop
    ld hl, sp+$2c
    nop
    nop
    db $fc
    ld [$0000], sp
    ld hl, sp+$08
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
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    ld [bc], a
    nop
    nop
    rrca
    dec bc
    nop
    nop
    ld e, $10
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld hl, sp-$78
    ld bc, $f801
    jr jr_0d2_65cc

    ld [bc], a
    db $fc
    inc a

jr_0d2_65cc:
    inc bc
    ld [bc], a
    cp $4e
    rlca
    inc b
    cp $9a
    rlca
    inc b
    db $fc
    ld d, $07
    inc b
    cp $07
    rlca
    inc b
    ld a, [$034d]
    ld [bc], a
    db $fc
    rrca
    inc bc
    ld [bc], a
    rst $00
    ld a, [hl-]
    ld bc, $8300
    ld a, a
    nop
    nop
    add e
    ld a, [hl]
    nop
    nop
    and e
    ld e, h
    nop
    nop
    ld b, a
    add hl, sp
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    ld b, $00
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

jr_0d2_662a:
    nop
    nop
    nop
    nop

jr_0d2_662e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    ld d, b
    and b
    nop
    nop
    jr nz, jr_0d2_662a

    nop
    nop
    jr nz, jr_0d2_662e

    nop
    nop
    add b
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
    ld [bc], a
    nop
    nop
    nop
    dec c
    ld [de], a
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld de, $000e
    add b
    ld a, d
    ld d, h
    cp b
    ld a, b
    ld hl, sp-$68
    db $fd
    db $dd
    ld hl, sp+$00
    rst $38
    ld e, [hl]
    ldh a, [rNR10]
    rst $38
    ld a, $e0
    jr nz, @+$01

    ld c, d
    ret nz

    ld b, b
    rst $38
    db $10
    add b
    add b
    rst $38
    jr nz, jr_0d2_66bb

jr_0d2_66bb:
    nop
    cp $02
    nop
    nop
    db $fc
    inc c
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
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    ld [bc], a
    nop
    nop
    rrca
    dec bc
    nop
    nop
    ld e, $10
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld hl, sp-$78
    ld bc, $f801
    jr jr_0d2_674c

    ld [bc], a
    db $fc
    inc a

jr_0d2_674c:
    inc bc
    ld [bc], a
    cp $4e
    rlca
    inc b
    cp $9a
    rlca
    inc b
    db $fc
    ld d, $07
    inc b
    cp $07
    rlca
    inc b
    ld a, [$034d]
    ld [bc], a
    db $fc
    rrca
    inc bc
    ld [bc], a
    rst $00
    ld a, [hl-]
    ld bc, $8300
    ld a, a
    nop
    nop
    add e
    ld a, [hl]
    nop
    nop
    and e
    ld e, h
    nop
    nop
    ld b, a
    add hl, sp
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    rra
    jr jr_0d2_6781

jr_0d2_6781:
    nop
    rra
    ld e, $00
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

jr_0d2_67aa:
    nop
    nop
    nop
    nop

jr_0d2_67ae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    ld d, b
    and b
    nop
    nop
    jr nz, jr_0d2_67aa

    nop
    nop
    jr nz, jr_0d2_67ae

    nop
    nop
    add b
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
    ld [bc], a
    nop
    nop
    nop
    dec c
    ld [de], a
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld de, $000e
    add b
    ld a, d
    ld d, h
    and b
    ld h, b
    ld hl, sp-$68
    pop af
    pop bc
    ld hl, sp+$00
    ei
    ld b, d
    ldh a, [rNR10]
    rst $38
    ld [hl], $e0
    jr nz, @+$01

    ld c, d
    ret nz

    ld b, b
    rst $38
    db $10
    add b
    add b
    rst $38
    jr nz, jr_0d2_683b

jr_0d2_683b:
    nop
    cp $02
    nop
    nop
    db $fc
    inc c
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

jr_0d2_6896:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    rlca
    ld [bc], a
    nop
    nop
    rrca
    dec bc
    nop
    nop
    ld e, $10
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld hl, sp-$78
    ld bc, $f001
    db $10
    inc bc
    ld [bc], a
    ldh a, [$30]
    inc bc
    ld [bc], a
    ld hl, sp+$48
    rlca
    inc b
    db $fc
    sbc b
    rlca
    inc b
    db $fc
    ld d, $07
    inc b
    cp $07
    rlca
    inc b
    ld a, [$074d]
    ld [bc], a
    db $fc
    rrca
    rlca
    ld [bc], a
    rst $00
    ld a, [hl-]
    rrca
    add hl, bc
    add e
    ld a, a
    rra
    db $10
    add e
    cp $3f
    jr nc, jr_0d2_6896

    ld e, h
    ccf
    add hl, sp
    ld b, a
    add hl, sp
    ld a, $3e
    ccf
    ld [bc], a
    inc e
    inc e
    rrca
    ld [$0000], sp
    rlca
    ld b, $00
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

jr_0d2_692a:
    nop
    nop
    nop
    nop

jr_0d2_692e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    ld d, b
    and b
    nop
    nop
    jr nz, jr_0d2_692a

    nop
    nop
    jr nz, jr_0d2_692e

    nop
    nop
    add b
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
    ld [bc], a
    nop
    nop
    nop
    dec c
    ld [de], a
    inc bc
    inc bc
    ld [bc], a
    dec e
    rlca
    rlca
    sub c
    adc [hl]
    add hl, bc
    add a
    ld a, [$bdd4]
    ld h, e
    ld hl, sp-$68
    rst $38
    pop bc
    ld hl, sp+$00
    rst $38
    ld b, d
    ldh a, [rNR10]
    rst $38
    ld [hl], $e0
    jr nz, @+$01

    ld c, d
    ret nz

    ld b, b
    rst $38
    db $10
    add b
    add b
    rst $38
    jr nz, jr_0d2_69bb

jr_0d2_69bb:
    nop
    cp $02
    nop
    nop
    db $fc
    inc c
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
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    ld [bc], a
    nop
    nop
    rrca
    dec bc
    nop
    nop
    ld e, $10
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld hl, sp-$78
    ld bc, $fc01
    db $10
    inc bc
    ld [bc], a
    cp $30
    inc bc
    ld [bc], a
    cp $48
    rlca
    inc b
    cp $98
    rlca
    inc b
    db $fc
    ld d, $07
    inc b
    cp $07
    rlca
    inc b
    ld a, [$034d]
    ld [bc], a
    db $fc
    rrca
    rlca
    ld b, $c7
    ld a, [hl-]
    rlca
    ld b, $83
    ld a, a
    rlca
    rlca
    add e
    ld a, [hl]
    inc bc
    inc bc
    and e
    ld e, h
    nop
    nop
    ld b, a
    add hl, sp
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    ld b, $00
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

jr_0d2_6aaa:
    nop
    nop
    nop
    nop

jr_0d2_6aae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    ld d, b
    and b
    nop
    nop
    jr nz, jr_0d2_6aaa

    nop
    nop
    jr nz, jr_0d2_6aae

    nop
    nop
    add b
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
    ld [bc], a
    nop
    nop
    nop
    dec c
    ld [de], a
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld de, $000e
    add b
    ld a, d
    ld d, h
    cp b
    ld a, b
    ld hl, sp-$68
    db $fd
    db $dd
    ld hl, sp+$00
    rst $38
    ld e, [hl]
    ldh a, [rNR10]
    rst $38
    ld a, $e0
    jr nz, @+$01

    ld c, d
    ret nz

    ld b, b
    rst $38
    db $10
    add b
    add b
    rst $38
    jr nz, jr_0d2_6b3b

jr_0d2_6b3b:
    nop
    cp $02
    nop
    nop
    db $fc
    inc c
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
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    ld [bc], a
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    ld de, $0000
    ccf
    inc hl
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    rst $38
    adc b
    ld bc, $ff01
    db $10
    inc bc
    ld [bc], a
    rst $38
    jr nc, jr_0d2_6bd0

    ld [bc], a
    rst $38
    ld c, b

jr_0d2_6bd0:
    rlca
    inc b
    cp $98
    rlca
    inc b
    db $fc
    ld d, $07
    inc b
    cp $07
    rlca
    inc b
    ld a, [$034d]
    ld [bc], a
    db $fc
    rrca
    inc bc
    ld [bc], a
    rst $00
    ld a, [hl-]
    ld bc, $8300
    ld a, a
    nop
    nop
    add e
    ld a, [hl]
    nop
    nop
    and e
    ld e, h
    nop
    nop
    ld b, a
    add hl, sp
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    rra
    ld [$0000], sp
    ccf
    ld h, $00
    nop
    ld a, a
    ld b, c
    nop
    nop
    db $fc
    ret nz

    nop
    nop
    db $fc
    db $e4
    nop
    nop
    ld hl, sp-$08
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

jr_0d2_6c2a:
    nop
    nop
    nop
    nop

jr_0d2_6c2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    ld d, b
    and b
    nop
    nop
    jr nz, jr_0d2_6c2a

    nop
    nop
    jr nz, jr_0d2_6c2e

    nop
    nop
    add b
    ld h, b
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
    ldh [$60], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    dec c
    ld [de], a
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld de, $000e
    add b
    ld a, d
    ld d, h
    and b
    ld h, b
    ld hl, sp-$68
    pop af
    pop de
    ld hl, sp+$00
    di
    ld d, d
    ldh a, [rNR10]
    rst $30
    ld [hl], $e0
    jr nz, @+$01

    ld c, d
    ret nz

    ld b, b
    rst $38
    db $10
    add b
    add b
    rst $38
    jr nz, jr_0d2_6cbb

jr_0d2_6cbb:
    nop
    cp $02
    nop
    nop
    db $fc
    inc c
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
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld b, $05
    nop
    nop
    ld e, $16
    nop
    nop
    dec a
    ld hl, $0000
    ld a, a
    ld h, a
    nop
    nop
    rst $38
    sub a
    ld bc, $ff01
    rrca
    ld bc, $ff01
    adc c
    nop
    nop
    rst $38
    pop hl
    nop
    nop
    ld a, a
    ld b, d
    nop
    nop
    cp $85
    nop
    nop
    cp $85
    ld bc, $fe01
    inc bc
    ld bc, $ff01
    ld b, c
    nop
    nop
    rst $38
    and b
    nop
    nop
    rst $38
    add b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ccf
    inc h
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc b
    nop
    nop
    rla
    rrca
    nop
    nop
    ld h, $1a
    nop
    nop
    ld c, h
    ld [hl], h
    nop
    nop
    ld hl, sp-$28
    nop
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
    ld h, b
    sub b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ret nz

    jr nc, jr_0d2_6df3

jr_0d2_6df3:
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
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    add b
    ld h, b
    nop
    nop
    nop
    ldh a, [rP1]
    inc h
    nop
    ld hl, sp+$04
    jr c, jr_0d2_6e19

jr_0d2_6e19:
    ld hl, sp+$24
    ld a, [de]
    adc h
    ld [hl], h
    jr nz, jr_0d2_6e3c

    ld e, $ea
    nop
    jr c, @+$01

    sub e
    ldh a, [rLCDC]
    rst $38
    ld h, h
    ldh [$60], a
    rst $38
    ld [bc], a
    ret nz

    nop
    rst $38
    add hl, bc
    ret nz

    ld b, b
    rst $38
    ld sp, $c0c0
    rst $18
    ld e, b
    add b
    add b

jr_0d2_6e3c:
    adc a
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    jr c, jr_0d2_6ee0

    nop
    nop
    ld a, a
    ld b, e
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ld a, a
    ld c, c
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ccf
    ld [hl+], a
    nop
    nop
    ccf
    inc d
    nop
    nop
    ld a, $09
    nop
    nop
    inc a
    dec sp
    nop
    nop
    ld a, h
    ld b, a

jr_0d2_6ee0:
    nop
    nop
    db $fd
    add d
    ld bc, $f601
    ld de, $0203
    db $e3
    ld hl, $7c7f
    jp Jump_0d2_7f43


    ld a, [hl]
    add d
    add e
    ccf
    add hl, hl
    dec b
    ld b, $1e
    ld [$0304], sp
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    ld [hl], d
    ld l, h
    nop
    nop
    ld [hl], h
    jr jr_0d2_6f09

jr_0d2_6f09:
    nop
    ld a, b
    stop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    stop
    nop
    jr nc, jr_0d2_6f48

    nop
    nop
    jr nc, jr_0d2_6f4c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_6f48:
    nop
    nop
    nop
    nop

jr_0d2_6f4c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$80], a
    nop
    nop
    ldh [$50], a
    nop
    nop
    ldh a, [$28]
    nop
    nop
    ret nc

    ld l, h
    nop
    nop
    db $ec
    ld [hl], $00
    nop
    scf
    jp c, RST_00

    rra
    jp hl


    nop
    nop
    rra
    db $e3
    add b
    add b
    rra
    xor $80
    add b
    ccf
    pop de
    add b
    add b
    rst $38
    add c
    add b
    ld b, b
    rst $38
    db $e3
    ret nz

    jr nz, @+$01

    ld d, $c0
    nop
    ld l, a
    adc b
    ret nz

    ld b, b
    rst $00
    ld b, [hl]
    add b
    add b
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
    jr nc, jr_0d2_7084

    nop
    nop
    ld a, b
    ld h, a
    nop
    nop
    ld a, [hl]
    ld l, l
    nop
    rlca
    ld hl, sp-$59
    rlca
    nop
    rst $38
    and [hl]
    rrca
    ld bc, $13fc
    rrca
    add hl, bc
    ld hl, sp+$17
    rrca
    ld [$17f8], sp
    rlca
    inc b
    ld hl, sp+$07
    inc bc
    inc bc
    ld hl, sp+$67
    nop
    nop
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d2_7084:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0d2_712a

    nop
    nop
    inc a
    call z, RST_00
    db $fc
    ld l, h
    nop
    nop
    ld a, $cb
    nop
    ret nz

    rst $38
    jp z, Jump_000_00c0

    ld a, a
    sub c
    ldh [rP1], a
    ccf
    pop de

jr_0d2_712a:
    ldh [rNR41], a
    ccf
    ret nc

    ldh [rNR41], a
    ccf
    ret nz

    ret nz

    ld b, b
    ccf
    call $8080
    ld [hl], b
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
    dec b
    ld [bc], a
    nop
    add b
    ld [bc], a
    dec b
    add b
    nop
    ld [bc], a
    dec b
    add b
    nop
    nop
    rlca
    nop
    ret nz

    nop
    rlca
    add b
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    nop
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
    rlca
    inc b
    add b
    add b
    rlca
    nop
    or b
    or b
    rlca
    ld bc, $e7f8
    rlca
    inc b
    cp $ed
    rlca
    inc b
    ld hl, sp-$59
    rlca
    inc b
    rst $38
    and [hl]
    rlca
    nop
    db $fc
    sub e
    rlca
    inc b
    ld hl, sp+$57
    rlca
    inc b
    ld hl, sp+$17
    inc bc
    inc bc
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$19
    nop
    nop
    dec e
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    ld [bc], a
    ld bc, $4080
    nop
    rlca
    nop
    ret nz

    ld [bc], a
    ld bc, $c000
    nop
    ld bc, $8040
    ld bc, $c000
    add b
    ld bc, $c001
    ld b, b
    inc bc
    ld [bc], a
    ret nz

    nop
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    dec de
    ld a, [de]
    ret nz

    nop
    ccf
    rst $08
    ret nz

    nop
    rst $38
    ld l, [hl]
    ret nz

    ld b, b
    ccf
    jp z, Jump_0d2_40c0

    rst $38
    jp z, Jump_0d2_40c0

    ld a, a
    sub d
    ret nz

    nop
    ccf
    call nc, Call_0d2_40c0
    ccf
    ret nc

    ret nz

    ld b, b
    ccf
    pop bc
    add b
    add b
    ld a, $ce
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add b
    ld [bc], a
    dec b
    add b
    nop
    ld [bc], a
    dec b
    add b
    nop
    nop
    rlca
    nop
    ret nz

    nop
    rlca
    add b
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    nop
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
    rlca
    inc b
    add b
    add b
    rlca
    nop
    or b
    or b
    rlca
    ld bc, $e7f8
    rlca
    inc b
    cp $ed
    rlca
    inc b
    ld hl, sp-$59
    rlca
    inc b
    rst $38
    and [hl]
    rlca
    nop
    db $fc
    sub e
    rlca
    inc b
    ld hl, sp+$57
    rlca
    inc b
    ld hl, sp+$17
    inc bc
    inc bc
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$19
    nop
    nop
    dec e
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    ld [bc], a
    ld bc, $4080
    nop
    rlca
    nop
    ret nz

    ld [bc], a
    ld bc, $c000
    nop
    ld bc, $8040
    ld bc, $c000
    add b
    ld bc, $c001
    ld b, b
    inc bc
    ld [bc], a
    ret nz

    nop
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    dec de
    ld a, [de]
    ret nz

    ld b, b
    ccf
    ld h, $c0
    nop
    ccf
    rst $08
    ret nz

    nop
    rst $38
    ld l, [hl]
    ret nz

    ld b, b
    ccf
    jp z, Jump_0d2_40c0

    rst $38
    jp z, Jump_0d2_40c0

    ld a, a
    sub d
    ret nz

    nop
    ccf
    call nc, Call_0d2_40c0
    ccf
    ret nc

    ret nz

    ld b, b
    ccf
    pop bc
    add b
    add b
    ld a, $ce
    nop
    nop
    ld a, h
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add b
    ld [bc], a
    dec b
    add b
    nop
    ld [bc], a
    dec b
    add b
    nop
    nop
    rlca
    nop
    ret nz

    nop
    rlca
    add b
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    nop
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
    rlca
    inc b
    add b
    add b
    rlca
    nop
    add b
    add b
    rlca
    ld bc, $a7b8
    rlca
    inc b
    cp $ed
    rlca
    inc b
    ld hl, sp-$59
    rlca
    inc b
    rst $38
    and [hl]
    rlca
    nop
    db $fc
    sub e
    rlca
    inc b
    ld hl, sp+$57
    rlca
    inc b
    ld hl, sp+$17
    inc bc
    inc bc
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$19
    nop
    nop
    db $fd
    ld a, [bc]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    ldh a, [$f0]
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
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    ld [bc], a
    ld bc, $4080
    nop
    rlca
    nop
    ret nz

    ld [bc], a
    ld bc, $c000
    nop
    ld bc, $8040
    ld bc, $c000
    add b
    add hl, de
    add hl, de
    ret nz

    ld b, b
    ccf
    ld a, $c0
    nop
    daa
    ld a, $c0
    ld b, b
    dec de
    ld h, $c0
    ld b, b
    ccf
    ld [bc], a
    ret nz

    ld b, b
    ccf
    ld [hl-], a
    ret nz

    nop
    ccf
    set 0, b
    nop
    rst $38
    ld l, [hl]
    ret nz

    ld b, b
    ccf
    jp z, Jump_0d2_40c0

    rst $38
    jp z, Jump_0d2_40c0

    ld a, a
    sub d
    ret nz

    nop
    ccf
    call nc, Call_0d2_40c0
    ccf
    ret nc

    ret nz

    ld b, b
    ccf
    pop bc
    add b
    add b
    ld a, $ce
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add b
    ld [bc], a
    dec b
    add b
    nop
    ld [bc], a
    dec b
    add b
    nop
    nop
    rlca
    nop
    ret nz

    nop
    rlca
    add b
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    nop
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
    rlca
    inc b
    or b
    or b
    rlca
    nop
    ld hl, sp-$38
    rlca
    ld bc, $e7f8
    rlca
    inc b
    cp $ed
    rlca
    inc b
    ld hl, sp-$59
    rlca
    inc b
    rst $38
    and [hl]
    rlca
    nop
    db $fc
    sub e
    rlca
    inc b
    ld hl, sp+$57
    rlca
    inc b
    ld hl, sp+$17
    inc bc
    inc bc
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$19
    nop
    nop
    ld a, l
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    ld [bc], a
    ld bc, $4080
    nop
    rlca
    nop
    ret nz

    ld [bc], a
    ld bc, $c000
    nop
    ld bc, $8040
    ld bc, $c000
    add b
    ld bc, $c001
    ld b, b
    inc bc
    ld [bc], a
    ret nz

    nop
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    dec de
    ld a, [de]
    ret nz

    nop
    ccf
    rst $08
    ret nz

    nop
    rst $38
    ld l, [hl]
    ret nz

    ld b, b
    ccf
    jp z, Jump_0d2_40c0

    rst $38
    jp z, Jump_0d2_40c0

    ld a, a
    sub d
    ret nz

    nop
    ccf
    call nc, Call_0d2_40c0
    ccf
    ret nc

    ret nz

    ld b, b
    ccf
    pop bc
    add b
    add b
    ld a, $ce
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0d2_778f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add b
    ld [bc], a
    dec b
    add b
    nop
    ld [bc], a
    dec b
    add b
    nop
    nop
    rlca
    nop
    ret nz

    nop
    rlca
    add b
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    dec b
    jr nc, jr_0d2_77f0

    rlca
    nop
    ld hl, sp-$08
    rlca
    inc b
    ld hl, sp-$38
    rlca
    inc b
    ld hl, sp-$80
    rlca
    inc b
    ld hl, sp-$80
    rlca
    nop
    ld hl, sp-$68
    rlca
    ld bc, $a7f8
    rlca
    inc b
    cp $ed
    rlca
    inc b
    ld hl, sp-$59
    rlca
    inc b
    rst $38
    and [hl]
    rlca
    nop
    db $fc
    sub e
    rlca
    inc b
    ld hl, sp+$57
    rlca
    inc b
    ld hl, sp+$17

jr_0d2_77f0:
    inc bc
    inc bc
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$19
    nop
    nop
    dec e
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0d2_7860:
    ld bc, $4002
    add b
    ld [bc], a
    ld bc, $4080
    ld [bc], a
    ld bc, $4080
    nop
    rlca
    nop
    ret nz

    ld [bc], a
    ld bc, $c000
    nop
    ld bc, $8040
    ld bc, $c000
    add b
    ld bc, $c001
    ld b, b
    inc bc
    ld [bc], a
    ret nz

    nop
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    ret nz

    nop
    dec sp
    set 0, b
    nop
    rst $38
    ld l, [hl]
    ret nz

    ld b, b
    ccf
    jp z, Jump_0d2_40c0

    rst $38
    jp z, Jump_0d2_40c0

    ld a, a
    sub d
    ret nz

    nop
    ccf
    call nc, Call_0d2_40c0
    ccf
    ret nc

    ret nz

    ld b, b
    ccf
    pop bc
    add b
    add b
    ld a, $ce
    nop
    nop
    ld a, d
    or [hl]
    nop
    nop
    ld a, [de]
    ld d, $00
    nop
    ld a, [de]
    ld d, $00
    nop
    ld e, $12
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld bc, $0002
    add b
    nop
    inc bc
    nop
    ret nz

    nop
    inc bc
    ld b, b
    add b
    nop
    inc bc
    add b
    nop
    nop
    inc bc
    jr nc, jr_0d2_7970

    inc bc
    nop
    ld a, b
    ld a, b
    inc bc
    inc bc
    ld a, b
    ld a, c
    rlca
    inc b
    db $fc
    rst $38
    rlca
    inc b
    db $fc
    ld l, e
    rlca
    rlca
    db $fc
    rlc a
    ld [bc], a
    db $fc
    ld c, e
    rlca
    nop
    cp $05
    rlca
    inc b
    rst $38
    ld b, e
    inc bc
    inc bc
    rst $38
    ret nz

    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld c, [hl]

jr_0d2_7970:
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ccf
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4000
    nop
    ld bc, $4080
    nop
    inc bc
    nop
    ret nz

    ld [bc], a
    ld bc, $c000
    ld bc, $0000
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    nop
    nop
    ret nz

    ret nz

    ret nz

    dec e
    db $fd
    ldh [rNR41], a
    rra
    ld [$20e0], a
    rra
    db $eb
    ldh [$e0], a
    rra
    ld [$40e0], a
    cp a
    ld d, b
    ldh [rP1], a
    rst $38
    ldh [$e0], a
    jr nz, @+$01

    inc bc
    ret nz

    ret nz

    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $30
    nop
    nop
    cp $00
    nop
    nop
    cp $02
    nop
    nop
    cp $ee
    nop
    nop
    ld [bc], a
    ld e, $00
    nop
    ld [bc], a
    ld e, $00
    nop
    ld d, $0a
    nop
    nop
    ld d, $1e
    nop
    nop
    ld e, $16
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc de
    nop
    nop
    ccf
    ld [hl], $00
    inc bc
    ld a, h
    db $d3
    inc bc
    nop
    rst $38
    ld d, e
    rlca
    nop
    cp $89
    rlca
    inc b
    db $fc
    adc e
    rlca
    inc b
    db $fc
    dec bc
    inc bc
    ld [bc], a
    db $fc
    inc bc
    ld bc, $fc01
    or e
    nop
    nop
    ld a, $0f
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    ld e, $0e
    nop
    nop
    ld e, $18
    nop
    nop
    ld a, $30
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
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
    nop
    nop
    nop
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
    db $e4
    nop
    nop
    ld a, [hl]
    or [hl]
    nop
    nop
    rra
    push hl
    nop
    ldh [rIE], a
    ld h, l
    ldh [rP1], a
    ccf
    ret z

    ldh a, [$80]
    rra
    add sp, -$10
    sub b
    rra
    add sp, -$10
    db $10
    rra
    ldh [$e0], a
    jr nz, jr_0d2_7bc4

    and $c0
    ret nz

    cp [hl]
    ld a, b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    inc a
    inc h
    nop
    nop
    inc a
    jr nz, jr_0d2_7bb7

jr_0d2_7bb7:
    nop
    inc a
    inc b
    nop
    nop
    inc a
    jr nz, jr_0d2_7bbf

jr_0d2_7bbf:
    nop
    inc a
    inc h
    nop
    nop

jr_0d2_7bc4:
    inc a
    inc h
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc c
    nop
    nop
    ld a, $06
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0d2_7f43:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
