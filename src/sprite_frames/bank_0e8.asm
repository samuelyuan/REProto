SECTION "ROM Bank $0e8", ROMX[$4000], BANK[$e8]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0e8_408b

    nop
    nop
    scf
    ld a, a
    rra
    rlca
    dec sp
    rst $38
    ccf
    rra
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    scf
    rst $38
    ccf
    rra
    scf
    rst $38
    rra
    rlca
    inc bc
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0e8_40b4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e8_408b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e8_40b4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $fe
    nop
    nop
    or $ff
    nop
    nop
    xor $ff
    ld a, h
    ldh a, [$f6]
    rst $38
    ld a, [hl]
    db $fc
    or $ff
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    db $fc
    ldh [rIE], a
    ld a, h
    ldh a, [rSB]
    rst $38
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0e8_420b

    nop
    nop
    scf
    ld a, a
    inc bc
    inc bc
    add hl, sp
    rst $38
    rrca
    rrca
    inc sp
    rst $38
    rra
    rra
    inc sp
    rst $38
    rra
    rra
    scf
    ei
    ccf
    ccf
    scf
    ei
    ccf
    ccf
    inc sp
    rst $38
    ccf
    ccf
    inc sp
    rst $38
    rra
    ccf
    ld bc, $0eff
    ccf
    ret nz

    ccf
    ld b, l
    ld a, [hl]
    rst $30
    rrca
    ld h, d
    ld a, a
    db $fd
    inc bc
    ld a, a
    ld a, a
    dec e
    inc hl
    ld a, $3e
    nop
    nop
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop

jr_0e8_420b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $fe
    nop
    nop
    or $ff
    nop
    nop
    cp $ff
    ld [hl], b
    ldh a, [$fe]
    rst $38
    ld a, h
    db $fc
    cp $ff
    ld a, [hl]
    cp $fe
    ei
    ld a, [hl]
    cp $fe
    ei
    ld a, [hl]
    cp $fe
    rst $38
    ld a, [hl]
    cp $fe
    rst $38
    ld a, h
    cp $fe
    rst $38
    ld [hl], b
    cp $7f
    add e
    cp b
    call nz, $e7ff
    ld [hl], b
    adc b
    db $ed
    xor $e0
    db $10
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    add b
    add b
    rlca
    dec bc
    jr nc, @+$01

    ld c, $11
    scf
    rst $38
    rrca
    rla
    dec sp
    rst $38
    rra
    rra
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    dec [hl]
    cp $1f
    rra
    scf
    ei
    rlca
    rlca
    ld [bc], a
    db $fd
    nop
    ld bc, $ff00
    nop
    nop
    nop
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
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld b, $ff
    nop
    nop
    or $ff
    nop
    add b
    xor $ff
    ld [hl], b
    ldh a, [$f6]
    rst $38
    ld a, h
    db $fc
    or $ff
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $d6
    ccf
    ld a, [hl]
    cp $f6
    rst $28
    ld a, h
    db $fc
    and b
    ld e, a
    ld [hl], b
    db $fc
    nop
    cp $00
    ld hl, sp+$00
    ld bc, $08f0
    rlca
    inc bc
    ld h, b
    or b
    dec b
    inc bc
    and b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$01

    nop
    rlca
    scf
    rst $38
    rlca
    rra
    dec sp
    rst $38
    rra
    ccf
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    dec [hl]
    cp $1f
    rra
    scf
    ei
    rlca
    rlca
    ld [bc], a
    db $fd
    nop
    nop
    nop
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
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld b, $ff
    nop
    nop
    or $ff
    nop
    nop
    xor $ff
    ld [hl], b
    ldh a, [$f6]
    rst $38
    ld a, h
    db $fc
    or $ff
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $d6
    ccf
    ld a, [hl]
    cp $f6
    rst $28
    ld a, h
    db $fc
    and b
    ld e, a
    ld [hl], b
    db $fc
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    add d
    cp $00
    nop
    nop
    cp $00
    ld bc, $ff0f
    ld bc, $f001
    rst $38
    nop
    ld bc, $ffcf
    inc bc
    inc bc
    rst $30
    rst $38
    inc c
    rrca
    ld l, a
    rst $38
    inc e
    rra
    ld l, a
    rst $38
    ld a, $3f
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    dec hl
    db $fc
    ccf
    ld a, a
    ccf
    rst $30
    ccf
    ld a, a
    dec b
    ld a, [$3f00]
    ld hl, sp-$08
    ld e, $21
    nop
    nop
    dec c
    dec de
    ret nz

    add b
    dec bc
    rrca
    ld b, b
    add b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$03], a
    inc bc
    ret nz

    ldh a, [$03]
    inc bc
    ld a, b
    add b
    rrca
    rrca
    ld hl, sp-$04
    pop af
    rst $38
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    call c, $fcff
    db $fc
    db $ec
    rst $38
    ld a, h
    db $fc
    db $ec
    rst $38
    ld a, b
    ld hl, sp-$04
    rst $28
    ld [hl], b
    ldh a, [$f0]
    rst $28
    ld b, b
    ret nz

    and c
    ld a, a
    add b
    add b
    and $df
    nop
    add b
    ld e, b
    cp a
    nop
    add b
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    inc de
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
    cp $fe
    nop
    nop
    add d
    cp $00
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $ffff
    ld bc, $b001
    rst $38
    nop
    ld bc, $ffc0
    nop
    ld bc, $ffcf
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    inc bc
    ld l, a
    rst $38
    ld c, $0f
    ld l, a
    rst $38
    ld e, $1f
    ld a, a
    rst $28
    ld a, $3f
    ld a, a
    rst $28
    ccf
    ccf
    dec hl
    db $fc
    ccf
    ld a, a
    ccf
    rst $30
    ccf
    ld a, a
    dec b
    ld a, [$3f1f]
    add b
    rst $38
    rra
    jr nz, jr_0e8_47ff

jr_0e8_47ff:
    nop
    rra
    jr nz, jr_0e8_4803

