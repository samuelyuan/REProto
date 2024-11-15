SECTION "ROM Bank $0d9", ROMX[$4000], BANK[$d9]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    rra
    nop
    nop
    jr nz, jr_0d9_409f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    or b
    rst $38
    ld bc, $7001
    rst $38
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    ld sp, hl
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $30
    rst $30
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

jr_0d9_409f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    cp a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    dec bc
    rst $38
    nop
    nop
    inc de
    rst $38

jr_0d9_411e:
    nop
    nop
    rlca
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    inc a
    db $fc
    nop
    nop
    jr nc, jr_0d9_411e

    nop
    nop
    ld h, b
    ldh [rP1], a
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
    nop
    nop
    nop
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
    db $10
    rra
    nop
    nop
    jr nz, jr_0d9_421b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    and b
    rst $38
    ld bc, $6001
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh a, [rIE]
    rlca
    rlca
    db $fc
    rst $38
    rlca
    rlca
    ld sp, hl
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    ld bc, $fe01
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr jr_0d9_4228

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_421b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_4228:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    ld e, $80
    add b
    dec sp
    inc a
    ret nz

    ld b, b
    db $fd
    cp $e0
    jr nz, jr_0d9_4303

    rst $38
    ret nz

    ld b, b
    cp $ff
    ld b, b
    ret nz

    ld a, [hl]
    rst $38
    add b
    add b
    dec a
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    ld d, $fe
    nop
    nop
    ld h, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld h, b
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

jr_0d9_4303:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
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
    ld [bc], a
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
    dec bc
    rrca
    nop
    nop
    inc d
    rra
    ld bc, $e801
    rst $38
    inc bc
    inc bc
    ret c

    ld a, a
    dec b
    ld b, $f8
    ccf
    rlca
    ld b, $70
    rst $38
    inc b
    rlca
    ldh a, [rIE]
    dec b
    rlca
    ld hl, sp-$01
    dec b
    rlca
    db $fd
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld bc, $fc01
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr nc, jr_0d9_43bc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_43bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    ld e, $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    and b
    ldh [rIE], a
    rst $38
    and b
    ldh [$1f], a
    rst $38
    ldh a, [$b0]
    rrca
    rst $38

jr_0d9_441a:
    or b
    ld [hl], b
    rrca
    cp $60
    ldh [$0d], a
    rst $38
    ret nz

    ret nz

    add hl, bc
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    jr c, @-$06

    nop
    nop
    and b
    ldh [rP1], a
    nop
    jr nz, jr_0d9_441a

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
    inc c
    rrca
    nop
    nop
    inc sp
    ccf
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    adc b
    rst $38
    ld bc, $0801
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    ld [bc], a
    inc bc
    ldh a, [rIE]
    ld [bc], a
    inc bc
    ld hl, sp-$01
    ld [bc], a
    inc bc
    db $fd
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld bc, $7c01
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr nc, jr_0d9_453c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_453c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $08
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    ld h, b
    ldh [rIE], a
    rst $38
    ldh a, [$b0]
    rra
    rst $38
    or b
    ldh a, [rIF]
    rst $38

jr_0d9_459a:
    ld h, b
    ldh [rIF], a
    rst $38
    or b
    ldh a, [$0c]
    rst $38
    ld [hl], b
    ldh a, [$09]
    rst $38
    ldh [$e0], a
    inc bc
    rst $38

jr_0d9_45aa:
    ret nz

    ret nz

    inc b
    db $fc
    nop
    nop
    jr c, jr_0d9_45aa

    nop
    nop
    and b
    ldh [rP1], a
    nop
    jr nz, jr_0d9_459a

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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    rlca
    rlca
    adc l
    adc a
    rrca
    rrca
    di
    rst $38
    rrca
    rrca
    inc b
    rst $38
    ld c, $0f
    ld [$04ff], sp
    rlca
    jr @+$01

    inc b
    rlca
    jr c, @+$01

    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    ld [bc], a
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $fc01
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr nc, jr_0d9_46bc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_46bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [de], a
    ld e, $00
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    and b
    ldh [rIE], a
    rst $38
    and b
    ldh [$1f], a
    rst $38
    db $10
    ldh a, [$0e]
    rst $38

jr_0d9_471a:
    db $10
    ldh a, [$0c]
    rst $38
    db $10
    ldh a, [$08]
    rst $38
    jr @-$06

jr_0d9_4724:
    ld [$18ff], sp
    ld hl, sp+$02
    rst $38

jr_0d9_472a:
    jr c, jr_0d9_4724

    dec b
    db $fd
    ldh a, [$f0]
    jr c, jr_0d9_472a

    ldh [$e0], a
    and b
    ldh [rP1], a
    nop
    jr nz, jr_0d9_471a

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
    ld bc, $0e01
    ld c, $02
    inc bc
    rra
    rra
    ld [bc], a
    inc bc
    ccf
    ccf
    add [hl]
    add a
    ccf
    ccf
    ld c, c
    rst $08
    rra
    rra
    inc sp
    rst $38
    ld c, $0f
    inc b
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    jr @+$01

    inc b
    rlca
    jr c, @+$01

    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    ld bc, $f001
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $fc01
    rst $38
    nop
    nop
    ld a, [$00ff]
    nop
    ld e, e
    ld [hl], a
    nop
    nop
    ld l, $3e
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
    db $76
    halt
    nop
    adc c
    rst $38
    nop
    nop
    ld e, $ff
    add b
    add b
    ccf
    rst $38
    ld b, b
    ret nz

