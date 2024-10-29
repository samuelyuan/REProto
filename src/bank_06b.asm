SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

    add b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f5
    ld a, [$faa5]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop de
    cp $89
    cp $01
    cp $00
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr @+$01

    or b
    ld a, a
    db $10
    rst $38
    ld bc, $a0ff
    rst $18
    ld b, l
    cp a
    ld a, a
    rst $38
    call $c5ff
    rst $38
    ldh [rIE], a
    db $f4
    rst $38
    ld bc, $83ff
    rst $38
    ld c, a
    rst $38
    ccf

Jump_06b_403f:
    rst $38
    daa
    rst $38
    and b
    rst $38
    ld hl, sp-$01
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
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    push hl
    rst $38
    add a
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    jp $8fff


    rst $38
    db $fc
    rst $38
    di
    rst $38
    add a
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    or b
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    pop bc
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    xor $ff
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    inc bc
    rst $38
    add e
    ld a, a
    ld b, e
    cp a
    ld h, e
    sbc a
    inc hl
    rst $18
    rrca
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc c
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    rst $00
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rra
    rst $38
    ei
    rst $38
    pop bc
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp h
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
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
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    scf
    rst $38
    adc a
    rst $38
    add e
    rst $38
    add c
    rst $38
    nop
    rst $38
    or b
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr @+$01

    sbc [hl]
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add $ff
    adc a
    rst $38
    rlca
    rst $38
    daa
    rst $38
    rst $30
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
    cp $ff
    ccf
    rst $38
    ei
    rst $38
    sbc c
    rst $38
    ld sp, hl
    rst $38
    db $dd
    rst $38
    call c, $ccff
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    db $dd
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    or a
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    ld a, $ff
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
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
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
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
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
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    and e
    rst $38
    or e
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld c, h
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, l
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    or c
    rst $38
    and e
    rst $38
    sub e
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38

Jump_06b_43bd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    inc e
    rst $38
    ld e, b
    rst $38
    ld d, b
    rst $38
    ret nc

    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $ec
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    ld a, c
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld e, $ff
    dec c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    jr @+$01

    sub b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    cp e
    rst $38
    ccf
    rst $38
    rst $38
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
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    cp a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    sbc $ff
    adc $ff
    xor $ff
    cp $ff
    adc $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop de
    rst $38
    di
    rst $38
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $38
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
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $dd
    rst $38
    sbc $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    cp a
    rst $38
    sbc a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    ld d, h
    rst $38
    ld c, h
    rst $38
    ld c, $ff
    ccf
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld c, $ff
    ld e, $ff
    ld c, $ff
    rlca
    rst $38
    ld b, $ff
    inc hl
    rst $38
    ld h, e
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    adc a
    rst $38
    jp $a7ff


    rst $38
    rst $00
    rst $38
    rst $00

Call_06b_4603:
    rst $38
    call $e1ff
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    cp [hl]
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    db $eb
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    adc [hl]
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    and b
    rst $38
    pop bc
    rst $38
    ld bc, $81ff
    rst $38
    inc bc
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, [$f1ff]
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    call nz, $f7ff
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $18
    rst $38
    xor a
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    db $ed
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    db $f4
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
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
    jr jr_06b_4763

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06b_4773

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06b_4783

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06b_4793

    ld [hl-], a

jr_06b_4763:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06b_47a3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_06b_4773:
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

jr_06b_4783:
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
    ld h, c
    ld h, d

jr_06b_4793:
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
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_06b_47a3:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
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
    sub h
    sub l
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
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
    sbc b
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
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
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
    inc de
    inc d
    dec d
    ld d, $17
    inc de
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06b_4877

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06b_4871

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    add hl, de
    jr nc, jr_06b_4899

    inc de
    ld [hl-], a
    inc de
    inc sp
    inc [hl]
    dec [hl]
    inc de
    inc de
    nop

jr_06b_4871:
    nop
    nop
    nop
    nop
    nop
    nop

jr_06b_4877:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06b_4899:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc b
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    rlca
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
    inc b
    inc b
    rlca
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
    inc b
    inc b
    rlca
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
    ld bc, $0202
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld c, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    ei
    rst $38
    ei
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld [hl], h
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $ec
    rst $38
    ldh [$fe], a
    ldh [$fe], a
    ldh [$f7], a
    ldh [$f7], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    and c
    rst $38
    and c
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, -$01
    rst $28
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    add hl, sp
    rst $38
    ld b, c
    rst $38
    ld b, l
    rst $38
    inc [hl]
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    inc b
    cp a
    inc c
    cp [hl]
    adc h
    rst $38
    adc b
    cp $80
    xor $88
    rst $28
    adc b
    rst $18
    add h
    rst $18
    nop
    rst $18
    ld b, b
    sbc $40
    cp $00
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld b, h
    rst $38
    ld h, h
    rst $38
    ld h, b
    cp $60
    cp $60
    rst $38
    ld [hl], b
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    jp $e3ff


    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    push hl
    rst $38
    ret nz

    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld hl, sp-$03
    ld hl, sp-$01
    ldh a, [rIE]
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $08
    ld bc, $03bf
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    dec e
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    db $10
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $e3fb
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
    rst $38
    ld h, b
    rst $38
    sub c
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    jr nc, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    cp $80
    xor $00
    call z, $b400
    nop
    or b
    nop
    ld hl, sp+$00
    ld hl, sp+$40
    add sp, $40
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    jr c, jr_06b_4b21

jr_06b_4b21:
    jr c, jr_06b_4b3b

    inc a
    db $10
    inc a
    db $10
    ld a, [hl-]
    nop
    ld a, $10
    inc a
    db $10
    ld a, $10
    inc a
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, e
    nop
    ei
    nop
    rst $38
    ld b, c

jr_06b_4b3b:
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    add e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    add a
    rst $38
    adc a
    rst $38
    add a
    rst $18
    rlca
    rst $18
    add e
    rst $18
    add c
    rst $08
    add d
    rst $38
    nop
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    set 7, a
    db $d3
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    push bc
    rst $38
    pop hl
    rst $38
    call z, $ccff
    rst $38
    sub h
    rst $38
    sbc [hl]
    rst $38
    cp b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ccf
    rst $38
    rlca
    rst $38
    inc bc
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rst $30
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$fe], a
    ld hl, sp-$04
    ldh a, [$fe]
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$fe]
    ret nc

    cp $e0
    cp $e0
    db $fc
    add b
    db $fc
    nop
    ld a, h
    nop
    ld a, h
    nop
    db $f4
    nop
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp+$40
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    pop hl
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ld [hl], a
    nop
    rst $30
    ld b, b
    ld a, [hl]
    ld c, b
    ld l, a
    nop
    ld l, a
    inc b
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    ld b, $77
    ld b, $6f
    dec h
    ld l, a
    ld hl, $076f
    ld a, a
    daa
    ld a, a
    ccf
    ld a, a
    inc b
    ld a, a
    nop
    ld a, b
    nop
    ld h, b
    nop
    jr nz, jr_06b_4c2d

jr_06b_4c2d:
    jr nz, jr_06b_4c2f

jr_06b_4c2f:
    jr nc, jr_06b_4c31

jr_06b_4c31:
    jr nc, jr_06b_4c33

jr_06b_4c33:
    ld [hl], b
    nop
    ld hl, sp+$30
    db $fc
    ldh a, [$f9]
    ldh a, [$fd]
    rst $38
    rst $38
    or $ff
    or $ff
    or $ff
    or $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nc

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $f4
    rst $38
    call nz, $80ff
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
    add [hl]
    rst $38
    add a
    rst $38
    and a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    or a
    rst $38
    and a
    rst $38
    call nz, $c0ff
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    inc c
    rst $38
    ld [$01ff], sp
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jr @+$01

    nop
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    nop
    ld a, h
    nop
    ld e, $00
    sbc a
    nop
    db $fc
    nop
    ld a, [$fb00]
    nop

jr_06b_4cbd:
    ld hl, sp+$00
    ld sp, hl
    nop
    ei
    nop
    cp $00
    db $fc
    nop
    ld a, h
    nop
    inc a
    nop
    ld hl, sp+$00
    ld a, b
    nop
    jr nc, @+$01

    nop
    cp $01
    ld a, [$e801]
    inc bc
    db $f4
    inc bc
    inc [hl]
    jp $8374


    and h
    ld b, e
    nop
    ld h, e
    nop
    ld [hl], e
    nop
    ld a, a
    nop
    sbc a
    nop
    rst $08
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_06b_4cf6:
    ld bc, $00fe
    cp $02
    db $fc
    inc c
    ldh a, [$08]
    db $f4

jr_06b_4d00:
    inc bc
    db $fc
    ret nz

    ccf
    rst $00
    jr c, jr_06b_4cf6

    db $10
    rst $28
    db $10
    xor [hl]
    db $10
    cpl
    sub b
    inc [hl]
    add c
    inc sp
    add b
    sub e
    nop
    dec d
    add b
    ld de, $3780
    add b
    ld a, a
    add b
    ld e, a
    and b
    rra
    ldh [$0b], a
    ldh a, [rTMA]
    ld hl, sp+$02

jr_06b_4d25:
    db $fc
    adc $30
    adc $30
    rst $28
    db $10
    rst $18
    jr nz, @-$2f

    jr nc, jr_06b_4d00

    jr nc, jr_06b_4cbd

    ld [hl], c
    cp [hl]
    ld b, c
    inc a
    jp $e31c


    inc e
    db $e3
    jr jr_06b_4d25

    jr @-$17

    nop
    db $e4
    nop
    ld [hl], b
    nop
    or b
    nop
    jr nz, jr_06b_4d49

jr_06b_4d49:
    ret z

    nop
    ret nz

    nop
    add b
    nop
    xor [hl]
    nop
    dec l
    nop
    dec a
    nop
    rst $38
    ld bc, $00ff
    cp a
    nop
    cp a
    nop
    rra
    nop
    sbc e
    add b
    reti


    nop
    reti


    nop
    ret


    nop
    ld c, e
    nop
    jp $8f00


    ld [bc], a
    rst $28
    ld [bc], a
    rst $08
    inc bc
    rst $18
    add hl, bc
    rst $38
    dec de
    rst $38
    ld a, b
    rst $38
    cp $ff
    rst $30
    cp $fd
    cp $ff
    db $fc
    ld sp, hl
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    rst $00
    nop
    rst $38

