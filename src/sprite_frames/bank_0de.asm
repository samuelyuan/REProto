SECTION "ROM Bank $0de", ROMX[$4000], BANK[$de]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    scf
    ccf
    nop
    nop
    ld [hl], a
    ld a, a
    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    jr nc, jr_0de_4097

    nop
    nop
    jr nc, jr_0de_409b

    nop
    nop
    jr z, jr_0de_409f

    nop
    nop
    jr z, jr_0de_40a3

    nop
    nop
    jr nc, jr_0de_40a7

    nop
    nop
    jr nc, jr_0de_40ab

    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    ld [hl], $3f
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

jr_0de_4097:
    nop
    nop
    nop
    nop

jr_0de_409b:
    nop
    nop
    nop
    nop

jr_0de_409f:
    nop
    nop
    nop
    nop

jr_0de_40a3:
    nop
    nop
    nop
    nop

jr_0de_40a7:
    nop
    nop
    nop
    nop

jr_0de_40ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08

jr_0de_410a:
    nop
    nop
    add sp, -$08
    nop
    nop
    jr z, jr_0de_410a

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr z, @-$06

    nop
    nop
    jr z, @-$06

    nop
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
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    inc sp
    ccf
    nop
    nop
    rla
    rra
    nop
    nop
    dec de
    rra
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    jr jr_0de_41f3

    nop
    nop
    jr jr_0de_41f7

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
    jr jr_0de_4203

    nop
    nop
    jr jr_0de_4207

    nop
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    dec de

jr_0de_41f3:
    rra
    nop
    nop
    rla

jr_0de_41f7:
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
    rlca

jr_0de_4203:
    rlca
    nop
    nop
    dec b

jr_0de_4207:
    rlca
    nop
    nop
    inc b
    rlca
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
    ldh [$e0], a
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
    ld hl, sp-$08
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    inc d
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
    inc d
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    inc [hl]
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [rNR41], a
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
    rlca
    rlca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    ld [de], a
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld d, $1f
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
    rra
    rra
    nop
    nop
    scf
    ccf
    nop
    nop
    ld l, a
    ld [hl], a
    nop
    nop
    ld l, a
    ld [hl], a
    nop
    nop
    ld l, e
    ld [hl], a
    nop
    nop
    ld sp, $003f
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
    jr @+$1a

    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ld [c], a
    cp $00
    nop
    rst $30
    ei
    nop
    nop
    push af
    ei
    nop
    nop
    rst $30
    ei
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ld a, [$00fe]
    nop
    ld a, [de]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $c0
    ret nz

    ld sp, $e0ff
    ldh [$e1], a
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    cp $fe
    ret nz

    ret nz

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
    rlca
    rlca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    ld [de], a
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld d, $1f
    nop
    nop
    daa
    ccf
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    ld l, a
    ld a, a
    nop
    nop
    scf
    ccf
    nop
    nop
    scf
    ccf
    nop
    nop
    scf
    dec sp
    nop
    nop
    jr jr_0de_452f

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

jr_0de_452f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $e4
    db $fc
    nop
    nop
    ld a, [c]
    cp $00
    nop
    pop af
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    add hl, de
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    inc [hl]
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
    add sp, -$08
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
    rlca
    rlca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    ld [de], a
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    jp $01ff


    ld bc, $ffc3
    ld bc, $c301
    rst $38
    ld bc, $c301
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ld h, e
    ld a, a
    nop
    nop
    inc de
    rra
    nop
    nop
    dec c
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
    nop
    nop
    nop
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
    pop af
    rst $38
    jr nc, jr_0de_472c

    ldh a, [rIE]
    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    jr @+$01

    ld hl, sp-$08
    add hl, bc
    rst $38
    ld [hl], b
    ld [hl], b
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop

jr_0de_472c:
    ld a, [de]
    cp $00
    nop
    inc [hl]
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
    ld hl, sp-$08
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
    rlca
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec de
    dec e
    nop
    nop
    dec de
    rra
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
    dec bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    ld [de], a
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    jr jr_0de_4890

    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    add hl, de
    rst $38
    jr jr_0de_48a8

jr_0de_4890:
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop

jr_0de_48a8:
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    ld [hl-], a
    cp $00
    nop
    ld a, [c]
    cp $00
    nop
    ld a, [c]
    cp $00
    nop
    ld a, [c]
    cp $00
    nop
    db $f4
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    add sp, -$08
    nop
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
    ld e, $1e
    nop
    nop
    ld sp, $003f
    nop
    ld l, e
    ld [hl], a
    nop
    nop
    ld l, a
    ld [hl], a
    nop
    nop
    ld l, a
    ld [hl], a
    nop
    nop
    scf
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
    rla
    rra
    nop
    nop
    ld d, $1f
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc de
    rra
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    cp $fe
    ret nz

    ret nz

    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    ld sp, $e0ff
    ldh [rNR30], a
    cp $c0
    ret nz

    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    ld a, [$00fe]
    nop
    ld a, [c]
    cp $00
    nop
    rst $30
    ei
    nop
    nop
    push af
    ei
    nop
    nop
    rst $30
    ei
    nop
    nop
    ld [c], a
    cp $00
    nop
    db $e4
    db $fc
    nop
    nop
    jr jr_0de_4a6a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0de_4a6a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr @+$21

    nop
    nop
    scf
    dec sp
    nop
    nop
    scf
    ccf
    nop
    nop
    scf
    ccf
    nop
    nop
    ld l, a
    ld a, a
    nop
    nop
    ld h, a
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
    ld d, $1f
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc de
    rra
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
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld a, [de]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    add hl, bc
    rst $38
    nop
    nop
    add hl, de
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $e4
    db $fc
    nop
    nop
    ld [$00f8], sp
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
    inc bc
    inc bc
    nop
    nop
    dec c
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    jp $01ff


    ld bc, $ffc3
    ld bc, $c301
    rst $38
    ld bc, $c301
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ld h, d
    ld a, a
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc de
    rra
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
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld a, [de]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    add hl, bc
    rst $38
    ld [hl], b
    ld [hl], b
    jr @+$01

    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    pop af
    rst $38
    jr nc, jr_0de_4d78

    cp $fe
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

jr_0de_4d78:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld [hl+], a
    ccf
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
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc de
    rra
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
    dec de
    rra
    nop
    nop
    dec de
    rra
    nop
    nop
    dec de
    dec e
    nop
    nop
    inc c
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

jr_0de_4e62:
    nop
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
    jr nc, jr_0de_4e62

    nop
    nop
    add sp, -$08
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ld a, [c]
    cp $00
    nop
    ld a, [c]
    cp $00
    nop
    ld [hl-], a
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    add hl, de
    rst $38
    jr jr_0de_4ecc

    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    rst $38
    rst $38
    jr jr_0de_4ee4

jr_0de_4ecc:
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

jr_0de_4ee4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    ld a, c
    ld a, a
    db $f4
    db $fc
    db $fd
    or e
    db $f4
    db $fc
    db $fd
    inc sp
    rst $38
    rst $38
    ei
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, a
    ld a, a
    ld hl, sp-$01
    add e
    rst $38
    ld hl, sp-$01
    ld bc, $acff
    rst $18
    nop
    rst $38
    cp h
    rst $08
    add b
    ld a, a
    or a
    rst $08
    add b
    rst $38
    or h
    rst $08
    add b
    rst $38
    or h
    rst $08
    ld b, b
    ld a, a
    sbc [hl]
    rst $38
    ld b, c
    ld a, a
    cp $ff
    jr nz, jr_0de_4fb5

    rst $38
    rst $38
    ld de, $7f1e
    rst $38
    rrca
    ld c, $ff
    ld a, a
    ld [bc], a
    inc bc
    cp a
    ld a, a
    ld bc, $7d01
    cp a
    nop
    nop
    cp c
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

jr_0de_4fb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    ldh a, [rIE]
    rst $38
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    rst $38
    jr nz, @+$01

    ld a, d
    rst $38
    jr nz, @+$01

    ld c, e
    rst $38
    jr nz, @+$01

    ld c, [hl]
    cp $20
    rst $38

jr_0de_501e:
    cp b
    cp b
    rst $28
    rst $38

jr_0de_5022:
    nop
    nop
    jr z, jr_0de_501e

jr_0de_5026:
    nop
    nop
    jr z, jr_0de_5022

jr_0de_502a:
    nop
    nop
    jr z, jr_0de_5026

    nop
    nop
    jr z, jr_0de_502a

    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    ld a, $39
    rra
    db $fc
    ld a, $39
    rra
    db $fc
    rra
    rra
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld e, h
    nop
    nop
    ld e, c
    ld a, c
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld a, d
    ld c, e
    nop
    nop
    ld [hl], h
    ld c, a
    nop
    nop
    ld a, b
    ld b, a
    nop
    nop
    ld e, l
    ld h, e
    nop
    nop
    db $dd
    db $e3
    ld bc, $cd01
    di
    inc bc
    inc bc
    push bc
    ei
    inc bc
    inc bc
    db $e3
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    ld c, $0e
    nop
    nop
    rra
    rra
    add b
    add b
    rra
    rra
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$f0]
    add hl, bc

