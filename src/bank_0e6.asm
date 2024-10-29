SECTION "ROM Bank $0e6", ROMX[$4000], BANK[$e6]

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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
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
    jr nz, @+$41

    nop
    nop
    jr nc, jr_0e6_4083

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_408b

    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec sp
    scf
    nop
    nop
    cpl
    ccf
    nop
    nop
    inc a
    cpl
    nop
    nop
    dec a
    ld h, $00
    nop
    cpl
    scf
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld c, $0f
    nop
    nop
    rrca

jr_0e6_4083:
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca

jr_0e6_408b:
    rrca
    nop
    nop
    ld [$000f], sp
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_40db

jr_0e6_40db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    ret nz

    ret nz

    ld [hl], l
    ei
    ret nz

    ret nz

    ld a, e
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    ld e, [hl]
    pop hl
    add b
    add b
    rst $38
    ret nz

    add b
    add b
    ei
    call nz, $8080
    ld h, a
    ld hl, sp-$80
    add b
    ld e, [hl]
    pop hl
    add b
    add b
    rst $38
    pop bc
    nop
    nop
    db $fd
    add e
    nop
    nop
    cp d
    add $00
    nop
    jp nc, Jump_000_006e

    nop
    jp nz, Jump_000_007e

    nop
    jp nz, Jump_000_00fe

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
    inc b
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
    db $fc
    db $fc
    nop
    nop
    adc h
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
    ld hl, sp-$08
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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rra
    inc e
    nop
    nop
    dec a
    ld [hl-], a
    nop
    nop
    ld a, b
    ld h, a
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    cp $ff
    ld bc, $6101
    sbc a
    ld [bc], a
    inc bc
    db $e3
    rra
    ld [bc], a
    inc bc
    or $79
    ld [bc], a
    inc bc
    rst $28
    ldh a, [rSB]
    ld bc, $edd2
    nop
    nop
    db $dd
    db $e3
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec sp
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr nz, jr_0e6_421f

    nop
    nop
    jr nz, jr_0e6_4223

    nop
    nop
    jr nz, @+$41

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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld c, $0f
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
    ld [$000f], sp
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

jr_0e6_421f:
    rlca
    nop
    nop
    ld [bc], a

jr_0e6_4223:
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
    inc bc
    inc bc
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_425b

jr_0e6_425b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    jp Jump_000_00ff


    nop
    ld sp, hl
    rst $38
    add b
    add b
    cp l
    rst $38
    add b
    add b
    ld e, l
    cp a
    add b
    add b
    cp l
    rst $38
    add b
    add b
    ld sp, hl
    rst $38
    add b
    add b
    pop hl
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    adc h
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
    ld hl, sp-$08
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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e6_4377

    nop
    nop
    jr nz, jr_0e6_437b

    nop
    nop
    jr nz, jr_0e6_437f

    nop
    nop
    jr nc, jr_0e6_4383

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_438b

    nop
    nop
    jr nz, jr_0e6_438f

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld hl, $003f
    nop
    inc hl
    dec a
    nop
    nop
    inc hl
    dec a
    nop
    nop
    ld de, $001e
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc c

jr_0e6_4377:
    rrca
    nop
    nop
    inc c

jr_0e6_437b:
    rrca
    nop
    nop
    ld a, [bc]

jr_0e6_437f:
    rrca
    nop
    nop
    ld a, [bc]

jr_0e6_4383:
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra

jr_0e6_438b:
    rra
    nop
    nop
    db $10

jr_0e6_438f:
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
    ld [$000f], sp
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
    rra
    rra
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_43db

jr_0e6_43db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    inc a
    jp $8080


    call c, $80e3
    add b
    ld a, [hl-]
    push bc
    add b
    add b
    ld a, [hl-]
    push bc
    add b
    add b
    ld a, b
    add a
    add b
    add b
    rst $38
    add a
    add b
    add b
    or e
    rst $08
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    db $e3
    db $fd
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
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
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    db $10
    rst $38
    add b
    add b
    inc sp
    rst $38
    add b
    add b
    rst $08
    rst $08
    ldh [$e0], a
    jp $f8c3


    ld hl, sp-$3f
    pop bc
    ld hl, sp-$08
    pop bc
    pop bc
    ld hl, sp-$08
    pop bc
    pop bc
    ldh a, [$f0]
    jp $e0c3


    ldh [$c7], a
    rst $00
    ret nz

    ret nz

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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    jr nz, jr_0e6_44f3

    nop
    nop
    jr nz, jr_0e6_44f7

    nop
    nop
    jr nz, jr_0e6_44fb

    nop
    nop
    jr nz, jr_0e6_44ff

    nop
    nop
    jr nc, jr_0e6_4503

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_450b

    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr nz, jr_0e6_451f

    nop
    nop
    jr nz, jr_0e6_4523

    nop
    nop
    jr nz, @+$41

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

jr_0e6_44f3:
    rra
    nop
    nop
    db $10

jr_0e6_44f7:
    rra
    nop
    nop
    db $10

jr_0e6_44fb:
    rra
    nop
    nop
    rra

jr_0e6_44ff:
    rra
    nop
    nop
    rra

jr_0e6_4503:
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10

jr_0e6_450b:
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    dec b

jr_0e6_451f:
    rlca
    nop
    nop
    ld [bc], a

jr_0e6_4523:
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
    inc bc
    inc bc
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_455b

jr_0e6_455b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    dec a
    jp RST_00


    db $dd
    db $e3
    nop
    nop
    dec a
    jp RST_00


    dec a
    jp RST_00


    ld a, [hl-]
    add $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld a, [hl-]
    cp $00
    nop
    ld a, d
    cp $00
    nop
    ld a, [$007e]
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    ld [hl], d
    adc [hl]
    nop
    nop
    ld b, $fe
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
    call nc, Call_000_00fc
    nop
    db $e4
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    sbc h
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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    jr nz, jr_0e6_4673

    nop
    nop
    jr nz, jr_0e6_4677

    nop
    nop
    jr nz, jr_0e6_467b

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nc, jr_0e6_4683

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_468b

    nop
    nop
    jr nz, jr_0e6_468f

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld h, b
    ld e, a
    nop
    nop
    ld h, b
    ld e, a
    nop
    nop
    jr nc, jr_0e6_469b

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10

jr_0e6_4673:
    rra
    nop
    nop
    db $10

jr_0e6_4677:
    rra
    nop
    nop
    db $10

jr_0e6_467b:
    rra
    nop
    nop
    jr nz, jr_0e6_46bf

    nop
    nop
    ccf

jr_0e6_4683:
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, b

jr_0e6_468b:
    ld a, a
    nop
    nop
    ld b, b

jr_0e6_468f:
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

jr_0e6_469b:
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    rlca
    rlca
    cp $fe
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rra
    rra
    nop
    nop
    rlca

jr_0e6_46bf:
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_46db

jr_0e6_46db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld c, $f1
    add b
    add b
    db $fc
    di
    add b
    add b
    ld b, $f9
    add b
    add b
    ld b, $f9
    add b
    add b
    nop
    rst $38
    add b
    add b
    rst $30
    rst $38
    add b
    add b
    rrca
    rst $30
    add b
    add b
    rrca
    rst $30
    add b
    add b
    rlca
    ld sp, hl
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld b, $fe
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
    inc h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    add $fe
    nop
    nop
    add [hl]
    cp $00
    nop
    adc l
    rst $38
    nop
    nop
    ld hl, sp-$01
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
    nop
    rst $38
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
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    jr nz, jr_0e6_47f3

    nop
    nop
    jr nz, jr_0e6_47f7

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nc, jr_0e6_4803

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_480b

    nop
    nop
    jr nz, jr_0e6_480f

    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, e
    ld [hl], a
    nop
    nop
    db $fc
    cp a
    ld bc, $e001
    ld a, a
    ld bc, $e001
    ld a, a
    nop
    nop
    ldh [$9f], a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10

jr_0e6_47f3:
    rra
    nop
    nop
    db $10

jr_0e6_47f7:
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld a, a

jr_0e6_4803:
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    add c

jr_0e6_480b:
    rst $38
    nop
    nop
    add c

jr_0e6_480f:
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    jr c, jr_0e6_4866

    ld hl, sp-$08
    ccf
    ccf
    ld hl, sp-$08
    rra
    rra
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_485b

jr_0e6_485b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38

jr_0e6_4866:
    nop
    nop

jr_0e6_4868:
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    rrca
    ldh a, [rLCDC]
    ret nz

    cp $f9
    jr nz, jr_0e6_4868

    inc bc
    db $fc
    and b
    ld h, b
    inc bc
    cp $a0
    ld h, b
    inc bc
    cp $a0
    ld h, b
    db $fd
    rst $38
    ldh [$e0], a
    inc bc
    db $fd
    ldh [$e0], a
    inc bc
    db $fd
    ldh [$e0], a
    ld bc, $e0fe
    jr nz, jr_0e6_48ac

    rst $38
    ret nz

    ret nz

    ld b, $fe
    nop
    nop

jr_0e6_48ac:
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld b, d
    cp $00
    nop
    add e
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    db $fc
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld hl, $803f
    add b
    rra
    rra
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rra
    rra
    ret nz

    ret nz

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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
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
    jr nz, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_498b

    nop
    nop
    jr nz, jr_0e6_498f

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr nz, jr_0e6_499f

    nop
    nop
    ld h, b
    ld e, a
    nop
    nop
    ld h, b
    ld e, a
    nop
    nop
    jr nc, jr_0e6_499b

    nop
    nop
    db $10
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
    ld [$000f], sp
    nop
    rra
    rra
    nop
    nop
    rra

jr_0e6_498b:
    rra
    nop
    nop
    db $10

jr_0e6_498f:
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

jr_0e6_499b:
    rra
    nop
    nop
    db $10