jr_06b_4d8e:
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ldh a, [rIF]
    ret nz

    ccf
    ld hl, sp+$07
    sbc h
    inc bc
    db $db
    nop
    db $dd
    nop
    pop bc
    nop
    daa
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    sbc [hl]
    ld h, b
    inc a
    ret nz

    inc a
    ret nz

    jr c, jr_06b_4d8e

    db $10
    ldh [$f9], a
    cp $fa
    db $fd
    db $fd
    cp $e2
    db $fd
    db $ec
    di
    ret z

    di
    ret nc

    db $e3
    db $e4
    jp $c3b4


    sub [hl]
    pop bc
    cp a
    ret nz

    sbc b
    rst $20
    add b
    rst $38
    add b
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr nc, @+$01

    ld [bc], a
    db $fd
    ld [$eb15], a
    inc d
    ld [c], a
    dec d
    add sp, $17
    or l
    ld [bc], a
    ccf
    ret nz

    ret


    ld b, $e1
    ld b, $ff
    nop
    inc a
    nop
    ld l, b
    nop
    db $eb
    nop
    db $10
    db $eb
    ld [$08f3], sp
    di
    ld [$2cf3], sp
    di
    adc h
    di
    sbc h
    di
    or c
    db $db
    ld [hl], l
    sbc e
    or l
    db $db
    and [hl]
    reti


    inc h
    reti


    inc h
    reti


    ld h, $d9
    ld a, [hl+]
    push de
    ld [$00f7], sp
    inc bc
    nop
    inc bc
    ld bc, $0307
    cp a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    ld [$e7ff], a
    rst $28
    ld h, e
    rst $28
    ld b, e
    rst $28
    ld b, c
    rst $20
    ld b, c
    rst $20
    ld b, b
    ld h, a
    ld b, b
    ld b, a
    ld b, e
    ld b, a
    ld b, d
    rst $00
    ld b, b
    add $40
    and $40
    xor $40
    ld hl, sp+$00
    ld [hl], h
    ld b, b
    ld a, h
    ld h, b
    rst $38

jr_06b_4e60:
    jr nz, jr_06b_4e60

    db $10
    ld [hl], a
    db $10
    ld a, a
    nop
    ld a, a
    ld [$0a3f], sp
    dec a
    rlca
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$63], a
    db $fc
    rlca
    rst $38
    ld bc, $f8ff
    rlca
    ldh [$1f], a
    and d
    ld e, h
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    inc b
    cp a
    inc c
    rst $38
    ld a, [hl]
    rst $38
    ld d, $ff
    ld bc, $00ff
    ld a, a
    nop
    rlca
    nop
    jr nz, jr_06b_4e99

jr_06b_4e99:
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    pop bc
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

jr_06b_4eaa:
    nop
    rst $38

jr_06b_4eac:
    inc bc
    rst $38
    rlca
    rst $38
    ret nc

    rst $38
    add b
    rst $38

jr_06b_4eb4:
    add a
    ld hl, sp-$42
    ret nz

    inc de
    db $ec
    inc d
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld l, a
    add a
    di
    rrca
    call c, $fd23
    nop
    ld e, d
    jr nz, jr_06b_4ef4

    ld d, $2e
    db $10
    scf
    nop
    rst $30
    nop
    ld h, e
    sub b
    sub e
    ld b, b
    ld a, [bc]

jr_06b_4ed7:
    pop bc
    dec bc
    call nz, $c609
    ld h, e
    call nz, $c027
    inc a
    ret nz

    add hl, hl
    ret nz

    and b
    ld b, b
    and d
    ld b, b
    jr nz, jr_06b_4eaa

    jr nc, jr_06b_4eac

    ld [$0ef0], sp
    ldh a, [$a2]
    db $dd

jr_06b_4ef2:
    inc bc
    sbc h

jr_06b_4ef4:
    inc bc
    sbc h
    adc l
    db $10
    ld bc, $201c
    inc e
    sbc h
    jr c, jr_06b_4ed7

    jr c, jr_06b_4ef2

    jr c, jr_06b_4eb4

    ld a, b
    or e
    ld a, b
    ld l, h
    rst $38
    ld c, $ff
    ld [c], a
    rra
    inc bc
    rst $38
    inc c
    di
    adc l
    ld a, [c]
    rst $08
    ldh a, [rVBK]
    ldh a, [rOBP1]
    ldh a, [$63]
    db $fc
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    inc b
    ei
    add hl, hl
    ld d, $e0
    rra
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    cp a
    or l
    nop
    add $31
    inc c
    di
    inc l
    db $d3
    ld sp, $33ce
    call z, $cc33
    jp hl


    ld d, $00
    inc hl
    nop
    add e
    nop
    add e
    ld [bc], a
    and a
    ld [bc], a
    rst $28
    ld b, d
    rst $08
    ld [bc], a
    xor $82
    ld [c], a
    nop
    jp nz, $0200

    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    ld h, a
    nop
    ld b, [hl]
    nop
    ld l, a
    ld [$ff7e], sp
    ld a, a
    rst $38
    rst $38
    rst $38
    pop hl
    ldh [$f8], a
    nop
    ldh a, [$03]
    db $10
    add hl, bc
    ld e, $18
    rst $38
    jp nz, $e03f

    ccf
    ret nz

    inc a
    ld [hl], b
    adc b
    ret nz

    ld hl, sp+$70
    rst $38
    nop
    ld hl, sp+$00
    inc b
    nop
    nop
    nop
    cp b
    nop
    ld hl, sp+$20
    pop af
    ld b, b
    ldh [rP1], a
    ldh [$80], a
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    call $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ld a, l
    add e
    and b
    ld e, a
    add h
    ld a, e

jr_06b_4fb6:
    ld [hl], h
    inc bc
    ld a, h
    inc bc
    ld a, a
    add b
    ld [bc], a
    db $fd
    nop
    rst $38
    rrca
    ldh a, [$7e]
    add b
    jr nz, @-$3e

    cp a
    ld b, b
    nop
    ld a, a
    rlca
    jr c, @+$24

    dec e
    jr nc, @+$11

    sbc c
    ld b, $c6
    ld bc, $0082
    ld h, h
    add d
    add l
    ld [bc], a
    adc d
    nop
    add d
    nop
    ldh [rP1], a
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
    jr nz, jr_06b_4ff0

jr_06b_4ff0:
    ld h, b
    nop
    ld h, b
    add b
    inc [hl]
    ret nz

    sbc l
    ld h, b
    sbc h
    ld h, b
    ret nz

    inc a
    inc b
    jr c, @+$05

Call_06b_4fff:
Jump_06b_4fff:
    inc a
    jp $b33c


    ld c, h
    di
    inc c
    or e
    ld c, h
    and h
    ld e, b
    dec b
    ld hl, sp+$17
    rst $38
    or h
    ld e, a
    ldh [$1f], a
    ldh [$1f], a
    rst $08
    jr nc, jr_06b_4fb6

    ld h, b
    sbc a
    ld h, b
    ld bc, $c8f8
    ldh a, [$db]
    ldh [$fb], a
    ret nz

    rst $38
    ret


    rst $38
    ld b, a
    ld l, a
    ld b, b
    nop
    dec h
    nop
    inc h
    add b
    ld a, a
    ret z

    ld a, l
    jr nc, @-$32

    dec de
    db $e4
    ld e, h
    ldh [rBCPS], a
    ldh a, [$6c]
    ld [hl], e
    ld a, b
    ld [hl], a
    nop
    ld a, a
    ld b, h
    ld a, b
    ld c, d
    db $f4
    ld l, $d0
    rrca
    ldh a, [$09]
    or $08
    rst $30
    ld c, $f1
    ld b, $f9
    ld h, [hl]
    add hl, de
    ld h, [hl]
    add hl, de
    inc bc
    ld a, h
    rlca
    ld a, b
    ld a, [hl+]
    push de
    ccf
    ret nz

    nop
    ld h, b
    ld b, b
    ldh a, [rP1]
    sbc b
    ld a, c
    add b
    db $e3
    db $fc
    ld [hl], e
    rst $38
    db $d3
    ccf
    rst $28
    rra
    ld [hl], e
    adc a
    rst $38
    jp nz, $d76f

    ret z

    scf
    adc b
    ld [hl], a
    ld [hl], b
    adc a
    db $e4
    inc bc
    pop hl
    nop
    ld d, b
    add b
    db $fc
    ld bc, $01fa
    nop
    ld bc, $0700
    nop
    rra
    ld bc, $00c3
    push hl
    ld bc, $033f
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ldh [$fd], a
    ldh [$fc], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $f8
    cp $00
    ret nz

    nop
    db $fc
    nop
    db $fd
    ld [bc], a
    dec a
    ld [bc], a
    push af
    ld a, [bc]
    jp $f43c


    rrca
    inc d
    rrca
    ld h, $1f
    ld c, [hl]
    ccf
    inc e
    rst $38
    jr c, @+$01

    ld b, $f9
    ld b, [hl]
    add c
    ld b, a
    add b
    db $10
    rst $28
    add b
    ld a, a
    nop
    ld a, a
    ld a, h
    inc bc
    ld a, $00
    ld a, b
    inc b
    inc de
    inc c
    jr jr_06b_50e9

    ld [$0807], sp
    rlca
    inc c
    inc bc
    nop

jr_06b_50e9:
    rlca
    inc c
    inc bc
    inc c
    inc bc
    ld [$0807], sp
    rlca
    ld [$0a07], sp
    dec b
    jr nc, jr_06b_5107

    pop hl
    ld e, $c0
    ccf
    db $e3
    inc e
    inc bc

jr_06b_50ff:
    db $fc
    rla
    add sp, -$6d
    ld l, l
    add e
    ld a, h
    pop hl

jr_06b_5107:
    rra
    ld a, [bc]
    inc e
    ret


    ccf
    ld hl, sp-$02
    add hl, de
    rst $38
    jr @+$01

    ret c

    ccf
    db $db
    inc a
    cp c
    ld e, $e1
    ld e, $e2
    inc e
    ld a, [hl+]
    inc e
    ld a, [hl+]
    inc e
    ld hl, sp+$1c
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld bc, $003e
    db $fc
    ld e, h
    jr nz, jr_06b_50ff

    jr nc, @-$3c

    inc a
    ld b, c
    ld a, $00
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    sbc $3f
    db $10
    rst $38
    rra
    rst $38
    ld a, h
    rst $38
    ld a, [hl+]
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    ld a, [hl-]
    db $fd
    ld a, [bc]
    db $fd
    ld [bc], a
    db $fd
    ld b, d
    cp l
    nop
    ld hl, sp+$00
    add hl, de
    nop
    sbc [hl]
    ei
    inc e
    ld h, a
    jr @-$70

    pop af
    push de
    ld a, [bc]
    pop af
    ld c, $7c
    add e
    ld hl, sp+$07
    add h
    ei
    jr c, @+$01

    ld a, d
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld b, b
    rst $38
    nop
    ld a, [c]
    nop
    ldh [rP1], a
    ldh a, [rP1]
    add $00
    ld c, $10
    cp $70
    db $fc
    ld h, b
    cp $80
    pop bc
    nop
    add b
    nop
    add b
    nop
    ld hl, sp-$40
    ld hl, sp-$40
    cp $40
    pop af
    nop
    or $00
    rst $20
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    inc bc
    rst $28
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    db $10
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $30
    rrca
    add d
    ld a, l
    sbc a
    ld h, b
    ld a, h
    add e
    ld de, $04ee
    ld hl, sp+$7b
    add b
    db $fc
    inc bc
    ld b, d
    cp a
    ld b, b
    rst $38
    rrca
    ldh a, [$7f]
    add b
    add hl, bc
    ldh a, [rIF]
    ldh a, [$71]
    ld c, $1f
    ld hl, sp+$62
    db $fd
    ld l, h
    sbc a
    add b
    ld a, a
    ld a, [de]
    inc b
    inc c
    ld [bc], a
    add c
    ld [bc], a
    jp nz, $e601

    ld bc, $ff03
    nop
    rst $38
    inc b
    ld sp, hl
    add hl, bc
    ldh a, [rNR23]
    ldh [rNR32], a
    ldh [$e0], a
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    rst $28
    nop
    ldh a, [rP1]
    pop bc
    ccf
    ret z

    ccf
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
    ld e, a
    jr nz, jr_06b_52a2

    nop
    ld c, a
    jr nc, @+$51

    jr nc, jr_06b_5238

    ld [hl], b
    rrca
    ld [hl], b
    dec c
    ld [hl], d
    rrca
    ld [hl], b
    dec c
    ld [hl], d
    inc b
    ld a, e
    inc c
    ld [hl], e
    inc b
    ld a, e