jr_0de_517d:
    rrca
    ld hl, sp-$08
    db $10
    rra
    ld hl, sp-$08
    ldh [rIE], a
    ld [hl], b
    ldh a, [$f1]
    rrca
    ldh [$e0], a
    inc sp
    rst $08
    ldh [$e0], a
    add a
    rst $38
    ldh a, [$f0]
    cp a
    rst $38
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ldh a, [$f0]
    jr nz, jr_0de_517d

    ldh [$e0], a
    ld a, b
    or a
    ldh [$e0], a
    ret c

    ccf
    ret nz

    ret nz

    ldh [$1f], a
    ret nz

    ret nz

    ld h, b
    cp a
    add b
    add b
    add b
    rst $38
    add b
    add b
    pop hl
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
    nop
    nop
    nop

jr_0de_523d:
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    ldh a, [$f0]
    adc a
    rst $38
    jr nc, jr_0de_523d

    adc a
    sbc $31
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld bc, $f001
    ld [hl], b
    ld bc, $7801
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld l, b
    ld a, b
    nop
    nop
    ld e, l
    ld h, l
    nop
    nop
    dec sp
    daa
    nop
    nop
    dec hl
    dec [hl]
    nop
    nop
    rla
    jr jr_0de_5275

jr_0de_5275:
    nop
    dec bc
    inc c
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
    nop
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
    ldh a, [$f0]
    inc bc
    inc bc
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $ff3f
    rst $38
    rst $38
    rra
    rst $38
    ld a, b
    add a
    ld c, $fe
    ld hl, sp+$07
    call z, Call_0de_79fc
    add a
    ld hl, sp-$08
    di
    rst $38
    ld hl, sp-$08
    daa
    ccf
    ld hl, sp-$08
    add hl, hl
    ccf
    ld hl, sp-$08

jr_0de_531c:
    ld [hl], b
    ld l, a
    ld hl, sp-$08
    add b
    rst $38
    add sp, -$08
    ld b, b
    cp a
    ld l, b
    ld hl, sp+$40
    rst $38
    ret z

    ld a, b
    ld b, b
    cp a
    ld c, b
    ld hl, sp+$40
    rst $38
    sub b
    ldh a, [$c0]
    rst $38
    db $10
    ldh a, [$f1]
    rst $38
    jr nz, jr_0de_531c

    cp $ff
    ld b, b
    ret nz

    db $fc
    rst $38
    add b
    add b
    ld sp, hl
    rst $38
    nop
    nop
    cp $fe
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
    ld a, a
    ld a, l
    cp $e1
    ldh a, [$8f]
    rst $38
    ld h, b
    ldh a, [$8f]
    cp h
    ld h, e
    ld a, a
    ld a, a
    rst $38
    rst $38
    inc bc
    ld [bc], a
    ldh [$e0], a
    ld [bc], a
    inc bc
    ldh a, [$f0]
    ld bc, $f101
    pop af
    nop
    nop
    jp nc, Jump_000_00f3

    nop
    cp d
    rlc b
    nop
    db $76
    ld c, a
    nop
    nop
    ld d, [hl]
    ld l, e
    nop
    nop
    ld l, $31
    nop
    nop
    ld d, $19
    nop
    nop
    add hl, de
    rra
    nop
    nop
    dec a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    rlca
    rlca
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    db $fc
    ld [bc], a
    inc bc
    ld a, [hl]
    cp $fe
    rst $38
    ld a, $fe
    ldh [$1f], a
    inc e
    db $fc
    pop hl
    rra
    sbc b
    ld hl, sp-$1d
    rra
    ldh a, [$f0]
    rst $20
    rst $38
    ldh a, [$f0]

jr_0de_5494:
    cpl
    ccf
    ldh a, [$f0]

jr_0de_5498:
    rst $08
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    dec b
    rst $38
    ret nc

    ldh a, [rTMA]
    db $fd
    ret nc

    ldh a, [rTAC]
    db $fc
    sub b
    ldh a, [rTMA]
    db $fd
    sub b
    ldh a, [rTIMA]
    rst $38
    jr nz, jr_0de_5494

    ld b, $ff
    jr nz, jr_0de_5498

    adc [hl]
    rst $38
    ld b, b
    ret nz

    db $fc
    rst $38
    add b
    add b
    ld sp, hl
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fd
    db $fd
    cpl
    jr nc, jr_0de_55cd

    bit 3, a
    ld h, b
    ld a, h
    ei
    adc a
    rst $38
    add b
    rst $38
    cp a
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    add e
    rst $38
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0de_55cd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop af
    pop af
    ldh a, [$f0]
    dec bc
    ei
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp-$08
    db $fc
    rst $38
    inc e
    db $e4
    ld a, a
    rst $38
    ld a, $f2
    ld a, a
    rst $38
    cp $ba
    ld a, a
    rst $38
    cp $9a
    ld a, a
    rst $38
    db $fc
    sbc h
    rst $38
    rst $38
    ret z

    cp b
    rst $38
    rst $38
    db $10
    ldh a, [rIE]
    rst $38
    ldh [$e0], a
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
    rra
    rra
    db $fd
    db $fd
    cpl
    jr nc, jr_0de_574d

    bit 3, a
    ld h, b
    ld a, h
    ei
    adc a
    rst $38
    add b
    rst $38
    cp a
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    add e
    rst $38
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0de_574d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rlca
    rst $38
    jr jr_0de_57ac

    rst $38
    rst $38
    inc a
    inc h
    ld a, a
    rst $38
    cp $f2
    ld a, a
    rst $38
    cp $ba
    ld a, a
    rst $38
    cp $9a
    ld a, a
    rst $38
    db $fc
    sbc h
    rst $38
    rst $38
    ldh a, [$b0]