jr_0e6_499f:
    rra
    nop
    nop
    ld [$000f], sp
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
    rra
    rra
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_49db

jr_0e6_49db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld c, $f1
    add b
    add b
    db $fc
    di
    add b
    add b
    ld b, $f9
    add b
    add b
    ld b, $f9
    add b
    add b
    nop
    rst $38
    add b
    add b
    rst $30
    rst $38
    add b
    add b
    rrca
    rst $30
    add b
    add b
    rrca
    rst $30
    add b
    add b
    rlca
    ld sp, hl
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
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
    ld [hl], d
    cp $00
    nop
    cp $fe
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    add b
    add b
    inc sp
    rst $38
    add b
    add b
    rst $08
    rst $08
    ldh [$e0], a
    jp $f8c3


    ld hl, sp-$3f
    pop bc
    ld hl, sp-$08
    pop bc
    pop bc
    ld hl, sp-$08
    pop bc
    pop bc
    ldh a, [$f0]
    jp $e0c3


    ldh [$c7], a
    rst $00
    ret nz

    ret nz

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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    jr nz, jr_0e6_4af3

    nop
    nop
    jr nz, jr_0e6_4af7

    nop
    nop
    jr nz, jr_0e6_4afb

    nop
    nop
    jr nz, jr_0e6_4aff

    nop
    nop
    jr nc, jr_0e6_4b03

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_4b0b

    nop
    nop
    jr nz, jr_0e6_4b0f

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e6_4b23

    nop
    nop
    jr nz, jr_0e6_4b27

    nop
    nop
    jr jr_0e6_4b0b

    nop
    nop
    jr jr_0e6_4b0f

    nop
    nop
    inc d

jr_0e6_4af3:
    rra
    nop
    nop
    inc d

jr_0e6_4af7:
    rra
    nop
    nop
    inc d

jr_0e6_4afb:
    rra
    nop
    nop
    inc e

jr_0e6_4aff:
    rra
    nop
    nop
    inc e

jr_0e6_4b03:
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    rla

jr_0e6_4b0b:
    rra
    nop
    nop
    rrca

jr_0e6_4b0f:
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    inc bc

jr_0e6_4b23:
    inc bc
    nop
    nop
    nop

jr_0e6_4b27:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_4b5b

jr_0e6_4b5b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    dec a
    jp RST_00


    db $dd
    db $e3
    nop
    nop
    dec a
    jp RST_00


    dec a
    jp RST_00


    ld a, [hl-]
    add $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld a, [hl-]
    cp $00
    nop
    ld a, d
    cp $00
    nop
    ld a, [$007e]
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    ld [hl], d
    adc [hl]
    nop
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
    inc b
    db $fc
    nop
    nop
    inc b
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
    ld a, [c]
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
    db $fc
    db $fc
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    jr nz, jr_0e6_4c73

    nop
    nop
    jr nz, jr_0e6_4c77

    nop
    nop
    jr nz, jr_0e6_4c7b

    nop
    nop
    jr nz, jr_0e6_4c7f

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_4c8b

    nop
    nop
    jr nz, jr_0e6_4c8f

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld hl, $003f
    nop
    inc hl
    dec a
    nop
    nop
    inc hl
    dec a
    nop
    nop
    add hl, de
    ld e, $00
    nop
    jr jr_0e6_4c8f

    nop
    nop
    inc d

jr_0e6_4c73:
    rra
    nop
    nop
    inc d

jr_0e6_4c77:
    rra
    nop
    nop
    inc d

jr_0e6_4c7b:
    rra
    nop
    nop
    ld [hl+], a

jr_0e6_4c7f:
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, $3f
    nop
    nop
    ld b, c

jr_0e6_4c8b:
    ld a, a
    nop
    nop
    ld b, c

jr_0e6_4c8f:
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
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    rlca
    rlca
    cp $fe
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rra
    rra
    nop
    nop
    rlca
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_4cdb

jr_0e6_4cdb:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    inc a
    jp $8080


    call c, $80e3
    add b
    ld a, [hl-]
    push bc
    add b
    add b
    ld a, [hl-]
    push bc
    add b
    add b
    ld a, b
    add a
    add b
    add b
    rst $38
    add a
    add b
    add b
    or a
    rst $08
    add b
    add b
    rst $20
    rst $38
    add b
    add b
    rst $20
    ld sp, hl
    nop
    nop
    add $fe
    nop
    nop
    add h
    ld a, h
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
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    dec c
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    nop
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
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    inc b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    jr nz, jr_0e6_4df3

    nop
    nop
    jr nz, jr_0e6_4df7

    nop
    nop
    jr nz, jr_0e6_4dfb

    nop
    nop
    jr nz, jr_0e6_4dff

    nop
    nop
    jr nc, jr_0e6_4e03

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_4e0b

    nop
    nop
    jr nz, jr_0e6_4e0f

    nop
    nop
    inc a
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    ccf
    ld a, [hl-]
    nop
    nop
    cpl
    scf
    nop
    nop
    cpl
    scf
    nop
    nop
    daa
    add hl, sp
    nop
    nop
    jr jr_0e6_4e0b

    nop
    nop
    inc e
    rra
    nop
    nop
    inc d

jr_0e6_4df3:
    rra
    nop
    nop
    inc d

jr_0e6_4df7:
    rra
    nop
    nop
    ld [hl+], a

jr_0e6_4dfb:
    ccf
    nop
    nop
    ld [hl+], a

jr_0e6_4dff:
    ccf
    nop
    nop
    ld a, a

jr_0e6_4e03:
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    add b

jr_0e6_4e0b:
    rst $38
    nop
    nop
    add b

jr_0e6_4e0f:
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    jr c, jr_0e6_4e66

    ld hl, sp-$08
    ccf
    ccf
    ld hl, sp-$08
    rra
    rra
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_4e5b

jr_0e6_4e5b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    rst $28
    rst $38

jr_0e6_4e66:
    nop
    nop

jr_0e6_4e68:
    sbc a
    rst $38
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ld a, [hl-]
    rst $00
    ld b, b
    ret nz

    dec sp
    add $40
    ret nz

    or $8f
    jr nz, jr_0e6_4e68

    ld [hl], a
    adc h
    and b
    ld h, b
    db $eb
    ld e, $a0
    ld h, b
    db $d3
    ld a, $a0
    ld h, b
    db $dd
    ccf
    ldh [$e0], a
    and e
    ld a, l
    ldh [$e0], a
    jp $e0fd


    ldh [$81], a
    cp $e0
    jr nz, jr_0e6_4ea8

    rst $38
    ret nz

    ret nz

jr_0e6_4ea8:
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
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    db $fc
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld hl, $803f
    add b
    rra
    rra
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rra
    rra
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e6_4f40:
    jr jr_0e6_4f5a

    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    jr nc, jr_0e6_4f40

    sbc $f7
    add sp, -$08
    or l
    rst $08
    ld a, $fe
    ld [hl], e
    ld c, a

jr_0e6_4f5a:
    add c
    rst $38
    dec h
    ccf
    ret nz

    rst $38
    ld [de], a
    dec e
    ret nz

    rst $38
    dec c
    rrca
    pop bc
    rst $38
    rrca
    rrca
    jp nz, $0fff

    ld [$ff44], sp
    dec bc
    inc c
    jr @+$01

    rrca
    ld [$ff60], sp
    rla
    jr jr_0e6_4fbb

    rst $38
    inc d
    dec de
    ld b, a
    rst $38
    ccf
    ccf
    ld hl, sp-$01
    ccf
    ccf
    nop
    rst $38
    ld a, $3f
    nop
    rst $38
    inc a
    cpl
    inc bc
    rst $38
    ld a, $3f
    inc c
    rst $38
    scf
    cpl
    ld hl, sp-$01
    ccf
    ccf
    db $f4
    rst $30
    inc a
    cpl
    inc c
    rst $38
    jr jr_0e6_4fc1

    ld b, $ff
    inc b
    rlca
    ld b, $ff
    ld [bc], a
    inc bc
    ld a, [bc]
    ei
    ld bc, $fd01
    db $fd
    nop
    nop
    dec e
    dec e
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $ff01

jr_0e6_4fbb:
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop

jr_0e6_4fc1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e6_500e:
    nop
    nop
    nop
    nop

jr_0e6_5012:
    nop
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
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0e6_500e

    nop
    nop
    jr nz, jr_0e6_5012

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr z, @-$06

    nop
    nop
    ret z

    ld hl, sp+$00
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
    rlca
    rst $38
    add b
    add b
    ld [$5eff], sp
    sbc $0c
    rst $38
    ld a, $fe
    inc c
    rst $38
    ccf
    rst $38
    inc c
    rst $38
    ccf
    rst $38
    inc e
    rst $38
    cpl
    rst $28
    db $fc
    rst $38
    ld b, a
    rst $00
    rst $38
    rst $38
    add a
    add a
    ld a, b
    ld a, b
    inc bc
    inc bc
    ld bc, $b001
    ld [hl], b
    inc bc
    ld [bc], a
    adc h
    ld a, h
    ld bc, $6201
    sbc [hl]
    nop
    nop
    cp l
    jp RST_00


    ld e, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    db $d3
    rst $38
    nop
    nop
    ld a, [c]
    rst $18
    nop
    nop
    db $fd
    cp $00
    nop
    ld a, h
    ld a, a
    nop
    nop
    jr c, jr_0e6_50e3

    nop
    nop
    rra
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    nop
    nop
    rlca
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
    dec b
    rlca
    nop
    nop
    rlca
    ld b, $00
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a

jr_0e6_50e3:
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
    inc bc
    inc bc
    nop
    nop
    inc bc
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
    inc bc
    inc bc
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
    cp e
    or a
    ret nz

    ret nz

    db $dd
    db $eb
    ldh [$e0], a
    cp l
    jp $e0e0


    add c
    rst $38
    ret nz

    ret nz

    db $e3
    rra
    ret nz

    ret nz

    db $fc
    inc bc
    ld [hl], b
    ldh a, [$ef]
    ld de, $f8c8
    dec e
    db $e3
    db $e4
    db $fc

