SECTION "ROM Bank $0e3", ROMX[$4000], BANK[$e3]

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
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld a, b
    ld a, a
    ld bc, $bf01
    rst $38
    inc bc
    inc bc
    or b
    rst $38
    rlca
    rlca
    add b
    rst $38
    rrca
    rrca
    adc a
    rst $38
    rrca
    rrca
    add h
    rst $38
    rra
    rra
    add h
    rst $38
    dec d
    dec de
    call nz, Call_000_1eff
    ld de, $ffc0
    ld e, $11
    ld a, a
    rst $38
    rla
    jr jr_0e3_408b

    rst $38
    rla
    jr jr_0e3_408f

    rst $38
    dec bc
    inc c
    ld h, b
    rst $38
    ld [$3f0f], sp
    rst $38
    inc b
    rlca
    ldh [rIE], a
    dec b
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    ld bc, $f001
    rst $38
    nop
    nop
    jp Jump_000_00bf


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
    ccf
    ccf
    nop
    nop
    ccf

jr_0e3_408b:
    ccf
    nop
    nop
    ld h, c

jr_0e3_408f:
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
    nop
    nop
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38

jr_0e3_40ea:
    add b
    add b

jr_0e3_40ec:
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh a, [$f0]

Jump_0e3_40fc:
    dec e
    cp $b0
    ld [hl], b
    dec de
    db $fc
    ldh [rNR41], a
    ei
    db $fc
    and b
    ld h, b
    dec bc
    db $fc
    jr nz, jr_0e3_40ec

    dec bc
    db $fc
    and b
    ld h, b
    add hl, bc
    cp $a0
    ld h, b
    db $fc
    rst $38
    and b
    ld h, b
    dec b
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$a0], a
    inc bc
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    jr nz, jr_0e3_40ea

    cp $c0
    ld b, b
    ld bc, $80ff
    add b
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
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
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    cp $fe
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
    inc a
    inc a
    nop
    nop
    cp a
    cp a
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
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
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld hl, sp-$01
    ld bc, $df01
    rst $38
    inc bc
    inc bc
    ret nc

    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    call nz, $03ff
    inc bc
    call nz, $01ff
    ld bc, $ffc0
    ld bc, $ff01
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld b, a
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
    ld h, b
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
    ld h, c
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
    nop
    nop
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    pop af
    rst $38
    nop
    nop
    ld h, e
    rst $38
    add b
    add b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ld h, b
    and b
    rrca
    rst $38
    and b
    ldh [rIF], a
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    sub b
    ldh a, [rIF]
    db $fc

jr_0e3_4282:
    ret nc

    jr nc, jr_0e3_4282

    cp $a0
    ld h, b
    rlca
    rst $38
    ret nz

    ret nz

    inc c
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
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add e
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
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    nop
    nop
    ld a, $3e
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
    rst $18
    rst $18
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
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
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    ld bc, $c401
    rst $38
    ld bc, $4001
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [$bf], a
    nop
    nop
    and b
    rst $38
    nop
    nop
    ld [hl], e
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld b, c
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
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    ld bc, $f001
    ldh a, [rP1]
    ld bc, $f070

