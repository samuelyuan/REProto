SECTION "ROM Bank $0ea", ROMX[$4000], BANK[$ea]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    rlca
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
    rrca
    nop
    nop
    nop
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
    add hl, bc
    ld a, $00
    nop
    rla
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rla
    ccf
    nop
    nop
    add hl, bc
    ld a, $00
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
    rra
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    rlca
    nop
    nop
    rlca
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
    ldh [$c0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$e0]
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
    ld [$00f8], sp
    nop
    inc c
    db $fc
    nop
    nop
    and $fe
    nop
    nop
    and $fe
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    and $fe
    nop
    nop
    and $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld [$00f8], sp
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
    ldh a, [$e0]
    nop
    nop
    ldh a, [$e0]
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
    nop
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld sp, hl
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld e, a
    rst $38
    nop
    nop
    ld b, [hl]
    ld sp, hl
    nop
    nop
    jr nz, @+$01

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
    nop
    ld a, a
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    add b
    ldh [rP1], a
    nop
    and b
    ret nc

jr_0ea_426e:
    nop
    nop
    ldh a, [$c8]

jr_0ea_4272:
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ret c

    ldh [rP1], a
    nop
    jr z, jr_0ea_426e

jr_0ea_427e:
    nop
    nop
    jr c, jr_0ea_4272

    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$28
    nop
    nop
    ld hl, sp-$38
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    ld hl, sp-$28
    nop
    nop
    db $fc
    call c, RST_00
    call c, Call_000_00fc
    nop
    call c, Call_000_00fc
    nop
    sub b
    db $fc
    nop
    nop
    inc e
    ldh a, [rP1]
    nop
    inc c
    ldh a, [rP1]
    nop
    sbc h
    ldh [rP1], a
    nop
    sbc b
    db $e4
    nop
    nop
    jr c, @-$3e

    nop
    nop
    jr c, jr_0ea_427e

    nop
    nop
    call nc, Call_000_00ec
    nop
    xor $fe
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    adc [hl]
    cp $00
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
    rra
    nop
    nop
    nop
    ld a, a
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    ccf
    rst $38
    rlca
    rlca
    add hl, bc
    cp $07
    rlca
    rla
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rla
    ccf
    nop
    nop
    add hl, bc
    ld a, $00
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
    ccf
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $08
    nop
    nop
    ld e, a
    ld h, a
    nop
    nop
    rlca
    rra
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
    ret nz

    ret nz

    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    db $f4
    ld a, [$0000]
    rst $30
    ei
    nop
    nop
    or $f9
    add b
    add b
    dec b
    ei
    add b
    add b
    inc bc
    rst $30
    nop
    add b
    ld [c], a
    ei
    nop
    nop
    db $e3
    ld hl, sp+$00
    nop
    add b
    ld a, b
    nop
    nop
    ldh [$d8], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$b8], a
    nop
    nop
    ldh a, [$a8]
    nop
    nop
    ldh [$b8], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$dc], a
    nop
    nop
    add b
    ld a, h
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ldh a, [$f8]
    nop
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
    rrca
    nop
    nop
    nop
    ccf
    nop
    nop
    cp a
    rst $38
    ld bc, $bf01
    rst $38
    ld bc, $8901
    cp $01
    ld bc, $ff97
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    rra
    ld a, a
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rla
    ccf
    nop
    nop
    add hl, bc
    ld a, $00
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
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
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
    ret nz

    ret nz

    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    add b
    ld a, h
    nop
    nop
    ldh [$dc], a
    nop
    nop
    or b
    db $ec
    nop
    nop
    ldh [$b8], a
    nop
    nop
    ldh a, [$a8]
    nop
    nop
    ldh [$b8], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$d8], a
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    ld a, a
    cp a
    ld bc, $7f01
    cp a
    ld bc, $ff01
    cp a
    ld bc, $be01
    rst $38
    ld bc, $f001
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld e, $1f
    nop
    nop
    dec d
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
    rla
    rra
    ld bc, $d701
    rst $38
    inc bc
    inc bc
    sub a
    rst $38
    inc bc
    inc bc
    sub l
    rst $38
    inc bc
    inc bc
    adc d
    rst $38
    inc bc
    inc bc
    adc e
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    ld bc, $ce01
    rst $38
    nop
    nop
    ld a, [bc]
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    db $10
    db $fc
    nop
    nop
    inc de
    rst $38
    ret nz

    ret nz

    add hl, bc
    rst $38
    ld h, b
    ldh [$c9], a
    rst $38
    and b
    ldh [$c5], a
    rst $38
    and b
    ldh [$65], a
    sbc a
    ret nz

    ret nz

    ei
    rst $30
    add b
    add b
    db $ec
    ld hl, sp+$00
    nop
    ld hl, sp-$14
    nop
    nop
    db $fc
    add sp, $00
    nop
    ld hl, sp-$14
    nop
    nop
    db $ec
    ld hl, sp+$00
    nop
    ld a, [$00f6]
    nop
    ld l, d
    sbc [hl]
    nop
    nop
    ld a, [$00fe]
    nop
    ld [c], a
    cp $c0
    nop
    ld [bc], a
    cp $80
    ret nz

    inc c
    rst $38
    ret nz

    ldh [$7d], a
    cp $60
    ldh [$fd], a
    cp $a0
    ld h, b
    db $fd
    cp $c0
    ret nz

    db $fd
    cp $00
    add b
    ld a, h
    ld a, a
    nop
    nop
    jr nc, jr_0ea_4796

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ea_4796:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $de00
    ld a, $03
    nop
    cp a
    ld a, a
    inc bc
    inc b
    cp a
    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    rrca
    inc c
    cp a
    ld a, a
    inc c
    rrca
    inc a
    rst $38
    rrca
    rrca
    and b
    cp a
    rlca
    rlca
    nop
    ccf
    nop
    nop
    inc bc
    ccf
    nop
    nop
    rrca
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    dec [hl]
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    daa
    ccf
    ld a, $3f
    daa
    rst $38
    ld a, h
    ld a, a
    daa
    rst $38
    ld a, h
    ld a, a
    dec h
    rst $38
    ld a, h
    ld a, a
    ld [hl-], a
    rst $38
    ld a, h
    ld a, a
    inc sp
    rst $38
    ld a, h
    ld a, a
    cpl
    rst $38
    ld a, $3f
    ld a, $ff
    nop
    ld bc, $ff12
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop

jr_0ea_487c:
    jr jr_0ea_487c

    nop
    nop
    inc e
    rst $38
    ld hl, sp-$08
    inc c
    rst $38
    ld l, h
    db $fc
    call z, Call_0ea_74ff
    db $fc
    call nz, Call_0ea_74ff
    db $fc
    ld h, h
    sbc a
    ld a, b
    ld hl, sp-$08
    rst $30
    ldh a, [$f0]
    db $ec
    ld a, [$0000]
    ld hl, sp-$12
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$12
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$0a
    nop
    nop
    ld l, b
    sbc [hl]
    inc c
    db $10
    ld hl, sp-$02
    jr c, jr_0ea_48f6

    ldh [$fe], a
    inc a
    ld a, $02
    cp $76
    ld a, [hl]
    rra
    cp $ba
    db $76
    rst $38
    cp $fc
    inc a
    rst $38
    cp $f0
    jr nc, @+$01

    cp $c0
    nop
    ld a, a
    ld a, [hl]
    add b
    ld b, b
    inc a
    ccf
    nop
    add b
    nop
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

jr_0ea_48f6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    nop
    ld e, a
    ld h, a
    nop
    nop
    rst $38
    rst $08
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    nop
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
    add hl, bc
    ld a, $00
    nop
    rla
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    rlca
    rlca
    rla
    rst $38
    rlca
    rlca
    add hl, bc
    cp $07
    rlca
    ccf
    rst $38
    inc bc
    inc bc
    ccf
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    add b
    ld a, h
    nop
    nop
    ldh [$dc], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$b8], a
    nop
    nop
    ldh a, [$a8]
    nop
    nop
    ldh [$b8], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$d8], a
    nop
    nop
    add b
    ld a, b
    nop
    nop
    db $e3
    ld hl, sp+$00
    nop
    ld [c], a
    ei
    nop
    nop
    inc bc
    rst $30
    nop
    add b
    dec b
    ei
    add b
    add b
    or $f9
    add b
    add b
    rst $30
    ei
    nop
    nop
    db $f4
    ld a, [$0000]
    ldh [$fc], a
    nop
    nop
    ldh [$f0], a
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
    inc bc
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
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
    add hl, bc
    ld a, $00
    nop
    rla
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ld a, a
    nop
    nop
    sbc a
    rst $38
    ld bc, $9701
    rst $38
    ld bc, $8901
    cp $01
    ld bc, $ffbf
    nop
    nop
    cp a
    rst $38
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
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
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ldh [$d8], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$b8], a
    nop
    nop
    ldh a, [$a8]
    nop
    nop
    ldh [$b8], a
    nop
    nop
    or b
    db $ec
    nop
    nop
    ldh [$dc], a
    nop
    nop
    add b
    ld a, h
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld a, [bc]
    rra
    ld bc, $ce01
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    adc e
    rst $38
    inc bc
    inc bc
    adc d
    rst $38
    inc bc
    inc bc
    sub l
    rst $38
    inc bc
    inc bc
    sub a
    rst $38
    ld bc, $d701
    rst $38
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
    rla
    rra
    nop
    nop
    dec d
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    cpl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ldh [rIE], a
    ld bc, $f001
    rst $38
    ld bc, $be01
    rst $38
    ld bc, $ff01
    cp a
    ld bc, $7f01
    cp a
    nop
    nop
    ld a, a
    cp a
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    rra
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
    jr nc, jr_0ea_4d22

    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    db $fd
    cp $00
    add b
    db $fd
    cp $c0
    ret nz

    db $fd
    cp $a0
    ld h, b
    ld a, l
    cp $60
    ldh [$0c], a
    rst $38
    ret nz

    ldh [rSC], a
    cp $80
    ret nz

    ld [c], a
    cp $c0
    nop
    ld a, [$00fe]
    nop
    ld l, d
    sbc [hl]
    nop
    nop
    ld a, [$00f6]
    nop
    db $ec
    ld hl, sp+$00
    nop
    ld hl, sp-$14
    nop
    nop
    db $fc
    add sp, $00
    nop
    ld hl, sp-$14

jr_0ea_4d22:
    nop
    nop
    db $ec
    ld hl, sp+$00
    nop
    ei
    rst $30
    add b
    add b
    ld h, l
    sbc a
    ret nz

    ret nz

    push bc
    rst $38
    and b
    ldh [$c9], a
    rst $38
    and b
    ldh [$09], a
    rst $38
    ld h, b
    ldh [rNR13], a
    rst $38
    ret nz

    ret nz

    db $10
    db $fc
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
    ld [bc], a
    inc bc
    nop
    ld bc, $ff12
    ld a, $3f
    ld a, $ff
    ld a, h
    ld a, a
    cpl
    rst $38
    ld a, h
    ld a, a
    inc sp
    rst $38
    ld a, h
    ld a, a
    ld [hl-], a
    rst $38
    ld a, h
    ld a, a
    dec h
    rst $38
    ld a, h
    ld a, a
    daa
    rst $38
    ld a, $3f
    daa
    rst $38
    nop
    nop
    daa
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    dec [hl]
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    rrca
    ccf
    nop
    nop
    inc bc
    ccf
    rlca
    rlca
    nop
    ccf
    rrca
    rrca
    and b
    cp a
    inc c
    rrca
    inc a
    rst $38
    rrca
    inc c
    cp a
    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    inc bc
    inc b
    cp a
    ld a, a
    inc bc
    nop
    cp a
    ld a, a
    ld bc, $de00
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc a
    ccf
    nop
    add b
    ld a, a
    ld a, [hl]
    add b
    ld b, b
    rst $38
    cp $c0
    nop
    rst $38
    cp $f0
    jr nc, @+$01

    cp $fc
    inc a
    rra
    cp $ba
    db $76
    ld [bc], a
    cp $76
    ld a, [hl]
    ldh [$fe], a
    inc a
    ld a, $f8
    cp $38
    ld a, $68
    sbc [hl]
    inc c
    db $10
    ld hl, sp-$0a
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$12
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$12
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$09
    ldh a, [$f0]
    ld h, h
    sbc a
    ld a, b
    ld hl, sp-$3c
    rst $38
    ld [hl], h
    db $fc
    call z, Call_0ea_74ff
    db $fc
    inc c
    rst $38
    ld l, h
    db $fc
    inc e
    rst $38
    ld hl, sp-$08

jr_0ea_4ec0:
    jr jr_0ea_4ec0

    nop
    nop
    and b
    ldh [rP1], a
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
    ld bc, $0000
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rst $38
    jr c, jr_0ea_4fab

    inc b
    rst $38
    ld a, [hl]
    ld a, a
    inc b
    rst $38
    ld a, [hl]
    ld a, a
    inc b
    rst $38
    ld a, [hl]
    ld a, a
    inc b
    rst $38
    ccf
    ccf
    ld [bc], a
    rst $38
    rrca
    rrca
    ld [bc], a
    inc bc
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