jr_0d9_4888:
    ld a, a
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    and b
    ldh [rIE], a
    rst $38
    and b
    ldh [$1f], a
    rst $38
    db $10
    ldh a, [$0e]
    rst $38

jr_0d9_489a:
    db $10
    ldh a, [$0c]
    rst $38
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ldh a, [$0a]
    rst $38
    jr nz, jr_0d9_4888

    inc bc
    rst $38

jr_0d9_48aa:
    ret nz

    ret nz

    inc b
    db $fc
    nop
    nop
    jr c, jr_0d9_48aa

    nop
    nop
    and b
    ldh [rP1], a
    nop
    jr nz, jr_0d9_489a

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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    adc d
    adc a
    rrca
    rrca
    db $f4
    rst $38
    rra
    rra
    inc b
    rst $38
    ld c, $0f
    ld [$04ff], sp
    rlca
    jr @+$01

    ld [bc], a
    inc bc
    jr c, @+$01

    ld bc, $7c01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    cp $00
    nop
    ld e, [hl]
    ld a, l
    nop
    nop
    dec h
    dec sp
    nop
    nop
    rra
    rra
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
    ld a, h
    ld a, h
    nop
    nop
    and d
    cp $00
    nop
    db $ed
    sbc a
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    cp a
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    rst $08
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38

jr_0d9_4a1a:
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld c, $fe
    nop
    nop
    ld [$00f8], sp
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0d9_4a1a

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
    add hl, bc
    rrca
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    inc h
    ccf
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    adc b
    rst $38
    nop
    nop
    sbc b
    rst $38
    ld bc, $3801
    rst $38
    ld bc, $7c01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld c, l
    ld a, a
    nop
    nop
    ld a, [hl-]
    scf
    nop
    nop
    rra
    rra
    nop
    nop
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $ff
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    rst $08
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38

jr_0d9_4b9a:
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld c, $fe
    nop
    nop
    ld [$00f8], sp
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0d9_4b9a

    nop
    nop
    ld h, b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $1f
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
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    inc h
    ccf
    nop
    nop
    ld c, h
    ld a, a
    nop
    nop
    sbc b
    rst $38
    nop
    nop
    cp b
    rst $38
    nop
    nop
    ld hl, sp-$01
    ld bc, $fc01
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld bc, $fe01
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    jr nz, jr_0d9_4cc7

    nop
    nop
    jr jr_0d9_4cab

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

jr_0d9_4cab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_4cc7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    rst $08
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38

jr_0d9_4d1a:
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld c, $fe
    nop
    nop
    ld [$00f8], sp
    nop
    ret z

    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0d9_4d1a

jr_0d9_4d3a:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr jr_0d9_4d3a

jr_0d9_4d42:
    nop
    nop
    jr @-$06

    nop
    nop
    jr c, jr_0d9_4d42

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0d9_4dc4

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
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    inc a
    ccf
    nop
    nop
    db $10
    rra

jr_0d9_4dc4:
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    adc h
    rst $38
    ld bc, $1801
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    ld [bc], a
    inc bc
    ld a, b
    rst $38
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld bc, $7c01
    rst $38
    nop
    nop
    sbc b
    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr jr_0d9_4e2b

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

jr_0d9_4e2b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, $ee
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

jr_0d9_4e88:
    ld a, a
    rst $38
    and b
    ldh [rIE], a
    rst $38
    ret nc

    ldh a, [$cf]
    rst $38
    ldh a, [$b0]
    rlca
    rst $38
    jr nc, jr_0d9_4e88

    ld [bc], a
    rst $38
    ldh [$e0], a
    inc b
    rst $38

jr_0d9_4e9e:
    ld b, b
    ret nz

    inc b
    rst $38