jr_0e3_43b0:
    ld bc, $f001
    ldh a, [rP1]
    nop
    jr c, jr_0e3_43b0

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
    ld a, h
    nop
    nop
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ld b, b
    ret nz

    inc de
    db $fc
    ret nz

    ld b, b
    di
    db $fc
    ret nz

    ld b, b
    ld de, $40fe
    ret nz

    inc de
    db $fc
    add b
    add b
    inc de
    db $fc
    add b
    add b
    di
    db $fc
    add b
    add b
    rrca
    cp $80
    add b
    rrca
    rst $38
    add b
    add b
    ld c, $ff
    add b
    add b
    rrca
    rst $30
    add b
    add b
    add $f9
    add b
    add b
    inc bc
    rst $38
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
    add d
    cp $00
    nop
    add [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    add d
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
    db $fc
    db $fc
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
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    ld bc, $c401
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $6001
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e001
    ld a, a
    ld bc, $6001
    cp a
    nop
    nop
    di
    rst $38
    nop
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    add hl, bc
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld c, $0f
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
    inc bc
    rra
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0001
    nop
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh [$e0], a
    jr @+$01

    ld b, b
    ret nz

    add hl, de
    cp $c0
    ld b, b
    ld sp, hl
    cp $c0
    ld b, b
    ld [$c0ff], sp
    ld b, b
    add hl, bc
    cp $c0
    ld b, b
    add hl, bc
    cp $c0
    ld b, b
    ld sp, hl
    cp $c0
    ld b, b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    jp $c0fc


    ld b, b
    rlca
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
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    ld [bc], a
    inc bc
    call nz, Call_000_02ff
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld h, b
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    ld [bc], a
    ldh [rIE], a
    ld [bc], a
    inc bc
    ldh [$3f], a
    ld bc, $f301
    rst $38
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh [$e0], a
    add hl, de
    cp $e0
    jr nz, jr_0e3_471a

    cp $e0
    jr nz, @-$05

    cp $e0
    jr nz, @+$0e

    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ldh [rNR41], a
    ld c, $ff
    ldh [rNR41], a
    cp $ff
    ld h, b
    and b
    rlca
    rst $38

jr_0e3_471a:
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    db $fd
    ldh [$e0], a
    push bc
    cp $e0
    jr nz, jr_0e3_4738

    ei
    ret nz

    ret nz

    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop

jr_0e3_4738:
    ld [$00f8], sp
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
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld hl, sp-$08
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
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc b
    rlca
    call nz, Call_000_04ff
    rlca
    ret nz

    ld a, a
    dec b
    ld b, $ff
    ld a, a
    dec b
    ld b, $c0
    ld a, a
    dec b
    ld b, $c0
    ld a, a
    dec b
    ld b, $e0
    ld a, a
    ld c, $0f
    ld a, a
    rst $38
    rrca
    rrca
    ldh [rIE], a
    rra
    rla
    ldh [rIE], a
    dec e
    inc de
    ldh [rIE], a
    rrca
    inc c
    ldh [rIE], a
    inc bc
    inc bc
    inc sp
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    jr @+$21

    nop
    nop
    jr nc, jr_0e3_484f

    nop
    nop
    jr nc, jr_0e3_4853

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld sp, $003f
    nop
    rra
    rra
    nop
    nop
    ld c, $0e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    daa
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
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

jr_0e3_484f:
    nop
    ret c

    add sp, $00

jr_0e3_4853:
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop

jr_0e3_4860:
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh [$e0], a
    add hl, de
    cp $e0
    jr nz, jr_0e3_489a

jr_0e3_4881:
    cp $e0
    jr nz, jr_0e3_4881

    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    ldh [rNR41], a

jr_0e3_488c:
    ld c, $ff
    jr nc, jr_0e3_4860

    ld c, $ff
    ld [hl], b
    sub b
    db $fd
    db $fd
    ld [hl], b
    sub b
    dec b
    db $fd

jr_0e3_489a:
    jr nc, jr_0e3_488c

    dec b
    db $fd
    ldh a, [$f0]
    dec b
    db $fd
    ret nc

    ldh a, [rTIMA]
    db $fd

jr_0e3_48a6:
    ldh a, [$f0]
    push bc
    db $fd

jr_0e3_48aa:
    ld d, b
    or b
    jr jr_0e3_48a6

jr_0e3_48ae:
    ldh [$e0], a
    jr jr_0e3_48aa

jr_0e3_48b2:
    nop
    nop
    jr jr_0e3_48ae

    nop
    nop
    jr nc, jr_0e3_48aa

    nop
    nop
    jr nc, jr_0e3_48ae

    nop
    nop
    jr nc, jr_0e3_48b2

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
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
    rst $30
    rst $30
    nop
    nop
    rst $38
    rst $38
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
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    ld [bc], a
    inc bc
    call nz, Call_000_02ff
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld h, b
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    ld [bc], a
    ldh [rIE], a
    ld bc, $e001
    ccf
    nop
    nop
    di
    rst $38
    nop
    nop
    ld hl, $003f
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    ld [de], a
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    ld e, $1f
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
    jr jr_0e3_49b3

    nop
    nop
    jr jr_0e3_49b7

    nop
    nop
    jr jr_0e3_49bb

    nop
    nop
    jr jr_0e3_49bf

    nop
    nop
    ld d, $1f
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
    rlca
    rra
    nop
    nop
    rra

jr_0e3_49b3:
    rra
    nop
    nop
    inc bc

jr_0e3_49b7:
    rrca
    nop
    nop
    rrca

jr_0e3_49bb:
    rrca
    nop
    nop
    nop

jr_0e3_49bf:
    rlca
    nop
    nop
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh [$e0], a
    add hl, de
    cp $e0
    jr nz, jr_0e3_4a1a

    cp $e0
    jr nz, @-$05

    cp $e0
    jr nz, @+$0e

    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ldh [rNR41], a
    ld c, $ff
    ldh [rNR41], a
    cp $ff
    ld h, b
    and b
    rlca
    rst $38

jr_0e3_4a1a:
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    db $fd
    ldh [$e0], a
    push bc
    cp $e0
    jr nz, jr_0e3_4a34

    rst $38
    ret nz

    ret nz

    inc b
    db $fc
    nop
    nop

jr_0e3_4a34:
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc

jr_0e3_4a3a:
    nop
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08

jr_0e3_4a42:
    nop
    nop
    jr @-$06

    nop
    nop
    ld [$00f8], sp
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
    jr nz, jr_0e3_4a3a

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0e3_4a42

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
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    ld bc, $c401
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $6001
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e001
    ld a, a
    ld bc, $6001
    cp a
    nop
    nop
    di
    rst $38
    nop
    nop
    jr nz, jr_0e3_4b2f

    nop
    nop
    jr nz, jr_0e3_4b33

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e3_4b3b

    nop
    nop
    jr nz, jr_0e3_4b3f

    nop
    nop
    jr nz, jr_0e3_4b43

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
    ccf
    ccf
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca

jr_0e3_4b2f:
    rlca
    nop
    nop
    rlca

jr_0e3_4b33:
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca

jr_0e3_4b3b:
    rrca
    nop
    nop
    rrca

jr_0e3_4b3f:
    rrca
    nop
    nop
    nop

jr_0e3_4b43:
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh [$e0], a
    jr @+$01

    ld b, b
    ret nz

    add hl, de
    cp $c0
    ld b, b
    ld sp, hl
    cp $c0
    ld b, b
    ld [$c0ff], sp
    ld b, b
    add hl, bc
    cp $c0
    ld b, b
    add hl, bc
    cp $c0
    ld b, b
    ld sp, hl
    cp $c0
    ld b, b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    jp $c0fc


    ld b, b
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
    ld b, d
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    ld b, e
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld b, d
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
    add h
    db $fc
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
    ldh a, [$f0]

jr_0e3_4bee:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr c, jr_0e3_4bee

    nop
    nop
    adc h
    db $fc
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
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    ld bc, $c401
    rst $38
    ld bc, $4001
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [$bf], a
    nop
    nop
    and b
    rst $38
    nop
    nop
    ld d, e
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
    add c
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
    add b
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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
    nop
    nop
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ld b, b
    ret nz

    inc de
    db $fc
    ret nz

    ld b, b
    di
    db $fc
    ret nz

    ld b, b
    ld de, $40fe
    ret nz

    inc de
    db $fc
    add b
    add b
    inc de
    db $fc
    add b
    add b
    di
    db $fc
    add b
    add b
    rrca
    cp $80
    add b
    rrca
    rst $38
    add b
    add b
    ld c, $ff
    add b
    add b
    rrca
    rst $30
    add b
    add b
    add $f9
    add b
    add b
    add e
    rst $38
    nop
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

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    rra
    rra
    add b
    add b
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
    ldh a, [$f0]
    rrca
    rrca
    ldh [$e0], a
    adc a
    adc a
    add b
    add b
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
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b001
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    add h
    rst $38
    ld bc, $c401
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
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld d, e
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
    ld bc, $fe01
    cp $01
    ld bc, $fe06
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    inc b
    rlca
    inc b
    db $fc
    inc b
    rlca
    inc b
    db $fc
    inc b
    rlca
    ld [$02f8], sp
    inc bc
    ld [$01f8], sp
    ld bc, $f0f0
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    ld [bc], a
    inc bc
    ld [hl], b
    ldh a, [rSB]
    ld bc, $f8f8
    nop
    nop
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
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld l, h
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, a
    rst $38
    add b
    add b
    rrca
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    and b
    ld h, b
    rra
    rst $38
    ld h, b
    ldh [rNR10], a
    rst $38
    ldh [$e0], a
    daa
    ld hl, sp-$40
    ret nz

    ld h, $f9
    add b
    add b
    rst $20
    ld sp, hl
    nop
    nop
    dec l
    di
    nop
    nop
    ld l, $f2
    nop
    nop
    ld l, $f2
    nop
    nop
    xor $f2
    nop
    nop
    ld [hl-], a
    cp $00
    nop
    inc a
    db $fc
    nop
    nop
    ld a, h
    cp h
    nop
    nop
    ld l, h
    sbc h
    nop
    nop
    call c, Call_000_00e4
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
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add e
    rst $38
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
    ld b, b
    ld a, a
    add b
    add b
    jr nz, jr_0e3_4f11

    add b
    add b
    jr nz, jr_0e3_4f15

    add b
    add b
    jr nz, jr_0e3_4f19

    ld b, b
    ret nz

    jr nz, jr_0e3_4f1d

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
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ret nz

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

jr_0e3_4f11:
    nop
    nop
    nop
    nop

jr_0e3_4f15:
    nop
    nop
    nop
    nop

jr_0e3_4f19:
    nop
    nop
    nop
    nop

jr_0e3_4f1d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rla
    rra
    nop
    nop
    jr nz, jr_0e3_4f9b

    nop
    nop
    jr nz, jr_0e3_4f9f

    nop
    nop
    jr nz, jr_0e3_4fa3

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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    jr nc, jr_0e3_4fbb

    nop
    nop
    jr nz, jr_0e3_4fbf

    nop
    nop
    jr nz, jr_0e3_4fc3

    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, a

jr_0e3_4f9b:
    ld a, a
    nop
    nop
    add c

jr_0e3_4f9f:
    rst $38
    ccf
    ccf
    nop

jr_0e3_4fa3:
    rst $38
    daa
    ccf
    add b
    rst $38
    daa
    ccf
    add b
    rst $38
    rra
    rra
    add b
    rst $38
    inc de
    rra
    nop
    rst $38
    rra
    rra
    add c
    rst $38
    inc de
    rra
    ld a, a

jr_0e3_4fbb:
    ld a, a
    rrca
    rrca
    rlca

jr_0e3_4fbf:
    rlca
    nop
    nop
    nop

jr_0e3_4fc3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    ld a, a
    ld a, a
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$d0]
    pop bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    adc h
    db $fc
    ld hl, sp-$01
    ld a, $fe
    ld h, b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    inc e
    rst $38
    ld a, l
    rst $38
    ld [bc], a
    rst $38
    ld h, e
    db $fd
    ld bc, $efff
    pop af
    jp $adff


    or e
    daa
    rst $38
    daa
    add hl, sp
    rla
    rst $38
    and e
    cp l
    rrca
    rst $38
    db $e3
    db $fd
    dec c
    rst $38
    ld h, e
    db $fd
    rrca
    db $fd
    pop hl
    ld a, a
    ld de, $bfff
    cp a
    ld de, $3fff
    ccf
    ld [de], a
    cp $5f
    ld a, a
    ld [de], a
    cp $2b
    ccf
    sub h
    db $fc
    ld a, $2a
    cp b
    ld hl, sp+$14
    inc d
    or b
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    rra
    rra
    ret nc

    ldh a, [$1f]
    rra
    rst $30
    rst $10
    rra
    rra
    ei
    db $dd
    ccf
    ccf
    db $ec
    di
    ld a, b
    ld a, a
    di
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$39
    rst $38
    cp $fd
    add c
    rst $38
    cp $fd
    ld sp, hl
    rst $38
    db $fc
    rst $38
    sub c
    rst $38
    db $fd
    rst $38
    sub b
    rst $38
    cp $fe
    add b
    rst $38
    ld [bc], a
    cp $7f
    ld a, a
    ld a, [c]
    cp $40
    ld a, a
    rrca

jr_0e3_50c7:
    rst $38
    jr nz, @+$41

    ld bc, $20ff
    ccf
    ld bc, $20ff
    ccf
    ld bc, $1fff
    rra
    rst $38
    rst $38
    jr nz, jr_0e3_5119

    ld bc, $20ff
    ccf
    ld bc, $20ff
    ccf
    ld bc, $10ff
    rra
    ld bc, $0fff
    rrca
    add e
    rst $38
    ld [$030f], sp
    rst $38
    ld [$050f], sp
    rst $38
    ld [$050f], sp
    rst $38
    ld [$050f], sp
    rst $38
    ld [$090f], sp
    rst $38
    rrca
    rrca
    adc a
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    ld [$f80f], sp
    rst $38
    ld [$080f], sp
    rst $38
    db $10
    rra
    ld [$10ff], sp
    rra
    ld [$10ff], sp

jr_0e3_5119:
    rra
    ld [$10ff], sp
    rra
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    rlca
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $28
    rst $28
    rlca
    rlca
    sbc $de
    rlca
    rlca
    cp $fe
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    dec c
    nop
    nop
    scf
    jr c, jr_0e3_50c7

    add b
    ld e, [hl]
    ld h, c
    add b
    add b
    cp e
    rst $00