jr_0e6_516c:
    cp e
    rst $00
    ld h, h
    db $fc

jr_0e6_5170:
    ld l, [hl]
    rst $38
    and h
    ld a, h
    rlca
    rst $38
    ld h, h
    db $fc

jr_0e6_5178:
    inc bc
    rst $38
    ret z

    ld hl, sp+$00
    rst $38
    db $10
    ldh a, [$f0]
    rst $38
    jr nz, @-$1e

jr_0e6_5184:
    rrca
    rst $38
    ldh [$e0], a
    nop
    rst $38
    jr nz, jr_0e6_516c

    nop
    rst $38
    jr nz, jr_0e6_5170

jr_0e6_5190:
    add a
    rst $38
    ldh [$e0], a

jr_0e6_5194:
    ld a, b
    rst $38
    jr nz, jr_0e6_5178

jr_0e6_5198:
    add b
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    jr nz, jr_0e6_5184

    nop
    rst $38
    ld h, b
    ldh [rSB], a
    rst $38
    ret nz

    ret nz

    ld [bc], a
    rst $38
    jr nz, jr_0e6_5190

    ld [bc], a
    rst $38
    jr nz, jr_0e6_5194

    inc b
    rst $38
    jr nz, jr_0e6_5198

    inc b
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    adc b
    ld hl, sp+$02
    rst $38
    ld [$02f8], sp
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld b, $ff
    ld [$f9f8], sp
    ld sp, hl
    ldh a, [$f0]
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    ei

jr_0e6_51f6:
    db $fc
    db $fc
    ei
    ei
    cp $fe
    ld hl, sp-$08
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
    ccf
    ccf
    ldh a, [$f0]
    jr z, jr_0e6_5259

    ccf
    rst $18
    cpl
    jr nc, jr_0e6_51f6

    ccf
    inc e
    dec de
    rst $20
    rst $18
    rlca
    rlca
    sbc [hl]
    rst $20
    rlca
    ld b, $bd
    add $03
    inc bc
    sbc $a7
    ld bc, $7701
    adc a
    nop
    nop
    adc h
    rst $38
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    rlca
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
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop

jr_0e6_5259:
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
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
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
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    ld a, $3e
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
    rst $08
    rst $38
    ret nz

    ret nz

    or a
    rst $18
    ret nz

    ret nz

    db $fd
    rst $00
    ret nz

    ret nz

    ld e, c
    ld h, a
    ret nz

    ret nz

    ld a, [hl]
    ld b, a
    ldh [$e0], a
    db $db
    rst $38
    ret nc

    ldh a, [rIE]
    rst $38
    ld [$c3f8], sp
    rst $38
    ld [$e0f8], sp
    rst $38
    ld [$60f8], sp
    rst $38
    ld a, b
    ld hl, sp-$20
    rst $38
    jr z, @-$06

jr_0e6_52f8:
    ret nz

    rst $38
    jr z, @-$06

jr_0e6_52fc:
    nop
    rst $38
    ld [$00f8], sp
    rst $38
    ld hl, sp-$08

jr_0e6_5304:
    rst $38
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a

jr_0e6_5314:
    rst $38
    rst $38
    jr nz, jr_0e6_52f8

jr_0e6_5318:
    nop
    rst $38
    jr nz, jr_0e6_52fc

    nop
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    jr nz, jr_0e6_5304

    nop
    rst $38
    ld h, b
    ldh [rSB], a
    rst $38
    ret nz

    ret nz

    ld [bc], a
    rst $38
    jr nz, @-$1e

    ld [bc], a
    rst $38
    jr nz, jr_0e6_5314

    inc b
    rst $38
    jr nz, jr_0e6_5318

    inc b
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    adc b
    ld hl, sp+$02
    rst $38
    ld [$02f8], sp
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld b, $ff
    ld [$f9f8], sp
    ld sp, hl
    ldh a, [$f0]
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    ei
    db $fc
    db $fc
    ei
    ei
    cp $fe
    ld hl, sp-$08
    cp $fe
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
    ld b, $07
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    ld bc, $df01
    rst $18
    rlca
    rlca
    cp e
    rst $38
    ld e, $1f
    ld d, l
    cp e
    dec sp
    inc a
    ld l, e
    rst $18
    ld h, $39
    rst $30
    adc a
    ld sp, $fb2f
    add a
    daa
    ccf
    db $fc
    add e
    add hl, de
    add hl, de
    sub $ef
    nop
    nop
    ei
    ei
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
    ld [bc], a
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
    inc bc
    inc bc
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
    db $fc
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $d3
    ld a, a
    nop
    nop
    sbc h
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    ld b, b
    ret nz

    jp Jump_000_20ff


    ldh [$80], a
    rst $38
    db $10
    ldh a, [$c0]
    rst $38
    db $10
    ldh a, [$e0]
    rst $38
    db $10
    ldh a, [$e0]
    rst $38
    db $10
    ldh a, [$e0]
    rst $38
    jr nc, @-$0e

jr_0e6_547c:
    ldh [rIE], a
    ret nc

    ldh a, [$c7]
    rst $38
    db $10
    ldh a, [$f8]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    jr nz, @-$1e

jr_0e6_5490:
    add a
    rst $38
    ldh [$e0], a

jr_0e6_5494:
    ld hl, sp-$01
    jr nz, @-$1e

jr_0e6_5498:
    add b
    rst $38
    jr nz, jr_0e6_547c

    nop
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    ld h, b
    ldh [rSB], a
    rst $38
    and b
    ldh [rSC], a
    rst $38
    jr nz, jr_0e6_5490

    ld [bc], a
    rst $38
    jr nz, jr_0e6_5494

    inc b
    rst $38
    jr nz, jr_0e6_5498

    inc b
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    adc b
    ld hl, sp+$02
    rst $38
    ld [$02f8], sp
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld [bc], a
    rst $38
    inc b
    db $fc
    ld b, $ff
    ld [$f9f8], sp
    ld sp, hl
    ldh a, [$f0]
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    ei
    db $fc
    db $fc
    ei
    ei
    cp $fe
    ld hl, sp-$08
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
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ef01
    rra
    ld bc, $ff01
    db $eb
    dec e
    dec e
    rst $38
    rlca
    cpl
    inc sp
    ld hl, sp-$71
    ld a, e
    ld a, a
    rst $28
    rra
    ld e, a
    ld a, e
    ld hl, sp-$01
    ld e, a
    ld a, a
    call c, Call_0e6_7dff
    ld a, a
    db $ec
    rst $38
    ld e, d
    ld l, l
    pop hl
    rst $38
    cp l
    rst $08
    ldh [rIE], a
    rst $28
    sub a
    ret nz

    rst $38
    ei
    add a
    add b
    rst $38
    or e
    rst $08
    nop
    rst $38
    ld b, a
    ld a, a
    rrca
    rst $38
    add hl, sp
    add hl, sp
    ldh a, [rIE]
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
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_55a3

    nop
    nop
    jr nz, jr_0e6_55a7

    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    inc b
    db $fc
    rlca
    rlca
    adc b
    ld hl, sp+$07
    rlca
    ld hl, sp-$08
    rlca
    rlca
    db $e4
    db $fc
    inc bc
    inc bc
    add h
    db $fc
    ld bc, $0201
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
    ld b, c

jr_0e6_55a3:
    ld a, a
    nop
    nop
    ld [hl+], a

jr_0e6_55a7:
    ld a, $00
    nop
    ld e, $1e
    nop
    nop
    ld c, $0e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e6_55d4:
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop
    rst $28
    rst $38
    add b
    add b
    ld [hl], a
    rst $38
    ret nz

    ret nz

    scf
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rst $00
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    sub b
    ldh a, [$85]
    cp $88
    ld a, b
    ld b, $ff
    ret z

    jr c, jr_0e6_5648

    cp $c8
    jr c, jr_0e6_55d4

    cp $d0
    jr nc, jr_0e6_5617

    rst $38
    ret nc

    jr nc, jr_0e6_561c

    rst $38
    ret nc

jr_0e6_5617:
    ldh a, [$1f]
    rst $38
    ldh a, [$f0]

jr_0e6_561c:
    rst $20
    rst $38
    ldh a, [$f0]
    inc bc
    db $fc
    ldh a, [$f0]
    inc bc
    rst $38
    ldh [$e0], a
    add hl, bc
    cp $c0
    ld b, b
    pop af
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    jr nz, jr_0e6_567d

    add b
    add b
    daa
    ccf
    ret nz

    ret nz

    rra
    rra
    ldh [$e0], a

jr_0e6_5648:
    inc e
    rra
    db $10
    ldh a, [rNR32]
    rra
    ld [$08f8], sp
    rrca
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    inc b
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    ld [$01f8], sp
    ld bc, $f818
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop

jr_0e6_567d:
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ef01
    rra
    ld bc, $ff01
    db $eb
    dec e
    dec e
    rst $38
    rlca
    cpl
    inc sp
    ld hl, sp-$71
    ld a, e
    ld a, a
    rst $28
    rra
    ld e, a
    ld a, e
    ld hl, sp-$01
    ld e, a
    ld a, a
    call c, Call_0e6_7dff
    ld a, a
    db $ec
    rst $38
    ld e, d
    ld l, l
    pop hl
    rst $38
    cp l
    rst $08
    ldh [rIE], a
    rst $28
    sub a
    ret nz

    rst $38
    ei
    add a
    add b
    rst $38
    or e
    rst $08
    nop
    rst $38
    ld b, a
    ld a, a
    adc a
    rst $38
    add hl, sp
    add hl, sp
    ldh a, [rIE]
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e6_571b

    nop
    nop
    jr nz, jr_0e6_571f

    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e6_5727

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
    ld bc, $e201
    cp $01
    ld bc, $fcfc
    ld bc, $fc01
    db $fc
    ld bc, $e401
    db $fc
    ld bc, $0201
    cp $01
    ld bc, $fe02
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c