jr_0e8_4803:
    nop
    ld c, $11
    add b
    add b
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$f0], a
    inc bc
    ld [bc], a
    ld [hl], b
    ldh [rSC], a
    inc bc
    ret nc

    ldh [rSB], a
    ld bc, $e080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$03], a
    inc bc
    ret nz

    ldh a, [$03]
    inc bc
    ld a, b
    add b
    inc bc
    inc bc
    ld a, h
    add b
    ld bc, $7c01
    add b
    nop
    nop
    inc b
    ld hl, sp+$31
    rst $38
    ld hl, sp-$04
    jr nc, @+$01

    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    call c, Call_0e8_7cff
    db $fc
    db $ec
    rst $38
    ld a, b
    ld hl, sp-$14
    rst $38
    ld [hl], b
    ldh a, [$fc]
    rst $28
    nop
    ret nz

    ldh a, [$ef]
    ld b, b
    ret nz

    and c
    ld a, a
    add b
    add b
    rst $20
    rst $18
    add b
    add b
    ld e, a
    cp a
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    inc de
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
    jr c, @+$3a

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
    nop
    ld a, [hl]
    nop
    nop
    nop
    cp $00
    nop
    ld h, b
    rst $38
    nop
    ld bc, $ff6f
    ld c, $0f
    ld [hl], a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, e
    db $fc
    ld a, $3f
    ld l, a
    rst $30
    ld c, $3f
    dec b
    ld a, [$1f00]
    nop
    ld a, a
    rrca
    stop
    add b
    ld b, $0d
    ldh [$c0], a
    dec b
    rlca
    and b
    ret nz

    inc bc
    inc bc
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
    ldh [$e0], a
    ld bc, $f001
    ldh a, [$0c]
    rst $38
    ldh [$d0], a
    db $ec
    rst $38
    ld [hl], b
    adc b
    call c, $f0ff
    add sp, -$14
    rst $38
    ld hl, sp-$08
    db $ec
    rst $38
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    xor h
    ld a, a
    db $fc
    db $fc
    db $ec
    rst $18
    ld hl, sp-$08
    ld b, b
    cp a
    ldh [$e0], a
    nop
    rst $38
    nop
    add b
    nop
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
    jr c, jr_0e8_4af8

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld h, b
    rst $38
    nop
    nop
    ld l, a
    rst $38
    ld c, $0f
    ld [hl], a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, e
    db $fc
    ld a, $3f
    ld l, a
    rst $30
    ld c, $3f
    dec b
    ld a, [$0f00]
    nop
    rst $38
    nop
    nop
    nop
    ld a, h

jr_0e8_4af8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    nop
    db $ec
    rst $38
    nop
    ldh [$dc], a
    rst $38
    ldh [$f8], a
    db $ec
    rst $38
    ld hl, sp-$04
    db $ec
    rst $38
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    xor h
    ld a, a
    db $fc
    db $fc
    db $ec
    rst $18
    ld hl, sp-$08
    ld b, b
    cp a
    ldh [$e0], a
    nop
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
    rlca
    rlca
    add b
    add b
    inc bc
    rrca
    ret nz

    ret nz

    ld e, $01
    ret nz

    ret nz

    rra
    ccf
    ldh a, [$f0]
    ccf
    ccf
    adc a
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    dec sp
    rst $38
    ld a, $3f
    scf
    rst $38
    ld e, $1f
    scf
    rst $38
    ld c, $0f
    ccf
    rst $30
    ld [bc], a
    inc bc
    rrca
    rst $30
    ld bc, $8501
    cp $00
    ld bc, $fb67
    nop
    ld bc, $fd1a
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
    cp h
    db $fc
    nop
    nop
    ret z

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, a
    nop
    nop
    ldh a, [rIE]
    nop
    add b

jr_0e8_4d10:
    rrca
    rst $38
    add b
    add b
    di
    rst $38
    nop
    add b
    rst $28
    rst $38
    ret nz

    ret nz

jr_0e8_4d1c:
    or $ff
    jr nc, jr_0e8_4d10

    or $ff
    jr c, jr_0e8_4d1c

    cp $f7
    ld a, h
    db $fc
    cp $f7
    ld a, [hl]
    cp $d4
    ccf
    ld a, [hl]
    cp $fc
    rst $28
    db $fc
    cp $a0
    ld e, a
    db $fc
    cp $1f
    rra
    nop
    db $fc
    nop
    nop
    ld a, b
    add h
    inc bc
    ld bc, $d8b0
    ld [bc], a
    ld bc, $f0d0
    nop
    nop
    ld h, b
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
    rlca
    rlca
    add b
    add b
    inc bc
    rrca
    ret nz

    ret nz

    ld e, $01
    ret nz

    ret nz

    ld a, $01
    ret nz

    ret nz

    ld a, $01
    add b
    add b
    jr nz, jr_0e8_4de5

    nop
    nop
    rra
    ccf
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    dec sp
    rst $38
    ld e, $1f
    scf
    rst $38
    ld c, $0f
    scf
    rst $38
    nop

jr_0e8_4de5:
    inc bc
    ccf
    rst $30
    ld [bc], a
    inc bc
    rrca
    rst $30
    ld bc, $8501
    cp $01
    ld bc, $fbe7
    nop
    ld bc, $fdfa
    nop
    ld bc, $ff00
    nop
    nop
    nop
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
    db $fc
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    ret z

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
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    dec c
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    add b
    di
    rst $38
    nop
    add b
    rst $28
    rst $38
    ret nz

    ret nz

    or $ff
    nop
    ret nz

    or $ff
    ld [hl], b
    ldh a, [$fe]
    rst $30
    ld a, b
    ld hl, sp-$02
    rst $30
    ld a, h
    db $fc
    call nc, $fc3f
    db $fc
    db $fc
    rst $28
    db $fc
    cp $a0
    ld e, a
    db $fc
    cp $01
    rst $38
    ld hl, sp-$04
    nop
    nop
    ld hl, sp+$04
    nop
    nop
    ld hl, sp+$04
    ld bc, $7001
    adc b
    rlca
    rlca
    ldh [$e0], a
    rlca
    rrca
    ldh [$e0], a
    ld c, $07
    ret nz

    ld b, b
    dec bc
    rlca
    ld b, b
    ret nz

    ld bc, $8007
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
    jr c, jr_0e8_4f6c

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
    ret nz

    db $fc
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    ret nz

    rst $38
    nop
    ld bc, $ff00