jr_06b_5238:
    inc b
    ld a, e
    inc b
    ld a, e
    add b
    rst $38
    nop
    ld a, a
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
    ld a, a
    jr nz, jr_06b_52cd

    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    jr nc, jr_06b_5293

    ld [hl], d
    ld a, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    dec sp
    dec sp
    rrca
    rrca
    nop
    nop
    inc e
    ccf
    rrca
    ld a, a
    ld e, b
    db $fd
    nop
    inc e
    nop
    nop
    nop
    rlca
    nop
    rlca
    inc b
    ld b, a
    nop
    jp $c100


    ret nz

    ld hl, sp+$10
    ld hl, sp+$00
    rra
    ld bc, $030f
    rlca
    ld bc, $0103
    add a
    nop
    rrca
    inc bc
    rlca
    nop
    rlca
    ld [bc], a
    rst $00
    inc b
    cp $06
    ld c, a
    rrca
    rrca
    rrca
    rra
    rrca

jr_06b_5293:
    rra
    inc e
    cp [hl]
    nop
    ld hl, sp+$00
    ld hl, sp+$04
    rst $38
    inc bc
    rst $38
    ld bc, $60ff
    rst $38

jr_06b_52a2:
    ldh [rIE], a
    nop
    rst $38
    inc e
    rst $38
    rra
    rst $38
    adc a
    rst $38
    jp z, Jump_000_00ff

    rst $38
    cp $01
    rst $38
    nop
    ld a, $c0
    ld a, [hl]
    nop
    inc l
    db $10
    rst $28
    db $10
    rrca
    nop
    dec h
    nop
    rst $28
    nop
    sub b
    ld l, a
    ld b, c
    ld a, $ff
    nop
    cp $00
    ld hl, $001e

jr_06b_52cd:
    ld e, $27
    jr @-$1e

    rra
    ret nz

    ccf
    ld a, b
    add a
    and d
    ld e, l
    ld [$51f7], sp
    ld h, $d1
    ld h, $b1
    ld b, $06
    inc b
    ld e, $86
    rst $38
    ld hl, sp+$7d
    ld hl, sp+$3c
    ld hl, sp+$3c
    ld hl, sp+$58
    cp b
    ld [$7878], sp
    nop
    jr c, jr_06b_52f4

jr_06b_52f4:
    inc a
    nop
    jr c, jr_06b_52f8

jr_06b_52f8:
    nop
    nop
    nop
    nop
    jp nz, $3bff

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
    rst $38
    nop
    cp $01
    ld a, e
    add h
    ei
    inc b
    db $ed
    ld [de], a
    xor c
    ld d, [hl]
    ld bc, $10fe

jr_06b_532b:
    rst $28
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
    adc h
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld hl, sp+$07
    rra
    add b
    ld a, l
    add d
    cp a
    nop
    add sp, $07
    jr nc, jr_06b_532b

    nop
    rst $38
    nop
    rst $38
    ld a, b
    add a
    ldh a, [$0c]
    ldh a, [$0c]
    ld d, a
    adc b
    rrca
    ldh a, [$0c]
    ldh a, [$3f]
    ret nz

    rrca
    ldh a, [$c0]
    ret nz

    ret nz

    pop bc
    rlca
    rst $38
    rla
    rst $38
    nop
    inc de
    nop
    ccf
    inc bc
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rra
    inc bc
    ld a, a
    inc b
    rra
    ld a, l
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    nop
    ldh a, [rNR41]
    ldh a, [rP1]
    ld hl, sp+$03
    rst $38
    inc bc
    rst $30
    nop
    rlca
    nop
    rlca
    nop
    dec b
    ld b, b
    cp a
    nop
    rst $38
    inc bc
    db $fc
    ret nz

    ccf
    ret nz

    ccf
    jp Jump_000_1f3c


    nop
    inc sp
    inc c
    rrca
    rst $38
    daa

jr_06b_53c3:
    rst $38
    add hl, bc
    rst $30
    rlca
    rst $38
    ret nc

    cpl
    ld [hl], e
    inc c
    rla
    ld [$033c], sp
    inc [hl]
    inc bc
    inc d
    rrca
    ld d, [hl]
    adc c
    ld [hl], a

jr_06b_53d7:
    ret z

    adc a
    ld [hl], b
    ld l, e
    db $10
    db $76
    ld bc, $037c
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rst $20
    nop
    ld h, a
    nop
    rra
    nop
    cp a
    rst $38
    ret nz

    rst $38
    rst $20
    jr jr_06b_53c3

    cpl
    ldh [$1f], a
    ldh a, [rIF]
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
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

jr_06b_540b:
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $30
    ld [$20df], sp
    ld e, a
    and b
    ld c, $f1
    inc c
    di
    nop
    rst $38
    ld a, b
    add a
    db $f4
    dec bc
    add sp, $17
    push af
    ld a, [bc]
    xor b
    ld d, a
    ld b, b
    cp a
    jr nz, jr_06b_540b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0bff
    rst $38
    xor a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    db $76
    halt
    ld c, $02
    ccf
    ld bc, $0013
    rst $30
    nop
    ld b, $00
    rst $38
    db $10
    cp $00
    db $fc
    xor l
    nop
    dec e
    nop
    ld b, a
    jr c, jr_06b_53d7

    ld a, a
    add b
    ld a, a
    sub b
    ld l, a
    rst $18
    jr nz, @+$01

    nop
    ld bc, $0c0f
    rst $38
    add b
    ld hl, sp-$80
    and d
    add b
    add e
    add b
    add c
    add b
    and c
    add b
    db $e3
    add b
    and $00
    rst $30
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01e7
    rst $28
    rlca
    rra
    ld bc, $b8ff
    rst $38
    db $fc
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $018f
    sub a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld c, a
    nop
    rra
    nop
    ld a, a
    ld a, b
    add a
    nop
    rst $38
    ld a, b
    add a
    nop
    rst $38
    ldh a, [rIF]
    inc c
    di
    rlca
    ld hl, sp+$18
    ldh [$30], a
    ret nz

    nop
    ret nz

    cp a
    ld b, b
    adc [hl]
    ld [hl], c
    add b
    ld a, a
    add b
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, e
    ld h, e
    scf
    scf
    nop
    nop
    and h
    and h
    inc bc
    inc bc
    nop
    nop
    inc c
    ld a, [c]
    adc h
    ld [hl], d
    db $fc
    ld [bc], a
    inc c
    ld a, [c]
    ld [$0af6], sp
    or $0a
    or $0a
    or $0b
    rst $30
    ld [bc], a
    cp $88
    db $76
    ld [$ec16], a
    ld [de], a
    db $dd
    inc hl
    adc l
    ld [hl], e
    call z, Call_000_0c32
    ld a, [c]
    inc c
    ld a, [c]
    ld [$88f6], sp
    db $76
    adc c
    ld [hl], a
    adc b
    db $76
    add hl, bc
    rst $30
    inc bc
    rst $38
    ld bc, $83ff
    ld a, a
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
    inc de
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    rla
    rst $38
    ld b, $fe
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    ld de, $81ff
    rst $38
    sub b
    cp $71
    rst $38
    cp a
    rst $38
    db $fc
    db $fc
    ld [$1808], sp
    ld a, a
    ret nz

    rst $38
    add b
    pop hl
    nop
    rst $20
    nop
    rlca
    ld b, $0f
    nop
    rlca
    nop
    ld l, a
    ld [bc], a
    rrca
    dec bc
    rra
    rra
    ld a, a
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld c, $ff
    ld b, $1f
    ccf
    rst $38
    ld a, [$01ff]
    cp $00
    rra
    ld [bc], a
    rst $38
    jr @+$01

    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    rst $38
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
    sbc $ff
    ld a, [$f8ff]
    rst $38
    cp b
    rst $38
    cp c
    rst $38
    ld a, b
    rst $38
    ret nz

    db $fd
    add b
    jp $cf80


    add b
    rst $08
    ld b, b
    ei
    db $10
    rst $38
    ret nz

    ld sp, hl
    nop
    jp $ff08


    nop
    rst $38
    add b
    rst $38
    inc c
    rst $38
    nop
    ccf
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp h
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    ld [bc], a
    cp $06
    cp $80
    ld c, $70
    ld b, $78
    add sp, $10
    call z, $8c30
    ld [hl], c
    inc c
    ldh a, [rP1]
    rst $38
    cpl
    rst $38
    ld h, e
    rst $38
    xor $f0
    xor $f0
    xor $f0
    xor $f0
    and $f8
    and $f9
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    sub b
    rst $38
    add b
    rst $38
    inc b
    ei
    ld b, $f9
    add h
    ei
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $18
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
    rst $38
    ld [bc], a
    db $fd
    add b
    rst $38
    jp $ffff


    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ld l, c
    rst $30
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld a, l
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rrca
    rrca
    rra
    ld [de], a
    ccf
    nop
    rst $20
    nop
    sbc a
    nop
    rst $38
    nop
    rst $28
    inc b
    cp a
    nop
    adc a
    nop
    rlca
    inc bc
    db $fc
    ld c, a
    ldh a, [$98]
    rst $20

Jump_06b_5656:
    ld [hl-], a
    adc a
    pop hl
    ld e, $a2
    ld e, l
    inc c
    di
    nop
    rst $38
    ld h, b
    sbc a
    ld hl, sp+$07
    nop
    rst $38
    ld [hl], e
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$feff], sp
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    di
    rst $38
    ld bc, $00f9
    pop af
    nop
    push af
    nop
    push af
    nop
    db $f4
    nop
    ld a, [$9f00]
    nop
    sbc c
    ld b, $f9
    ld a, [de]
    push hl
    add hl, hl
    add $3b
    call nz, $cc33
    daa
    ret c

    add a
    ld a, b
    add h
    ld a, b
    nop
    db $fc
    nop
    cp h
    nop
    inc a
    inc c
    inc a
    inc e
    ld a, [hl]
    inc c
    ld a, [hl]
    ld [$046e], sp
    rst $08
    rst $10
    rst $38
    rst $30
    rst $18
    ld h, d
    rst $18
    ld h, e
    db $dd
    ld l, l

jr_06b_56c9:
    db $dd
    ld c, $fd
    ld e, $fd
    ld c, b
    cp a
    and l
    jr jr_06b_5740

    sub b
    jp hl


    inc d
    ld sp, hl