jr_0e6_571b:
    rst $38
    nop
    nop
    add c

jr_0e6_571f:
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a

jr_0e6_5727:
    ld a, $00
    nop
    ld e, $1e
    nop
    nop
    ld c, $0e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e6_5754:
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    rst $38
    add b
    add b
    ld [hl], a
    rst $38
    ret nz

    ret nz

    scf
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rst $00
    rst $38
    ret nc

    ldh a, [$87]
    rst $38
    sub b
    ldh a, [$85]
    cp $88
    ld a, b
    ld b, $ff
    ret z

    jr c, jr_0e6_57c0

    cp $c8
    jr c, jr_0e6_5754

    cp $d0
    jr nc, @+$10

    rst $38
    ret nc

    jr nc, jr_0e6_579c

    rst $38
    ret nc

    ldh a, [$1f]
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    rlca
    db $fc
    ldh a, [$f0]

jr_0e6_579c:
    rlca
    rst $38
    ldh [$e0], a
    rrca
    cp $c0
    ld b, b
    di
    rst $38
    add b
    add b
    ld b, d
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
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
    ld sp, hl
    rst $38
    nop
    nop

jr_0e6_57c0:
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    ld a, b
    ld a, a
    add b
    add b
    jr nz, jr_0e6_580d

    add b
    add b
    jr nz, jr_0e6_5811

    add b
    add b
    jr nz, jr_0e6_5815

    ld b, b
    ret nz

    jr nz, jr_0e6_5819

    ld b, b
    ret nz

    db $10
    rra
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
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

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

jr_0e6_580d:
    nop
    nop
    nop
    nop

jr_0e6_5811:
    nop
    nop
    nop
    nop

jr_0e6_5815:
    nop
    nop
    nop
    nop

jr_0e6_5819:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rSVBK]
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    rst $28
    pop af
    pop bc
    pop bc
    inc e
    rra
    rst $38
    ccf
    ld d, $19
    rst $38
    rst $00
    ld c, $0f
    rst $38
    rst $38
    inc bc
    inc bc
    or a
    rlc c
    ld bc, $83fd
    nop
    nop
    db $fc
    add e
    nop
    nop
    cp b
    rst $00
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    dec a
    dec a
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    jr nc, jr_0e6_58b3

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld hl, sp-$01
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
    ld hl, sp-$01
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
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

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
    rlca

jr_0e6_58b3:
    rlca
    nop
    nop
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rra
    rra
    ldh [$e0], a
    inc l
    inc sp
    ldh a, [$f0]
    ld a, $37
    ldh a, [$f0]
    cpl
    ld sp, $f0f0
    ld a, $21
    ldh [$60], a

jr_0e6_58e8:
    dec l
    inc sp
    ldh [$e0], a
    ld a, a
    ld a, a
    jr jr_0e6_58e8

    add c
    rst $38
    db $fc
    db $fc
    ld [hl], b
    rst $38
    adc $fe
    cp b
    rst $38
    ld c, $fe
    ld e, h
    cp a
    ccf
    rst $38
    cp h
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    add b
    rst $38
    add hl, bc
    rst $38
    add b
    rst $38
    ld [de], a
    cp $e0
    rst $38
    inc e
    db $fc
    ld e, a
    cp a
    ld hl, sp-$08
    ldh [rIE], a
    ld [$00f8], sp
    rst $38
    ld [$00f8], sp
    rst $38
    ld [$02f8], sp
    rst $38
    ld [$01f8], sp
    rst $38
    ldh a, [$f0]
    ld e, $ff
    db $10
    ldh a, [$30]
    rst $38
    db $10
    ldh a, [$d0]
    rst $18
    db $10
    ldh a, [$df]
    rst $18
    ldh a, [$f0]
    sbc a
    sbc a
    ld hl, sp-$08
    sbc [hl]
    sbc a
    ld [$48f8], sp
    rst $08
    inc b
    db $fc
    ld c, b
    rst $08
    ld [bc], a
    cp $24
    rst $20
    ld bc, $24ff
    rst $20
    ld bc, $42ff
    jp $ff01


    add c
    add c
    ld [bc], a
    cp $80
    add b
    adc [hl]
    cp $80
    add b
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    ld a, a
    ld a, a
    pop bc
    pop bc
    rst $38
    rst $38
    jp $ffc3


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
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    rst $38
    rst $38
    ld a, [$ffff]
    rst $38
    adc l
    ei
    rst $38
    add b
    db $76
    cp c
    add b
    rst $38
    ld a, a
    ldh a, [rIE]
    rst $38
    rst $30
    ld hl, sp+$00
    nop
    ld a, d
    ld a, l
    nop
    nop
    ccf
    ccf
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    jr nc, jr_0e6_5a33

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld hl, sp-$01
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
    ld hl, sp-$01
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
    jr nz, jr_0e6_5a5f

    nop
    nop
    jr nz, jr_0e6_5a63

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
    rlca

jr_0e6_5a33:
    rlca
    nop
    nop
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
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

    ld a, e
    ld b, a
    ret nz

jr_0e6_5a5f:
    ret nz

    ld a, a
    ld a, d
    ret nz

jr_0e6_5a63:
    ret nz

    ld a, [hl]
    ld b, c
    ret nz

    ret nz

    ld a, h
    ld h, e
    ld hl, sp-$08
    ld a, c
    ld b, a
    db $fc
    db $fc
    rst $00
    rst $38
    adc [hl]
    cp $f9
    rst $38
    add d
    cp $fc
    rst $38
    ld [bc], a
    cp $7c
    rst $38
    ld a, $fe
    cp h
    ld a, a
    ld [de], a
    cp $7c
    rst $38
    ld [de], a
    cp $f8
    rst $38
    ld b, $fe
    ld [hl], b
    rst $38
    ld a, h
    db $fc
    cp a
    ld a, a
    adc b
    ld hl, sp-$80
    rst $38
    ld [$80f8], sp
    rst $38
    ld [$80f8], sp
    rst $38
    ld [hl], b
    ldh a, [rIE]
    rst $38
    adc b
    ld hl, sp+$00
    rst $38
    ld [$00f8], sp
    rst $38
    ld [$00f8], sp
    rst $38
    ld [$00f8], sp
    rst $38
    ld [$00f8], sp
    rst $38
    ldh a, [$f0]
    rra
    rst $38
    db $10
    ldh a, [$30]
    rst $38
    db $10
    ldh a, [$d0]
    rst $18
    db $10
    ldh a, [$df]
    rst $18
    ldh a, [$f0]
    sbc a
    sbc a
    ld hl, sp-$08
    sbc [hl]
    sbc a
    ld [$48f8], sp
    rst $08
    inc b
    db $fc
    ld c, b
    rst $08
    ld [bc], a
    cp $24
    rst $20
    ld bc, $24ff
    rst $20
    ld bc, $42ff
    jp $ff01


    add c
    add c
    ld [bc], a
    cp $80
    add b
    adc [hl]
    cp $80
    add b
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    ld a, a
    ld a, a
    pop bc
    pop bc
    rst $38
    rst $38
    jp $ffc3


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
    dec a
    inc sp
    nop
    nop
    ld d, $1f
    nop
    nop
    ld e, $11
    nop
    nop
    dec bc
    inc c
    nop
    nop
    ld b, $05
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
    rra
    rra
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
    ld [hl], l
    ld a, e
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec hl
    scf
    nop
    nop
    ccf
    jr nz, jr_0e6_5b59

jr_0e6_5b59:
    nop
    dec sp
    inc h
    nop
    nop
    rst $20
    ld hl, sp+$03
    inc bc
    rst $28
    ld [hl], c
    rrca
    inc c
    ld [hl], d
    rst $38
    dec a
    inc sp
    sbc h
    sbc a
    db $76
    ld c, [hl]
    db $10
    rra
    ret c

    cp b
    ld h, b
    ld a, a
    ld h, b
    ld h, b
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $f101
    rst $38
    ld bc, $0101
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
    ccf
    ccf
    nop
    nop
    rst $38
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
    ld [hl], b
    ldh a, [rP1]
    nop
    cp b
    ld a, b
    nop
    nop
    rra
    rst $38
    add b
    add b
    ld h, a
    rst $38
    ret nz

    ret nz

    ld hl, sp-$01
    ldh [$e0], a

jr_0e6_5bf0:
    jr c, @+$01

    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr jr_0e6_5bf0

jr_0e6_5bf8:
    nop
    rst $38
    ld hl, sp-$08

jr_0e6_5bfc:
    add b
    rst $38
    jr z, jr_0e6_5bf8

jr_0e6_5c00:
    ret nz

    rst $38
    jr z, jr_0e6_5bfc

    ret nz

    rst $38
    jr z, jr_0e6_5c00

    ret nz

    rst $38
    ld [$c1f8], sp
    rst $38
    ldh a, [$f0]
    cp $ff
    db $10
    ldh a, [$80]
    ld a, a
    db $10
    ldh a, [$80]
    ld a, a
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a

jr_0e6_5c20:
    rst $38
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rSB]
    rst $38
    ldh [$e0], a
    ld a, $ff
    jr nz, @-$1e

    ld h, b
    rst $38
    jr nz, jr_0e6_5c20

    and b
    cp a
    jr nz, @-$1e

    cp a
    cp a
    ldh [$e0], a
    ccf
    ccf
    ldh a, [$f0]
    inc a
    ccf
    db $10
    ldh a, [$90]
    sbc a
    ld [$90f8], sp
    sbc a
    inc b
    db $fc
    ld c, b
    rst $08
    ld [bc], a
    cp $48
    rst $08
    ld [bc], a
    cp $84
    add a
    ld [bc], a
    cp $02
    inc bc
    inc b
    db $fc
    ld bc, $1c01
    db $fc
    nop
    nop
    db $fc
    db $fc
    add b
    add b
    ld a, $3e
    add b
    add b
    cp $fe
    add e
    add e
    cp $fe
    add a
    add a
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
    ld e, $11
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    stop
    nop
    rra
    jr jr_0e6_5cd9