jr_0d9_4ea2:
    add b
    add b
    ld bc, $00ff
    nop
    ld c, $fe
    nop
    nop
    ld [$00f8], sp
    nop
    ret z

    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0d9_4e9e

    nop
    nop
    jr nz, jr_0d9_4ea2

    nop
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
    ld a, $3e
    nop
    nop
    ld l, e
    ld a, a
    nop
    nop
    sub $ff
    add b
    add b
    db $fc
    rst $38
    ld h, b
    ldh [$7e], a
    ld a, a
    sub b
    ldh a, [$1f]
    rra
    ld [$06f8], sp
    rlca
    dec b
    db $fd
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    inc [hl]
    ccf
    nop
    nop
    ld c, $0f
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    inc bc
    inc bc
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
    dec b
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
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    adc b
    ld hl, sp-$67
    ld sp, hl
    db $e4
    db $fc
    ccf
    rst $38
    ld a, [c]
    cp $47
    rst $38
    ld a, [$83fe]
    rst $38
    ld a, [$c7fe]
    rst $38
    ld a, [c]
    cp $6f
    rst $38
    ld a, [$3bf6]
    rst $38
    db $ec
    db $f4
    ld [de], a
    db $fd
    ld [hl], h
    db $ec
    ld [hl], $f9
    ld b, d
    cp $3c
    di
    add c
    rst $38
    ld l, c
    rst $30
    ld bc, $f2ff
    rst $38
    ld bc, $feff
    rst $38
    ld [bc], a
    cp $fe
    rst $38
    ld [bc], a
    cp $fe
    rst $38
    ld [bc], a
    cp $fa
    ei
    inc b
    db $fc
    db $ed
    push af
    inc c
    db $f4
    adc $f2
    ld hl, sp-$08
    rst $18
    db $e3
    nop
    nop
    ccf
    ld [hl], $80
    add b
    rrca
    inc c
    add b
    add b
    rlca
    inc b
    ret nz

    ld b, b
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
    rlca
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld hl, sp-$01
    ld bc, $f001
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rrca
    rrca
    pop af
    cp $1e
    rra
    ld hl, sp-$01
    inc a
    ccf
    ld [hl], a
    cp $3c
    ccf
    inc bc
    rst $38
    ld e, $1f
    dec e
    db $e3
    rrca
    rrca
    ld a, $f1
    rrca
    rrca
    rst $08
    ret z

    rlca
    rlca
    add [hl]
    add l
    inc bc
    inc bc
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
    ld b, $06
    nop
    nop
    rst $18
    rst $18
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    ret nz

    ret nz

    xor a
    rst $38
    ld h, b
    ldh [$ad], a
    sbc $30
    ldh a, [$fb]
    adc h
    jr c, @-$06

    rst $20
    jr jr_0d9_51d3

    db $fc
    dec de
    db $fc
    inc a
    db $fc
    db $eb
    db $ec
    ld a, h
    db $fc
    adc [hl]
    adc c
    sbc b
    sbc b
    ld e, a
    reti


    nop
    nop
    cp $fe
    nop
    nop
    ld a, [$00f6]
    nop
    db $fc
    db $fc
    nop
    nop
    or h
    call z, RST_00
    ld e, d
    ld h, [hl]
    nop
    nop
    dec l
    inc sp
    nop
    nop
    rla
    dec de
    add b
    add b
    dec bc
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

jr_0d9_51d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld [$000f], sp
    nop
    inc de
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, a
    ld b, $06
    cp $ff
    rrca
    rrca
    db $fc
    rst $38
    ld e, $1f
    db $fc
    rst $38
    inc a
    ccf
    ld a, h
    rst $38
    inc a
    ccf
    ld a, $ff
    ld e, $1f
    nop
    rst $38
    rrca
    rrca
    inc hl
    db $fd
    rrca
    rrca
    rst $10
    ret c

    rlca
    rlca
    adc a
    adc b
    inc bc
    inc bc
    rlca
    inc b
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
    nop
    nop
    nop
    nop
    nop
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
    rst $00
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    db $fd
    ld hl, sp-$08
    inc bc
    db $fd
    cp l
    db $fd
    inc b
    rst $38
    cp l
    ld a, l
    dec b
    ld a, [$39f9]
    ld a, [hl-]
    rst $10
    pop af
    ld sp, $ff1e
    pop hl
    ld hl, $e2e3
    and c
    ld h, c
    add e
    add d
    pop bc
    ld b, c
    ld b, d
    jp $c040


    and a
    ld h, a
    ret nz

    ret nz

    rst $38
    rra
    ret nz

    ret nz

    rst $28
    rra
    add b
    add b
    sbc $bf
    add b
    add b
    ld [hl], a
    ld a, d
    add b
    add b
    add hl, sp
    scf
    nop
    nop
    jr jr_0d9_5365

    add b
    add b
    inc c
    dec bc
    ld b, b
    ret nz

    ld b, $07
    ldh [rNR41], a
    ld bc, $f001
    stop
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

jr_0d9_5365:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    ld bc, $0301
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    rlca
    rlca
    db $ec
    rst $30
    rrca
    rrca
    ret c

    rst $28
    rst $18
    rst $18
    ret nc

    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $18
    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    ret nz

    rst $38
    add a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $e4
    rst $38
    ld a, a
    cp a
    ld a, [$f0fb]
    db $10
    pop af
    pop af
    add sp, $18
    ld h, b
    ld h, b
    db $f4
    adc h
    nop
    nop
    ld e, a
    ld h, e
    nop
    nop
    dec a
    inc hl
    nop
    nop
    dec de
    rla
    nop
    nop
    ld c, $0f
    nop
    nop
    rlca
    ld b, $00
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

jr_0d9_546e:
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr c, jr_0d9_546e

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
    cp $00
    nop
    ld a, $fe
    nop
    nop
    ccf
    rst $38
    nop
    nop
    rla
    rst $38
    add b
    add b
    rla
    rst $28
    add b
    add b
    ccf
    rst $00
    nop
    nop
    ld e, [hl]
    and $00
    nop
    call c, Call_000_00e4
    nop
    ld [hl], h
    ld c, h