jr_0e8_4f6c:
    ld c, $0f
    ld h, b
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld [hl], b
    rst $38
    ld a, [hl]
    ld a, a
    ld h, a
    ld hl, sp+$7e
    ld a, a
    ld l, a
    rst $30
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ccf
    ld l, a
    rst $38
    ld l, $5f
    ld a, a
    rst $28
    inc e
    inc hl
    ld a, a
    ld l, a
    ld c, $11
    rrca
    rrca
    rlca
    add hl, bc
    adc a
    adc a
    rlca
    rlca
    rst $00
    rst $00
    inc bc
    inc bc
    and b
    ret nz

    ld bc, $0002
    add b
    nop
    ld bc, $0080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$04
    nop
    nop
    ld b, $fe
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc c
    rst $38
    ldh [$e0], a
    db $ec
    rst $38
    ld hl, sp-$08
    inc e
    rst $38
    db $fc
    db $fc
    call z, $fc3f
    db $fc
    db $ec
    rst $18
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    ld hl, sp-$08
    db $fc
    rst $28
    ldh [$e0], a
    db $fc
    rst $28
    nop
    ret nz

    ldh [rIE], a
    nop
    ret nz

    ldh [rIE], a
    nop
    ret nz

    ret nz

    rst $18
    ld b, b
    ret nz

    db $10
    rra
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    ld b, $07
    nop
    cp $1f
    rra
    adc h
    rst $38
    ccf
    ccf
    rrca
    rst $38
    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    ccf
    rst $38

jr_0e8_50dc:
    ld e, $3f
    ccf
    rst $38
    ld l, $1f
    ccf
    rst $38
    ld l, $11
    ld a, $ff
    ld l, $11
    dec c
    cp $10
    ld l, $05
    ld a, d
    ld bc, $c03f
    rst $08
    ld a, [hl-]
    rlca
    and b
    ld h, c
    ld [hl], $0f
    jr nz, jr_0e8_50dc

    ld a, $0f
    and b
    ld [hl], b
    ld e, $2f
    or a
    ld l, [hl]
    ld c, $1f
    cp [hl]
    ld l, a
    ld b, $07
    xor a
    ld a, a
    inc bc
    inc bc
    rst $38
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
    add b
    ldh a, [rP1]
    nop
    ldh [$fc], a
    nop
    nop
    di
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    add b
    sbc $e7
    nop
    ret nz

    cp $e7
    ld [hl], b
    ldh a, [$d6]
    cpl
    ld a, b
    ld hl, sp-$4a
    rst $08
    ld a, h
    db $fc
    ld l, h
    sbc a
    db $fc
    db $fc
    inc c
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld h, c
    ld a, a
    ld hl, sp-$08
    rra
    ld a, a
    ld hl, sp-$08
    rst $20
    rra
    ldh a, [$f0]
    rst $38
    nop
    add b
    ld b, b
    ld a, a
    add b
    nop
    add b
    ld hl, sp-$79
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    ld b, $07
    nop
    cp $1f
    rra
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    ccf
    rst $38
    ld e, $3f
    ccf
    rst $38
    ld l, $1f
    ccf
    rst $38
    ld l, $11
    ccf
    rst $38
    ld l, $11
    rrca
    rst $38
    db $10
    ld l, $06
    ld a, a
    inc e
    ld [hl+], a
    nop
    rrca
    ld a, $00
    nop
    ld bc, $003e
    nop
    nop
    dec a
    inc bc
    ret nz

    ret nz

    ld a, [de]
    daa
    and b
    ld [hl], b
    ld b, $1f
    scf
    xor $0e
    rrca
    cp [hl]
    ld l, a
    ld c, $0f
    xor a
    ld a, a
    ld c, $0f
    cp a
    ld a, a
    ld b, $07
    and b
    ld h, b
    ld b, $07
    and b
    ld h, b
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
    ldh a, [rP1]
    nop
    ldh [$fc], a
    nop
    nop
    di
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    add b
    xor $f7
    nop
    ret nz

    cp $e7
    ld [hl], b
    ldh a, [$f6]
    rst $28
    ld a, b
    ld hl, sp-$2a
    rst $28
    ld a, h
    db $fc
    xor h
    ld e, a
    db $fc
    db $fc
    inc c
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld h, c
    ld a, a
    ld hl, sp-$08
    rra
    ld a, a
    ld hl, sp-$08
    rlca
    ccf
    ldh a, [$f0]
    rst $28
    db $10
    add b
    ld b, b
    rst $30
    ld [$8000], sp
    ld a, h
    add e
    nop
    nop
    di
    adc a
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    ld b, $07
    nop
    cp $1f
    rra
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    inc e
    rst $38
    ccf
    ccf
    jr @+$01

    ld a, $3f
    ccf
    rst $38
    ld e, $3f
    ccf
    rst $38
    ld l, $1f
    ccf
    rst $38
    ld l, $11
    ccf
    rst $38
    ld l, $11
    rrca
    rst $38
    ld l, $10
    rrca
    ld a, a
    db $10
    ld l, $07
    rrca
    inc e
    ld [hl+], a
    nop
    ld bc, $003e
    nop
    nop
    ld a, $00
    nop
    nop
    inc e
    ld [hl+], a
    nop
    nop
    rrca
    rra
    ret nz

    ret nz

    ld c, $0f
    and b
    ld [hl], b
    ld c, $0f
    scf
    xor $0e
    rrca
    cp [hl]
    ld l, a
    ld b, $07
    xor a
    ld a, a
    ld [bc], a
    inc bc
    cp a
    ld a, a
    ld [bc], a
    inc bc
    and b
    ld h, b
    ld [bc], a
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    db $fc
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    add b
    or $ff
    nop
    ret nz

    cp $f7
    ld [hl], b
    ldh a, [$fe]
    rst $30
    ld a, b
    ld hl, sp-$0a
    rst $38
    ld a, h
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $ec
    rst $18
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld h, c
    ld a, a
    ld hl, sp-$08
    rra
    ld a, a
    ld hl, sp-$08
    rlca
    ccf
    ldh a, [$f0]
    rrca
    db $10
    add b
    ld b, b
    scf
    ld c, b
    nop
    add b
    db $fc
    inc bc
    nop
    nop
    ei
    rlca
    nop
    nop
    ld l, a
    sbc a
    nop
    nop
    sbc a
    sbc a
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
    inc bc
    rlca
    add hl, sp
    ccf
    di
    rst $38
    inc sp
    ccf
    rst $20
    rst $38
    ld h, e
    ld a, a
    and $ff
    ld h, e
    ld a, a
    and $ff
    ld h, e
    ld a, a
    and $ff
    di
    rst $38
    and $ff
    ei
    rst $38
    db $ec
    rst $38
    jp hl


    ei
    ldh [rIE], a
    reti


    ld a, [$3fc0]
    ldh a, [$f1]
    ldh a, [$1f]
    ld h, b
    ld h, b
    ld a, h
    sbc h
    nop
    nop
    ld a, [hl]
    ld a, h
    nop
    nop
    ld a, $3c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ldh [rIE], a
    nop
    nop
    ld e, $ff
    ret nz

    ret nz

    ccf
    rst $38
    call c, Call_0e8_6efc
    pop af
    adc $fe
    ld c, a
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $18
    rst $28
    rst $38
    ld a, a
    rst $18
    rst $38
    rst $38
    ld a, a
    rst $18
    cp $ff
    ccf
    rst $38
    pop af
    cp $1f
    rst $38
    rst $38
    ldh a, [rIF]
    rrca
    sbc $f1
    inc bc
    inc b
    ld e, $f1
    rlca
    rlca
    cp $fe
    inc bc
    inc bc
    rst $28
    rst $28
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $01
    nop
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0603
    rlca
    ld a, c
    rst $38
    inc c
    rrca
    ei
    rst $38
    add hl, de
    rra
    di
    rst $38
    add hl, de
    rra
    di
    rst $38
    add hl, de
    rra
    di
    rst $38
    dec a
    ccf
    di
    rst $38
    inc a
    ccf
    or $ff
    inc [hl]
    dec a
    ldh a, [rIE]
    inc [hl]
    dec a
    ldh [rNR22], a
    inc a
    dec a
    ldh a, [rNR11]
    jr jr_0e8_570a

    ld a, b
    cp b
    nop
    nop
    db $fc
    ld hl, sp+$00
    nop
    ld hl, sp-$10
    nop
    nop
    jr nc, jr_0e8_5700

