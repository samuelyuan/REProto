SECTION "ROM Bank $0d8", ROMX[$4000], BANK[$d8]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    inc bc
    inc bc
    add b
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh a, [rIE]
    rlca
    rlca
    ld hl, sp-$01
    inc bc
    inc bc
    pop bc
    rst $38
    nop
    nop
    cp [hl]
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr jr_0d8_4094

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_4094:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0d8_40ef:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    ld bc, $c0ff
    ret nz

    rra
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    ldh [$e0], a
    add e
    rst $38
    ret nz

    ret nz

    ld a, l
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    jr jr_0d8_4152

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_4152:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    rst $38
    rrca
    rrca
    ldh a, [rIE]
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh a, [rIE]
    inc e
    rra
    add e
    rst $38
    ld e, $1f
    ld a, h
    rst $38
    rra
    rra
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    nop
    inc bc
    rst $38
    add b
    add b
    ccf
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    ret c

    ld hl, sp+$07
    rst $38
    call c, $07e4
    rst $38
    call c, Call_000_0fe4
    rst $38
    call c, $3fe4
    rst $38
    sbc b
    ld hl, sp+$07
    rst $38
    ldh [$e0], a
    ld a, [$00fe]
    nop
    db $fc
    db $fc
    nop
    nop
    jr nc, jr_0d8_42e6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_42e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    cp $fe
    dec bc
    inc c
    add c
    ld a, a
    db $10
    rra
    ccf
    rst $38
    inc de
    rra
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
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    jr @+$01

    ld b, b
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
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    add sp, -$08
    rra
    rst $38
    ret z

    ld hl, sp-$7a
    rst $38
    add sp, $18
    ld a, e
    ld a, e
    jr @-$06

    ld bc, $f001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    rst $38
    inc de
    rra
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rlca
    rlca
    ldh a, [rIE]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    db $fc
    nop
    nop
    di
    rst $38
    add b
    add b
    jr @+$01

    ld b, b
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
    rrca
    rst $38
    add sp, -$08
    rra
    rst $38
    add sp, -$08

jr_0d8_45a8:
    rra
    rst $38
    add sp, -$28
    add c
    rst $38
    jr jr_0d8_45a8

    ld [hl], b
    ld a, a
    ldh a, [$f0]
    rrca
    rrca
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f0f0
    ld [bc], a
    inc bc
    ld [$04f8], sp
    rlca
    ld b, $fe
    inc b
    rlca
    ld bc, $04ff
    rlca
    rra
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
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    db $fc
    nop
    nop
    di
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ldh a, [$f0]

jr_0d8_4714:
    rrca
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    rrca
    rst $38
    ld hl, sp-$08
    rra
    rst $38
    add sp, -$08
    nop
    rst $38
    db $10
    ldh a, [$80]
    rst $38
    db $10
    ldh a, [$60]
    ld a, a
    jr nz, jr_0d8_4714

    db $10
    rra
    ld b, b
    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    inc b
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    ld c, $fe
    inc b
    rlca
    ld bc, $04ff
    rlca
    rra
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
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rla
    dec de
    ldh a, [rIE]
    jr jr_0d8_4809

    add c
    rst $38
    rrca
    rrca
    jp nz, $07fe

    rlca
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
    nop

jr_0d8_4809:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_4870:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    rst $38
    ret nz

    ret nz

    ldh a, [rIE]
    jr nz, jr_0d8_4870

jr_0d8_4890:
    rra
    rst $38
    ret nc

    ldh a, [rIF]
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rrca
    rst $38
    add sp, -$08
    rra
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [$80]
    rst $38
    jr nz, jr_0d8_4890

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
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rSC]
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
    ld [bc], a
    inc bc
    jr @+$01

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
    ldh a, [rIE]
    rla
    rra
    ld hl, sp-$01
    inc de
    rra
    ld hl, sp-$01
    rla
    jr jr_0d8_49d0

    rst $38
    jr jr_0d8_4991

    sbc $de
    rrca
    rrca
    add b
    add b
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

jr_0d8_4991:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_49d0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c001
    ret nz

    ld a, a
    ld a, a
    ld h, b
    ldh [$81], a

jr_0d8_4a09:
    cp $d0
    jr nc, jr_0d8_4a09

    rst $38
    ld [$0ff8], sp
    rst $38
    ret z

    ld hl, sp+$07
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
    add c
    rst $38
    ret nz

    ret nz

    ld b, d
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_0d8_4b0b

    ld bc, $cf01
    rst $38
    ld [bc], a
    inc bc
    jr @+$01

    rlca
    rlca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rla
    rra
    ldh a, [rIE]
    rla
    rra
    ld hl, sp-$01
    rla
    dec de
    ld hl, sp-$01
    jr jr_0d8_4b0d

    add c
    rst $38
    rrca
    rrca
    ld c, $fe
    rlca
    rlca
    ldh a, [$f0]
    nop
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

jr_0d8_4b0b:
    nop
    nop