jr_0d9_54a2:
    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld c, b
    ld a, b
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
    ret nc

    ldh a, [rP1]
    nop
    ldh a, [$50]
    nop
    nop
    jr nz, jr_0d9_54a2

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    adc b
    ld a, b
    nop
    nop
    call c, Call_000_00e4
    nop
    ld a, $22
    nop
    nop
    inc e
    inc d
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $b001
    or b
    inc bc
    ld [bc], a
    ld c, b
    ld hl, sp+$07
    dec b
    db $f4
    call z, $0b0d
    cp d
    add $0f
    dec bc
    rst $38
    sbc a
    rrca
    dec c
    ld a, a
    cp a
    ld e, $1f
    ccf
    rst $38
    rra
    rra
    ccf
    rst $38
    rrca
    rrca
    cp a
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    ld e, a
    ld a, a
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    inc h
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
    ld [bc], a
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld bc, $80ff
    add b
    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a

jr_0d9_5630:
    nop
    rst $38
    ldh a, [$f0]
    add b
    rst $38
    ldh a, [$f0]
    pop bc
    ld a, a
    ld hl, sp-$08
    ld a, a
    cp a
    ld hl, sp-$08
    rst $18
    rst $28
    ld hl, sp-$08
    ld e, a
    ld h, a
    ld hl, sp-$08
    cpl
    inc sp
    ldh a, [$f0]
    ld d, $19
    jr nz, jr_0d9_5630

    ld [$400f], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [hl], b
    ldh a, [rTAC]
    dec b
    ld hl, sp-$38
    dec c
    dec bc
    cp [hl]
    add $0f
    dec bc
    rst $38
    sbc a
    rlca
    dec b
    rst $38
    cp a
    inc bc
    inc bc
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $df01
    rst $38
    ld bc, $ce01
    rst $38
    nop
    nop
    db $e4
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc bc
    ld [bc], a
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld bc, $80ff
    add b
    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a

jr_0d9_57b4:
    nop
    rst $38
    ldh a, [$f0]
    add b
    rst $38
    ldh a, [$f0]
    pop bc
    ld a, a
    ld hl, sp-$08
    ld a, a
    cp a
    ld hl, sp-$08
    rst $18
    rst $28
    ld hl, sp-$08
    ld e, a
    ld h, a
    ld hl, sp-$08
    cpl
    inc sp
    ldh a, [$f0]
    ld d, $19
    jr nz, jr_0d9_57b4

    ld [$400f], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    ccf
    nop
    nop
    ld a, b
    ld e, a
    nop
    nop
    ld sp, hl
    cp a
    rlca
    rlca
    db $fd
    ld a, $0f
    rrca
    rst $38
    ccf
    rrca
    rrca
    rst $38
    cp a
    rlca
    rlca
    rst $28
    sbc a
    inc bc
    inc bc
    xor $91
    inc bc
    inc bc
    rst $30
    ret z

    ld bc, $ff01
    db $ec
    nop
    nop
    rst $18
    sbc $00
    nop
    ld c, $0d
    nop
    nop
    dec b
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    add b
    add b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rrca
    ei
    ldh [$e0], a
    sbc a
    db $e3
    ldh a, [$f0]
    sbc a
    db $e3
    ld a, b
    ld hl, sp+$75
    jp z, Jump_0d9_78f8

    cp $81
    ld hl, sp-$08
    db $db
    rst $20

jr_0d9_592a:
    jr nc, jr_0d9_595c

    call z, Call_000_00fc
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    jr nc, jr_0d9_592a

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
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

jr_0d9_595c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, @+$41

    ld bc, $7f01
    ld a, a
    inc bc
    inc bc
    rst $38
    cp a
    rlca
    rlca
    cp $7f
    rrca
    ld c, $ff
    ld a, a
    rra
    ld e, $ff
    ld a, a
    rra
    rra
    rst $38
    ld a, a
    rrca
    rrca
    sbc $3f
    rlca
    rlca
    push bc
    dec sp
    rlca
    rlca
    xor $91
    inc bc
    inc bc
    rst $30
    ret z

    ld bc, $bb01
    and h
    nop
    nop
    rra
    ld e, $00
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
    db $fc
    db $fc
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rrca
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    cp a
    rst $18
    ret nz

    ret nz

    ld b, a
    cp a
    ret nz

    ret nz

    add e
    ld a, a
    ldh [$e0], a
    ld [bc], a
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    inc bc
    db $fd
    ldh a, [$f0]
    rlca
    ld sp, hl
    ld h, b
    ld h, b
    dec c
    di
    nop
    nop
    sbc [hl]
    ld [c], a
    nop
    nop
    ld [$00f6], a
    nop
    db $fc
    ld a, h
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    cp h
    ld b, h
    nop
    nop
    ld a, $e2
    nop
    nop
    jp c, Jump_000_00d6

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
    ld bc, $0001
    nop
    ld b, $07
    nop
    nop
    ret z

    rst $08
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $28
    inc bc
    inc bc
    rst $38
    rst $18
    inc bc
    inc bc
    rst $38
    sbc a
    rlca
    rlca
    rst $38
    sbc a
    rlca
    rlca
    rst $38
    rst $18
    inc bc
    inc bc
    rst $30
    rst $08
    ld bc, $f101
    adc $01
    ld bc, $e4fb
    nop
    nop
    db $fd
    ld a, [c]
    nop
    nop
    ld l, [hl]
    ld l, c
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
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ldh a, [$f0]
    db $eb
    rst $30
    ldh a, [$f0]
    db $dd
    db $e3
    ldh a, [$f0]
    cp b
    rst $00
    ld hl, sp-$08
    or b
    rst $08
    inc a
    db $fc
    ldh [$df], a
    inc a
    db $fc
    ldh [rIE], a
    ld a, h
    cp h
    ret nz

    rst $38
    ld a, b
    cp b
    ld b, b
    rst $38
    ld h, b
    and b
    and c
    ld a, [hl]
    and b
    ld h, b
    di
    inc a
    ret nz

    ld b, b
    db $fd
    ld e, $40
    ret nz

    ld a, a
    adc a
    add b
    add b
    rst $38
    rst $00
    nop
    nop
    rst $38
    db $e3
    nop
    nop
    rst $28
    pop de
    nop
    nop
    ld d, a
    ld l, b
    add b
    add b
    daa
    inc a
    ret nz

    ld b, b
    dec de
    ld a, [de]
    add b
    add b
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
    jr jr_0d9_5cbc

    nop
    nop
    inc a
    inc a
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
    ld h, [hl]
    ld a, [hl]
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc sp
    ccf