jr_0e8_5700:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e8_570a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    ldh a, [rIE]
    nop
    add b
    adc a
    rst $38
    ld h, b
    ldh [$1f], a
    rst $38
    db $ec
    db $fc
    scf
    ld hl, sp+$66
    cp $27
    rst $38
    rst $20
    rst $38
    ccf
    rst $28
    rst $30
    rst $38
    ccf
    rst $28
    rst $38
    rst $38
    ccf
    rst $28
    cp $ff
    rra
    rst $38
    ld sp, hl
    cp $0f
    rst $38
    rst $38
    ld hl, sp+$07
    rlca
    xor $f9
    ld bc, $8e02
    ld a, c
    inc bc
    inc bc
    cp $ff
    ld bc, $f701
    rst $38
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
    ld [bc], a
    nop
    nop
    jr c, jr_0e8_57d0

    nop
    nop
    nop
    nop

jr_0e8_57d0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    rra
    rra
    nop
    cp $3f
    ccf
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    dec de
    rst $38
    ccf
    ccf
    rla
    rst $38
    ld e, $3f
    scf
    rst $38
    ld l, $1f
    ccf
    rst $30
    inc a
    inc bc
    ccf
    rst $30
    inc e
    inc bc
    dec [hl]
    cp $1e
    rra
    rlca
    ei
    ld e, $1f
    ld [bc], a
    db $fd
    ld e, $1f
    ld b, b
    rst $08
    rra
    rra
    ret nz

    pop bc
    ld a, [de]
    rra
    ld b, b
    ret nz

    ld d, $1b
    ld b, b
    ret nz

    ld d, $1b
    ld b, b
    ldh a, [$03]
    ld [bc], a
    ld d, a
    xor $03
    ld [bc], a
    ld e, [hl]
    rst $28
    inc bc
    ld [bc], a
    ld l, a
    rst $18
    inc bc
    ld [bc], a
    ld a, a
    rst $38
    inc bc
    inc bc
    ret nz

    ret nz

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
    ldh a, [rP1]
    nop
    ldh [$fc], a
    nop
    nop
    di
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    add b
    cp $f7
    nop
    ret nz

    cp $f7
    ld [hl], b
    ldh a, [$d6]
    ccf
    ld a, b
    ld hl, sp-$0a
    rst $28
    ld a, h
    db $fc
    xor h
    ld e, a
    db $fc
    db $fc
    inc c
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld h, c
    ld a, a
    ld hl, sp-$08
    rra
    ld a, a
    ld hl, sp-$08
    rlca
    ccf
    ldh a, [$f0]
    rst $28
    db $10
    add b
    ld b, b
    rst $30
    ld [$8000], sp
    ld a, h
    add e
    nop
    nop
    di
    adc a
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    ld b, $07
    nop
    cp $1f
    rra
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    dec de
    rst $38
    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    scf
    rst $38
    ld e, $3f
    ccf
    rst $30
    ld l, $1f
    ccf
    rst $30
    inc a
    inc bc
    scf
    rst $38
    ld e, $01
    rlca
    rst $38
    ld e, $1f
    inc bc
    rst $38
    ld e, $1f
    ld b, b
    rst $08
    rra
    rra
    ret nz

    pop bc
    ld e, $1f
    ld b, b
    ret nz

    ld e, $1f
    ld b, b
    ret nz

    ld a, [de]
    rra
    ld b, b
    ret nz

    rla
    ld a, [de]
    ld b, b
    ret nz

    rla
    ld a, [de]
    ld b, e
    ld a, [c]
    inc bc
    ld [bc], a
    ld d, [hl]
    rst $28
    inc bc
    ld [bc], a
    ld e, a
    rst $28
    inc bc
    ld [bc], a
    ld l, a
    rst $18
    inc bc
    ld [bc], a
    ld a, h
    db $fc
    inc bc
    ld [bc], a
    ld b, b
    ret nz

    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ldh [$fc], a
    nop
    nop
    di
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    add b
    cp $f7
    nop
    ret nz

    cp $f7
    ld [hl], b
    ldh a, [$f6]
    rst $38
    ld a, b
    ld hl, sp-$0a
    rst $38
    ld a, h
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    inc c
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld h, c
    ld a, a
    ld hl, sp-$08
    rra
    ld a, a
    ld hl, sp-$08
    rlca
    ccf
    ldh a, [$f0]
    ld l, a
    db $10
    add b
    ld b, b
    rst $30
    ld [$8000], sp
    db $fc
    inc bc
    nop
    nop
    ld [hl], e
    adc a
    nop
    nop
    sbc a
    sbc a
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    rra
    rra
    nop
    cp $3f
    ccf
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    db $10
    rst $38
    ld e, $3f
    inc sp
    rst $38
    ld l, $1f
    scf
    rst $38
    inc a
    inc bc
    scf
    rst $38
    inc e
    inc bc
    ccf
    rst $30
    ld e, $1f
    rrca
    rst $30
    ld e, $1f
    rlca
    rst $38
    ld e, $1f
    ld b, a
    rst $08
    ld e, $1f
    ld b, e
    rst $00
    ld a, [de]
    rra
    ld b, b
    ret nz

    rla
    dec de
    ret nz

    ret nz

    ld d, $1b
    ld b, b
    ldh a, [$03]
    ld [bc], a
    ld d, a
    xor $03
    ld [bc], a
    ld e, [hl]
    rst $28
    inc bc
    ld [bc], a
    ld l, a
    rst $18
    inc bc
    ld [bc], a
    ld a, a
    rst $38
    inc bc
    ld [bc], a
    ld b, b
    ret nz

    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    db $fc
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    add b
    or $ff
    nop
    ret nz

    or $ff
    ld [hl], b
    ldh a, [$fe]
    rst $30
    ld a, b
    ld hl, sp-$02
    rst $30
    ld a, h
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    ldh [rIE], a
    db $fc
    db $fc
    ld h, c
    ld a, a
    ld hl, sp-$08
    rra
    ld a, a
    ld hl, sp-$08
    rlca
    ccf
    ldh a, [$f0]
    rst $28
    db $10
    add b
    ld b, b
    rst $30
    ld [$8000], sp
    ld a, h
    add e
    nop
    nop
    di
    adc a
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
    jr c, jr_0e8_5cfc

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
    ret nz

    db $fc
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    jr nc, jr_0e8_5d73

    nop
    nop
    scf
    ld a, a
    rra
    rlca
    dec sp
    rst $38