jr_0ea_4fab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_0ea_4ffc:
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    jr jr_0ea_4ffc

    rst $38
    rst $38
    inc c
    db $fc
    nop
    rst $38
    ld b, $fe
    nop
    rst $38
    ld b, $fe
    rst $38
    rst $38
    add [hl]
    cp $ff
    rst $38
    add [hl]
    cp $21
    cp $8c
    ld a, h
    ld c, a
    rst $30
    ldh [$e0], a
    ld e, a
    rst $28
    ldh a, [$f0]
    ld e, a
    rst $28
    ldh a, [$f0]
    ld e, a
    rst $28
    ldh a, [$f0]
    ld e, a
    rst $28
    ldh a, [$f0]
    ld e, a
    rst $28
    ldh a, [$f0]
    ld c, a
    rst $30
    ldh [$e0], a
    ld hl, $80fe
    nop
    rst $38
    rst $38
    adc b
    add b
    rst $38
    rst $38
    sub b
    sbc b
    nop
    rst $38
    ld a, [hl-]
    inc a
    nop
    rst $38
    inc a
    ld a, [$ffff]
    ld a, b
    sbc h
    rst $38
    rst $38
    ldh a, [rNR10]
    rst $38
    rst $38
    ret nz

    jr nz, jr_0ea_50d7

    ld a, a
    add b
    ld b, b
    ld a, a
    ld a, [hl]
    nop
    add b
    ld a, $3d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0003
    nop
    nop
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rra
    nop
    nop
    inc bc

jr_0ea_50d7:
    inc e
    nop
    nop
    rrca
    inc a
    nop
    nop
    dec e
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    ccf
    rst $38
    ld b, $07
    ld a, a
    rst $38
    inc c
    rrca
    ld a, a
    rst $38
    inc e
    rra
    rra
    rst $38
    inc e
    rra
    rlca
    rst $38
    inc e
    rra
    nop
    rst $38
    ld c, $0f
    ld b, b
    rst $38
    inc bc
    inc bc
    ld a, b
    rst $38
    ld bc, $ff01
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
    ld a, [hl]
    ld a, a
    nop
    nop
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
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
    rst $38
    rst $38
    nop
    add b
    ccf
    rst $38
    add b
    ld b, b
    rlca
    rst $38
    call c, $c33c
    rst $38
    sbc $3e
    di
    rst $38
    sbc $3e
    ld [hl-], a
    rst $38
    cp $1e
    jp nz, $fc3f

    inc e
    ld h, l
    sbc [hl]
    ldh [rP1], a
    and l
    ld e, [hl]
    ldh [rP1], a
    pop bc
    ld a, b
    and b
    ld h, b
    ld h, c
    sbc b
    ld h, b
    ldh [$81], a
    pop af
    ldh [$e0], a
    pop hl
    pop de
    ldh [$e0], a

jr_0ea_51b4:
    ret nz

    pop af
    ldh [$e0], a
    add c
    ld [c], a
    and b
    ld h, b

jr_0ea_51bc:
    adc a
    rst $28
    ldh a, [$f0]
    db $10
    rst $38
    jr nc, jr_0ea_51b4

    dec de
    call nc, Call_000_30f0
    db $10
    rst $18
    jr nc, jr_0ea_51bc

    rst $08
    ccf
    ldh [$e0], a
    rst $00
    ccf
    ret nz

    ret nz

    swap a
    add b
    add b
    cpl
    ret nc

    nop
    add b
    adc $31
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000e
    nop
    ld b, $1f
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld a, a
    inc bc
    inc bc
    ccf
    rst $38
    ld b, $07
    ccf
    rst $38
    ld c, $0f
    rrca
    rst $38
    ld c, $0f
    inc bc
    rst $38
    ld c, $0f
    nop
    rst $38
    rlca
    rlca
    jr nz, @+$01

    ld bc, $bc01
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    ret nz

    rra
    rst $38
    ret nz

    and b
    inc bc

jr_0ea_5309:
    rst $38
    xor $9e
    pop hl
    rst $38
    rst $28
    sbc a
    ld sp, hl
    rst $38
    rst $30
    adc a
    sbc c
    ld a, a
    ld d, a
    xor a
    pop hl
    rra
    ld a, $c6
    jp nc, Jump_0ea_78ef

    add b
    ld [c], a
    rst $38
    ld a, b
    nop
    ldh a, [$ec]
    ld l, b
    jr jr_0ea_5309

    db $fc
    ld e, b
    jr c, @-$0e

    ld hl, sp+$78
    ld a, b
    ldh a, [$f8]
    ld a, b
    ld a, b
    ldh [$f8], a
    jr c, jr_0ea_53b0

    ret nz

    ldh a, [rBCPS]
    sbc b
    ret nz

    ldh a, [rIE]
    rst $38
    ld bc, $01f1
    rst $38
    ld bc, $bfe1
    ld b, c
    ld bc, $01e1
    rst $38
    and $99
    cp $fe
    rst $28
    sub b
    ld a, [hl]
    cp $ef
    sub b
    cp b
    ld a, b
    rra
    ldh [$80], a
    ld b, b
    rst $20
    jr jr_0ea_535f

jr_0ea_535f:
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

jr_0ea_53b0:
    nop
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
    ld bc, $0003
    nop
    nop
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rra
    nop
    nop
    ld bc, $001e
    nop
    inc bc
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ld a, a
    nop
    nop
    rlca
    rst $38
    ld b, $07
    ld [hl], a
    rst $38
    inc c
    rrca
    ld a, a
    rst $38
    inc e
    rra
    rra
    rst $38
    inc e
    rra
    rlca
    rst $38
    inc e
    rra
    nop
    rst $38
    ld c, $0f
    ld b, b
    rst $38
    inc bc
    inc bc
    ld a, b
    rst $38
    ld bc, $ff01
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
    ld a, [hl]
    ld a, a
    nop
    nop
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
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
    rst $38
    rst $38
    nop
    add b
    ccf
    rst $38
    add b
    ld b, b
    rlca
    rst $38
    call c, $c33c
    rst $38
    sbc $3e
    di
    rst $38
    xor $1e
    or d
    ld a, a
    cp [hl]
    ld c, [hl]
    ld [c], a
    rst $18
    ld [hl], h
    adc h
    db $f4
    rst $28
    ld a, b
    nop
    db $f4
    cp $38
    ld b, b
    ldh a, [$f8]
    inc [hl]
    inc c
    ldh a, [$f8]
    inc l
    inc e
    ldh a, [$f0]
    inc a
    inc a
    ldh a, [$f0]
    inc a
    inc a
    ldh [$f0], a
    inc e
    inc a
    add b
    ldh [$34], a
    ld c, h
    add b
    ldh [$7f], a
    ld a, a
    nop
    ldh [$80], a
    rst $38
    nop
    ret nz

    rst $18
    and b
    nop
    ret nz

    add b
    rst $38
    and $19
    rst $38
    rst $38
    rst $28
    db $10
    ld hl, sp-$08
    rst $28
    db $10
    ldh a, [$f0]
    rra
    ldh [rP1], a
    add b
    and $19
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc hl
    ccf
    nop
    nop
    rlca
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
    cpl
    rst $38
    nop
    nop
    ld a, a
    rst $28
    nop
    nop
    ld a, a
    rst $28
    nop
    nop
    ld a, a
    rst $28
    nop
    nop
    ld h, a
    rst $38
    nop
    ld bc, $f8b7
    nop
    ld bc, $ff9f
    nop
    ld bc, $ff80
    ld bc, $c001
    rst $38
    ld bc, $fc01
    rst $38
    nop
    ld bc, $ff7e
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    add b
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    add e
    rst $38
    nop
    nop
    add $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    ccf
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
    add $37
    nop
    add b
    ld a, a
    adc [hl]