jr_0d9_5cbc:
    nop
    nop
    ld [de], a
    rra
    inc e
    inc e
    ld c, $0f
    cpl
    ccf
    inc b
    rlca
    ld l, e
    ld a, a
    adc b
    adc a
    ld a, d
    ld a, a
    ld a, h
    rst $38
    ld a, $3f
    ld b, [hl]
    rst $38
    rra
    rra
    jp $03ff


    inc bc
    ld bc, $01ff
    ld bc, $ff00
    ld bc, $0001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld h, $3f
    nop
    nop
    ld e, $1f
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
    ccf
    ccf
    nop
    nop
    rra
    rra
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
    ld b, b
    ld b, b
    nop
    nop
    and b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$f0f8], sp
    ldh a, [rTAC]
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    db $fc
    db $fc
    rlca
    rst $38
    db $fc
    db $fc
    rrca
    rst $38
    db $fc
    db $fc
    rra
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    ld hl, sp-$08
    add b
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    add sp, -$08
    nop
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    sub b
    ldh a, [rSB]
    rst $38
    and b
    ldh [rSB], a
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    add b
    add b
    add l
    rst $38
    nop
    nop
    ld a, [$00fe]
    nop
    db $e4
    db $fc
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
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

jr_0d9_5e34:
    nop
    nop
    nop
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
    ld e, $1f
    ld b, b
    ret nz

    inc e
    rra
    jr nz, jr_0d9_5e34

    inc c
    rrca
    rra
    rst $38
    inc b
    rlca
    sbc b
    rst $38
    inc bc
    inc bc
    jr nz, @+$01

    ld bc, $4701
    rst $38
    ld bc, $9f01
    rst $38
    ld [bc], a
    inc bc
    cp a
    ld a, a
    dec b
    ld b, $ff
    ccf
    rlca
    inc b
    cp a
    ld a, a
    rlca
    inc b
    sbc a
    ld a, a
    rlca
    inc b
    cp $ff
    rlca
    rlca
    add sp, -$51
    rlca
    rlca
    and a
    rst $20
    dec b
    rlca
    ld h, b
    ldh [$03], a
    ld [bc], a
    and b
    ld h, b
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

jr_0d9_5eba:
    nop
    nop
    nop
    nop