jr_06b_56d7:
    inc b
    ld h, $c0
    inc h
    jp nz, $e20c

    dec e
    ld [c], a
    jr nz, jr_06b_56c9

    jr nz, @-$17

    dec h
    rst $20
    jr nz, jr_06b_56d7

    ld [hl+], a
    rst $38
    ld a, [hl+]
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    cp $00
    ld a, [$f800]
    nop
    cp $c0
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ret nz

    ld a, [$fec8]
    ret nz

    adc $c0
    adc $c0
    xor $40
    and $00
    and $00
    and $40
    xor $00
    db $ec
    nop
    db $fc
    nop
    db $fc
    sub b
    rst $38
    sub e
    rst $38
    ld de, $11ff
    rst $30
    add b
    rst $30
    ld [hl], b
    rst $30
    ld d, c
    rst $38
    ld bc, $00df
    rst $18
    ld bc, $8fff
    rst $38
    rst $00
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    ld bc, $41ff
    rst $38
    ld bc, $09ff
    rst $38
    jr z, @+$01

    db $10
    rst $38
    add b
    rst $38

jr_06b_5740:
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld l, b
    rst $38
    ld sp, hl
    cp $fc
    rst $38
    ld de, $bcfe
    ld b, e
    ld l, b
    sub a
    add d
    ld a, a
    ld b, e
    cp a
    db $d3
    cpl
    inc bc
    rst $38
    ld de, $60ff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr z, @+$01

    ld b, b
    rst $38
    add h
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec de
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    ret nz

    rst $38
    ld hl, sp-$03
    add sp, -$03
    ld l, b
    db $fd
    cp b
    db $fd
    cp b
    cp h
    sbc b
    cp h
    adc h
    call c, $de04
    inc b
    rst $18
    ld b, h
    rst $18
    ld b, [hl]
    rst $08
    inc bc
    ld c, a
    inc bc
    ld c, a
    ld bc, $03ef
    and a
    ld bc, $0327
    daa
    inc bc
    daa
    ld [bc], a
    daa
    nop
    ld d, $00
    inc d
    nop
    jr nc, jr_06b_57cd

    ld [hl-], a
    db $10
    ld [hl], b
    ld b, b
    ld hl, sp+$40
    db $db
    nop
    ld l, e
    ld [$006f], sp
    ld a, a
    jr nz, jr_06b_5843

    inc [hl]

jr_06b_57cd:
    ld [hl], l
    jr nc, @+$3f

    jr nc, jr_06b_580f

    jr nc, jr_06b_5813

    db $10
    ccf
    db $10
    dec de
    db $10
    dec de
    nop
    dec de
    inc bc
    dec de
    inc bc
    ccf
    nop
    ld a, a
    inc sp
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ef
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rla
    rst $38
    rla
    rst $38
    ld bc, $01ff
    ccf
    ld de, $113f
    cp a
    dec h
    ccf
    ld bc, $011f
    rra
    nop
    ccf
    ld bc, $213f

jr_06b_580f:
    dec l
    ld bc, $0133

jr_06b_5813:
    cp e
    ld bc, $03bb
    cp e
    nop
    cp a
    ld b, b
    rst $38
    ld h, c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $38
    ld bc, $21ff
    rst $38
    ld b, c
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, a
    cp a
    ld h, a
    sbc a
    ld h, a

Call_06b_5833:
    sbc a
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    ld a, a
    add a

jr_06b_5843:
    ld a, a
    and a
    ld a, a
    daa
    rst $38
    ld l, e
    rst $38
    ld a, l
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    ld a, c
    rst $38
    dec de
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    ld a, d
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    jr @+$01

    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld h, $ff
    add [hl]
    rst $38
    adc d
    rst $38
    sbc [hl]
    rst $38
    add d
    rst $38
    add c
    rst $38
    jp $feff


    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    or $ff
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    ld a, a
    rra
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    push bc
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    inc bc
    ld l, a
    ld bc, $015f
    ld e, a
    ld bc, $007f
    ld e, a
    nop
    rst $38
    ld [bc], a
    ld a, a
    ld [bc], a
    ld l, a
    ld h, $ff
    ld h, $ff
    daa
    rst $38
    xor [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sub l
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    ret


    rst $38
    call Call_06b_4fff
    rst $38
    ld c, e
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, [hl]
    rst $38
    inc c
    rst $38
    adc $ff
    rst $00
    rst $38
    rst $08
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $d3
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    cp l
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    ei
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld d, e
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    xor $ff
    ld [$40ff], a
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    rst $18
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
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    jp $f1ff


    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    call c, $fcff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp e
    rst $38
    sbc a
    rst $38
    adc e
    rst $38
    rst $18
    rst $38
    call c, $efff
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], c
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr @+$01

    add hl, de
    rst $38
    ld a, [hl-]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, [hl-]
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $ed
    rst $38
    push hl
    rst $38
    db $ed
    rst $38
    db $e3
    rst $38
    set 7, a
    jp $cfff


    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    rst $30
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
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    or $ff
    or $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    adc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    inc c
    rst $38
    ld e, [hl]
    rst $38
    di
    rst $38
    cp a
    rst $38
    inc b
    rst $38
    sbc [hl]
    rst $38
    cp a
    rst $38
    sub e
    rst $38
    inc de
    rst $38
    ld h, a
    rst $38
    push bc
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06b_5c03:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $e7ff
    rst $38
    rst $30
    rst $38
    sbc $ff
    rst $28
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    adc a
    rst $38
    push bc
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    xor a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    inc hl
    rst $38
    ld b, d
    rst $38
    and h
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    add c
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $ff
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
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
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
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
    ccf
    rst $38
    jr @+$01

    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    rlca
    rst $38
    ld [hl], e
    rst $38
    or e
    rst $38
    ld a, b
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0900], sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    inc de
    nop
    inc d
    dec d
    ld d, $0b
    dec bc
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec bc
    dec e
    ld e, $1f
    jr nz, jr_06b_5d5a

    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    dec h
    dec bc
    ld h, $27
    jr z, jr_06b_5d6d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06b_5d7d

    ld [hl-], a
    inc sp
    dec bc
    dec bc
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06b_5d8f

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_06b_5d5a:
    ld a, $3f
    ld b, b
    dec bc
    dec bc
    dec bc
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

jr_06b_5d6d:
    ld c, [hl]
    ld c, a
    dec bc
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

jr_06b_5d7d:
    ld e, l
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
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_06b_5d8f:
    ld l, a
    ld [hl], b
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
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
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
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
    and l
    or e
    and l
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
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    dec bc
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $0b
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0b02
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$1c09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec bc
    dec bc
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_06b_5e5e

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $0b
    dec bc
    rra
    jr nz, jr_06b_5e71

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06b_5e5e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06b_5e71:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
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
    ld b, $06
    ld bc, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld b, $06
    dec b
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
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    inc b
    inc b
    dec b
    dec b
    dec b
    nop
    nop
    ld b, $01
    ld b, $01
    ld bc, $0101
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0000
    inc b
    ld bc, $0101
    ld bc, $0001
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    dec b
    ld bc, $0101
    nop
    ld bc, $0100
    ld b, $06
    ld b, $01
    ld bc, $0001
    nop
    dec b
    dec b
    dec b
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    ld b, $05
    dec b
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
    dec b
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
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0840], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    nop
    nop
    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0200
    ld bc, $0003
    ld bc, $0300
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    nop
    ld [$0800], sp
    nop
    ld [$1700], sp
    nop
    stop
    stop
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
    ld b, b
    nop
    ld h, b
    nop
    jr jr_06b_5ff0

jr_06b_5ff0:
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    inc bc
    nop
    inc c
    nop
    jr nc, jr_06b_601a

jr_06b_601a:
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
    nop
    rst $38
    nop
    rst $28
    db $10
    ld l, a
    sub b
    ld l, a
    sub b
    rra
    ldh [rNR31], a
    ldh [$33], a
    ret nz

    ld [hl], a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    jr @+$09

    jr @+$09

    ld de, $0f0e
    nop
    ld b, $01
    ld b, $01
    dec b
    ld [bc], a
    nop
    nop
    ld bc, $5100
    nop
    pop af
    nop
    ld sp, hl
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
    db $fd
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, $00
    ld c, $00
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
    add b
    nop
    pop hl
    nop
    dec sp
    nop
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
    add b
    nop
    add c
    nop
    add d
    nop
    add d
    nop
    ld a, h
    nop
    add d
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_06b_60da

jr_06b_60da:
    ld hl, $1300
    nop
    dec bc
    nop
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
    rra
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
    cp [hl]
    ld b, c
    adc a
    ld [hl], b
    adc [hl]
    ld [hl], c
    call z, $cc33
    inc sp
    sbc c
    ld h, [hl]
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    ld c, $c0
    ccf
    pop bc
    ld a, $83
    ld a, h
    sbc a
    ld h, b
    cp a
    ld b, b
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
    ld l, a
    rst $38
    add a
    ld a, a
    jp Jump_06b_403f


    ccf
    ld hl, sp+$07
    jr nz, @+$11

    call nc, Call_06b_4603
    ld bc, $0186
    add $01
    db $eb
    nop
    rst $38
    nop
    rst $30
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    ccf
    nop
    ld b, b
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
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_06b_6194

jr_06b_6194:
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
    rrca
    nop
    rra
    nop
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
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, $c1
    ld a, [hl-]
    push bc
    inc a
    jp Jump_06b_43bd


    sbc e
    ld h, a
    jp z, $c737

    ccf
    db $ec
    rra
    ld c, $ff
    ret c

    ccf
    ld d, d
    cp l
    adc a
    ld [hl], b

jr_06b_61d8:
    rrca
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$df]
    jr nz, @+$01

    nop
    ld a, a
    add b
    ld e, a
    and b
    rlca
    ld hl, sp+$17
    add sp, $3f
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    ld hl, sp-$01
    db $fc
    rst $38
    xor $ff
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$bf], a
    ldh [$1f], a

jr_06b_61ff:
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$0f
    ld hl, sp+$53
    db $fc
    ld [de], a
    db $fd
    sbc c
    ld a, [hl]
    rst $00
    jr c, @-$2f

    jr nc, jr_06b_61d8

    ld a, [hl-]
    rst $28
    db $10
    rst $28
    db $10
    and a
    jr @-$17

    jr jr_06b_61ff

    dec e
    db $f4
    ld a, [bc]
    rst $30
    ld [$0cf3], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
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
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    pop af
    ld c, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fe
    ld bc, $01fe
    db $fc

jr_06b_624f:
    inc bc
    db $fc
    inc bc
    ld a, $01
    ld e, $01
    inc c

jr_06b_6257:
    inc bc
    ld b, $01
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

jr_06b_6266:
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
    rst $18
    jr nz, jr_06b_6257

    ld hl, $30cf
    call c, $cf23
    jr nc, jr_06b_624f

    ld sp, $38c7
    add $39
    call z, $ee33
    ld de, $3bc4
    ld [c], a
    dec e
    and $19
    and d
    ld e, l
    add b
    ld a, a
    jp nz, $c03d

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    swap a
    add e
    ld a, a
    jp $c73f


    ccf
    ld c, a
    cp a
    rra
    rst $38