jr_0ea_55ee:
    add b
    nop
    ld a, a
    adc [hl]
    add b
    nop
    ld a, a
    adc [hl]
    add b
    nop
    ld hl, sp-$08
    nop
    nop
    call z, Call_000_00fc
    nop
    db $ec
    db $fc
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    add sp, -$08
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
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    jr jr_0ea_55ee

    nop
    nop
    inc a
    ld hl, sp+$00
    nop
    inc a
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld a, b
    sbc b
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ret nz

    jr nz, jr_0ea_5647

jr_0ea_5647:
    nop
    add b
    ld b, b
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
    add b
    add b
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc hl
    ccf
    nop
    nop
    rlca
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
    cpl
    rst $38
    nop
    nop
    ld a, a
    rst $28
    nop
    nop
    ld a, a
    rst $28
    nop
    nop
    ld a, a
    rst $28
    nop
    nop
    ld h, a
    rst $38
    nop
    ld bc, $f8b7
    nop
    ld bc, $ff9f
    nop
    ld bc, $ff80
    ld bc, $c001
    rst $38
    ld bc, $fc01
    rst $38
    nop
    ld bc, $ff7e
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ret nz

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
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    inc a
    rst $38
    nop
    nop
    add b
    cp $00
    nop
    rst $00
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ccf
    ccf
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
    call nz, Call_000_0034
    nop
    ld a, [hl]
    adc a
    nop
    nop
    ld a, a
    adc [hl]
    nop
    add b
    ei
    ld a, [$0080]
    rst $08
    cp $80
    nop
    db $ec
    db $fc
    add b
    nop
    db $ec
    db $fc
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    add sp, -$08
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
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

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
    db $10
    add b
    nop
    nop
    jr c, jr_0ea_57e6

    nop
    nop
    ld a, h
    ld hl, sp+$00
    nop
    db $fc
    jr c, jr_0ea_57bf

jr_0ea_57bf:
    nop
    ld hl, sp+$18
    nop
    nop
    ret c

    jr c, jr_0ea_57c7

jr_0ea_57c7:
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ea_57e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000e
    nop
    rlca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld a, a
    inc bc
    inc bc
    scf
    rst $38
    ld b, $07
    add hl, sp
    cp $0e
    rrca
    rrca
    rst $38
    ld c, $0f
    inc bc
    rst $38
    ld c, $0f
    nop
    rst $38
    rlca
    rlca
    jr nz, @+$01

    ld bc, $fc01
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ea_58dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    ret nz

    rra
    rst $38
    ret nz

    and b
    inc bc

jr_0ea_5909:
    rst $38
    xor $9e
    pop hl
    rst $38
    rst $28
    sbc a
    ld sp, hl
    rst $38
    rst $30
    adc a
    sbc c
    ld a, a
    ld d, a
    xor a
    pop hl
    rst $18
    ld a, $c6
    or d
    rst $28
    ld a, b
    add b
    ld [c], a
    cp a
    ld a, b
    nop
    ldh a, [$ac]
    ld l, b
    jr jr_0ea_5909

    cp h
    ld e, b
    jr c, jr_0ea_58dd

    add sp, $78
    ld a, b
    ldh [$d8], a
    ld a, b
    ld a, b
    add b
    ld a, b
    jr c, jr_0ea_59b0

    ret nz

    ldh a, [rBCPS]
    sbc b
    ret nz

    ldh a, [rNR23]
    add sp, $0f
    rst $38
    cp $fe
    inc b
    rst $38
    ld b, $fe
    inc b
    rst $38
    ld a, [hl]
    add [hl]
    ccf
    rst $38
    cp $fe
    db $fd
    ld a, $80
    nop
    cp $3f
    nop
    add b
    rst $38
    ccf
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