jr_0d8_4b0d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_4b6c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0d8_4b6c

    db $fc
    rst $38
    db $10
    ldh a, [rIF]
    rst $38
    ret z

    ld hl, sp+$07
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    add c
    rst $38
    ret nz

    ret nz

    ld b, d
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_0d8_4c8b

    inc bc
    inc bc
    rst $08
    rst $38
    rrca
    rrca
    ld hl, sp-$01
    rla
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
    rla
    rra
    ld hl, sp-$01
    ld [$000f], sp
    rst $38
    ld [$010f], sp
    rst $38
    inc b
    rlca
    ld b, $fe
    ld [bc], a
    inc bc
    ld [$03f8], sp
    inc bc
    ld hl, sp-$08
    ld bc, $f001
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

jr_0d8_4c8b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_4ce8:
    nop
    nop
    nop
    nop

jr_0d8_4cec:
    rrca
    rrca
    add b
    add b

jr_0d8_4cf0:
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
    add b
    add b
    db $10
    rra
    ld b, b
    ret nz

    ld h, b
    ld a, a
    jr nz, jr_0d8_4ce8

    add b
    rst $38
    jr nz, jr_0d8_4cec

    ld hl, sp-$01
    jr nz, jr_0d8_4cf0

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
    add c
    rst $38
    ret nz

    ret nz

    ld b, d
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    rst $38
    inc b
    rlca
    rrca
    rst $38
    dec bc
    rrca
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh a, [rIE]
    dec bc
    rrca
    ld hl, sp-$01
    ld [$000f], sp
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

jr_0d8_4e68:
    rlca
    rlca
    ret nz

    ret nz

jr_0d8_4e6c:
    rrca
    rrca
    ldh [$e0], a

jr_0d8_4e70:
    rrca
    rrca
    ldh [$e0], a
    rlca
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

    ld [$200f], sp
    ldh [rSVBK], a
    ld a, a
    jr nz, jr_0d8_4e68

    add b
    rst $38
    jr nz, jr_0d8_4e6c

    ld hl, sp-$01
    jr nz, jr_0d8_4e70

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
    add sp, -$08
    rlca
    rst $38
    add sp, -$08

jr_0d8_4ea4:
    rrca
    rst $38
    add sp, -$28
    add c
    rst $38
    jr jr_0d8_4ea4

    ld b, e
    ld a, a
    ldh a, [$f0]
    inc a
    inc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0d8_4f58

    nop
    nop
    ld h, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ccf
    ccf
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    ld a, $3e
    nop
    nop
    ld hl, $003f
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
    jr nz, jr_0d8_4f93

    nop
    nop
    cpl
    ccf

jr_0d8_4f58:
    nop
    nop
    jr nc, jr_0d8_4f9b

    nop
    nop
    jr nc, jr_0d8_4f9f

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    ld bc, $e301
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    rst $38
    db $fc
    rlca
    rlca
    db $fc
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    inc a
    rst $38
    ld [bc], a
    inc bc
    ret c

    ccf
    ld bc, $f801
    rra
    ld bc, $f801

jr_0d8_4f93:
    rst $38
    ld bc, $f801
    rst $38
    ld bc, $f801

jr_0d8_4f9b:
    rra
    nop
    nop
    db $f4