jr_0e8_5cfc:
    ccf
    rra
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    scf
    rst $38
    ccf
    rra
    scf
    rst $38
    rra
    rlca
    inc bc
    rst $38
    nop
    nop
    nop
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

jr_0e8_5d73:
    nop
    nop
    nop
    nop
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
    rra
    nop
    nop
    rra
    rra
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
    ld bc, $801f
    add b
    nop
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
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    ld b, $ff
    nop
    nop
    or $ff
    nop
    nop
    xor $ff
    ld a, h
    ldh a, [$f6]
    rst $38
    ld a, [hl]
    db $fc
    or $ff
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    db $fc
    ldh [rIE], a
    ld a, h
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$f0], a
    rlca
    rlca
    xor $ff
    rrca
    rrca
    call z, Call_000_1fff
    rrca
    sbc h
    rst $38
    rra
    rrca
    cp e
    rst $38
    rrca
    rlca
    scf
    ei
    ld b, $0f
    ccf
    rst $30
    db $10
    rra
    ccf
    rst $38
    db $10
    rra
    rra
    rst $38
    db $10
    rra
    rra
    rst $38
    jr jr_0e8_5e95

    rra
    rst $38
    inc e
    rra
    rrca
    rst $08
    rra
    rra
    rlca
    rlca
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

jr_0e8_5e95:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    inc bc
    add e
    ldh a, [$f0]
    nop
    rst $20
    ldh a, [$f0]

jr_0e8_5f18:
    nop
    rst $38
    ld a, b
    ld hl, sp-$80
    rst $38
    jr c, jr_0e8_5f18

jr_0e8_5f20:
    add $ff
    jr c, @-$06

jr_0e8_5f24:
    and $ff
    jr c, jr_0e8_5f20

    xor $ff
    jr nc, @-$0e

    db $ec
    rst $38
    jr nc, jr_0e8_5f20

    db $ec
    rst $38
    jr nc, jr_0e8_5f24

    db $ec
    rst $18
    ld [hl], b
    ldh a, [$d8]
    cp a
    ld hl, sp-$08
    jr @+$01

    ld hl, sp-$08
    nop
    rst $38
    ld hl, sp-$08
    ld bc, $f83f
    ld hl, sp+$01
    ld b, $f8
    ldh a, [$03]
    ld [bc], a
    ld hl, sp+$00
    rrca
    rlca
    ldh a, [rP1]
    rrca
    rlca
    ldh [$a0], a
    rlca
    inc bc
    ret nz

    ret nz

    inc bc
    ld bc, $8080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    ld b, $07
    nop
    cp $1f
    rra
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    dec de
    rst $38
    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    scf
    rst $38
    ld e, $3f
    ccf
    rst $30
    ld l, $1f
    ccf
    rst $30
    inc a
    inc bc
    scf
    rst $38
    ld e, $01
    rlca
    rst $38
    ld e, $1e
    inc bc
    ld a, a
    rra
    rra
    nop
    rrca
    rra
    rra
    nop
    ld bc, $1f1f
    add b
    add b
    rra
    rra
    ld b, b
    ret nz

    ld a, [de]
    rra
    call nz, Call_000_17c2
    ld a, [de]
    ld c, [hl]
    pop bc
    rla
    ld a, [de]
    ld c, a
    pop bc
    ld bc, $ad01
    ld h, e
    nop
    nop
    rst $28
    xor a
    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ldh [$fc], a
    nop
    nop
    di
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    add b
    cp $f7
    nop
    ret nz

    cp $f7
    ld [hl], b
    ldh a, [$f6]
    rst $38
    ld a, b
    ld hl, sp-$0a
    rst $38
    ld a, h
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    inc c
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld h, c
    ld a, a
    db $fc
    db $fc
    rra
    ld a, a
    ld hl, sp-$08
    rlca
    ccf
    ld hl, sp-$08
    ld sp, hl
    and $d0
    jr nc, @-$01

    ld [c], a
    ret nz

    jr nz, @+$01

    ldh [$80], a
    ld b, b
    cp $e1
    nop
    add b
    ld bc, $003f
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    ld bc, $8401
    db $fc
    inc bc
    inc bc
    nop
    db $fc
    ld b, $07
    nop
    cp $1f
    rra
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    dec de
    rst $38
    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    scf
    rst $38
    ld e, $3f
    ccf
    rst $30
    ld l, $1f
    ccf
    rst $30
    inc a
    inc bc
    scf
    rst $38
    ld e, $01
    rlca
    rst $38
    ld e, $1e
    inc bc
    ld a, a
    rra
    rra
    nop
    rrca
    rra
    rra
    nop
    ld bc, $1f1f
    add b
    add b
    rra
    rra
    ld b, b
    ret nz

    ld a, [de]
    rra
    call nz, Call_000_17c2
    ld a, [de]
    ld c, [hl]
    pop bc
    rla
    ld a, [de]
    ld c, a
    pop bc
    ld bc, $ad01
    ld h, e
    nop
    nop
    rst $28
    xor a
    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ldh [$fc], a
    nop
    nop
    di
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    add b
    cp $f7
    nop
    ret nz

    cp $f7
    ld [hl], b
    ldh a, [$f6]
    rst $38
    ld a, b
    ld hl, sp-$0a
    rst $38
    ld a, h
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    inc c
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld h, c
    ld a, a
    db $fc
    db $fc
    rra
    ld a, a
    ld hl, sp-$08
    rlca
    ccf
    ld hl, sp-$08
    ld sp, hl
    and $d0
    jr nc, @-$01

    ld [c], a
    ret nz

    jr nz, @+$01

    ldh [$80], a
    ld b, b
    cp $e1
    nop
    add b
    ld bc, $003f
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld h, b
    ld a, [hl]
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
    rra
    ccf
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $ff07
    rlca
    rlca
    jr c, @+$01

    rrca
    rrca
    inc sp
    db $fc
    rra
    rra
    ccf
    ei
    rra
    rra
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    rra
    ccf
    rst $30
    rla
    cpl
    dec [hl]
    cp $0e
    ld de, $bb37
    rrca
    db $10
    ld [bc], a
    add c
    rlca
    ld [$4080], sp
    ld bc, $c006
    jr nz, jr_0e8_6305