jr_0d9_5ebe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    rlca
    rst $38
    ldh [$e0], a
    rra
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08
    or e
    rst $08
    ld hl, sp-$08
    ld h, b
    sbc a
    add sp, -$08
    ret nz

    cp a
    ld c, b
    ld hl, sp-$80
    rst $38
    ld c, b
    cp b
    nop
    rst $38
    ret nc

    jr nc, jr_0d9_5eba

    cp $e0
    jr nz, jr_0d9_5ebe

    cp $c0
    ld b, b
    rst $00
    cp a
    add b
    add b
    ld a, a
    ld d, a
    nop
    nop
    ld a, $3e
    nop
    nop
    jr jr_0d9_5f66

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_5f66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $e701
    rst $38
    ld [bc], a
    inc bc
    ld a, $ff
    inc b
    rlca
    ld a, h
    rst $38
    inc c
    rrca
    db $fc
    rst $38
    dec e
    rra
    ld hl, sp-$01
    dec a
    ccf
    ld hl, sp-$01
    ld a, c
    ld a, [hl]
    ld hl, sp-$01
    ld a, c
    ld a, [hl]
    db $fc
    ld a, a
    inc a
    ccf
    ret c

    ccf
    ld e, $1f
    ld a, a
    pop af
    rra
    rra
    rst $38
    pop hl
    rrca
    rrca
    ld a, $3a
    ld b, $06
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
    nop
    nop
    nop
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
    ret nz

    ret nz

    adc a
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    ei
    ldh a, [$f0]
    rlca
    ei
    ld a, b
    ld hl, sp+$09
    cp $78
    ld hl, sp+$0b
    db $f4
    ldh a, [rSVBK]
    ld [hl], a
    xor b
    ldh [$60], a
    ccf
    call c, $c040
    cp $df
    add b
    add b
    ccf
    daa
    nop
    nop
    jr jr_0d9_60c6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_60c6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $e701
    rst $38
    ld [bc], a
    inc bc
    ld a, $ff
    inc b
    rlca
    ld a, h
    rst $38
    inc c
    rrca
    db $fc
    rst $38
    dec e
    rra
    ld hl, sp-$01
    dec a
    ccf
    ld hl, sp-$01
    ld a, c
    ld a, [hl]
    ld hl, sp-$01
    ld a, c
    ld a, [hl]
    db $fc
    ld a, a
    inc a
    ccf
    ret c

    ccf
    ld e, $1f
    ld a, a
    pop af
    rra
    rra
    rst $38
    pop hl
    rrca
    rrca
    ld a, $3a
    ld b, $06
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
    nop
    nop
    nop
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
    ret nz

    ret nz

    adc a
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    ei
    ldh a, [$f0]
    rlca
    ei
    ld a, b
    ld hl, sp+$09
    cp $78
    ld hl, sp+$0b
    db $f4
    ldh a, [rSVBK]
    ld [hl], a
    xor h
    ldh [$60], a
    scf
    ld hl, sp+$40
    ret nz

    cp $71
    add b
    add b
    ei
    ld a, a
    nop
    nop
    db $fc
    sbc h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $00
    nop
    ld b, $05
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
    inc e
    inc e
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    ld [hl], b
    ld a, a
    or c
    rst $38
    ld h, c
    ld a, a
    ld hl, $31ff
    ccf
    ld hl, $12ff
    rra
    cpl
    rst $38
    ld c, $0f
    dec de
    rst $38
    ld b, $07
    ld hl, $02ff
    inc bc
    jr nz, @+$01

    ld bc, $2001
    rst $38
    nop
    nop
    sbc b
    rst $38
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    rrca
    rrca
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
    ldh a, [$f0]
    nop
    nop
    rst $28
    rra
    add b
    add b
    ld sp, hl
    rrca
    ld b, b
    ret nz

    rst $18
    rst $28
    ld b, b
    ret nz

    rst $38
    cp $40
    ret nz

    cp $ff
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop
    add e
    rst $38
    add b
    add b
    add e
    cp $40
    ret nz

    add c
    cp $c0
    ld b, b
    add e
    db $fc
    ld b, b
    ret nz

    add c
    cp $c0
    ld b, b
    adc a
    cp $c0
    ld b, b
    adc a
    or $40
    ret nz

    jp $80ff


    add b
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [$00fe]
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    daa
    add hl, sp
    nop
    nop
    rra
    db $10
    ret nz

    ret nz

    rrca
    ld [$f0f0], sp
    rlca
    dec b
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$28
    ld bc, $6801
    ld hl, sp+$00
    nop
    call nz, Call_000_00fc
    nop
    ld a, [hl]
    ld [hl], d
    nop
    nop
    rrca
    add hl, bc
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
    dec bc
    rrca
    ld e, $1e
    rrca
    rrca
    dec a
    ccf
    ccf
    ccf
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld h, c
    ld a, a
    ld h, e
    rst $38
    ld h, d
    ld a, a
    ld b, e
    rst $38
    ld [hl+], a
    ccf
    ld b, e
    rst $38
    inc d
    rra
    ld e, a
    rst $38
    inc c
    rrca
    scf
    rst $38
    ld b, $07
    ld b, e
    rst $38
    ld [bc], a
    inc bc
    ld b, c
    rst $38
    ld bc, $4101
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    rra
    rra
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
    ld a, b
    ld a, b
    nop
    nop
    cp h
    call nz, RST_00
    cp $02
    nop
    nop
    rra
    db $e3
    nop
    nop
    ld e, $f7
    add b
    add b
    rst $28
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $30
    rst $30
    nop
    nop
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
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
    add h
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
    db $fc
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    ld [c], a
    cp $00
    nop
    ld c, [hl]
    ld [hl], d
    nop
    nop
    ccf
    ld hl, $8080
    rra
    ld de, $e0e0
    rrca
    dec bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$b0]
    ld [bc], a
    inc bc
    ret nc

    ldh a, [rSB]
    ld bc, $f888
    nop
    nop
    db $fc
    db $e4
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
    rrca
    rrca
    nop
    nop
    rra
    stop
    nop
    jr jr_0d9_65c7

    nop
    nop
    inc sp
    ccf
    ld e, $1e
    rra
    rra
    dec a
    ccf
    ccf
    ccf
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld h, c
    ld a, a
    ld h, e
    rst $38
    ld h, d
    ld a, a
    ld b, e

jr_0d9_65c7:
    rst $38
    ld [hl+], a
    ccf
    ld b, e
    rst $38
    inc d
    rra
    ld e, a
    rst $38
    inc c
    rrca
    scf
    rst $38
    ld b, $07
    ld b, e
    rst $38
    ld [bc], a
    inc bc
    ld b, c
    rst $38
    ld bc, $4101
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    rra
    rra
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

