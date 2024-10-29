SECTION "ROM Bank $0da", ROMX[$4000], BANK[$da]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rla
    rra
    nop
    nop
    ld d, $1f
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
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
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    inc d
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    ld l, $fe
    nop
    nop
    ld l, $fe
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
    inc d
    db $fc
    nop
    nop
    inc d
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
    ld l, $fe
    nop
    nop
    xor $fe
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    db $f4
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
    inc bc
    inc bc
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    ld [$000f], sp
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
    rra
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    inc l
    ccf
    nop
    nop
    jr z, jr_0da_4213

    nop
    nop
    jr z, jr_0da_4217

    nop
    nop
    jr nz, jr_0da_421b

    nop
    nop
    jr nz, jr_0da_421f

    nop
    nop
    jr nz, jr_0da_4223

    nop
    nop
    jr nz, jr_0da_4227

    nop
    nop
    jr nz, jr_0da_422b

    nop
    nop
    jr nz, jr_0da_422f

    nop
    nop
    jr z, jr_0da_4233

    nop
    nop
    cpl
    ccf
    nop
    nop
    cpl
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
    rlca

jr_0da_4213:
    rlca
    nop
    nop
    nop

jr_0da_4217:
    nop
    nop
    nop
    nop

jr_0da_421b:
    nop
    nop
    nop
    nop

jr_0da_421f:
    nop
    nop
    nop
    nop

jr_0da_4223:
    nop
    nop
    nop
    nop

jr_0da_4227:
    nop
    nop
    nop
    nop

jr_0da_422b:
    nop
    nop
    nop
    nop

jr_0da_422f:
    nop
    nop
    nop
    nop

jr_0da_4233:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_4256:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld b, b
    nop
    nop
    jr nz, jr_0da_4256

    nop
    nop
    and b
    ldh [rP1], a
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
    add sp, -$08
    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    ld e, h
    db $fc

jr_0da_4292:
    nop
    nop
    ld e, h
    db $fc

jr_0da_4296:
    nop
    nop
    jr jr_0da_4292

jr_0da_429a:
    nop
    nop
    jr jr_0da_4296

jr_0da_429e:
    nop
    nop
    jr z, jr_0da_429a

jr_0da_42a2:
    nop
    nop
    jr z, jr_0da_429e

jr_0da_42a6:
    nop
    nop
    jr jr_0da_42a2

    nop
    nop
    jr jr_0da_42a6

    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    ret c

    ld hl, sp+$00
    nop
    ret c

    ld hl, sp+$00
    nop
    add sp, -$08
    nop
    nop
    call z, Call_000_00fc
    nop
    sbc $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld a, a
    ld a, a
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    adc h
    rst $38
    inc bc
    inc bc
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_43a3

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    rst $28
    rst $18
    nop
    nop
    xor a
    rst $18
    nop
    nop
    rst $28
    rst $18
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    daa
    ccf
    nop
    nop
    jr jr_0da_43ac

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_43a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_43ac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc h
    db $fc
    nop
    nop
    sub $ee
    nop
    nop
    or $ee
    nop
    nop
    or $ee
    nop
    nop
    db $ec
    db $fc

jr_0da_4402:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    add sp, -$08
    nop
    nop
    ld l, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0da_4402

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ret z

    ld hl, sp+$00
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
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
    daa
    ccf
    nop
    nop
    inc l
    ccf
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_4523

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    sub b
    rst $38
    nop
    nop
    sbc b
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    daa
    ccf
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

jr_0da_4523:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_456a:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr jr_0da_456a

    nop
    nop
    db $ec
    call c, RST_00
    db $ec
    db $fc
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    or $fe

jr_0da_4582:
    nop
    nop
    and $fe
    nop
    nop
    and $fe
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ld l, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0da_4582

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ret z

    ld hl, sp+$00
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    rrca
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    inc l
    ccf
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_46a3

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    ld c, $0e
    sub b
    rst $38
    rra
    rra
    jr @+$01

    rra
    rra
    rrca
    rst $38
    rra
    rra
    rrca
    rst $38
    rra
    rra
    rrca
    rst $38
    rra
    rra
    rrca
    rst $38
    inc c
    inc c
    adc a
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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

jr_0da_46a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add $fe
    nop
    nop
    jp Jump_000_00ff


    nop
    jp $80ff


    add b
    jp $80ff


    add b
    jp $80ff


    add b
    jp Jump_000_00ff


    nop
    ld b, [hl]
    cp $00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ret z

    ld hl, sp+$00
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rla
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld c, h
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_4823

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    jr jr_0da_480a

    sbc b
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    jr jr_0da_4822

jr_0da_480a:
    rst $38
    rst $38
    nop
    nop
    ld b, $07
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

jr_0da_4822:
    nop

jr_0da_4823:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    ld b, h
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ret z

    ld hl, sp+$00
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh a, [$f0]

jr_0da_48be:
    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    ret c

    ld hl, sp+$00
    nop
    ret c

    cp b
    nop
    nop
    jr nc, jr_0da_48be

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0da_4948

    nop
    nop
    daa
    ccf
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    rst $28
    rst $18
    nop
    nop
    xor a
    rst $18
    nop
    nop
    rst $28
    rst $18
    nop
    nop
    ld c, a
    ld a, a