jr_0d8_4f9f:
    sub a
    nop
    nop
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    nop
    nop
    ld hl, sp-$08
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
    add [hl]
    cp $00
    nop
    add [hl]
    cp $00
    nop
    add a
    rst $38
    ldh [$e0], a
    sbc a
    rst $38
    sub b
    ldh a, [rIE]
    rst $38
    ret z

    ld hl, sp+$1f
    rst $38
    add sp, -$08
    rst $38
    rra
    add sp, -$08
    rst $28
    rra
    add sp, -$08
    rrca
    rst $38
    ld d, b
    or b
    db $fd
    cp $a0
    ld h, b
    dec bc
    db $fc
    ld b, b
    ret nz

    ld bc, $80ff
    add b
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    jr @-$06

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    cp a
    rst $38
    rrca
    rrca
    ld a, $ff
    ld e, $1f
    inc e
    rst $38
    ld e, $1f
    inc c
    rst $38
    rra
    rra
    inc b
    rst $38
    inc c
    inc c
    or [hl]
    rst $08
    nop
    nop
    ld [hl], a
    ld c, [hl]
    nop
    nop
    ld h, d
    ld e, a
    nop
    nop
    ld l, h
    ld e, a
    nop
    nop
    ld a, e
    ld c, e
    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld a, h
    ld a, h
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
    ld c, l
    ld a, e
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld c, b
    ld a, b
    nop
    nop
    ld c, b
    ld a, b
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
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_0d8_5148

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_5148:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    inc bc
    rst $38
    nop
    nop
    jp $807f


    add b
    jp $c0ff


    ret nz

    or a
    rst $18
    ldh [$e0], a
    rst $30
    rrca
    ldh a, [$f0]
    ld l, a
    sbc a
    ldh a, [$f0]
    rra
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    ldh [$e0], a
    ld e, [hl]
    ld h, c
    ret nz

    ret nz

    cp h
    jp $c0c0


    ld hl, sp+$07
    ret nz

    ret nz

    pop hl
    rra
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
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
    nop
    nop
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    sbc a
    rst $38
    rrca
    rrca
    rra
    rst $38
    ld e, $1f
    ccf
    rst $38
    ld e, $1f
    ccf
    rst $38
    rra
    rra
    sbc [hl]
    rst $38
    inc c
    inc c
    adc h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    ld a, [c]
    adc a
    nop
    nop
    ld sp, hl
    adc [hl]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    ld sp, hl
    adc c
    nop
    nop
    xor b
    ret c

    nop
    nop
    add sp, -$68
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ei
    adc e
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $38
    rst $08
    nop
    nop
    db $fd
    rlc b
    nop
    adc $be
    nop
    nop
    ld c, b
    ld a, b
    nop
    nop
    ld c, b
    ld a, b
    nop
    nop
    ld c, b
    ld a, b
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
    jr nc, jr_0d8_52d0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_52d0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    pop af
    rst $38
    nop
    nop
    xor b
    rst $18
    add b
    add b
    ld [bc], a
    rst $38
    ld b, b
    ret nz

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    and b
    ldh [rSB], a
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    ld a, a
    xor a
    ldh a, [$f0]
    add a
    rst $38
    ldh [$e0], a
    ld a, h
    ld [hl], e
    ldh [$e0], a
    dec a
    inc hl
    ldh [$e0], a
    ld c, e
    ld [hl], a
    ldh [$e0], a
    rst $30
    adc a
    ret nz

    ret nz

    ld l, c
    sbc c
    add b
    add b
    or b
    ldh a, [rP1]
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
    ld b, $06
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    add b
    add b
    rra
    rra
    rst $38
    rst $38
    ld a, $3f
    ld a, h
    rst $38
    inc a
    ccf
    ld a, a
    rst $38
    ld a, b
    ld a, a
    rst $38
    rst $38
    ld a, b
    ld a, a
    cp $ff
    ld a, [hl]
    ld a, a
    ld a, l
    cp $32
    inc sp
    ccf
    rst $38
    ld [bc], a
    inc bc
    jr @+$01

    ld [bc], a
    inc bc
    nop
    rst $38
    inc bc
    ld [bc], a
    ldh a, [$3f]
    inc bc
    ld [bc], a
    add sp, $2f
    inc bc
    ld [bc], a
    add sp, $2f
    ld [bc], a
    inc bc
    and h
    ld h, a
    inc bc
    ld [bc], a
    and e
    ld h, e
    inc bc
    ld [bc], a
    ldh [rNR41], a
    inc bc
    ld [bc], a
    pop hl
    ld hl, $0203
    rst $28
    ld l, $03
    inc bc
    db $fd
    cp $03
    inc bc
    cp [hl]
    rst $38
    inc bc
    inc bc
    rst $38
    ccf

jr_0d8_5400:
    inc bc
    inc bc
    inc [hl]
    db $ec
    inc bc
    ld [bc], a
    jr c, jr_0d8_5400

    ld bc, $2001
    ldh [rSB], a
    ld bc, $e020
    ld bc, $e001
    jr nz, @+$03

    ld bc, $20e0
    ld bc, $e001
    jr nz, jr_0d8_541d

jr_0d8_541d:
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

jr_0d8_5466:
    nop
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
    jr nc, jr_0d8_5466

    nop
    nop
    ld [$00f8], sp
    nop
    call nz, Call_000_00fc
    nop
    and d
    ld a, [hl]
    nop
    nop
    reti


    ccf
    nop
    nop
    db $fc
    rst $38
    add b
    add b
    ld c, $ff
    add b
    add b
    rlca
    rst $38
    add b
    add b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    di
    rst $08
    add b
    add b
    rst $30
    adc a
    add b
    add b
    cpl
    rst $18
    add b
    add b
    rst $18
    ccf
    nop
    nop
    and [hl]
    ld h, [hl]
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
    rra
    add hl, de
    nop
    nop
    ccf
    dec sp
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    ld a, c
    ld a, [hl]
    nop
    nop
    ld a, c
    ld a, a
    nop
    nop
    dec sp
    ccf
    nop
    nop
    dec de
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rla
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    daa
    ccf
    nop
    nop
    daa
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    jr nz, jr_0d8_55a7

    nop
    nop
    db $10
    rra
    nop
    nop
    jr c, jr_0d8_5597

    nop
    nop
    jr c, jr_0d8_55b3

    nop
    nop
    jr c, jr_0d8_55a7

    nop
    nop
    jr c, jr_0d8_55ab

    nop
    nop
    jr c, jr_0d8_55bf

    nop
    nop
    inc h
    ccf
    nop
    nop
    ld a, $27
    nop
    nop
    ccf
    daa
    nop
    nop
    ccf
    daa
    nop
    nop
    ccf
    daa
    nop
    nop
    dec hl

jr_0d8_5597:
    scf
    nop
    nop
    inc de
    rra
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop

jr_0d8_55a7:
    nop
    nop
    nop
    nop

jr_0d8_55ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_55b3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_55bf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ret z

    jr c, jr_0d8_55fb

jr_0d8_55fb:
    nop
    add sp, $18
    nop
    nop
    add sp, -$08
    nop
    nop
    ld hl, sp-$08
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
    inc a
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
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
    inc c
    db $fc
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
    inc e
    db $fc
    nop
    nop
    inc a
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
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    add hl, bc
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], a
    ld a, a
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    daa
    ccf
    nop
    nop
    daa
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    jr nz, jr_0d8_5727

    nop
    nop
    db $10
    rra
    nop
    nop
    jr c, jr_0d8_5717

    nop
    nop
    jr c, jr_0d8_5733

    nop
    nop
    jr c, jr_0d8_5727

    nop
    nop
    jr c, jr_0d8_572b

    nop
    nop
    jr c, jr_0d8_573f

    nop
    nop
    inc h
    ccf
    nop
    nop
    ld a, $27
    nop
    nop
    ccf
    daa
    nop
    nop
    ccf
    daa
    nop
    nop
    ccf
    daa
    nop
    nop
    dec hl

jr_0d8_5717:
    scf
    nop
    nop
    inc de
    rra
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop

jr_0d8_5727:
    nop
    nop
    nop
    nop

jr_0d8_572b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_5733:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_573f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [rNR10]
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
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
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
    inc c
    db $fc
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
    inc e
    db $fc
    nop
    nop
    inc a
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
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret c

    ret c

    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    rst $18
    rst $38
    rrca
    rrca
    cp a
    rst $18
    rrca
    rrca
    ld a, a
    sbc a
    ld e, $1f
    ld a, [hl]
    cp a
    ld e, $1f
    inc a
    rst $38
    rra
    rra
    sbc h
    rst $38
    inc c
    inc c
    call Call_000_00be
    nop
    push de
    xor a
    nop
    nop
    rst $38
    rst $20
    nop
    nop
    rst $38
    and $00
    nop
    sbc $a7
    nop
    nop
    sbc a
    and $00
    nop
    sbc $a7
    nop
    nop
    ld h, l
    ld a, l
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
    jr jr_0d8_5898

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_5898:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_58f8:
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    add c
    rst $38
    jr nz, jr_0d8_58f8

    add e
    rst $38
    and b
    ldh [$af], a
    rst $18
    ldh [$e0], a
    rst $38
    rlca
    ldh a, [$f0]
    rst $10
    cpl
    ldh a, [$f0]
    ld a, a
    rst $38
    ldh a, [$f0]
    rst $18
    ccf
    ldh [$e0], a
    cp h
    jp $e0e0


    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $01cc
    ld bc, $fefe
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    rst $28
    rst $38
    rlca
    rlca
    rst $18
    rst $28
    rlca
    rlca
    cp a
    rst $08
    rrca
    rrca
    ccf
    rst $18
    rrca
    rrca
    rra
    rst $38
    rrca
    rrca
    rst $08
    rst $38
    ld b, $06
    ld h, a
    ld e, a
    nop
    nop
    ld l, e
    ld d, a
    nop
    nop
    ld l, h
    ld d, e
    nop
    nop
    ld l, [hl]
    ld d, e
    nop
    nop
    ld c, a
    ld [hl], e
    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    ld l, a
    ld d, e
    nop
    nop
    ld c, a
    ld [hl], e
    nop
    nop
    ld l, a
    ld d, e
    nop
    nop
    ld a, $32
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

jr_0d8_5a74:
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
    add [hl]
    cp $00
    nop
    pop hl
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    call nc, Call_0d8_40ef
    ret nz

    cp e
    rst $00
    jr nz, jr_0d8_5a74

    rst $38
    rst $38
    sub b
    ldh a, [rSB]
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    ld hl, sp-$08
    ld bc, $f8ff
    ld hl, sp-$7f
    rst $38
    ldh a, [$f0]
    cp [hl]
    pop bc
    ld [hl], b
    ldh a, [$bb]
    rst $00
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    ld bc, $e001
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
    nop
    nop
    call z, $01cc
    ld bc, $fefe
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    rst $28
    rst $38
    rlca
    rlca
    rst $18
    rst $28
    rlca
    rlca
    cp a
    rst $08
    rrca
    rrca
    ccf
    rst $18
    rrca
    rrca
    rra
    rst $38
    rrca
    rrca
    rst $08
    rst $38
    ld b, $06
    ld h, a
    ld e, a
    nop
    nop
    ld l, e
    ld d, a
    nop
    nop
    ld l, l
    ld d, e
    nop
    nop
    ld l, [hl]
    ld d, e
    nop
    nop
    ld l, [hl]
    ld d, e
    nop
    nop
    ld l, a
    ld d, e
    nop
    nop
    ld c, a
    ld [hl], e
    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    ld l, a
    ld d, e
    nop
    nop
    ld c, a
    ld [hl], e
    nop
    nop
    ld l, a
    ld d, e
    nop
    nop
    ld a, $32
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