jr_0de_57ac:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    rrca
    rrca
    nop
    nop
    dec de
    dec d
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    rst $28
    ldh a, [rP1]
    nop
    rst $28
    ldh a, [rP1]
    nop
    ld a, a
    ld a, a
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec d
    ld a, [de]
    nop
    nop
    dec de
    inc d
    nop
    nop
    cpl
    inc [hl]
    nop
    nop
    dec [hl]
    ld l, $00
    nop
    ccf
    inc l
    nop
    nop
    dec a
    ld l, $00
    nop
    ld a, a
    ld l, a
    nop
    nop
    rst $28
    rst $38
    ld bc, $ef01
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
    inc e
    inc e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    ldh [$e0], a
    inc de
    rra
    ldh a, [$f0]
    pop af
    rst $38
    ldh a, [$f0]
    and $99
    ldh [$e0], a
    adc a
    db $fc
    ld b, b
    ret nz

    rst $18
    ccf
    ldh [$e0], a
    cp a
    ld a, a
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

    ret nz

    add a
    rst $38
    add b
    add b
    db $e3
    rst $18
    add b
    add b
    ld [c], a
    rst $38
    add b
    add b
    ld [bc], a
    rst $38
    add b
    add b
    add b
    ld a, a
    add b
    add b
    nop
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
    jp nz, Jump_000_00fe

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $dd
    xor [hl]
    rlca
    rlca
    adc h
    rst $38
    rrca
    ld [$00ff], sp
    rrca
    ld [$00ff], sp
    rlca
    rlca
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld [hl], b
    ld c, a
    nop
    nop
    ld [hl], b
    ld c, a
    nop
    nop
    ld [hl], b
    ld c, a
    nop
    nop
    ld d, b
    ld l, a
    nop
    nop
    ld [hl], b
    ld l, a
    nop
    nop
    db $ec
    rst $38
    ld bc, $ef01
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
    inc e
    inc e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    ldh [$e0], a
    inc de
    rra
    ldh a, [$f0]
    pop af
    rst $38
    ldh a, [$f0]
    and $19
    ldh [$e0], a
    rrca
    db $fc
    ld h, b
    ldh [$df], a
    ccf
    ldh a, [$f0]
    cp a
    ld a, a
    ldh a, [$f0]
    ld a, a
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ld l, $ff
    add b
    add b
    ld [hl], $ef
    add b
    add b
    inc a
    rst $20
    add b
    add b
    inc [hl]
    rst $28
    add b
    add b
    add hl, hl
    rst $38
    nop
    nop
    ld sp, $00ff
    nop
    ld [hl], d
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    inc bc
    ld [bc], a
    ld [hl], a
    cp b
    ld e, $1f
    jr nc, @+$01

    ccf
    jr nz, @+$01

    nop
    ccf
    jr nz, @+$01

    nop
    rra
    rra
    rst $38
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f001
    rra
    ld bc, $e001
    rra
    ld bc, $6001
    sbc a
    nop
    nop
    ldh [$9f], a
    nop
    nop
    ldh [$9f], a
    nop
    nop
    and b
    rst $18
    nop
    nop
    ld hl, sp-$31
    ld bc, $cf01
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
    inc e
    inc e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    ldh [$e0], a
    inc de
    rra
    ldh a, [$f0]
    pop af
    rst $38
    ldh a, [$f0]
    and $19
    ldh [$e0], a
    rrca
    db $fc
    ld h, b
    ldh [$df], a
    ccf
    ldh a, [$f0]
    cp a
    ld a, a
    ldh a, [$f0]
    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld c, [hl]
    rst $38
    add b
    add b
    db $76
    rst $08
    add b
    add b
    ld a, h
    rst $00
    add b
    add b
    ld [hl], h
    rst $08
    add b
    add b
    ld c, c
    rst $38
    nop
    nop
    ld [hl], c
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
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
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    rlca
    rlca
    cp $fe
    rlca
    rlca
    rst $38
    rst $38
    dec bc
    rrca
    db $fc
    rst $38
    inc de
    rra
    db $fc
    rst $38
    inc de
    rra
    sbc h
    rst $38
    inc de
    rra
    inc c
    rst $38
    ld [de], a
    rra
    inc b
    rst $38
    db $10
    rra
    nop
    rst $38
    db $10
    rra
    inc bc
    rst $38
    ld [$030f], sp
    rst $38
    db $10
    rra
    nop
    rst $38
    db $10
    rra
    nop
    rst $38
    ld [de], a
    rra
    inc b
    rst $38
    inc de
    rra
    inc c
    rst $38
    inc de
    rra
    db $fc
    rst $38
    inc de
    rra
    db $fc
    rst $38
    dec bc
    rrca
    rst $38
    rst $38
    rlca
    rlca
    cp $fe
    inc bc
    inc bc
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    ld bc, $f801
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
    nop
    nop
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
    ld [hl], b
    ld [hl], b
    rrca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    add sp, -$08
    rlca
    rst $38
    xor b
    ld hl, sp+$04
    rst $38
    or b
    ldh a, [rDIV]
    rst $38
    ldh [$e0], a
    dec bc
    ei
    add b
    add b
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    dec bc
    ei
    add b
    add b
    inc b
    rst $38
    ldh [$e0], a
    inc b
    rst $38
    or b
    ldh a, [rTAC]
    rst $38
    xor b
    ld hl, sp+$07
    rst $38
    add sp, -$08
    rrca
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
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
    nop
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
    rla
    nop
    nop
    scf
    cpl
    nop
    nop
    ccf

