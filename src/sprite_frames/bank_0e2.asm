SECTION "ROM Bank $0e2", ROMX[$4000], BANK[$e2]

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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    ld bc, $ee01
    rst $38
    ld bc, $d701
    rst $28
    ld bc, $ef01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    cp l
    jp RST_00


    rst $38
    add c
    nop
    nop
    rst $28
    sub c
    nop
    nop
    di
    adc a
    nop
    nop
    cp l
    jp RST_00


    ld a, a
    ld b, c
    nop
    nop
    ld e, a
    ld h, b
    nop
    nop
    ld l, $31
    nop
    nop
    dec h
    dec sp
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e2_40ab

    nop
    nop
    jr nz, jr_0e2_40af

    nop
    nop
    jr nz, jr_0e2_40b3

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
    jr @+$21

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
    jr jr_0e2_40ab

    nop
    nop
    jr nz, jr_0e2_40cf

    nop
    nop
    jr nz, jr_0e2_40d3

    nop
    nop
    jr nz, jr_0e2_40d7

    nop
    nop
    jr nz, jr_0e2_40db

    nop
    nop
    jr nz, jr_0e2_40df

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
    rrca

jr_0e2_40ab:
    rrca
    nop
    nop
    rrca

jr_0e2_40af:
    rrca
    nop
    nop
    rrca

jr_0e2_40b3:
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

jr_0e2_40cf:
    nop
    ld a, b
    adc b
    nop

jr_0e2_40d3:
    nop
    ld hl, sp+$78
    nop

jr_0e2_40d7:
    nop
    ld hl, sp+$08
    nop

jr_0e2_40db:
    nop
    ld hl, sp+$18
    nop

jr_0e2_40df:
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld [bc], a
    cp $00

Call_0e2_40f3:
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
    add [hl]
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
    sbc [hl]
    cp $00
    nop
    xor $f6
    nop
    nop
    ld a, [$00fe]
    nop
    sbc [hl]
    ld a, d
    nop
    nop
    sbc $32
    nop
    nop
    ld a, [$00f6]
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr c, @-$06

    nop
    nop
    ld hl, sp-$08

jr_0e2_4142:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
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
    jr nz, jr_0e2_4142

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
    ldh [$e0], a
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    rst $08
    rst $38
    nop
    nop
    sbc $ff
    nop
    nop
    db $dd
    cp $00
    nop
    sbc $ff
    nop
    nop
    rst $08
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ld h, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr nc, @+$41

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
    jr nz, jr_0e2_4223

    nop
    nop
    jr nz, jr_0e2_4227

    nop
    nop
    jr nz, jr_0e2_422b

    nop
    nop
    jr nz, jr_0e2_422f

    nop
    nop
    jr nz, jr_0e2_4233

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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    jr jr_0e2_422b

    nop
    nop
    jr nz, jr_0e2_424f

    nop
    nop
    jr nz, jr_0e2_4253

    nop
    nop
    jr nz, jr_0e2_4257

    nop
    nop
    jr nz, jr_0e2_425b

    nop
    nop
    jr nz, jr_0e2_425f

    nop
    nop
    db $10

jr_0e2_4223:
    rra
    nop
    nop
    rrca

jr_0e2_4227:
    rrca
    nop
    nop
    rrca

jr_0e2_422b:
    rrca
    nop
    nop
    rrca

jr_0e2_422f:
    rrca
    nop
    nop
    rrca

jr_0e2_4233:
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

jr_0e2_424f:
    nop
    ld a, b
    adc b
    nop

jr_0e2_4253:
    nop
    ld hl, sp+$78
    nop

jr_0e2_4257:
    nop
    ld hl, sp+$08
    nop

jr_0e2_425b:
    nop
    db $fc
    inc e
    nop

jr_0e2_425f:
    nop
    ld e, [hl]
    and [hl]
    nop
    nop
    adc a
    di
    nop
    nop
    di
    rst $38
    add b
    add b
    cp a
    rst $38
    add b
    add b
    ld b, e
    db $fc
    ld b, b
    ret nz

    db $e3
    db $fc
    and b
    ld h, b
    or a
    rst $08
    and b
    ld h, b
    ei
    add a
    and b
    ldh [rNR51], a
    db $db
    ret nz

    ret nz

    db $dd
    db $e3
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld e, $fe
    nop
    nop
    xor $f6
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr c, @-$06

    nop
    nop
    ld hl, sp-$08

jr_0e2_42c2:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
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
    jr nz, jr_0e2_42c2

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
    ldh [$e0], a
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    nop
    nop
    add b
    rst $38
    nop
    nop
    cp b
    rst $00
    nop
    nop
    sbc a
    rst $20
    nop
    nop
    or b
    rst $08
    nop
    nop
    or b
    rst $08
    nop
    nop
    add b
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld [hl], b
    ld c, a
    nop
    nop
    jr nz, jr_0e2_43a7

    nop
    nop
    jr nc, jr_0e2_43ab

    nop
    nop
    jr nc, jr_0e2_43af

    nop
    nop
    jr jr_0e2_4393

    nop
    nop
    jr jr_0e2_4397

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
    daa
    ccf
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
    add d
    rst $38
    ld bc, $0201

jr_0e2_4393:
    rst $38
    ld bc, $0201

jr_0e2_4397:
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    and $ff
    inc bc
    inc bc
    ld sp, hl

jr_0e2_43a7:
    ld sp, hl
    rrca
    rrca
    pop hl

jr_0e2_43ab:
    pop hl
    rrca
    rrca
    pop bc

jr_0e2_43af:
    pop bc
    rrca
    rrca
    pop bc
    pop bc
    rlca
    rlca
    pop bc
    pop bc
    inc bc
    inc bc
    pop hl
    pop hl
    ld bc, $f101
    pop af
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
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    ld [$00f6], a
    nop
    ld e, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    inc bc
    db $fd
    nop
    nop
    inc bc
    db $fd
    nop
    nop
    ld b, $fa
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    ldh a, [$f0]
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld e, l
    ld h, e
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld l, $31
    nop
    nop
    ld hl, $003f
    nop
    ld l, $3f
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
    daa
    ccf
    nop
    nop
    daa
    jr c, jr_0e2_44ed

jr_0e2_44ed:
    nop
    jr nz, jr_0e2_452f

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
    jr jr_0e2_4527

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
    jr nz, jr_0e2_4553

    nop
    nop
    jr nz, jr_0e2_4557

    nop
    nop
    jr nz, jr_0e2_455b

    nop
    nop
    jr nz, jr_0e2_455f

    nop
    nop
    db $10
    rra
    nop
    nop
    rra

jr_0e2_4527:
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ccf

jr_0e2_452f:
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
    rrca
    rrca
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
    adc b
    nop

jr_0e2_4553:
    nop
    ld hl, sp+$78
    nop

jr_0e2_4557:
    nop
    ld hl, sp+$08
    nop

jr_0e2_455b:
    nop
    ld hl, sp+$18
    nop

jr_0e2_455f:
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    ld [$00f6], a
    nop
    ld e, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    ld a, [hl]
    nop
    nop
    add d
    ld a, [hl]
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
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc d
    db $fc

jr_0e2_45c6:
    nop
    nop
    db $f4
    db $fc

jr_0e2_45ca:
    nop
    nop
    ld hl, sp-$08

jr_0e2_45ce:
    nop
    nop
    jr jr_0e2_45ca

    nop
    nop
    jr nc, jr_0e2_45c6

    nop
    nop
    jr nc, jr_0e2_45ca

    nop
    nop
    jr nc, jr_0e2_45ce

    nop
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
    add b
    add b
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    nop
    nop
    add b
    rst $38
    nop
    nop
    sbc [hl]
    pop hl
    nop
    nop
    sbc l
    db $e3
    nop
    nop
    xor [hl]
    pop de
    nop
    nop
    xor [hl]
    pop de
    nop
    nop
    adc a
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rP1]
    nop
    or $f9
    nop
    nop
    di
    rst $38
    nop
    nop
    ld [hl], e
    ld c, a
    nop
    nop
    ld sp, $003f
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
    jr nc, jr_0e2_46c3

    nop
    nop
    jr nc, jr_0e2_46c7

    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    adc a
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
    ld b, c
    ld a, a
    nop
    nop
    ccf
    ccf
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

jr_0e2_46c3:
    nop
    ldh a, [$f0]
    nop

jr_0e2_46c7:
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    ld [$00f6], a
    nop
    sbc [hl]
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld [c], a
    sbc $00
    nop
    ld [c], a
    sbc $00
    nop
    call z, Call_000_003c
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
    ld [hl+], a
    cp $00
    nop
    ld a, $fe
    nop
    nop
    ld a, $fe
    nop
    nop
    ld b, c
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
    add c
    rst $38
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    cp h
    cp h
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
    ccf
    ccf
    ldh a, [$f0]
    ld a, a
    ld a, a
    ldh [$e0], a
    rst $38
    rst $38
    add b
    add b
    db $fc
    db $fc
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38

Call_0e2_47ac:
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    ld bc, $2e01
    pop af
    ld bc, $6e01
    or c
    ld [bc], a
    inc bc
    scf
    ld hl, sp+$02
    inc bc
    rst $30
    jr jr_0e2_47cf

    inc bc
    db $eb

jr_0e2_47cf:
    inc a
    ld [bc], a
    inc bc
    push hl
    ld a, $03
    inc bc
    db $dd
    cp $03
    inc bc
    ld [c], a
    rst $18
    inc bc
    inc bc
    pop hl
    rst $18
    inc bc
    ld [bc], a
    ret nz

    ccf
    ld bc, $e001
    rst $38
    nop
    nop
    jr nz, jr_0e2_482b

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
    jr nz, jr_0e2_483b

    nop
    nop
    jr nz, jr_0e2_483f

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
    sbc a
    rst $38
    nop
    nop
    add b
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
    jp nz, Jump_000_00fe

    nop
    db $fc
    db $fc
    ld bc, $f001

jr_0e2_482b:
    ldh a, [$03]
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$08
    ld bc, $fc01

jr_0e2_483b:
    db $fc
    nop
    nop
    ld a, [hl]