jr_0da_4948:
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_499f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    inc bc
    inc bc
    ld e, b
    ld a, a
    rlca
    rlca
    adc h
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    inc bc
    inc bc
    ld a, a
    ld a, a
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

jr_0da_499f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a

jr_0da_49fe:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0da_49fe

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld l, b
    ld hl, sp+$00
    nop
    add sp, -$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    or $ee
    nop
    nop
    or $ee
    nop
    nop
    sub $ee
    nop
    nop
    adc h
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
    nop
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
    db $10
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    adc a
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    sbc b
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_4b1f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
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
    daa
    ccf
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

jr_0da_4b1f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a

jr_0da_4b7e:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0da_4b7e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld l, b
    ld hl, sp+$00
    nop
    db $e4
    db $fc
    nop
    nop
    and $fe
    nop
    nop
    and $fe
    nop
    nop
    or $fe
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    db $ec
    db $fc

jr_0da_4bc6:
    nop
    nop
    db $ec
    call c, RST_00
    jr jr_0da_4bc6

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
    rlca
    rlca
    nop
    nop
    ld a, a
    ld a, a
    inc c
    inc c
    adc a
    rst $38
    rra
    rra
    rrca
    rst $38
    rra
    rra
    rrca
    rst $38
    rra
    rra
    rrca
    rst $38
    rra
    rra
    rrca
    rst $38
    rra
    rra
    jr @+$01

    ld c, $0e
    sub b
    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_4c9f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
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
    cpl
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
    dec bc
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

jr_0da_4c9f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a

jr_0da_4cfe:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0da_4cfe

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld b, [hl]
    cp $00
    nop
    jp Jump_000_00ff


    nop
    jp $80ff


    add b
    jp $80ff


    add b
    jp $80ff


    add b
    jp Jump_000_00ff


    nop
    add $fe
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
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
    ld bc, $0001
    nop
    ld b, $07
    jr jr_0da_4dce

    rst $38
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    jr jr_0da_4de6

jr_0da_4dce:
    sbc b
    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_4e1f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop

jr_0da_4de6:
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld c, h
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    cpl
    ccf
    nop
    nop
    rla
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

jr_0da_4e1f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_4e62:
    nop
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
    jr nc, jr_0da_4e62

    nop
    nop
    ret c

    cp b
    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    ret c

    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld b, h
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
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
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    rst $30
    rst $38
    dec e
    dec e
    inc b
    rst $38
    ld [hl], d
    ld a, a
    inc b
    rst $38
    jp nc, Jump_000_04ff

    rst $38
    ld e, [hl]
    rst $38
    inc b
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh [$e0], a
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
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    sbc l
    rst $38
    nop
    nop
    cp [hl]
    db $fd
    add b
    add b
    db $fd
    cp $40
    ret nz

    rst $38
    cp $f0
    ld [hl], b
    cp $ff
    adc b
    ld a, b
    rst $38
    rst $38
    inc b
    db $fc
    ld a, a
    rst $38
    add d
    cp $79
    rst $38
    ld [bc], a
    cp $2d
    di
    ld bc, $2dff
    di
    ld bc, $edff
    di
    ld bc, $3dfe
    di
    nop
    rst $38
    dec [hl]
    ei
    add b
    rst $38
    rra
    rst $38
    pop bc
    rst $38
    rra
    rst $38
    cp $fe
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    db $ec
    rst $38
    rst $38
    cp a
    call z, $3f2f
    cp a
    call $3f2f
    sbc [hl]
    cp $1f
    rra
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
    ld a, a
    ld a, a
    nop
    nop
    add a
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0601
    db $fd
    inc bc
    inc bc
    rlca
    ld hl, sp+$03
    inc bc
    dec de
    db $fc
    rlca
    rlca
    ld e, $ed
    rlca
    rlca
    inc b
    ei
    rrca
    rrca
    adc [hl]
    rst $38
    rrca
    rrca
    db $fd
    rst $38
    rrca
    rrca
    pop hl
    rst $38
    rlca
    rlca
    call z, Call_000_07f3
    rlca
    adc a
    ldh a, [$0e]
    rrca
    rlca
    rst $38
    rra
    rra
    ld [$1ff8], sp
    rra
    sub b
    ldh a, [rIF]
    rrca
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $00
    rst $38
    ret nz

    ret nz

    and e
    rst $18
    ret nz

    ret nz

    or e
    rst $08
    add b
    add b
    cp e
    rst $00
    nop
    nop
    cp d
    add $00
    nop
    ld e, $e2
    nop
    nop
    ld l, $f2
    nop
    nop
    ld e, [hl]
    jp nc, RST_00

    sbc [hl]
    sbc [hl]
    nop
    nop
    sbc d
    sbc [hl]
    nop
    nop
    ld a, $3a
    nop
    nop
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp+$3f
    ld a, h
    sbc h
    ld hl, sp+$3f
    ld a, h
    sbc h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    sbc a
    rst $38
    ld bc, $3f01
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    inc b
    rlca
    adc a
    rst $38
    ld [$030f], sp
    rst $38
    add hl, bc
    rrca
    ld [bc], a
    rst $38
    ld [de], a
    rra
    ld [bc], a
    db $fd
    inc de
    ld e, $02
    rst $38
    ld d, $1f
    ld [bc], a
    db $fd
    rla
    rra
    ld bc, $1fff
    rra
    ld c, $f6
    rra
    rra
    sub h
    db $fc
    rra
    rra
    db $e4
    db $fc
    rra
    rra
    rst $08
    rst $38
    rra
    rra
    sbc [hl]
    pop hl
    inc sp
    ccf
    rra
    ldh [rSVBK], a
    ld a, a
    ld e, $e1
    ld hl, sp-$01
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    rrca
    rrca
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
    ldh [$e0], a