jr_0de_5e43:
    ld l, $00
    nop
    rla
    ld a, [de]
    nop
    nop
    rrca
    ld c, $00
    nop
    inc a
    ccf
    nop
    nop
    ld c, [hl]
    ld a, a
    ld c, $0e
    sbc a
    rst $38
    rra
    add hl, de
    cp a
    rst $38
    inc a
    ccf
    ld a, a
    rst $38
    jr c, jr_0de_5e99

    ccf
    rst $38
    ld [hl], b
    ld a, a
    rra
    rst $38
    ld h, b
    ld a, a
    ld l, $df
    ld [hl], b
    ld c, a
    inc a
    rst $08
    ld [hl], b
    ld c, a
    jr c, jr_0de_5e43

    ld [hl], b
    ld c, a
    ld sp, $70df
    ld c, a
    ld [hl], d
    cp [hl]
    ld e, b
    ld l, a
    db $e4
    db $fc
    ld c, a
    ld a, a
    add sp, -$08
    cpl
    ccf
    ret nc

    ldh a, [$1f]
    rra
    ldh [$e0], a
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

jr_0de_5e99:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rNR41], a
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ret nc

    jr nc, jr_0de_5f13

jr_0de_5f13:
    nop
    ccf
    rst $38
    ret nz

    ret nz

    xor c
    rst $38
    ldh [$e0], a
    and b
    rst $38
    ldh a, [$f0]
    jr z, @+$01

    ldh a, [$f0]
    add hl, hl
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $09
    nop
    nop
    dec e
    ld e, $00
    nop
    ld a, $3f
    nop
    nop
    ccf
    ld l, $00
    nop
    add hl, sp
    daa
    nop
    nop
    add hl, sp
    ld h, $00
    nop
    dec a
    inc hl
    nop
    nop
    cpl
    inc sp
    nop
    nop
    inc sp
    ccf
    nop
    nop
    ld a, e
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
    ccf
    ccf
    ld hl, sp-$08
    ld a, h
    ld e, a
    db $fc
    db $fc

jr_0de_6080:
    cp $85
    ld a, h
    db $fc
    rst $38
    adc h
    jr c, jr_0de_6080

    ld a, e
    ld a, a
    or b
    ld [hl], b

jr_0de_608c:
    scf
    ccf
    ret nc

    ldh a, [$cf]
    rst $38
    ret z

    ld hl, sp+$1f
    rst $38
    ret z

    ld hl, sp+$07
    rst $38
    ret z

    ld hl, sp+$03
    rst $38
    ret nc

    ldh a, [$03]
    rst $38
    and b
    ldh [rSB], a
    rst $38
    and b
    ldh [$03], a
    db $fd
    jr nz, jr_0de_608c

    ld bc, $20ff
    ldh [rSC], a
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    call nz, $80ff
    add b
    ld sp, hl
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $e4
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc e
    inc de
    nop
    nop
    add hl, hl
    ld [hl], $00
    nop
    add hl, sp
    daa
    nop
    nop
    add hl, sp
    ld h, $00
    nop
    dec a
    inc hl
    nop
    nop
    cpl
    inc sp
    nop
    nop
    inc sp
    ccf
    nop
    nop
    ld a, e
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
    ccf
    ccf
    ld hl, sp-$08
    ld a, h
    ld e, a
    db $fc
    db $fc