jr_0e2_483f:
    ld a, [hl]
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
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    ld a, [hl]
    nop
    nop
    sbc [hl]
    ld a, [hl]
    nop
    nop
    ld [$0076], a
    nop
    cp $2e
    nop
    nop
    ld a, [$00f6]
    nop
    ld a, [$00f6]
    nop
    ld [hl], d
    adc $00
    nop
    inc c
    db $fc
    nop
    nop
    inc e
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
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e2_4921

    add b
    add b
    rra
    rra
    nop
    nop
    rrca
    rrca
    add b
    add b
    rrca
    rrca
    adc [hl]
    adc [hl]
    rrca
    rrca
    cp $fe
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    ldh a, [$f0]
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop

jr_0e2_4921:
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    nop
    nop
    add b
    rst $38
    nop
    nop
    sbc [hl]
    pop hl
    nop
    nop
    sbc l
    db $e3
    nop
    nop
    xor [hl]
    pop de
    nop
    nop
    xor [hl]
    pop de
    nop
    nop
    adc a
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rP1]
    nop
    and $f9
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld h, e
    ld e, a
    nop
    nop
    ld hl, $003f
    nop
    jr nc, jr_0e2_49ab

    nop
    nop
    jr nc, jr_0e2_49af

    nop
    nop
    jr jr_0e2_4993

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
    jr nc, jr_0e2_49bf

    nop
    nop
    jr c, jr_0e2_49c3

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
    add b
    rst $38
    ld bc, $0001

jr_0e2_4993:
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    and $ff
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    rrca
    rrca
    pop hl

jr_0e2_49ab:
    pop hl
    rrca
    rrca
    pop bc

jr_0e2_49af:
    pop bc
    rrca
    rrca
    pop bc
    pop bc
    rlca
    rlca
    pop bc
    pop bc
    inc bc
    inc bc
    pop hl
    pop hl
    ld bc, $f101

jr_0e2_49bf:
    pop af
    nop
    nop
    nop

jr_0e2_49c3:
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
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    ld [$00f6], a
    nop
    sbc [hl]
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld [c], a
    sbc $00
    nop
    ld [c], a
    sbc $00
    nop
    call nz, Call_000_003c
    nop
    inc b
    db $fc

jr_0e2_4a2e:
    nop
    nop
    ld [$00f8], sp
    nop
    jr jr_0e2_4a2e

jr_0e2_4a36:
    nop
    nop
    jr @-$06

jr_0e2_4a3a:
    nop
    nop
    jr z, jr_0e2_4a36

    nop
    nop
    jr z, jr_0e2_4a3a

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
    add h
    db $fc
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld e, l
    ld h, e
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld l, $31
    nop
    nop
    ld hl, $003f
    nop
    ld l, $3f
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
    daa
    ccf
    nop
    nop
    daa
    jr c, jr_0e2_4aed

jr_0e2_4aed:
    nop
    jr nc, jr_0e2_4b2f

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
    dec d
    rra
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
    ld e, $1f
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr z, jr_0e2_4b53

    nop
    nop
    jr nc, jr_0e2_4b57

    nop
    nop
    jr nc, jr_0e2_4b5b

    nop
    nop
    jr nz, jr_0e2_4b5f

    nop
    nop
    inc e
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
    ccf

jr_0e2_4b2f:
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
    rrca
    rrca
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
    adc b
    nop

jr_0e2_4b53:
    nop
    ld hl, sp+$78
    nop

jr_0e2_4b57:
    nop
    ld hl, sp+$08
    nop

jr_0e2_4b5b:
    nop
    ld hl, sp+$18
    nop

jr_0e2_4b5f:
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    ld [$00f6], a
    nop
    ld e, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    ld a, [hl]
    nop
    nop
    add d
    ld a, [hl]
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
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc

jr_0e2_4bc6:
    nop
    nop
    inc b
    db $fc

jr_0e2_4bca:
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr nc, jr_0e2_4bc6

    nop
    nop
    jr nc, jr_0e2_4bca

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    and b
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
    add b
    add b
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    nop
    nop
    add b
    rst $38
    nop
    nop
    cp b
    rst $00
    nop
    nop
    sbc a
    rst $20
    nop
    nop
    or b
    rst $08
    nop
    nop
    or b
    rst $08
    nop
    nop
    add b
    rst $38
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld [hl], b
    ld c, a
    nop
    nop
    jr nz, jr_0e2_4ca7

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr jr_0e2_4c93

    nop
    nop
    inc d
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld de, $001f
    nop
    ld sp, $003f
    nop
    jr nc, jr_0e2_4cc7

    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    adc a
    rst $38
    nop
    nop
    add b

jr_0e2_4c93:
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
    ccf

jr_0e2_4ca7:
    ccf
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
    nop
    ldh a, [$f0]
    nop

jr_0e2_4cc7:
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    ld [$00f6], a
    nop
    ld e, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    inc bc
    db $fd
    nop
    nop
    inc bc
    db $fd
    nop
    nop
    ld b, $fa
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
    cp $fe
    nop
    nop
    cp $fe
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
    ld b, d
    cp $00
    nop
    db $fc
    db $fc
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
    ccf
    ccf
    ldh a, [$f0]
    ld a, a
    ld a, a
    ldh [$e0], a
    rst $38
    rst $38
    add b
    add b
    db $fc
    db $fc
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    nop
    nop
    xor $ff
    nop
    nop
    cp $ff
    ld bc, $0001
    rst $38
    ld bc, $7801
    add a
    ld [bc], a
    inc bc
    ccf
    rst $08
    ld [bc], a
    inc bc
    ldh [$1f], a
    ld [bc], a
    inc bc
    ldh [$3f], a
    ld [bc], a
    inc bc
    ldh [$3f], a
    inc bc
    inc bc
    rst $18
    rst $38
    inc bc
    inc bc
    ldh [$df], a
    inc bc
    inc bc
    ldh [$df], a
    inc bc
    ld [bc], a
    ret nz

    ccf
    ld bc, $f001
    rst $38
    nop
    nop
    jr nc, jr_0e2_4e2b

    nop
    nop
    jr z, @+$41

    nop
    nop
    jr z, @+$41

    nop
    nop
    inc h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    add b
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
    jp nz, Jump_000_00fe

    nop
    db $fc
    db $fc
    ld bc, $f001

jr_0e2_4e2b:
    ldh a, [$03]
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    db $eb
    rst $30
    nop
    nop
    rra
    cp $80
    add b
    inc bc
    rst $38
    ret nz

    ld b, b
    inc bc
    rst $38
    ret nz

    ld b, b
    inc bc
    db $fc
    add b
    add b
    rlca
    rst $38
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
    ld [bc], a
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e2_4f21

    add b
    add b
    rra
    rra
    nop
    nop
    rrca
    rrca
    add b
    add b
    rrca
    rrca
    adc [hl]
    adc [hl]
    rrca
    rrca
    cp $fe
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    ldh a, [$f0]
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

jr_0e2_4f21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
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
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e2_4fd7

    nop
    nop
    jr nz, jr_0e2_4fdb

    ld bc, $e001
    rst $38
    ld a, d
    ld a, e
    db $10
    rst $38
    ld a, h
    ld a, a
    jr nc, @+$01

    db $fc
    rst $38
    jr nc, @+$01

    db $fc
    rst $38
    jr nc, @+$01

    db $f4
    rst $30
    jr c, @+$01

    ld [c], a
    db $e3
    ccf
    rst $38
    pop hl
    pop hl
    rst $38
    rst $38
    ret nz

    ret nz

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

jr_0e2_4fd7:
    nop
    nop
    nop
    nop

jr_0e2_4fdb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0e2_501c

    nop
    nop
    inc a
    inc a
    inc bc
    inc bc
    cp $fe
    inc c
    rrca
    rst $38
    rst $38
    rla
    rra
    ld a, e
    rst $28
    ld a, h
    ld a, a
    xor l
    di
    add e
    rst $38
    adc $f2

jr_0e2_501c:
    rlca
    rst $38
    ld h, h
    db $fc
    ld b, $ff
    xor b
    ld a, b
    add a
    rst $38
    ld [hl], b
    ldh a, [rBGP]
    rst $38
    ldh a, [$f0]
    ld [hl+], a
    rst $38
    ldh a, [rNR10]
    ld a, [de]
    rst $38
    ldh a, [rNR10]
    ld b, $ff
    ldh a, [rNR10]
    ld [bc], a
    rst $38
    ldh a, [rNR10]
    ld [c], a
    rst $38
    ld d, b
    or b
    inc e
    rst $38
    ldh a, [rNR10]
    ld [bc], a
    rst $38
    ldh a, [rNR10]

jr_0e2_5048:
    ld [bc], a
    rst $38
    ld hl, sp+$18
    dec h
    rst $38
    db $fc
    db $fc
    jr c, @+$01

    ld l, h
    db $f4
    rra
    rst $38
    db $ec
    db $f4
    cpl
    rst $28
    db $fc
    db $fc