jr_0d8_5bf4:
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
    add [hl]
    cp $00
    nop
    pop hl
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    call nc, Call_0d8_40ef
    ret nz

    cp e
    rst $00
    jr nz, jr_0d8_5bf4

    cp e
    rst $00
    sub b
    ldh a, [rIE]
    rst $38
    ret nc

    ldh a, [rSB]
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    ld hl, sp-$08
    ld bc, $f0ff
    ldh a, [$c1]
    cp $70
    ldh a, [rIE]
    add b
    ld [hl], b
    ldh a, [$fd]
    add e
    ldh a, [$f0]
    rst $28
    sbc a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret z

    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ld a, h
    ld a, h
    nop
    nop
    ld b, d
    ld a, [hl]
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
    ld bc, $8101
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    rlca
    rlca
    ld hl, sp-$01
    ld bc, $0001
    rst $38
    nop
    nop
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
    ld c, $0e
    nop
    nop
    inc de
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    daa
    ccf
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
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, d
    ld a, [hl]
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
    add b
    add b
    ccf
    rst $38
    ldh [$e0], a
    rra
    rst $38
    ldh a, [$f0]
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
    ld hl, sp-$08
    rra
    rst $38
    ldh a, [$f0]
    ccf
    rst $38
    ldh [$e0], a
    ld bc, $80ff
    add b
    ld [bc], a
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    ld b, $07
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
    inc a
    ccf
    nop
    nop
    ld [hl], a
    ld c, a
    nop
    nop
    ld hl, sp-$79
    ld bc, $db01
    daa
    inc bc
    inc bc
    rst $20
    rra
    rlca
    rlca
    rst $28
    rst $38
    rlca
    rlca
    rst $38
    cp a
    ld b, $05
    cp a
    rst $38
    inc bc
    ld [bc], a
    rst $10
    ld e, a
    ld bc, $9301
    sbc a
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $05
    nop
    nop
    rlca
    dec b
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

jr_0d8_5ee6:
    nop
    nop
    nop
    nop

jr_0d8_5eea:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b

jr_0d8_5ef2:
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
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0d8_5ee6

    nop
    nop
    jr nz, jr_0d8_5eea

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0d8_5ef2

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
    call nz, Call_000_00fc
    nop
    ld [c], a
    cp $00
    nop
    pop af
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    sbc $e7
    ld b, b
    ret nz

    cp a
    jp $e0a0


    inc bc
    db $fd
    ldh [$e0], a
    ld bc, $f0ff
    ldh a, [rP1]
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    ld hl, sp-$08
    add c
    ld a, a
    ldh a, [$f0]
    rst $18
    ldh [rNR41], a
    ldh [$fe], a
    pop hl
    ld b, b
    ret nz

    ld a, a
    ld a, a
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
    ld bc, $8001
    add b
    inc bc
    inc bc
    adc $ce
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rrca
    rrca
    sbc a
    rst $38
    rrca
    rrca
    ccf
    rst $18
    ld e, $1f
    ld a, a
    cp a
    ld e, $1f
    rst $38
    ccf
    rra
    rra
    sbc $ff
    rrca
    rrca
    db $ec
    ld a, a
    inc bc
    inc bc
    db $f4
    ccf
    inc bc
    ld [bc], a
    ldh a, [$3f]
    ld bc, $e801
    cpl
    nop
    nop
    ret z

    rst $08
    nop
    nop
    dec b
    ld b, $00
    nop
    ld b, $05
    nop
    nop
    rlca
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    pop af
    rst $38
    nop
    nop
    xor b
    rst $18
    add b
    add b
    ld [bc], a
    rst $38
    ld b, b
    ret nz

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    and b
    ldh [rSB], a
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    ld a, a
    xor a
    ldh a, [$f0]
    rst $00
    rst $38
    ldh [$e0], a
    call z, $e0f3
    ldh [$fd], a
    jp $e0e0


    ei
    add a
    ldh [$e0], a
    rst $38
    rst $38
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
    adc $ce
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rrca
    rrca
    sbc a
    rst $38
    rrca
    rrca
    ccf
    rst $18
    ld e, $1f
    ld a, a
    cp a
    ld e, $1f
    rst $38
    ccf
    rra
    rra
    sbc $ff
    rrca
    rrca
    db $ec
    ld a, a
    inc bc
    inc bc
    db $f4
    ccf
    inc bc
    ld [bc], a
    ld a, [c]
    ccf
    ld bc, $f501
    ld a, [hl-]
    nop
    nop
    db $db
    rst $10
    nop
    nop
    rra
    rla
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    pop af
    rst $38
    nop
    nop
    xor b
    rst $18
    add b
    add b
    ld [bc], a
    rst $38
    ld b, b
    ret nz

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    and b
    ldh [rSB], a
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    ld a, a
    xor a
    ldh a, [$f0]
    rlca
    rst $38
    ldh [$e0], a
    adc h
    ld [hl], e
    ldh [$e0], a
    db $fd
    inc bc
    ldh [$e0], a
    cp e
    rst $00
    ldh [$e0], a
    ld a, a
    ld a, a
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
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