jr_0e3_514e:
    nop
    nop
    sbc [hl]
    cp $00
    nop
    sbc $fa
    nop
    nop
    ld a, [hl-]
    cp $00
    nop
    ld l, h
    sbc h
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    add sp, $18
    nop
    nop
    ret nc

    jr nc, jr_0e3_516b

jr_0e3_516b:
    nop
    jr nz, jr_0e3_514e

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
    add b
    add b
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
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    ld bc, $fe01
    cp $01
    ld bc, $fffd
    ld bc, $f901
    rst $38
    rlca
    ld b, $f2
    cp $1e
    rra
    rra
    rst $38
    cpl
    ccf
    rst $38
    rst $38
    ld l, h
    ld a, a
    rra
    rst $38
    ld h, b
    ld a, a
    rrca
    rst $38
    ld h, e
    ld a, a
    adc $ff
    ld h, c
    ld a, a
    rrca
    rst $38
    ld h, c
    ld a, a
    rrca
    rst $38
    ld hl, $073f
    rst $38
    jr nz, jr_0e3_5281

    ld bc, $3fff
    ccf
    rst $38
    rst $38
    jr nz, @+$41

    ld bc, $20ff
    ccf
    ld bc, $20ff
    ccf
    ld bc, $1fff
    rra
    rst $38
    rst $38
    jr nz, jr_0e3_5299

    ld bc, $20ff
    ccf
    ld bc, $20ff
    ccf
    ld bc, $10ff
    rra
    inc bc
    rst $38
    rrca
    rrca
    add e
    rst $38
    ld [$030f], sp
    rst $38
    ld [$050f], sp
    rst $38
    inc c
    rrca
    dec b
    rst $38
    ld [$050f], sp
    rst $38
    ld [$090f], sp
    rst $38
    rrca

jr_0e3_5281:
    rrca
    adc a
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    ld [$f80f], sp
    rst $38
    ld [$080f], sp
    rst $38
    db $10
    rra
    ld [$10ff], sp
    rra
    ld [$10ff], sp

jr_0e3_5299:
    rra
    ld [$10ff], sp
    rra
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    rlca
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $28
    rst $28
    rlca
    rlca
    sbc $de
    rlca
    rlca
    cp $fe
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
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
    rra
    rra
    ldh [$e0], a
    dec de
    rla
    ret nc

    ldh a, [$f8]
    rst $30
    db $10
    ldh a, [$b7]
    rst $08
    ldh [$e0], a
    ld c, [hl]
    di
    add b
    add b
    cp [hl]
    ld b, e
    add b
    add b
    ld a, a
    rst $00
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ldh a, [$f0]
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
    add b
    add b
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
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    ei
    db $ec
    ld b, $07
    db $e3
    rst $38
    dec c
    rrca
    rst $08
    rst $38
    add hl, de
    rra
    sbc a
    rst $38
    jr c, jr_0e3_53e5

    dec a
    rst $38
    ld [hl], $3f
    ld a, [hl-]
    db $fd
    ld a, b
    ld a, a
    dec e
    rst $38
    ld c, b
    ld a, a
    rrca
    rst $38
    ld c, b
    ld a, a
    ld b, $ff
    ld b, a
    ld a, a
    cp $ff
    ld a, b
    ld a, a
    nop
    rst $38
    ld b, b
    ld a, a
    ld bc, $40ff
    ld a, a
    ld bc, $20ff
    ccf
    ld bc, $20ff
    ccf
    ld bc, $20ff
    ccf
    rra
    rst $38
    rra
    rra
    pop hl
    rst $38
    jr nz, jr_0e3_5419

    ld bc, $20ff
    ccf
    ld bc, $20ff
    ccf
    ld bc, $10ff

jr_0e3_53e5:
    rra
    inc bc
    rst $38
    rrca
    rrca
    add e
    rst $38
    ld [$030f], sp
    rst $38
    ld [$050f], sp
    rst $38
    ld [$050f], sp
    rst $38
    ld [$050f], sp
    rst $38
    ld [$090f], sp
    rst $38
    rrca
    rrca
    adc a
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    ld [$f80f], sp
    rst $38
    ld [$080f], sp
    rst $38
    db $10
    rra
    ld [$10ff], sp
    rra
    ld [$10ff], sp

jr_0e3_5419:
    rra
    ld [$10ff], sp
    rra
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    rlca
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $28
    rst $28
    rlca
    rlca
    sbc $de
    rlca
    rlca
    cp $fe
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
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
    add b
    add b
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
    ret nz

    ld b, b
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
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld c, c
    cp c
    add b
    add b
    add [hl]
    ld a, a
    ld b, b
    ret nz

    db $f4
    rrca
    and b
    ldh [$37], a
    rst $08
    ld h, b
    and b
    ld c, $fd
    sub b
    ldh a, [$7d]
    sbc [hl]
    ret nc

    ldh a, [$cf]
    rst $38
    ret c

    xor b
    ccf
    ccf
    ret c

    add sp, $03
    inc bc
    jr nc, jr_0e3_54c4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0e3_54c4:
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
    add b
    add b
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
    inc bc
    inc bc
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
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld a, [$00fd]
    nop
    db $fd
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    or [hl]
    rst $08
    nop
    nop
    cp $c7
    nop
    nop
    ret


    rst $30
    nop
    nop
    ld a, h
    ld h, e
    nop
    nop
    ld c, [hl]
    ld [hl], c
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld b, [hl]
    ld a, l
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, c
    ld a, [hl]
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e3_55af

    nop
    nop
    jr nz, jr_0e3_55b3

    nop
    nop
    jr nz, jr_0e3_55b7

    nop
    nop
    jr nz, jr_0e3_55bb

    nop
    nop
    jr nz, jr_0e3_55bf

    nop
    nop
    ld a, $3f
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
    ld hl, $003f
    nop
    jr nz, jr_0e3_55d3

    nop
    nop
    jr nz, jr_0e3_55d7

    nop
    nop
    jr nz, jr_0e3_55db

    nop
    nop
    jr nz, jr_0e3_55df

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld de, $001f
    nop
    rrca
    rrca
    nop
    nop
    rrca

jr_0e3_55af:
    rrca
    nop
    nop
    rrca

jr_0e3_55b3:
    rrca
    nop
    nop
    rra

jr_0e3_55b7:
    rra
    nop
    nop
    rra

jr_0e3_55bb:
    rra
    nop
    nop
    rra

jr_0e3_55bf:
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
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop

jr_0e3_55d3:
    nop
    cp $fe
    nop

jr_0e3_55d7:
    nop
    or $fa
    nop

jr_0e3_55db:
    nop
    cp $e6
    nop

jr_0e3_55df:
    nop
    ld l, $f2
    ldh a, [$f0]
    rst $38
    ei
    cp b
    ld c, b
    ccf
    rst $38
    ld e, h
    db $e4
    sbc d
    cp $e4
    db $fc
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld a, b
    ld hl, sp-$80
    rst $38
    ldh a, [rNR10]
    ld bc, $d0fe
    jr nc, @+$03

    cp $e0
    jr nz, jr_0e3_5608

    db $fc
    and b
    ld h, b

jr_0e3_5608:
    jp Jump_0e3_40fc


    ret nz

    inc a
    rst $38

jr_0e3_560e:
    add b
    add b
    rra
    rst $38
    nop
    nop
    jr jr_0e3_560e

    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    ld hl, sp-$48
    nop
    nop
    ret z

    jr c, jr_0e3_5623

jr_0e3_5623:
    nop
    adc b
    ld a, b
    nop
    nop
    and h
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ldh a, [rIE]
    ld b, b
    ret nz

    or e
    cp a
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    adc a
    rst $38
    add b
    add b
    add e
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
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
    inc bc
    inc bc
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
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld a, [$00fd]
    nop
    db $fd
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    or [hl]
    rst $08
    nop
    nop
    cp $c7
    nop
    nop
    ret


    rst $30
    nop
    nop
    ld a, h
    ld h, e
    nop
    nop
    ld l, [hl]
    ld [hl], c
    nop
    nop
    ld l, a
    ld a, a
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld h, [hl]
    ld a, l
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld h, c
    ld a, [hl]
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e3_572b

    nop
    nop
    jr nz, jr_0e3_572f

    nop
    nop
    jr nz, jr_0e3_5733

    nop
    nop
    jr nz, jr_0e3_5737

    nop
    nop
    jr nz, jr_0e3_573b

    nop
    nop
    ld a, $3f
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
    ld hl, $003f
    nop
    jr nz, jr_0e3_574f

    nop
    nop
    jr nz, jr_0e3_5753

    nop
    nop
    jr nz, jr_0e3_5757

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e3_575f

    nop
    nop
    jr nz, jr_0e3_5763

    nop
    nop
    ld de, $001f
    nop
    rrca

jr_0e3_572b:
    rrca
    nop
    nop
    rrca