jr_0e2_505c:
    jr nc, @+$01

    ld a, h
    call nc, $df50
    jr jr_0e2_505c

    ld c, b
    rst $08
    jr nz, jr_0e2_5048

    ld e, a
    rst $18
    ret nz

    ret nz

    cp h
    cp h
    nop
    nop
    cp b
    cp b
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    cp c
    reti


    rrca
    rrca
    ld [hl], l
    xor l
    rrca
    rrca
    ld a, e
    add a
    rlca
    rlca
    inc bc
    rst $38
    rrca
    rrca
    adc [hl]
    pop af
    inc e
    rra
    ld a, a
    add b
    scf
    ccf
    xor $11
    ld l, a
    ld a, a
    ld [hl], b
    adc a
    ld l, l
    ld a, a
    cp e
    rst $00
    ld l, d
    ld a, l
    db $ec
    rst $38
    ld l, l
    ld a, a
    ret nz

    rst $38
    scf
    ccf
    add b
    rst $38
    jr @+$21

    ld bc, $0fff
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
    rrca
    rrca
    jp Jump_000_08ff


    rrca
    dec a
    cp $08
    rrca
    inc bc
    rst $38
    ld [$000f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    db $10
    rra
    jr nz, @+$01

    ld e, $1f
    ccf
    rst $38
    rra
    rra
    cp a
    rst $38
    rla
    rra
    db $e3
    rst $38
    ld hl, $c03f
    rst $38
    jr nz, jr_0e2_5151

    ld b, b
    rst $38
    jr nz, jr_0e2_5155

    ld b, b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    jr nz, jr_0e2_5161

    and b
    cp a
    rra
    rra
    rra
    rra
    ld e, $1e
    rra
    rra
    inc a
    inc a
    rra
    rra
    inc a
    inc a
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    ld a, a
    ld a, a

jr_0e2_513a:
    rra
    rra
    ld a, a
    ld a, a
    sbc a
    sbc a
    dec de
    dec e
    nop
    nop
    ld h, e
    ld a, h
    add b
    add b
    adc l
    di
    nop
    nop
    ld a, d
    add [hl]
    nop
    nop
    inc [hl]

jr_0e2_5151:
    db $fc
    nop
    nop
    db $fc

jr_0e2_5155:
    db $fc
    nop
    nop
    sub h
    db $fc
    nop
    nop
    sbc h
    db $f4
    nop
    nop
    ld a, h

jr_0e2_5161:
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr nc, jr_0e2_513a

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
    ld b, b
    ret nz

    nop
    nop
    ld b, b
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
    ld b, b
    ret nz

jr_0e2_51b2:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_51b6:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_51ba:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_51be:
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
    jr nz, jr_0e2_51b2

    nop
    nop
    jr nz, jr_0e2_51b6

    nop
    nop
    jr nz, jr_0e2_51ba

    nop
    nop
    jr nz, jr_0e2_51be

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
    ret nz

    ret nz

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
    nop
    nop
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    ld a, [$03fe]
    inc bc
    and $fe
    inc bc
    inc bc
    sbc l
    db $eb
    ld bc, $9f01
    db $e3
    rlca
    rlca
    rst $08
    pop af
    ld c, $0f
    ld h, c
    rst $38
    inc de
    rra
    cp a
    rst $38
    daa
    ccf
    rst $18
    and $2e
    ccf
    ld sp, hl
    add $2d
    ld a, $63
    call c, $3f2e
    rst $38
    ret nz

    daa
    ccf
    rst $08
    ldh a, [$30]
    ccf
    ld [bc], a
    rst $38
    rra
    rra
    cp $ff
    inc c
    rrca
    inc bc
    rst $38
    inc c
    rrca
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    rrca
    rrca
    jp Jump_000_08ff


    rrca
    dec a
    cp $08
    rrca
    inc bc
    rst $38
    ld [$000f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    db $10
    rra
    jr nz, @+$01

    ld e, $1f
    ccf
    rst $38
    rra
    rra
    cp a
    rst $38
    rla
    rra
    db $e3
    rst $38
    ld hl, $c03f
    rst $38
    jr nz, jr_0e2_52d1

    ld b, b
    rst $38
    jr nz, jr_0e2_52d5

    ld b, b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    jr nz, @+$41

    and b
    cp a
    rra
    rra
    rra
    rra
    ld e, $1e
    rra
    rra
    inc a
    inc a
    rra
    rra
    inc a
    inc a
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    ld a, a
    ld a, a
    rra
    rra
    ld a, a
    ld a, a
    sbc a
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e2_52d1:
    nop
    nop
    nop
    nop

jr_0e2_52d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld hl, sp-$08
    call z, Call_000_14cb
    db $ec
    rst $38
    ld hl, sp-$0c
    inc c
    rst $18
    ccf
    ld hl, sp+$38
    rst $28
    rra
    ret nz

    ld b, b
    rst $28
    rra
    ld b, b
    ret nz

    rst $18
    ccf
    add b
    add b
    ld bc, $00ff
    nop
    jp nz, Jump_000_00fe

    nop
    ld a, h
    db $fc
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
    ld b, b
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
    ld b, b
    ret nz

jr_0e2_5332:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_5336:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_533a:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_533e:
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
    jr nz, jr_0e2_5332

    nop
    nop
    jr nz, jr_0e2_5336

    nop
    nop
    jr nz, jr_0e2_533a

    nop
    nop
    jr nz, jr_0e2_533e

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
    ret nz

    ret nz

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
    ld a, a
    ld a, a
    ld bc, $f401
    rst $38
    ld [bc], a
    inc bc
    inc de
    rst $38
    inc b
    rlca
    ei
    db $fc
    dec b
    rlca
    db $fd
    cp $0b
    rrca
    cp a
    rst $38
    dec bc
    rrca
    ld e, a
    cp a
    dec bc
    rrca
    xor [hl]
    pop af
    add hl, bc
    rrca
    rst $18
    ldh [$08], a
    rrca
    reti


    and $0f
    rrca
    db $eb
    db $f4
    inc c
    rrca
    dec de
    db $fc
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
    inc c
    rrca
    nop
    rst $38
    rrca
    rrca
    jp Jump_000_08ff


    rrca
    dec a
    cp $08
    rrca
    inc bc
    rst $38
    ld [$000f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    db $10
    rra
    jr nz, @+$01

    ld e, $1f
    ccf
    rst $38
    rra
    rra
    cp a
    rst $38
    rla
    rra
    db $e3
    rst $38
    ld hl, $c03f
    rst $38
    jr nz, @+$41

    ld b, b
    rst $38
    jr nz, @+$41

    ld b, b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    jr nz, jr_0e2_5461

    and b
    cp a
    rra
    rra
    rra
    rra
    ld e, $1e
    rra
    rra
    inc a
    inc a
    rra
    rra
    inc a
    inc a
    rra
    rra
    ld a, [hl]
    ld a, [hl]

jr_0e2_5436:
    rra
    rra
    ld a, a
    ld a, a
    rra
    rra
    ld a, a
    ld a, a
    sbc a
    sbc a
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
    jr nz, jr_0e2_5436

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ld b, b
    ret nz

jr_0e2_545e:
    nop
    nop
    ret nz

jr_0e2_5461:
    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nc, jr_0e2_545e

    nop
    nop
    inc sp
    di
    nop
    nop
    sub $35
    ret nz

jr_0e2_5477:
    ret nz

    db $ec
    dec de
    and b
    ld h, b
    db $fd
    ld e, $f8
    jr jr_0e2_5477

    rra
    db $f4
    inc c
    ld l, e
    rst $30
    and h
    call c, $fe7e
    ld l, h
    ld [hl], h
    ld h, h
    db $fc
    jr jr_0e2_54a8

    ld e, b
    ret c

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
    add b
    add b
    nop
    nop

jr_0e2_54a8:
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

jr_0e2_54b2:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_54b6:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_54ba:
    nop
    nop
    ld b, b
    ret nz

jr_0e2_54be:
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
    jr nz, jr_0e2_54b2

    nop
    nop
    jr nz, jr_0e2_54b6

    nop
    nop
    jr nz, jr_0e2_54ba

    nop
    nop
    jr nz, jr_0e2_54be

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
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $fb01
    rst $38
    inc bc
    inc bc
    db $dd
    rst $38
    rlca
    rlca
    xor h
    rst $18
    rlca
    rlca
    call c, Call_000_0bff
    rrca
    db $fc
    rst $38
    rrca
    add hl, bc
    ld hl, sp-$01
    dec d
    ld a, [de]
    or b
    ld a, a
    ld e, $11
    ld h, b

jr_0e2_5547:
    rst $38
    rla
    jr jr_0e2_5547

    ld a, a
    rrca
    ld [$7ff3], sp
    rrca
    ld [$ff70], sp
    dec bc
    rrca
    ldh a, [rIE]
    ld b, $07
    ld hl, sp-$01
    dec b
    ld b, $e7
    rst $38
    rlca
    rlca
    ret nz

    ccf
    inc bc
    ld [bc], a
    ret nz

    ccf
    inc bc
    ld [bc], a
    add d
    ld a, a
    ld bc, $8101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38

jr_0e2_5578:
    ld bc, $0201
    cp $01
    ld bc, $fc04
    inc bc
    inc bc
    inc b
    db $fc
    rlca
    rlca
    ret z

    ld hl, sp+$0b
    rrca
    ld hl, sp-$08
    ld de, $f81f
    ld hl, sp+$10
    rra
    ldh a, [$f0]
    jr nz, jr_0e2_55d5

    jr nz, jr_0e2_5578

    jr nz, jr_0e2_55d9

    jr nz, @-$1e

    jr nz, jr_0e2_55dd

    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    jr jr_0e2_55c5

    add b
    add b
    ccf
    ccf
    nop
    nop
    inc a
    inc a
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
    ld a, [hl]
    ld a, [hl]
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

jr_0e2_55c5:
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

jr_0e2_55d5:
    rst $38
    add b
    add b
    rst $30

jr_0e2_55d9:
    ld hl, sp-$80
    add b
    rst $38

jr_0e2_55dd:
    rst $10
    add b
    add b
    rst $18
    ldh [$b8], a
    cp b
    ld c, a
    pop af
    db $fc
    call nz, $f8e7
    db $fc
    call nz, $ffd8
    db $fc
    db $e4
    rrca
    rst $38
    db $fc
    db $fc
    rlca
    rst $38
    cp h
    db $fc
    nop
    rst $38
    ld e, $e2
    nop
    rst $38
    dec e
    db $e3
    nop
    rst $38
    cpl
    pop de
    nop
    rst $38
    cpl
    pop de
    ld [bc], a
    rst $38
    ld e, l
    db $e3
    ld a, [c]
    rst $38
    ld l, d
    or $0f
    rst $38
    sbc h
    sbc h
    inc bc
    rst $38
    nop
    nop
    db $76
    cp $00
    nop
    xor h
    call c, RST_00
    ld [hl], h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    jr nz, jr_0e2_567d

    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    add hl, bc
    rrca
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    daa
    ccf
    ldh [$e0], a
    ld hl, $c03f
    ret nz

    ld b, b
    ld a, a
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
    add d
    cp $00
    nop
    ld b, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    rst $38

jr_0e2_567d:
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
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $fb01
    rst $38
    inc bc
    inc bc
    db $dd
    rst $38
    rlca
    rlca
    xor h
    rst $18
    rlca
    rlca
    call c, Call_000_0bff
    rrca
    db $fc
    rst $38
    rrca
    add hl, bc
    ld hl, sp-$01
    dec d
    ld a, [de]
    or b
    ld a, a
    ld e, $11
    ld h, b

jr_0e2_56bf:
    rst $38
    rla
    jr jr_0e2_56bf

    ld a, a
    rrca
    ld [$7ff3], sp
    rrca
    ld [$ff70], sp
    dec bc
    rrca
    ldh a, [rIE]
    ld b, $07
    ld hl, sp-$01
    dec b
    ld b, $e7
    rst $38
    rlca
    rlca
    ldh [$3f], a
    inc bc
    ld [bc], a
    ldh [$3f], a
    inc bc
    ld [bc], a
    ldh [$7f], a
    ld bc, $c001
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
    sbc a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $1e01
    cp $01
    ld bc, $fc04
    ld bc, $0401
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
    ld [$02f8], sp
    inc bc
    ld [$01f8], sp
    ld bc, $f808
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
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
    rst $30
    ld hl, sp-$80
    add b
    rst $38
    rst $10
    add b
    add b
    rst $18
    ldh [$b8], a
    cp b
    ld c, a
    pop af
    db $fc
    call nz, $f8e7
    db $fc
    call nz, $ffd8
    db $fc
    db $e4
    rrca
    rst $38
    db $fc
    db $fc
    rlca
    rst $38
    cp h
    db $fc
    nop
    rst $38
    ld e, $e2
    nop
    rst $38
    dec e
    db $e3
    nop
    rst $38
    cpl
    pop de
    nop
    rst $38
    cpl
    pop de
    ld [bc], a
    rst $38
    ld e, l
    db $e3
    ld a, [c]
    rst $38
    ld l, d
    or $0f
    rst $38
    sbc h
    sbc h
    inc bc
    rst $38
    nop
    nop
    db $76
    cp $00
    nop
    xor h
    call c, RST_00
    ld [hl], h
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
    sub h
    db $fc
    nop
    nop
    ld [c], a
    cp $00
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
    pop bc
    rst $38
    nop
    nop
    ld b, a
    ld a, a
    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    add b
    add b
    daa
    ccf
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
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
    add c
    rst $38
    nop

jr_0e2_57df:
    nop
    add d
    cp $00
    nop
    ld b, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
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

jr_0e2_5808:
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

    rlca
    rlca
    ldh [$e0], a
    rrca
    rrca
    db $10
    ldh a, [rIF]
    rrca
    jr c, jr_0e2_5808

    rrca
    rrca
    db $f4
    adc h
    rrca
    ld c, $7e
    add d
    ld b, $07
    ld a, [hl-]
    add $07
    rlca
    add a
    rst $38
    dec e
    rra
    rst $38
    rst $38
    ld a, $3f
    xor $ff
    ld a, a
    ld a, a
    nop
    rst $38
    ld [hl], a
    ld a, a
    add a
    rst $38
    ld l, e
    ld [hl], a
    sbc e
    db $fc
    rst $30
    rst $38
    xor $f1
    rst $38
    rst $38
    rlca
    rst $38
    cp h
    jp $ff1f


    call c, Call_0e2_7fa3
    ld sp, hl
    add e
    db $fc
    xor $1f
    ld e, a
    ld h, b
    ret c

    ccf
    scf
    jr c, jr_0e2_57df

    ld a, a
    rrca
    rrca
    rst $38
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    inc b
    rst $38
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld bc, $8301
    rst $38
    ld bc, $8101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38

jr_0e2_5884:
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc b
    rlca
    rra
    rst $38
    ld [$020f], sp
    cp $10
    rra
    inc b
    db $fc
    jr nz, jr_0e2_58d9

    ld [$40f8], sp
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    jr nz, jr_0e2_5884

    jr nz, jr_0e2_58e5

    ld b, b
    ret nz

    jr c, jr_0e2_58e9

    add b
    add b
    ccf
    ccf
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
    ret nz

    ret nz

    ld a, a
    ld a, a
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

jr_0e2_58d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e2_58e5:
    nop
    ld c, $0e
    nop

jr_0e2_58e9:
    nop
    ccf
    ld sp, $8181
    jp c, $e6e6

    rst $20
    db $fc
    inc e
    ld sp, hl
    cp $60
    ldh [$d6], a
    jp hl


    add b
    add b
    ld [hl], a
    adc b
    add b
    add b
    adc a
    ld a, a
    add b
    add b
    cpl
    rst $18

jr_0e2_5906:
    add b
    add b
    cp a
    ld e, [hl]

jr_0e2_590a:
    add b
    add b
    sbc a
    pop hl
    nop
    nop
    cp [hl]
    cp $00
    nop
    jr nc, jr_0e2_5906

    nop
    nop
    jr nc, jr_0e2_590a

    nop
    nop

jr_0e2_591c:
    ldh a, [$f0]
    nop
    nop
    ld d, b
    or b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add d
    cp $00
    nop

jr_0e2_5930:
    ld bc, $80ff
    add b

jr_0e2_5934:
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0e2_591c

    add e
    rst $38
    ldh [$e0], a
    ld a, a
    ld a, a
    ldh [$e0], a
    ld a, a
    ld a, a
    ldh [$e0], a
    inc hl
    ccf
    ldh [$e0], a
    jr nz, jr_0e2_598d

    jr nz, jr_0e2_5930

    ld b, b
    ld a, a
    jr nz, jr_0e2_5934

    ld b, b
    ld a, a
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a
    inc a
    nop
    nop

jr_0e2_5970:
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
    ret nz

    ret nz

    ld a, a
    ld a, a
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

jr_0e2_598d:
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
    rst $30
    ld hl, sp+$00
    nop
    rst $38
    rst $10
    nop
    nop
    rst $18
    ldh [rP1], a
    nop
    rst $08
    pop af
    inc bc
    inc bc
    rst $20
    ld hl, sp+$07
    rlca
    cp c
    rst $38
    rrca
    rrca
    rst $08
    rst $38
    ld e, $1f
    db $e3
    rst $38
    dec e
    ld e, $60
    rst $38
    ld e, $1f
    ldh [rIE], a
    rra
    rra
    rst $38
    rst $38
    dec de
    inc e
    and c
    ld a, a
    rla
    jr jr_0e2_5970

    ld a, a
    inc d
    dec de
    ld a, a
    cp [hl]
    dec bc
    inc c
    rst $28
    ld [hl], $05
    ld b, $fe
    ccf
    ld b, $07
    nop
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld b, $07
    nop
    rst $38
    ld b, $07
    ld [$06ff], sp
    rlca
    dec b
    rst $38
    inc bc
    inc bc
    ld b, $ff
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $03
    inc bc
    cp $fe
    rlca
    rlca
    cp $fe
    ld [$3e0f], sp
    cp $10
    rra
    inc b
    db $fc
    jr nz, jr_0e2_5a55

    ld [$40f8], sp
    ld a, a
    ld de, $80f1
    rst $38
    ld hl, $80e1
    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld [hl], c
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    add b
    add b
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
    add b

jr_0e2_5a55:
    add b
    nop
    nop
    add b
    add b

jr_0e2_5a5a:
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

jr_0e2_5a6e:
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
    jr nc, jr_0e2_5a6e

    nop
    nop
    jr z, jr_0e2_5a5a

    nop
    nop
    rst $38
    rst $38
    cp $fe
    rst $38
    nop
    cp $02
    nop
    rst $38
    ld [bc], a
    cp $bf
    ld c, a
    db $fc
    db $fc
    ld e, [hl]
    xor $00
    nop
    ld c, h
    db $fc
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc bc
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

    rlca
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld b, a
    ld a, a
    ret nz

    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    add c
    rst $38
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
    ld a, b
    ld a, b
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
    add b
    add b
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
    ld bc, $0001
    nop
    rrca
    rrca
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $18
    rst $38
    rlca
    rlca
    xor l
    rst $18
    rlca
    rlca
    db $dd
    rst $38
    rlca
    inc b
    db $fc
    rst $38
    dec bc
    inc c
    jp nc, $0f3f

    ld [$1fe9], sp
    dec c
    ld a, [bc]
    jp c, $0827

    rrca
    dec a
    jp Jump_000_0605


    db $fd
    inc bc
    inc bc
    inc bc
    dec sp
    rst $00
    inc bc
    inc bc
    rlca
    rst $38
    ld b, $07
    inc bc
    rst $38
    ld b, $07
    nop
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld b, $07
    nop
    rst $38
    ld b, $07
    ld [$06ff], sp
    rlca
    dec b
    rst $38
    inc bc
    inc bc
    ld b, $ff
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $03
    inc bc
    cp $fe
    rlca
    rlca
    cp $fe
    ld [$3e0f], sp
    cp $10
    rra
    inc b
    db $fc
    jr nz, @+$41

    ld [$40f8], sp
    ld a, a
    ld de, $80f1
    rst $38
    ld hl, $80e1
    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld [hl], c
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    add b
    add b
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
    ld a, h
    ld a, h
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
    or a
    nop
    nop
    cp l
    rlc b
    nop
    dec [hl]
    rst $08
    nop
    nop
    cp [hl]
    jp nz, RST_00

    jp c, Jump_000_00e6

    nop
    call nc, Call_000_00ec
    nop
    xor $fe
    nop
    nop
    ld a, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    add a
    rst $38
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    scf
    rst $38
    nop
    nop
    xor e
    db $fd
    nop
    nop
    rst $18
    rst $20
    nop
    nop
    rst $30
    ld sp, hl
    nop
    nop
    db $dd
    cp $c0
    ret nz

    xor $fb
    ldh [rNR41], a
    ld l, a
    cp a

jr_0e2_5c22:
    cp b
    ret c

    cp $fe
    ld l, h
    ld [hl], h
    jr jr_0e2_5c22

    rla
    dec de
    inc c
    db $fc
    dec c
    ld c, $03
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld b, a
    ld a, a
    ret nz

    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    add c
    rst $38
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
    ld a, b
    ld a, b
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
    add b
    add b
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor $ff
    nop
    nop
    sub $ef
    add b
    add b
    xor $ff
    nop
    nop
    cp $ff
    nop
    nop
    add b
    rst $38
    nop
    nop
    cp h
    jp RST_00


    sbc e
    rst $20
    nop
    nop
    or b
    rst $08
    nop
    nop
    or b
    rst $08
    nop
    nop
    or b
    rst $08
    nop
    nop
    or a
    rst $08
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ldh a, [$8f]
    jr c, jr_0e2_5d5e

    ldh a, [rIE]
    ccf
    ccf
    inc c
    rst $38
    ccf
    ccf
    ld [bc], a
    rst $38
    ccf
    ccf
    ld bc, $7fff
    ld a, a
    ld bc, $79ff
    ld a, c
    nop
    rst $38
    ld [hl], b
    ld [hl], b
    add b
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

jr_0e2_5d5e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, b
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
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
    ld b, $fe
    nop
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
    ld e, $fe
    nop
    nop
    ld [$00f6], a
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ret c

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
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
    ld bc, $0001
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
    ld a, $3f
    nop
    nop
    dec l
    inc sp
    nop
    nop
    ccf
    jr nz, jr_0e2_5e41

jr_0e2_5e41:
    nop
    ld e, a
    ld h, b
    nop
    nop
    db $76
    ld c, c
    nop
    nop
    ld a, c
    ld b, a
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld a, $21
    nop
    nop
    ld l, $31
    nop
    nop
    scf
    ccf
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    ccf
    ccf
    nop
    nop
    scf
    ccf
    nop
    nop
    inc sp
    inc a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr jr_0e2_5e93

    nop
    nop
    jr jr_0e2_5e97

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
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b

jr_0e2_5e93:
    rst $38
    ld bc, $0001

jr_0e2_5e97:
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    ld bc, $04ff
    rlca
    ld [bc], a
    cp $02
    inc bc
    inc b
    db $fc
    inc bc
    inc bc
    adc b
    ld hl, sp+$03
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
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
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$08
    rra
    dec e
    ld a, b
    cp b
    ld a, l
    ld a, [hl]
    add sp, $58
    ld sp, hl
    cp $a8
    ld a, b
    db $fd
    cp $f0
    db $10
    xor $ff
    ret nc

    jr nc, @+$78

    rst $38
    and b
    ld h, b

jr_0e2_5ef4:
    or a
    ld a, a
    ld h, b
    ldh [$71], a
    rst $38
    ldh a, [$f0]

jr_0e2_5efc:
    ldh [rIE], a
    ld [hl], b
    ldh a, [$c0]
    rst $38
    jr nc, jr_0e2_5ef4

    nop
    rst $38
    jr nc, @-$0e

    add d
    rst $38
    jr nc, jr_0e2_5efc

    ld a, [hl]
    rst $38
    ld h, b
    ldh [rTAC], a
    rst $38
    ret nz

    ret nz

    ld bc, $f0ff
    ldh a, [$03]
    rst $38
    ld hl, sp-$08
    add a
    rst $38
    sbc h
    db $fc

jr_0e2_5f20:
    ei
    cp l
    call c, Call_0e2_47ac
    cp a
    call z, $80bc
    ld a, a
    ld e, b
    add sp, $28
    rst $38
    jr nc, jr_0e2_5f20

    jr nc, @+$01

    jr @-$06

    db $10
    rst $38
    inc b
    db $fc
    db $10
    rst $38
    ld [bc], a
    cp $18
    rst $38
    ld a, $fe
    rla
    rst $30
    cp $fe
    rst $30
    rst $30
    cp $fe
    ld a, [c]
    di
    ld a, $fe
    ld a, [c]
    di
    ld [bc], a
    cp $24
    rst $20
    ld [bc], a
    cp $44
    rst $00
    inc b
    db $fc
    adc b
    adc a
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$04
    rlca
    ld [$03f8], sp
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    ld de, $001f
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    push af
    ei
    nop
    nop
    ei
    rst $38
    nop
    nop
    rst $38
    sbc a
    ld bc, $7a01
    add a
    ld bc, $ff01
    inc bc
    ld bc, $bb01
    ld b, h
    ld bc, $0701
    ld hl, sp+$00
    nop
    cp a
    ret nz

    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0e2_6027

    nop
    nop
    jr nc, jr_0e2_602b

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr jr_0e2_6013

    nop
    nop
    jr jr_0e2_6017

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
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b

jr_0e2_6013:
    rst $38
    ld bc, $0001

jr_0e2_6017:
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    ld bc, $04ff
    rlca
    ld [bc], a
    cp $02
    inc bc
    inc b

jr_0e2_6027:
    db $fc
    inc bc
    inc bc
    adc b

jr_0e2_602b:
    ld hl, sp+$03
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
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
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    ld [hl], b
    ld [hl], b
    ld hl, sp+$18
    ret c

    cp b
    ld a, c
    adc c
    cp b
    ld a, b
    sub e
    di
    xor b
    ld a, b
    ld a, a
    db $fd
    add sp, -$08
    cp a
    ld sp, hl
    db $fc
    db $fc
    add a
    ld sp, hl
    ld c, h
    db $fc

jr_0e2_6080:
    add a
    ld sp, hl
    or h
    ld c, h
    rlca
    ld sp, hl
    or h
    ld c, h
    ld b, $f9
    ret z

    jr c, jr_0e2_6093

    ld sp, hl
    jr nc, jr_0e2_6080

jr_0e2_6090:
    cp $7f
    ret nz

jr_0e2_6093:
    ret nz

    or a
    ld a, d
    add b
    add b
    scf
    ld a, [$8080]
    ld a, [hl]
    rst $38
    add b
    add b
    rst $30
    ei
    nop
    nop
    rrca
    rst $38
    add b
    add b
    ld b, b
    rst $38
    ld b, b
    ret nz

jr_0e2_60ac:
    jr z, @+$01

    jr nz, jr_0e2_6090

    jr nc, @+$01

    jr jr_0e2_60ac

    db $10
    rst $38
    inc b
    db $fc
    db $10
    rst $38
    ld [bc], a
    cp $18
    rst $38
    ld a, $fe
    rla
    rst $30
    cp $fe
    rst $30
    rst $30
    cp $fe
    ld a, [c]
    di
    ld a, $fe
    ld a, [c]
    di
    ld [bc], a
    cp $24
    rst $20
    ld [bc], a
    cp $44
    rst $00
    inc b
    db $fc
    adc b
    adc a
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$04
    rlca
    ld [$03f8], sp
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    db $fc
    db $fc
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
    dec c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    ld de, $001f
    nop
    ld a, $3f
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    push af
    ei
    nop
    nop
    ei
    rst $38
    nop
    nop
    rst $38
    sbc a
    ld bc, $7a01
    add a
    ld bc, $ff01
    inc bc
    ld bc, $bb01
    ld b, h
    ld bc, $0701
    ld hl, sp+$00
    nop
    cp a
    ret nz

    nop
    nop
    ld a, b
    ld a, a
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
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e2_61bf

    nop
    nop
    inc a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld b, e
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
    add b
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a
    inc a
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
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    rst $38

jr_0e2_61bf:
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
    adc b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$08
    ld [hl], b
    ld [hl], b
    ld hl, sp+$18
    ret c

    cp b
    ld a, c
    adc c
    cp b
    ld a, b
    sub e
    di
    xor b
    ld a, b
    ld a, a
    db $fd
    add sp, -$08
    cp a
    ld sp, hl
    db $fc
    db $fc
    add a
    ld sp, hl
    ld c, h
    db $fc

jr_0e2_61f4:
    add a
    ld sp, hl
    or h
    ld c, h
    rlca
    ld sp, hl
    or h
    ld c, h
    ld b, $f9
    ret z

    jr c, jr_0e2_6207

    ld sp, hl
    jr nc, jr_0e2_61f4

    cp $7f
    ret nz

jr_0e2_6207:
    ret nz

    or a
    ld a, d
    add b
    add b
    scf
    ld a, [$8080]
    ld a, [hl]
    rst $38
    add b
    add b
    rst $30
    ei
    nop
    nop
    ld c, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    add hl, de
    rst $38
    nop
    nop
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    db $10
    rst $38
    add b
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    rst $00
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
    add b
    add b
    ccf
    ccf
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
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    ldh [$e0], a
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
    ld bc, $c001
    ret nz

    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    xor b
    ret c

    ld c, $0f
    cp b
    ld hl, sp+$0f
    ld c, $74
    adc h
    rlca
    rlca
    rla
    rst $28
    rrca
    rrca
    xor $ff
    inc e
    rra
    jp c, $38ff

    ccf
    inc d
    ei
    ld h, $3f
    dec de
    rst $38
    ld a, b
    ld a, a
    rra
    rst $38
    ld l, b
    ld a, a
    ld c, $ff
    add sp, -$01
    nop
    rst $38
    xor b
    rst $18
    rrca
    rst $38
    and b
    rst $18
    pop af
    rst $38
    or e
    rst $08
    ld bc, $9cff
    rst $28
    ld bc, $90ff
    rst $28
    ld [bc], a
    cp $90
    rst $28
    ld c, $fe
    sub c
    rst $28
    or $fa
    sbc [hl]
    rst $28
    ld c, $fe
    ld [hl], b
    ld a, a
    ld [bc], a
    cp $70
    ld a, a
    ld [bc], a
    cp $30
    ccf
    add hl, bc
    rst $38
    jr nc, @+$41

    ld [$10ff], sp
    rra
    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    ld [$100f], sp
    rst $38
    inc e
    rra
    rra
    rst $38
    rra
    rra
    rst $38
    rst $38
    rra
    rra
    ld hl, sp-$01
    inc hl
    ccf
    ldh a, [rIE]
    jr nz, @+$41

    jr nc, @+$01

    jr nz, jr_0e2_6355

    ld d, b
    rst $18
    ld b, b
    ld a, a
    ld d, b
    rst $18
    ld b, b
    ld a, a
    sub b
    sbc a
    ld b, b
    ld a, a
    adc b
    adc a
    dec a
    ccf
    rlca
    rlca
    ld a, $3e
    rlca
    rlca
    ld a, b
    ld a, b
    rlca
    rlca
    ld a, b
    ld a, b
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    cp $fe
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    ld d, h
    ld l, h
    ld bc, $a801
    ret c

    ld [bc], a

jr_0e2_6355:
    inc bc
    ret nc

    ldh a, [$3f]
    ccf
    ldh a, [$b0]
    sbc $e1
    or b
    ldh a, [$fe]
    ld bc, $e0e0
    pop hl
    rra

jr_0e2_6366:
    ret nz

    ret nz

    ld b, $fe
    nop
    nop
    jr jr_0e2_6366

    nop
    nop
    ldh [$e0], a
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

jr_0e2_6396:
    nop
    nop
    nop
    nop

jr_0e2_639a:
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0e2_6396

    nop
    nop
    jr nz, jr_0e2_639a

    nop
    nop
    db $10
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
    ret nz

    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
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
    ld bc, $0001
    nop
    rst $38
    rst $38
    ld bc, $7f01
    rst $38
    ld [bc], a
    inc bc
    ld h, l
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    dec b
    rlca
    adc a
    rst $38
    inc b
    rlca
    db $eb
    rst $38
    inc b
    rlca
    add [hl]
    rst $38
    inc b
    rlca
    adc l
    cp $06
    rlca
    ld c, $ff
    dec b
    rlca
    rlca
    rst $38
    inc b
    rlca
    jp Jump_000_04ff


    rlca
    jr c, @+$01

    ld b, $07
    rlca
    rst $38
    dec b
    rlca
    nop
    rst $38
    ld [$e10f], sp
    rst $38
    db $10
    rra
    ld e, $ff
    db $10
    rra
    ld h, b
    rst $38
    db $10
    rra
    inc d
    rst $38
    ld [$080f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    rlca
    rst $38
    inc b
    rlca
    dec a
    db $fd
    rrca
    rrca
    db $fd
    db $fd
    db $10
    rra
    ld a, l
    db $fd
    jr nz, jr_0e2_64d5

    add hl, bc
    ld sp, hl
    ld b, b
    ld a, a
    ld [de], a
    di
    add b
    rst $38
    ld [hl+], a
    db $e3
    add b
    rst $38
    ld b, c
    pop bc
    ld b, b
    ld a, a
    add b
    add b
    ld [hl], c
    ld a, a
    ld bc, $7e01
    ld a, [hl]
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    cp $fe
    inc bc
    inc bc
    rst $38
    rst $38
    add e
    add e
    rst $38
    rst $38
    add e
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e2_64d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0e2_651a

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
    or $de
    nop
    nop
    ld e, d
    and $00
    nop
    sbc h
    db $e4
    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    xor b
    ret c

jr_0e2_651a:
    nop
    nop
    db $e4
    inc e
    nop
    nop
    ld a, [hl-]
    add $00
    nop
    db $fd
    add e
    nop
    nop
    sbc [hl]
    pop hl
    add b
    add b
    rst $20
    ld hl, sp+$40
    ret nz

    add hl, sp
    cp $60
    ldh [rTAC], a
    rst $38
    ldh a, [$f0]
    ld bc, $b8ff
    ret c

    nop
    rst $38
    cp b
    ret c

    ld bc, $f4ff
    db $ec
    ccf
    rst $38
    jp c, $ffe6

    rst $38
    xor l
    or e
    rlca
    rst $38
    rla
    add hl, de
    ld bc, $0bff
    dec c
    ld bc, $06ff
    ld b, $01
    rst $38
    nop
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
    ldh a, [$f0]
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
    cp $fe
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
    ld e, $1f
    ldh a, [rNR10]
    rra
    ld a, [de]
    ldh a, [$f0]
    dec de
    inc e
    ldh a, [rNR10]
    add hl, de
    ld e, $f0
    jr nc, jr_0e2_65dd

    ccf
    ldh a, [rNR10]
    ld [hl], e
    ld a, a
    ld hl, sp-$08
    ld b, [hl]
    ld a, a
    rst $18
    rst $20
    push bc
    cp $5b
    db $e4
    add [hl]
    rst $38
    rst $18
    ldh [$87], a
    rst $38
    rst $18
    ldh [$83], a
    rst $38
    call nz, $80fb
    rst $38
    ld bc, $40ff
    rst $38
    ld c, $fe
    ld a, a
    rst $38
    db $fc
    db $fc
    ld h, b
    cp a
    inc b
    db $fc
    ld h, b
    cp a
    inc b
    db $fc
    and b
    rst $38
    ld c, $fe
    cp a
    rst $08
    or $fa
    sub b
    rst $28
    ld c, $fe
    ld [hl], b

jr_0e2_65dd:
    ld a, a
    ld [bc], a
    cp $70
    ld a, a
    ld [bc], a
    cp $30
    ccf
    add hl, bc
    rst $38
    jr nc, @+$41

    ld [$10ff], sp
    rra
    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    ld [$100f], sp
    rst $38
    inc e
    rra
    rra
    rst $38
    rra
    rra
    rst $38
    rst $38
    rra
    rra
    ld hl, sp-$01
    inc hl
    ccf
    ldh a, [rIE]
    jr nz, jr_0e2_6651

    jr nc, @+$01

    jr nz, jr_0e2_6655

    ld d, b
    rst $18
    ld b, b
    ld a, a
    ld d, b
    rst $18
    ld b, b
    ld a, a
    sub b
    sbc a
    ld b, b
    ld a, a
    adc b
    adc a
    dec a
    ccf
    rlca
    rlca
    ld a, $3e
    rlca
    rlca
    ld a, b
    ld a, b
    rlca
    rlca
    ld a, b
    ld a, b
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    cp $fe
    rlca
    rlca
    rst $38
    rst $38
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

jr_0e2_6651:
    nop
    nop
    nop
    nop

jr_0e2_6655:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add a
    ld a, a
    rst $38
    add b
    db $fd
    inc bc
    rst $38
    ld b, c
    pop hl
    rra
    ld a, [hl]
    cp $1f
    rst $38
    ret nz

    ret nz

    pop hl
    pop hl
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

jr_0e2_6696:
    nop
    nop
    nop
    nop

jr_0e2_669a:
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0e2_6696

    nop
    nop
    jr nz, jr_0e2_669a

    nop
    nop
    db $10
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
    ret nz

    ret nz

    nop
    nop
    ldh a, [$f0]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    ld bc, $f501
    ei
    ld bc, $6b01
    sbc a
    ld bc, $f701
    rrca
    ld bc, $de01
    daa
    ld bc, $4001
    cp a
    nop
    nop
    db $fc
    add e
    nop
    nop
    cp e
    add $00
    nop
    rst $10
    rst $28
    nop
    nop
    call $01ff
    ld bc, $fe85
    ld bc, $8301
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8201
    rst $38
    ld bc, $8101
    rst $38
    nop
    nop
    pop bc
    rst $38
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

jr_0e2_6908:
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    inc b
    rlca
    ld bc, $08ff
    rrca
    ld [bc], a
    cp $10
    rra
    inc b
    db $fc
    jr nz, jr_0e2_695d

    ld [$20f8], sp
    ccf
    db $10
    ldh a, [rNR10]
    rra
    jr nz, jr_0e2_6908

    inc e
    rra
    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    ld a, $3e
    nop
    nop
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
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
    ld e, $1e
    nop
    nop
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    ld a, e

jr_0e2_695d:
    ld l, l
    ret nz

    ret nz

    rst $28
    ld a, [c]
    ld b, b
    ret nz

    call Call_0e2_40f3
    ret nz

    rst $28
    ldh a, [$80]
    add b
    db $76
    ld sp, hl
    add b
    add b
    or l
    ei
    nop
    nop
    cp e
    rst $38
    ld h, b
    ld h, b
    add a
    ei
    ld hl, sp-$68
    rrca
    di
    call nc, Call_000_0d6c
    di

jr_0e2_6982:
    inc a
    db $f4
    add hl, de
    rst $20
    db $f4
    db $fc
    ld sp, $f8cf
    ld hl, sp-$1d
    rra
    jr nc, @-$0e

    call nz, $d03f
    jr nc, jr_0e2_6982

    sbc $d0
    jr nc, @-$01

    sbc $a0
    ld h, b
    ld a, [$40db]
    ret nz

    reti


    jp hl


    add b
    add b
    inc a
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    add b
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    jr nz, @-$1e

jr_0e2_69b8:
    add b
    rst $38
    db $10
    ldh a, [$c1]
    rst $38
    ldh a, [$f0]
    cp a
    cp a
    ldh a, [$f0]
    cp a
    cp a
    ldh a, [$f0]
    sub c
    sbc a
    ldh a, [$f0]
    sub b
    sbc a
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, jr_0e2_69b8

    ld b, b
    ld a, a
    jr nz, @-$1e

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e2_6a21

    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
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
    ld [hl], b
    ld [hl], b
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    call nz, $03fc
    inc bc
    adc $fa
    inc bc

jr_0e2_6a21:
    inc bc
    db $fd
    db $e3
    inc bc
    inc bc
    rst $18
    and b
    ld bc, $8e01
    pop af
    nop
    nop
    pop hl
    rst $38
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    rst $18
    ldh a, [$03]
    inc bc
    xor [hl]
    reti


    ld b, $07
    rst $18
    ld hl, sp+$06
    rlca
    ei
    db $fc
    ld b, $07
    ld a, [hl]
    rst $38
    ld b, $07
    nop
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    ld bc, $8701
    rst $38
    nop
    nop
    ld hl, sp-$01
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
    rst $00
    rst $38
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
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e2_6abb

    nop
    nop
    jr jr_0e2_6a9f

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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b

jr_0e2_6a9f:
    rlca
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

jr_0e2_6abb:
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
    inc e
    inc e
    nop
    nop
    ld [hl], $2a
    nop
    nop
    ld l, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld l, e
    ld e, l
    nop
    nop
    dec sp
    dec a
    nop
    nop
    rra
    rra
    nop
    nop
    sub c
    sbc a
    nop
    nop
    xor a
    or c
    nop
    nop
    rst $28
    pop af
    nop
    nop
    rst $38
    ld bc, $0000
    db $fd
    inc bc
    nop
    nop
    ld a, [$0006]
    nop
    inc h
    call c, RST_00
    adc h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0e2_6b0e:
    nop
    nop
    db $fc
    db $fc

jr_0e2_6b12:
    nop
    nop
    jr jr_0e2_6b0e

jr_0e2_6b16:
    nop
    nop
    jr jr_0e2_6b12

    nop
    nop
    jr c, jr_0e2_6b16

jr_0e2_6b1e:
    nop
    nop
    ret c

    add sp, $00
    nop
    jr c, jr_0e2_6b1e

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
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
    nop
    rst $38
    add b
    add b
    add a
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    add e
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ld b, b
    ret nz

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
    add sp, -$08
    nop
    nop
    ret nc

    ret nc

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
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
    add hl, bc
    ld c, $00
    nop
    inc de
    inc e
    nop
    nop
    ld a, [hl+]
    dec [hl]
    nop
    nop
    cpl
    jr nc, jr_0e2_6d49

jr_0e2_6d49:
    nop
    ld l, $31
    nop
    nop
    ld e, h
    ld h, e
    nop
    nop
    ld e, b
    ld h, a
    nop
    nop
    rst $30
    rst $38
    ld bc, $c801
    cp a
    ld bc, $f801
    ld e, a
    ld bc, $f801
    ld a, a
    nop
    nop
    ld hl, sp-$61
    nop
    nop
    ld l, b
    ld l, a
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
    db $fc
    rst $38
    ld a, a
    ld a, a
    ld b, $ff
    ld a, a
    ld a, a
    rlca
    rst $38
    ld a, a
    ld a, a
    dec b
    rst $38
    ld a, a
    ld a, a
    inc b
    rst $38
    ld a, b
    ld a, b
    add h
    rst $38
    ld [hl], b
    ld [hl], b
    ld a, h
    ld a, a
    ld [hl], b
    ld [hl], b
    ld [$600f], sp
    ld h, b
    inc b
    rlca
    ld h, b
    ld h, b
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
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    cp h
    call nz, $0607
    db $fc
    cp h

jr_0e2_6de0:
    ld a, $3f
    db $fc
    inc b
    ld a, d
    ld a, a
    ld a, h
    adc h
    db $fd
    rst $38
    inc a
    call nz, $ffdd
    add sp, -$08
    xor l
    rst $18
    add sp, -$08
    db $dd
    rst $38
    db $10
    ldh a, [$fc]
    rst $38
    db $10
    ldh a, [$f8]
    ccf
    jr nz, jr_0e2_6de0

    ldh [$1f], a
    cp a
    rst $38
    ld e, a
    cp a
    db $f4
    ei
    ld bc, $1aff
    push af
    ld [bc], a
    rst $38
    ei
    dec d
    ld [bc], a
    rst $38
    push de
    dec sp
    add h
    rst $38
    ld a, $fe
    ld a, a
    rst $38
    ret nz

    ret nz

    ld b, $fe
    nop
    nop
    ld b, $fe
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    db $10
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    dec bc
    inc c
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    add b
    add b
    dec d
    ld a, [de]
    add b
    add b
    rra
    jr jr_0e2_6ecd

jr_0e2_6ecd:
    nop
    rla
    jr jr_0e2_6ed1

jr_0e2_6ed1:
    nop
    rla
    rra
    nop
    nop
    inc e
    dec de
    nop
    nop
    rra
    dec d
    nop
    nop
    rra
    rla
    nop
    nop
    ld d, $19
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
    jr nz, jr_0e2_6f3b

    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
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
    add b
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fe62
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $fcfc
    ld bc, $ff01

jr_0e2_6f3b:
    rst $38
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
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    cp h
    call nz, $0607
    db $fc
    cp h
    ld a, [hl]
    ld a, a
    db $fc
    inc b

jr_0e2_6f60:
    ld a, [$7cff]
    adc h
    db $ed
    rst $38
    inc a
    call nz, $efd4
    ld hl, sp-$08
    xor $ff
    adc b
    ld hl, sp-$02
    rst $38
    ld [$fcf8], sp
    ccf
    ld [$b8f8], sp
    ld b, a
    db $10
    ldh a, [$dc]
    daa
    jr nz, jr_0e2_6f60

    db $e3
    rra
    and b
    ldh [$c0], a
    ccf
    ld [hl], b
    ldh a, [$80]
    ld a, a
    xor b
    ret c

    add c
    ld a, [hl]
    ret c

    xor b
    db $e3
    ld a, [hl]
    ret c

    xor b
    sbc [hl]
    rst $38
    xor b
    ret c

    add a
    rst $38
    ldh a, [$f0]
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add hl, bc
    rst $38
    nop
    nop
    ld [$80ff], sp
    add b
    ld [$80ff], sp
    add b
    db $10
    rst $38
    ld b, b
    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    rla
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    rst $28
    rst $38
    add b
    add b
    jp nz, Jump_000_00fe

    nop
    ld b, h
    db $fc
    nop
    nop
    sbc b
    ld hl, sp+$00
    nop
    and b
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
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    add hl, bc
    ld c, $00
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
    jr nz, jr_0e2_7097

    nop
    nop
    jr nz, jr_0e2_709b

    nop
    nop
    jr nz, jr_0e2_709f

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
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38

jr_0e2_7074:
    ld bc, $c001
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    inc b
    rlca
    ld a, a
    rst $38
    ld [$1f0f], sp
    rst $38
    db $10
    rra
    ld [bc], a
    cp $20
    ccf
    inc b
    db $fc
    jr nz, @+$41

    jr @-$06

    db $10
    rra
    jr nz, jr_0e2_7074

    inc a
    ccf
    ld b, b

jr_0e2_7097:
    ret nz

    ccf
    ccf
    add b

jr_0e2_709b:
    add b
    ld a, h
    ld a, h
    nop

jr_0e2_709f:
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
    ld a, [hl]
    ld a, [hl]
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
    rrca
    rrca
    ldh [$e0], a

jr_0e2_70c4:
    rra
    rra
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]

jr_0e2_70cc:
    ld e, $1f
    ldh a, [rNR10]

jr_0e2_70d0:
    rra
    ld a, [de]
    ldh a, [$f0]

jr_0e2_70d4:
    dec de
    inc e
    ldh a, [rNR10]

jr_0e2_70d8:
    ld sp, hl

jr_0e2_70d9:
    cp $f0
    jr nc, jr_0e2_70d9

    rst $38
    ldh a, [rNR10]
    or $ff
    jr nz, jr_0e2_70c4

    cp e
    rst $38
    ldh [$e0], a
    ld e, e
    cp a
    jr nz, jr_0e2_70cc

    cp b
    rst $38
    jr nz, jr_0e2_70d0

    ld hl, sp-$01
    jr nz, jr_0e2_70d4

    ldh a, [rIF]
    jr nz, jr_0e2_70d8

    ld l, h
    sbc a
    ld h, b
    ldh [$83], a
    ld a, a
    ret nz

    ret nz

    ldh a, [rIF]
    ld b, b
    ret nz

    ld hl, sp+$07
    ld b, b
    ret nz

    ld hl, sp+$3f
    add b
    add b

jr_0e2_710c:
    db $76
    cp a
    add b
    add b

jr_0e2_7110:
    xor $f5
    add b
    add b
    rra
    db $fd
    add b
    add b
    inc e
    db $e3
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

    db $10
    rst $38
    jr nz, jr_0e2_710c

    jr nz, @+$01

    jr nz, jr_0e2_7110

    ld b, b
    rst $38
    db $10
    ldh a, [$61]
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    sbc h
    sbc a
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [$08]
    rrca
    ld h, b
    ldh [rTAC], a
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    db $fc
    db $fc
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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld b, $05
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    dec bc
    dec c
    nop
    nop
    dec bc
    dec c
    nop
    nop
    ld c, $0b
    nop
    nop
    ld c, $0b
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
    inc b
    rlca
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
    ld a, b
    ld a, a
    nop
    nop
    sbc a
    rst $38
    ld bc, $0701
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld b, $07
    nop
    rst $38
    rra
    rra
    inc bc
    rst $38
    ccf
    ccf
    adc h
    db $fc
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, h
    ld a, h
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
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
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    cp h
    call nz, $0607
    db $fc
    cp h
    ld b, $07
    db $fc
    inc b
    ld a, $3f
    ld a, h
    adc h
    db $fd
    rst $38
    inc a
    call nz, $ff7e
    ld hl, sp-$08
    cp e
    ld a, a
    ld c, b
    ld hl, sp-$4b
    ei
    adc b
    ld hl, sp-$45
    rst $38
    adc b
    ld hl, sp-$41
    rst $38
    sub b
    ldh a, [$1f]
    ldh [rNR10], a
    ldh a, [$d7]
    add sp, -$20
    ldh [$38], a
    rst $30
    ldh [$60], a
    rrca
    ldh a, [$e0]
    ld h, b
    rlca
    ld hl, sp-$02
    ld a, $f3
    db $fc
    rst $30
    dec sp
    rrca
    rst $38
    rst $30
    dec sp
    nop
    rst $38
    ld a, $fe
    nop
    rst $38
    ret nz

    ret nz

    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    ld b, b
    ret nz

jr_0e2_72a8:
    ld [$40ff], sp
    ret nz

jr_0e2_72ac:
    ld [$40ff], sp
    ret nz

jr_0e2_72b0:
    db $10
    rst $38
    ld b, b
    ret nz

jr_0e2_72b4:
    db $10
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    db $e3
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    jr nz, jr_0e2_72a8

    and b
    cp a
    jr nz, jr_0e2_72ac

    jr nz, jr_0e2_730d

    jr nz, jr_0e2_72b0

    jr nz, jr_0e2_7311

    jr nz, jr_0e2_72b4

    jr nz, jr_0e2_7315

    ld b, b
    ret nz

    jr nz, jr_0e2_7319

    ld b, b
    ret nz

    jr nz, jr_0e2_731d

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
    ld hl, sp-$08
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
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

jr_0e2_730d:
    nop
    nop
    nop
    nop

jr_0e2_7311:
    nop
    nop
    nop
    nop

jr_0e2_7315:
    nop
    nop
    nop
    nop

jr_0e2_7319:
    nop
    nop
    nop
    nop

jr_0e2_731d:
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    rla
    add hl, de
    nop
    nop
    ld d, $1b
    nop
    nop
    cpl
    inc sp
    nop
    nop
    ld l, $37
    nop
    nop
    inc [hl]
    cpl
    nop
    nop
    inc [hl]
    cpl
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    db $e4
    rst $18
    nop
    nop
    db $fc
    xor a
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld a, b
    ld c, a
    nop
    nop
    jr c, @+$41

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
    db $fc
    rst $38
    ld a, a
    ld a, a
    inc bc
    rst $38
    ld a, a
    ld a, a
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    rst $38
    ld [hl], b
    ld [hl], b
    add b
    rst $38
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld [$600f], sp
    ld h, b
    inc b
    rlca
    ld h, b
    ld h, b
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
    rrca
    ld a, b
    adc b
    rrca
    dec c
    ld hl, sp+$78

jr_0e2_73e0:
    dec a
    ld a, $f8
    ld [$fffc], sp
    ld hl, sp+$18
    ld [c], a
    rst $38
    ld a, b
    adc b
    sbc l
    rst $38
    ldh a, [$f0]
    db $76
    rst $38
    ret nc

    ldh a, [rOCPD]
    rst $30
    db $10
    ldh a, [rPCM34]
    rst $38
    db $10
    ldh a, [$7f]
    rst $38
    jr nz, jr_0e2_73e0

    ccf
    ret nz

    jr nz, @-$1e

    xor a
    ret nc

    ld b, b
    ret nz

    ld [hl], c
    xor $ff
    ld a, a
    rra
    ldh [$f7], a
    dec sp
    rrca
    ldh a, [$f7]
    dec de
    rst $00
    ld hl, sp-$22
    ld a, $3c
    rst $38
    jr nz, @-$1e

    rlca
    rst $38
    ret nz

    ret nz

    ld b, $fe
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
    adc h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    db $fc

jr_0e2_7446:
    nop
    nop
    inc d
    db $fc
    nop
    nop
    jr z, jr_0e2_7446

    nop
    nop
    adc b
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $00
    nop
    dec bc
    dec c
    nop
    nop
    inc de
    dec e
    nop
    nop
    rla
    add hl, de
    nop
    nop
    rla
    dec de
    nop
    nop
    inc d
    dec de
    nop
    nop
    inc e
    rla
    nop
    nop
    inc e
    rla
    nop
    nop
    jr jr_0e2_74ef

    nop
    nop
    rra
    rra
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
    jr jr_0e2_7503

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
    ld b, e

jr_0e2_74ef:
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
    ld b, a
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld [hl], b

jr_0e2_7503:
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
    ret nz

    rst $38
    ld bc, $f301
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    pop hl
    rst $38
    rrca
    rrca
    ld [c], a
    cp $07
    rlca
    ld a, [c]
    cp $01
    ld bc, $fcfc
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
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
    ldh a, [$f0]
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ld a, b
    adc b
    rrca
    dec c
    ld hl, sp+$78

jr_0e2_755c:
    dec c
    ld c, $f8
    ld [$7f7c], sp
    ld hl, sp+$18
    jp Jump_0e2_78ff


    adc b
    cp l
    rst $38
    ldh a, [$f0]
    ld a, [hl]
    rst $38
    ret nc

    ldh a, [rPCM12]
    rst $38
    db $10
    ldh a, [rOCPD]
    rst $30
    db $10
    ldh a, [rPCM34]
    rst $38
    jr nz, jr_0e2_755c

    rst $38
    rst $38
    ld h, b
    ldh [$2f], a
    pop de
    ret nz

    ret nz

    ld de, $c0ee
    ret nz

    rra
    ldh [$fe], a
    cp $0f
    ldh a, [$ee]
    db $76
    rst $20
    ld hl, sp-$14
    ld [hl], h
    rra
    cp $fc
    ld a, h
    ld [bc], a
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    add b
    add b
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
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld b, $fe

jr_0e2_75c2:
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jr c, jr_0e2_75c2

    nop
    nop
    ldh a, [$f0]
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
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    dec c
    ld c, $00
    nop
    inc e
    rra
    nop
    nop
    jr jr_0e2_766f

    nop
    nop
    rra
    rra
    nop
    nop
    jr nc, jr_0e2_7697

    nop
    nop
    jr nc, jr_0e2_769b

    nop
    nop
    jr nz, jr_0e2_769f

    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld b, [hl]
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b

jr_0e2_766f:
    rst $38
    ld bc, $e001
    rst $38

jr_0e2_7674:
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    ccf
    rst $38
    inc b
    rlca
    rrca
    rst $38
    ld [$010f], sp
    rst $38
    db $10
    rra
    ld [bc], a
    cp $20
    ccf
    inc b
    db $fc
    jr nz, @+$41

    jr @-$06

    db $10
    rra
    jr nz, jr_0e2_7674

    inc a
    ccf
    ld b, b

jr_0e2_7697:
    ret nz

    ccf
    ccf
    add b

jr_0e2_769b:
    add b
    ld a, h
    ld a, h
    nop

jr_0e2_769f:
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, $3e
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
    rrca
    rrca
    ldh [$e0], a

jr_0e2_76c4:
    rra
    rra
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]

jr_0e2_76cc:
    ld e, $1f
    ldh a, [rNR10]

jr_0e2_76d0:
    rra
    ld a, [de]
    ldh a, [$f0]

jr_0e2_76d4:
    dec de
    inc e
    ldh a, [rNR10]

jr_0e2_76d8:
    ld sp, hl

jr_0e2_76d9:
    cp $f0
    jr nc, jr_0e2_76d9

    rst $38
    ldh a, [rNR10]
    or $ff
    jr nz, jr_0e2_76c4

    cp e
    rst $38
    ldh [$e0], a
    ld e, e
    cp a
    jr nz, jr_0e2_76cc

    cp b
    rst $38
    jr nz, jr_0e2_76d0

    ld hl, sp-$01
    jr nz, jr_0e2_76d4

    ldh a, [rIF]
    jr nz, jr_0e2_76d8

    ld l, h
    sbc a
    ld h, b
    ldh [$83], a
    ld a, a
    ret nz

    ret nz

    ldh a, [rIF]
    ld b, b
    ret nz

    ld hl, sp+$07
    add b
    add b
    ld hl, sp+$3f
    add b
    add b
    ld [hl], a
    cp a
    nop
    nop
    rst $28
    push af
    nop
    nop

jr_0e2_7714:
    rra
    db $fd
    nop
    nop
    ld e, $e2
    nop
    nop
    ld [bc], a
    cp $00
    nop

jr_0e2_7720:
    ld [bc], a
    cp $00
    nop

jr_0e2_7724:
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    jr nz, jr_0e2_7714

    ld a, a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    and b
    cp a
    jr nz, jr_0e2_7720

    jr nz, jr_0e2_7781

    jr nz, jr_0e2_7724

    jr nz, jr_0e2_7785

    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [$08]
    rrca
    ld h, b
    ldh [rTAC], a
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    db $fc
    db $fc
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

jr_0e2_7781:
    nop
    nop
    nop
    nop

jr_0e2_7785:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    rra
    jr jr_0e2_77c1

jr_0e2_77c1:
    nop
    rra
    stop
    nop
    ccf
    inc [hl]
    nop
    nop
    ccf
    jr nc, jr_0e2_77cd

jr_0e2_77cd:
    nop
    cpl
    jr nc, jr_0e2_77d1

jr_0e2_77d1:
    nop
    cpl
    ld a, $00
    nop
    add hl, sp
    scf
    nop
    nop
    ccf
    dec hl
    nop
    nop
    ld a, $2f
    nop
    nop
    inc l
    inc sp
    nop
    nop
    inc h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e2_7833

    nop
    nop
    jr nz, jr_0e2_7837

    nop
    nop
    ld hl, sp-$01
    ld bc, $1f01
    rst $38
    ld [bc], a
    inc bc
    rlca
    rst $38
    inc b
    rlca
    ld bc, $0cff
    rrca
    ld bc, $3eff
    ccf
    ld b, $fe
    ld a, a
    ld a, a
    jr @-$06

    rst $38
    rst $38
    ld h, b
    ldh [$f8], a
    ld hl, sp-$80
    add b
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
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

jr_0e2_7833:
    nop
    nop
    nop
    nop

jr_0e2_7837:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ld a, b
    adc b
    rrca
    dec c
    ld hl, sp+$78

jr_0e2_785c:
    dec c
    ld c, $f8
    ld [$fffc], sp
    ld hl, sp+$18
    db $f4
    rst $38
    ld a, b
    adc b
    db $db
    rst $38
    jr nc, jr_0e2_785c

    xor l
    rst $18
    ldh a, [$f0]
    db $dd
    rst $38
    db $10
    ldh a, [$fc]
    ld a, a
    db $10
    ldh a, [$f8]
    rra
    db $10
    ldh a, [rSVBK]
    adc a
    jr nz, @-$1e

    cp b
    ld c, a
    ld b, b
    ret nz

    rst $00
    ccf
    ld b, b
    ret nz

    add b
    ld a, a
    ldh [$e0], a
    ld bc, $50ff
    or b
    db $e3
    db $fd
    or b
    ld d, b
    rra
    db $fd
    or b
    ld d, b
    dec b
    rst $38
    ld d, b
    or b
    inc bc
    rst $38
    ldh [$e0], a
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
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
    ld c, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ld b, b
    ld a, a
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, a
    ld a, a
    ldh a, [$f0]
    ld a, a
    ld a, a
    ldh [$e0], a
    ld a, a
    ld a, a
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

Jump_0e2_78ff:
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

Call_0e2_7fa3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