jr_0de_6200:
    cp $85
    ld a, h
    db $fc
    rst $38
    adc h
    jr c, jr_0de_6200

    ld a, e
    ld a, a
    or b
    ld [hl], b

jr_0de_620c:
    rst $30
    rst $38
    ret nc

    ldh a, [$8f]
    ld a, a
    ret z

    ld hl, sp+$5f
    cp a
    ret z

    ld hl, sp-$59
    rst $38
    ret z

    ld hl, sp-$3d
    cp a
    ret nc

    ldh a, [$03]
    rst $38
    and b
    ldh [rSB], a
    rst $38
    and b
    ldh [$03], a
    db $fd
    jr nz, jr_0de_620c

    ld bc, $20ff
    ldh [rSC], a
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    call nz, $80ff
    add b
    ld sp, hl
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $e4
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $0f
    nop
    nop
    inc de
    rra
    nop
    nop
    ld h, a
    ld a, a
    rlca
    rlca
    or a
    rst $08
    inc c
    rrca
    rst $30
    adc a
    ld [hl], a
    ld a, a
    rst $18
    cp a
    or a
    set 4, e
    db $e3
    db $d3
    ccf
    add c
    add c
    rst $28
    rst $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    rst $38
    rst $38
    inc b
    rlca
    ld h, e
    rst $38
    cp $ff
    ld de, $1dff
    rst $38
    add hl, bc
    rst $38
    ld hl, sp-$01
    adc e
    rst $38
    db $e4
    rst $38
    jp z, $c3fe

    rst $38
    and h
    db $fc

jr_0de_6390:
    pop af
    rst $18
    inc d
    db $fc
    or c
    rst $38
    jr jr_0de_6390

    ret nz

    ld a, a
    sbc b
    ld hl, sp-$40
    ccf
    or b
    ldh a, [$f0]
    rrca
    cp $fe
    cp b
    ld c, a
    rst $30
    ld sp, hl
    ld sp, hl
    add a
    ei
    db $fc
    ld a, a
    ld a, a
    ei
    db $fc
    rrca
    rrca
    ei
    db $fd
    inc bc
    inc bc
    or $fa
    ld bc, $ec01
    db $f4
    ld [bc], a
    inc bc
    ld hl, sp-$18
    inc bc
    ld [bc], a
    ldh a, [$f0]
    inc bc
    ld [bc], a
    ldh [$e0], a
    ld [bc], a
    inc bc
    ldh [rNR41], a
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
    nop
    nop
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
    rst $38
    rst $38
    inc d
    rra
    or $8f
    rst $30
    rst $38
    rst $30
    adc a
    rst $20
    dec de
    rst $30
    adc a
    di
    rst $38
    rst $30
    rst $38
    rrca
    rrca
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
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    db $e3
    rst $38
    inc b
    rlca
    ld hl, $feff
    rst $38
    ld sp, $1dff
    rst $38
    ld de, $e0ff
    rst $38
    sub e
    rst $38
    ldh [rIE], a
    jp nc, $f1fe

    rst $38
    inc l
    db $fc

jr_0de_6514:
    cp $ff
    jr @-$06

jr_0de_6518:
    add [hl]
    rst $38
    jr jr_0de_6514

    inc bc
    rst $38
    jr jr_0de_6518

    ld bc, $b0ff
    ldh a, [rSB]
    rst $38
    ldh a, [$f0]
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    db $fc
    db $fc
    ld bc, $fcff
    db $fc
    inc bc
    rst $38
    ld a, [$87fe]
    rst $38
    ld a, [c]
    cp $48
    ld a, b
    ld [c], a
    cp $31
    ld sp, $7a46
    inc bc
    inc bc
    xor $f2
    rlca
    dec b
    cp $82
    rlca
    rlca
    ld a, [$0686]
    rlca
    db $f4
    adc h
    inc bc
    inc bc
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
    rrca
    rrca
    rst $38
    rst $38
    inc d
    rra
    or $8f
    rst $30
    rst $38
    rst $30
    adc a
    rst $20
    dec de
    rst $30
    adc a
    di
    rst $38
    rst $30
    rst $38
    rrca
    rrca
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
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    db $e3
    rst $38
    inc b
    rlca
    ld hl, $feff
    rst $38
    ld sp, $1dff
    rst $38
    ld de, $e0ff
    rst $38
    sub d
    cp $e0
    rst $38
    jp nc, $f1fe

    rst $38
    inc l
    db $fc

jr_0de_6694:
    cp $ff
    jr @-$06