jr_0d8_62a4:
    ld c, $0f
    ld h, b
    ldh [$0c], a
    rrca
    jr jr_0d8_62a4

    inc b
    rlca
    and $fe
    dec b
    rlca
    rrca
    rst $38
    ld b, $07
    ld de, $06ff
    rlca
    jr nz, @+$01

    inc b
    rlca
    ld [hl], e
    rst $38
    inc b
    rlca
    sbc h
    rst $38
    dec b
    rlca
    db $10
    rst $38
    inc bc
    inc bc
    and b
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $cc01
    rst $38
    ld bc, $6c01
    rst $30
    ld bc, $7b01
    cp $01
    ld bc, $fc7f
    ld bc, $7f01
    rst $38
    ld bc, $fe01
    cp $00
    nop
    cp h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld e, h
    ld h, h
    nop
    nop
    ld a, [hl-]
    ld h, $00
    nop
    ld l, $32
    nop
    nop
    rra
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    ld e, $1d
    nop
    nop
    ld [$000f], sp
    nop
    rlca
    dec b
    nop
    nop
    ld b, $05
    nop
    nop
    dec b
    ld b, $00
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
    jr nc, jr_0d8_638e

    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    db $fc
    add h
    nop
    nop
    add $ba
    nop
    nop
    cp e
    db $fd
    nop
    nop
    db $fd
    cp $80
    add b
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$d0]
    rst $38
    rst $38
    ldh a, [$d0]
    ld a, $ff

jr_0d8_6382:
    ret nc

    jr nc, jr_0d8_63a2

    db $fd
    ldh [$e0], a
    jr jr_0d8_6382

    nop
    nop
    ld a, b
    ret c

jr_0d8_638e:
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld d, b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ret nz

jr_0d8_63a2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
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

jr_0d8_6418:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    ld c, $0f
    jr nc, jr_0d8_6418

    inc c
    rrca
    ld [$04f8], sp
    rlca
    rrca
    rst $38
    inc b
    rlca
    rst $30
    rst $38
    rlca
    rlca
    adc b
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    jr nc, @+$01

    ld [bc], a
    inc bc
    ld c, c
    rst $38
    ld [bc], a
    inc bc
    add a
    rst $38
    ld bc, $c601
    rst $38
    nop
    nop
    call nz, Call_000_00ff
    nop
    call z, Call_000_00ff
    nop
    cp h
    rst $38
    nop
    nop
    cp h
    rst $38
    nop
    nop
    cp [hl]
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp h
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    db $f4
    db $ec
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld l, b
    ld a, b
    nop
    nop
    jr c, jr_0d8_64c0

    nop
    nop
    jr c, jr_0d8_64c4

    nop
    nop
    jr c, jr_0d8_64c8

    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_64c0:
    nop
    nop
    nop
    nop

jr_0d8_64c4:
    nop
    nop
    nop
    nop

jr_0d8_64c8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    jr jr_0d8_6509

    add sp, $18
    inc a
    ccf
    ld [hl], h
    adc h
    cp $ff
    inc a
    call nz, $ffff
    ld a, h
    call nz, $ff7f
    db $fc
    call nz, $ffff
    ld a, h
    ld a, h
    cp $fe
    db $f4
    db $fc
    ld b, $fe
    ld a, h
    ld e, h
    ld [bc], a

jr_0d8_6509:
    cp $38
    jr c, jr_0d8_650e

    rst $38

jr_0d8_650e:
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_6598:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    ld c, $0f
    jr nc, jr_0d8_6598

    inc c
    rrca
    ld [$04f8], sp
    rlca
    rrca
    rst $38
    inc b
    rlca
    rst $30
    rst $38
    rlca
    rlca
    adc b
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    jr nc, @+$01

    ld [bc], a
    inc bc
    ld c, c
    rst $38
    ld [bc], a
    inc bc
    add a
    rst $38
    ld bc, $c601
    rst $38
    nop
    nop
    call nz, Call_000_00ff
    nop
    call z, Call_000_00ff
    nop
    cp h
    rst $38
    nop
    nop
    cp h
    rst $38
    nop
    nop
    cp [hl]
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp h
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    db $f4
    db $ec
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld l, b
    ld a, b
    nop
    nop
    jr c, jr_0d8_6640

    nop
    nop
    jr c, jr_0d8_6644

    nop
    nop
    jr c, jr_0d8_6648

    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_6640:
    nop
    nop
    nop
    nop

jr_0d8_6644:
    nop
    nop
    nop
    nop