jr_0e3_572f:
    rrca
    nop
    nop
    rrca

jr_0e3_5733:
    rrca
    nop
    nop
    rra

jr_0e3_5737:
    rra
    nop
    nop
    rra

jr_0e3_573b:
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop

jr_0e3_574f:
    nop
    or $fa
    nop

jr_0e3_5753:
    nop
    cp $e6
    nop

jr_0e3_5757:
    nop
    ld l, $f2
    ldh a, [$f0]
    rst $38
    ei
    cp b

jr_0e3_575f:
    ld c, b
    ccf
    rst $38
    ld e, h

jr_0e3_5763:
    db $e4
    sbc d
    cp $e4
    db $fc
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld a, b
    ld hl, sp-$80
    rst $38
    ldh a, [rNR10]
    ld bc, $d0fe
    jr nc, @+$03

    cp $e0
    jr nz, jr_0e3_5780

    db $fc
    and b
    ld h, b

jr_0e3_5780:
    jp Jump_0e3_40fc


    ret nz

    inc a
    rst $38

jr_0e3_5786:
    add b
    add b
    rra
    rst $38
    nop
    nop
    jr jr_0e3_5786

    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    ld hl, sp-$48
    nop
    nop
    ret z

    jr c, jr_0e3_579b

jr_0e3_579b:
    nop
    adc b
    ld a, b
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    add h
    db $fc
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
    sbc [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    sbc [hl]
    cp $00
    nop
    add d
    cp $00
    nop
    add d
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
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    sub b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    ccf
    ccf
    ret nc

    ldh a, [$3f]
    ccf
    ldh a, [$90]
    ccf
    ccf
    cp b
    ret z

    rra
    rra
    ret c

    add sp, $1f
    rra
    db $ec
    db $fc
    jr c, jr_0e3_5871

    ld a, [hl]
    cp $7f
    ld a, a
    rst $18
    rst $38
    or c
    rst $38
    cp a
    rst $38
    add b
    rst $38
    ld a, e
    rst $38
    add b
    rst $38
    ld [hl], l
    ei
    sbc [hl]
    rst $38
    ld a, e
    rst $38
    adc b
    rst $38
    ccf
    cp $48
    ld a, a
    dec a
    cp $43
    ld a, a
    rst $30
    ld hl, sp+$3c
    ccf
    rra
    ldh a, [rNR23]
    rra
    rra
    ld hl, sp+$04
    rlca
    inc e
    rst $38
    inc b
    rlca
    rrca
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    ld [bc], a

jr_0e3_5871:
    inc bc
    nop
    rst $38
    ld bc, $c001
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
    adc a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    adc a
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0401
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    inc b
    rlca
    ld [$04ff], sp
    rlca
    ld [$02ff], sp
    inc bc
    db $10
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $28
    rst $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0e3_5904

    nop
    nop
    ld l, h
    ld [hl], h
    ld bc, $bc01
    call z, $0706
    ld [hl], b
    or b
    sbc c
    sbc [hl]

jr_0e3_58fa:
    ld b, b
    ret nz

    rst $28
    db $f4
    and b
    ld h, b
    or [hl]
    rst $08
    ret nz

    ret nz

jr_0e3_5904:
    rst $08
    or a

jr_0e3_5906:
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr z, @-$06

    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    jr nz, jr_0e3_58fa

    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0e3_5906

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    cp b
    ld hl, sp+$00
    nop
    ld hl, sp-$08

jr_0e3_5942:
    nop
    nop
    ld hl, sp-$08

jr_0e3_5946:
    nop
    nop
    jr c, jr_0e3_5942

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr nz, jr_0e3_5946

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fd
    cp $00
    nop
    rst $38
    ld sp, hl
    nop
    nop
    ei
    db $fc
    nop
    nop
    rst $38
    cp $07
    rlca
    add a
    rst $38
    dec bc
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld b, $ff
    ld [$000f], sp
    rst $38
    ld [$f00f], sp
    rst $38
    ld [$410f], sp
    rst $38
    ld [$410f], sp
    cp $08
    rrca
    ld b, e
    db $fc
    ld [$030f], sp
    db $fc
    rrca
    rrca
    rst $38
    db $fc
    inc c
    rrca
    nop
    rst $38
    inc c
    rrca
    ld bc, $0cfe
    rrca
    nop
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    inc c
    rrca
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    rlca
    rlca
    nop
    rst $38
    inc bc
    inc bc
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $1f01
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $1e01
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld [$04ff], sp
    rlca
    ld [$08ff], sp
    rrca
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    inc b
    rlca
    jr nz, @+$01

    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    sbc $de
    rlca
    rlca
    cp $fe
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    or $fe
    nop
    nop
    ld [$00f6], a
    nop
    rst $30
    rst $38
    ld hl, sp-$08
    rst $18
    ccf
    db $fc
    db $fc
    add sp, $1f
    ld a, h
    call nz, $2fdf
    call nz, $b5fc
    ld c, a
    ld hl, sp-$08
    ld a, l
    adc a
    add b
    add b
    rst $08
    ccf

jr_0e3_5a9a:
    nop
    nop
    cp $fe
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
    ret nz

    ret nz

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
    jr nz, jr_0e3_5a9a

jr_0e3_5aba:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$f0]

jr_0e3_5ac2:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
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
    jr nz, jr_0e3_5aba

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0e3_5ac2

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
    add b
    add b
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
    ld a, $3b
    nop
    nop
    ld hl, sp-$01
    inc bc
    inc bc
    di
    rst $38
    rlca
    rlca
    ld h, a
    rst $38
    ld c, $0f
    rlca
    rst $38
    ld c, $0f
    adc a
    rst $38
    dec e
    rra
    ld c, $f1
    ld e, $1f
    rra
    ldh [rNR12], a
    rra
    ld e, $e1
    ld [de], a
    rra
    db $fd
    ld [c], a
    ld de, $0f1f
    ldh a, [rNR34]
    rra
    inc bc
    db $fc
    db $10
    rra
    nop
    rst $38
    db $10
    rra
    nop
    rst $38
    ld [$000f], sp
    rst $38
    ld [$000f], sp
    rst $38
    ld [$ff0f], sp
    rst $38
    rrca
    rrca
    nop
    rst $38
    ld [$000f], sp
    rst $38
    ld [$000f], sp
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc bc
    inc bc
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $1f01
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $1e01
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld [$04ff], sp
    rlca
    ld [$08ff], sp
    rrca
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    inc b
    rlca
    jr nz, @+$01

    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    sbc $de
    rlca
    rlca
    cp $fe
    rrca
    rrca

jr_0e3_5bb6:
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
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
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ret nc

    jr nc, jr_0e3_5be3

jr_0e3_5be3:
    nop
    jr nc, jr_0e3_5bb6

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    or b
    ret nc

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    xor h
    ld a, h
    nop
    nop
    cp d
    ld a, [hl]
    nop
    nop
    ld [hl], l
    rst $28
    nop
    nop
    rst $28
    or $80
    add b
    rst $38
    cp $e0
    ld h, b
    rst $38
    sbc h

jr_0e3_5c1a:
    or b
    ret nc

    adc a
    rst $38
    ret c

    add sp, -$10
    ldh a, [$3c]
    inc [hl]
    ret nz

    ret nz

    ld c, $0a
    ret nz

    ret nz

    inc b
    inc b
    ret nz

    ret nz

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
    jr nz, jr_0e3_5c1a

jr_0e3_5c3a:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$f0]

jr_0e3_5c42:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
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
    jr nz, jr_0e3_5c3a

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0e3_5c42

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
    add b
    add b
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ldh a, [rIE]
    ld bc, $7f01
    rst $38
    inc bc
    inc bc
    ld h, b
    rst $38
    rlca
    rlca
    nop
    rst $38
    rlca
    rlca
    ld e, $ff
    rlca
    rlca
    ld [$07ff], sp
    rlca
    ld [$03ff], sp
    inc bc
    adc b
    rst $38
    ld [bc], a
    inc bc
    add b
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    add b
    rst $38
    ld [bc], a
    inc bc
    add b
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld [bc], a
    inc bc
    rst $38
    ld a, a
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    ld [bc], a
    ret nz

    rst $38
    rlca
    rlca
    and a
    ld a, a
    rrca
    rrca
    add hl, sp
    rst $38
    add hl, bc
    rrca
    rst $08
    rst $38
    add hl, bc
    rrca
    adc h
    rst $38
    rrca
    rrca
    cp h
    rst $38
    inc de
    rra
    sbc h
    rst $38
    rra
    rra
    db $fc
    rst $38
    inc de
    rra
    jr @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    or b
    ret nc

    nop
    nop
    ldh a, [$30]
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    cp $fe
    nop
    nop
    rst $08
    rst $38
    nop
    nop
    ld e, $ff
    add b
    add b
    dec e
    cp $40
    ret nz

    ld a, $ff
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    jr nz, @+$01

    add b
    add b
    daa
    ld hl, sp-$80
    add b
    rst $20
    ld hl, sp-$80
    add b
    ld [hl+], a
    db $fd
    add b
    add b
    daa
    ld sp, hl
    nop
    nop
    daa
    ld sp, hl
    nop
    nop
    rst $20
    ld sp, hl
    nop
    nop
    rra
    db $fd
    nop
    nop
    rra
    rst $38
    nop
    nop
    dec e
    rst $38
    nop
    nop
    rra
    rst $28
    nop
    nop
    adc l
    di
    nop
    nop
    ld b, $fe
    nop
    nop
    call nz, Call_000_00fc
    nop
    inc h
    db $fc
    nop
    nop
    inc d
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
    inc e
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    rlca
    rlca
    nop
    nop
    rra
    rra
    nop
    nop
    dec sp
    ccf
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    add sp, -$01
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    sub b
    rst $38
    nop
    nop
    sub a
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    ldh a, [rIE]
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
    jr nz, jr_0e3_5eb3

    nop
    nop
    inc e
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e3_5edb

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
    ld hl, $003f
    nop
    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf

jr_0e3_5eb3:
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
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b

jr_0e3_5edb:
    add b
    cp $ff
    add b
    add b
    or $d9
    add b
    add b
    pop bc
    cp $80
    add b
    sbc [hl]
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    ld a, l
    rst $38
    add b
    add b
    ld a, [$80fd]
    add b
    or l
    rst $08
    add b
    add b
    ei
    rlca
    add b
    add b
    rst $28
    inc de
    nop
    nop
    xor $12
    nop
    nop
    ld [hl], d
    adc [hl]
    nop
    nop
    dec c
    di
    nop
    nop
    ccf
    pop bc
    nop
    nop
    dec e
    db $e3
    add b
    add b
    ld c, $ff
    ldh [$e0], a
    ld b, $ff
    ret nc

    ld [hl], b
    rst $38
    rst $38
    ld [hl], b
    ret nc

    rlca
    rst $38
    ldh a, [$d0]
    ld b, $ff
    ret nc

    jr nc, jr_0e3_5f34

    rst $38
    ldh [$e0], a
    ld b, $fe
    nop
    nop

jr_0e3_5f34:
    ld a, [bc]
    cp $00
    nop
    add hl, bc
    rst $38
    nop
    nop
    dec bc
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    di
    rst $38
    add b
    add b
    ldh a, [rIE]
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, c
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
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
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
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    or b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
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
    jr nz, jr_0e3_6033

    nop
    nop
    inc e
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e3_605b

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
    ld hl, $003f
    nop
    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf

jr_0e3_6033:
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
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop

jr_0e3_605b:
    nop
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp [hl]
    adc $00
    nop
    rst $38
    jp hl


    nop
    nop
    ld [hl], c
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    ld h, a
    rst $38
    ldh [$a0], a
    rrca
    rst $38
    ldh a, [$d0]
    rrca
    rst $38
    or b
    ret nc

    rra
    rst $38
    ld [hl], b
    sub b
    dec e
    db $e3
    ldh a, [$d0]
    ld a, $c1
    or b
    ret nc

    dec a
    jp $90f0


    ei
    call nz, $f0f0
    rlca
    ld hl, sp+$58
    ld hl, sp+$1c
    db $e3
    ret c

    ld hl, sp+$0f
    rst $38
    ldh a, [$f0]
    cp $fe
    ldh [$e0], a
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    add hl, bc
    rst $38
    nop
    nop
    dec bc
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    di
    rst $38
    add b
    add b
    ldh a, [rIE]
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, c
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
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
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
    cp $fe
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
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    or b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
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
    ld a, a
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
    ld h, b
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop
    jr nz, jr_0e3_61af

    nop
    nop
    jr nz, jr_0e3_61b3

    nop
    nop
    jr nz, jr_0e3_61b7

    nop
    nop
    jr nz, jr_0e3_61bb

    nop
    nop
    jr nz, jr_0e3_61bf

    nop
    nop
    ld a, $3f
    nop
    nop
    daa
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    jr nz, jr_0e3_61cf

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
    jr nz, jr_0e3_61e3

    nop
    nop
    inc e
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra

jr_0e3_61af:
    rra
    nop
    nop
    rra

jr_0e3_61b3:
    rra
    nop
    nop
    ccf

jr_0e3_61b7:
    ccf
    nop
    nop
    ccf

jr_0e3_61bb:
    ccf
    nop
    nop
    ccf

jr_0e3_61bf:
    ccf
    nop
    nop
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

jr_0e3_61cf:
    nop
    ret c

    add sp, $00
    nop
    ld hl, sp-$68
    nop
    nop
    cp [hl]
    adc $00
    nop
    rst $38
    jp hl


    nop
    nop
    ld [hl], c
    rst $38
    add b

jr_0e3_61e3:
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    ld h, a
    rst $38
    ldh [$a0], a
    rrca
    rst $38
    ldh a, [$d0]
    rrca
    rst $38
    or b
    ret nc

    rra
    rst $38
    ld [hl], b
    sub b
    dec e
    db $e3
    ldh a, [$d0]
    ld a, $c1
    or b
    ret nc

    dec a
    jp $90f0


    ei
    call nz, $f0f0
    rlca
    ld hl, sp+$58
    ld hl, sp+$1c
    db $e3
    ret c

    ld hl, sp+$0f
    rst $38
    ldh a, [$f0]
    db $fc
    db $fc
    ldh [$e0], a
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
    inc d
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    ld a, $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [c], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld a, h
    db $fc
    nop
    nop
    cp h
    cp h
    nop
    nop
    ld a, b
    ld a, b
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
    ld e, $1e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    db $fd
    cp $00
    nop
    rst $38
    cp $03
    inc bc
    db $fc
    rst $38
    rra
    rra
    adc a
    rst $38
    dec a
    ccf
    ldh a, [rIE]
    ld a, c
    ld a, a
    adc [hl]
    rst $38
    ld hl, sp-$01
    jr c, @+$01

    ld hl, sp-$01
    ld [$f8ff], sp
    rst $38
    ld [$80ff], sp
    rst $38
    nop
    rst $38
    adc h
    rst $30
    rrca
    rst $38
    sbc a
    rst $20
    ldh a, [rIE]
    add hl, de
    jp hl


    nop
    rst $38
    add hl, sp
    ret


    nop
    rst $38
    add hl, sp
    ret


    nop
    rst $38
    add hl, sp
    ret


    rst $38
    rst $38
    ld a, [hl-]
    rlc b
    rst $38
    ld a, [$00fb]
    rst $38
    ld a, [$00fb]
    rst $38
    db $fd
    push hl
    nop
    rst $38
    ld [hl], h
    db $fc
    ld hl, sp-$01
    cp b
    ret z

    add b
    rst $38
    ld [hl], b
    ld [hl], b
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
    ld hl, sp-$01
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
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, l
    ld a, l
    nop
    nop
    ld a, a
    ld a, a
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
    inc e
    inc d
    nop
    nop
    inc e
    inc d
    nop
    nop
    inc l
    inc [hl]
    nop
    nop
    inc a
    inc h
    nop
    nop
    inc a
    inc h
    add b
    add b
    ld e, h
    ld a, h
    add b
    add b
    ld a, h
    ld a, h
    rst $38
    rst $38
    xor h
    call c, $fff7
    db $ec
    inc e
    adc $ff
    adc b
    ld hl, sp-$33
    cp $10
    ldh a, [$0e]
    rst $38
    and b
    ldh [rIF], a
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
    inc b
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ldh a, [$f0]

jr_0e3_6396:
    nop
    nop
    jr nc, @-$0e

jr_0e3_639a:
    nop
    nop
    jr nc, @-$0e