jr_0d9_664e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0d9_664e

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
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
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
    add h
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
    db $fc
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    ld [c], a
    cp $00
    nop
    ld c, [hl]
    ld [hl], d
    nop
    nop
    ccf
    ld hl, $8080
    rra
    ld de, $e0e0
    rrca
    dec bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$b0]
    ld [bc], a
    inc bc
    ret nc

    ldh a, [rSB]
    ld bc, $f888
    nop
    nop
    db $fc
    db $e4
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $e701
    rst $38
    ld [bc], a
    inc bc
    ld a, $ff
    inc b
    rlca
    ld a, h
    rst $38
    inc c
    rrca
    db $fc
    rst $38
    dec e
    rra
    ld hl, sp-$01
    dec a
    ccf
    ld hl, sp-$01
    ld a, c
    ld a, [hl]
    ld hl, sp-$01
    ld a, c
    ld a, [hl]
    db $fc
    ld a, a
    inc a
    ccf
    ret c

    ccf
    ld e, $1f
    ld a, a
    pop af
    rra
    rra
    rst $38
    pop hl
    rrca
    rrca
    ld a, $3a
    ld b, $06
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
    nop
    nop
    nop
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
    ret nz

    ret nz

    adc a
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    ei
    ldh a, [$f0]
    rlca
    ei
    ld a, b
    ld hl, sp+$01
    cp $78
    ld hl, sp+$03
    db $fc
    ldh a, [rSVBK]
    rlca
    db $fc
    ldh [$60], a
    scf
    ld hl, sp+$40
    ret nz

    cp $71
    add b
    add b
    ei
    ld a, a
    nop
    nop
    db $fc
    sbc h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $001f
    nop
    jr nz, jr_0d9_6a8b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $3301
    db $fc
    nop
    nop
    or e
    call c, Call_000_0101
    xor $f9
    inc bc
    inc bc
    rst $38
    ldh a, [rTAC]
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    or c
    rst $18
    inc bc
    inc bc
    jp z, Jump_000_01b7

    ld bc, $bf7c
    nop
    nop
    db $fc
    ei
    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    ld a, [hl-]
    ld h, $00
    nop
    inc e

jr_0d9_6a8b:
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
    jr c, @+$3a

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
    cp $fe
    nop
    nop
    rst $38
    di
    nop
    nop
    di
    rst $28
    add b
    add b
    rst $38
    rst $30

jr_0d9_6b12:
    ret nz

    ld b, b
    rst $20
    ld a, [hl]

jr_0d9_6b16:
    ret nz

    ld b, b
    add a
    ld a, h
    ld b, b
    ret nz

    adc c
    ld a, a
    add b
    add b
    sub d
    ld a, [hl]
    nop
    nop
    ld h, d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr nz, jr_0d9_6b12

    nop
    nop
    jr nz, jr_0d9_6b16

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_0d9_6d54

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
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    inc e
    rra
    nop
    nop
    ld [$000f], sp
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
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    add h
    add a

jr_0d9_6d54:
    ld b, $07
    set 1, a
    dec c
    ld c, $b4
    ld a, a
    rrca
    inc c
    ret z

    ccf
    dec c
    ld c, $f8
    rra
    dec b
    ld b, $b8
    ld a, a
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    ld bc, $f001
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $fe01
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
    jr nc, jr_0d9_6dbc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_6dbc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_6dda:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0d9_6dda

    nop
    nop
    ld e, $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38

jr_0d9_6e12:
    and b
    ldh [$1f], a
    rst $38
    sub b
    ldh a, [rIF]
    rst $38
    ld l, b
    sbc b
    ld c, $ff
    db $f4
    inc c
    rrca
    rst $38
    ld a, d
    add [hl]
    inc c
    db $fc
    sbc e
    rst $20
    ld [$63f8], sp
    ld a, a
    db $10
    ldh a, [$1f]
    rra
    jr nz, jr_0d9_6e12

    rrca
    rrca
    ret nz

    ret nz

    ld b, $06
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
    rrca
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    add h
    add a
    ld bc, $eb01
    rst $28
    inc bc
    inc bc
    ld [hl], h
    rst $38
    ld b, $07
    ret z

    ccf
    ld b, $07
    add sp, $1f
    ld b, $07
    cp b
    ld a, a
    add d
    add e
    ld [hl], b
    rst $38
    add c
    add c
    ldh a, [rIE]
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $fe01
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
    jr nc, jr_0d9_6f3c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_6f3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    ld e, $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38

jr_0d9_6f92:
    ldh [$e0], a
    rra
    rst $38
    sub b
    ldh a, [rIF]
    rst $38
    ld l, b
    sbc b
    ld c, $ff
    db $f4
    inc c
    rrca
    rst $38
    ld a, $ce
    inc c
    db $fc
    sbc $fe
    ld [$3ef8], sp
    ld a, $10
    ldh a, [rNR32]
    inc e
    jr nz, jr_0d9_6f92

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    add l
    add a
    rrca
    rrca
    db $eb
    rst $28
    rrca
    rrca
    inc d
    rst $38
    ld c, $0f
    ld [$04ff], sp
    rlca
    jr @+$01

    inc b
    rlca
    jr c, @+$01

    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    ld bc, $f001
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $fe01
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
    jr nc, jr_0d9_70bc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_70bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
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

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    and b
    ldh [$1f], a
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    db $10
    ldh a, [$0c]
    rst $38
    db $10
    ldh a, [$08]
    rst $38
    jr @-$06