jr_0de_6698:
    add [hl]
    rst $38
    jr jr_0de_6694

    inc bc
    rst $38
    jr jr_0de_6698

    add c
    ld a, a
    or b
    ldh a, [$81]
    rst $38
    db $fc
    db $fc
    add c
    ld a, a
    cp $fe
    ld bc, $ffff
    ld sp, hl
    ld bc, $fbff
    db $fd
    inc bc
    rst $38
    rst $38
    ld sp, hl
    add a
    rst $38
    or $fa
    ld c, b
    ld a, b
    xor $f2
    jr nc, jr_0de_66f2

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

jr_0de_66f2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc e
    inc de
    nop
    nop
    jr z, jr_0de_691f

    nop
    nop
    jr c, jr_0de_6913

    nop
    nop
    jr c, jr_0de_6917

    nop
    nop
    dec a
    inc hl
    nop
    nop
    cpl
    inc sp
    nop
    nop
    inc sp
    ccf
    nop
    nop
    ld a, e
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
    ld bc, $0001
    nop
    nop

jr_0de_6913:
    nop
    nop
    nop
    nop

jr_0de_6917:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0de_691f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
    ccf
    ccf
    ld hl, sp-$08
    ld a, h
    ld e, a
    db $fc
    db $fc

jr_0de_6980:
    cp $85
    ld a, h
    db $fc
    rst $38
    adc h
    jr c, jr_0de_6980

    ld a, e
    ld a, a
    or b
    ld [hl], b

jr_0de_698c:
    rst $30
    rst $38
    ret nc

    ldh a, [$8f]
    ld a, a
    ret z

    ld hl, sp+$5f
    cp a
    ret z

    ld hl, sp-$79
    rst $38
    ret z

    ld hl, sp-$7d
    rst $38
    ret nc

    ldh a, [$03]
    rst $38
    and b
    ldh [rSB], a
    rst $38
    and b
    ldh [$03], a
    db $fd
    jr nz, jr_0de_698c

    ld bc, $20ff
    ldh [rSC], a
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    call nz, $80ff
    add b
    ld sp, hl
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $e4
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rla
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
    ld e, $13
    nop
    nop
    dec d
    ld e, $00
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
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
    inc c
    rrca
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
    inc h
    ccf
    nop
    nop
    inc h
    ccf
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
    rra
    ld [de], a
    nop
    nop
    ld a, $27
    nop
    nop
    ccf
    daa
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    db $fc
    nop
    nop
    cp $7e
    nop
    nop
    cp $3e
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
    pop af
    rst $38
    nop
    nop
    ld a, b
    or a
    add b
    add b
    ld hl, sp+$3f
    add b
    add b
    ret nz

    ccf
    add b
    add b
    ld h, b
    sbc a
    add b
    add b
    ret nz

    ccf
    add b
    add b
    ld h, b
    cp a
    add b
    add b
    ldh [rIE], a
    add b
    add b
    pop af
    rst $38
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
    cp $3e
    nop
    nop
    cp $7e
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jr c, jr_0de_6b86

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0de_6b86:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, $0f
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    inc e
    rra
    rlca
    rst $38
    dec sp
    inc a
    rst $20
    rra
    dec sp
    inc a
    rst $20
    rra
    dec sp
    inc a
    rst $20
    rra
    inc e
    rra
    ld h, e
    sbc a
    rrca
    rrca
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
    inc e
    inc e
    nop
    nop
    db $e3
    rst $38
    add b
    add b
    db $e4
    ei
    ret nz

    ret nz

    rst $30
    ld hl, sp-$20
    ld h, b
    rst $30
    ld hl, sp-$60
    ld h, b
    rst $30
    ld hl, sp-$20
    ld h, b
    or $f9
    ret nz

    ret nz

    ld sp, hl
    rst $38
    add b
    add b
    ld a, [de]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    dec bc
    rst $38
    nop
    nop
    jr @+$01

    add [hl]
    add [hl]
    jr nc, @+$01

    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    rst $38
    rst $38
    add [hl]
    add [hl]
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
    ld [$000f], sp
    nop
    ld d, $1f
    nop
    nop
    rla
    rra
    inc bc
    inc bc
    rst $30
    rst $38
    rlca
    rlca
    rlca
    rst $38
    ld c, $0f
    rst $30
    rrca
    ld c, $0f
    rst $30
    rrca
    ld c, $0f
    rst $30
    rrca
    rlca
    rlca
    inc sp
    rst $08
    inc bc
    inc bc
    pop bc
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
    jr jr_0de_6f86

    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    push af
    ei
    add b
    add b
    or $f9
    ret nz

    ret nz

    or $f9
    ld b, b
    ret nz

    or $f9