jr_06b_62aa:
    rra
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ret nc

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add l
    ld a, [$f807]
    rra
    ldh [rIF], a
    ldh a, [$9f]
    ld h, b
    rst $08
    jr nc, jr_06b_6266

    ld h, b
    rst $18
    jr nz, jr_06b_62aa

    jr nz, @+$01

    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    pop bc
    ccf
    ret nz

    ccf
    ldh [$1f], a
    add sp, $17
    ld h, b
    rra
    or c
    ld c, $e6
    add hl, de
    ld [c], a
    dec e
    rst $30
    ld [$00ff], sp
    db $fd
    nop
    cp $00
    ld [$e800], a
    nop
    ldh a, [rP1]
    rst $20
    nop
    rst $30
    nop
    pop af
    ld [bc], a
    rst $28
    nop
    sbc a
    nop
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$06f9], sp
    ld sp, hl
    ld b, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_06b_6321:
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
    ld hl, sp+$07
    and l
    ld e, d
    ldh a, [rIF]
    ldh [$1f], a
    ld [hl], b
    adc a
    jr jr_06b_6321

    ld [$00f7], sp
    rst $38
    nop
    rst $38
    inc c
    di
    nop
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    ld [bc], a
    db $fd
    add h
    ld a, e
    jr nz, @+$01

    add b
    ld a, a
    or b
    ld a, a
    jr nc, @+$01

    db $10
    rst $38
    and b
    ld a, a
    add c
    ld a, a
    nop
    rst $38
    jp nc, $107f

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
    ld [bc], a
    rst $38
    inc c
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    db $e3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$3d
    db $fc
    adc a
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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
    inc l
    db $d3
    inc h
    ret nz

    db $fc
    nop
    db $f4
    nop
    or $00
    ld [$ec00], a
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    ld bc, $8000
    nop
    push bc
    nop
    rst $28
    nop

jr_06b_63c6:
    cp a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06b_63d0:
    cp $01
    rst $38
    nop
    rst $38
    nop

jr_06b_63d6:
    rst $38
    nop
    rst $38
    nop
    ld h, a

jr_06b_63db:
    sbc b
    rst $20
    jr jr_06b_63c6

    jr @+$4a

    or a
    ld b, c
    cp [hl]
    ld l, b
    sub a
    ld e, [hl]
    and c
    ld e, a

jr_06b_63e9:
    and b
    rst $30

jr_06b_63eb:
    ld [$50af], sp
    rst $08
    jr nc, jr_06b_63d0

    jr nz, jr_06b_63d6

    inc e
    call z, $9f33
    ld h, b
    ccf
    ret nz

    dec a
    jp nz, $f20d

    call Call_06b_6532
    sbc d
    jr z, jr_06b_63db

    ld [bc], a
    db $fd
    nop
    rst $38
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
    rrca
    ldh a, [rNR31]
    db $e4
    jr nc, jr_06b_63e9

    jr nc, jr_06b_63eb

    jr nc, @-$2f

    di
    inc c
    ld [de], a
    db $ed
    ld e, c
    and [hl]
    ld e, b
    and a
    ld e, b
    and a
    ld [$0cf7], sp
    di
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    rrca
    rst $38
    ld b, e
    rst $38
    ld bc, $85ff
    rst $38
    ei
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add hl, de
    and $7f
    add b
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
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    db $fd
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld c, $f1
    ld bc, $1ffe
    ldh [$fe], a
    ld bc, $00d9
    ld d, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    call z, $fc00
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, b
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    ld b, b
    nop
    add b
    nop
    and b
    nop
    and b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ret c

    jr nz, jr_06b_6542

    sub b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
    ld a, [hl]
    add b
    cp a
    ld b, b
    sbc a
    ld h, b
    rst $28
    db $10
    rst $30
    ld [$0cf3], sp
    db $fc
    inc bc
    or $09
    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rNR13]
    db $ec
    ld b, h
    cp e
    ld b, $f9
    ld l, h
    sub e
    ld c, b
    or a
    add b
    ld a, a
    ld h, b
    sbc a
    db $10
    rst $28
    ld [$84f7], sp
    ld a, e
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
    pop hl
    rst $38
    rst $28
    rst $38
    nop
    rst $38

Call_06b_6532:
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
    ret nc

    cpl
    add sp, $17
    sbc h
    ld h, e

jr_06b_6542:
    or h
    ld c, e
    cp b
    ld b, a
    inc b
    ei
    pop hl
    ld e, $a3
    ld e, h
    dec [hl]
    jp z, $847b

    inc b
    nop
    rrca
    nop
    inc [hl]
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    ld [bc], a
    ret nz

    ld [$08c0], sp
    ret nz

    add b
    jp $ff80


    inc bc
    rst $38
    cp a
    rst $38
    db $e4
    rst $38
    ldh [$df], a
    jp Jump_06b_4fff


    rst $30
    ld b, a
    rst $38
    ld a, a
    rst $38
    rst $30
    ld a, a
    jp $c37f


    ld a, a
    jp $ef7f


    ld a, a
    cp a
    ld a, a
    and c
    ld a, a
    ldh [$3f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    db $ec
    inc de
    rst $38
    nop
    rst $38
    nop
    add a
    db $10
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    db $ec
    nop
    rst $00
    nop
    ld a, l
    nop
    rst $38
    nop
    ld l, d
    add b
    ret z

    nop
    ld h, b
    nop
    add hl, sp
    nop
    inc e
    nop
    ld [$0800], sp
    nop
    stop
    inc d
    nop
    add sp, $00
    adc h
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    and b
    nop
    ld e, a
    nop

jr_06b_65e8:
    ld hl, sp+$00
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, a
    add b
    dec sp
    ret nz

    cp [hl]
    ld b, b
    rst $18
    jr nz, jr_06b_65e8

    db $10
    rst $08
    jr nc, @+$59

    xor b
    ld d, e
    xor h
    sbc c
    ld h, [hl]
    add h
    ld a, e
    ld h, $d9
    nop
    rst $38
    inc d
    db $eb
    nop
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
    nop
    rst $38
    nop

jr_06b_6619:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fd
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
    ret nz

    rst $38
    ld b, b
    nop
    rst $38
    inc b
    ei
    inc bc
    db $fc
    nop
    rst $38
    jr nz, jr_06b_6619

    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    db $ed
    nop
    rst $08
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $0112
    ld [bc], a
    ld bc, $0300
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $e4
    rra
    ld [$18ff], sp
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $1c
    ei
    ld a, $f9
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    di
    db $fc
    ei
    db $f4
    rst $38
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$01
    ldh [$1f], a
    ldh [$5f], a
    and b
    jr c, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    db $dd
    ld [hl+], a
    ei
    nop
    ldh [rP1], a
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
    ldh [rP1], a
    ldh [rP1], a
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
    ld bc, $0200
    nop
    ld b, $00
    ld b, $00
    adc e
    nop
    ld c, a
    nop
    ld h, e
    nop
    ld c, b
    nop
    ld [hl+], a
    nop
    call nz, $8400
    nop
    rlc b
    rst $08
    nop
    rst $38
    nop
    or a
    nop
    ccf
    nop
    rst $08
    nop
    rst $28
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @-$3f

    ld b, b
    rra
    ldh [$9f], a
    ld h, b
    sbc a
    ld h, b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rSB]
    cp $06
    ld sp, hl
    inc hl
    call c, $ff00
    ld [bc], a
    db $fd
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
    dec b
    rst $38
    ret nz

    ccf
    call nz, $c03f
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    sub c
    rst $28
    and c
    rst $18
    ld [de], a
    db $ed
    inc hl
    call c, $bc4b
    dec bc
    db $fc
    adc h
    ld a, a
    dec b
    cp $08
    rst $38
    adc b
    ld a, a
    ld b, b
    cp a
    inc l
    db $d3
    cp h
    ld b, e
    ld e, h
    and e
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $60fe
    sbc a
    pop hl
    ld e, $c2
    dec a
    inc bc
    db $fc
    rla
    add sp, $27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$26
    ld sp, hl
    and [hl]
    ld a, c
    ld b, $f9
    inc b
    ei
    dec b
    ld a, [$fa15]
    dec de
    db $f4
    ld d, l
    ld a, [$729d]
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [$8f]
    ld [hl], b
    nop
    rst $38
    nop
    rst $38
    cp h
    rst $38
    cp a
    ld b, b
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02f0
    ldh a, [rTAC]
    di
    rlca
    di
    rlca
    ld a, [c]
    rlca
    ld a, [c]
    rlca
    ld a, [c]
    rlca
    ldh a, [rTAC]
    ld a, [c]
    rrca
    ld a, [c]
    ld [bc], a
    rrca
    ld [hl-], a
    rrca
    ld b, $0f
    or [hl]
    rrca
    sub $0f
    db $76
    rrca
    or $0f
    and [hl]
    rrca
    or $0f
    sub $0f
    or d
    rrca
    ld [hl], d
    rrca
    or $0f
    or a
    rrca
    or $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    ld a, [hl]
    rrca
    rst $38
    rrca
    rst $38
    rrca
    cp $0f
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    adc a
    cpl
    rst $18
    ld e, a
    xor a
    rst $08
    rlca
    pop af
    nop
    ret nz

    nop
    add b
    nop
    ldh a, [rLCDC]
    cp $38
    rst $38
    rra
    ld c, a
    cp a
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $00
    ldh a, [rIF]
    xor b
    ld d, a
    sub e
    ld l, l
    ld sp, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld sp, hl
    rra
    pop hl
    ccf
    pop bc
    ccf
    ldh [$7f], a
    db $fc
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $21
    sbc $a0
    rst $18
    and c
    sbc $29
    sub $00

jr_06b_6847:
    rst $38
    adc b
    rst $30
    add h
    ei
    sbc b
    rst $30
    jr jr_06b_6847

    inc e
    di
    ld h, c
    sbc [hl]
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, l
    sub b
    ld l, [hl]
    sub b
    inc l
    sub b
    dec l
    sub b
    xor $10
    xor c
    db $10
    and c
    db $10
    add c
    db $10
    adc c
    db $10
    add b
    db $10
    ld bc, $6410
    rst $38
    ld b, [hl]
    rst $38
    ld b, e
    rst $38
    ld h, a
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06b_688b:
    rst $38
    ld bc, $ff00
    nop
    rst $38
    rst $38
    nop
    rst $38
    add d

jr_06b_6895:
    nop
    rst $18
    nop
    rst $30
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld c, c
    nop
    rst $00
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp c
    ld b, [hl]
    jr z, jr_06b_688b

    jr nz, jr_06b_6895

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $30