jr_0da_52f6:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr nc, jr_0da_52f6

    nop
    nop
    ret nc

    jr nc, jr_0da_530b

jr_0da_530b:
    nop
    add sp, $18
    nop
    nop
    call nc, Call_000_00ac
    nop
    call c, Call_000_00e4
    nop
    cp d
    and [hl]
    nop
    nop
    ld d, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    add b
    add b
    rrca
    ld c, $80
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    adc h
    rrca
    pop af
    rst $38
    inc c
    rrca
    pop af
    rst $38
    rrca
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    inc b
    rlca
    rst $38
    rst $38
    add hl, bc
    rrca
    db $fd
    rst $38
    inc de
    rra
    adc h
    rst $38
    inc hl
    ccf
    inc bc
    db $fc
    dec h
    ccf
    inc bc
    db $fc
    ld c, e
    ld a, l
    ld bc, $4ffe
    ld a, c
    ld bc, $5bff
    ld a, l
    ld bc, $5dff
    ld a, a
    ld bc, $7fff
    ld a, a
    ld [bc], a
    cp $7f
    ld a, a
    adc h
    db $fc
    ld a, a
    ld a, a
    sub b
    ldh a, [$7f]
    ld a, a
    rra
    rst $38
    ld a, [hl]
    ld a, a
    add hl, sp
    add $cc
    rst $38
    ccf
    ret nz

    ret nz

    rst $38
    dec sp
    call nz, $ffe1
    rst $38
    rst $38
    pop af
    rst $38
    nop

Jump_0da_53ff:
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    ccf
    ccf
    add b
    add b
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

jr_0da_5466:
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0da_5466

    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    ld d, b
    or b
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    add sp, -$68
    nop
    nop
    ld e, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, d
    ld a, [hl]
    nop
    nop
    ld a, $3a
    nop
    nop
    rst $38
    rst $38
    ldh a, [$f0]
    add sp, $37
    ld a, b
    adc b
    ld hl, sp+$37
    ld a, b
    adc b
    rst $38
    dec a
    ldh a, [$f0]
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
    ccf
    ccf
    rlca
    rlca
    rst $38
    rst $38
    ld [$ff0f], sp
    rst $38
    inc de
    dec e
    rst $38
    rst $38
    ccf
    add hl, sp
    cp $ff
    ld a, a
    ld e, c
    cp $ff
    ld a, a
    ld e, l
    cp $ff
    ld a, h
    ld c, a
    cp $ff
    jr c, jr_0da_5591

    ccf
    rst $38
    rra
    rra
    ldh [rIE], a
    rra
    rra
    ret nc

    rst $18
    rrca
    rrca
    adc a
    adc a
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

jr_0da_5591:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    rst $38
    rst $38
    db $fc
    db $fc
    pop bc
    rst $38
    cp $fe
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    ld bc, $f1ff
    rst $38
    ld a, $df
    ld a, [$7e06]
    db $d3
    db $f4
    inc c
    cp a
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rrca
    dec c
    rst $38
    rst $38
    ccf
    add hl, sp
    cp $ff
    ld a, a
    ld e, c
    cp $ff
    ld a, a
    ld e, l
    cp $ff
    ld a, a
    ld c, a
    cp $ff
    inc a
    inc h
    rst $38
    rst $38
    jr jr_0da_5706

    ldh [rIE], a
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr c, jr_0da_5734

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_5706:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_5734:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    rst $38
    rst $38
    db $fc
    db $fc
    pop bc
    rst $38
    cp $fe
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    ld bc, $f1ff
    rst $38
    ld a, $df
    ld a, [$7e06]
    db $d3
    db $f4
    inc c
    cp a
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0101
    cp $01
    ld bc, $ff40
    ld bc, $4701
    rst $38
    ld bc, $c701
    ei
    ld bc, $e101
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    db $fd
    cp $07
    rlca
    ei
    db $fc
    ld [bc], a
    inc bc
    pop af
    ccf
    rlca
    rlca
    ld h, a
    sbc c
    rrca
    rrca
    adc a
    rst $38
    rrca
    rrca
    ret z

    ld hl, sp+$07
    rlca
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jr c, jr_0da_58cc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_58cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
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
    rst $30
    rst $38
    add b
    add b
    rst $30
    rst $38
    nop
    nop
    cp $f6
    nop
    nop
    cp h
    ld [hl], h
    nop
    nop
    db $fc
    inc [hl]
    nop
    nop
    xor h
    ld [hl], h
    nop
    nop
    db $f4
    inc l
    nop
    nop
    ret c

    jr z, jr_0da_591f