jr_0d9_7124:
    inc c
    rst $38
    jr @-$06

    ld a, [bc]
    ei
    jr c, jr_0d9_7124

    ld de, $f0f1
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$c0], a
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    ld c, $0e
    ld bc, $1f01
    rra
    ld bc, $3f01
    ccf
    add d
    add e
    ccf
    ccf
    ld b, l
    rst $00
    rra
    rra
    dec hl
    rst $28
    ld c, $0f
    inc d
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    jr @+$01

    inc b
    rlca
    jr c, @+$01

    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    ld bc, $f001
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $fe01
    db $fd
    nop
    nop
    rst $38
    ld hl, sp+$00
    nop
    ld [hl], a
    ld a, b
    nop
    nop
    dec sp
    inc a
    nop
    nop
    dec b
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
    ld h, b
    ld h, b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld l, h
    sbc h
    nop
    nop
    cp $0e
    nop
    nop
    cp a
    ld e, a
    nop
    nop
    ccf
    rst $38
    add b
    add b

jr_0d9_7288:
    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38

jr_0d9_7292:
    and b
    ldh [$1f], a
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    db $10
    ldh a, [$0c]
    rst $38
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    jr nz, jr_0d9_7288

    add hl, bc
    ld sp, hl
    ret nz

    ret nz

    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0d9_7292

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
    ld b, b
    ret nz

    nop
    nop
    ldh [$60], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld c, $00
    nop
    dec de
    inc e
    jr c, @+$3a

    rrca
    inc c
    ld a, h
    ld a, h
    dec b
    ld b, $fc
    db $fc
    ld [bc], a
    inc bc
    cp $fe
    ld [bc], a
    inc bc
    ld a, a
    ld a, a
    dec b
    rlca
    ld a, $3f
    jp z, Jump_000_1ccf

    rra
    inc [hl]
    rst $38
    db $10
    rra
    inc b
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    jr @+$01

    ld [bc], a
    inc bc
    jr c, @+$01

    ld bc, $7c01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    inc sp
    inc a
    nop
    nop
    dec bc
    inc c
    nop
    nop
    dec b
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
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ld l, $ee
    nop
    nop
    rst $18
    ccf
    nop
    nop
    rst $18
    ccf
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    ld a, a
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    rst $08
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
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
    and b
    ld h, b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ret nc

    jr nc, jr_0d9_744f

jr_0d9_744f:
    nop
    ret c

    jr c, jr_0d9_7453

jr_0d9_7453:
    nop
    inc e
    db $fc
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
    jr nc, jr_0d9_7492

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d9_7492:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld c, $00
    nop
    rlca
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    adc d
    adc a
    rrca
    rrca
    call nc, Call_000_1fdf
    rra
    inc h
    rst $38
    ld c, $0f
    ld [$04ff], sp
    rlca
    jr @+$01

    ld [bc], a
    inc bc
    jr c, @+$01

    ld bc, $7c01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    dec sp
    inc a
    nop
    nop
    dec bc
    inc c
    nop
    nop
    dec b
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
    ret nz

    ret nz

    nop
    nop
    xor $ee
    nop
    nop
    rra
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    ld a, a
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    rst $08
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
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
    and b
    ld h, b
    nop
    nop
    ldh a, [rSVBK]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $1f
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
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    inc d
    rra
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
    ld a, b
    ld a, a
    nop
    nop
    ld hl, sp-$01
    ld bc, $fc01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $fe01
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    jr nc, jr_0d9_76c7

    nop
    nop
    ld [$000f], sp
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

jr_0d9_76c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, $ee
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    rst $08
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    inc bc
    rst $38

jr_0d9_771a:
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0d9_771a

jr_0d9_773a:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr jr_0d9_773a

jr_0d9_7742:
    nop
    nop
    jr @-$06

    nop
    nop
    jr c, jr_0d9_7742

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0d9_77c4

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
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    inc a
    ccf
    nop
    nop
    db $10
    rra

jr_0d9_77c4:
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
    dec b
    rlca
    nop
    nop
    ld a, [bc]
    rrca
    ld bc, $9401
    sbc a
    ld [bc], a
    inc bc
    ld l, h
    rst $38
    dec b
    ld b, $98
    ld a, a
    dec bc
    inc c
    jr c, @+$01

    dec bc
    inc c
    ld hl, sp+$7f
    dec b
    ld b, $fc
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $fe01
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    jr nc, jr_0d9_7847

    nop
    nop
    ld [$000f], sp
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

jr_0d9_7847:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, $ee
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    rst $08

jr_0d9_7891:
    rst $38
    and b
    ldh [rTAC], a
    rst $38
    ret nc

    jr nc, @+$05

    cp $e8
    jr jr_0d9_78a3

    rst $38

jr_0d9_789e:
    ld hl, sp+$18
    rlca
    rst $38

jr_0d9_78a2:
    ld a, h

jr_0d9_78a3:
    sbc h
    inc b
    db $fc

jr_0d9_78a6:
    db $fc
    db $fc
    ld [$78f8], sp
    ld a, b
    db $10
    ldh a, [$30]
    jr nc, jr_0d9_7891

    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0d9_789e

    nop
    nop
    jr nz, jr_0d9_78a2

    nop
    nop
    jr nz, jr_0d9_78a6

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

Jump_0d9_78f8:
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