jr_0e3_639e:
    nop
    nop
    jr nc, @-$0e

    nop
    nop
    jr nc, jr_0e3_6396

    nop
    nop
    jr nc, jr_0e3_639a

    nop
    nop
    jr nc, jr_0e3_639e

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    dec e
    dec e
    jp c, Jump_000_3fff

    ccf
    cp l
    rst $38
    ld l, a
    ld a, a
    or d
    rst $38
    ld a, a
    ld [hl], e
    add b
    rst $38
    ld a, e
    ld b, a
    dec c
    rst $38
    ld b, c
    ld a, a
    ld [bc], a
    rst $38
    ld b, e
    ld a, a
    ld [bc], a
    rst $38
    dec a
    dec a
    ret nz

    rst $38
    inc bc
    inc bc
    jr nc, @+$01

    inc bc
    inc bc
    ld c, $ff
    inc bc
    inc bc
    ld bc, $01ff
    ld bc, $ffc0
    ld [bc], a
    inc bc
    jr nc, @+$01

    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    nop
    rst $38
    ld bc, $0001
    rst $38
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
    jr nz, jr_0e3_64c7

    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld [$01ff], sp
    ld bc, $ffff
    inc bc
    inc bc
    rst $28
    rst $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e3_64c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    or $fe
    nop
    nop
    ld a, d
    or $00
    nop
    adc h
    db $fc
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    add hl, de
    rst $38
    add b
    add b
    add e
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    and b
    ldh [$03], a
    rst $38
    ld h, b
    and b
    inc bc
    rst $38
    and b
    ldh [rTAC], a
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    and b
    ldh [$98], a
    rst $38
    ld h, b
    and b
    ld a, b
    rst $38
    and b
    ld h, b
    inc [hl]
    rst $30
    ld h, b
    and b
    inc [hl]
    rst $30
    and b
    ld h, b
    jp nc, Jump_0e3_70f3

    or b
    dec bc
    ei
    ldh a, [$f0]
    ld b, l
    db $fd
    ldh a, [$f0]
    ld b, d
    cp $f0
    ldh a, [rSCY]
    cp $d0
    or b
    ld a, [hl]
    cp $b0
    ret nc

    cp $fe
    or b
    ret nc

    sbc [hl]
    cp $b0
    ret nc

    add h
    db $fc
    ld [hl], b
    ld d, b
    inc b
    db $fc
    jr nz, jr_0e3_6578

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
    add b
    add b
    nop
    nop

jr_0e3_6578:
    ret nz

    ret nz

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
    ld a, a
    ld a, a
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
    db $fd
    cp $00
    nop
    rst $38
    ld sp, hl
    nop
    nop
    ei
    db $fc
    inc bc
    inc bc
    db $fd
    cp $05
    rlca
    add a
    rst $38
    dec de
    rra
    rst $38
    rst $38
    dec sp
    ccf
    pop hl
    rst $38
    ld a, e
    ld a, a
    inc e
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ld hl, sp-$01
    db $10
    rst $38
    ld hl, sp-$01
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    adc h
    rst $30
    rra
    rst $38
    sbc a
    rst $20
    ldh [rIE], a
    ld a, [de]
    db $eb
    nop
    rst $38
    ld a, [hl-]
    rlc b
    rst $38
    ld a, [hl-]
    rlc b
    rst $38
    dec sp
    set 7, a
    rst $38
    ld a, $cf
    nop
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $20
    nop
    rst $38
    ld [hl], l
    db $fd
    ldh a, [rIE]
    cp c
    ret


    nop
    rst $38
    ld [hl], c
    ld [hl], c
    nop
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $f101
    rst $38
    ld bc, $3f01
    rst $38
    ld bc, $1f01
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld a, l
    ld a, l
    nop
    nop
    ei
    ei
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
    ldh a, [$f0]
    nop
    nop
    ld a, a

jr_0e3_6665:
    rst $38
    nop
    nop
    scf
    db $fc

jr_0e3_666a:
    rst $38
    rst $38
    jr z, jr_0e3_6665

jr_0e3_666e:
    rst $38
    jr nc, jr_0e3_66a8

    db $fc

jr_0e3_6672:
    rst $28
    ld e, c

jr_0e3_6674:
    ccf
    db $fc
    xor $5e
    rra
    db $fc
    jr c, jr_0e3_6674

    rra
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0e3_666a

    nop
    nop
    jr nz, jr_0e3_666e

    nop
    nop
    jr nz, jr_0e3_6672

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
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop

jr_0e3_66a8:
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    jr nc, @-$0e

    nop
    nop
    ldh a, [$f0]
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
    ld [$00f8], sp
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    ld bc, $0001
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
    rrca
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    db $76
    ld a, a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jp hl


    rst $38
    ld bc, $d101
    rst $38
    ld bc, $e101
    cp $01
    ld bc, $fe21
    ld bc, $2f01
    cp $01
    ld bc, $ff12
    ld bc, $e101
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
    add b
    rst $38
    nop
    nop
    rst $38
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
    ld b, b
    ld a, a
    nop
    nop
    jr c, jr_0e3_6937

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
    ld de, $001f
    nop
    rra
    rra
    nop
    nop
    ld de, $001f
    nop
    jr nz, jr_0e3_6953

    nop
    nop
    jr nz, jr_0e3_6957

    nop
    nop
    ld b, b
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
    ld b, d
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, l
    ld a, l
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38

jr_0e3_6937:
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
    nop
    nop
    nop
    nop
    nop
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

jr_0e3_6953:
    nop
    cp $fe
    nop

jr_0e3_6957:
    nop
    rst $38
    rst $38
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    db $ed
    or e
    nop
    nop
    add e
    db $fd
    nop
    nop
    dec a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld b, b
    ld b, b
    ei
    rst $38
    ldh [$a0], a
    push af
    ei
    ldh a, [$90]
    ld l, e
    sbc a
    ldh a, [$90]
    rst $30
    ld c, $70
    sub b
    rst $18
    daa
    ldh a, [$90]
    rst $18
    daa
    ldh a, [$90]
    dec de
    rst $20
    ldh a, [$90]
    ld bc, $f8ff
    add sp, -$3d
    rst $38
    db $fc
    db $f4
    dec sp
    rst $38
    db $fc
    sub h
    rrca
    rst $38
    sbc b
    ld hl, sp+$0d
    db $fd
    ldh a, [$f0]
    db $fc
    db $fc
    ldh [$e0], a
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
    inc d
    db $fc
    nop
    nop
    ld [de], a
    cp $00
    nop
    rla
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    ld b, c
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
    ldh [$e0], a
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
    nop
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
    dec de
    dec d
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld [hl], l
    ld a, d
    nop
    nop
    di
    db $fc
    ld bc, $bd01
    cp $07
    rlca
    cp $ff
    rrca
    rrca
    add d
    rst $38
    rra
    rra
    cp $ff
    rra
    rra
    nop
    rst $38
    dec e
    rra
    ld hl, sp-$01
    inc c
    rrca
    ld b, b
    rst $38
    inc c
    rrca
    ld b, b
    rst $38
    ld b, $07
    jr nz, @+$01

    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    db $10
    rst $38
    ld bc, $9001
    rst $38
    ld bc, $9001
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $2001
    rst $38
    ld bc, $1f01
    rst $38
    ld bc, $0401
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add c
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
    ld a, a
    ld a, a
    nop
    nop
    ld b, a
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
    cp l
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    dec a
    dec a
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
    daa
    ccf
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
    dec de
    dec d
    nop
    nop
    adc a
    adc a
    add b
    add b
    adc e
    adc a
    add b
    add b

jr_0e3_6ad8:
    adc e
    adc [hl]
    add b
    add b
    ld c, [hl]
    rst $08
    add b
    add b
    rst $00
    ld b, a
    add b
    add b
    bit 1, h
    ld b, b
    ret nz

    ld c, e
    call z, $c040
    rst $30
    ld hl, sp-$60
    ld h, b
    ld a, a
    ld hl, sp-$60
    ld h, b
    rst $30
    db $fc
    jr nz, jr_0e3_6ad8

    ld [$40f5], a
    ret nz

    db $f4
    rst $38
    add b
    add b
    rst $38
    rst $38

jr_0e3_6b02:
    nop
    nop
    ld a, h
    db $fc

jr_0e3_6b06:
    nop
    nop
    jr jr_0e3_6b02

jr_0e3_6b0a:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0e3_6b02

    nop
    nop
    jr nc, jr_0e3_6b06

    nop
    nop
    jr nc, jr_0e3_6b0a

    nop
    nop
    ldh a, [$f0]
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
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    sbc [hl]
    cp $00
    nop
    add d
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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add sp, -$08
    nop
    nop
    ldh a, [$f0]
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
    sbc h
    db $fc
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
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
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e3_6da7

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
    db $10
    rra
    nop
    nop
    db $10
    rra
    jr jr_0e3_6d92

    ld a, h
    ld a, a
    daa
    ccf
    add a
    rst $38
    daa
    ccf
    jp $27ff


    ccf
    pop bc
    rst $38
    rla
    rra
    ret nz

    rst $38
    daa
    ccf
    add c
    rst $38
    daa
    ccf

jr_0e3_6d92:
    ld a, l
    ld a, a
    ld h, $3e
    inc bc
    inc bc
    ld h, $3e
    ld bc, $1401
    inc e
    ld bc, $0801
    ld [$0000], sp
    nop
    nop
    nop

jr_0e3_6da7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0e3_6dd0:
    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a