jr_0da_591f:
    nop
    xor b
    ld e, b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
    nop
    nop
    rst $30
    rrca
    nop
    nop
    rst $30
    rrca
    nop
    nop
    adc [hl]
    cp $00
    nop
    ret c

    xor b
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
    rlca
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    adc h
    rst $38
    nop
    nop
    sub h
    rst $38
    ld bc, $2c01
    rst $30
    ld bc, $3c01
    rst $20
    ld bc, $6c01
    rst $30
    ld bc, $7401
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $fe01
    rst $38
    rlca
    rlca
    cp $ff
    rrca
    rrca
    db $fd
    cp $0f
    rrca
    ei
    db $fc
    ld b, $07
    ldh a, [$3f]
    rlca
    rlca
    ld h, a
    sbc b
    rrca
    rrca
    adc a
    rst $38
    rrca
    rrca
    ret z

    ld hl, sp+$07
    rlca
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jr c, jr_0da_5a48

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_5a48:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
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
    rst $30
    rst $38
    add b
    add b
    scf
    rst $38
    nop
    nop
    ld c, $f6
    nop
    nop
    ld a, [bc]
    or $00
    nop
    ld c, $f2
    nop
    nop
    ld c, $f2
    nop
    nop
    ld c, $f2
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld e, $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    nop
    ldh a, [rNR10]
    rst $38
    nop
    ldh a, [rNR10]
    ld sp, $e0ff
    ldh [$bb], a
    ld [hl], l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    adc [hl]
    rst $38
    nop
    nop
    sub d
    rst $38
    ld bc, $2e01
    di
    ld bc, $3e01
    db $e3
    ld bc, $6e01
    di
    ld bc, $7201
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $ff01
    rst $38
    rlca
    rlca
    cp $ff
    rrca
    rrca
    db $fd
    cp $0f
    rrca
    ei
    db $fc
    ld b, $07
    ldh a, [$3f]
    rlca
    rlca
    ld h, a
    sbc b
    rrca
    rrca
    adc a
    rst $38
    rrca
    rrca
    ret z

    ld hl, sp+$07
    rlca
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jr c, jr_0da_5bc8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_5bc8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
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
    di
    rst $38
    add b
    add b
    rra
    di
    nop
    nop
    dec b
    ei
    nop
    nop
    rlca
    ld sp, hl
    nop
    nop
    rlca
    ld sp, hl
    nop
    nop
    ld b, $f9
    add b
    add b
    rlca
    ld hl, sp-$80
    add b
    rrca
    ld hl, sp-$80
    add b
    rrca
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    nop
    db $fc
    inc b
    rst $38
    nop
    db $fc
    inc b
    inc c
    rst $38
    ld a, b
    ld hl, sp-$12
    dec e
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    rra
    rra
    ldh a, [rIE]
    rla
    rra
    ldh [rIE], a
    dec d
    rra
    ldh [rIE], a
    dec c
    rrca
    jr nz, @+$01

    rlca
    rlca
    jr nz, @+$01

    ld bc, $d001
    rst $18
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    ld bc, $d001
    rst $18
    rlca
    rlca
    jr nz, @+$01

    dec c
    rrca
    jr nz, @+$01

    dec d
    rra
    ldh [rIE], a
    rla
    rra
    ldh [rIE], a
    rra
    rra
    ldh a, [rIE]
    ld c, $0e
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
    rrca
    rrca
    nop
    nop
    rra
    rra
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

    ld a, a
    ld a, a
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ret nc

    ldh a, [$3f]
    rst $38
    ret z

    ld hl, sp+$39
    rst $38
    ret z

    ld hl, sp+$30
    rst $38
    ret z

    ld hl, sp+$20
    rst $38
    ld c, b
    ld hl, sp+$00
    rst $38
    ld [$c0f8], sp
    rst $38
    ld [$c0f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ld [$00f8], sp
    rst $38
    ld [$20f8], sp
    rst $38
    ld c, b
    ld hl, sp+$30
    rst $38
    ret z

    ld hl, sp+$3f
    rst $38
    ret z

    ld hl, sp+$3f
    rst $38
    ret z

    ld hl, sp-$01
    rst $38
    ret nc

    ldh a, [$7f]
    ld a, a
    ldh [$e0], a
    ccf
    ccf
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    add b
    add b
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    sub h
    rst $38
    rrca
    rrca
    inc d
    rst $38
    rrca
    rrca
    dec b
    rst $38
    rlca
    rlca
    sub l
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    nop
    nop
    dec bc
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    ld c, $09
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rTAC]
    rlca
    ld hl, sp-$08
    dec bc
    rrca
    db $f4
    db $fc
    rla
    rra
    ld a, [c]
    cp $27
    ccf
    ld a, [de]
    or $4e
    ld a, l
    ld c, $f2
    adc h
    ei
    ld c, $f2
    inc e
    di
    ld c, $f2
    inc a
    di
    ld c, $f2
    ld [hl], h
    ei
    ld b, $fe
    ld hl, sp-$01
    ld c, $fe
    db $fc
    rst $38
    inc e
    db $ec
    cp $ff
    inc a
    db $fc
    db $fd
    rst $38
    ld hl, sp-$68
    ld sp, hl
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], d
    cp $00
    nop
    inc a
    db $fc
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    add sp, $58
    nop
    nop
    db $fc
    ld [hl], h
    nop
    nop
    db $ec
    db $f4
    nop
    nop
    ld hl, sp-$18
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    sbc a
    rst $38
    ld bc, $2301
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    inc b
    rlca
    add b
    rst $38
    inc b
    rlca
    ret nz

    cp a
    dec b
    rlca
    add b
    rst $38
    dec b
    rlca
    ret nz

    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    inc de
    rra
    ldh [rIE], a
    inc de
    rra
    ld hl, sp-$01
    inc de
    rra
    di
    rst $38
    dec bc
    rrca
    db $ec
    db $fc
    dec c
    ld c, $de
    cp $1c
    rra
    rst $38
    ld sp, $3f3e
    ld a, a
    and c
    ccf
    ccf
    ld a, $fa
    rra
    rra
    db $fc
    db $fc
    rrca
    rrca
    ldh a, [$f0]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    sbc $fe
    nop
    nop
    call z, Call_000_00fc
    nop
    db $f4
    call z, RST_00
    cp h
    call nz, RST_00
    sbc h
    ld h, h
    nop
    nop
    sbc h
    db $e4
    nop
    nop
    db $fc
    ld [hl], h
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld [hl], b
    sub b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    sbc a
    rst $38
    ld bc, $2301
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    inc b
    rlca
    add b
    rst $38
    inc b
    rlca
    ret nz

    cp a
    dec b
    rlca
    add b
    rst $38
    dec b
    rlca
    ret nz

    rst $38
    dec bc
    rrca
    jp Jump_000_13fd


    rra
    push hl
    rst $38
    inc de
    rra
    ld a, [$13fd]
    rra
    pop af
    cp $0b
    rrca
    rst $28
    rst $38
    dec c
    ld c, $de
    cp $1c
    rra
    rst $38
    ld sp, $3f3e
    ld a, a
    and c
    ccf
    ccf
    ld a, $fa
    rra
    rra
    db $fc
    db $fc
    rrca
    rrca
    ldh a, [$f0]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop

jr_0da_61e6:
    nop
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    sbc $fe
    nop
    nop
    call z, Call_000_00fc
    nop
    db $f4
    call z, RST_00
    cp h
    call nz, RST_00
    sbc h
    ld h, h
    nop
    nop
    sbc h
    db $e4
    nop
    nop
    sub h
    ld l, h
    nop
    nop
    jr c, jr_0da_61e6

    nop
    nop
    add sp, -$28
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld b, b
    ret nz

    rlca
    rlca
    ret nz

    ld b, b
    rrca
    rrca
    ret nz

    ld b, b
    rra
    rla
    ld b, b
    ret nz

    scf
    cpl
    add b
    add b
    ld l, a
    ld e, a
    ret nz

    ret nz

    rst $18
    cp a
    ldh a, [$f0]
    rst $18
    ccf
    cp $fe
    rst $18
    ccf
    sbc a
    pop hl
    rst $28
    sbc a
    dec e
    ld a, [c]
    ld a, a
    ld a, a
    rrca
    ldh a, [$0d]
    rrca
    inc bc
    db $fc
    add hl, de
    rra
    inc bc
    cp $18
    rra
    adc l
    rst $38
    jr z, jr_0da_632d

    adc a
    ei
    dec h
    ccf
    jp Jump_0da_53ff


    ld a, a
    daa
    rst $38
    pop de
    rst $38
    rra
    rst $38
    sub b
    rst $38
    cp b
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    add $ff
    jr nz, @-$1e

    ld a, a
    ld a, a
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

jr_0da_632d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $30
    rst $30

jr_0da_63a0:
    add c
    add c
    set 7, h
    rst $00
    rst $00
    db $ed
    db $d3
    ei
    db $fd
    xor $fe
    rst $28
    pop af
    jr nc, jr_0da_63a0

    db $ed
    di
    ldh [$e0], a
    and $fe
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [hl], b
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
    rra
    rra
    ret nz

    ret nz

    cpl
    ld sp, $e060
    ld e, a
    ld h, c
    ldh [$e0], a
    ld a, a
    ld b, c
    ldh [$a0], a
    ld [hl], a
    ld c, a
    ret nz

    ret nz

    ld h, d
    ld e, [hl]
    adc h
    adc h
    ld b, a
    ld a, a
    ld [de], a
    ld e, $4f
    ld a, a
    pop hl
    rst $38
    ld e, a
    ld a, a
    ret nz

    rst $38
    ccf
    ccf
    add b
    rst $38
    ccf
    ccf
    add b
    rst $38
    rra
    rra
    add b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec c
    rrca
    add b
    rst $38
    jr jr_0da_6481

    ret nz

    rst $38