jr_0e8_6305:
    ld bc, $30f0
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], h
    ld a, b
    nop
    nop
    jr nz, jr_0e8_636c

    nop
    nop
    inc d
    jr z, jr_0e8_6319

jr_0e8_6319:
    nop
    ld b, $00
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e8_636c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $fc
    cp $00
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, $ff
    ld [hl], b
    ldh a, [rTMA]
    rst $38
    ld a, h
    db $fc
    or $ff
    ld a, [hl]
    cp $0e
    rst $38
    ld a, [hl]
    cp $f6
    rra
    ld a, [hl]
    cp $f6
    rst $28
    ld a, [hl]
    cp $f6
    rst $38
    ld a, h
    db $fc
    or $ff
    ld [hl], b
    ldh a, [$fe]
    rst $30
    nop
    ldh [$f8], a
    rst $30
    nop
    ldh [$d0], a
    ccf
    nop
    ldh [$f0], a
    rst $28
    nop
    ldh [$a8], a
    ld e, a
    jr nz, @-$1e

    ld [$600f], sp
    ldh [rIF], a
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ld a, [hl]
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
    rra
    ccf
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $ff07
    rlca
    rlca
    jr c, @+$01

    rrca
    rrca
    inc sp
    db $fc
    rra
    rra
    scf
    ei
    rra
    rra
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    rra
    ccf
    rst $30
    rla
    cpl
    scf
    rst $38
    jr jr_0e8_649d

    scf
    rst $38

jr_0e8_6478:
    inc c
    inc de
    inc bc
    add e
    ld b, $09
    nop
    ret nz

    inc bc
    inc b
    nop
    ldh [rP1], a
    inc bc
    jr nc, jr_0e8_6478

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], h
    ld a, b
    nop
    nop
    jr nz, jr_0e8_64ec

    nop
    nop
    inc d
    jr z, jr_0e8_6499

jr_0e8_6499:
    nop
    ld b, $00
    nop

jr_0e8_649d:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e8_64ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $fc
    cp $00
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, $ff
    ld [hl], b
    ldh a, [rTMA]
    rst $38
    ld a, h
    db $fc
    or $ff
    ld a, [hl]
    cp $0e
    rst $38
    ld a, [hl]
    cp $e6
    rra
    ld a, [hl]
    cp $f6
    rst $28
    ld a, [hl]
    cp $f6
    rst $38
    ld a, h
    db $fc
    or $ff
    ld [hl], b
    ldh a, [$fe]
    rst $30
    nop
    ldh [$f8], a
    rst $30
    nop
    ldh [$f0], a
    rst $38
    nop
    ldh [$f0], a
    rst $38
    nop
    ldh [$e0], a
    rst $28
    jr nz, @-$1e

    ld [$600f], sp
    ldh [rIF], a
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ld a, [hl]
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
    rra
    ccf
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $ff07
    rlca
    rlca
    dec sp
    rst $38
    rrca
    rrca
    scf
    rst $38
    rra
    rra
    scf
    rst $38
    rra
    rra
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    scf
    rst $38
    ccf
    rra
    scf
    rst $38
    rla
    cpl
    inc sp
    rst $38
    ld c, $11
    nop
    add b
    rrca
    stop
    add b
    rlca
    ld [$4080], sp
    ld bc, $c006
    jr nz, jr_0e8_6605

jr_0e8_6605:
    ld bc, $30f0
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], h
    ld a, b
    nop
    nop
    jr nz, jr_0e8_666c

    nop
    nop
    inc d
    jr z, jr_0e8_6619

jr_0e8_6619:
    nop
    ld b, $00
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e8_666c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $fc
    cp $00
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, $ff
    ld [hl], b
    ldh a, [rTMA]
    rst $38
    ld a, h
    db $fc
    or $ff
    ld a, [hl]
    cp $ee
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $fe
    rst $30
    ld a, h
    db $fc
    cp $f7
    ld [hl], b
    ldh a, [$f6]
    rst $38
    nop
    ldh [$f0], a
    rst $38
    nop
    ldh [$e0], a
    rst $38
    nop
    ldh [rP1], a
    rrca
    nop
    ldh [rP1], a
    rrca
    jr nz, @-$1e

    ld [$600f], sp
    ldh [rIF], a
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    pop hl
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $8001
    rst $38
    rra
    rra
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    jr @+$01

    ld a, a
    ccf
    jr @+$01

    ld a, [hl]
    ccf
    inc sp
    rst $38
    ld a, [hl]
    rra
    scf
    rst $38
    ld a, [hl]
    rrca
    scf
    rst $38
    ld a, h
    ld b, e
    ccf
    rst $30
    ld a, $3f
    adc a
    sub a
    dec [hl]
    ccf
    add a
    sbc a
    ld l, $35
    add a
    adc a
    ld l, $35
    add e
    add e
    inc bc
    ld [bc], a
    ld b, b
    ret nz

    ld bc, $c001
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