jr_0e3_6dd8:
    ccf
    ccf
    ld h, b
    and b
    ccf
    ld a, $e0
    ld h, b
    cp $ff
    ldh a, [$30]
    rst $38
    rst $38
    ret c

    ld hl, sp+$01
    rst $38
    or h
    db $fc
    ld [$6cff], sp
    db $f4
    jr nc, @+$01

    db $f4
    db $fc
    db $10
    rst $38
    db $fc
    db $fc
    db $10
    rst $38
    ld a, h
    sbc h
    db $10
    rst $38
    db $f4
    inc c
    ldh [rIE], a
    db $ec
    inc d
    ld e, $ff
    jr c, jr_0e3_6dd0

    nop
    rst $38
    ldh a, [rNR10]
    nop
    rst $38
    ldh a, [rNR10]
    inc bc
    cp $e0
    jr nz, jr_0e3_6dd8

    rst $38
    ldh [$a0], a
    ccf
    rst $38
    ldh [$e0], a
    ld bc, $a0ff
    ldh [rSB], a
    rst $38
    ldh [$e0], a
    ld bc, $a0fe
    ld h, b
    ld bc, $c0ff
    ret nz

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
    ld [bc], a
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    sbc [hl]
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
    ld a, b
    ld a, b
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
    ld a, h
    ld a, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $1f
    nop
    nop
    jr c, jr_0e3_6eeb

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ldh [$bf], a
    nop
    nop
    ldh [$bf], a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    cp $ff
    ld bc, $0101
    rst $38
    ld bc, $0001
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

jr_0e3_6eeb:
    ld a, a
    nop
    nop
    jr nz, jr_0e3_6f2f

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
    jr nc, jr_0e3_6f3b

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    sbc a
    rst $38
    ld bc, $1f01
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld bc, $f001
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    rlca
    rlca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    ld de, $e01f
    rst $38
    inc c
    rrca
    ld h, b
    rst $38
    inc bc
    inc bc
    inc e
    rst $38
    nop
    nop
    rst $18
    rst $38
    nop
    nop
    ccf

jr_0e3_6f2f:
    ccf
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

jr_0e3_6f3b:
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
    db $fd
    cp $80
    add b
    rst $38
    ld sp, hl
    add b
    add b
    ei
    db $fc
    add b
    add b
    rst $38
    cp $80
    add b
    ld bc, $c0ff
    ret nz

    db $e3
    rst $38
    ldh [$e0], a
    ld b, e
    rst $38
    and b
    ldh [$87], a
    rst $38
    ld h, b
    and b
    add a
    rst $38
    and b
    ldh [$03], a
    db $fc
    ldh [$e0], a
    inc bc
    db $fc
    and b
    ld h, b
    rst $30
    ld hl, sp-$60
    ld h, b
    rlca
    ld hl, sp-$60
    ld h, b
    ld b, $f9
    and b
    ld h, b
    dec de
    db $fc

jr_0e3_6f8e:
    ldh [rNR41], a
    dec e
    cp $f0
    ldh a, [$f5]
    rst $30

jr_0e3_6f96:
    sub b
    ldh a, [$33]
    di

jr_0e3_6f9a:
    sbc b
    add sp, $31
    pop af

jr_0e3_6f9e:
    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    sub b
    db $10
    ldh a, [$60]
    ld h, b
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0e3_6f8e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0e3_6f96

    nop
    nop
    jr nz, jr_0e3_6f9a

    nop
    nop
    jr nz, jr_0e3_6f9e

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, @-$1e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    nop
    inc e
    rra
    nop
    nop
    jr @+$21

    nop
    nop
    jr c, jr_0e3_706f

    nop
    nop
    ld e, b
    ld l, a
    nop
    nop
    ld e, b
    ld l, a
    nop
    nop
    ld e, a
    ld l, a
    nop
    nop
    cp b
    rst $08
    nop
    nop
    or b
    rst $18
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0e3_708b

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
    ld [hl], b
    ld a, a
    nop
    nop
    jr z, jr_0e3_70a7

    nop
    nop
    inc d
    rra
    nop
    nop
    inc c

jr_0e3_706f:
    rrca
    nop
    nop
    jr jr_0e3_7093

    nop
    nop
    jr jr_0e3_7097

    nop
    nop
    ld a, $3f
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    add a
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0001

jr_0e3_708b:
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    pop bc

jr_0e3_7093:
    rst $38
    ld bc, $e201

jr_0e3_7097:
    cp $07
    rlca
    db $e4
    db $fc
    rrca
    rrca
    ret c

    ret c

jr_0e3_70a0:
    ld de, $c01f
    ret nz

    ld [$e00f], sp

jr_0e3_70a7:
    ldh [rDIV], a
    rlca
    ld h, b
    ldh [rSC], a
    inc bc
    jr nc, jr_0e3_70a0

    ld bc, $1001
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
    ccf
    ccf
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, [hl]
    ld a, a
    ret nz

    ld b, b
    ld a, a
    ld a, h
    ret nz

    ret nz

    ld a, l
    ld a, [hl]
    ret nz

    ld b, b
    rst $38
    rst $38
    ldh a, [rSVBK]
    jp Jump_0e3_78ff


    ld hl, sp-$7a
    rst $38
    ld a, h
    db $fc
    jr c, @+$01

    db $ec
    db $fc
    db $10
    rst $38
    call nc, Call_000_20ec
    rst $38
    db $ec
    db $fc
    ld hl, $fcff

Jump_0e3_70f3:
    db $fc
    ld bc, $f4ff
    inc c
    ld sp, hl
    rst $38
    ld [hl], h
    adc h
    rlca
    rst $38
    db $f4
    inc c
    ld bc, $68ff
    sbc b
    inc bc
    rst $38
    ld [hl], h
    adc h
    inc bc
    rst $38
    ld a, h
    adc h
    and $fe
    sbc [hl]
    cp $1e
    cp $7b
    ld a, a
    inc b
    db $fc
    scf
    dec a
    inc b
    db $fc
    ld e, $1a
    inc b
    db $fc
    inc c
    inc c
    inc b
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld e, $fe
    nop
    nop
    ld a, $fe
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    add c
    rst $38
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
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0e3_7196

    nop
    nop
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
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

jr_0e3_7196:
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
    dec e
    rra
    nop
    nop
    dec sp
    ccf
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    cp b
    rst $08
    ld bc, $7f01
    adc a
    ld bc, $6801
    sbc a
    ld bc, $6801
    sbc a
    ld bc, $4801
    cp a
    ld bc, $5801
    cp a
    ld bc, $7f01
    sbc a
    ld bc, $f001
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $6001
    rst $38
    nop
    nop
    ldh [$bf], a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    jr jr_0e3_7217

    nop
    nop
    jr jr_0e3_721b

    nop
    nop
    inc a
    ccf
    nop
    nop
    jp $01ff


    ld bc, $ff00
    ld [bc], a
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    rra
    rra
    pop bc
    rst $38
    ccf
    ccf
    add d

jr_0e3_7217:
    rst $38
    ld b, a
    ld a, a
    ld c, [hl]

jr_0e3_721b:
    ld a, a
    daa
    ccf
    ld sp, $2331
    ccf
    nop
    nop
    inc de
    rra
    add b
    add b
    add hl, bc
    rrca
    add b
    add b
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
    db $fd
    cp $80
    add b
    rst $38
    ld sp, hl
    add b
    add b
    ei
    db $fc
    add b
    add b
    rst $38
    cp $c0
    ret nz

    rlca
    rst $38
    and b
    ldh [$03], a
    rst $38
    db $10
    ldh a, [$f8]
    rst $38
    ld a, b
    ld hl, sp+$20
    rst $38
    add sp, -$08
    ld b, b
    rst $38
    ret c

    add sp, $41
    rst $38
    add sp, -$08
    add c
    rst $38
    ld hl, sp-$08
    ld a, [hl]
    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    db $e4
    inc e
    inc bc
    rst $38
    ld [hl], a
    adc a
    add a
    rst $38
    scf
    call $fe7e
    add l
    rst $38
    inc c
    db $fc
    ld a, [hl]
    ld a, [hl]
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
    inc d
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
    db $f4
    db $fc
    nop
    nop
    ld h, h
    db $fc
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
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
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
    rrca
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ldh a, [rIE]
    ld bc, $7001
    sbc a
    ld bc, $7001
    sbc a
    ld [bc], a
    inc bc
    rst $38
    rra
    ld [bc], a
    inc bc
    ldh a, [$1f]
    ld [bc], a
    inc bc
    ret nc

    ccf
    dec b
    ld b, $d0
    ccf
    dec b
    ld b, $b0
    ld a, a
    rlca
    rlca
    rst $38
    rst $38
    ld c, $0d
    ld h, b
    rst $38
    rrca
    ld a, [bc]
    ret nz

    rst $38
    rrca
    dec bc
    ret nz

    rst $38
    rlca
    inc b
    ld b, b
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ccf
    ccf
    ld b, $06
    ld b, c
    ld a, a
    add hl, bc
    rrca
    ldh [rIE], a
    add hl, bc
    rrca
    ldh [rIE], a
    add hl, bc
    rrca
    ldh [rIE], a
    add hl, bc
    rrca
    and b
    cp a
    add hl, bc
    rrca
    rst $18
    rst $38
    add hl, bc
    rrca
    ld b, b
    ld a, a
    add hl, bc
    rrca
    ld b, b
    ld a, a
    ld b, $06
    ld b, b
    ld a, a
    nop
    nop
    jr nc, jr_0e3_73e3

    nop
    nop
    rra
    rra
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
    nop
    nop
    nop
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
    db $fd
    cp $80
    add b
    rst $38
    ld sp, hl
    add b
    add b