jr_0da_6464:
    jr jr_0da_6485

    ld h, c
    rst $38
    jr jr_0da_6489

    ld a, a
    rst $38
    inc [hl]
    ccf
    adc a
    rst $38
    ld c, e
    ld a, a
    rlca
    rst $38
    ret


    rst $38
    rlca
    rst $38
    adc b
    rst $38
    cp b
    rst $38
    adc h
    rst $38
    ld a, a
    rst $38
    add h

jr_0da_6481:
    rst $38
    jr nz, jr_0da_6464

    rst $00

jr_0da_6485:
    rst $38
    ret nz

    ret nz

    ld a, h

jr_0da_6489:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    ldh a, [$f0]
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    pop af
    rst $20
    ret c

jr_0da_6534:
    rst $28
    pop af
    rst $28
    rst $38
    ld l, a
    pop af
    jr z, jr_0da_6534

    rst $38
    rst $38
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
    ld a, $3e
    inc c
    inc c
    ld [hl], a
    ld c, a
    ld [de], a
    ld e, $6f
    ld e, a
    pop hl
    rst $38
    rst $38
    sbc a
    ret nz

    rst $38
    rst $18
    cp a
    add b
    rst $38
    rst $38
    sbc a
    add b
    rst $38
    ld a, a
    ld a, a
    add c
    cp $3f
    ccf
    add c
    rst $38
    dec c
    rrca
    add c
    cp $18
    rra
    ret nz

    rst $38

jr_0da_65e4:
    jr jr_0da_6605

    ld h, c
    rst $38
    jr jr_0da_6609

    ld a, a
    rst $38
    inc [hl]
    ccf
    adc a
    rst $38
    ld c, e
    ld a, a
    rlca
    rst $38
    ret


    rst $38
    rlca
    rst $38
    adc b
    rst $38
    cp b
    rst $38
    adc h
    rst $38
    ld a, a
    rst $38
    add h
    rst $38
    jr nz, jr_0da_65e4

    rst $00

jr_0da_6605:
    rst $38
    ret nz

    ret nz

    ld a, h

jr_0da_6609:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    ldh a, [$f0]
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    pop af
    rst $20
    ret c

jr_0da_66b4:
    rst $28
    pop af
    rst $28
    rst $38
    ld l, a
    pop af
    jr z, jr_0da_66b4

    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    sbc a
    rst $38
    ld bc, $2301
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    inc b
    rlca
    add b
    rst $38
    inc b
    rlca
    ret nz

    cp a
    dec b
    rlca
    add b
    rst $38
    dec b
    rlca
    ret nz

    rst $38
    dec bc
    rrca
    pop bc
    rst $38
    inc de
    rra
    pop hl
    rst $38
    inc de
    rra
    ld a, [$13fd]
    rra
    pop af
    cp $0b
    rrca
    rst $28
    rst $38
    dec c
    ld c, $de
    cp $1c
    rra
    rst $38
    ld sp, $3f3e
    ld a, a
    and c
    ccf
    ccf
    ld a, $fa
    rra
    rra
    db $fc
    db $fc
    rrca
    rrca
    ldh a, [$f0]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop

jr_0da_6966:
    nop
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    sbc $fe
    nop
    nop
    call z, Call_000_00fc
    nop
    db $f4
    call z, RST_00
    cp h
    call nz, RST_00
    inc e
    db $e4
    nop
    nop
    inc e
    db $e4
    nop
    nop
    inc d
    db $ec
    nop
    nop
    jr c, jr_0da_6966

    nop
    nop
    add sp, -$28
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    ld a, a
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
    ld a, a
    ld a, a
    nop
    nop
    adc a
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0601
    db $fd
    ld bc, $0301
    db $fc
    ld bc, $0601
    ld sp, hl
    ld bc, $0301
    db $fc
    ld bc, $1f01
    db $fc
    ld bc, $1e01
    db $ed
    nop
    nop
    adc a
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, h
    nop
    nop
    ld a, a
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$18
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    ld a, h
    db $e4

jr_0da_6b02:
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    jr z, jr_0da_6b02

    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc

jr_0da_6b12:
    nop
    nop
    inc h
    db $fc
    nop
    nop
    jr z, jr_0da_6b12

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    jr nc, jr_0da_6b12

    nop
    nop
    jr z, @-$06

    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    xor b
    ld a, b
    nop
    nop
    ld a, b
    ret z

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
    ld hl, sp-$18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    ld h, c
    ld h, c
    rst $38
    rst $38
    cp $ff
    rlca
    rst $38
    cp $ff
    rlca
    rst $38
    cp $ff
    rlca
    rst $38
    cp $ff
    rlca
    rst $38
    cp $ff
    inc c
    rst $38
    ld h, c
    ld h, c
    jr @+$01

    nop
    nop
    ret nc

    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_6da3

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    ld bc, $9f01
    rst $38
    inc bc
    inc bc
    ld l, a
    sbc a
    rlca
    ld b, $ef
    rra
    dec b
    ld b, $ef
    rra
    rlca
    ld b, $ef
    rra
    inc bc
    inc bc
    daa
    rst $18
    ld bc, $c701
    rst $38
    nop
    nop
    jr c, jr_0da_6dcc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_6da3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_6dcc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0da_6df0:
    add c
    rst $38
    ldh a, [$f0]
    add $f9