jr_0ea_59b0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000e
    nop
    rlca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld a, a
    inc bc
    inc bc
    scf
    rst $38
    ld b, $07
    dec a
    cp $0e
    rrca
    rrca
    rst $38
    ld c, $0f
    inc bc
    rst $38
    ld c, $0f
    nop
    rst $38
    rlca
    rlca
    jr nz, @+$01

    ld bc, $bc01
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    ret nz

    rra
    rst $38
    ret nz

    and b
    inc bc
    rst $38
    xor $9e
    pop hl
    rst $38
    rst $28
    sbc a
    ld sp, hl
    rst $38
    rst $30
    adc a
    sbc c
    ld a, a
    ld d, a
    xor a
    pop hl
    rst $38
    ld a, $c6
    ld a, [c]
    rst $38
    ld a, b
    add b
    ld a, [c]
    rst $38
    ld a, b
    nop
    ldh a, [$fc]
    inc [hl]
    inc c
    ldh a, [$fc]
    inc l
    inc e
    ldh a, [$f8]
    inc a
    inc a
    ldh [$f8], a
    ld e, $1e
    add b
    ld a, b
    ld c, $1e
    ret nz

    ldh a, [rNR30]
    ld h, $c0
    ldh a, [rTMA]
    ld a, [hl-]
    rrca
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, a
    add b
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
    ld h, b
    add b
    rst $38
    sbc a
    add b
    ldh [$7f], a
    sbc a
    ldh [$e0], a
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
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000e
    nop
    rlca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld a, a
    inc bc
    inc bc
    scf
    rst $38
    ld b, $07
    dec a
    cp $0e
    rrca
    rrca
    rst $38
    ld c, $0f
    inc bc
    rst $38
    ld c, $0f
    nop
    rst $38
    rlca
    rlca
    jr nz, @+$01

    ld bc, $bc01
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    ret nz

    rra
    rst $38
    ret nz

    and b
    inc bc
    rst $38
    xor $9e
    pop hl
    rst $38
    rst $28
    sbc a
    ld sp, hl
    rst $38
    rst $30
    adc a
    sbc c
    ld a, a
    ld d, a
    xor a
    pop hl
    rst $38
    ld a, $c6
    ld a, [c]
    rst $38
    ld a, b
    add b
    ld a, [c]
    rst $38
    ld a, b
    nop
    ldh a, [$fc]
    inc [hl]
    inc c
    ldh a, [$fc]
    inc l
    inc e
    ldh a, [$f8]
    inc a
    inc a
    ldh [$f8], a
    ld e, $1e
    add b
    ld a, b
    ld c, $1e
    ret nz

    ldh a, [rNR30]
    ld h, $c0
    ldh a, [rTMA]
    ld a, [hl-]
    rrca
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, a
    add b
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
    ld h, b
    add b
    rst $38
    sbc a
    add b
    ldh [$7f], a
    sbc a
    ldh [$e0], a
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
    ld a, b
    ld a, b
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    ld bc, $c001
    rst $08
    nop
    nop
    nop
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
    rlca
    ld bc, $c001
    rst $08
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    ld bc, $f801
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ldh [$c0], a
    rrca
    rlca
    ldh a, [$e0]
    rrca
    rlca
    ldh a, [$e0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    nop
    rrca
    nop
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [$3f]
    rst $38
    ldh [$f8], a
    ccf
    rst $38
    ldh [$f8], a
    add hl, bc
    cp $80
    ld a, b
    rla
    rst $38
    ldh [$f8], a
    rra
    rst $38
    ldh a, [$f8]
    rra
    ccf
    ldh a, [$f8]
    rra
    ccf
    ldh a, [$f8]
    rra
    ccf
    ldh a, [$f8]
    rra
    rst $38
    ldh a, [$f8]
    rla
    rst $38
    ldh [$f8], a
    add hl, bc
    cp $80
    ld a, b
    ccf
    rst $38
    ldh [$f8], a
    ccf
    rst $38
    ldh [$f8], a
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    ldh a, [rIF]
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rlca
    ldh a, [$e0]
    rrca
    rlca
    ldh a, [$e0]
    rlca
    inc bc
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
    inc a
    inc a
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
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
    add b
    rst $38
    ld bc, $8e01
    rst $38
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    inc bc
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    rlca
    ld a, a
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    rst $28
    rst $30
    nop
    nop
    rst $30
    ei
    nop
    ld bc, $ff3f
    ld bc, $9e01
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f801
    rst $38
    ld bc, $fc01
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld a, b
    ld [hl], a
    nop
    nop
    inc sp
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
    ccf
    inc a
    nop
    nop
    rst $38
    cp $80
    nop
    rst $38
    cp $c0
    ld b, b
    ld a, a
    cp $e0
    jr nz, jr_0ea_5f48

    cp $f0
    ld [hl], b
    rlca
    db $fc
    ldh a, [$f0]
    ld bc, $f0ff
    ldh [$c0], a
    cp $e0
    ret nz

    ldh a, [$fc]

jr_0ea_5f1a:
    ret nz

    nop
    jr nc, jr_0ea_5f1a

    nop
    nop
    ret nz

    cp h
    nop
    nop
    ldh [$d8], a
    nop
    nop
    ldh [$f8], a
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
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop

jr_0ea_5f48:
    nop
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    jr @-$06

    nop
    nop
    jr c, @-$06

    nop
    nop
    ld a, b
    ld hl, sp+$00
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
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000e
    nop
    rlca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld a, a
    inc bc
    inc bc
    scf
    rst $38
    ld b, $07
    dec a
    cp $0e
    rrca
    rrca
    rst $38
    ld c, $0f
    inc bc
    rst $38
    ld c, $0f
    nop
    rst $38
    rlca
    rlca
    jr nz, @+$01

    ld bc, $bc01
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    ldh [rIE], a
    rst $38
    ldh [$90], a
    rra
    rst $38
    ldh a, [$88]
    inc bc
    rst $38
    or $8e
    pop hl
    rst $38
    sbc e
    rst $20
    ld sp, hl
    rst $38
    cp e
    rst $00
    sbc c
    ld a, a
    ld a, e
    add a
    pop hl
    rst $38
    ld a, d
    add [hl]
    ld a, [c]
    rst $38
    ld a, b
    db $fc
    ld a, [c]
    rst $38
    ld a, b
    ld a, b
    ldh a, [$fc]
    ld a, b
    ld a, b
    ldh a, [$fc]
    jr c, jr_0ea_6120

    ldh a, [$f8]
    ld l, b
    sbc b
    ldh [$f8], a
    ld hl, sp+$08
    add b
    ld a, b
    ld a, b
    ld [$f0c0], sp
    nop
    nop
    ret nz

    ldh a, [rNR23]
    jr jr_0ea_60be

    pop af

jr_0ea_60be:
    db $ec
    db $f4
    ld [bc], a
    db $e3
    sbc b
    add sp, $0f
    rst $28
    ld [hl], b
    sub b
    cp a
    rst $18
    ldh [$e0], a
    rst $38
    sbc a
    ld h, b
    add b
    rst $38
    sbc a
    add b
    ldh [$7f], a
    sbc a
    ldh [$e0], a
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

jr_0ea_6120:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000e
    nop
    rlca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld a, a
    inc bc
    inc bc
    scf
    rst $38
    ld b, $07
    dec a
    cp $0e
    rrca
    rrca
    rst $38
    ld c, $0f
    inc bc
    rst $38
    ld c, $0f
    nop
    rst $38
    rlca
    rlca
    jr nz, @+$01

    ld bc, $bc01
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    ldh [rIE], a
    rst $38
    ldh [$90], a
    rra
    rst $38
    ldh a, [$88]
    inc bc
    rst $38
    or $8e
    pop hl
    rst $38
    sbc e
    rst $20
    ld sp, hl
    rst $38
    cp e
    rst $00
    sbc c
    ld a, a
    ld a, e
    add a
    pop hl
    rst $38
    ld a, d
    add [hl]
    ld a, [c]
    rst $38
    ld a, b
    db $fc
    ld a, [c]
    rst $38
    ld a, b
    ld a, b
    ldh a, [$fc]
    ld a, b
    ld a, b
    ldh a, [$fc]
    jr c, jr_0ea_62a0

    ldh a, [$f8]
    ld l, b
    sbc b
    ldh [$f8], a
    ld hl, sp+$08
    add b
    ld a, b
    ld a, b
    ld [$f0c0], sp
    nop
    nop
    ret nz

    ldh a, [rNR23]
    jr jr_0ea_623e

    pop af

jr_0ea_623e:
    db $ec
    db $f4
    ld [bc], a
    db $e3
    sbc b
    add sp, $0f
    rst $28
    ld [hl], b
    sub b
    cp a
    rst $18
    ldh [$e0], a
    rst $38
    sbc a
    ld h, b
    add b
    rst $38
    sbc a
    add b
    ldh [$7f], a
    sbc a
    ldh [$e0], a
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

jr_0ea_62a0:
    nop
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
    nop
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    ld bc, $ffff
    ld bc, $7f03
    rst $38
    ld bc, $0803
    rst $38
    ld bc, $1703
    db $fd
    ld bc, $1703
    ei
    ld bc, $1703
    ei
    ld bc, $1703
    ei
    ld bc, $1707
    ei
    ld [hl], c
    ld a, a
    rla
    ei
    pop af
    rst $38
    inc de
    db $fd
    pop af
    rst $38
    ld a, [bc]
    rst $38
    pop af
    rst $38
    rrca
    rst $38
    ld a, b
    ld a, a
    adc a
    rst $38
    jr c, jr_0ea_6336

    add b
    rst $38
    nop
    nop
    nop
    ccf
    nop
    nop
    rrca
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

jr_0ea_6336:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add [hl]
    cp $00
    nop
    add e
    rst $38
    nop
    nop
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    pop bc
    rst $38
    add b
    add b
    pop bc
    rst $38
    add b
    add b
    ld h, a
    sbc a
    nop
    nop
    ld hl, sp-$0c
    nop
    nop
    db $ec
    ld hl, sp+$00
    nop
    ld hl, sp-$14
    nop
    nop
    db $fc
    add sp, $00
    nop
    ld hl, sp-$14
    inc bc
    nop
    db $ec
    ld hl, sp+$06
    nop
    ld hl, sp-$10
    inc l
    nop
    ld h, b
    sbc b
    ld b, b
    ld a, b
    ld hl, sp-$08
    add sp, -$10
    ld hl, sp-$07
    ldh a, [$e8]
    ld bc, $e0f2
    ld [hl], b
    inc bc
    db $fc
    ret nz

    ld b, b
    rst $30
    ld hl, sp+$00
    add b
    cp $f1
    nop
    nop
    cp $f1
    nop
    nop
    db $ec
    ld a, [c]
    nop
    nop
    ldh a, [$ec]
    nop
    nop
    ldh [$d0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    ld bc, $ffff
    ld bc, $7f03
    rst $38
    ld bc, $0803
    rst $38
    ld bc, $1303
    db $fd
    ld bc, $1703
    ei
    ld bc, $1703
    ei
    ld bc, $1703
    ei
    ld bc, $1707
    ei
    ld [hl], c
    ld a, a
    rla
    ei
    pop af
    rst $38
    inc de
    db $fd
    pop af
    rst $38
    ld [$f1ff], sp
    rst $38
    rrca
    rst $38
    ld a, b
    ld a, a
    adc a
    rst $38
    jr c, jr_0ea_64b6

    add b
    rst $38
    nop
    nop
    nop
    ccf
    nop
    nop
    rrca
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

jr_0ea_64b6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add [hl]
    cp $00
    nop
    add e
    rst $38
    nop
    nop
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    pop bc
    rst $38
    add b
    add b
    pop bc
    rst $38
    add b
    add b
    ld h, e
    sbc a
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
    inc bc
    nop
    db $fc
    db $fc
    ld b, $00
    ld hl, sp-$08
    inc l
    nop
    ld h, b
    sbc b
    ld b, b
    ld a, b
    ld hl, sp-$08
    add sp, -$10
    ld hl, sp-$07
    ldh a, [$e8]
    nop
    ei
    ld h, b
    ldh a, [rP1]
    rst $38
    ld b, b
    ret nz

    pop af
    cp $00
    add b
    di
    db $fc
    nop
    add b
    or $f9
    nop
    nop
    db $ec
    ld a, [c]
    nop
    nop
    ld hl, sp-$1c
    nop
    nop
    ldh [$d8], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    ld bc, $ffff
    ld bc, $7f03
    rst $38
    ld bc, $0903
    cp $01
    inc bc
    rla
    rst $38
    ld bc, $1f03
    rst $38
    ld bc, $1f03
    rst $38
    ld bc, $1f03
    rst $38
    ld bc, $1f07
    rst $38
    ld [hl], c
    ld a, a
    rra
    rst $38
    pop af
    rst $38
    rla
    rst $38
    pop af
    rst $38
    add hl, bc
    cp $f1
    rst $38
    rrca
    rst $38
    ld a, b
    ld a, a
    adc a
    rst $38
    jr c, jr_0ea_6636

    add b
    rst $38
    nop
    nop
    nop
    ccf
    nop
    nop
    rrca
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

jr_0ea_6636:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add [hl]
    cp $00
    nop
    add e
    rst $38
    nop
    nop
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    pop bc
    rst $38
    add b
    add b
    pop bc
    rst $38
    add b
    add b
    add e
    ld a, a
    nop
    nop
    ldh [$f0], a
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
    inc bc
    nop
    ldh a, [$f0]
    ld b, $00
    ldh [$f0], a
    inc l
    nop
    add b
    ld [hl], b
    ld b, b
    ld a, b
    ldh a, [$f0]
    add sp, -$10
    ldh a, [$f1]
    ldh a, [$e8]
    ld bc, $e0f2
    ld [hl], b
    inc bc
    db $fc
    ret nz

    ld b, b
    rst $30
    ld hl, sp+$00
    add b
    cp $f1
    nop
    nop
    cp $f1
    nop
    nop
    db $ec
    ld a, [c]
    nop
    nop
    ldh a, [$ec]
    nop
    nop
    ldh [$d0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    ld bc, $001f
    nop
    inc bc
    rra
    nop
    nop
    inc bc
    rra
    rlca
    rlca
    inc bc
    ld a, a
    rrca
    rrca
    inc bc
    rst $38
    ld c, $0f
    inc bc
    rst $38
    ld c, $0f
    ld sp, $0eff
    rrca
    inc a
    rst $38
    ld b, $07
    rrca
    rst $38
    rlca
    rlca
    inc bc
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld bc, $e001
    rst $38
    nop
    nop
    db $fc
    rst $38
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
    ld e, $00
    nop
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
    ld a, $3c
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop

jr_0ea_6978:
    rst $38
    cp $00
    nop
    rst $38
    cp $00
    nop
    cp $ff
    ld h, b
    ldh [rNR34], a
    rst $38
    jr nc, jr_0ea_6978

jr_0ea_6988:
    ld [bc], a
    rst $38
    jr @-$06

jr_0ea_698c:
    ldh [rIE], a
    jr jr_0ea_6988

jr_0ea_6990:
    ld hl, sp-$01
    jr jr_0ea_698c

    ld a, b
    sbc a
    jr jr_0ea_6990

    ld hl, sp-$01
    jr nc, jr_0ea_698c

    db $fc
    rst $38
    nop
    add b
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
    ld hl, sp-$08
    nop
    nop
    ld h, b
    sbc b
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    ret nz

    ret nz

    nop
    nop
    inc bc
    jp RST_00


    dec a
    cp $80
    add b
    inc de
    db $fd
    nop
    nop
    xor [hl]
    ld a, [c]
    nop
    nop
    db $fc
    cp h
    nop
    nop
    db $ec
    or b
    nop
    nop
    ldh a, [$3c]
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ret nz

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
    ld bc, $0002
    nop
    dec sp
    inc l
    nop
    nop
    ld c, [hl]
    ld a, l
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ei
    db $fc
    nop
    nop
    rst $38
    ld hl, sp+$00
    nop
    ld sp, hl
    cp $00
    ld bc, $fd02
    nop
    inc bc
    ld [bc], a
    db $fd
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    ld hl, sp-$01
    nop
    inc bc
    nop
    rst $38
    rlca
    rlca
    ldh a, [$3f]
    rrca
    ld c, $fc
    adc a
    rrca
    ld c, $ae
    rst $10
    rrca
    ld c, $ee
    or a
    rrca
    ld c, $ae
    rst $10
    rrca
    ld c, $fc
    adc a
    rlca
    rlca
    ldh a, [$3f]
    nop
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    ld hl, sp-$01
    nop
    inc bc
    ld [bc], a
    db $fd
    nop
    ld bc, $fd02
    nop
    nop
    ld sp, hl
    cp $00
    nop
    rst $38
    ld hl, sp+$00
    nop
    ei
    db $fc
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld c, [hl]
    ld a, l
    nop
    nop
    dec sp
    inc l
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    jr nz, jr_0ea_6aeb

jr_0ea_6aeb:
    nop
    ldh [rNR10], a
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ld h, b
    and b
    nop
    nop
    jp Jump_000_007b


    nop
    jp $807f


    add b
    jp $80ff


    add b
    and e
    rst $38
    add b
    add b
    and e
    rst $38
    nop
    nop
    and d
    cp $00
    nop
    and h
    db $fc
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    ldh [$c0], a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    and h
    db $fc
    nop
    nop
    and d
    cp $00
    nop
    and e
    rst $38
    nop
    nop
    and e
    rst $38
    add b
    add b
    jp $80ff


    add b
    jp $807f


    add b
    jp Jump_000_007b


    nop
    ld h, b
    and b
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a
    nop
    nop
    ret nz

    jr nz, jr_0ea_6b63

jr_0ea_6b63:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    ld [de], a
    rst $38
    ld a, h
    ld a, a
    ld a, $ff
    ld hl, sp-$01
    cpl
    rst $38
    ld hl, sp-$01
    inc sp
    rst $38
    ld hl, sp-$01
    ld [hl-], a
    rst $38
    ld hl, sp-$01
    dec h
    rst $38
    ld hl, sp-$01
    daa
    rst $38
    ld a, h
    ld a, a
    daa
    rst $38
    nop
    nop
    daa
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    dec [hl]
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    rrca
    ccf
    nop
    nop
    inc bc
    ccf
    rlca
    rlca
    nop
    ccf
    rrca
    rrca
    and b
    cp a
    inc c
    rrca
    inc a
    rst $38
    rrca
    inc c
    cp a
    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    inc bc
    inc b
    cp a
    ld a, a
    inc bc
    nop
    cp a
    ld a, a
    ld bc, $de00
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc a
    ccf
    nop
    add b
    ld a, a
    ld a, [hl]
    add b
    ld b, b
    rst $38
    cp $c0
    nop
    rst $38
    cp $f0
    jr nc, @+$01

    cp $fc
    inc a
    rra
    cp $ba
    db $76
    ld [bc], a
    cp $76
    ld a, [hl]
    ldh [$fe], a
    inc a
    ld a, $f8
    cp $38
    ld a, $68
    sbc [hl]
    inc c
    db $10
    ld hl, sp-$0a
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$12
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$12
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$0c
    nop
    nop
    ld h, h
    sbc h
    nop
    nop
    call nz, Call_000_00fc
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld a, [bc]
    rra
    inc bc
    inc bc
    adc [hl]
    rst $38
    rlca
    rlca
    rrca
    rst $38
    rlca
    rlca
    dec bc
    rst $38
    rlca
    rlca
    ld a, [bc]
    rst $38
    rlca
    rlca
    dec d
    rst $38
    rlca
    rlca
    rla
    rst $38
    inc bc
    inc bc
    sub a
    rst $38
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
    scf
    ccf
    nop
    nop
    ld [hl], l
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld l, a
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ldh [rIE], a
    ld bc, $f001
    rst $38
    ld bc, $be01
    rst $38
    ld bc, $ff01
    cp a
    ld bc, $7f01
    cp a
    nop
    nop
    ld a, a
    cp a
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    rra
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
    jr nc, jr_0ea_6fa2

    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    db $fd
    cp $00
    add b
    db $fd
    cp $c0
    ret nz

    db $fd
    cp $a0
    ld h, b
    ld a, l
    cp $60
    ldh [$0c], a
    rst $38
    ret nz

    ldh [rSC], a
    cp $80
    ret nz

    ld [c], a
    cp $c0
    nop
    ld a, [$00ff]
    nop
    ld l, d
    sbc a
    nop
    nop
    ld a, [$00f7]
    nop
    db $ec
    ei
    nop
    nop
    ld hl, sp-$12
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$14

jr_0ea_6fa2:
    nop
    nop
    db $ec
    ld hl, sp+$00
    nop
    ld hl, sp-$0c
    nop
    nop
    ld h, h
    sbc h
    nop
    nop
    call nz, Call_000_00fc
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
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
    rrca
    nop
    nop
    nop
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
    add hl, bc
    ld a, $00
    nop
    rla
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    rlca
    rlca
    rla
    rst $38
    ld c, $0f
    add hl, bc
    cp $0e
    rrca
    ccf
    rst $38
    ld c, $0f
    ccf
    rst $38
    ld c, $0f
    nop
    rst $38
    ld c, $0f
    nop
    rst $38
    rlca
    rlca
    rrca
    rst $38
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
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
    ret nz

    ret nz

    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    pop af
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ret c

    ld hl, sp+$00
    rst $38
    add sp, -$08
    ldh [rIE], a
    add sp, -$08
    ldh [rIE], a
    ldh a, [$f0]
    add c
    ld a, a
    ldh [$e0], a
    ldh [$dc], a
    nop
    nop
    or b
    db $ec
    nop
    nop
    ldh [$b8], a
    nop
    nop
    ldh a, [$a8]
    nop
    nop
    ldh [$b8], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$d8], a
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $3e
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    ld a, a
    cp a
    ld bc, $7f01
    cp a
    ld bc, $ff01
    cp a
    ld bc, $bc01
    rst $38
    ld bc, $e001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    inc bc
    ccf
    nop
    nop
    rrca
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    dec [hl]
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    daa
    ccf
    ld e, $1f
    daa
    rst $38
    inc a
    ccf
    daa
    rst $38
    inc a
    ccf
    dec h
    rst $38
    inc a
    ccf
    ld [hl-], a
    rst $38
    inc a
    ccf
    inc sp
    rst $38
    inc a
    ccf
    cpl
    rst $38
    ld e, $1f
    ld a, $ff
    nop
    nop
    ld [de], a
    rst $38
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    jr @-$02

    nop
    nop
    dec e
    rst $38
    ret nz

    ret nz

    inc c
    rst $38
    ldh [$e0], a
    call z, $a0ff
    ldh [$c4], a
    rst $38
    and b
    ldh [$64], a
    sbc a
    ret nz

    ret nz

    ld sp, hl
    rst $30
    add b
    add b
    db $ec
    ld a, [$0000]
    ld hl, sp-$12
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$14
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$0a
    nop
    nop
    ld l, b
    sbc [hl]
    nop
    nop
    ld hl, sp-$02
    ret nz

    nop
    ld [c], a
    cp $80
    ret nz

    ld [bc], a
    rst $38
    ret nz

    ldh [$1f], a
    cp $60
    ldh [rIE], a
    cp $a0
    ld h, b
    rst $38
    cp $c0
    ret nz

    rst $38
    cp $00
    add b
    ld a, h
    ld a, a
    nop
    nop
    inc a
    inc a
    nop
    nop
    nop
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
    ld bc, $de00
    ld a, $03
    nop
    cp a
    ld a, a
    inc bc
    inc b
    cp a
    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    rrca
    inc c
    cp a
    ld a, a
    inc c
    rrca
    inc a
    rst $38
    rrca
    rrca
    and b
    cp a
    rlca
    rlca
    nop
    ccf
    nop
    nop
    inc bc
    ccf
    nop
    nop
    rrca
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    dec [hl]
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    daa
    ccf
    ld a, h
    ld a, a
    daa
    rst $38
    ld hl, sp-$01
    daa
    rst $38
    ld hl, sp-$01
    dec h
    rst $38
    ld hl, sp-$01
    ld [hl-], a
    rst $38
    ld hl, sp-$01
    inc sp
    rst $38
    ld hl, sp-$01
    cpl
    rst $38
    ld a, h
    ld a, a
    ld a, $ff
    nop
    inc bc
    ld [de], a
    rst $38
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ret z

    ld hl, sp+$00
    nop
    call nz, Call_000_00fc
    nop
    ld h, h
    sbc h
    nop
    nop
    ld hl, sp-$0c
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$12
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$12
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$0a
    nop
    nop
    ld l, b
    sbc [hl]
    inc c
    db $10
    ld hl, sp-$02
    jr c, jr_0ea_7476

    ldh [$fe], a
    inc a
    ld a, $02
    cp $76
    ld a, [hl]
    rra
    cp $ba
    db $76
    rst $38
    cp $fc
    inc a
    rst $38
    cp $f0
    jr nc, @+$01

    cp $c0
    nop
    ld a, a
    ld a, [hl]
    add b
    ld b, b
    inc a
    ccf
    nop
    add b
    nop
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

jr_0ea_7476:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    ld a, a
    cp a
    ld bc, $7f01
    cp a
    ld bc, $ff01
    cp a
    ld bc, $be01
    rst $38
    ld bc, $f001
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld l, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld [hl], l
    ld a, a
    nop
    nop
    scf
    ccf
    nop
    nop
    rla
    rra
    nop
    nop
    rla
    rra
    inc bc
    inc bc
    sub a
    rst $38
    rlca
    rlca
    rla
    rst $38
    rlca
    rlca
    dec d
    rst $38
    rlca
    rlca
    ld a, [bc]
    rst $38
    rlca
    rlca
    dec bc
    rst $38
    rlca
    rlca
    rrca
    rst $38
    inc bc
    inc bc
    adc [hl]

Call_0ea_74ff:
    rst $38
    nop
    nop
    ld a, [bc]
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ret z

    ld hl, sp+$00
    nop
    call nz, Call_000_00fc
    nop
    ld h, h
    sbc h
    nop
    nop
    ld hl, sp-$0c
    nop
    nop
    db $ec
    ld hl, sp+$00
    nop
    ld hl, sp-$14
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$12
    nop
    nop
    db $ec
    ei
    nop
    nop
    ld a, [$00f7]
    nop
    ld l, d
    sbc a
    nop
    nop
    ld a, [$00ff]
    nop
    ld [c], a
    cp $c0
    nop
    ld [bc], a
    cp $80
    ret nz

    inc c
    rst $38
    ret nz

    ldh [$7d], a
    cp $60
    ldh [$fd], a
    cp $a0
    ld h, b
    db $fd
    cp $c0
    ret nz

    db $fd
    cp $00
    add b
    ld a, h
    ld a, a
    nop
    nop
    jr nc, jr_0ea_7616

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ea_7616:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ld a, a
    rlca
    rlca
    rrca
    rst $38
    ld c, $0f
    nop
    rst $38
    ld c, $0f
    nop
    rst $38
    ld c, $0f
    ccf
    rst $38
    ld c, $0f
    ccf
    rst $38
    ld c, $0f
    add hl, bc
    cp $07
    rlca
    rla
    rst $38
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rla
    ccf
    nop
    nop
    add hl, bc
    ld a, $00
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    nop
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
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ldh [$d8], a
    nop
    nop
    or b
    add sp, $00
    nop
    ldh [$b8], a
    nop
    nop
    ldh a, [$a8]
    nop
    nop
    ldh [$b8], a
    nop
    nop
    or b
    db $ec
    nop
    nop
    ldh [$dc], a
    nop
    nop
    add c
    ld a, a
    ldh [$e0], a
    ldh [rIE], a
    ldh a, [$f0]
    ldh [rIE], a
    add sp, -$08
    nop
    rst $38
    add sp, -$08
    nop
    rst $38
    ret c

    ld hl, sp-$0f
    rst $38
    ldh a, [$f0]
    ldh a, [$fc]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
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
    ld [bc], a
    inc bc
    nop
    nop
    ld [de], a
    rst $38
    ld e, $1f
    ld a, $ff
    inc a
    ccf
    cpl
    rst $38
    inc a
    ccf
    inc sp
    rst $38
    inc a
    ccf
    ld [hl-], a
    rst $38
    inc a
    ccf
    dec h
    rst $38
    inc a
    ccf
    daa
    rst $38
    ld e, $1f
    daa
    rst $38
    nop
    nop
    daa
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    dec [hl]
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    rrca
    ccf
    nop
    nop
    inc bc
    ccf
    nop
    nop
    ret nz

    rst $38
    ld bc, $e001
    rst $38
    ld bc, $bc01
    rst $38
    ld bc, $ff01
    cp a
    ld bc, $7f01
    cp a
    nop
    nop
    ld a, a
    cp a
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    ld e, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    rst $38
    cp $00
    add b
    rst $38
    cp $c0
    ret nz

    rst $38
    cp $a0
    ld h, b
    rra
    cp $60
    ldh [rSC], a
    rst $38
    ret nz

    ldh [$e2], a
    cp $80
    ret nz

    ld hl, sp-$02
    ret nz

    nop
    ld l, b
    sbc [hl]
    nop
    nop
    ld hl, sp-$0a
    nop
    nop
    db $ec
    ld a, [$0000]
    ld hl, sp-$14
    nop
    nop
    db $fc
    ld [$0000], a
    ld hl, sp-$12
    nop
    nop
    db $ec
    ld a, [$0000]
    ld sp, hl
    rst $30
    add b
    add b
    ld h, h
    sbc a
    ret nz

    ret nz

    call nz, $a0ff
    ldh [$cc], a
    rst $38
    and b
    ldh [$0c], a
    rst $38
    ldh [$e0], a
    dec e
    rst $38

jr_0ea_78be:
    ret nz

    ret nz

    jr jr_0ea_78be

    nop
    nop
    and b
    ldh [rP1], a
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

Jump_0ea_78ef:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