jr_0e3_73e0:
    ei
    db $fc
    add b

jr_0e3_73e3:
    add b
    rst $38
    cp $80
    add b
    rlca
    rst $38
    ldh [$e0], a
    ld b, e
    rst $38
    jr nc, jr_0e3_73e0

    jr nc, @+$01

    ld l, b
    ld hl, sp+$20
    rst $38
    ld e, b
    add sp, $20
    rst $38
    add sp, -$08
    jr nz, @+$01

    ld hl, sp-$08
    pop bc
    rst $38
    ld l, b
    sbc b
    ccf
    rst $38
    ld l, b
    sbc b
    ld bc, $64ff
    sbc h
    ld bc, $56ff
    xor d
    inc bc
    rst $38
    ld [hl], d
    adc [hl]
    add $fe
    db $f4
    adc h
    ld a, $fe
    adc b
    ld hl, sp+$0c
    db $fc
    ld [hl], b
    ld [hl], b
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
    db $fc
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0e3_7446:
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jr c, jr_0e3_7446

    nop
    nop
    ldh a, [$f0]
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
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_0e3_74cb

    nop
    nop
    jr c, jr_0e3_74ef

    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    cp b
    rst $08
    ld bc, $7f01
    adc a
    ld bc, $6801
    sbc a
    ld [bc], a
    inc bc
    adc b
    ld a, a
    ld [bc], a
    inc bc
    ret z

jr_0e3_74cb:
    ccf
    ld bc, $5001
    cp a
    ld bc, $7f01
    sbc a
    nop
    nop
    or b
    rst $18
    nop
    nop
    ld h, b
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
    ld h, b
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    ld b, d

jr_0e3_74ef:
    ld a, a
    nop
    nop
    ld b, c
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
    ld bc, $0101
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0801
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    pop af
    pop af
    nop
    nop
    ldh a, [$f0]
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    db $fc
    db $fc
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
    db $fd
    cp $80
    add b
    rst $38
    ld sp, hl
    add b
    add b
    ei
    db $fc
    add b
    add b
    rst $38
    cp $80
    add b
    add e
    rst $38
    ret nz

    ret nz

    ld bc, $e0ff
    ldh [$f8], a
    rst $38
    ld [hl], b
    ldh a, [rNR41]
    rst $38
    add sp, -$08
    ld b, b
    rst $38
    ret c

    add sp, $41
    rst $38
    add sp, -$08
    add c
    rst $38
    ld hl, sp-$08
    ld a, [hl]
    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    db $e4
    inc e
    ld [bc], a
    rst $38
    and $1e
    inc bc
    rst $38
    ld [hl], a
    adc l
    rst $00
    rst $38
    dec [hl]
    rst $08
    ld a, $fe
    adc [hl]
    cp $04
    db $fc
    ld [hl], b
    ld [hl], b
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
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
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
    add b
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    db $e4
    db $fc
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ldh a, [$f0]

jr_0e3_75da:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr c, jr_0e3_75da

    nop
    nop
    adc h
    db $fc
    nop
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    dec c
    rrca
    nop
    nop
    inc e
    rra
    nop
    nop
    jr @+$21

    nop
    nop
    jr c, jr_0e3_766f

    nop
    nop
    ld e, b
    ld l, a
    nop
    nop
    ld e, b
    ld l, a
    nop
    nop
    ld e, a
    ld l, a
    nop
    nop
    cp b
    rst $08
    nop
    nop
    or b
    rst $18
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr nc, jr_0e3_768b

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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nc, jr_0e3_769f

    nop
    nop
    cpl
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b

jr_0e3_766f:
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ldh a, [rIE]
    ld bc, $9f01
    rst $38

jr_0e3_767c:
    ld [bc], a
    inc bc
    rlca
    rst $38
    inc b
    rlca
    inc bc
    rst $38
    inc b
    rlca
    inc bc
    rst $38
    ld [$020f], sp

jr_0e3_768b:
    cp $10
    rra
    inc b
    db $fc
    ld h, $3f
    ld [$1ff8], sp
    rra
    db $10
    ldh a, [$3f]
    ccf
    jr nz, jr_0e3_767c

    ld a, a
    ld a, a
    ld b, b

jr_0e3_769f:
    ret nz

    sbc [hl]
    cp $80
    add b
    ld c, a
    ld a, a
    nop
    nop
    daa
    ccf
    nop
    nop
    inc de
    rra
    add b
    add b
    add hl, bc
    rrca
    add b
    add b
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
    ccf
    ccf
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, [hl]
    ld a, a
    ret nz

    ld b, b
    ld a, a
    ld a, h
    ret nz

    ret nz

    ld a, l
    ld a, [hl]
    ret nz

    ld b, b
    rst $38
    rst $38
    ldh a, [rSVBK]
    jp Jump_0e3_78ff


    ld hl, sp-$7a
    rst $38
    ld a, h
    db $fc
    jr c, @+$01

    db $ec
    db $fc
    db $10
    rst $38
    call nc, Call_000_20ec
    rst $38
    db $ec
    db $fc
    ld hl, $fcff
    db $fc
    ld bc, $f4ff
    inc c
    ld sp, hl
    rst $38
    ld [hl], h
    adc h
    rlca
    rst $38
    db $f4
    inc c
    ld bc, $68ff
    sbc b
    inc bc
    rst $38
    ld [hl], h
    adc h
    inc bc
    rst $38
    ld a, h
    adc h
    and $fe
    sbc [hl]
    cp $1e
    cp $7b
    ld a, a
    ld [bc], a
    cp $37
    dec a
    ld [bc], a
    cp $1e
    ld [de], a
    ld bc, $0cff
    inc c

jr_0e3_7720:
    ld bc, $00ff
    nop

jr_0e3_7724:
    nop
    rst $38
    add b
    add b

jr_0e3_7728:
    add b
    rst $38
    add b
    add b

jr_0e3_772c:
    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    ld b, a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld hl, sp-$01
    jr nz, jr_0e3_7720

    ld h, b
    ld a, a
    jr nz, jr_0e3_7724

    jr nz, jr_0e3_7785

    jr nz, jr_0e3_7728

    jr nz, jr_0e3_7789

    jr nz, jr_0e3_772c

    jr nz, jr_0e3_778d

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
    ld bc, $0701
    rlca
    nop
    nop
    rrca
    rrca
    db $fc
    db $fc
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ldh [$e0], a
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

jr_0e3_7785:
    nop
    nop
    nop
    nop

jr_0e3_7789:
    nop
    nop
    nop
    nop

jr_0e3_778d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $1f
    nop
    nop
    jr c, jr_0e3_77eb

    nop
    nop
    jr nc, jr_0e3_77ef

    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ldh [$bf], a
    nop
    nop
    ldh [$bf], a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    cp $ff
    ld bc, $0101
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    sbc h

jr_0e3_77eb:
    rst $38
    nop
    nop
    add h

jr_0e3_77ef:
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $f301
    rst $38
    ld b, $07
    rrca
    rst $38
    ld [$020f], sp
    rst $38
    db $10
    rra
    ld [bc], a
    rst $38
    rla
    rra
    ld b, $ff
    ld a, a
    ld a, a
    ld a, [bc]
    ei
    cp a
    rst $38
    ld [de], a
    di
    ld e, $ff
    ld h, d
    db $e3
    adc l
    db $fd
    add c
    add c
    adc h
    db $fc
    nop
    nop
    ld b, [hl]
    ld a, [hl]
    nop
    nop
    ld [hl+], a
    ld a, $00
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
    db $fd
    cp $80
    add b
    rst $38
    ld sp, hl
    add b
    add b
    ei
    db $fc
    add b
    add b
    rst $38
    cp $80
    add b
    ld bc, $c0ff
    ret nz

    db $e3
    rst $38
    ldh [$e0], a
    ld b, e
    rst $38
    and b
    ldh [$87], a
    rst $38
    ld h, b
    and b
    add a
    rst $38
    and b
    ldh [$03], a
    db $fc
    ldh [$e0], a
    inc bc
    db $fc
    and b
    ld h, b
    rst $30
    ld hl, sp-$60
    ld h, b
    rlca
    ld hl, sp-$60
    ld h, b
    ld b, $f9
    and b
    ld h, b
    dec de
    db $fc
    ldh [rNR41], a
    dec e
    cp $f0
    ldh a, [$f5]
    rst $30
    sub b
    ldh a, [$33]
    di
    sbc b
    add sp, $31
    pop af
    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    sub b
    ld [$60f8], sp
    ld h, b
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
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    add d
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
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop

Jump_0e3_78ff:
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