jr_0da_6df6:
    jr c, jr_0da_6df0

    rst $20
    ld hl, sp-$24
    inc a
    rst $20
    ld hl, sp-$24
    inc a

jr_0da_6e00:
    rst $20
    ld hl, sp-$24
    inc a
    ldh [rIE], a

jr_0da_6e06:
    jr c, jr_0da_6e00

    rst $38
    rst $38

jr_0da_6e0a:
    ldh a, [$f0]
    ldh a, [$f0]

jr_0da_6e0e:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, jr_0da_6df6

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0da_6e06

    nop
    nop
    jr nz, jr_0da_6e0a

    nop
    nop
    jr nz, jr_0da_6e0e

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
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld a, a
    ld a, a
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    adc h
    rst $38
    inc bc
    inc bc
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_6f23

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ret c

    rst $38
    ld bc, $9f01
    rst $38
    inc bc
    inc bc
    ld l, a
    sbc a
    ld [bc], a
    inc bc
    ld l, a
    sbc a
    inc bc
    inc bc
    ld l, a
    sbc a
    ld bc, $af01
    rst $18
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    daa
    ccf
    nop
    nop
    jr jr_0da_6f2c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_6f23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_6f2c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    add e
    rst $38
    ret nz

    ret nz

    call z, $e0f3
    ldh [$ef], a
    ldh a, [rSVBK]
    ldh a, [$ef]
    ldh a, [rSVBK]
    ldh a, [$ef]
    ldh a, [rSVBK]
    ldh a, [$e0]
    rst $38

jr_0da_6f86:
    ldh [$e0], a
    rst $28
    rst $38

jr_0da_6f8a:
    ret nz

    ret nz

    add sp, -$08

jr_0da_6f8e:
    nop
    nop
    ld l, b
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0da_6f86

    nop
    nop
    jr nz, jr_0da_6f8a

    nop
    nop
    jr nz, jr_0da_6f8e

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
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    inc l
    ccf
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_70a3

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    inc bc
    inc bc
    ld d, b
    ld a, a
    rlca
    rlca
    sbc b
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    adc a
    rst $38
    inc bc
    inc bc
    ld c, a
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

jr_0da_70a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0da_70e2:
    nop
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
    jr nc, jr_0da_70e2

    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    add $fe

jr_0da_70fa:
    nop
    nop
    jp Jump_000_00ff


    nop
    jp $80ff


    add b
    jp $80ff


    add b
    jp $80ff


    add b
    jp Jump_000_00ff


    nop
    ld b, [hl]
    cp $00
    nop
    jr @-$06

    nop
    nop
    jr nz, jr_0da_70fa

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

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
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    scf
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    cp a
    rst $08
    nop
    nop
    cp a
    rst $08
    nop
    nop
    cp a
    rst $08
    nop
    nop
    xor a
    rst $18
    nop
    nop
    ld c, h
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_7223

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    jr jr_0da_720a

    sbc b
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    jr jr_0da_7222

jr_0da_720a:
    rst $38
    rst $38
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

jr_0da_7222:
    nop

jr_0da_7223:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    ret z

    ld hl, sp+$00
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    ld c, b
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    jp $80ff


    add b
    rst $38
    pop bc
    ret nz

    ret nz

    rst $38
    pop bc
    ret nz

    ret nz

    ei
    rst $00
    add b
    add b
    rst $00
    rst $38
    nop
    nop
    ld hl, sp-$08
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
    jr c, jr_0da_7368

    ld bc, $c701
    rst $38
    inc bc
    inc bc
    daa
    rst $18
    rlca
    ld b, $ef
    rra
    dec b
    ld b, $ef
    rra
    rlca
    ld b, $ef
    rra
    inc bc
    inc bc
    ld l, a
    sbc a
    ld bc, $9f01
    rst $38
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_739f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a

jr_0da_7368:
    nop
    nop
    ret nc

    rst $38
    ld h, c
    ld h, c
    jr @+$01

    cp $ff
    inc c
    rst $38
    cp $ff
    rlca
    rst $38
    cp $ff
    rlca
    rst $38
    cp $ff
    rlca
    rst $38
    cp $ff
    rlca
    rst $38
    ld h, c
    ld h, c
    rst $38
    rst $38
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

jr_0da_739f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0da_73f2:
    nop
    nop
    ret nz

    ret nz

jr_0da_73f6:
    nop
    nop
    ldh [$e0], a

jr_0da_73fa:
    nop
    nop
    ldh [$e0], a

jr_0da_73fe:
    nop
    nop
    ldh [$e0], a

jr_0da_7402:
    nop
    nop
    ldh [$e0], a

jr_0da_7406:
    nop
    nop
    ldh [$e0], a

jr_0da_740a:
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0da_73f2

    nop
    nop
    jr nz, jr_0da_73f6

    nop
    nop
    jr nz, jr_0da_73fa

    nop
    nop
    jr nz, jr_0da_73fe

    nop
    nop
    jr nz, jr_0da_7402

    nop
    nop
    jr nz, jr_0da_7406

    nop
    nop
    jr nz, jr_0da_740a

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop

jr_0da_7434:
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [rIE], a
    jr c, jr_0da_7434

    rst $20
    ld hl, sp-$24
    inc a
    rst $20
    ld hl, sp-$24
    inc a

jr_0da_7444:
    rst $20
    ld hl, sp-$24
    inc a
    add $f9
    jr c, jr_0da_7444

    add c
    rst $38
    ldh a, [$f0]
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
    jr jr_0da_74c8

    nop
    nop
    daa
    ccf
    nop
    nop
    rst $00
    rst $38
    ld bc, $af01
    rst $18
    inc bc
    inc bc
    ld l, a
    sbc a
    ld [bc], a
    inc bc
    ld l, a
    sbc a
    inc bc
    inc bc
    ld l, a
    sbc a

jr_0da_74c8:
    ld bc, $9f01
    rst $38
    nop
    nop
    ret c

    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_751f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    inc bc
    inc bc
    ld e, b
    ld a, a
    rlca
    rlca
    adc h
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add a
    rst $38
    inc bc
    inc bc
    ld a, a
    ld a, a
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

jr_0da_751f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0da_7572:
    nop
    nop
    ret nz

    ret nz

jr_0da_7576:
    nop
    nop
    ldh [$e0], a

jr_0da_757a:
    nop
    nop
    ldh [$e0], a

jr_0da_757e:
    nop
    nop
    ldh [$e0], a

jr_0da_7582:
    nop
    nop
    ldh [$e0], a

jr_0da_7586:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0da_7572

    nop
    nop
    jr nz, jr_0da_7576

    nop
    nop
    jr nz, jr_0da_757a

    nop
    nop
    jr nz, jr_0da_757e

    nop
    nop
    jr nz, jr_0da_7582

    nop
    nop
    jr nz, jr_0da_7586

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld l, b
    ld hl, sp+$00
    nop
    add sp, -$08
    nop
    nop
    rst $28
    rst $38
    ret nz

    ret nz

    ldh [rIE], a
    ldh [$e0], a
    rst $28
    ldh a, [rSVBK]
    ldh a, [$ef]
    ldh a, [rSVBK]
    ldh a, [$ef]
    ldh a, [rSVBK]
    ldh a, [$cc]
    di
    ldh [$e0], a
    add e
    rst $38
    ret nz

    ret nz

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
    rlca
    rlca
    nop
    nop
    ccf
    ccf
    inc bc
    inc bc
    ld c, a
    ld a, a
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    sbc b
    rst $38
    inc bc
    inc bc
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_769f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
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
    cpl
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
    inc b
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

jr_0da_769f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0da_76f2:
    nop
    nop
    ret nz

    ret nz

jr_0da_76f6:
    nop
    nop
    ldh [$e0], a

jr_0da_76fa:
    nop
    nop
    ldh [$e0], a

jr_0da_76fe:
    nop
    nop
    ldh [$e0], a

jr_0da_7702:
    nop
    nop
    ldh [$e0], a

jr_0da_7706:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0da_76f2

    nop
    nop
    jr nz, jr_0da_76f6

    nop
    nop
    jr nz, jr_0da_76fa

    nop
    nop
    jr nz, jr_0da_76fe

    nop
    nop
    jr nz, jr_0da_7702

jr_0da_7722:
    nop
    nop
    jr nz, jr_0da_7706

    nop
    nop
    jr jr_0da_7722

    nop
    nop
    ld b, [hl]
    cp $00
    nop
    jp Jump_000_00ff


    nop
    jp $80ff


    add b
    jp $80ff


    add b
    jp $80ff


    add b
    jp Jump_000_00ff


    nop
    add $fe
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    jr nc, @-$0e

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
    rlca
    rlca
    jr jr_0da_77ce

    rst $38
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rrca
    rst $38
    jr jr_0da_77e6

jr_0da_77ce:
    sbc b
    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0da_781f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop

jr_0da_77e6:
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld c, h
    ld a, a
    nop
    nop
    xor a
    rst $18
    nop
    nop
    cp a
    rst $08
    nop
    nop
    cp a
    rst $08
    nop
    nop
    cp a
    rst $08
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    scf
    ccf
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

jr_0da_781f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0da_7872:
    nop
    nop
    ld hl, sp-$08

jr_0da_7876:
    nop
    nop
    rst $00
    rst $38

jr_0da_787a:
    nop
    nop
    ei
    rst $00

jr_0da_787e:
    add b
    add b
    rst $38
    pop bc

jr_0da_7882:
    ret nz

    ret nz

    rst $38
    pop bc

jr_0da_7886:
    ret nz

    ret nz

    jp $80ff


    add b
    ld a, a
    rst $38
    nop
    nop
    jr nz, jr_0da_7872

    nop
    nop
    jr nz, jr_0da_7876

    nop
    nop
    jr nz, jr_0da_787a

    nop
    nop
    jr nz, jr_0da_787e

    nop
    nop
    jr nz, jr_0da_7882

    nop
    nop
    jr nz, jr_0da_7886

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld c, b
    ld hl, sp+$00
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    call nz, Call_000_00fc
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