jr_0e6_5cd9:
    nop
    ld e, $11
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    inc a
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
    ld h, b
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
    ld a, b
    ld a, a
    nop
    nop
    ld d, a
    ld l, a
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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e6_5d63

    nop
    nop
    jr nz, jr_0e6_5d67

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
    dec de
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
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

jr_0e6_5d63:
    nop
    nop
    nop
    nop

jr_0e6_5d67:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0e6_5d86:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$b0]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    jr nc, jr_0e6_5d86

    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    sbc $fe
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld l, e
    rst $30
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    dec a
    jp RST_00


    reti


    rst $20
    nop
    nop
    dec c
    di
    nop
    nop
    dec c
    di
    nop
    nop
    dec c
    di
    nop
    nop
    db $ed
    di
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rra
    rst $28
    nop
    nop
    rra
    rst $28
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    pop af
    nop
    nop
    rrca
    rst $38
    inc e
    inc e
    jr nc, @+$01

    db $fc
    db $fc
    ld b, b
    rst $38
    db $fc
    db $fc
    add b
    rst $38
    db $fc
    db $fc
    add b
    rst $38
    cp $fe
    nop
    rst $38
    sbc [hl]
    sbc [hl]
    ld bc, $0eff
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    db $fc
    db $fc
    rlca
    ld b, $ae
    ld a, [hl]
    ld [bc], a
    inc bc
    rst $10
    rst $28
    inc bc
    ld [bc], a
    jp $013f


    ld bc, $9f6c
    nop
    nop
    rst $18
    cp a
    nop
    nop
    rst $20
    rst $38
    ld bc, $b801
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $ee01
    rst $38
    ld bc, $d601
    rst $28
    ld bc, $ee01
    rst $38
    ld bc, $5c01
    cp a
    ld bc, $ef01
    rra
    ld [bc], a
    inc bc
    db $e4
    rra
    dec c
    ld c, $c8
    ccf
    inc e
    rra
    db $10
    rst $38
    inc a
    ccf
    ccf
    rst $38
    inc sp
    ccf
    ret nz

    rst $38
    dec de
    rra
    nop
    rst $38
    ld c, $0f
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    db $10
    rra
    nop
    rst $38
    jr nz, jr_0e6_5eb9

    rlca
    rst $38
    ld a, $3f
    inc c
    rst $38
    ccf
    ccf
    db $f4
    rst $30
    ccf
    ccf
    rst $30
    rst $30
    ld a, $3f
    daa
    rst $20
    jr nz, jr_0e6_5ecd

    daa
    rst $20
    jr nz, jr_0e6_5ed1

    ld [de], a
    di
    db $10
    rra
    ld de, $10f1
    rra
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    rlca
    rlca
    ldh a, [$f0]
    rra

jr_0e6_5eb9:
    rra
    ldh a, [$f0]
    ccf
    ccf
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

jr_0e6_5ecd:
    nop
    nop
    nop
    nop

jr_0e6_5ed1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    inc bc
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    rlca
    cp $40
    ret nz

    rlca
    cp $c0
    ld b, b
    rlca
    cp $c0
    ld b, b
    inc bc
    cp $40
    ret nz

    dec a
    cp $80
    add b
    call nz, $80ff
    add b
    dec b
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld [c], a
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
    ld c, $fe
    nop
    nop
    ld [hl], h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop

jr_0e6_5f3c:
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

jr_0e6_5f48:
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0e6_5f3c

    ld b, b
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR10]
    rra
    jr nz, jr_0e6_5f48

    ld [$e00f], sp
    ldh [rTAC], a
    rlca
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rTAC]
    rlca
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    ccf
    ccf
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
    ld [$0000], sp
    rrca
    rrca
    inc bc
    inc bc
    adc a
    adc b
    dec b
    ld b, $cf
    ld c, h
    rlca
    rlca
    rst $28
    xor b
    dec bc
    rrca
    cp a
    rst $38
    rrca
    rrca
    db $fc
    rst $38
    add hl, bc
    rrca
    xor $ff
    rrca
    add hl, bc
    xor [hl]
    rst $18
    ld d, $19
    sbc $ff
    dec e
    ld [de], a
    ld a, h
    rst $38
    rra
    db $10
    cp b
    ld a, a
    rla
    jr @-$5e

    ld a, a
    ld [$7f0f], sp
    sbc a
    rlca
    rlca
    ldh [$9f], a
    nop
    nop
    ret nz

    cp a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld [hl], a
    ld l, a
    nop
    nop
    ret c

    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    db $10
    rra
    nop
    rst $38
    jr nz, jr_0e6_6039

    rlca
    rst $38
    ld a, $3f
    inc c
    rst $38
    ccf
    ccf
    db $f4
    rst $30
    ccf
    ccf
    rst $30
    rst $30
    ld a, $3f
    daa
    rst $20
    jr nz, jr_0e6_604d

    daa
    rst $20
    jr nz, @+$41

    ld [de], a
    di
    db $10
    rra
    ld de, $10f1
    rra
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    rlca
    rlca
    ldh a, [$f0]
    rra

jr_0e6_6039:
    rra
    ldh a, [$f0]
    ccf
    ccf
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

jr_0e6_604d:
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
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_6067

jr_0e6_6067:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld h, $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld h, e
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    cp $fe
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
    cp $fe
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
    ld a, h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop

jr_0e6_60bc:
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

jr_0e6_60c8:
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0e6_60bc

    ld b, b
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    db $10

jr_0e6_60e3:
    ldh a, [rNR10]
    rra
    jr nz, jr_0e6_60c8

    ld [$e00f], sp
    ldh [rTAC], a
    rlca
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rTAC]
    rlca
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    ccf
    ccf
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
    ld [$0000], sp
    rrca
    rrca
    inc bc
    inc bc
    adc a
    adc b
    dec b
    ld b, $cf
    ld c, h
    rlca
    rlca
    rst $28
    xor b
    dec bc
    rrca
    cp a
    rst $38
    rrca
    rrca
    db $fc
    rst $38
    add hl, bc
    rrca
    xor $ff
    rrca
    add hl, bc
    xor [hl]
    rst $18
    ld d, $19
    sbc $ff
    dec e
    ld [de], a
    ld a, h
    rst $38
    rra
    db $10
    cp b
    ld a, a
    rla
    jr jr_0e6_60e3

    ld a, a
    ld [$7f0f], sp
    sbc a
    rlca
    rlca
    ldh [$9f], a
    nop
    nop
    ret nz

    cp a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    scf
    cpl
    nop
    nop
    jr c, jr_0e6_619b

    nop
    nop
    jr nz, jr_0e6_619f

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e6_61a7

    nop
    nop
    jr nz, jr_0e6_61ab

    nop
    nop
    jr nz, jr_0e6_61af

    nop
    nop
    jr nz, jr_0e6_61b3

    nop
    nop
    jr nz, jr_0e6_61b7

    nop
    nop
    jr nz, jr_0e6_61bb

    nop
    nop
    jr nz, jr_0e6_61bf

    nop
    nop
    jr nz, @+$41

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
    jr nz, jr_0e6_61cf

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

jr_0e6_619b:
    ld a, a
    nop
    nop
    ld b, b

jr_0e6_619f:
    ld a, a
    nop
    nop
    jr nz, jr_0e6_61e3

    nop
    nop
    rra

jr_0e6_61a7:
    rra
    nop
    nop
    rrca

jr_0e6_61ab:
    rrca
    nop
    nop
    rrca

jr_0e6_61af:
    rrca
    nop
    nop
    rrca

jr_0e6_61b3:
    rrca
    nop
    nop
    ccf

jr_0e6_61b7:
    ccf
    nop
    nop
    rst $38

jr_0e6_61bb:
    rst $38
    ld bc, $ff01

jr_0e6_61bf:
    rst $38
    nop
    nop
    ld bc, $f001
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop

jr_0e6_61cf:
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$58
    nop
    nop
    ret c

    jr c, jr_0e6_61db

jr_0e6_61db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld h, $fe
    nop