jr_0d8_6648:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    inc hl
    nop
    nop
    ld [hl], a
    ld l, b
    add b
    add b
    ld a, l
    ld a, [hl]
    add b
    add b
    cp $ff
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld [c], a
    ld e, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rrca
    rrca
    sbc a
    rst $38
    rrca
    rrca
    ccf
    rst $18
    ld e, $1f
    ld a, a
    cp a
    ld e, $1f
    rst $38
    ccf
    rra
    rra
    sbc $ff
    rrca
    rrca
    db $ec
    ld a, a
    inc bc
    inc bc
    db $f4
    ccf
    inc bc
    ld [bc], a
    ldh a, [$3f]
    ld bc, $f401
    dec sp
    nop
    nop
    db $db
    rst $10
    nop
    nop
    rra
    rla
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    pop af
    rst $38
    nop
    nop
    xor b
    rst $18
    add b
    add b
    ld [bc], a
    rst $38
    ld b, b
    ret nz

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    and b
    ldh [rSB], a
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh [$e0], a
    adc h
    ld [hl], e
    ldh [$e0], a
    db $fd
    inc bc
    ldh [$e0], a
    cp e
    rst $00
    ldh [$e0], a
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$010f], sp
    ld bc, $fff0
    inc bc
    inc bc
    ldh a, [rIE]
    rlca
    rlca
    or $fb
    rlca
    rlca
    cp $ff
    rlca
    rlca
    cp $ff
    dec b
    rlca
    rst $38
    ld a, b
    dec b
    ld b, $fb
    ld a, h
    rlca
    rlca
    and b
    rst $18
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    rst $38
    cp a
    rlca
    inc b
    pop bc
    ccf
    inc bc
    ld [bc], a
    ld [c], a
    ld a, [hl]
    ld bc, $9c01
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh a, [$f0]
    cp a
    ld a, a
    ldh a, [$f0]
    rst $38
    rra
    ldh [$60], a
    ld e, a
    cp a
    ldh [rNR41], a
    ld [bc], a
    db $fd
    ldh [$e0], a
    add e
    rst $38
    ldh [$e0], a
    ld a, a
    db $fd
    ldh [$e0], a
    add e
    db $fc
    ldh [rNR41], a
    ld b, a
    ld a, [hl]
    ret nz

    ld b, b
    add hl, sp
    add hl, sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_0d8_6d0c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    ret nz

    ret nz

    rrca
    inc c
    ldh [$60], a
    dec bc
    inc c
    and b
    ld h, b
    dec bc
    inc c
    sbc $3e
    rla
    jr jr_0d8_6d0c

    ccf
    db $10
    rra
    ccf
    rst $38
    inc de
    rra
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
    inc bc
    inc bc
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
    db $10
    rra
    ld b, b
    ret nz

    jr nz, jr_0d8_6e41

    ld b, b
    ret nz

    ldh [rIE], a
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    jr @+$01

    ld b, b
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
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    add sp, -$08
    rst $38
    rst $38
    ret z

    ld hl, sp+$1c
    rra
    ld [$04f8], sp
    rlca
    ld [$05f8], sp
    ld b, $e8
    jr @+$07

    ld b, $e8
    jr @+$07

    ld b, $d0
    jr nc, @+$07

jr_0d8_6e41:
    ld b, $d0
    jr nc, jr_0d8_6e4a

    ld b, $d0
    jr nc, @+$08

    rlca

jr_0d8_6e4a:
    jr nc, @-$0e

    rlca
    rlca
    ldh a, [$f0]
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_6eb4:
    nop
    nop
    nop
    nop
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ld h, b
    ldh [rTMA], a
    rlca
    jr nc, jr_0d8_6eb4

    dec b
    ld b, $de
    ld a, $0b
    inc c
    pop bc
    ccf
    db $10
    rra
    ccf
    rst $38
    inc de
    rra
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
    inc bc
    inc bc
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

    jr @+$01

    ld b, b
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
    rrca
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    add sp, -$08
    rst $18
    rst $38
    ret z

    ld hl, sp+$20
    ccf
    ld [$1df8], sp
    ld e, $e8
    jr @+$07

    ld b, $e8
    jr @+$07

    ld b, $d0
    jr nc, jr_0d8_6fc2

    ld b, $d0
    jr nc, @+$08

    rlca

jr_0d8_6fc2:
    jr nc, @-$0e

    rlca
    rlca
    ldh a, [$f0]
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    ld c, $fe
    inc b
    rlca
    ld bc, $04ff
    rlca
    rra
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
    inc bc
    inc bc
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
    ldh a, [$f0]
    nop
    nop
    inc c
    db $fc
    nop
    nop
    di
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ldh [$e0], a

jr_0d8_7114:
    rrca
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rrca
    rst $38
    add sp, -$08
    rra
    rst $38
    ret z

    ld hl, sp-$40
    rst $38
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, jr_0d8_7114

    db $10
    rra
    ld b, b
    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    inc b
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    ld c, $fe
    inc b
    rlca
    ld bc, $04ff
    rlca
    rra
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
    dec b
    ld b, $df
    ccf
    dec b
    ld b, $d0
    jr nc, jr_0d8_71f6

    ld b, $d0
    jr nc, jr_0d8_71f7

    inc bc

jr_0d8_71f6:
    ret nc

jr_0d8_71f7:
    jr nc, jr_0d8_71fc

    inc bc
    ldh a, [$30]