jr_0e8_6988:
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
    ldh a, [rP1]
    nop
    nop
    db $fc
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    add b
    or $ff
    nop
    ret nz

    or $ff
    ld [hl], b
    ldh a, [$fe]
    rst $30
    ld a, b
    ld hl, sp-$02
    rst $30
    ld a, h
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    ldh [rIE], a
    db $fc
    db $fc
    ld bc, $fc3f
    ld hl, sp+$00
    ccf
    jr c, jr_0e8_6988

    nop
    ccf
    nop
    ret nz

    nop
    rra
    ld b, b
    ret nz

    db $10
    rra
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    scf
    ld a, a
    nop
    nop
    scf
    db $fc
    rlca
    rlca
    scf
    ei
    rra
    rra
    ld [hl], $f9

jr_0e8_6a5c:
    cpl
    ccf
    scf
    db $fc
    cpl
    rra
    ld [hl], $fd
    ccf
    ccf
    inc sp
    cp $1a
    dec a
    inc bc
    rst $38
    ld [hl], $49
    pop bc
    ccf
    ld l, a
    jr jr_0e8_6a73

jr_0e8_6a73:
    rst $38
    ld a, [hl]
    add hl, de
    rst $38
    ccf
    ld a, a
    jr jr_0e8_6a5c

    rst $38
    ccf
    ld e, a
    ld e, $ff
    ld c, $3e
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    ld [bc], a
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e8_6b02:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    or $ff
    nop
    nop
    or $1f
    nop
    add b
    or $ef
    ld [hl], b
    ldh a, [$b6]
    ld c, a
    ld a, h
    db $fc
    or $9f
    ld a, d
    cp $36
    rst $18
    ld a, d
    db $fc
    and $3f
    ld a, [hl]
    cp $e0
    rst $38
    inc l
    sbc $c1
    cp $b6
    ld c, c
    nop
    rst $38
    ld a, e
    adc h
    rst $38
    cp $bf
    ld c, h
    jp $ffff


    adc h
    cp h
    ld a, a
    ld a, [hl]
    db $fd
    nop
    ld a, a
    jr c, jr_0e8_6b02

    nop
    ccf
    nop
    add b
    jr nz, jr_0e8_6b89

    nop
    nop
    rra
    rra
    add b
    add b
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

jr_0e8_6b89:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rrca
    ret nz

    ret nz

    ld e, $01
    ret nz

    ret nz

    ld a, $01
    ret nz

    ret nz

    ld a, $01
    add b
    add b
    jr nz, jr_0e8_6d65

    nop
    nop
    rra
    ccf
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    dec sp
    rst $38
    ld e, $1f
    scf
    rst $38
    ld c, $0f
    scf
    rst $38
    nop

jr_0e8_6d65:
    inc bc
    ccf
    rst $30
    ld [bc], a
    inc bc
    rrca
    rst $30
    ld bc, $8501
    cp $00
    nop
    ld h, a
    ld a, e
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, c
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    dec c
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    add b
    di
    rst $38
    nop
    add b
    rst $28
    rst $38
    ret nz

    ret nz

    or $ff
    nop
    ret nz

    or $ff
    ld [hl], b
    ldh a, [$fe]
    rst $30
    ld a, b
    ld hl, sp-$02
    rst $30
    ld a, h
    db $fc
    call nc, $fc3f
    db $fc
    db $fc
    rst $28
    db $fc
    cp $a0
    ld e, a
    db $fc
    cp $01
    rst $38
    ld hl, sp-$04
    nop
    nop
    ld hl, sp+$04
    nop
    nop
    ld hl, sp+$04
    ld bc, $7001
    adc b
    rlca
    rlca
    ldh [$e0], a
    rlca
    rrca
    ldh [$e0], a
    ld c, $07
    ret nz

    ld b, b
    dec bc
    rlca
    ld b, b
    ret nz

    ld bc, $8007
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
    add b
    add b
    inc bc
    rrca
    ret nz

    ret nz

    ld e, $01
    db $fc
    db $fc
    rra
    ccf
    cp $fe
    ccf
    ccf
    adc a
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    dec sp
    rst $38
    ld a, $3f
    scf
    rst $38
    ld e, $1f
    scf
    rst $38
    ld c, $0f
    ccf
    rst $30
    ld [bc], a
    inc bc
    rrca
    rst $30
    ld bc, $8501
    cp $00
    nop
    ld h, a
    ld a, e
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    nop
    nop

Call_0e8_6efc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ldh a, [rIE]
    nop
    add b

jr_0e8_6f90:
    rrca
    rst $38
    add b
    add b
    di
    rst $38
    nop
    add b
    rst $28
    rst $38
    ret nz

    ret nz

jr_0e8_6f9c:
    or $ff
    jr nc, jr_0e8_6f90

    or $ff
    jr c, jr_0e8_6f9c

    cp $f7
    ld a, h
    db $fc
    cp $f7
    ld a, [hl]
    cp $d4
    ccf
    ld a, [hl]
    cp $fc
    rst $28
    db $fc
    cp $a0
    ld e, a
    db $fc
    cp $1f
    rst $38
    nop
    db $fc
    nop
    inc a
    ld a, b
    add h
    inc bc
    ld bc, $d8b0
    ld [bc], a
    ld bc, $f0d0
    nop
    nop
    ld h, b
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
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $0401
    db $fc
    nop
    ld bc, $fc00
    nop
    inc bc
    nop
    db $fc
    nop
    inc bc
    jr nc, @+$01

    nop
    rlca
    scf
    rst $38
    rlca
    rra
    dec sp
    rst $38
    rra
    ccf
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    dec [hl]
    cp $1f
    rra
    scf
    ei
    rlca
    rlca
    ld [bc], a
    db $fd
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    or $ff
    nop
    nop
    xor $ff
    ld [hl], b
    ldh a, [$f6]
    rst $38
    ld a, h
    db $fc
    or $ff
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $d6
    ccf
    ld a, [hl]
    cp $f6
    rst $28
    ld a, h
    db $fc
    and b
    ld e, a
    ld [hl], b
    db $fc
    nop
    rst $38
    nop
    ldh a, [rP1]
    ccf
    nop
    ldh [rP1], a
    rrca
    nop
    ret nz

    ld [$400f], sp
    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ld b, b
    ret nz

    inc b
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
    add d
    cp $00
    nop
    nop
    cp $00
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $ffff
    ld bc, $b001
    rst $38
    nop
    ld bc, $ffc0
    nop
    ld bc, $ffcf
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    inc bc
    ld l, a
    rst $38
    ld c, $0f
    ld l, a
    rst $38
    ld e, $1f
    ld a, a
    rst $28
    ld a, $3f
    ld a, a
    rst $28
    ccf
    ccf
    dec hl
    db $fc
    ccf
    ld a, a
    ccf
    rst $30
    ccf
    ld a, a
    dec b
    ld a, [$1f0f]
    ret nz

    db $fd
    rrca
    stop
    add b
    ld b, $0d
    ldh [$c0], a
    dec b
    rlca
    and b
    ret nz

    inc bc
    inc bc
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
    ld bc, $e001
    ldh [$03], a
    inc bc
    ret nz

    ldh a, [$03]
    inc bc
    ld a, b
    add b
    ld sp, $f8ff
    db $fc
    jr nc, @+$01

    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    call c, Call_0e8_7cff
    db $fc
    db $ec
    rst $38
    ld a, b
    ld hl, sp-$14
    rst $38
    ld [hl], b
    ldh a, [$fc]
    rst $28
    nop
    ret nz

    ldh a, [$ef]
    ld b, b
    ret nz

    and c
    ld a, a
    add b
    add b
    rst $20
    rst $18
    add b
    add b
    ld e, a
    cp a
    nop
    add b
    nop
    rst $38
    nop
    nop
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    inc de
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
    cp $fe
    nop
    nop
    add d
    cp $00
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $ffff
    ld bc, $b001
    rst $38
    nop
    ld bc, $ffc0
    nop
    ld bc, $ffcf
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    inc bc
    ld l, a
    rst $38
    ld c, $0f
    ld l, a
    rst $38
    ld e, $1f
    ld a, a
    rst $28
    ld a, $3f
    ld a, a
    rst $28
    ccf
    ccf
    dec hl
    db $fc
    ccf
    ld a, a
    ccf
    rst $30
    ccf
    ld a, a
    dec b
    ld a, [$3f1f]
    add b
    rst $38
    rra
    jr nz, jr_0e8_737f