jr_0e6_61e3:
    nop
    cp $fe
    nop
    nop
    ld h, e
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    cp $fe
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
    cp $fe
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
    ld b, $fe
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld c, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld h, b
    rst $38
    add b
    add b
    sbc a
    sbc a
    nop
    nop
    add a
    add a
    nop
    nop
    add a
    add a
    add b
    add b
    adc a
    adc a
    add b
    add b
    cp a
    cp a
    ret nz

    ret nz

    cp a
    cp a
    ldh [$e0], a
    adc a
    adc a
    ldh [$e0], a
    ld d, b
    or b
    nop
    nop
    xor b
    ret c

    nop
    nop
    ld d, h
    ld l, h
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    dec d
    dec de
    add b
    add b
    rrca
    rrca
    ld b, b
    ret nz

    rra
    dec de
    ld hl, sp+$38
    ld a, [de]
    rra
    rst $20
    rra
    ld c, $0f
    rst $38
    ld bc, $0707
    sub a
    jp hl


    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add hl, sp
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
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
    rrca
    rrca
    ldh [$e0], a
    dec d
    dec de
    ldh a, [$f0]
    dec e
    rra
    ld [hl], b
    ldh a, [$2e]
    ld sp, $70f0
    db $fc
    db $e3
    ldh [$e0], a
    cp e
    rst $20
    ldh [$e0], a
    ld h, e
    rst $38
    ld [$1ef8], sp
    rst $38
    db $f4
    db $fc
    ld bc, $baff
    cp $01
    rst $38
    ld e, [hl]
    cp [hl]
    ld bc, $a9ff
    rst $30
    ld bc, $ddff
    db $e3
    and b
    rst $38
    rst $38
    pop bc
    ld a, b
    rst $38
    dec a
    jp $ff07


    db $fd
    jp $ff00


    dec c
    di
    add b
    rst $38
    dec e
    db $e3
    ldh [rIE], a
    dec e
    db $e3
    rst $18
    cp a
    db $fd
    db $e3
    ldh a, [rIE]
    ld a, l
    di
    ld b, b
    ld a, a
    rra
    rst $38
    ld b, b
    ld a, a
    dec de
    rst $30
    add b
    rst $38
    dec de
    rst $30
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $12ff
    xor $02
    rst $38
    inc c
    db $fc
    inc b
    rst $38
    ld [$08f8], sp
    rst $38
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ldh a, [$f8]
    rst $38
    jr c, @-$06

    rst $38
    rst $38
    ld hl, sp-$08
    rra
    rst $38
    ld sp, hl
    ld sp, hl
    rrca
    rst $38
    push bc
    db $fd
    inc c
    rst $38
    dec b
    db $fd
    ld a, [bc]
    ei
    inc b
    db $fc
    ld a, [bc]
    ei
    ld [bc], a
    cp $09
    ld sp, hl
    ld [bc], a
    cp $11
    pop af
    ld [bc], a
    cp $e0
    ldh [$bc], a
    db $fc
    ldh [$e0], a
    ld a, h
    ld a, h
    ldh [$e0], a
    ld e, $1e
    ldh [$e0], a
    ld e, $1e
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a
    ld a, a
    ld a, a
    ldh [$e0], a
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
    ret nz

    ret nz

    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    rst $38
    rst $38
    ld b, $07
    ei
    cp a
    dec b
    rlca
    xor e
    rst $30
    inc bc
    ld [bc], a
    sbc a
    ld [hl], h
    ld bc, $3401
    rst $38
    nop
    nop
    di
    rst $38
    nop
    nop
    pop hl
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $8901
    rst $38
    inc bc
    ld [bc], a
    adc $ff
    inc bc
    ld [bc], a
    add sp, $7f
    ld b, $05
    jr nc, @+$01

    rlca
    inc b
    jr nc, @+$01

    inc c
    dec bc
    ccf
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    ld e, $1f
    ret nz

    rst $38
    dec sp
    scf
    nop
    rst $38
    dec sp
    scf
    pop hl
    rst $38
    ld e, a
    ld l, a
    rst $38
    rst $38
    or a
    rst $08
    rst $38
    rst $38
    ld l, e
    sbc e
    ld [c], a
    cp $d2
    inc sp
    ld [bc], a
    cp $a2
    ld h, e
    ld bc, $c1ff
    pop bc
    ld bc, $01ff
    ld bc, $ff00
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $ff01
    rst $38
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
    ld bc, $7801
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    db $e3
    rst $18
    nop
    nop
    ld sp, hl
    rst $00
    nop
    nop
    cp l
    jp RST_00


    cp e
    rst $00
    nop
    nop
    ld b, e
    rst $38
    nop
    nop
    ld a, $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    rra
    rst $38
    add b
    add b
    ldh [rIE], a
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld bc, $80ff
    add b
    ld a, $ff
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ldh [$e0], a
    ld a, h
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    ld [$10f8], sp
    rra
    inc b
    db $fc
    adc b
    adc a
    ld [bc], a
    cp $84
    add a
    ld bc, $02ff
    inc bc
    ld bc, $01ff
    ld bc, $fe02
    nop
    nop
    adc [hl]
    cp $00
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
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
    ld bc, $ff01
    rst $38
    rst $38
    cp $ff
    inc bc
    jp $fffc


    push bc
    ld a, a
    add b
    dec a
    ccf
    rrca
    ldh a, [rTAC]
    rlca
    ldh a, [rIE]
    inc bc
    inc bc
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
    ld bc, $0001
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
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
    rlca
    rlca
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
    nop
    nop
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    rrca
    ld [$f878], sp
    rrca
    rrca
    ld hl, sp+$58
    rrca
    ld [$38d8], sp
    rrca
    inc c
    sbc b
    ld a, b
    rrca
    ld [$fc3c], sp
    ld a, [$73fd]
    rst $38
    ei
    ccf
    rst $28
    rst $38
    sbc e
    ld a, a
    push de
    ei
    ret nc

    ccf
    dec sp
    rst $38
    ret nz

    ccf
    ccf
    rst $38
    ld b, b
    cp a
    ld l, $f1
    ld [$1fff], sp
    ldh [$fc], a
    rst $38
    ld e, $e1
    inc hl
    ccf
    cp $e1
    jr nz, jr_0e6_66c9

    ld b, $f9
    jr nz, jr_0e6_66cd

    ld c, $f1
    jr c, jr_0e6_66d1

    ld c, $f1
    scf
    cpl
    cp $f1
    jr c, jr_0e6_66d9

    ld a, l
    di
    ld b, b
    ld a, a
    rra
    rst $38
    ld b, b
    ld a, a
    dec de
    rst $30
    add b
    rst $38
    dec de
    rst $30
    nop
    rst $38
    cp $fe
    ld bc, $12ff
    xor $02
    rst $38
    inc c
    db $fc
    inc b
    rst $38
    ld [$08f8], sp
    rst $38
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ldh a, [$f8]
    rst $38
    jr c, @-$06

    rst $38
    rst $38
    ld hl, sp-$08
    rra

jr_0e6_66c9:
    rst $38
    ld hl, sp-$08
    rrca

jr_0e6_66cd:
    rst $38
    call nz, Call_000_0cfc

jr_0e6_66d1:
    rst $38
    inc b
    db $fc
    ld a, [bc]
    ei
    inc b
    db $fc
    ld a, [bc]

jr_0e6_66d9:
    ei
    ld [bc], a
    cp $09
    ld sp, hl
    ld [bc], a
    cp $11
    pop af
    ld [bc], a
    cp $e0
    ldh [$bc], a
    db $fc
    ldh [$e0], a
    ld a, h
    ld a, h
    ldh [$e0], a
    ld e, $1e
    ldh [$e0], a
    ld e, $1e
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a
    ld a, a
    ld a, a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    rlca
    ld b, $ae
    ld a, [hl]
    ld [bc], a
    inc bc
    rst $10
    rst $28
    inc bc
    ld [bc], a
    jp $013f


    ld bc, $9f6c
    nop
    nop
    rst $18
    cp a
    inc a
    inc a
    rst $20
    rst $38
    ld [hl], a
    ld l, e
    ldh [rIE], a
    ld a, e
    ld a, a
    ldh a, [rIE]
    ld a, a
    ld e, a
    cp b
    rst $38
    ld a, a
    ld a, a
    ld e, b
    cp a
    ld l, c
    ld [hl], a
    cp b
    rst $38
    ld e, d
    ld h, l
    ldh a, [rIE]
    ld e, [hl]
    ld h, c
    ldh [rIE], a
    inc l
    inc sp
    rst $38
    rst $38
    ld de, $e01f
    rst $38
    ld c, $0e
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    db $10
    rra
    nop
    rst $38
    jr nz, jr_0e6_6939

    rlca
    rst $38
    ld a, $3f
    inc c
    rst $38
    ccf
    ccf
    db $f4
    rst $30
    ccf
    ccf
    rst $30
    rst $30
    ld a, $3f
    daa
    rst $20
    jr nz, jr_0e6_694d

    daa
    rst $20
    jr nz, jr_0e6_6951

    ld [de], a
    di
    db $10
    rra
    ld de, $10f1
    rra
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    rlca
    rlca
    ldh a, [$f0]
    rra

jr_0e6_6939:
    rra
    ldh a, [$f0]
    ccf
    ccf
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

jr_0e6_694d:
    nop
    nop
    nop
    nop

jr_0e6_6951:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc e
    db $fc
    nop
    nop
    ld c, $fe
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld a, $fe
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc e
    db $fc
    nop
    nop
    ld [c], a
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
    inc a
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop

jr_0e6_69bc:
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

jr_0e6_69c8:
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0e6_69bc

    ld b, b
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR10]
    rra
    jr nz, jr_0e6_69c8

    ld [$e00f], sp
    ldh [rTAC], a
    rlca
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rTAC]
    rlca
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    ccf
    ccf
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
    jr c, @+$3a

    nop
    nop
    ld l, h
    ld d, h
    nop
    nop
    ld [hl], h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sub $ba
    nop
    nop
    call c, Call_000_00bc
    nop
    ld hl, sp-$08
    nop
    nop
    adc c
    ld sp, hl
    nop
    nop
    push af
    adc l
    nop
    nop
    rst $30
    adc a
    nop
    nop
    rst $38
    add b
    nop
    nop
    cp a
    ret nz

    nop
    nop
    ld e, a
    ld h, b
    nop
    nop
    inc h
    dec sp
    nop
    nop
    ld sp, $003e
    nop
    rra
    rra
    nop
    nop
    jr nc, jr_0e6_6a8b

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr jr_0e6_6a77

    nop
    nop
    jr jr_0e6_6a7b

    nop
    nop
    inc e
    rra
    nop
    nop
    dec de
    rla
    nop
    nop
    inc e
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
    jr nz, jr_0e6_6ab3

    nop
    nop
    ld b, b

jr_0e6_6a77:
    ld a, a
    nop
    nop
    add b

jr_0e6_6a7b:
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    inc bc
    inc bc
    pop hl

jr_0e6_6a8b:
    rst $38
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    pop bc
    rst $38
    ld [bc], a
    inc bc
    nop
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
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    rla
    rra
    nop
    nop
    dec bc
    dec bc
    nop
    nop
    inc bc