jr_0d8_71fc:
    inc bc
    inc bc
    ldh a, [$f0]
    ld bc, $e001
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
    nop
    nop
    nop
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
    add b
    add b
    ld hl, sp-$01
    ld b, b
    ret nz

    rlca
    ld hl, sp-$60
    ld h, b
    di
    db $fc
    and b
    ld h, b

jr_0d8_7290:
    rra
    rst $38
    ret nc

    ldh a, [rIF]
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    add sp, -$08
    rrca
    rst $38
    add sp, -$08
    rra
    rst $38
    ret nc

    ldh a, [$c0]
    rst $38
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, jr_0d8_7290

    db $10
    rra
    ld b, b
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

jr_0d8_7317:
    nop
    nop
    nop
    nop

jr_0d8_731b:
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f0f0
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f0f0
    ld [bc], a
    inc bc
    ld [$02f8], sp
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    rlca
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    ld [bc], a
    inc bc
    jr @+$01

jr_0d8_7354:
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
    ldh a, [rIE]
    rla
    rra
    ld hl, sp-$01

jr_0d8_7368:
    inc de
    rra
    rst $38
    rst $38
    db $10
    rra
    jr c, jr_0d8_7368

    db $10
    rra
    jr nz, jr_0d8_7354

    rla
    jr jr_0d8_7317

    ld h, b
    rla
    jr jr_0d8_731b

    ld h, b
    dec bc
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
    inc c
    rrca
    ld h, b
    ldh [rIF], a
    rrca
    ldh [$e0], a
    rlca
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
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ld h, b
    ldh [rTAC], a
    ld b, $f0
    jr nc, jr_0d8_7406

    ld b, $d0
    jr nc, jr_0d8_7480

    ld a, h

jr_0d8_7406:
    ret nc

    jr nc, @-$7b

    db $fc
    add sp, $18
    db $fc
    rst $38
    ld [$0ff8], sp
    rst $38
    ret z

    ld hl, sp+$07
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
    rst $38
    rst $38
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

jr_0d8_7480:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_7497:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_74ab:
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
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rSC]
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
    ld [bc], a
    inc bc
    jr @+$01

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
    ldh a, [rIE]
    rla
    rra
    ld hl, sp-$01
    inc de
    rra
    ei
    rst $38
    db $10
    rra
    inc b
    db $fc
    rla
    jr jr_0d8_74ab

    ld a, b
    rla
    jr jr_0d8_7497

    ld h, b
    dec bc
    inc c
    and b
    ld h, b
    dec bc
    inc c
    and b
    ld h, b
    inc c
    rrca
    ld h, b
    ldh [rIF], a
    rrca
    ldh [$e0], a
    rlca
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
    inc bc
    inc bc
    add b
    add b
    ld b, $07
    ret nz

    ret nz

    inc c
    rrca
    ld h, b
    ldh [$7b], a
    ld a, h
    and b
    ld h, b
    add e

jr_0d8_7589:
    db $fc
    ret nc

    jr nc, jr_0d8_7589

    rst $38
    ld [$0ff8], sp
    rst $38
    ret z

    ld hl, sp+$07
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
    rst $38
    rst $38
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
    rrca
    rrca
    nop
    nop
    jr nc, jr_0d8_768b

    inc bc
    inc bc
    rst $08
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh a, [rIE]
    inc de
    rra
    ld hl, sp-$01
    ld [$030f], sp
    rst $38
    ld [$040f], sp
    db $fc
    inc b
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    ld [$03f8], sp
    inc bc
    ld hl, sp-$08
    ld bc, $f001
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

jr_0d8_768b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_76ec:
    nop
    nop
    nop
    nop

jr_0d8_76f0:
    nop
    nop
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

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    add b
    add b
    ld [hl], b
    ld a, a
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0d8_76ec

    ld hl, sp-$01
    jr nz, jr_0d8_76f0

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
    rst $38
    rst $38
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
    ld bc, $e001
    ldh [rSC], a
    inc bc
    rra
    rst $38
    dec b
    ld b, $e0
    rra
    dec b
    ld b, $cf
    ccf
    dec bc
    rrca
    ld hl, sp-$01
    rrca
    rrca
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rla
    rra
    ldh a, [rIE]
    dec bc
    rrca
    ld hl, sp-$01
    ld [$030f], sp
    rst $38
    inc b
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    ld [$01f8], sp
    ld bc, $f0f0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d8_7868:
    rlca
    rlca
    ret nz

    ret nz

jr_0d8_786c:
    rrca
    rrca
    ldh [$e0], a

jr_0d8_7870:
    rrca
    rrca
    ldh [$e0], a
    rlca
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

    ld [$200f], sp
    ldh [rSVBK], a
    ld a, a
    jr nz, jr_0d8_7868

    add b
    rst $38
    jr nz, jr_0d8_786c

    ld hl, sp-$01
    jr nz, jr_0d8_7870

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
    ei
    db $fc
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
    dec bc
    inc c
    ld b, b
    ret nz

    rrca
    inc c
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