jr_0e8_737f:
    nop
    rra
    jr nz, jr_0e8_7383

jr_0e8_7383:
    nop
    ld c, $11
    add b
    add b
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$f0], a
    inc bc
    ld [bc], a
    ld [hl], b
    ldh [rSC], a
    inc bc
    ret nc

    ldh [rSB], a
    ld bc, $e080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$03], a
    inc bc
    ret nz

    ldh a, [$03]
    inc bc
    ld a, b
    add b
    inc bc
    inc bc
    ld a, h
    add b
    ld bc, $7c01
    add b
    nop
    nop
    inc b
    ld hl, sp+$31
    rst $38
    ld hl, sp-$04
    jr nc, @+$01

    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    call c, Call_0e8_7cff
    db $fc
    db $ec
    rst $38
    ld a, b
    ld hl, sp-$14
    rst $38
    ld [hl], b
    ldh a, [$fc]
    rst $28
    nop
    ret nz

    ldh a, [$ef]
    ld b, b
    ret nz

    and c
    ld a, a
    add b
    add b
    and $de
    nop
    nop
    ld e, b
    cp b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    add d
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    ld bc, $ff0f
    ld bc, $f001
    rst $38
    nop
    ld bc, $ffcf
    inc bc
    inc bc
    rst $30
    rst $38
    inc c
    rrca
    ld l, a
    rst $38
    inc e
    rra
    ld l, a
    rst $38
    ld a, $3f
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    dec hl
    db $fc
    ccf
    ld a, a
    ccf
    rst $30
    ccf
    ld a, a
    dec b
    ld a, [$3f00]
    ld hl, sp-$01
    ld e, $21
    nop
    inc a
    dec c
    dec de
    ret nz

    add b
    dec bc
    rrca
    ld b, b
    add b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$03], a
    inc bc
    ret nz

    ldh a, [$3f]
    ccf
    ld a, b
    add b
    ld a, a
    ld a, a
    ld hl, sp-$04
    pop af
    rst $38
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    call c, $fcff
    db $fc
    db $ec
    rst $38
    ld a, h
    db $fc
    db $ec
    rst $38
    ld a, b
    ld hl, sp-$04
    rst $28
    ld [hl], b
    ldh a, [$f0]
    rst $28
    ld b, b
    ret nz

    and c
    ld a, a
    add b
    add b
    and $de
    nop
    nop
    ld e, b
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld l, a
    rst $38
    ld c, $0f
    ld [hl], a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, e
    db $fc
    ld a, $3f
    ld l, a
    rst $30
    ld c, $3f
    dec b
    ld a, [$0f00]
    nop
    rst $38
    nop
    rlca
    nop
    db $fc
    nop
    inc bc
    nop
    ldh a, [rSC]
    inc bc
    db $10
    ldh a, [$03]
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    ld [bc], a
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    jr nz, @-$1e

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
    rra
    rra
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
    jr nz, jr_0e8_773d

    add b
    add b
    nop
    ccf
    nop
    add b
    nop
    ccf
    nop
    ret nz

    inc c
    rst $38
    nop
    ret nz

    db $ec
    rst $38
    nop
    ldh [$dc], a
    rst $38
    ldh [$f8], a
    db $ec
    rst $38
    ld hl, sp-$04
    db $ec
    rst $38
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    xor h
    ld a, a
    db $fc
    db $fc
    db $ec
    rst $18
    ld hl, sp-$08
    ld b, b
    cp a
    ldh [$e0], a
    nop
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

jr_0e8_773d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rrca
    ret nz

    ret nz

    ld e, $01
    ret nz

    ret nz

    rra
    ccf
    adc h
    rst $38
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    rra
    rst $38
    ld a, $3f
    dec sp
    rst $38
    ld e, $1f
    scf
    rst $38
    ld c, $0f
    scf
    rst $38
    nop
    inc bc
    ccf
    rst $30
    ld [bc], a
    inc bc
    rrca
    rst $30
    ld bc, $8501
    cp $01
    ld bc, $fbe7
    nop
    ld bc, $fdfa
    nop
    nop
    nop
    rst $38
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
    ret z

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
    ld a, a
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    dec c
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    add b
    di
    rst $38
    nop
    add b
    rst $28
    rst $38
    ret nz

    ret nz

    or $ff
    nop
    ret nz

    or $ff
    ld [hl], b
    ldh a, [$fe]
    rst $30
    ld a, b
    ld hl, sp-$02
    rst $30
    ld a, h
    db $fc
    call nc, $fc3f
    db $fc
    db $fc
    rst $28
    db $fc
    cp $a0
    ld e, a
    db $fc
    cp $03
    cp a
    ldh a, [$f8]
    nop
    ld bc, $08f0
    rlca
    inc bc
    ld h, b
    or b
    dec b
    inc bc
    and b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0e8_7cff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