jr_06b_68be:
    ld [$89f7], sp
    rst $30
    pop bc
    rst $38
    add e
    rst $38
    jp $8bff


    rst $38
    jp nz, $90ff

    rst $38
    ret nc

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret z

    rst $38
    ret c

    rst $38
    sub $ff
    reti


    rst $38
    reti


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
    ld a, a
    rst $38
    rst $20
    rra
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    jr c, jr_06b_68be

    db $76
    jr c, @+$81

    ld a, [hl]
    ld a, a
    ld a, a
    cp $7f
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld [c], a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, $ff
    nop
    ld h, a
    ld [bc], a
    adc $05
    rst $38
    db $fc
    ld [hl], d
    ld sp, hl
    rst $28
    db $10
    di
    nop
    ei
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    inc l
    jp $807f


    ld e, a
    add b
    db $fd
    nop
    ld l, h
    add b
    db $ec
    nop
    and h
    nop
    dec h
    nop
    ld l, $00
    dec sp
    inc b
    dec de
    inc b
    dec sp
    inc b
    add hl, sp
    ld b, $72
    dec c
    add hl, sp
    ld b, $7f
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    cp a
    nop
    ld c, d
    nop
    inc b
    nop
    ld bc, $d7ff
    rst $38
    ld d, a
    rst $38
    rst $38
    nop
    ld [bc], a
    nop
    ld [$2100], sp
    nop
    ld [$3e00], sp
    nop
    cpl
    nop
    dec bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0000
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
    ld e, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    dec c
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
    cp $01
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    ld hl, sp+$07
    jp nc, $a02d

    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    ccf
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rra
    rrca
    rrca
    rrca
    rra
    rrca
    inc e
    rra
    ld hl, sp+$1f
    ldh a, [rIE]
    db $ec
    rst $30
    call nz, $e03f
    sbc a
    db $fc
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    sub c
    cp [hl]
    ld bc, $819e
    db $fc
    jp $fff8


    cp $ff
    db $fc
    rst $38
    rst $38
    db $fc
    jr c, @+$01

    ld c, $f5
    inc b
    rst $38
    nop
    rst $38
    ld bc, $e3fe
    ld e, $e2
    rra
    ret nc

    rrca
    ld d, b
    adc a
    ld d, c
    adc a
    ld sp, $1bcf
    push hl
    sub h
    ld l, e
    sbc d
    ld h, l

jr_06b_6a3c:
    ld e, d
    dec h
    ld a, d
    dec b
    ld e, h
    inc hl
    sbc l
    ld [hl+], a
    cp $01

jr_06b_6a46:
    ld a, [hl]
    ld bc, $01be

jr_06b_6a4a:
    adc $31
    add $39
    add $39
    rst $20
    jr jr_06b_6a4a

    jr jr_06b_6a3c

    jr jr_06b_6a46

    db $10
    rst $30
    ld [$08f3], sp
    ld b, l
    ld [$0847], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    nop
    nop
    add d
    nop
    push bc
    nop
    ld l, a
    nop
    ccf
    nop
    cp $01
    rst $38
    nop
    ei
    nop
    ld l, e
    nop
    cp l
    nop
    rrca
    nop
    and a
    nop
    rst $18
    nop
    ld l, [hl]
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld h, l
    nop
    daa
    nop
    dec e
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld b, e
    cp a
    nop
    rst $38
    add h
    ld a, a
    ret nc

    cpl
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld c, $ff
    ld [hl-], a
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    ccf
    pop hl
    ccf
    pop hl
    rra
    db $fc
    rra
    db $fc
    rra
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ld hl, sp+$07
    ld hl, sp+$43
    db $fc
    inc bc
    db $fc
    ld b, c
    cp $03
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
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
    ld b, b
    cp a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, h
    db $db
    ld d, b
    rst $28
    ld d, b
    rst $28
    ld b, d
    db $fd
    ld [hl-], a
    db $ed
    xor b
    ld [hl], a
    xor d
    ld [hl], l

jr_06b_6b2e:
    ld c, c
    or [hl]
    ld c, l
    or d
    db $ed
    ld [de], a
    rst $20
    jr jr_06b_6b2e

    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ei
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    or c
    ret nc

    nop
    stop
    cp b
    nop
    ld c, h
    nop
    pop hl

jr_06b_6b51:
    nop
    ret nc

    jr nz, jr_06b_6b51

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    ld a, [$fa00]
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $30
    nop
    or a
    ldh [$f8], a
    ldh [$ba], a
    ldh [$3d], a
    ldh [$3e], a
    ldh [$3b], a
    ldh [$3d], a
    ldh [rPCM12], a
    ldh [$7b], a
    ldh [$78], a
    ldh [$7c], a
    ldh [rOCPD], a
    ldh [rOCPS], a
    ldh [$73], a
    ldh [rOCPS], a
    ret nz

    or $c0
    rst $38
    ret nz

    cp $c0
    sbc $e0
    sbc $e0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    add b
    add b
    add b
    add b
    add sp, -$80
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $30
    adc b
    rst $38
    add b
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
    inc bc
    rst $38
    rlca
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld h, b
    rst $38
    ldh [rIE], a
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
    ld a, [bc]
    push af
    ld sp, hl
    nop
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    add b
    ld a, a
    add b
    dec a
    ret nz

    rra
    ret nz

    ld a, $c0
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_06b_6c2e:
    nop
    rst $38
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_06b_6c2e

    nop
    di
    ld [$08f6], sp
    cp $00
    sbc $00
    db $fc
    nop
    add $ff
    ldh [rIE], a
    cp $ff
    add c
    ld a, a
    ld [hl], b
    rrca
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld h, b
    rra
    ldh [$1f], a
    db $e4
    rra
    ld h, b
    rra
    ldh a, [rIF]
    cp h
    inc bc
    cp b
    rlca
    ld e, [hl]
    ld bc, $035c
    inc c
    inc bc
    adc [hl]
    ld bc, HeaderGlobalChecksum
    ld l, $01
    sbc $01
    cp [hl]
    ld bc, $01fe
    rst $38
    nop
    rst $18
    nop
    ld a, a
    nop
    scf
    nop
    inc bc
    nop
    cpl
    nop
    sbc a
    nop
    rst $28
    nop
    ld e, a
    nop
    rst $08
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $08
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    ld a, $c1
    rra
    ldh [$3c], a
    jp $8f70


    db $10
    rst $28
    inc b
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
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
    ccf
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    and b
    ld e, a
    ld b, b
    cp a
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    nop
    db $fd
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
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$88]
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
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
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld c, $ff
    add [hl]
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    ld bc, $c0fe
    ccf
    add b
    ld a, a
    call nz, $ec3f
    rra
    jp $e33c


    inc e
    db $e3
    inc e
    pop af
    ld c, $f3
    inc c
    ei
    inc b
    rst $30
    ld [$06f9], sp
    db $fd
    ld [bc], a
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$fa05]
    dec b
    pop af
    ld c, $e3
    inc e
    rst $20
    jr @-$1b

    inc e
    pop de
    ld a, $d0
    ccf
    sub b
    ld a, a
    ret nc

    ccf
    add b
    ld a, a
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    pop hl
    cp $e1
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    db $e4
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    sbc [hl]
    rst $38
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    add hl, bc
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld d, $e9
    ld b, $f9
    ld c, $f1
    db $10
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    di
    inc c
    rst $38
    nop
    db $fc
    inc bc
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    add b
    rst $38
    ld sp, hl
    rst $38
    ld [hl], c
    rst $38
    ld e, d
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    dec de
    db $e4
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_06b_6e44:
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

jr_06b_6e52:
    ld a, a
    add b
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
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    ei
    inc b
    pop af
    ld c, $35
    ret z

    jr c, jr_06b_6e44

    ld hl, sp+$00
    cp h
    ld b, b
    inc a
    ret nz

    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]

jr_06b_6e90:
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    rst $20
    jr jr_06b_6e90

    jr jr_06b_6e52

    ld e, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$1e
    pop af
    dec c
    ld a, [c]
    dec bc
    db $f4
    dec bc
    db $f4
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    and c
    cp $81
    cp $01

jr_06b_6ec9:
    cp $c8
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld [$04ff], sp
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
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_06b_6ec9

    ld b, b
    cp a

jr_06b_6eec:
    inc h
    rst $18
    ld c, b
    or a
    ld [bc], a
    db $fd
    ld bc, $0ffe
    ldh a, [rTAC]
    ld hl, sp-$31
    jr nc, @+$7e

jr_06b_6efb:
    add e

jr_06b_6efc:
    cp l
    ld b, d
    ret nz

    ccf
    xor $11
    rst $18
    jr nz, jr_06b_6efb

    add hl, bc
    ei
    inc b
    ld hl, sp+$07
    rst $18
    jr nz, jr_06b_6eec

    jr nz, jr_06b_6efc

    ld [de], a
    pop hl
    ld e, $f0
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $fd
    ld [bc], a
    ld b, $f9
    ld h, [hl]
    sbc c
    daa
    ret c

    daa
    ret c

    xor a
    ld d, b
    adc a
    ld [hl], b
    xor [hl]
    ld d, c
    xor $11
    rst $28
    db $10
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
    rst $38
    nop
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
    db $fd
    nop
    cp $00
    db $fc
    nop
    cp $00
    db $fc
    nop
    cp $00
    db $fc
    nop
    ld a, [$fc04]
    nop
    db $fc
    nop
    or $08
    ldh a, [$08]
    db $fc
    nop
    db $f4
    nop
    ld [c], a
    nop
    add d
    nop
    ld bc, $8100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    jr nz, jr_06b_6f88

jr_06b_6f88:
    stop
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a

jr_06b_6fa2:
    cp $00
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
    ei
    inc b
    rst $20
    jr jr_06b_6fa2

    db $10
    rrca
    ldh a, [rIE]
    nop
    rst $38

jr_06b_6fb9:
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
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld e, h
    and e
    inc e
    db $e3
    inc e
    db $e3
    jr jr_06b_6fb9

jr_06b_6fd2:
    inc b
    rst $38

jr_06b_6fd4:
    ld c, $ff

jr_06b_6fd6:
    ld c, $ff

jr_06b_6fd8:
    ld [hl], $cf
    ld h, d
    sbc a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    db $f4
    dec bc
    ld a, [c]
    dec c
    or $09
    push hl
    ld a, [de]
    ld b, d
    cp l
    ld [bc], a
    db $fd
    dec e
    ld [c], a
    ld b, $f9
    call $9032
    ld l, a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    sub h
    ld l, e
    ld [de], a
    db $fd
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    pop af
    ld c, $f0
    rrca
    jr nc, jr_06b_6fd2

    jr nc, jr_06b_6fd4

    jr nz, jr_06b_6fd6

    jr nz, jr_06b_6fd8

    ld h, b
    add b
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    add b
    nop
    stop
    ld e, $00
    ld a, $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld b, $00
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    stop
    jr jr_06b_705e

jr_06b_705e:
    ld [$0500], sp
    nop
    ld [bc], a
    nop
    inc b
    nop
    jr jr_06b_7068

jr_06b_7068:
    stop
    jr nz, jr_06b_706c

jr_06b_706c:
    ld b, b
    nop
    ld b, b
    nop
    sub [hl]
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    add [hl]
    nop
    call z, $f800
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$90], a
    ld l, a
    nop
    rst $38
    jr @+$01

    inc c
    rst $38
    nop
    rst $38
    ld b, c
    cp a
    call Call_06b_5833
    and a
    ld bc, $01fe
    cp $78
    add a
    ld a, l
    add d
    ld e, [hl]
    and c
    push bc
    ld a, [hl-]
    rst $38
    nop
    rlca
    ld hl, sp+$17
    add sp, $4a
    or l
    ld b, b
    cp a
    nop
    rst $38
    ld d, d
    db $ed
    ld c, a
    ldh a, [rDIV]
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
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
    jr nz, jr_06b_70fe