jr_0e6_6ab3:
    inc bc
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
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
    inc hl
    ccf
    ret nz

    ret nz

    ld [hl], e
    ld e, a
    ret nz

    ret nz

jr_0e6_6ae0:
    cp a
    rst $00
    ret nz

    ret nz

jr_0e6_6ae4:
    ei
    dec b
    ret nz

    ret nz

jr_0e6_6ae8:
    ld [hl], c
    adc a
    add b
    add b

jr_0e6_6aec:
    add a
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    ei
    rrca
    ret nz

    ret nz

    ld [hl], l
    sbc e
    ret nz

    ret nz

    ei
    rra
    jr nz, jr_0e6_6ae0

    rst $18
    ccf
    jr nz, jr_0e6_6ae4

    ld a, [hl]
    rst $38
    jr nz, jr_0e6_6ae8

    nop
    rst $38
    jr nz, jr_0e6_6aec

    nop
    rst $38
    ld b, b
    ret nz

    ldh [rIE], a
    add b
    add b
    rra
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    pop hl
    rst $38
    nop
    nop
    ld e, $fe
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
    inc b
    db $fc
    nop
    nop
    jr @-$06

jr_0e6_6b3e:
    nop
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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0e6_6b3e

    nop
    nop
    jr nz, @-$1e

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
    ldh [$e0], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    rrca
    ld [$f878], sp
    rrca
    rrca
    ld hl, sp+$58
    rrca
    ld [$3ede], sp
    rrca
    inc c
    sbc a
    ld a, a
    rrca
    ld [$ff23], sp
    rlca
    rlca
    call c, Call_000_05ff
    rlca
    or a
    rst $38
    inc b
    rlca
    ld l, e
    rst $30
    inc b
    rlca
    ld [hl], a
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld [bc], a
    inc bc
    ld a, [hl]
    add c
    ld bc, $7a01
    add l
    ld a, l
    ld a, l
    rst $00
    dec sp
    ld [hl], a
    ld l, [hl]
    db $fc
    inc bc
    scf
    inc l
    ld hl, sp+$07
    dec a
    ld a, $f1
    rrca
    ld b, $07
    ld e, $ff
    inc bc
    inc bc
    ldh a, [rIE]
    nop
    nop
    jr nc, jr_0e6_6da3

    nop
    nop
    jr nz, jr_0e6_6da7

    nop
    nop
    jr nc, jr_0e6_6dab

    nop
    nop
    jr nc, jr_0e6_6daf

    nop
    nop
    jr nc, jr_0e6_6db3

    nop
    nop
    jr @+$21

    nop
    nop
    jr @+$21

    nop
    nop
    jr @+$21

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
    dec bc
    rrca
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
    inc b

jr_0e6_6da3:
    rlca
    nop
    nop
    inc bc

jr_0e6_6da7:
    inc bc
    nop
    nop
    inc bc

jr_0e6_6dab:
    inc bc
    nop
    nop
    inc bc

jr_0e6_6daf:
    inc bc
    nop
    nop
    inc bc

jr_0e6_6db3:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [hl], h
    call z, RST_00
    inc [hl]
    db $ec
    nop
    nop
    ld a, [$00e6]
    nop
    ld a, [hl-]
    or $00
    nop
    ld d, $fa
    nop
    nop
    ld d, $fa
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc de
    db $fd
    add b
    add b
    rra
    ld a, [$8080]
    rra
    cp $80
    add b
    rrca
    ld sp, hl
    nop
    nop
    ld c, $fe
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    rra
    rst $38
    add b
    add b
    ld h, b
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a

jr_0e6_6e42:
    ld a, a
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    adc a
    adc a
    rst $38
    rst $38
    rlca
    rlca
    ld [$07f8], sp
    rlca
    db $10
    ldh a, [$03]
    inc bc
    db $10
    ldh a, [$03]
    inc bc
    jr nz, jr_0e6_6e42

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
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    rrca
    ld [$f878], sp
    rrca
    rrca
    ld hl, sp+$58
    rrca
    ld [$38d8], sp
    rrca
    inc c
    sbc a
    ld a, a
    rrca
    ld [$ff61], sp
    rlca
    rlca
    sbc $ff
    dec b
    rlca
    cp a
    rst $38
    inc b
    rlca
    scf
    rst $38
    inc b
    rlca
    ld l, e
    rst $30
    ld [bc], a
    inc bc
    ld [hl], a
    rst $38
    inc bc
    inc bc
    ld a, a
    rst $38
    ld bc, $fa01
    push bc
    ld bc, $c401
    cp e
    ld bc, $fc01
    add e
    rra
    rra
    ld hl, sp+$07
    dec sp
    scf
    di
    rrca
    dec sp
    scf
    db $fc
    ccf
    rra
    rra
    jr nz, @+$01

    nop
    nop
    ldh a, [rIE]
    nop
    nop
    jr nz, jr_0e6_6f23

    nop
    nop
    jr nz, jr_0e6_6f27

    nop
    nop
    jr nz, jr_0e6_6f2b

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
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nz, jr_0e6_6f43

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
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

jr_0e6_6f23:
    nop
    nop
    nop
    nop

jr_0e6_6f27:
    nop
    nop
    nop
    nop

jr_0e6_6f2b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e6_6f43:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    ld d, b
    or b
    nop
    nop
    ld l, b
    ret c

    nop
    nop
    ld h, h
    call c, RST_00
    ld [hl], h
    call z, RST_00
    db $f4
    db $ec
    nop
    nop
    inc d
    db $ec
    nop
    nop
    inc e
    db $f4
    nop
    nop
    inc e
    db $f4
    nop
    nop
    inc c
    db $fc

jr_0e6_6f8e:
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jr jr_0e6_6f8e

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
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld hl, $00ff
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    nop
    nop
    rlca
    rst $38
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
    ld bc, $80ff
    add b
    rst $20
    rst $38
    ret nz

    ret nz

    sbc a
    rst $38
    ldh [$e0], a
    ld b, e
    ld a, a
    ldh a, [$f0]
    inc hl
    ccf
    ld hl, sp-$08
    daa
    ccf
    ldh a, [$f0]
    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    ccf
    ccf
    add b
    add b
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    rrca
    ld [$f878], sp
    rrca
    rrca
    ld hl, sp+$58
    rrca
    ld [$38d8], sp
    rrca
    inc c
    sbc a
    ld a, a
    rrca
    ld [$ff3f], sp
    inc b
    rlca
    ld l, a
    rst $38
    rlca
    rlca
    db $dd
    rst $38
    inc b
    rlca
    jp c, Jump_000_04fd

    rlca
    dec e
    rst $38
    inc b
    rlca
    rra
    rst $38
    inc b
    rlca
    rrca
    ldh a, [rTMA]
    rlca
    ld [hl], $f9
    inc bc
    inc bc
    pop bc
    cp $02
    inc bc
    rrca
    ldh a, [rSB]
    ld bc, $e01f
    ld bc, $1f01
    db $fc
    nop
    nop
    xor $fd
    nop
    nop
    rst $30
    xor a
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld a, b
    ld b, a
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
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    inc b
    rlca
    dec b
    db $fd
    inc b
    rlca
    inc b
    db $fc
    ld [$040f], sp
    db $fc
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    ld [$06f8], sp
    rlca
    db $10
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ccf
    ccf
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    jr nc, jr_0e6_70f7

jr_0e6_70f7:
    nop
    ret nc

    jr nc, jr_0e6_70fb

jr_0e6_70fb:
    nop
    ret nc

    jr nc, jr_0e6_70ff

jr_0e6_70ff:
    nop
    ret nc

    jr nc, jr_0e6_7103

jr_0e6_7103:
    nop
    sub b
    ld [hl], b
    nop
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

jr_0e6_7120:
    ld a, [de]
    cp $00
    nop
    ld h, d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    rlca
    rst $38
    add b
    add b
    ld e, $ff
    add b
    add b
    db $fc
    rst $38
    ld b, b
    ret nz

    ldh a, [rIE]
    jr nz, jr_0e6_7120

    add b
    rst $38
    db $10
    ldh a, [rLCDC]
    ld a, a
    ld [$20f8], sp
    ccf
    inc b
    db $fc
    jr jr_0e6_716d

    inc b
    db $fc
    inc b
    rlca
    ld [$02f8], sp
    inc bc
    inc a
    db $fc
    ld bc, $fc01
    db $fc
    nop
    nop
    ld a, $3e
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

jr_0e6_716d:
    nop
    ld a, [hl]
    ld a, [hl]
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

    ld a, e
    ld b, a
    ret nz

    ret nz

    ld a, a
    ld a, d
    ret nz

    ret nz

    ld a, [hl]
    ld b, c
    ret nz

    ret nz

    ld a, h
    ld h, e
    db $fc
    db $fc
    ld a, b
    ld b, a
    cp [hl]
    cp $33
    ccf
    ld l, a
    rst $38
    ld a, $3f
    rst $10
    rst $28
    ld [hl+], a
    ccf
    rst $28
    rst $38
    jr nz, jr_0e6_71f5

    rst $38
    ld hl, sp+$20
    ccf
    ld a, a
    ldh [rNR10], a
    rra
    dec sp
    call nz, Call_000_0f08
    ld [hl], a
    ret z

    dec bc
    rrca
    adc a
    ldh a, [rNR32]
    rra
    rlca
    ld hl, sp+$2a
    scf
    inc bc
    db $fc
    scf
    ld a, [hl+]
    rra
    db $fd
    scf
    ld a, [hl+]
    ld [c], a
    rst $38
    ld a, [hl+]
    scf
    add e
    rst $38
    rra
    rra
    ld bc, $02ff
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    inc b
    rlca
    inc b
    rst $38
    inc b