jr_0de_6f86:
    ret nz

    ret nz

    ld sp, hl
    rst $38
    add b
    add b
    dec de
    rst $38
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $c0
    ret nz

    ld sp, $e0ff
    ldh [$e1], a
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    cp $fe
    ret nz

    ret nz

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
    jr @+$21

    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    jp $01ff


    ld bc, $ffc3
    ld bc, $c301
    rst $38
    ld bc, $c301
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ld h, e
    ld a, a
    nop
    nop
    ld de, $001f
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
    nop
    nop
    nop
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
    db $fc
    db $fc
    nop
    nop
    ld a, [c]
    cp $c0
    ret nz

    pop af
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    add hl, de
    rst $38
    ldh [$e0], a
    ld a, [bc]
    cp $c0
    ret nz

    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    inc [hl]
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
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    nop
    db $e3
    rst $38
    ld bc, $df01
    db $e3
    inc bc
    inc bc
    rst $38
    add e
    inc bc
    inc bc
    rst $38
    add e
    ld bc, $c301
    rst $38
    nop
    nop
    cp $ff
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
    ld [$000f], sp
    nop
    ld [de], a
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    jr jr_0de_7290

    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    add hl, de
    rst $38
    jr jr_0de_72a8

jr_0de_7290:
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop

jr_0de_72a8:
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    ld [hl-], a
    cp $00
    nop
    push af
    ei
    nop
    nop
    db $fd
    di
    nop
    nop
    db $fd
    di

jr_0de_72be:
    nop
    nop
    db $fd
    di
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $ec
    db $fc
    nop
    nop
    jr nc, jr_0de_72be

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
    ld a, [hl]
    ld a, [hl]
    rrca
    rrca
    add c
    rst $38
    inc e
    rra
    ld h, e
    sbc a
    dec sp
    inc a
    rst $20
    rra
    dec sp
    inc a
    rst $20
    rra
    dec sp
    inc a
    rst $20
    rra
    inc e
    rra
    rlca
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    rst $38
    rst $38
    add [hl]
    add [hl]
    ldh [rIE], a
    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    jr nc, @+$01

    ld a, a
    rst $38
    jr @+$01

    add [hl]
    add [hl]
    dec bc
    rst $38
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    ld sp, hl
    rst $38
    add b
    add b
    or $f9
    ret nz

    ret nz

    rst $30
    ld hl, sp-$20
    ld h, b
    rst $30
    ld hl, sp-$60
    ld h, b
    rst $30
    ld hl, sp-$20
    ld h, b
    db $e4
    ei
    ret nz

    ret nz

    db $e3
    rst $38
    add b
    add b
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
    ld a, $3e
    inc bc
    inc bc
    pop bc
    rst $38
    rlca
    rlca
    inc sp
    rst $08
    ld c, $0f
    rst $30
    rrca
    ld c, $0f
    rst $30
    rrca
    ld c, $0f
    rst $30
    rrca
    rlca
    rlca
    rlca
    rst $38
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    nop
    rla
    rra
    nop
    nop
    ld d, $1f
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    cp $fe
    ret nz

    ret nz

    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh [$e0], a
    ld sp, $e0ff
    ldh [rNR30], a
    cp $c0
    ret nz

    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    dec de
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    add b
    add b
    or $f9
    ret nz

    ret nz

    or $f9
    ld b, b
    ret nz

    or $f9
    ret nz

    ret nz

    push af
    ei
    add b
    add b
    db $e3
    rst $38
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    jr jr_0de_75ea

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0de_75ea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $001f
    nop
    ld h, e
    ld a, a
    nop
    nop
    jp $01ff


    ld bc, $ffc3
    ld bc, $c301
    rst $38
    ld bc, $c301
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ld h, d
    ld a, a
    nop
    nop
    jr jr_0de_7677

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
    rlca

jr_0de_7677:
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

jr_0de_76d2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0de_76d2

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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld a, [de]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $c0
    ret nz

    add hl, de
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    ld a, [c]
    cp $c0
    ret nz

    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld [de], a
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
    cp $ff
    ld bc, $c301
    rst $38
    inc bc
    inc bc
    rst $38
    add e
    inc bc
    inc bc
    rst $38
    add e
    ld bc, $df01
    db $e3
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    rra
    rra
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

jr_0de_7862:
    nop
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
    jr nc, jr_0de_7862

    nop
    nop
    db $ec
    db $fc
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $fd
    di
    nop
    nop
    db $fd
    di
    nop
    nop
    db $fd
    di
    nop
    nop
    push af
    ei
    nop
    nop
    ld [hl-], a
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    add hl, de
    rst $38
    jr jr_0de_78cc

    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    ldh a, [rIE]
    db $fc
    db $fc
    rst $38
    rst $38
    jr jr_0de_78e4

jr_0de_78cc:
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

jr_0de_78e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_0de_79fc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