jr_06b_70fe:
    ld b, b
    nop
    ret nz

    nop
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
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
    jr nz, jr_06b_711c

jr_06b_711c:
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld [$0800], sp
    nop
    ld [$1000], sp
    nop
    jr nz, jr_06b_713c

jr_06b_713c:
    ld h, b
    nop
    sub b
    nop
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
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
    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, e
    add h
    ld a, [hl-]
    push bc
    ld e, c
    and [hl]
    ld a, l
    add d
    ld a, [hl+]
    push de
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    rrca
    ldh a, [$89]
    db $76
    inc b
    ei
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    db $e4
    rra
    ret c

    daa
    xor $11
    ld l, [hl]
    sub c
    ld b, a
    cp b
    db $e3
    inc e
    di
    inc c
    nop
    ld bc, $0302
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1204
    inc de
    inc d
    dec d
    inc b
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    inc b
    inc b
    inc b
    inc b
    ld e, $1f
    jr nz, jr_06b_71fa

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06b_720a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06b_721a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06b_722a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_06b_71fa:
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

jr_06b_720a:
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
    ld h, c
    ld h, d

jr_06b_721a:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld d, [hl]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_06b_722a:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld de, $7a79
    ld d, [hl]
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
    inc b
    inc b
    add [hl]
    add a
    adc b
    ld d, [hl]
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
    sub h
    sub l
    inc b
    sub [hl]
    ld d, [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sub c
    add l
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
    xor c
    xor d
    xor e
    xor h
    xor l
    inc b
    inc b
    xor [hl]
    inc b
    inc b
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
    xor l
    inc b
    cp c
    cp d
    cp e
    cp h
    cp l
    ld d, [hl]
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_06b_5656

    ld d, [hl]
    set 1, h
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
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
    inc b
    inc b
    ld d, $17
    inc b
    inc b
    inc b
    jr jr_06b_7304

    ld a, [de]
    dec de
    inc e
    rr l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06b_7304:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $06
    ld b, $01
    ld bc, $0000
    nop
    jr nz, jr_06b_7374

jr_06b_7374:
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
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
    ld b, $01
    dec b
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
    ld b, $02
    rlca
    nop
    ld b, $01
    ld bc, $4000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    rlca
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
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
    ld b, $06
    dec b
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
    nop
    nop
    dec b
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
    nop
    nop
    nop
    dec b
    ld bc, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
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
    ld [$0d0e], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e08], sp
    ld [$0808], sp
    nop
    nop
    ld [$0008], sp
    nop
    nop
    ld [$0808], sp
    ld [$4008], sp
    ld [$0001], sp
    nop
    nop
    jr jr_06b_7436

jr_06b_7436:
    inc a
    nop
    ld h, [hl]
    nop
    pop bc
    nop
    add c
    nop
    ld de, $2300
    nop
    ld e, $00
    ld de, $1000
    nop
    stop
    ld h, b
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
    ret nz

    nop

jr_06b_745e:
    jr nz, jr_06b_7460

jr_06b_7460:
    jr nz, jr_06b_7462

jr_06b_7462:
    stop
    ld [$0800], sp
    nop
    ld b, $00
    ld [bc], a
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    stop
    ld h, b
    nop
    sub b
    nop
    ld [$0c00], sp
    nop
    ld b, $00
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06b_749d:
    nop
    nop
    nop
    nop
    nop

jr_06b_74a2:
    nop
    nop

jr_06b_74a4:
    nop
    nop
    nop
    nop
    nop
    nop

jr_06b_74aa:
    nop
    nop

jr_06b_74ac:
    ld d, b
    jr nz, jr_06b_750f

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    jp nz, $c300

    nop
    ld c, a
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_06b_74aa

    jr nz, jr_06b_74ac

    jr nz, jr_06b_745e

    ld [hl], b
    rst $08
    jr nc, jr_06b_74a2

    jr nc, jr_06b_74a4

    jr nc, jr_06b_749d

    add hl, sp
    jp $c23c


    inc a
    jp nz, $c23c

    inc a
    add $38
    jp $c13c


    ld a, $c3
    inc a
    add a
    ld a, b
    rlca
    ld hl, sp-$24
    inc hl
    and b
    ld e, a
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ld b, b
    ccf
    pop de
    cpl
    jp nz, $cd3f

    ld a, $51
    cp [hl]
    ld [hl-], a
    db $ed
    ld [hl], e
    call z, $80ff
    ld l, e
    sub h
    rra
    ldh [$4e], a
    or c
    nop
    rst $38
    rst $38

jr_06b_750f:
    nop
    ld l, a
    sub b
    rst $28
    db $10
    rst $38
    nop
    rla
    add sp, -$80
    ld a, a
    ret nz

    ccf
    adc [hl]
    ld [hl], c
    inc sp
    call z, Call_000_000f
    ld b, l
    ld [bc], a
    jp $8000


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
    ldh [rP1], a
    stop
    inc c
    nop
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
    ld b, b
    nop
    jr c, jr_06b_7556

jr_06b_7556:
    ld [$0c00], sp
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
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
    ret nz

    nop
    ld b, b
    nop
    jr nz, jr_06b_757c

jr_06b_757c:
    stop
    ld [$0600], sp
    nop
    nop
    nop
    nop
    nop
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
    inc b
    nop
    rrca
    nop
    dec e
    ld [bc], a
    rra
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$10ef], sp
    db $ed
    ld [de], a
    push hl
    ld a, [de]
    ei
    nop
    ld a, [de]
    nop
    ld e, $00
    ld e, $00
    ld d, h
    ld [$08b7], sp
    inc sp
    inc c
    rst $30
    ld [$0ff0], sp
    ldh a, [rIF]
    or c
    ld c, a
    rlca
    cp $0f
    ld hl, sp+$1f
    ldh a, [$3c]
    db $e3
    ld a, [hl]
    pop bc
    ld sp, hl
    add [hl]
    inc a
    jp Jump_000_01fe


    rst $38
    nop
    cp $01
    rst $38
    nop
    db $e3
    inc e
    cp $01
    ld [hl], b
    adc a
    ret nz

    ccf
    nop
    rst $38
    inc bc
    db $fc
    ld l, $d1
    ld l, a
    sub b
    ld c, a
    or b
    ld c, e
    or h
    add hl, hl
    sub $0e
    pop af
    rst $38
    nop
    ld a, a
    add b
    rst $20
    jr jr_06b_7644

    nop
    dec sp
    ld b, b
    add e
    nop
    add e
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_06b_7620

jr_06b_7620:
    inc e
    nop
    ld [bc], a
    nop
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
    ld [$1f00], sp
    nop
    inc bc
    nop
    inc bc
    nop

jr_06b_7644:
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $00c3
    ld l, [hl]
    add c
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
    sbc $21
    cp $01
    cp $01
    db $f4
    dec bc
    ld a, d
    add l
    cp $01
    cp $01
    cp $01
    call c, $3c23
    jp $03fc


    cp h
    inc bc
    pop af
    rrca
    ld a, [$e40f]
    rra
    jp z, $d33d

    inc a
    and c
    ld a, [hl]
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $c03c


    ccf
    add d
    ld a, l
    rst $38
    nop
    rst $38
    nop
    ld [de], a
    db $ed
    inc c
    di
    call z, $8033
    ld a, a
    db $f4
    dec bc
    add sp, $17
    ld l, b
    sub a
    add e
    ld a, h
    rrca
    ldh a, [$fd]
    ld [bc], a
    db $fd
    ld [bc], a

jr_06b_76ae:
    ei
    inc b
    ccf
    ret nz

    rst $38
    nop
    sbc $21
    rst $18
    jr nz, jr_06b_76d8

    ldh [$9f], a
    ld h, b
    rst $08
    jr nc, jr_06b_76ae

    db $10
    or b
    ld c, a
    ret c

    daa
    sbc b
    ld h, a
    sub b
    ld h, a
    sbc b
    ld h, a
    ld [hl], l
    ld [bc], a
    push de
    ld [hl+], a
    ld e, l
    ld [hl+], a
    ld d, l
    ld [hl+], a
    ld d, l
    ld [hl+], a
    ld d, h
    inc hl
    ld d, h
    inc hl

jr_06b_76d8:
    ld [de], a
    ld hl, $0136
    cp [hl]
    ld bc, $017a
    ld h, e
    db $10
    dec hl
    db $10
    rst $30
    nop
    ld h, e
    db $10
    ld h, l
    db $10
    ld l, b
    db $10
    ld a, d
    nop
    ld a, d
    nop
    ld sp, $0400
    nop
    dec b
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0700
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0600
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $6700
    nop
    dec d
    nop
    ld e, $00
    rrca
    nop
    dec b
    nop
    jr jr_06b_771c

jr_06b_771c:
    dec de
    nop
    rrca
    nop
    dec c
    nop
    add hl, de
    nop
    cp a
    nop
    or e
    nop
    sub c
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld a, d
    nop
    ld a, h
    ld bc, $017e
    db $f4
    dec bc
    db $f4
    dec bc
    add h
    ld a, e
    add b
    ld a, a
    db $10
    rst $28
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
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
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr c, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld b, h
    ei
    add a
    ld hl, sp+$2f
    ret nc

    ld [c], a
    dec e
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld b, b
    cp a
    adc h
    ld [hl], e
    nop
    rst $38
    xor $11
    ld a, d
    add l
    ld l, l
    sub d
    ld [$09f7], sp
    or $13
    db $ec
    inc bc
    db $fc
    dec b
    ld a, [$fb04]
    ld [$59f7], sp
    and [hl]
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$01fe], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $10
    jr z, @+$01

    nop
    db $76
    adc c
    rst $38
    nop
    db $10
    rst $28
    db $10
    rst $28
    ld d, d
    xor l
    db $db
    inc h
    db $db
    inc h
    ld e, e
    and h
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    db $76
    add b
    ld a, $c0
    add hl, sp
    ret nz

    or l
    ld b, b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    dec a
    ret nz

    ld a, $c0
    ld a, $c0
    dec a
    ret nz

    dec sp
    ret nz

    cp [hl]
    ld b, b
    cp h
    ld b, b
    cp [hl]
    ld b, b
    cp l
    ld b, b
    cp a
    ld b, b
    ccf
    ld b, b
    cp [hl]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    xor a
    nop
    rst $28
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    rra
    nop
    db $fc
    inc bc
    call c, Call_06b_5c03
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    inc a
    inc bc
    ld a, a
    nop
    db $fc