jr_0e6_71f5:
    rlca
    inc b
    rst $38
    rlca
    rlca
    ret z

    rst $38
    rlca
    rlca
    rst $38
    rst $38
    inc b
    rlca
    ld a, a
    rst $38
    inc b
    rlca
    ld c, $ff
    inc b
    rlca
    ld a, [bc]
    ei
    inc b
    rlca
    dec b
    db $fd
    inc b
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $f801
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    ccf
    ccf
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0e6_726c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e6_726c:
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
    ret nz

    ld b, b
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [$a0], a
    ld bc, $e001
    jr nz, @+$03

    ld bc, $30d0
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ret nc

    jr nc, jr_0e6_72a3

jr_0e6_72a3:
    nop
    sub b
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
    db $10
    ldh a, [rP1]
    nop
    ld a, h
    db $fc
    nop
    nop
    ld [c], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ret nz

    ret nz

    add c
    rst $38
    ldh a, [$f0]
    ld h, e
    ld a, a
    ld hl, sp-$08
    dec de
    rra
    db $fc
    db $fc
    inc b
    inc b
    ld a, h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    ld bc, $e001
    ldh [rSB], a
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
    rra
    rra
    ret nz

    ret nz

    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a
    dec a
    inc hl
    ldh [$e0], a
    ccf
    dec a
    ldh [$60], a
    ccf
    jr nz, jr_0e6_739f

    db $fc
    ld a, $31
    ld e, [hl]
    cp $3c
    inc hl
    cp a
    rst $38
    rla
    rra
    cp e
    rst $38
    rla
    rra
    or l
    ei
    ld [$bb0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    inc b
    rlca
    rra
    db $fc
    db $fd
    rst $38
    rlca
    ld hl, sp+$2f
    rst $18
    ld a, [$58fd]
    xor a
    add b
    rst $38
    rst $18
    xor b
    ld b, b
    rst $38
    xor e
    call c, $ff40
    ld a, h
    ld a, a
    ld hl, $03ff
    inc bc
    cp $ff
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
    jr nz, jr_0e6_73b3

    nop
    nop
    jr nz, jr_0e6_73b7

    nop
    nop
    jr nz, jr_0e6_73bb

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

jr_0e6_739f:
    rra
    nop
    nop
    ld [$000f], sp
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

jr_0e6_73b3:
    rlca
    nop
    nop
    rra

jr_0e6_73b7:
    rra
    nop
    nop
    ld a, a

jr_0e6_73bb:
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub b
    ld [hl], b
    nop
    nop
    ret z

    jr c, jr_0e6_73ff

jr_0e6_73ff:
    nop
    ld d, h
    xor h
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ld [hl], h
    adc h
    nop
    nop
    ld a, [hl-]
    add $00
    nop
    ld a, [de]
    and $00
    nop
    rst $28
    rst $38

jr_0e6_7416:
    nop
    nop
    inc de
    db $fd
    add b
    add b
    rra
    ld a, [$8080]
    rra
    cp $80
    add b
    rra
    ld sp, hl
    nop
    nop
    ld d, $f6
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0e6_7416

    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld h, b
    rst $38
    cp $fe
    ldh [rIE], a
    cp $fe
    and b
    rst $38
    cp $fe
    jr nz, @+$01

    cp $fe
    ld hl, $0eff
    ld c, $3e
    cp $0e
    ld c, $10
    ldh a, [$0e]
    ld c, $20
    ldh [rTMA], a
    ld b, $20
    ldh [rTMA], a
    ld b, $40
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
    ldh [$e0], a
    rra
    rra
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    ld e, $11
    ldh a, [$f0]
    rra
    ld e, $f0
    or b
    rra
    db $10
    cp a
    ld a, a
    rra
    jr jr_0e6_74d2

    rst $38
    ld e, $11
    ld e, e
    rst $38
    rrca
    rrca
    sub l
    ei
    ld [$bb0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$1f0f], sp
    rst $38
    inc b
    rlca
    ld c, $fd
    ld [bc], a
    inc bc
    dec e
    ld a, [c]
    ld [bc], a
    inc bc
    db $e3
    db $fc
    rlca
    rlca
    ld bc, $0afe
    dec c
    add b
    rst $38
    dec c
    ld a, [bc]
    ret nz

    cp a
    dec c
    ld a, [bc]

jr_0e6_74d2:
    db $e3
    cp a
    ld a, [bc]
    dec c
    cp h
    rst $38
    rlca
    rlca
    ldh a, [rIE]
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
    ld c, b
    ld a, a
    nop
    nop
    adc b
    rst $38
    nop
    nop
    adc b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $f401
    rst $38
    ld bc, $fe01
    rst $38
    nop
    nop
    ei
    rst $38
    nop
    nop
    ld hl, $003f
    nop
    ld de, $001f
    nop
    inc c
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    add sp, $18
    nop
    nop
    ret c

    jr z, jr_0e6_757f

jr_0e6_757f:
    nop
    ret c

    jr z, jr_0e6_7583

jr_0e6_7583:
    nop
    call nc, Call_000_002c
    nop
    db $fc
    inc c
    nop
    nop
    db $f4
    inc c
    nop
    nop
    db $f4
    ld a, h
    nop
    nop
    sbc h
    db $ec
    nop
    nop
    db $fc
    call nc, RST_00
    ld a, h
    db $f4
    nop
    nop
    inc [hl]
    call z, RST_00
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
    ld [bc], a
    cp $00
    nop
    rlca
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
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
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e6_761d

    ld b, b
    ret nz

    inc hl
    ccf
    ld b, b
    ret nz

    ld a, a
    ld a, a
    add b
    add b
    rrca
    rrca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    cp $fe
    nop
    nop
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    rrca
    ld [$f878], sp
    rrca
    rrca
    ld hl, sp+$58
    rrca
    ld [$38d8], sp
    rrca
    inc c
    sbc a
    ld a, a
    rrca

jr_0e6_761d:
    ld [$ff3f], sp
    inc b
    rlca
    ld l, a
    rst $38
    rlca
    rlca
    db $dd
    rst $38
    inc b
    rlca
    jp c, Jump_000_04fd

    rlca
    dec e
    rst $38
    inc b
    rlca
    rra
    rst $38
    inc b
    rlca
    rrca
    ldh a, [rDIV]
    rlca
    ld [hl], $f9
    inc bc
    inc bc
    pop bc
    cp $02
    inc bc
    rrca
    ldh a, [rSC]
    inc bc
    rra
    ldh [rSB], a
    ld bc, $fc1f
    ld bc, $6e01
    db $fd
    ld bc, $7701
    xor a
    ld bc, $f801
    cp a
    ld bc, $3801
    rst $00
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    inc b
    rlca
    ld [$04ff], sp
    rlca
    inc b
    rst $38
    ld [$020f], sp
    rst $38
    rrca
    rrca
    add [hl]
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    ld [$390f], sp
    ld sp, hl
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    ld [$06f8], sp
    rlca
    db $10
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ccf
    ccf
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    jr nc, jr_0e6_76f7

jr_0e6_76f7:
    nop
    ret nc

    jr nc, jr_0e6_76fb

jr_0e6_76fb:
    nop
    ret nc

    jr nc, jr_0e6_76ff

jr_0e6_76ff:
    nop
    ret nc

    jr nc, jr_0e6_7703

jr_0e6_7703:
    nop
    sub b
    ld [hl], b
    nop
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

jr_0e6_7720:
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    rrca
    rst $38
    ret nz

    ret nz

    cp $ff
    jr nz, jr_0e6_7720

    ld hl, sp-$01
    db $10
    ldh a, [rLCDC]
    ld a, a
    ld [$20f8], sp
    ccf
    inc b
    db $fc
    jr jr_0e6_776d

    inc b
    db $fc
    inc b
    rlca
    ld [$02f8], sp
    inc bc
    inc a
    db $fc
    ld bc, $fc01
    db $fc
    nop
    nop
    ld a, $3e
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

jr_0e6_776d:
    nop
    ld a, [hl]
    ld a, [hl]
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
    rra
    rra
    ret nz

    ret nz

    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a
    dec a
    inc hl
    ldh [$e0], a
    ccf
    dec a
    ldh [$60], a
    ccf
    jr nz, jr_0e6_77ff

    ldh [$3e], a
    ld sp, $fc7c
    inc a
    inc hl
    cp a
    rst $38
    rra
    rra
    ld a, [hl]
    rst $38
    ld [de], a
    rra
    db $dd
    cp $11
    rra
    xor l
    rst $18
    ld de, $dd1f
    rst $38
    add hl, bc
    rrca
    db $fd
    rst $38
    ld [$f80f], sp
    rlca
    rlca
    rlca
    db $eb
    rla
    rlca
    ld b, $1c
    rst $28
    rlca
    ld b, $f0
    rrca
    ld a, a
    ld a, h
    ldh [$1f], a
    rst $28
    call c, $3fcf
    rst $28
    call c, $fff0
    ld a, h
    ld a, a
    nop
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    ld bc, $2001
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld [bc], a
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$02ff], sp
    inc bc
    inc b
    rst $38
    inc bc
    inc bc
    rst $00

jr_0e6_77ff:
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc b
    rlca
    ccf
    rst $38
    inc b
    rlca
    dec b
    db $fd
    inc b
    rlca
    inc b
    db $fc
    inc b
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $f801
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    rra
    rra
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr c, jr_0e6_7874

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    and b
    nop
    nop

jr_0e6_7874:
    ld d, b
    or b

jr_0e6_7876:
    nop
    nop
    ld d, b
    or b
    nop
    nop
    ret nc

    or b
    nop
    nop
    ret nc

    or b
    nop
    nop
    ld [hl], b
    ret nc

    nop
    nop
    ld [hl], b
    ret nc

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nz, jr_0e6_7876

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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld e, $fe
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ldh [rIE], a
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld h, b
    ldh [$c0], a
    rst $38
    ld hl, sp-$08
    ld sp, $fc3f
    db $fc
    ld c, $0e
    cp $fe
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_0e6_7dff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