jr_06b_7823:
    inc bc
    db $fd
    ld [bc], a
    db $ec
    inc de
    xor $11
    call nz, $883b
    ld [hl], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    cp $01
    ld hl, sp+$07
    ldh a, [rP1]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    jr nz, jr_06b_7823

    rra
    rst $28
    db $10
    rst $28
    dec d
    rst $28
    db $10
    rst $28
    inc d
    rst $28
    sub b
    ld l, a
    inc d
    rst $28
    db $10
    ldh [rNR14], a
    rst $28
    db $10
    rst $28
    inc d
    rst $28
    db $10
    rst $28
    inc d
    rst $28
    db $10
    rst $28
    dec d
    rst $28
    ld d, b
    xor a
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    inc bc
    db $fc
    ld [$a2f7], sp
    ld e, l
    ld h, b
    sbc a
    add b
    ld a, a
    and d
    ld e, l
    db $10
    rst $28
    ld a, h
    add e
    db $fc
    inc bc
    jr @-$17

    jr @-$17

    db $10
    rst $28
    add b
    ld a, a
    ld b, a
    cp b
    inc de
    db $ec
    add l
    ld a, d
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    cp $01
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    cpl
    ret nc

    daa
    ret c

    or a
    ld c, b
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
    ei
    inc b
    ei
    inc b
    ei
    inc b
    sbc a
    nop
    rst $30
    nop
    rst $10
    nop
    rst $38
    nop
    ld [hl], a
    nop
    add $01
    di
    nop
    add a
    nop
    ld [$b901], sp
    nop
    ld h, b
    nop
    ld b, c
    nop
    inc de
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec de
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld a, [hl]
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
    ld a, a
    add b
    ld e, a
    and b
    ld e, a
    and b
    ld c, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    cp l
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp e
    ld b, h
    dec bc
    db $f4
    and a
    ld e, h
    ld hl, $01de
    cp $00
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
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
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    nop
    rst $18
    ld d, b
    rst $18
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld d, b
    rst $18
    nop
    rst $18
    nop
    rst $38
    inc b
    ei
    ld d, a
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    ld a, [$0105]
    cp $06
    ld sp, hl
    dec b
    ld a, [$fd02]
    ld [$a4f7], sp
    ld e, e
    inc b
    ei
    ld bc, $63fe
    sbc h
    daa
    ret c

    di
    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    cp a
    nop
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    add h
    ld a, e
    di
    rrca
    ld hl, sp+$07
    ei
    inc b
    rst $38
    nop
    cp a
    ld b, b

jr_06b_79cc:
    cp a
    ld b, b
    cp l
    ld b, b
    db $dd
    jr nz, jr_06b_79cc

    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $10
    ld [$803d], sp
    db $fc
    nop
    ccf
    add b
    sbc a
    nop
    sbc h
    nop
    xor c
    nop
    rst $08
    nop
    db $fd
    nop
    or [hl]
    ld [$08f5], sp
    db $f4
    ld [$00fd], sp
    ldh [rP1], a
    pop bc
    nop
    push bc
    nop
    sub h
    nop
    xor $00
    ld a, [c]
    nop
    db $fd
    nop
    ld a, [$fb00]
    nop
    rst $30
    nop
    and a
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$9f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $08
    ld [hl], b
    ld c, [hl]
    pop af
    inc b
    ei
    inc b
    ei
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
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
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    nop
    cp $02
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a

jr_06b_7a59:
    cp $00
    cp $00
    rst $38
    inc b
    ei
    db $fd
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    jr jr_06b_7a59

    inc e
    db $e3
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    nop
    ld hl, sp+$24
    jp nz, $c002

    ld b, b
    nop
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
    ld b, b
    nop
    db $fd
    nop
    db $fd
    nop
    cp [hl]
    nop
    cp a
    nop
    or e
    nop
    sbc e
    nop
    sbc h
    nop
    jr c, jr_06b_7ad6

jr_06b_7ad6:
    cp h
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    ld a, e
    nop
    ret nz

    nop
    ld [c], a
    nop
    sub [hl]
    nop
    sbc $00
    rrca
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $18

jr_06b_7af1:
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
    nop
    rst $10
    ld [$08f7], sp
    ld [c], a
    dec e
    and b
    ld e, a
    jr nz, jr_06b_7af1

    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
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
    cp $01
    cp $55
    cp $01
    cp $85
    cp $81
    cp $85
    cp $81
    add b
    add l
    cp $81
    cp $85
    cp $01
    cp $05
    cp $01
    cp $fe
    ld d, h
    cp $00
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld bc, $0194
    jr nz, @+$03

    ldh [$03], a
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    ret nz

    rrca
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
    ld a, a
    nop
    ld a, a
    ld bc, $81ff
    rst $38
    ld bc, $d8ff
    daa
    ld hl, sp+$07
    db $fc
    inc bc
    cp c
    ld b, $f6
    add hl, bc
    ldh [$1f], a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    nop
    dec de
    nop
    ld [de], a
    nop
    ld d, e
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    ret z

    nop
    ldh a, [rP1]
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
    and b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    or $00
    ld a, [c]
    nop
    ret z

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
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    inc e
    or b
    cpl
    ld [hl], b
    ld l, a
    ldh a, [$ef]
    ldh a, [$6f]
    ldh [$5f], a
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    rst $18
    ret nz

    rst $18
    ret nz

    sbc $c0
    rst $18
    ret nz

    rst $18
    ret nz

    call c, $d8c3
    rst $00
    ret c

    rst $00
    ret c

    rst $00
    ret nc

    rst $08
    ret nz

    rst $18
    ldh [rIE], a
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0e
    ldh a, [rNR32]
    db $fc
    add hl, sp
    ld hl, sp+$3c
    ldh a, [$30]
    ldh a, [$34]
    ld a, [$f220]
    ld a, [hl-]
    ldh [rBCPD], a
    ld a, [c]
    ld e, c
    ld [c], a
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld hl, $21df
    rst $18
    add b
    ld a, a
    adc d
    ld [hl], a
    ld c, d
    or a
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    stop
    jr nz, jr_06b_7c9c

jr_06b_7c9c:
    ret nz

    nop
    ret nz

    nop
    ld hl, sp+$00
    add b
    nop
    and b
    nop
    cp h
    nop
    cp h
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    or $00
    cp $00
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
    nop
    rst $38
    nop
    cp $01
    db $e4
    dec de
    db $e4
    dec de
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$18
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    db $eb
    inc d
    ld a, [$0805]
    rst $30
    nop
    rst $38
    db $10
    rst $28
    add hl, bc
    cp $0a
    db $fd
    inc l
    db $db
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $10
    cp $10
    db $fc
    inc d
    db $fc
    ld e, $fe
    ld a, l
    db $fd
    rst $38
    ld sp, hl
    add hl, hl
    ei
    ld b, c
    cp e
    add hl, sp
    ld b, e
    ld e, b
    add b
    ld [hl], b
    nop
    ld a, b
    add b
    sbc a
    jr nz, jr_06b_7d19

    xor l
    ld a, $8f
    ld c, a
    cp a
    rst $18
    ccf
    ccf

jr_06b_7d19:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    xor a
    ld a, a
    ld a, a
    cp a
    ldh [$1f], a
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_06b_7d52

jr_06b_7d52:
    stop
    jr jr_06b_7d56

jr_06b_7d56:
    inc c
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    jr jr_06b_7d80

jr_06b_7d80:
    scf
    nop
    ld b, b
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
    ld b, b
    nop
    db $fc
    nop
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
    rst $38
    nop
    cp a
    ld b, b
    ld a, d
    add l
    ld c, l
    or d
    dec bc
    db $f4
    ld a, [bc]
    push af
    nop
    rst $38
    ldh a, [rIF]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld hl, sp+$38
    rst $38
    rlca
    nop
    rst $38
    ld a, [bc]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    and [hl]
    rst $38
    dec sp
    rst $28
    ld e, h
    cp $62
    cp $34
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rTAC]
    nop
    rst $30
    nop
    xor $08
    ld a, h
    ld a, b
    or $f2
    ld a, [c]
    cp e
    xor a
    ei
    rst $28
    ei
    db $ed
    rst $38
    ld l, $3d
    rrca
    rra
    rra
    rlca
    ld h, a
    rst $08
    cp $8f
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $28
    rst $38
    rst $00
    dec sp
    rst $00
    ccf
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    add b
    nop
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
    nop
    nop
    inc bc
    nop
    ld b, $00
    ld [$1000], sp
    nop
    jr nz, jr_06b_7e40

jr_06b_7e40:
    ret nz

    nop
    jr nc, jr_06b_7e44

jr_06b_7e44:
    jr jr_06b_7e46

jr_06b_7e46:
    ld b, $00
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld b, $00
    ld c, $00
    ld [$0800], sp
    nop
    ld [$0000], sp
    nop
    inc b
    nop
    ld b, $00
    rrca
    nop
    ld b, $00
    rlca
    nop
    rlca
    nop
    dec bc
    nop
    rst $38
    nop
    di
    nop
    di
    nop
    rst $38
    nop
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    scf
    ret z

    dec b
    ld a, [$007f]
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $3fc2


    cp $17
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    or b
    ccf
    ld hl, sp+$7f
    ccf
    ccf
    ld a, a
    ld a, a
    ld [hl-], a
    ld [hl-], a
    ld h, e
    ld h, e
    ld a, a
    ld a, c
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    cp $7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld [$0df7], sp
    ld a, [c]
    dec c
    ld a, [c]
    rra
    ldh [rLY], a
    cp e
    ld [$ccf7], sp
    or e
    and h
    db $db
    ret z

    or a
    xor d
    push de
    jp z, $eab5

    sub l
    xor d
    push de
    xor $91
    cp a
    ret nz

    rst $38
    add b
    dec sp
    call nz, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    rlca
    nop
    ld a, l
    nop
    rst $08
    nop
    nop
    nop
    nop
    nop

jr_06b_7f1c:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld d, $00
    dec de
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ei
    nop
    db $ed
    nop
    rst $38
    nop
    rst $20
    nop
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    db $eb
    inc d
    rst $18
    jr nz, jr_06b_7f1c

    inc h
    ld [c], a
    dec e
    call z, $c133
    ld a, $83
    ld a, h
    add h
    ld a, e
    add d
    ld a, l
    add b
    ld a, a
    rst $30
    nop
    rst $38
    nop
    rra
    db $10
    ccf
    jr nc, jr_06b_7f98

    jr nc, jr_06b_7fda

    jr nc, @+$01

    ld [hl], b
    di
    db $fc
    db $fc
    di
    ldh a, [rIE]
    ld d, $f9
    ld a, [bc]
    db $fd
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, c
    sbc [hl]
    inc hl
    call c, $ff00
    nop
    rst $38
    inc hl
    call c, $708f
    adc [hl]
    pop af
    call nz, $e4fb
    ei
    db $e4
    ei
    ret z

    rst $30
    ld l, d
    sub c
    cp a
    ld b, b
    scf
    ret z

    adc $f1
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    or c
    ld a, [hl]
    db $ed
    ld [de], a

jr_06b_7f98:
    db $ec
    inc de
    ld h, h
    sbc e
    ld l, [hl]
    sub c
    ld a, a
    add b
    ld a, l
    add b
    ccf
    ret nz

    dec l
    ret nz

    ccf
    ret nz

    ld a, e
    add h
    add hl, de
    and $2c
    rst $10
    ld d, b
    xor a
    ld [hl-], a
    rst $08
    jr c, @-$37

    rst $38
    rst $38
    rst $38
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
    dec b
    nop
    ld de, $3f00
    nop
    cp a
    nop
    ld d, l
    nop
    db $fd
    nop
    cp a
    nop
    ccf
    nop

jr_06b_7fda:
    dec e
    nop
    jr c, jr_06b_7fde

jr_06b_7fde:
    add sp, $00
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, h
    nop
    add hl, sp
    nop
    rrca
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
    dec bc
    nop
    rla
    nop
