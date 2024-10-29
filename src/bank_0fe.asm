SECTION "ROM Bank $0fe", ROMX[$4000], BANK[$fe]

jr_0fe_4000:
    rrca
    rrca
    ret nz

    ret nz

    db $10
    rra
    jr c, jr_0fe_4000

    jr nz, jr_0fe_4049

    ld b, $fe
    ld b, b
    ld a, a
    di
    db $fd
    ld b, b
    ld a, a
    ld a, c
    adc $80
    rst $38
    add hl, sp
    cp $86
    rst $38
    nop
    rst $38
    adc [hl]
    ei
    jr nz, @+$01

    adc [hl]
    ei
    dec e
    rst $38
    ld c, a
    ld a, c
    ld d, $f3
    ld c, a
    ld a, a
    adc a
    ld sp, hl
    daa
    inc a
    call nz, $1378
    ld e, $eb
    ld [hl], $09
    rrca
    cp $fe
    add hl, bc
    rrca
    ldh a, [rNR10]
    inc b
    rlca
    ld hl, sp-$08
    ld [bc], a
    inc bc
    ld a, h
    call nz, Call_000_0101
    ld a, $fe
    nop

jr_0fe_4049:
    nop
    sbc a
    pop af
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    daa
    inc a
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
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld h, c
    ld h, c
    ld bc, $c001
    ret nz

    inc bc
    ld [bc], a
    add b
    add b
    rlca
    dec b
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    ld e, $12
    nop
    nop
    ld e, $12
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld [$800f], sp
    add b
    ld [$ff0f], sp
    rst $38
    inc b
    rlca
    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    ld a, [hl+]
    ccf
    xor d
    rst $38
    ld d, l
    ld a, a
    ld d, l
    rst $38
    ld l, h
    ld a, a
    ld [bc], a
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    sub l
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    add c
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld a, [hl+]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    nop
    nop

jr_0fe_40c2:
    nop
    nop
    nop
    nop

jr_0fe_40c6:
    nop
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
    ret nz

    ld b, b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0fe_40c2

    nop
    nop
    jr nz, jr_0fe_40c6

    nop
    nop
    ldh [$e0], a
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

jr_0fe_4118:
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $e4
    nop
    nop
    ld e, $fe
    nop
    nop
    adc a
    ld sp, hl
    nop
    nop
    ld b, a
    ld a, a
    add b
    add b
    jr nz, jr_0fe_4171

    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0fe_4118

    ld [$100f], sp
    ldh a, [rTMA]
    rlca
    adc b
    ld hl, sp+$03
    inc bc
    ld b, h
    db $fc
    ld bc, $a201
    cp $fe
    cp $d2
    cp $ab
    rst $38
    ld l, c
    ld a, a
    push af
    rst $38
    pop af
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    ld d, l
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    dec b
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    and c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $55

jr_0fe_4171:
    rst $38
    ld b, d
    cp $aa
    rst $38
    inc b
    db $fc
    nop
    rst $38
    jr c, @-$06

    rst $38
    rst $38
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    ld [$1c0f], sp
    db $fc
    db $10
    rra
    inc bc
    rst $38
    jr nz, jr_0fe_41cd

    ld a, c
    cp $20
    ccf
    inc a
    rst $20
    ld b, b
    ld a, a
    inc e
    rst $38
    ld b, e
    ld a, a
    nop
    rst $38
    ld b, a
    ld a, l
    db $10
    rst $38
    ld b, a
    ld a, l
    ld c, $ff
    daa
    inc a
    adc e
    ld sp, hl
    daa
    ccf
    rst $00
    db $fc
    inc de
    ld e, $e2
    inc a
    add hl, bc
    rrca
    push af
    dec de
    inc b
    rlca
    rst $38
    rst $38
    inc b
    rlca
    ld hl, sp-$78
    ld [bc], a
    inc bc
    ld a, h
    db $fc
    ld bc, $3e01
    ld [c], a
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    ld c, a
    ld a, b
    nop

jr_0fe_41cd:
    nop
    daa
    ccf
    nop
    nop
    inc de
    ld e, $00
    nop
    add hl, bc
    rrca
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
    jr jr_0fe_4200

jr_0fe_41e8:
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh [$a0], a
    ld bc, $c001
    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    rlca
    inc b
    add b
    add b
    rlca
    inc b
    add b
    add b

jr_0fe_4200:
    dec b
    ld b, $40
    ret nz

    ld [bc], a
    inc bc
    jr nz, jr_0fe_41e8

    ld [bc], a
    inc bc
    ccf
    rst $38
    ld bc, $0101
    rst $38
    rra
    rra
    rst $38
    rst $38
    dec [hl]
    ccf
    ld d, l
    rst $38
    ld l, d
    ld a, a
    xor d
    rst $38
    ld d, h
    ld a, a
    dec b
    rst $38
    xor [hl]
    rst $38
    nop
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    sub l
    rst $38
    ld d, l
    rst $38
    add d
    rst $38
    xor d
    rst $38
    add b
    rst $38
    ld d, l
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    ccf
    ccf

jr_0fe_423e:
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
    ld h, b
    and b
    nop
    nop
    jr nz, jr_0fe_423e

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rNR41], a
    nop
    nop

jr_0fe_4294:
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ld e, $f2
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, a
    ld a, h
    add b
    add b
    inc hl
    ccf
    ret nz

    ret nz

    db $10
    rra
    jr nz, jr_0fe_4294

    ld [$100f], sp
    ldh a, [rDIV]
    rlca
    ld [$05f8], sp
    rlca
    ld [$02f8], sp
    inc bc
    add h
    db $fc
    ld bc, $4201
    cp $fe
    cp $a2
    cp $55
    rst $38
    ld d, d
    ld a, [hl]
    ld a, [$e9ff]
    rst $38
    ld d, l
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    ld d, h
    rst $38
    pop de
    rst $38
    ld bc, $a9ff
    rst $38
    rst $38
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and c
    rst $38

jr_0fe_42ec:
    ld d, l
    rst $38
    ld b, c
    rst $38
    xor d
    rst $38
    add d
    cp $54
    rst $38
    inc c
    db $fc
    nop
    rst $38
    jr nc, jr_0fe_42ec

    rst $38
    rst $38
    ret nz

    ret nz

jr_0fe_4300:
    rrca
    rrca
    ret nz

    ret nz

    db $10
    rra
    jr c, jr_0fe_4300

    jr nz, jr_0fe_4349

    ld b, $fe
    ld b, b
    ld a, a
    di
    db $fd
    ld b, b
    ld a, a
    ld a, c
    adc $80
    rst $38
    add hl, sp
    cp $86
    rst $38
    nop
    rst $38
    adc [hl]
    ei
    jr nz, @+$01

    adc [hl]
    ei
    dec e
    rst $38
    ld c, a
    ld a, c
    ld d, $f3
    ld c, a
    ld a, a
    adc a
    ld sp, hl
    daa
    inc a
    call nz, $1378
    ld e, $eb
    ld [hl], $09
    rrca
    cp $fe
    add hl, bc
    rrca
    ldh a, [rNR10]
    inc b
    rlca
    ld hl, sp-$08
    ld [bc], a
    inc bc
    ld a, h
    call nz, Call_000_0101
    ld a, $fe
    nop

jr_0fe_4349:
    nop
    sbc a
    pop af
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    daa
    inc a
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
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc e
    inc e
    nop
    nop
    jr c, jr_0fe_4398

    nop
    nop
    ld [hl], b
    ld d, b
    nop
    nop
    ldh a, [$90]
    ld bc, $e001
    jr nz, @+$03

    ld bc, $20e0
    ld bc, $5001
    or b
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    adc a
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    rra
    rra
    rst $38
    rst $38
    ld a, [hl+]
    ccf
    xor d
    rst $38

jr_0fe_4398:
    ld d, l
    ld a, a
    ld d, l
    rst $38
    ld l, h
    ld a, a
    ld [bc], a
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    sub l
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    add c
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld a, [hl+]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    nop
    nop

jr_0fe_43c2:
    nop
    nop
    nop
    nop

jr_0fe_43c6:
    nop
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
    ret nz

    ld b, b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0fe_43c2

    nop
    nop
    jr nz, jr_0fe_43c6

    nop
    nop
    ldh [$e0], a
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

jr_0fe_4418:
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $e4
    nop
    nop
    ld e, $fe
    nop
    nop
    adc a
    ld sp, hl
    nop
    nop
    ld b, a
    ld a, a
    add b
    add b
    jr nz, jr_0fe_4471

    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0fe_4418

    ld [$100f], sp
    ldh a, [rDIV]
    rlca
    adc b
    ld hl, sp+$03
    inc bc
    ld b, h
    db $fc
    ld bc, $a201
    cp $fe
    cp $d2
    cp $ab
    rst $38
    ld l, c
    ld a, a
    push af
    rst $38
    pop af
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    ld d, l
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    dec b
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    and c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $55

jr_0fe_4471:
    rst $38
    ld b, d
    cp $aa
    rst $38
    inc b
    db $fc
    nop
    rst $38
    jr c, @-$06

    rst $38
    rst $38
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    ld [$1c0f], sp
    db $fc
    db $10
    rra
    inc bc
    rst $38
    jr nz, jr_0fe_44cd

    ld a, c
    cp $20
    ccf
    inc a
    rst $20
    ld b, b
    ld a, a
    inc e
    rst $38
    ld b, e
    ld a, a
    nop
    rst $38
    ld b, a
    ld a, l
    db $10
    rst $38
    ld b, a
    ld a, l
    ld c, $ff
    daa
    inc a
    adc e
    ld sp, hl
    daa
    ccf
    rst $00
    db $fc
    inc de
    ld e, $e2
    inc a
    add hl, bc
    rrca
    push af
    dec de
    inc b
    rlca
    rst $38
    rst $38
    inc b
    rlca
    ld hl, sp-$78
    ld [bc], a
    inc bc
    ld a, h
    db $fc
    ld bc, $3e01
    ld [c], a
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    ld c, a
    ld a, b
    nop

jr_0fe_44cd:
    nop
    daa
    ccf
    nop
    nop
    inc de
    ld e, $00
    nop
    add hl, bc
    rrca
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
    jr jr_0fe_4500

jr_0fe_44e8:
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh [$a0], a
    ld bc, $c001
    ld b, b
    inc bc
    ld [bc], a
    ret nz

    ld b, b
    rlca
    inc b
    add b
    add b
    rlca
    inc b
    add b
    add b

jr_0fe_4500:
    dec b
    ld b, $40
    ret nz

    ld [bc], a
    inc bc
    jr nz, jr_0fe_44e8

    ld [bc], a
    inc bc
    ccf
    rst $38
    ld bc, $0101
    rst $38
    rra
    rra
    rst $38
    rst $38
    dec [hl]
    ccf
    ld d, l
    rst $38
    ld l, d
    ld a, a
    xor d
    rst $38
    ld d, h
    ld a, a
    dec b
    rst $38
    xor [hl]
    rst $38
    nop
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    sub l
    rst $38
    ld d, l
    rst $38
    add d
    rst $38
    xor d
    rst $38
    add b
    rst $38
    ld d, l
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    ccf
    ccf

jr_0fe_453e:
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
    ld h, b
    and b
    nop
    nop
    jr nz, jr_0fe_453e

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rNR41], a
    nop
    nop

jr_0fe_4594:
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ld e, $f2
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, a
    ld a, h
    add b
    add b
    inc hl
    ccf
    ret nz

    ret nz

    db $10
    rra
    jr nz, jr_0fe_4594

    ld [$100f], sp
    ldh a, [rDIV]
    rlca
    ld [$06f8], sp
    rlca
    adc b
    ld hl, sp+$03
    inc bc
    ld b, h
    db $fc
    ld bc, $a201
    cp $fe
    cp $a2
    cp $55
    rst $38
    ld d, d
    ld a, [hl]
    ld a, [$e9ff]
    rst $38
    ld d, l
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    ld d, h
    rst $38
    pop de
    rst $38
    ld bc, $a9ff
    rst $38
    rst $38
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and c
    rst $38

jr_0fe_45ec:
    ld d, l
    rst $38
    ld b, c
    rst $38
    xor d
    rst $38
    add d
    cp $54
    rst $38
    inc c
    db $fc
    nop
    rst $38
    jr nc, jr_0fe_45ec

    rst $38
    rst $38
    ret nz

Call_0fe_45ff:
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
    rlca
    rlca
    nop
    nop
    jr c, jr_0fe_4663

    nop
    nop
    ret nz

    rst $38
    inc bc
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    ld [$000f], sp
    rst $38
    db $10
    rra
    ld a, a
    rst $38
    db $10
    rra
    rst $38
    add b
    ld hl, $ff3f
    cp $23
    ld a, $f9
    add hl, bc
    ld hl, $f03f
    ldh a, [rNR13]
    ld e, $f0
    db $10
    ld de, $f01f
    ldh a, [$08]
    rrca
    ld hl, sp-$78
    inc b
    rlca
    ld a, h
    db $fc
    ld [bc], a
    inc bc
    ld a, $e2
    ld bc, $1f01
    rst $38
    nop
    nop
    adc a

jr_0fe_4663:
    ld hl, sp+$00
    nop
    rst $00
    rst $38
    ld bc, $a101
    cp a
    inc bc
    ld [bc], a
    sbc b
    sbc a
    rlca
    dec b
    inc b
    rlca
    rrca
    add hl, bc
    inc bc
    inc bc
    ld e, $12
    nop
    nop
    ld e, $12
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld [$800f], sp
    add b
    ld [$ff0f], sp
    rst $38
    inc b
    rlca
    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    ld a, [hl+]
    ccf
    xor d
    rst $38
    ld d, l
    ld a, a
    ld d, l
    rst $38
    ld l, h
    ld a, a
    ld [bc], a
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    sub l
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    add c
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld a, [hl+]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    ccf
    ccf
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
    cp $fe
    nop
    nop
    rlca
    ld sp, hl
    ret nz

    ret nz

    ld bc, $f0fe
    jr nc, jr_0fe_46f0

    rst $38
    cp b
    ret z

    inc bc
    cp $dc
    ld h, h

jr_0fe_46f0:
    ld bc, $ccff
    db $f4
    ldh [rIE], a
    ld b, $fa
    pop af
    rra
    ld [bc], a
    cp $f0
    rra
    jp hl


    rst $38
    ld hl, sp-$31
    or c
    sbc a
    inc a
    ccf
    ld a, a
    rst $08
    ld [bc], a
    inc bc
    ld h, $c0
    ld bc, $5801
    or b
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

jr_0fe_471c:
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
    ld hl, sp+$18
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ccf
    db $e3
    nop
    nop
    rra
    rst $38
    ret nz

    ret nz

jr_0fe_4738:
    add b
    rst $38
    jr nz, jr_0fe_471c

    ld h, b
    ld a, a
    jr jr_0fe_4738

    add hl, de
    rra
    inc b
    db $fc
    ld b, $07
    and d
    cp $ff
    rst $38
    ld d, d
    cp $ab
    rst $38
    xor c
    rst $38
    push af
    rst $38
    pop de
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    ld d, l
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    dec b
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    and c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $55
    rst $38
    ld b, d
    cp $aa
    rst $38
    inc b
    db $fc
    nop
    rst $38
    jr c, @-$06

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
    rlca
    rlca
    nop
    nop
    jr c, jr_0fe_4813

    nop
    nop
    ret nz

    rst $38
    inc bc
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    ld [$000f], sp
    rst $38
    db $10
    rra
    ld a, a
    rst $38
    db $10
    rra
    rst $38
    add b
    ld hl, $ff3f
    cp $20
    ccf
    dec d
    rst $38
    jr z, jr_0fe_4835

    ld a, [bc]
    rst $38
    dec d
    rra
    nop
    rst $38
    ld a, [de]
    rra
    and b
    rst $38
    rrca
    rrca
    ld d, l
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc b
    rlca
    nop
    rst $38
    rra
    rra
    rst $38

jr_0fe_4813:
    rst $38
    ld a, [hl+]
    ccf
    xor d
    rst $38
    ld d, l
    ld a, a
    ld d, l
    rst $38
    ld l, h
    ld a, a
    ld [bc], a
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    sub l
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    add c
    rst $38
    ld d, l
    rst $38
    add b

jr_0fe_4835:
    rst $38
    ld a, [hl+]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    ccf
    ccf
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

jr_0fe_4864:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld sp, hl
    ret nz

    ret nz

    ld bc, $f0fe
    jr nc, jr_0fe_489d

    rst $38
    jr c, jr_0fe_4864

    ld [bc], a

jr_0fe_489d:
    rst $38
    inc e
    db $e4
    ld bc, $ccff
    db $f4
    ldh [rIE], a
    ld b, $fa
    pop af
    rra
    ld [bc], a
    cp $f0
    rra
    jp hl


    rst $38
    ld hl, sp-$31
    or c
    sbc a
    cp h
    rst $38
    ld a, a
    rst $08
    ld d, [hl]
    rst $38
    ld h, $c0
    dec bc
    rst $38
    ld e, b
    or b
    ld d, l
    rst $38
    db $f4
    db $fc
    xor d
    rst $38
    and d
    cp $ff
    rst $38
    ld d, d
    cp $bf
    rst $38
    xor c
    rst $38
    push af
    rst $38
    pop de
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    ld d, l
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    jp hl


    rst $38
    dec b
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    and c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $55
    rst $38
    ld b, d
    cp $aa
    rst $38
    inc b
    db $fc
    nop
    rst $38
    jr c, @-$06

    rst $38
    rst $38
    ret nz

    ret nz

    ld bc, $fe01
    cp $02
    inc bc
    add hl, sp
    rst $00
    inc b
    rlca
    ld e, $e1
    ld [$ff0f], sp
    ldh a, [$08]
    rrca
    ld a, a
    ret


    db $10
    rra
    ccf
    ld sp, hl
    ld de, $001f
    rst $38
    inc de
    rra
    add b
    rst $38
    ld [de], a
    rra
    ld d, d
    rst $38
    ld de, $611f
    cp a
    inc de
    rra
    ld a, a
    sbc [hl]
    rrca
    inc c
    and l
    call c, $0e0b
    ld a, [$0558]
    rlca
    ld hl, sp-$08
    dec b
    rlca
    db $fc
    inc b
    ld [bc], a
    inc bc
    cp $fe
    ld bc, $7f01
    pop bc
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld e, a
    ld [hl], b
    nop
    nop
    cpl
    ccf
    nop
    nop
    rla
    inc e
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
    rlca
    rlca
    nop
    nop
    ld c, $0a
    nop
    nop
    inc e
    inc d
    nop
    nop
    inc a
    inc h
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
    ld d, h
    ld l, h
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc hl
    ccf
    nop
    nop
    db $10
    rra
    rlca
    rlca
    push af
    rst $38
    ld a, [bc]
    rrca
    xor a
    rst $38
    dec d
    rra
    ld d, l
    rst $38
    inc de
    rra
    ld a, [bc]
    rst $38
    dec h
    ccf
    pop af
    rst $38
    ld [hl+], a
    ccf
    xor a
    rst $38
    ld hl, $553f
    rst $38
    jr nz, jr_0fe_49ed

    xor d
    rst $38
    db $10
    rra
    dec b
    rst $38
    db $10
    rra
    nop
    rst $38
    inc c
    rrca
    nop
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
    add b
    add b
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

jr_0fe_49ed:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rNR41], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0fe_4a18:
    ld hl, sp+$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, [hl]
    jp nz, RST_00

    ccf
    rst $38
    nop
    nop
    sbc a
    ldh a, [$80]
    add b
    ld c, a
    ld a, a
    add b
    add b
    jr nz, jr_0fe_4a71

    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0fe_4a18

    ld [$100f], sp
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    ld [$06f8], sp
    rlca
    ld [$83f8], sp
    add e
    ld [$faf8], sp
    ei
    adc b
    ld hl, sp+$57
    rst $38
    inc b
    db $fc
    set 7, a
    add h
    db $fc
    ld a, a
    rst $38
    ld b, h
    db $fc
    xor e
    rst $38
    add h
    db $fc
    ld d, a
    rst $38
    ld b, h
    db $fc
    cp $ff
    add h
    db $fc
    ld d, l
    rst $38
    inc b
    db $fc
    xor d
    rst $38
    ld [$54f8], sp

jr_0fe_4a71:
    rst $38
    ld [$a8f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $1c01
    db $e3
    ld [bc], a
    inc bc
    rrca
    ldh a, [rDIV]
    rlca
    ld a, a
    ld hl, sp+$04
    rlca
    ccf
    db $e4
    ld [$1f0f], sp
    db $fc
    ld [$800f], sp
    rst $38
    add hl, bc
    rrca
    ret nz

    rst $38
    add hl, bc
    rrca
    add hl, hl
    rst $38
    ld [$b00f], sp
    rst $18
    add hl, bc
    rrca
    cp a
    rst $08
    rlca
    ld b, $d2
    ld l, [hl]
    dec b
    rlca
    db $fd
    inc l
    ld [bc], a
    inc bc
    db $fc
    db $fc
    ld [bc], a
    inc bc
    cp $82
    ld bc, $7f01
    rst $38
    nop
    nop
    cp a
    ldh [rP1], a
    nop
    ld e, a
    ld a, a
    nop
    nop
    cpl
    jr c, jr_0fe_4acd

jr_0fe_4acd:
    nop
    rla
    rra
    nop
    nop
    dec bc
    ld c, $00
    nop
    add hl, bc
    rrca
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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    ld e, $12
    nop
    nop
    ld e, $12
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    rlca
    rlca
    ld a, [$0dfb]
    rrca
    ld e, a
    rst $38
    ld [de], a
    rra
    xor d
    rst $38
    dec d
    rra
    dec d
    rst $38
    inc hl
    ccf
    ld a, [c]
    rst $38
    dec h
    ccf
    ld e, a
    rst $38
    ld [hl+], a
    ccf
    xor d
    rst $38
    ld hl, $553f
    rst $38
    db $10
    rra
    ld a, [hl+]
    rst $38
    db $10
    rra
    ld bc, $0cff
    rrca

jr_0fe_4b3a:
    nop
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
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
    ret nz

    ld b, b
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0fe_4b3a

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
    nop
    nop
    nop
    nop
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
    ret nz

    ld b, b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0fe_4b98:
    db $fc
    add h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ccf
    pop hl
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    rst $08
    ld hl, sp-$40
    ld b, b
    and a
    cp a
    ret nz

    ret nz

    jr nz, jr_0fe_4bf1

    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0fe_4b98

    ld [$100f], sp
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rTMA]
    rlca
    ld [$87f8], sp
    add a
    ld [$f2f8], sp
    di
    adc b
    ld hl, sp+$5f
    rst $38
    ld c, b
    ld hl, sp-$52
    rst $38
    add h
    db $fc
    rst $10
    rst $38
    ld b, h
    db $fc
    cp $ff
    add h
    db $fc
    ld d, a
    rst $38
    ld b, h
    db $fc
    xor [hl]
    rst $38
    add h
    db $fc
    db $fd
    rst $38
    inc b
    db $fc
    xor d
    rst $38
    add h
    db $fc
    ld d, l
    rst $38
    ld [$aaf8], sp

jr_0fe_4bf1:
    rst $38
    ld [$50f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    nop
    nop
    ld bc, $fe01
    cp $02
    inc bc
    add hl, sp
    rst $00
    inc b
    rlca
    ld e, $e1
    ld [$ff0f], sp
    ldh a, [$08]
    rrca
    ld a, a
    ret


    db $10
    rra
    ccf
    ld sp, hl
    ld de, $001f
    rst $38
    inc de
    rra
    add b
    rst $38
    ld [de], a
    rra
    ld d, d
    rst $38
    ld de, $611f
    cp a
    inc de
    rra
    ld a, a
    sbc [hl]
    rrca
    inc c
    and l
    call c, $0e0b
    ld a, [$0558]
    rlca
    ld hl, sp-$08
    dec b
    rlca
    db $fc
    inc b
    ld [bc], a
    inc bc
    cp $fe
    ld bc, $7f01
    pop bc
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld e, a
    ld [hl], b
    nop
    nop
    cpl
    ccf
    nop
    nop
    rla
    inc e
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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
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
    add hl, bc
    nop
    nop
    ld a, [bc]
    dec c
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
    rlca
    rlca
    ld sp, hl
    ld sp, hl
    ld a, [bc]
    rrca
    xor a
    rst $38
    dec d
    rra
    ld d, l
    rst $38
    inc de
    rra
    ld a, [bc]
    rst $38
    dec h
    ccf
    pop af
    rst $38
    ld [hl+], a
    ccf
    xor a
    rst $38
    ld hl, $553f
    rst $38
    jr nz, jr_0fe_4ced

    xor d
    rst $38
    db $10
    rra
    dec b
    rst $38
    db $10
    rra
    nop
    rst $38
    inc c
    rrca
    nop
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
    add b
    add b
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

jr_0fe_4ced:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rNR41], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0fe_4d18:
    ld hl, sp+$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, [hl]
    jp nz, RST_00

    ld a, a
    rst $38
    nop
    nop
    sbc a
    ldh a, [$80]
    add b
    rst $08
    ld a, a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    jr nz, jr_0fe_4d18

    ld [$100f], sp
    ldh a, [$08]
    rrca
    db $10
    ldh a, [$84]
    add a
    ld [$46f8], sp
    rst $00
    ld [$7bf8], sp
    ei
    ld [$bef8], sp
    rst $38
    adc b
    ld hl, sp+$57
    rst $38
    inc b
    db $fc
    set 7, a
    add h
    db $fc
    ld a, a
    rst $38
    ld b, h
    db $fc
    xor e
    rst $38
    add h
    db $fc
    ld d, a
    rst $38
    ld b, h
    db $fc
    cp $ff
    add h
    db $fc
    ld d, l
    rst $38
    inc b
    db $fc
    xor d
    rst $38
    ld [$54f8], sp
    rst $38
    ld [$a8f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $1c01
    db $e3
    ld [bc], a
    inc bc
    rrca
    ldh a, [rDIV]
    rlca
    ld a, a
    ld hl, sp+$04
    rlca
    ccf
    db $e4
    ld [$1f0f], sp
    db $fc
    ld [$800f], sp
    rst $38
    add hl, bc
    rrca
    ret nz

    rst $38
    add hl, bc
    rrca
    add hl, hl
    rst $38
    ld [$b00f], sp
    rst $18
    add hl, bc
    rrca
    cp a
    rst $08
    rlca
    ld b, $d2
    ld l, [hl]
    dec b
    rlca
    db $fd
    inc l
    ld [bc], a
    inc bc
    db $fc
    db $fc
    ld [bc], a
    inc bc
    cp $82
    ld bc, $7f01
    rst $38
    nop
    nop
    cp a
    ldh [rP1], a
    nop
    ld e, a
    ld a, a
    nop
    nop
    cpl
    jr c, jr_0fe_4dcd

jr_0fe_4dcd:
    nop
    rla
    rra
    nop
    nop
    dec bc
    ld c, $00
    nop
    add hl, bc
    rrca
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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    ld e, $12
    nop
    nop
    ld e, $12
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    rlca
    rlca
    ld a, [$0dfb]
    rrca
    ld e, a
    rst $38
    ld [de], a
    rra
    xor d
    rst $38
    dec d
    rra
    dec d
    rst $38
    inc hl
    ccf
    ld a, [c]
    rst $38
    dec h
    ccf
    ld e, a
    rst $38
    ld [hl+], a
    ccf
    xor d
    rst $38
    ld hl, $553f
    rst $38
    db $10
    rra
    ld a, [hl+]
    rst $38
    db $10
    rra
    ld bc, $0cff
    rrca

jr_0fe_4e3a:
    nop
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
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
    ret nz

    ld b, b
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0fe_4e3a

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
    nop
    nop
    nop
    nop
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
    ret nz

    ld b, b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0fe_4e98:
    db $fc
    add h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ccf
    pop hl
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    rst $08
    ld hl, sp-$40
    ld b, b
    and a
    cp a
    ret nz

    ret nz

    jr nz, jr_0fe_4ef1

    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0fe_4e98

    ld [$100f], sp
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rTMA]
    rlca
    ld [$87f8], sp
    add a
    ld [$f2f8], sp
    di
    adc b
    ld hl, sp+$5f
    rst $38
    ld c, b
    ld hl, sp-$52
    rst $38
    add h
    db $fc
    rst $10
    rst $38
    ld b, h
    db $fc
    cp $ff
    add h
    db $fc
    ld d, a
    rst $38
    ld b, h
    db $fc
    xor [hl]
    rst $38
    add h
    db $fc
    db $fd
    rst $38
    inc b
    db $fc
    xor d
    rst $38
    add h
    db $fc
    ld d, l
    rst $38
    ld [$aaf8], sp

jr_0fe_4ef1:
    rst $38
    ld [$50f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
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
    rlca
    rlca
    nop
    nop
    jr jr_0fe_4f43

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    ld e, $fb
    ld [bc], a
    inc bc
    ccf

jr_0fe_4f43:
    pop hl
    ld bc, $3f01
    rst $38
    ld bc, $3f01
    ldh [rSB], a
    ld bc, $f11f
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    sbc a
    ldh a, [rP1]
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld b, a
    ld a, h
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld de, $001f
    nop
    jr jr_0fe_4f8b

    nop
    nop
    inc a
    cpl
    nop
    nop
    ld [hl], d
    ld d, e
    nop
    nop
    pop af
    sub c
    ld bc, $e001
    jr nz, @+$03

    ld bc, $20e0
    ld bc, $5001
    or b
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    adc a

jr_0fe_4f8b:
    rst $38
    nop
    nop
    ld b, l
    ld a, a
    rlca
    rlca
    ld a, [c]
    rst $38
    ld a, [bc]
    rrca
    xor a
    rst $38
    dec d
    rra
    ld d, l
    rst $38
    inc de
    rra
    ld a, [bc]
    rst $38
    dec h
    ccf
    pop af
    rst $38
    ld [hl+], a
    ccf
    xor a
    rst $38
    ld hl, $553f
    rst $38
    jr nz, @+$41

    xor d
    rst $38
    db $10
    rra
    dec b
    rst $38
    db $10
    rra
    nop
    rst $38
    inc c
    rrca
    nop
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
    ldh [$e0], a
    nop
    nop
    ret c

    jr c, jr_0fe_4fe3

jr_0fe_4fe3:
    nop
    ld [hl], $ce
    nop
    nop

jr_0fe_4fe8:
    dec e
    db $e3
    add b
    add b
    ld c, $f1
    ld b, b
    ret nz

    rlca
    ld hl, sp-$60
    ld h, b
    ccf
    db $fc
    ldh [rNR41], a
    rra
    ld a, [c]
    ldh a, [$50]
    rrca
    cp $f0
    ld [hl], b
    ret nz

    rst $38
    db $10
    ldh a, [$a0]
    rst $38
    jr nz, jr_0fe_4fe8

    sub h
    rst $38
    and b
    ldh [$58], a
    ld l, a
    ld b, b
    ret nz

    ld e, a
    ld h, a
    ret nz

    add b
    xor c
    or a
    ld b, b
    nop
    sbc $d6
    add b
    nop
    ldh [rNR41], a
    nop
    nop

jr_0fe_5020:
    ldh a, [$f0]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, [hl]
    jp nz, RST_00

    ccf
    rst $38
    nop
    nop
    rrca
    ld hl, sp-$80
    add b
    rst $00
    rst $38
    ret nz

    ret nz

    jr nz, jr_0fe_507d

    jr nz, jr_0fe_5020

    jr jr_0fe_5061

    db $10
    ldh a, [rIF]
    rrca
    db $10
    ldh a, [rTMA]
    rlca
    adc b
    ld hl, sp-$01
    rst $38
    ld c, b
    ld hl, sp-$52
    rst $38
    add h
    db $fc
    set 7, a
    add h
    db $fc
    ld a, a
    rst $38
    ld b, h
    db $fc
    xor e
    rst $38
    add h
    db $fc
    ld d, a

jr_0fe_5061:
    rst $38
    ld b, h
    db $fc
    cp $ff
    add h
    db $fc
    ld d, l
    rst $38
    inc b
    db $fc
    xor d
    rst $38
    ld [$54f8], sp
    rst $38
    ld [$a8f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a
    rst $38

jr_0fe_507d:
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
    rlca
    rlca
    nop
    nop
    jr jr_0fe_50ef

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    add [hl]
    rst $38
    inc bc
    inc bc
    ld e, [hl]
    ei
    ld [bc], a
    inc bc
    sbc a

jr_0fe_50ef:
    pop af
    ld bc, $5f01
    rst $38
    ld bc, $af01
    ld hl, sp+$01
    ld bc, $ffd7
    nop
    nop
    xor e
    rst $38
    nop
    nop
    push af
    rst $38
    nop
    nop
    sbc [hl]
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    ld l, c
    ld a, a
    rlca
    rlca
    push af
    rst $38
    ld a, [bc]
    rrca
    xor a
    rst $38
    dec d
    rra
    ld d, l
    rst $38
    inc de
    rra
    ld a, [bc]
    rst $38
    dec h
    ccf
    pop af
    rst $38
    ld [hl+], a
    ccf
    xor a
    rst $38
    ld hl, $553f
    rst $38
    jr nz, jr_0fe_516d

    xor d
    rst $38
    db $10
    rra
    dec b
    rst $38
    db $10
    rra
    nop
    rst $38
    inc c
    rrca
    nop
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

jr_0fe_516d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret c

    jr c, jr_0fe_518f

jr_0fe_518f:
    nop
    ld [hl], $ce
    nop
    nop

jr_0fe_5194:
    dec e
    db $e3
    add b
    add b
    ld c, $f1
    ld b, b
    ret nz

    rlca
    ld hl, sp-$60
    ld h, b
    ccf
    db $fc
    ldh [rNR41], a
    rra
    ld a, [c]
    ldh a, [$50]
    rrca
    cp $f0
    ld [hl], b
    ret nz

    rst $38
    db $10
    ldh a, [$a0]
    rst $38
    jr nz, jr_0fe_5194

    sub h
    rst $38
    and b
    ldh [$d8], a
    rst $28
    ld b, b
    ret nz

    ld e, a
    rst $20
    ret nz

    add b
    add hl, hl
    rst $30
    ld h, b
    and b
    sbc a
    rst $30
    sub b
    ld [hl], b
    ld d, b
    rst $38
    ld [$eaf8], sp
    rst $38
    ld [$35f8], sp
    rst $38
    inc b
    db $fc
    adc $ff
    add h
    db $fc
    ld a, a
    rst $38
    ld b, h
    db $fc
    xor e
    rst $38
    add h
    db $fc
    ld d, a
    rst $38
    ld b, h
    db $fc
    cp $ff
    add h
    db $fc
    ld d, l
    rst $38
    inc b
    db $fc
    xor d
    rst $38
    ld [$54f8], sp
    rst $38
    ld [$a8f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld de, $001e
    nop
    inc hl
    inc a
    nop
    nop
    ld e, a
    ld a, h
    nop
    nop
    ld e, a
    ld [hl], d
    nop
    nop
    ld c, a
    ld a, [hl]
    nop
    nop
    jr nz, jr_0fe_525b

    nop
    nop
    jr nc, jr_0fe_525f

    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    rla
    dec de
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca

jr_0fe_525b:
    inc c
    nop
    nop
    rrca

jr_0fe_525f:
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
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
    db $10
    rra
    inc bc
    inc bc
    ld hl, sp-$01
    ld c, $0f
    or b
    rst $38
    dec d
    rra
    ld e, b
    rst $38
    ld a, [de]
    rra
    or b
    rst $38
    dec [hl]
    ccf
    ld e, b
    rst $38
    dec hl
    ccf
    db $10
    rst $38
    ld d, [hl]
    ld a, a
    jr nz, @+$01

    ld l, e
    ld a, a
    ld h, b
    rst $38
    rst $10
    rst $38
    ret nz

    rst $38
    xor d
    rst $38
    add b
    rst $38
    push de
    rst $38
    ld b, b
    rst $38
    xor d
    rst $38
    add b
    rst $38
    sub h
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $40ff
    ld a, a
    ld b, $fe
    ccf
    ccf

jr_0fe_52be:
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    adc b
    ld a, b
    nop
    nop
    call nz, Call_000_003c
    nop
    ld a, [$003e]
    nop
    ld a, [$004e]
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0fe_52de:
    nop
    nop
    ld d, h
    db $fc
    nop
    nop
    jr z, jr_0fe_52de

    nop
    nop
    add sp, -$28
    nop
    nop
    jr nc, jr_0fe_52be

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    jr @-$06

    rrca
    add hl, bc
    jr @-$06

    rrca
    add hl, bc
    inc e
    db $fc
    rrca
    add hl, bc
    inc d
    db $fc
    dec d
    dec de
    ld a, [hl+]
    cp $11
    rra
    ld [hl], $fe
    ld de, $2b1f
    rst $38
    ld sp, $353f
    rst $38
    pop af
    rst $38
    ld l, d
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    adc d
    rst $38
    and d
    cp $81
    rst $38
    ld [bc], a
    cp $00
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    jr c, @-$06

    ccf
    ccf
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    nop
    nop
    ld de, $001e
    nop
    inc hl
    inc a
    nop
    nop
    ld e, a
    ld a, h
    nop
    nop
    ld e, a
    ld [hl], d
    nop
    nop
    ld c, a
    ld a, [hl]
    nop
    nop
    jr nz, jr_0fe_53db

    nop
    nop
    jr nc, jr_0fe_53df

    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    rla
    dec de
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca

jr_0fe_53db:
    inc c
    nop
    nop
    rrca

jr_0fe_53df:
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
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
    db $10
    rra
    inc bc
    inc bc
    ld hl, sp-$01
    dec c
    rrca
    ld d, b
    rst $38
    ld a, [de]
    rra
    cp b
    rst $38
    dec d
    rra
    ld d, b
    rst $38
    dec hl
    ccf
    sbc b
    rst $38
    dec [hl]
    ccf
    db $10
    rst $38
    ld l, d
    ld a, a
    jr nz, @+$01

    ld d, a
    ld a, a
    ld h, b
    rst $38
    xor e
    rst $38
    ret nz

    rst $38
    push de
    rst $38
    nop
    rst $38
    xor d
    rst $38
    add b
    rst $38
    sub l
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $40ff
    ld a, a
    ld b, $fe
    ccf
    ccf

jr_0fe_543e:
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    adc b
    ld a, b
    nop
    nop
    call nz, Call_000_003c
    nop
    ld a, [$003e]
    nop
    ld a, [$004e]
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0fe_545e:
    nop
    nop
    ld d, h
    db $fc
    nop
    nop
    jr z, jr_0fe_545e

    nop
    nop
    add sp, -$28
    nop
    nop
    jr nc, jr_0fe_543e

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    jr @-$06

    rrca
    add hl, bc
    jr @-$06

    rrca
    add hl, bc
    inc d
    db $fc
    rrca
    add hl, bc
    inc e
    db $fc
    dec d
    dec de
    ld [hl], $fe
    ld de, $2a1f
    cp $11
    rra
    dec [hl]
    rst $38
    ld sp, $2a3f
    rst $38
    jp hl


    rst $38
    ld [hl], l
    rst $38
    ld d, c
    rst $38
    ld c, d
    rst $38
    xor c
    rst $38
    add c
    rst $38
    ld d, d
    cp $80
    rst $38
    ld [bc], a
    cp $00
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    jr c, @-$06

    ccf
    ccf
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    nop
    nop
    ld de, $001e
    nop
    inc hl
    inc a
    nop
    nop
    ld e, a
    ld a, h
    nop
    nop
    ld e, a
    ld [hl], d
    nop
    nop
    ld c, a
    ld a, [hl]
    nop
    nop
    jr nz, jr_0fe_555b

    nop
    nop
    jr nc, jr_0fe_555f

    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    rla
    dec de
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca

jr_0fe_555b:
    inc c
    nop
    nop
    rrca

jr_0fe_555f:
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
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
    db $10
    rra
    inc bc
    inc bc
    ld hl, sp-$01
    ld c, $0f
    or b
    rst $38
    dec d
    rra
    ld e, b
    rst $38
    ld a, [de]
    rra
    or b
    rst $38
    dec [hl]
    ccf
    ld e, b
    rst $38
    dec hl
    ccf
    db $10
    rst $38
    ld d, [hl]
    ld a, a
    jr nz, @+$01

    ld l, e
    ld a, a
    ld h, b
    rst $38
    rst $10
    rst $38
    ret nz

    rst $38
    xor d
    rst $38
    add b
    rst $38
    push de
    rst $38
    ld b, b
    rst $38
    xor d
    rst $38
    add b
    rst $38
    sub h
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $40ff
    ld a, a
    ld b, $fe
    ccf
    ccf

jr_0fe_55be:
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    adc b
    ld a, b
    nop
    nop
    call nz, Call_000_003c
    nop
    ld a, [$003e]
    nop
    ld a, [$004e]
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0fe_55de:
    nop
    nop
    ld d, h
    db $fc
    nop
    nop
    jr z, jr_0fe_55de

    nop
    nop
    add sp, -$28
    nop
    nop
    jr nc, jr_0fe_55be

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop

Call_0fe_55ff:
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    jr @-$06

    rrca
    add hl, bc
    jr @-$06

    rrca
    add hl, bc
    inc e
    db $fc
    rrca
    add hl, bc
    inc d
    db $fc
    dec d
    dec de
    ld a, [hl+]
    cp $11
    rra
    ld [hl], $fe
    ld de, $2b1f
    rst $38
    ld sp, $353f
    rst $38
    pop af
    rst $38
    ld l, d
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    adc d
    rst $38
    and d
    cp $81
    rst $38
    ld [bc], a
    cp $00
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    jr c, @-$06

    ccf
    ccf
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    nop
    nop
    ld de, $001e
    nop
    inc hl
    inc a
    nop
    nop
    ld e, a
    ld a, h
    nop
    nop
    ld e, a
    ld [hl], d
    nop
    nop
    ld c, a
    ld a, [hl]
    nop
    nop
    jr nz, jr_0fe_56db

    nop
    nop
    jr nc, jr_0fe_56df

    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    rla
    dec de
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca

jr_0fe_56db:
    inc c
    nop
    nop
    rrca

jr_0fe_56df:
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
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
    db $10
    rra
    inc bc
    inc bc
    ld hl, sp-$01
    dec c
    rrca
    ld d, b
    rst $38
    ld a, [de]
    rra
    cp b
    rst $38
    dec d
    rra
    ld d, b
    rst $38
    dec hl
    ccf
    sbc b
    rst $38
    dec [hl]
    ccf
    db $10
    rst $38
    ld l, d
    ld a, a
    jr nz, @+$01

    ld d, a
    ld a, a
    ld h, b
    rst $38
    xor e
    rst $38
    ret nz

    rst $38
    push de
    rst $38
    nop
    rst $38
    xor d
    rst $38
    add b
    rst $38
    sub l
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $40ff
    ld a, a
    ld b, $fe
    ccf
    ccf

jr_0fe_573e:
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    adc b
    ld a, b
    nop
    nop
    call nz, Call_000_003c
    nop
    ld a, [$003e]
    nop
    ld a, [$004e]
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0fe_575e:
    nop
    nop
    ld d, h
    db $fc
    nop
    nop
    jr z, jr_0fe_575e

    nop
    nop
    add sp, -$28
    nop
    nop
    jr nc, jr_0fe_573e

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    jr @-$06

    rrca
    add hl, bc
    jr @-$06

    rrca
    add hl, bc
    inc d
    db $fc
    rrca
    add hl, bc
    inc e
    db $fc
    dec d
    dec de
    ld [hl], $fe
    ld de, $2a1f
    cp $11
    rra
    dec [hl]
    rst $38
    ld sp, $2a3f
    rst $38
    jp hl


    rst $38
    ld [hl], l
    rst $38
    ld d, c
    rst $38
    ld c, d
    rst $38
    xor c
    rst $38
    add c
    rst $38
    ld d, d
    cp $80
    rst $38
    ld [bc], a
    cp $00
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    jr c, @-$06

    ccf
    ccf
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
    rla
    jr jr_0fe_582d

jr_0fe_582d:
    nop
    inc hl
    inc a
    nop
    nop
    inc hl
    inc a
    nop
    nop
    ld e, a
    ld a, h
    nop
    nop
    ld e, a
    ld [hl], d
    nop
    nop
    ld c, a
    ld a, [hl]
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nc, jr_0fe_5887

    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    rla
    dec de
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    inc c
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
    db $10
    rra
    inc bc
    inc bc
    ld hl, sp-$01
    dec c
    rrca
    ld d, b

jr_0fe_5887:
    rst $38
    ld a, [de]
    rra
    cp b
    rst $38
    dec d
    rra
    ld d, b
    rst $38
    dec hl
    ccf
    sbc b
    rst $38
    dec [hl]
    ccf
    db $10
    rst $38
    ld l, d
    ld a, a
    jr nz, @+$01

    ld d, a
    ld a, a
    ld h, b
    rst $38
    xor e
    rst $38
    ret nz

    rst $38
    push de
    rst $38
    nop
    rst $38
    xor d
    rst $38
    add b
    rst $38
    sub l
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $40ff
    ld a, a
    ld b, $fe
    ccf
    ccf
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
    ldh [$e0], a
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    ret z

    jr c, jr_0fe_58e7

jr_0fe_58e7:
    nop
    add sp, $18
    nop
    nop
    call nz, Call_000_003c
    nop
    call nz, Call_000_003c
    nop
    ld a, [$003e]
    nop
    ld a, [$004e]
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0fe_5906:
    nop
    nop
    ld d, h
    db $fc
    nop
    nop
    jr z, jr_0fe_5906

    nop
    nop
    add sp, -$28
    nop
    nop
    jr nc, @-$2e

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [rDIV]
    inc b
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    db $10
    ldh a, [$0e]
    ld a, [bc]
    jr @-$06

    rrca
    add hl, bc
    jr @-$06

    rrca
    add hl, bc
    inc d
    db $fc
    rrca
    add hl, bc
    inc e
    db $fc
    dec d
    dec de
    ld [hl], $fe
    ld de, $2a1f
    cp $11
    rra
    dec [hl]
    rst $38
    ld sp, $2a3f
    rst $38
    jp hl


    rst $38
    ld [hl], l
    rst $38
    ld d, c
    rst $38
    ld c, d
    rst $38
    xor c
    rst $38
    add c
    rst $38
    ld d, d
    cp $80
    rst $38
    ld [bc], a
    cp $00
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    jr c, @-$06

    ccf
    ccf
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
    rla
    jr jr_0fe_59dd

jr_0fe_59dd:
    nop
    inc hl
    inc a
    nop
    nop
    inc hl
    inc a
    nop
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld d, c
    ld a, [hl]
    nop
    nop
    ld c, a
    ld a, [hl]
    nop
    nop
    jr nz, jr_0fe_5a33

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc d
    rra
    inc bc
    inc bc
    rst $30
    ei
    dec c
    rrca
    ld e, h
    ei
    ld a, [de]
    rra
    cp [hl]
    rst $38
    dec d
    rra
    ld e, e
    rst $38
    dec hl
    ccf
    sbc b
    rst $38
    dec [hl]
    ccf
    db $10
    rst $38
    ld l, d
    ld a, a
    jr nz, @+$01

    ld d, a
    ld a, a
    ld h, b
    rst $38
    xor e
    rst $38
    ret nz

    rst $38
    push de
    rst $38
    nop
    rst $38
    xor d
    rst $38
    add b
    rst $38
    sub l
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop

jr_0fe_5a33:
    rst $38
    add b
    rst $38
    ld bc, $40ff
    ld a, a
    ld b, $fe
    ccf
    ccf
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
    ldh [$e0], a
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    ret z

    jr c, jr_0fe_5a97

jr_0fe_5a97:
    nop
    add sp, $18
    nop
    nop
    call nz, Call_000_003c
    nop
    call nz, Call_000_003c
    nop
    jp nz, Jump_000_003e

    nop
    adc d
    ld a, [hl]
    nop
    nop
    ld a, [c]
    ld a, [hl]
    nop
    nop
    inc b
    db $fc
    inc b
    inc b
    inc c
    db $fc

jr_0fe_5ab6:
    inc b
    inc b
    ld d, h
    db $fc
    ld c, $0a
    jr z, jr_0fe_5ab6

    ld c, $0a
    add sp, -$28
    ld c, $0a
    jr c, @-$26

    rrca
    add hl, bc
    ld a, b
    ld hl, sp+$0f
    add hl, bc
    call nc, Call_000_0ffc
    add hl, bc
    inc e
    db $fc
    dec d
    dec de
    ld [hl], $fe
    ld de, $2a1f
    cp $11
    rra
    dec [hl]
    rst $38
    ld sp, $2a3f
    rst $38
    jp hl


    rst $38
    ld [hl], l
    rst $38
    ld d, c
    rst $38
    ld c, d
    rst $38
    xor c
    rst $38
    add c
    rst $38
    ld d, d
    cp $80
    rst $38
    ld [bc], a
    cp $00
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    jr c, @-$06

    ccf
    ccf
    ret nz

    ret nz

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
    inc bc
    ld [bc], a
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
    ld bc, $0001
    nop
    ld bc, $0000
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
    ld bc, $0001
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
    ld [$0000], sp
    rra
    rra
    nop
    nop
    ccf
    ld hl, $0000
    ld a, [hl]
    ld a, a
    nop
    nop
    db $fc
    add a
    ld bc, $f901
    rst $38
    inc bc
    ld [bc], a
    ld a, [c]
    ld e, $03
    inc bc
    db $e4
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rNR10]
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ldh [$e0], a
    ld de, $401f
    ret nz

    ld [de], a

jr_0fe_5b8d:
    rra
    rst $08
    rst $08
    ld hl, $753f
    rst $38
    ld [hl+], a
    ccf
    ld [$21ff], a
    ccf
    ld [hl], h
    rst $38
    ld [hl+], a
    ccf
    xor b
    rst $38
    ld hl, $533f
    rst $38
    jr nz, jr_0fe_5be5

    and [hl]
    rst $38
    ld hl, $593f
    rst $38
    db $10
    rra
    xor b
    rst $38

jr_0fe_5bb0:
    db $10
    rra
    ld e, c
    rst $38

jr_0fe_5bb4:
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc d
    rst $30
    inc bc
    inc bc
    db $e3
    db $e3
    rst $38
    rst $38
    nop
    nop
    jr c, jr_0fe_5b8d

    add b
    add b
    ldh a, [rIF]
    ld b, b
    ret nz

    cp $1f
    jr nz, jr_0fe_5bb0

    db $fc
    daa
    jr nz, jr_0fe_5bb4

    ld hl, sp+$3f
    db $10
    ldh a, [rSB]
    rst $38
    db $10
    ldh a, [$03]
    rst $38
    sub b
    ldh a, [$94]
    rst $38
    sub b
    ldh a, [$0d]

jr_0fe_5be5:
    ei
    db $10
    ldh a, [$fd]
    di
    sub b
    ldh a, [rWX]
    db $76
    ldh [$60], a
    cp a
    inc [hl]
    and b
    ldh [$3f], a
    ccf
    ld b, b
    ret nz

    ld a, a
    ld b, c

jr_0fe_5bfa:
    ld b, b
    ret nz

    cp $ff
    add b
    add b
    db $fd
    rlca
    nop
    nop
    ld a, [$00fe]
    nop
    db $f4
    inc e
    nop
    nop
    add sp, -$08
    nop
    nop
    ret nc

    ld [hl], b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0fe_5bfa

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
    inc bc
    inc bc
    nop
    nop
    ld bc, $c001
    ret nz

    nop
    nop
    ldh [$a0], a
    nop
    nop
    ld [hl], b
    ld d, b
    cp $fe
    ld a, b
    ld c, b
    xor c
    rst $38
    cp b
    xor b
    ld a, h
    rst $38
    ld a, h
    db $e4
    adc e
    rst $38
    inc [hl]
    db $ec
    dec a
    rst $38
    inc h
    db $fc
    ld [$44ff], a
    db $fc
    ld d, h
    rst $38
    call nz, $a3fc
    rst $38
    and h
    db $fc
    ld b, a
    rst $38
    ld c, b
    ld hl, sp-$62
    rst $38
    adc b
    ld hl, sp+$55
    rst $38
    ld [$a8f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ld h, b
    ldh [rIE], a
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
    ld bc, $0001
    nop
    ld bc, $0001
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
    ld bc, $0001
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
    rrca
    nop
    nop
    rra
    stop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld b, e
    nop
    nop
    cp $ff
    ld bc, $f901
    rrca

jr_0fe_5cec:
    ld bc, $f201
    cp $02
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [$08f8], sp
    rrca
    jr nc, jr_0fe_5cec

    ld [$500f], sp
    ldh a, [rNR10]
    rra
    and b
    ldh [rNR10], a
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    ld de, $4f1f
    rst $08
    ld [hl+], a
    ccf
    ld a, [$21ff]
    ccf
    ld [hl], l
    rst $38
    ld [hl+], a
    ccf
    xor d

jr_0fe_5d1b:
    rst $38
    ld hl, $503f
    rst $38
    ld [hl+], a
    ccf
    and e
    rst $38
    ld hl, $453f
    rst $38
    jr nz, jr_0fe_5d69

    xor d
    rst $38

jr_0fe_5d2c:
    ld de, $591f
    rst $38
    db $10
    rra
    xor b
    rst $38
    ld [$490f], sp
    rst $38
    inc b
    rlca
    inc d
    rst $30
    inc bc
    inc bc
    db $e3
    db $e3
    ld a, a
    ld a, a
    add b
    add b
    sbc h
    db $e3
    ld b, b
    ret nz

    ld a, b
    add a
    jr nz, jr_0fe_5d2c

    rst $38
    rrca
    db $10
    ldh a, [$fe]
    sub e
    db $10
    ldh a, [$fc]
    sbc a
    ld [$00f8], sp
    rst $38
    adc b
    ld hl, sp+$01
    rst $38
    ret z

    ld hl, sp+$4a
    rst $38
    ld c, b
    ld hl, sp-$7a
    db $fd
    adc b
    ld hl, sp-$02

jr_0fe_5d69:
    ld a, c
    ret z

    ld hl, sp-$5b
    dec sp
    ldh a, [$30]
    ld e, a
    ld a, [de]
    ret nc

    ld [hl], b
    rra
    rra
    and b
    ldh [$3f], a
    jr nz, jr_0fe_5d1b

    ldh [$7f], a
    ld a, a

jr_0fe_5d7e:
    ld b, b
    ret nz

    cp $83
    add b
    add b
    db $fd
    rst $38
    nop
    nop
    ld a, [$000e]
    nop
    db $f4
    db $fc
    nop
    nop
    add sp, $38
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0fe_5d7e

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
    inc c
    inc c
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    add b
    add b
    ld bc, $c001
    ld b, b
    rst $38
    rst $38
    ldh [rNR41], a
    ld d, l
    rst $38
    ldh [$a0], a

jr_0fe_5dd0:
    cp h
    rst $38
    ldh a, [$90]

jr_0fe_5dd4:
    dec bc
    rst $38
    ret nc

    or b
    dec a
    rst $38
    sub b
    ldh a, [$f5]
    rst $38
    db $10
    ldh a, [$a9]
    rst $38
    sub b
    ldh a, [rHDMA3]
    rst $38
    db $10
    ldh a, [$a6]
    rst $38
    and b
    ldh [$5d], a
    rst $38
    jr nz, jr_0fe_5dd0

    xor d
    rst $38
    jr nz, jr_0fe_5dd4

    ld d, h
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
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
    ld [bc], a
    inc bc
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
    ld bc, $0001
    nop
    ld bc, $0000
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
    ld bc, $0001
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
    ld [$0000], sp
    rra
    rra
    nop
    nop
    ccf
    ld hl, $0000
    ld a, [hl]
    ld a, a
    nop
    nop
    db $fc
    add a
    ld bc, $f901
    rst $38
    inc bc
    ld [bc], a
    ld a, [c]
    ld e, $03
    inc bc
    db $e4
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rNR10]
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ldh [$e0], a
    ld de, $401f
    ret nz

    ld [de], a

jr_0fe_5e8d:
    rra
    rst $08
    rst $08
    ld hl, $753f
    rst $38
    ld [hl+], a
    ccf
    ld [$21ff], a
    ccf
    ld [hl], h
    rst $38
    ld [hl+], a
    ccf
    xor b
    rst $38
    ld hl, $533f
    rst $38
    jr nz, jr_0fe_5ee5

    and [hl]
    rst $38
    ld hl, $593f
    rst $38
    db $10
    rra
    xor b
    rst $38

jr_0fe_5eb0:
    db $10
    rra
    ld e, c
    rst $38

jr_0fe_5eb4:
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc d
    rst $30
    inc bc
    inc bc
    db $e3
    db $e3
    rst $38
    rst $38
    nop
    nop
    jr c, jr_0fe_5e8d

    add b
    add b
    ldh a, [rIF]
    ld b, b
    ret nz

    cp $1f
    jr nz, jr_0fe_5eb0

    db $fc
    daa
    jr nz, jr_0fe_5eb4

    ld hl, sp+$3f
    db $10
    ldh a, [rSB]
    rst $38
    db $10
    ldh a, [$03]
    rst $38
    sub b
    ldh a, [$94]
    rst $38
    sub b
    ldh a, [$0d]

jr_0fe_5ee5:
    ei
    db $10
    ldh a, [$fd]
    di
    sub b
    ldh a, [rWX]
    db $76
    ldh [$60], a
    cp a
    inc [hl]
    and b
    ldh [$3f], a
    ccf
    ld b, b
    ret nz

    ld a, a
    ld b, c

jr_0fe_5efa:
    ld b, b
    ret nz

    cp $ff
    add b
    add b
    db $fd
    rlca
    nop
    nop
    ld a, [$00fe]
    nop
    db $f4
    inc e
    nop
    nop
    add sp, -$08
    nop
    nop
    ret nc

    ld [hl], b
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0fe_5efa

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
    jr nc, jr_0fe_5f6a

    nop
    nop
    inc e
    inc e
    nop
    nop
    ld c, $0a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rst $38
    db $fc
    add b
    add b
    xor e
    cp $80
    add b
    ld a, a
    cp $c0
    ld b, b
    adc e
    cp $60
    ldh [$3e], a
    rst $38
    ld h, b
    ldh [$ee], a
    rst $38
    ld h, b
    ldh [rHDMA4], a
    rst $38
    ld h, b
    ldh [$ae], a
    rst $38
    ld h, b
    ldh [$5c], a
    rst $38

jr_0fe_5f6a:
    and b
    ldh [$b8], a
    rst $38
    ret nz

    ret nz

    ld d, b
    rst $38
    add b
    add b
    xor c
    rst $38
    nop
    nop
    ld b, $fe
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
    ld bc, $0001
    nop
    ld bc, $0001
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
    ld bc, $0001
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
    rrca
    nop
    nop
    rra
    stop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld b, e
    nop
    nop
    db $fc
    rst $38
    ld bc, $f901
    rrca

jr_0fe_5fec:
    ld bc, $f201
    cp $02
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [$08f8], sp
    rrca
    jr nc, jr_0fe_5fec

    ld [$500f], sp
    ldh a, [rNR10]
    rra
    and b
    ldh [rNR10], a
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    ld de, $4f1f
    rst $08
    ld [hl+], a
    ccf
    ld a, [$21ff]
    ccf
    ld [hl], l
    rst $38
    ld [hl+], a
    ccf
    xor d

jr_0fe_601b:
    rst $38
    ld hl, $503f
    rst $38
    ld [hl+], a
    ccf
    and e
    rst $38
    ld hl, $453f
    rst $38
    jr nz, jr_0fe_6069

    xor d
    rst $38

jr_0fe_602c:
    ld de, $591f
    rst $38
    db $10
    rra
    xor b
    rst $38
    ld [$490f], sp
    rst $38
    inc b
    rlca
    inc d
    rst $30
    inc bc
    inc bc
    db $e3
    db $e3
    ld a, a
    ld a, a
    add b
    add b
    sbc h
    db $e3
    ld b, b
    ret nz

    ld a, b
    add a
    jr nz, jr_0fe_602c

    rst $38
    rrca
    db $10
    ldh a, [$fe]
    sub e
    db $10
    ldh a, [$fc]
    sbc a
    ld [$00f8], sp
    rst $38
    adc b
    ld hl, sp+$01
    rst $38
    ret z

    ld hl, sp+$4a
    rst $38
    ld c, b
    ld hl, sp-$7a
    db $fd
    adc b
    ld hl, sp-$02

jr_0fe_6069:
    ld a, c
    ret z

    ld hl, sp-$5b
    dec sp
    ldh a, [$30]
    ld e, a
    ld a, [de]
    ret nc

    ld [hl], b
    rra
    rra
    and b
    ldh [$3f], a
    jr nz, jr_0fe_601b

    ldh [$7f], a
    ld a, a

jr_0fe_607e:
    ld b, b
    ret nz

    cp $83
    add b
    add b
    db $fd
    rst $38
    nop
    nop
    ld a, [$000e]
    nop
    db $f4
    db $fc
    nop
    nop
    add sp, $38
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0fe_607e

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
    inc c
    inc c
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    add b
    add b
    ld bc, $c001
    ld b, b
    rst $38
    rst $38
    ldh [rNR41], a
    ld d, l
    rst $38
    ldh [$a0], a

jr_0fe_60d0:
    cp h
    rst $38
    ldh a, [$90]

jr_0fe_60d4:
    dec bc
    rst $38
    ret nc

    or b
    dec a
    rst $38
    sub b
    ldh a, [$f5]
    rst $38
    db $10
    ldh a, [$a9]
    rst $38
    sub b
    ldh a, [rHDMA3]
    rst $38
    db $10
    ldh a, [$a6]
    rst $38
    and b
    ldh [$5d], a
    rst $38
    jr nz, jr_0fe_60d0

    xor d
    rst $38
    jr nz, jr_0fe_60d4

    ld d, h
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
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
    rlca
    rlca
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld l, h
    ld [hl], e
    ld bc, $b801
    rst $00
    ld [bc], a
    inc bc
    ld [hl], b
    adc a
    dec b
    ld b, $e0
    rra
    rlca
    inc b
    db $fc
    ccf
    rrca
    ld a, [bc]
    ld hl, sp+$4f
    rrca
    ld c, $f0
    ld a, a
    ld [$030f], sp
    rst $38
    inc b
    rlca
    dec b
    rst $38
    dec b
    rlca
    add hl, hl
    rst $38
    ld [bc], a
    inc bc
    ld a, [de]
    or $03
    ld bc, $e6fa
    ld [bc], a
    nop
    sub l
    db $ed
    ld bc, $7b00
    ld l, e
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    stop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld b, e
    nop
    nop
    db $fc
    rst $38
    ld bc, $f001
    rra
    inc bc
    inc bc
    db $e3
    rst $38
    inc b
    rlca
    inc b
    db $fc
    ld [$180f], sp
    ld hl, sp+$08
    rrca
    ldh a, [$f0]
    ld de, $601f
    ldh [rNR12], a
    rra
    rst $28
    rst $28
    ld hl, $753f
    rst $38
    ld [hl+], a
    ccf
    ld [$21ff], a
    ccf
    ld [hl], h
    rst $38
    ld [hl+], a
    ccf
    xor b
    rst $38
    ld hl, $533f
    rst $38
    jr nz, @+$41

    and [hl]
    rst $38
    ld hl, $593f
    rst $38
    db $10
    rra
    xor b
    rst $38
    db $10
    rra
    ld e, c
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc d
    rst $30
    inc bc
    inc bc
    db $e3
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fe_61da:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0fe_61da

    nop
    nop
    ld b, $fe
    nop
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
    nop
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld a, b
    rst $18
    ld b, b
    ret nz

    db $fc
    add a
    ld b, b
    ret nz

    db $fc
    rst $38
    add b
    add b
    db $fc
    rlca
    add b
    add b
    ld hl, sp-$71

jr_0fe_620e:
    add b
    add b
    ld sp, hl
    rst $38
    nop
    nop
    ld sp, hl
    rrca
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ld [c], a
    ld a, $00
    nop
    call nz, Call_000_00fc
    nop
    adc b
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0fe_620e

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
    inc bc
    inc bc
    nop
    nop
    ld bc, $c001
    ret nz

    nop
    nop
    ldh [$a0], a
    nop
    nop
    ld [hl], b
    ld d, b
    cp $fe
    ld a, b
    ld c, b
    xor c
    rst $38
    cp b
    xor b
    ld a, h
    rst $38
    ld a, h
    db $e4
    adc e
    rst $38
    inc [hl]
    db $ec
    dec a
    rst $38
    inc h
    db $fc
    ld [$44ff], a
    db $fc
    ld d, h
    rst $38
    call nz, $a3fc
    rst $38
    and h
    db $fc
    ld b, a
    rst $38
    ld c, b
    ld hl, sp-$62
    rst $38
    adc b
    ld hl, sp+$55
    rst $38
    ld [$a8f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ld h, b
    ldh [rIE], a
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
    rlca
    rlca
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld l, h
    ld [hl], e
    ld bc, $b801
    rst $00
    ld [bc], a
    inc bc
    ld [hl], b
    adc a
    dec b
    ld b, $e0
    rra
    rlca
    inc b
    call nz, Call_000_093f
    ld c, $88
    ld a, a
    rrca
    ld c, $f0
    ld a, a
    ld [$030f], sp
    rst $38
    inc b
    rlca
    dec b
    rst $38
    dec b
    rlca
    add hl, hl
    rst $38
    ld [bc], a
    inc bc
    ld a, [de]
    rst $30
    rlca
    dec b
    ei
    rst $20
    ld a, [bc]
    dec c
    sub h
    rst $28
    ld de, $7b1e
    rst $28
    db $10
    rra
    rrca
    rst $38
    ld hl, $753f
    rst $38
    ld [hl+], a
    ccf
    ld [$21ff], a
    ccf
    ld [hl], h
    rst $38
    ld [hl+], a
    ccf
    xor b
    rst $38
    ld hl, $533f
    rst $38
    jr nz, jr_0fe_6365

    and [hl]
    rst $38
    ld hl, $593f
    rst $38
    db $10
    rra
    xor b
    rst $38
    db $10
    rra
    ld e, c
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc d
    rst $30
    inc bc
    inc bc
    db $e3
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fe_6365:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fe_638a:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0fe_638a

    nop
    nop
    ld b, $fe
    nop
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
    nop
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld a, b
    rst $18
    ld b, b
    ret nz

    db $f4
    rst $38
    ld b, b
    ret nz

    inc c
    rst $38
    add b
    add b
    ld d, a
    rst $38
    add b
    add b
    xor c
    rst $38
    ret nz

    ret nz

    ld e, c
    rst $38
    ldh [$a0], a
    xor c
    rst $38
    ld [hl], b
    ld d, b
    cp $fe
    ld a, b
    ld c, b
    xor c
    rst $38
    cp b
    xor b
    ld a, h
    rst $38
    ld a, h
    db $e4
    adc e
    rst $38
    inc [hl]
    db $ec
    dec a
    rst $38
    inc h
    db $fc
    ld [$44ff], a
    db $fc
    ld d, h
    rst $38
    call nz, $a3fc
    rst $38
    and h
    db $fc
    ld b, a
    rst $38
    ld c, b
    ld hl, sp-$62
    rst $38
    adc b
    ld hl, sp+$55
    rst $38
    ld [$a8f8], sp
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ld h, b
    ldh [rIE], a
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
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
    rlca
    rlca
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
    ld [$0000], sp
    rra
    rra
    nop
    nop
    inc a
    daa
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    pop af
    sbc a
    ld bc, $e201
    cp $02
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rNR10]
    rra
    ld h, b
    ldh [rNR43], a
    ccf
    ret nz

    ret nz

    ld b, l
    ld a, a
    add b
    add b
    ld c, d
    ld a, a
    rst $38
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    ld d, l
    rst $38
    jp z, $aaff

    rst $38
    sub l
    rst $38
    ld bc, $8aff
    rst $38
    nop
    rst $38
    sub l
    rst $38
    ret nz

    rst $38
    adc d
    rst $38
    cp a
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld a, [bc]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    jr nz, jr_0fe_64f9

    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    inc bc
    inc bc
    ldh a, [$f0]
    inc e
    rra
    ld [$60f8], sp
    ld a, a
    inc b
    db $fc
    rst $08
    cp a
    ld [bc], a
    cp $9e
    ld [hl], e
    ld [bc], a
    cp $9c
    ld a, a
    ld bc, $00ff
    rst $38
    ld h, c
    rst $38
    inc b
    rst $38
    ld [hl], c
    rst $18

jr_0fe_64e0:
    cp b
    rst $38
    ld [hl], c
    rst $18
    ld l, b
    rst $08
    ld a, [c]
    sbc [hl]
    pop af
    sbc a
    ld a, [c]
    cp $23
    ld e, $e4
    inc a
    rst $10
    ld l, h
    ret z

    ld a, b
    ld a, a
    ld a, a
    sub b
    ldh a, [rIF]

jr_0fe_64f9:
    ld [$f090], sp
    rra
    rra

jr_0fe_64fe:
    jr nz, jr_0fe_64e0

    ld a, $23
    ld b, b
    ret nz

    ld a, h
    ld a, a
    add b
    add b
    ld sp, hl
    adc a
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $e4
    inc a
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0fe_64fe

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
    ld b, $06
    nop
    nop
    inc bc
    inc bc
    add b
    add b
    ld bc, $c001
    ld b, b
    rst $38
    rst $38
    ld hl, sp-$48
    nop
    rst $38
    db $f4
    sbc h
    rst $38
    rst $38
    ld a, [$55ce]
    rst $38
    ld a, c
    rst $08

jr_0fe_6558:
    xor d
    rst $38
    jp hl


    rst $18
    ld d, l
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    adc d
    cp $07
    rst $38
    ld a, [bc]
    cp $fa
    rst $38
    inc e
    db $fc
    ld d, h
    rst $38
    db $10
    ldh a, [$a0]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    jr nz, jr_0fe_6558

    nop
    rst $38
    ret nz

    ret nz

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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld b, $05
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
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld b, $00
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
    ld bc, $0001
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
    rrca
    nop
    nop
    rra
    ld de, $0000
    ld a, $3f
    nop
    nop
    ld a, b
    ld c, a
    nop
    nop
    pop af
    rst $38
    ld bc, $e201
    ld a, $03
    inc bc
    ld [c], a
    cp $04
    rlca
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$10
    rra
    ld d, b
    ldh a, [rNR10]
    rra
    and b
    ldh [rNR51], a
    ccf
    ld b, b
    ret nz

    ld c, d
    ld a, a
    add b
    add b
    ld d, l
    ld a, a
    rst $38
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    cp d
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld d, l
    rst $38
    adc e
    rst $38
    and b
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    adc e
    rst $38
    ret nz

    rst $38
    sub l
    rst $38
    ld a, a
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    add b
    rst $38
    dec b
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    jr nz, jr_0fe_6679

    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    rlca
    rlca
    ldh [$e0], a
    jr c, jr_0fe_6685

    db $10
    ldh a, [$c0]
    rst $38
    ld [$9ef8], sp
    ld a, a
    inc b
    db $fc
    inc a
    rst $20
    inc b
    db $fc
    jr c, @+$01

    ld [bc], a
    cp $00
    rst $38
    jp nz, $08fe

    rst $38
    ld [c], a
    cp [hl]
    ld [hl], b
    rst $38
    ld [c], a
    cp [hl]
    pop de
    sbc a
    db $e4
    inc a
    db $e3
    ccf
    db $e4
    db $fc
    ld b, a
    inc a
    ret z

    ld a, b
    xor a
    ret c

    sub b
    ldh a, [rIE]
    rst $38
    jr nz, @-$1e

    rra

jr_0fe_6679:
    ld de, $e020
    ld a, $3f
    ld b, b
    ret nz

    ld a, h
    ld b, a
    add b
    add b
    ld sp, hl

jr_0fe_6685:
    rst $38
    nop
    nop
    ld a, [c]
    ld e, $00
    nop
    db $e4
    db $fc
    nop
    nop
    ret z

    ld a, b
    nop
    nop
    sub b
    ldh a, [rP1]
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
    jr jr_0fe_66d6

    nop
    nop
    ld c, $0e
    nop
    nop
    rlca
    dec b
    nop
    nop
    rst $38
    cp $f8
    ld hl, sp-$7d
    cp $c4
    ld a, h
    rst $38
    rst $38
    ld a, [c]
    ld a, $ab
    rst $38

jr_0fe_66d6:
    jp hl


    ccf
    ld d, l
    rst $38
    or c
    ld a, a
    xor e
    rst $38
    add hl, hl
    rst $38
    ld [bc], a
    rst $38
    ld [hl-], a
    cp $1c
    rst $38
    ld [hl+], a
    cp $f4
    rst $38
    ld l, h
    db $fc
    xor b
    rst $38
    ld [hl], b
    ldh a, [$50]
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
    inc bc
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
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
    rlca
    rlca
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
    ld [$0000], sp
    rra
    rra
    nop
    nop
    inc a
    daa
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    pop af
    sbc a
    ld bc, $e201
    cp $02
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rNR10]
    rra
    ld h, b
    ldh [rNR43], a
    ccf
    ret nz

    ret nz

    ld b, l
    ld a, a
    add b
    add b
    ld c, d
    ld a, a
    rst $38
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    ld d, l
    rst $38
    jp z, $aaff

    rst $38
    sub a
    rst $38
    ld bc, $8aff
    rst $38
    nop
    rst $38
    sub a
    rst $38
    nop
    rst $38
    adc d
    rst $38
    rst $38
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld a, [bc]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    jr nz, jr_0fe_67f9

    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    inc bc
    inc bc
    ldh a, [$f0]
    inc e
    rra
    ld [$60f8], sp
    ld a, a
    inc b
    db $fc
    rst $08
    cp a
    ld [bc], a
    cp $9e
    ld [hl], e
    ld [bc], a
    cp $9c
    ld a, a
    ld bc, $00ff
    rst $38
    ld h, c
    rst $38
    inc b
    rst $38
    ld [hl], c
    rst $18

jr_0fe_67e0:
    cp b
    rst $38
    ld [hl], c
    rst $18
    ld l, b
    rst $08
    ld a, [c]
    sbc [hl]
    pop af
    sbc a
    ld a, [c]
    cp $23
    ld e, $e4
    inc a
    rst $10
    ld l, h
    ret z

    ld a, b
    ld a, a
    ld a, a
    sub b
    ldh a, [rIF]

jr_0fe_67f9:
    ld [$f090], sp
    rra
    rra

jr_0fe_67fe:
    jr nz, jr_0fe_67e0

    ld a, $23
    ld b, b
    ret nz

    ld a, h
    ld a, a
    add b
    add b
    ld sp, hl
    adc a
    nop
    nop
    ld a, [c]
    cp $00
    nop
    db $e4
    inc a
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0fe_67fe

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
    jr nc, jr_0fe_686e

    nop
    nop
    inc e
    inc e
    nop
    nop
    ld c, $0a
    nop
    nop
    rst $38
    db $fd
    ld hl, sp-$08
    rlca
    db $fc
    add h
    db $fc
    rst $38
    cp $d2
    ld a, [hl]
    ld d, a
    cp $e9
    ld a, a
    xor e
    cp $51
    rst $38
    ld d, [hl]
    rst $38
    ld h, c
    rst $38
    inc b
    rst $38
    ld b, d
    cp $1c
    rst $38
    ld b, d
    cp $e8
    rst $38
    adc h
    db $fc
    ld d, b
    rst $38

jr_0fe_686e:
    ldh a, [$f0]
    add b
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld b, $fe
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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld b, $05
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
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld b, $00
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
    ld bc, $0001
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
    rrca
    nop
    nop
    rra
    ld de, $0000
    ld a, $3f
    nop
    nop
    ld a, b
    ld c, a
    nop
    nop
    pop af
    rst $38
    ld bc, $e201
    ld a, $03
    inc bc
    ld [c], a
    cp $04
    rlca
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$10
    rra
    ld d, b
    ldh a, [rNR10]
    rra
    and b
    ldh [rNR51], a
    ccf
    ld b, b
    ret nz

    ld c, d
    ld a, a
    add b
    add b
    ld d, l
    ld a, a
    rst $38
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    cp d
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld d, l
    rst $38
    adc e
    rst $38
    and b
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    adc e
    rst $38
    ret nz

    rst $38
    sub l
    rst $38
    ld a, a
    rst $38
    adc d
    rst $38
    xor d
    rst $38
    add b
    rst $38
    dec b
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    jr nz, jr_0fe_6979

    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    rlca
    rlca
    ldh [$e0], a
    jr c, jr_0fe_6985

    db $10
    ldh a, [$c0]
    rst $38
    ld [$9ef8], sp
    ld a, a
    inc b
    db $fc
    inc a
    rst $20
    inc b
    db $fc
    jr c, @+$01

    ld [bc], a
    cp $00
    rst $38
    jp nz, $08fe

    rst $38
    ld [c], a
    cp [hl]
    ld [hl], b
    rst $38
    ld [c], a
    cp [hl]
    pop de
    sbc a
    db $e4
    inc a
    db $e3
    ccf
    db $e4
    db $fc
    ld b, a
    inc a
    ret z

    ld a, b
    xor a
    ret c

    sub b
    ldh a, [rIE]
    rst $38
    jr nz, @-$1e

    rra

jr_0fe_6979:
    ld de, $e020
    ld a, $3f
    ld b, b
    ret nz

    ld a, h
    ld b, a
    add b
    add b
    ld sp, hl

jr_0fe_6985:
    rst $38
    nop
    nop
    ld a, [c]
    ld e, $00
    nop
    db $e4
    db $fc
    nop
    nop
    ret z

    ld a, b
    nop
    nop
    sub b
    ldh a, [rP1]
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
    jr jr_0fe_69d6

    nop
    nop
    ld c, $0e
    nop
    nop
    rlca
    dec b
    nop
    nop
    rst $38
    cp $f8
    ld hl, sp-$7d
    cp $c4
    ld a, h
    rst $38
    rst $38
    ld a, [c]
    ld a, $ab
    rst $38

jr_0fe_69d6:
    jp hl


    ccf
    ld d, l
    rst $38
    or c
    ld a, a
    xor e
    rst $38
    add hl, hl
    rst $38
    ld [bc], a
    rst $38
    ld [hl-], a
    cp $1c
    rst $38
    ld [hl+], a
    cp $f4
    rst $38
    ld l, h
    db $fc
    xor b
    rst $38
    ld [hl], b
    ldh a, [$50]
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
    inc bc
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
    ld a, a
    ld a, a
    inc bc
    inc bc
    ldh a, [$8f]
    rrca
    inc c
    add b
    ld a, a
    dec e
    inc de
    ldh [rIE], a
    dec sp
    ld h, $c0
    ld a, a
    inc sp
    cpl
    add b
    rst $38
    ld h, b
    ld e, a
    rlca
    rst $38
    ld b, b
    ld a, a
    adc a
    ld hl, sp-$69
    rst $38
    rrca
    ld hl, sp-$73
    ld sp, hl
    rra
    di
    cp $f3
    inc a
    db $fc
    ld h, h
    inc bc
    ld b, b
    ret nz

    ld a, [de]
    dec c
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    jr jr_0fe_6a6d

jr_0fe_6a6d:
    nop
    ccf
    ccf
    nop
    nop
    db $fc
    rst $00
    inc bc
    inc bc
    ld hl, sp-$01
    inc b
    rlca
    ld bc, $18ff
    rra
    ld b, $fe
    jr nz, jr_0fe_6ac1

    cp b
    ld hl, sp+$45
    ld a, a
    ldh a, [$f0]
    ld c, d
    ld a, a
    rst $38
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    ld d, l
    rst $38
    jp z, $aaff

    rst $38
    sub l
    rst $38
    ld bc, $8aff
    rst $38
    nop
    rst $38
    sub l
    rst $38
    ret nz

    rst $38
    adc d
    rst $38
    cp a
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld a, [bc]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    jr nz, jr_0fe_6af9

    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    nop

jr_0fe_6ac1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fe_6ad0:
    nop
    nop
    nop
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
    inc e
    db $fc
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    jr nz, jr_0fe_6ad0

    nop
    rst $38
    db $10
    ldh a, [$fe]
    rst $38
    ld [$fff8], sp

jr_0fe_6af9:
    ld bc, $f808
    rst $38
    ld a, a
    add h
    db $fc
    sbc a
    sub b
    call nz, Call_000_0f7c
    rrca
    add h
    db $fc
    rrca
    ld [$78c8], sp
    rrca
    rrca
    adc b
    ld hl, sp+$1f
    ld de, $f010
    ld a, $3f
    jr nz, @-$1e

    ld a, h
    ld b, a
    ld b, b
    ret nz

    ld hl, sp-$01
    add b
    add b
    pop af
    rra
    nop
    nop
    ld [c], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    jr @-$06

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
    ld b, $06
    nop
    nop
    inc bc
    inc bc
    add b
    add b
    ld bc, $c001
    ld b, b
    rst $38
    rst $38
    ld hl, sp-$48
    nop
    rst $38
    db $f4
    sbc h
    rst $38
    rst $38
    ld a, [$55ce]
    rst $38
    ld a, c
    rst $08

jr_0fe_6b58:
    xor d
    rst $38
    jp hl


    rst $18
    ld d, l
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    adc d
    cp $07
    rst $38
    ld a, [bc]
    cp $fa
    rst $38
    inc e
    db $fc
    ld d, h
    rst $38
    db $10
    ldh a, [$a0]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    jr nz, jr_0fe_6b58

    nop
    rst $38
    ret nz

    ret nz

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
    rst $38
    rst $38
    rlca
    rlca
    ldh [$1f], a
    rrca
    ld [$ff00], sp
    jr jr_0fe_6bf1

    ld b, b
    rst $38
    jr c, jr_0fe_6c05

    add b
    rst $38
    scf
    cpl
    nop
    rst $38
    ld h, b
    ld e, a
    rrca
    rst $38
    ld b, c
    ld a, a
    rra
    ldh a, [$96]
    rst $38
    rra
    ldh a, [$8a]

jr_0fe_6bf1:
    ei
    ccf
    rst $20
    db $fc
    rst $30
    ld a, d
    rst $38
    ld h, c
    rlca
    add b
    rst $38
    ld e, $0f
    dec b
    rst $38
    jr z, jr_0fe_6c41

    xor d
    rst $38
    ld b, l

jr_0fe_6c05:
    ld a, a
    rst $38
    rst $38
    ld c, d
    ld a, a
    rst $38
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    ld d, l
    rst $38
    jp z, $aaff

    rst $38
    sub l
    rst $38
    ld bc, $8aff
    rst $38
    nop
    rst $38
    sub l
    rst $38
    ret nz

    rst $38
    adc d
    rst $38
    cp a
    rst $38
    add l
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld a, [bc]
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    jr nz, jr_0fe_6c79

    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    nop

jr_0fe_6c41:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fe_6c79:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fe_6c84:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fe_6c8a:
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr c, jr_0fe_6c8a

    nop
    nop
    ld b, $fe
    nop
    nop
    ld bc, $80ff
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0fe_6c84

    db $fc
    rst $38
    db $10
    ldh a, [$fe]
    inc bc
    db $10
    ldh a, [rIE]
    rst $38
    ld [$fff8], sp
    rst $38
    adc b
    ld hl, sp-$61
    rst $38
    ld [$0af8], sp
    rst $38
    sub b
    ldh a, [rHDMA5]
    rst $38
    db $10
    ldh a, [$ab]
    rst $38
    and b
    ldh [rIE], a
    rst $38
    ret nz

    ld b, b
    rst $38
    rst $38
    ld hl, sp-$48
    nop
    rst $38
    db $f4
    sbc h
    rst $38
    rst $38
    ld a, [$55ce]
    rst $38
    ld a, c
    rst $08

jr_0fe_6cd8:
    xor d
    rst $38
    jp hl


    rst $18
    ld d, l
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    adc d
    cp $07
    rst $38
    ld a, [bc]
    cp $fa
    rst $38
    inc e
    db $fc
    ld d, h
    rst $38
    db $10
    ldh a, [$a0]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    jr nz, jr_0fe_6cd8

    nop
    rst $38
    ret nz

    ret nz

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

jr_0fe_6d4e:
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
    ld hl, $003f
    nop
    ld b, d
    ld a, a
    nop
    nop
    add l
    rst $38
    nop
    nop
    adc e
    rst $38
    ld bc, $1601
    cp $02
    inc bc
    inc l
    db $fc
    inc b
    rlca
    inc d
    db $fc
    inc b
    rlca
    inc l
    db $fc
    ld [$170f], sp
    rst $38
    ld [$0a0f], sp
    rst $38
    ld [$010f], sp
    rst $38
    add hl, bc
    rrca
    ld hl, sp-$01
    rlca
    rlca
    ld d, a
    rst $38
    ld a, [bc]
    rrca
    ld a, [bc]
    rst $38
    dec c
    rrca
    ld bc, $0aff
    rrca
    cp b
    rst $38
    add hl, bc
    rrca
    ld d, a
    rst $38
    ld a, [bc]
    rrca
    adc d
    rst $38
    ld [$150f], sp
    rst $38
    inc c
    rrca
    nop
    rst $38
    ld b, $07
    nop
    rst $38
    ld bc, $f001
    rst $38
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    ld c, a
    ld [hl], b
    and b
    ld h, b
    add e
    db $fc
    ret nc

    jr nc, jr_0fe_6d4e

    cp $c8
    jr c, jr_0fe_6dd1

jr_0fe_6dd1:
    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    db $ec
    sbc h
    ld b, c
    rst $38
    ld [hl], h
    sbc h
    and d
    rst $38
    db $ec
    sbc h
    or c
    rst $38
    ld d, h
    db $fc
    ld l, b
    ld e, a
    xor h
    db $fc
    ld e, c
    rra
    ld d, h
    db $fc
    ld c, b
    rrca
    xor b
    ld hl, sp+$29
    rrca
    ld e, b
    ld hl, sp+$0a
    rrca
    or b
    ldh a, [rNR11]
    rra
    ld [hl], b
    ldh a, [rNR43]
    ccf
    ldh [$e0], a
    ld b, l
    ld a, a
    ret nz

    ret nz

    ld c, e
    ld a, a
    add b
    add b
    sub a
    rst $38
    nop
    nop
    ld a, [hl+]
    cp $00
    nop
    ld d, h
    db $fc
    nop
    nop
    inc l
    db $fc
    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    or b
    ldh a, [rP1]
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
    ld b, $06
    nop
    nop
    jp $80c3


    add b
    cp a
    rst $38
    ret nz

    ld b, b
    ld d, l
    rst $38
    ldh a, [$b0]
    ld a, [hl+]
    rst $38
    ld hl, sp-$68
    ret nz

    rst $38
    ld a, b
    ret c

    cp [hl]
    rst $38
    ld a, h
    call z, $ff55
    db $ec
    call c, $ff2a
    adc h
    db $fc
    add c
    rst $38
    inc c
    db $fc
    cp $ff
    adc h
    db $fc

jr_0fe_6e68:
    ld d, l
    rst $38
    ld [$aaf8], sp
    rst $38
    jr jr_0fe_6e68

    nop
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    ret nz

    ret nz

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

jr_0fe_6edb:
    rra
    nop
    nop
    ld hl, $003f
    nop
    ld b, d
    ld a, a
    nop
    nop
    add l
    rst $38
    ld bc, $0b01
    rst $38
    ld bc, $1601
    cp $02
    inc bc
    inc l
    db $fc

jr_0fe_6ef4:
    inc b
    rlca
    ld e, b
    ld hl, sp+$08
    rrca
    jr z, jr_0fe_6ef4

    ld [$580f], sp
    ld hl, sp+$10
    rra
    cpl
    rst $38
    db $10
    rra
    dec d
    rst $38
    db $10
    rra
    ld [bc], a
    rst $38
    inc de
    rra
    ldh a, [rIE]
    ld c, $0f
    xor a
    rst $38
    inc d
    rra
    dec d
    rst $38
    ld a, [de]
    rra
    ld [bc], a
    rst $38
    dec d
    rra
    ld [hl], b
    rst $38
    ld [de], a
    rra
    xor a
    rst $38
    dec d
    rra
    dec d
    rst $38
    db $10
    rra
    ld a, [hl+]
    rst $38
    jr jr_0fe_6f4d

    ld bc, $0cff
    rrca
    nop
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld e, $1f
    nop
    nop
    ld bc, $7f01
    ld a, a
    add b
    add b
    sbc a
    ldh [rLCDC], a
    ret nz

    rlca
    ld hl, sp-$60
    ld h, b
    inc bc

jr_0fe_6f4d:
    db $fc
    sub b
    ld [hl], b
    ld bc, $d0fe
    jr nc, jr_0fe_6f5a

    rst $38
    ret c

    jr c, jr_0fe_6edb

    rst $38

jr_0fe_6f5a:
    add sp, $38
    ld b, l
    rst $38
    ret c

    jr c, jr_0fe_6fc3

    rst $38
    xor b
    ld hl, sp-$2f
    cp a
    ld e, b
    ld hl, sp-$4e
    ccf
    xor b
    ld hl, sp-$6f
    rra
    ld d, b
    ldh a, [rHDMA2]
    rra
    or b
    ldh a, [$15]
    rra
    ld h, b
    ldh [rNR43], a
    ccf
    ldh [$e0], a
    ld b, l
    ld a, a
    ret nz

    ret nz

    adc e
    rst $38
    add b
    add b
    sub a
    rst $38
    nop
    nop
    ld l, $fe
    nop
    nop
    ld d, h
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld e, b
    ld hl, sp+$00
    nop
    or b
    ldh a, [rP1]
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
    jr nc, jr_0fe_6fee

    nop
    nop
    sbc h
    sbc h
    nop

jr_0fe_6fc3:
    nop
    ld a, [hl]
    ld a, [$0000]
    xor a
    db $fd
    add b
    add b
    ld d, a
    db $fc
    ldh [$e0], a
    add e
    cp $b0
    ldh a, [$7b]
    cp $d8
    ld a, b
    and a
    cp $68
    ld hl, sp+$54
    rst $38
    ld e, b
    ld hl, sp+$08
    rst $38
    ld l, b
    ld hl, sp-$0c
    rst $38
    ld e, b
    ld hl, sp-$60
    rst $38
    ld [hl], b
    ldh a, [$50]
    rst $38

jr_0fe_6fee:
    ldh [$e0], a
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld b, $fe
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

jr_0fe_704e:
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
    ld de, $001f
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, l
    ld a, a
    nop
    nop
    adc e
    rst $38
    ld bc, $1701
    rst $38
    ld [bc], a
    inc bc
    ld l, $fe
    inc b
    rlca
    ld e, h
    db $fc
    ld [$280f], sp
    ld hl, sp+$08
    rrca
    ld e, b
    ld hl, sp+$10
    rra
    cp a
    rst $38
    db $10
    rra
    ld d, l
    rst $38
    db $10
    rra
    ld a, [bc]
    rst $38
    inc de
    rra
    ldh a, [rIE]
    ld c, $0f
    xor a
    rst $38
    dec d
    rra
    ld d, l
    rst $38
    ld a, [de]
    rra
    ld a, [bc]
    rst $38
    dec d
    rra
    ld [hl], b
    rst $38
    ld [de], a
    rra
    xor a
    rst $38
    dec d
    rra
    ld d, l
    rst $38
    db $10
    rra
    ld a, [hl+]
    rst $38
    jr jr_0fe_70cd

    ld bc, $0cff
    rrca
    nop
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld e, $1f
    nop
    nop
    ld bc, $3f01
    ccf
    ret nz

    ret nz

    ld c, a
    ld [hl], b
    and b
    ld h, b
    add e
    db $fc
    ret nc

    jr nc, jr_0fe_704e

jr_0fe_70cd:
    cp $c8
    jr c, jr_0fe_70d1

jr_0fe_70d1:
    rst $38
    add sp, $18
    ld bc, $74ff
    sbc h
    ld b, d
    rst $38
    db $ec
    sbc h
    and c
    rst $38
    ld [hl], h
    sbc h
    or b
    rst $38
    xor h
    db $fc
    ld l, c
    ld e, a
    ld d, h
    db $fc
    ld e, b
    rra
    xor h
    db $fc
    ld c, c
    rrca
    ld e, b
    ld hl, sp+$28
    rrca
    xor b
    ld hl, sp+$09
    rrca
    ld d, b
    ldh a, [rNR12]
    rra
    or b
    ldh a, [rNR51]
    ccf
    ld h, b
    ldh [rWY], a
    ld a, a
    ret nz

    ret nz

    ld b, l
    ld a, a
    add b
    add b
    adc e
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc l
    db $fc
    nop
    nop
    ld e, h
    db $fc
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    cp a
    rst $30
    add b
    add b
    ld e, a
    di
    ld h, b
    ldh [$0e], a
    ei
    or b
    ldh a, [$ef]
    ld sp, hl
    ld e, b
    ld hl, sp-$43
    ei
    xor b
    ld hl, sp+$51
    rst $38
    ld e, b
    ld hl, sp+$21
    rst $38
    jr z, @-$06

    pop de
    rst $38
    ld e, b
    ld hl, sp-$7f
    rst $38
    jr nc, @-$0e

    ld b, e
    rst $38
    ldh [$e0], a
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

jr_0fe_71db:
    rra
    nop
    nop
    ld hl, $003f
    nop
    ld b, d
    ld a, a
    nop
    nop
    add l
    rst $38
    ld bc, $0b01
    rst $38
    ld bc, $1601
    cp $02
    inc bc
    inc l
    db $fc

jr_0fe_71f4:
    inc b
    rlca
    ld e, b
    ld hl, sp+$08
    rrca
    jr z, jr_0fe_71f4

    ld [$580f], sp
    ld hl, sp+$10
    rra
    cpl
    rst $38
    db $10
    rra
    dec d
    rst $38
    db $10
    rra
    ld [bc], a
    rst $38
    inc de
    rra
    ldh a, [rIE]
    ld c, $0f
    xor a
    rst $38
    inc d
    rra
    dec d
    rst $38
    ld a, [de]
    rra
    ld [bc], a
    rst $38
    dec d
    rra
    ld [hl], b
    rst $38
    ld [de], a
    rra
    xor a
    rst $38
    dec d
    rra
    dec d
    rst $38
    db $10
    rra
    ld a, [hl+]
    rst $38
    jr jr_0fe_724d

    ld bc, $0cff
    rrca
    nop
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld e, $1f
    nop
    nop
    ld bc, $7f01
    ld a, a
    add b
    add b
    sbc a
    ldh [rLCDC], a
    ret nz

    rlca
    ld hl, sp-$60
    ld h, b
    inc bc

jr_0fe_724d:
    db $fc
    sub b
    ld [hl], b
    ld bc, $d0fe
    jr nc, jr_0fe_725a

    rst $38
    ret c

    jr c, jr_0fe_71db

    rst $38

jr_0fe_725a:
    add sp, $38
    ld b, l
    rst $38
    ret c

    jr c, jr_0fe_72c3

    rst $38
    xor b
    ld hl, sp-$2f
    cp a
    ld e, b
    ld hl, sp-$4e
    ccf
    xor b
    ld hl, sp-$6f
    rra
    ld d, b
    ldh a, [rHDMA2]
    rra
    or b
    ldh a, [$15]
    rra
    ld h, b
    ldh [rNR43], a
    ccf
    ldh [$e0], a
    ld b, l
    ld a, a
    ret nz

    ret nz

    adc e
    rst $38
    add b
    add b
    sub a
    rst $38
    nop
    nop
    ld l, $fe
    nop
    nop
    ld d, h
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld e, b
    ld hl, sp+$00
    nop
    or b
    ldh a, [rP1]
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
    jr nc, jr_0fe_72ee

    nop
    nop
    sbc h
    sbc h
    nop

jr_0fe_72c3:
    nop
    ld a, [hl]
    ld a, [$0000]
    xor a
    db $fd
    add b
    add b
    ld d, a
    db $fc
    ldh [$e0], a
    add e
    cp $b0
    ldh a, [$7b]
    cp $d8
    ld a, b
    and a
    cp $68
    ld hl, sp+$54
    rst $38
    ld d, b
    ld hl, sp+$08
    rst $38
    ld l, b
    ld hl, sp-$0c
    rst $38
    ld e, b
    ld hl, sp-$60
    rst $38
    ld [hl], b
    ldh a, [$50]
    rst $38

jr_0fe_72ee:
    ldh [$e0], a
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld b, $fe
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
    rrca
    rrca
    nop
    nop
    ld a, [$07ff]
    rlca
    push de
    ccf
    rrca
    ld [$ffaa], sp
    dec e
    inc de
    ld d, l
    rst $38
    ld a, [de]
    rla
    add b
    rst $38
    dec [hl]
    cpl
    nop
    rst $38
    jr nz, @+$41

    inc bc
    rst $38
    jr nz, @+$41

    inc b
    db $fc
    ld [de], a
    rra
    ld [$15f8], sp
    rra
    db $10
    ldh a, [$0d]
    dec bc
    db $10
    ldh a, [$0a]
    inc bc
    ld hl, $0fe1
    rlca
    jp nz, $04c3

    nop
    add h
    rlca
    add hl, bc
    nop
    ld [$000f], sp
    nop
    ld de, $001f
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, l
    ld a, a
    nop
    nop
    adc d
    rst $38
    ld bc, $1501
    rst $38
    ld [bc], a
    inc bc
    ld a, [hl+]
    cp $04
    rlca
    ld d, h
    db $fc
    ld [$2c0f], sp
    db $fc
    ld [$580f], sp
    ld hl, sp+$10
    rra
    cpl
    rst $38
    db $10
    rra
    dec d
    rst $38
    db $10
    rra
    ld [bc], a
    rst $38
    inc de
    rra
    ldh a, [rIE]
    ld c, $0f
    xor a
    rst $38
    inc d
    rra
    dec d
    rst $38
    ld a, [de]
    rra
    ld [bc], a
    rst $38
    dec d
    rra
    ld [hl], b
    rst $38
    ld [de], a
    rra
    xor a
    rst $38
    dec d
    rra
    dec d
    rst $38
    db $10
    rra
    ld a, [hl+]
    rst $38
    jr jr_0fe_73cd

    ld bc, $0cff
    rrca
    nop
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld e, $1f
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

jr_0fe_73cd:
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor [hl]
    cp $00
    nop
    ld d, l
    rst $38
    nop
    nop
    xor d
    rst $38
    add b
    add b
    ld d, l
    rst $38
    ld b, b
    ret nz

    ld a, [bc]
    rst $38
    ret nz

    ret nz

    push bc
    rst $38
    ld h, b
    ldh [$2a], a
    ccf
    and b
    ldh [rNR51], a
    ccf
    ld h, b
    ldh [$2a], a
    ccf
    and b
    ldh [rLYC], a
    ld a, a
    ld b, b
    ret nz

    adc d
    rst $38
    add b
    add b
    dec d
    rst $38
    nop
    nop
    ld a, [hl+]
    cp $00
    nop
    ld d, h
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
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
    jr nc, jr_0fe_746e

    nop
    nop
    sbc h
    sbc h
    nop
    nop
    ld a, [hl]
    ld a, [$0000]
    xor a
    db $fd
    add b
    add b
    ld d, a
    db $fc
    ldh [$e0], a
    add e
    cp $b0
    ldh a, [$7b]
    cp $d8
    ld a, b
    and a
    cp $68
    ld hl, sp+$54
    rst $38
    ld d, b
    ld hl, sp+$08
    rst $38
    ld l, b
    ld hl, sp-$0c
    rst $38
    ld e, b
    ld hl, sp-$60
    rst $38
    ld [hl], b
    ldh a, [$50]
    rst $38

jr_0fe_746e:
    ldh [$e0], a
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld b, $fe
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
    rrca
    rrca
    nop
    nop
    ld a, [$07ff]
    rlca
    push de
    ccf
    rrca
    ld [$ffaa], sp
    dec e
    inc de
    ld d, l
    rst $38
    ld a, [de]
    rla
    add b
    rst $38
    dec [hl]
    cpl
    nop
    rst $38
    jr nz, jr_0fe_7529

    inc bc
    rst $38
    jr nz, @+$41

    rst $38
    rst $38
    inc de
    rra
    ld a, [hl+]
    rst $38
    inc d
    rra
    ld d, l
    rst $38
    ld [$280f], sp
    rst $38
    ld [$510f], sp
    rst $38
    db $10
    rra
    cpl
    rst $38
    db $10
    rra
    dec d
    rst $38
    db $10
    rra
    ld [bc], a
    rst $38
    inc de
    rra
    ldh a, [rIE]
    ld c, $0f
    xor a
    rst $38
    inc d
    rra
    dec d
    rst $38
    ld a, [de]
    rra
    ld [bc], a
    rst $38
    dec d
    rra
    ld [hl], b
    rst $38
    ld [de], a
    rra
    xor a
    rst $38
    dec d
    rra
    dec d
    rst $38
    db $10

jr_0fe_7529:
    rra
    ld a, [hl+]
    rst $38
    jr jr_0fe_754d

    ld bc, $0cff
    rrca
    nop
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld e, $1f
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

jr_0fe_754d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor [hl]
    cp $00
    nop
    ld d, l
    rst $38
    nop
    nop
    xor d
    rst $38
    add b
    add b
    ld d, l
    rst $38
    ld b, b
    ret nz

    ld a, [bc]
    rst $38
    ret nz

    ret nz

    push bc
    rst $38
    ld h, b
    ldh [$2a], a
    rst $38
    and b
    ldh [$f5], a
    rst $38
    ld h, b
    ldh [$aa], a
    rst $38
    and b
    ldh [rLYC], a
    rst $38
    ld b, b
    ret nz

    ld a, [bc]
    rst $38
    add b
    add b
    dec d
    rst $38
    nop
    nop
    cp [hl]
    cp $00
    nop
    ld a, [hl]
    ld a, [$0000]
    xor a
    db $fd
    add b
    add b
    ld d, a
    db $fc
    ldh [$e0], a
    add e
    cp $b0
    ldh a, [$7b]
    cp $d8
    ld a, b
    and a
    cp $68
    ld hl, sp+$54
    rst $38
    ld d, b
    ld hl, sp+$08
    rst $38
    ld l, b
    ld hl, sp-$0c
    rst $38
    ld e, b
    ld hl, sp-$60
    rst $38
    ld [hl], b
    ldh a, [$50]
    rst $38
    ldh [$e0], a
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld b, $fe
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    rla
    jr jr_0fe_7609

jr_0fe_7609:
    nop
    inc hl
    inc a
    nop
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld c, e
    ld a, [hl]
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    dec hl
    ld a, $00
    nop
    dec h
    ld a, $00
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
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
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    add hl, bc
    rrca
    nop
    nop
    ld [$200f], sp
    jr nz, @+$0b

    rrca
    jr nz, jr_0fe_769a

    ld [$700f], sp
    ld d, b
    ld [$700f], sp
    ld d, b
    ld [$700f], sp
    ld d, b
    inc b
    rlca
    di
    sub e
    db $e4
    rst $20
    push af
    sub a
    ld e, d
    ei
    ld a, [c]
    sub a
    xor [hl]
    rst $38
    xor l
    rst $18
    rla
    rst $38
    xor d
    rst $38

jr_0fe_769a:
    dec hl
    rst $38
    call z, Call_0fe_55ff
    rst $38
    xor d
    rst $38
    ld c, d
    rst $38
    call c, Call_0fe_45ff
    rst $38
    xor d
    rst $38
    and b
    cp a
    sub h
    rst $38
    sub b
    sbc a
    adc d
    rst $38
    adc b
    adc a
    ld b, l
    ld a, a
    ld b, $07
    ld [hl+], a
    ld a, $01
    ld bc, $1e1e
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    add sp, $18
    nop
    nop
    call nz, Call_000_003c
    nop
    jp nz, Jump_000_003e

    nop
    and d
    ld a, [hl]
    nop
    nop
    sub d
    ld a, [hl]
    nop
    nop
    and h
    ld a, h
    nop
    nop
    call nc, Call_000_007c
    nop
    and h
    db $fc
    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld e, b
    ld hl, sp+$00
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, h
    db $fc
    nop
    nop
    dec hl
    rst $38
    add b
    add b
    dec b
    rst $38
    ld a, h
    db $fc
    ld [bc], a
    rst $38
    xor d
    cp $01
    rst $38
    ld d, [hl]
    cp $80
    rst $38
    dec hl
    rst $38
    ldh [rIE], a
    push de
    rst $38
    cp c
    rst $38
    xor c
    rst $38
    ld e, a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    ld b, d
    cp $0a
    rst $38
    add d
    cp $00
    rst $38
    inc b
    db $fc
    add b
    rst $38
    jr @-$06

    ld a, a
    ld a, a
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    nop
    nop
    rla
    jr jr_0fe_7789

jr_0fe_7789:
    nop
    inc hl
    inc a
    nop
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    ld c, e
    ld a, [hl]
    nop
    nop
    dec h
    ld a, $00
    nop
    inc hl
    ld a, $00
    nop
    dec h
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
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
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    jr nz, jr_0fe_7816

    ld [$200f], sp
    jr nz, @+$0b

    rrca
    ld [hl], b
    ld d, b
    ld [$700f], sp
    ld d, b
    ld [$700f], sp
    ld d, b
    inc b
    rlca
    di
    sub e
    db $e4
    rst $20
    or $97
    cp d
    ei
    push af
    sub a
    ld d, [hl]
    rst $38
    xor d
    rst $18

jr_0fe_7816:
    dec hl
    rst $38
    db $dd
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld c, d
    rst $38
    call c, $d5ff
    rst $38
    xor d
    rst $38
    jp z, $95ff

    rst $38
    and c
    cp a
    adc d
    rst $38
    sub b
    sbc a
    add b
    rst $38
    adc b
    adc a
    ld b, c
    ld a, a
    ld b, $07
    ld [hl+], a
    ld a, $01
    ld bc, $1e1e
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    add sp, $18
    nop
    nop
    call nz, Call_000_003c
    nop
    jp nz, Jump_000_003e

    nop
    jp nc, Jump_000_007e

    nop
    and d
    ld a, [hl]
    nop
    nop
    call nc, Call_000_007c
    nop
    and h
    ld a, h
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld e, b
    ld hl, sp+$00
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, b
    ld hl, sp+$00
    nop
    inc l
    db $fc
    nop
    nop
    ld d, a
    rst $38
    add b
    add b
    ld a, [hl+]
    rst $38
    cp h
    db $fc
    dec b
    rst $38
    ld d, [hl]
    cp $02
    rst $38
    xor d
    cp $80
    rst $38
    dec d
    rst $38
    ldh [rIE], a
    xor e
    rst $38
    ld e, c
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $15
    rst $38
    ld b, d
    cp $00
    rst $38
    inc b
    db $fc
    add b
    rst $38
    jr @-$06

    ld a, a
    ld a, a
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    nop
    nop
    rla
    jr jr_0fe_7909

jr_0fe_7909:
    nop
    inc hl
    inc a
    nop
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld c, e
    ld a, [hl]
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    dec hl
    ld a, $00
    nop
    dec h
    ld a, $00
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
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
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    add hl, bc
    rrca
    nop
    nop
    ld [$200f], sp
    jr nz, @+$0b

    rrca
    jr nz, jr_0fe_799a

    ld [$700f], sp
    ld d, b
    ld [$700f], sp
    ld d, b
    ld [$700f], sp
    ld d, b
    inc b
    rlca
    di
    sub e
    db $e4
    rst $20
    push af
    sub a
    ld e, d
    ei
    ld a, [c]
    sub a
    xor [hl]
    rst $38
    xor l
    rst $18
    rla
    rst $38
    xor d
    rst $38

jr_0fe_799a:
    dec hl
    rst $38
    call z, Call_0fe_55ff
    rst $38
    xor d
    rst $38
    ld c, d
    rst $38
    call c, Call_0fe_45ff
    rst $38
    xor d
    rst $38
    and b
    cp a
    sub h
    rst $38
    sub b
    sbc a
    adc d
    rst $38
    adc b
    adc a
    ld b, l
    ld a, a
    ld b, $07
    ld [hl+], a
    ld a, $01
    ld bc, $1e1e
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    add sp, $18
    nop
    nop
    call nz, Call_000_003c
    nop
    jp nz, Jump_000_003e

    nop
    and d
    ld a, [hl]
    nop
    nop
    sub d
    ld a, [hl]
    nop
    nop
    and h
    ld a, h
    nop
    nop
    call nc, Call_000_007c
    nop
    and h
    db $fc
    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld e, b
    ld hl, sp+$00
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, h
    db $fc
    nop
    nop
    dec hl
    rst $38
    add b
    add b
    dec b
    rst $38
    ld a, h
    db $fc
    ld [bc], a
    rst $38
    xor d
    cp $01
    rst $38
    ld d, [hl]
    cp $80
    rst $38
    dec hl
    rst $38
    ldh [rIE], a
    push de
    rst $38
    cp c
    rst $38
    xor c
    rst $38
    ld e, a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    ld b, d
    cp $0a
    rst $38
    add d
    cp $00
    rst $38
    inc b
    db $fc
    add b
    rst $38
    jr @-$06

    ld a, a
    ld a, a
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    nop
    nop
    rla
    jr jr_0fe_7a89

jr_0fe_7a89:
    nop
    inc hl
    inc a
    nop
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    ld c, e
    ld a, [hl]
    nop
    nop
    dec h
    ld a, $00
    nop
    inc hl
    ld a, $00
    nop
    dec h
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
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
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    jr nz, jr_0fe_7b16

    ld [$200f], sp
    jr nz, @+$0b

    rrca
    ld [hl], b
    ld d, b
    ld [$700f], sp
    ld d, b
    ld [$700f], sp
    ld d, b
    inc b
    rlca
    di
    sub e
    db $e4
    rst $20
    or $97
    cp d
    ei
    push af
    sub a
    ld d, [hl]
    rst $38
    xor d
    rst $18

jr_0fe_7b16:
    dec hl
    rst $38
    db $dd
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld c, d
    rst $38
    call c, $d5ff
    rst $38
    xor d
    rst $38
    jp z, $95ff

    rst $38
    and c
    cp a
    adc d
    rst $38
    sub b
    sbc a
    add b
    rst $38
    adc b
    adc a
    ld b, c
    ld a, a
    ld b, $07
    ld [hl+], a
    ld a, $01
    ld bc, $1e1e
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    add sp, $18
    nop
    nop
    call nz, Call_000_003c
    nop
    jp nz, Jump_000_003e

    nop
    jp nc, Jump_000_007e

    nop
    and d
    ld a, [hl]
    nop
    nop
    call nc, Call_000_007c
    nop
    and h
    ld a, h
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld e, b
    ld hl, sp+$00
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, b
    ld hl, sp+$00
    nop
    inc l
    db $fc
    nop
    nop
    ld d, a
    rst $38
    add b
    add b
    ld a, [hl+]
    rst $38
    cp h
    db $fc
    dec b
    rst $38
    ld d, [hl]
    cp $02
    rst $38
    xor d
    cp $80
    rst $38
    dec d
    rst $38
    ldh [rIE], a
    xor e
    rst $38
    ld e, c
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $15
    rst $38
    ld b, d
    cp $00
    rst $38
    inc b
    db $fc
    add b
    rst $38
    jr @-$06

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
    ld c, $00
    nop
    inc de
    inc e
    nop
    nop
    rla
    jr jr_0fe_7c2d

jr_0fe_7c2d:
    nop
    daa
    jr c, jr_0fe_7c31

jr_0fe_7c31:
    nop
    daa
    inc a
    nop
    nop
    ld c, e
    ld a, h
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    ld c, e
    ld a, [hl]
    nop
    nop
    dec h
    ld a, $00
    nop
    inc hl
    ld a, $00
    nop
    dec h
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec c
    rrca
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
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    jr nz, jr_0fe_7c96

    ld [$200f], sp
    jr nz, @+$0b

    rrca
    ld [hl], b
    ld d, b
    ld [$700f], sp
    ld d, b
    ld [$700f], sp
    ld d, b
    inc b
    rlca
    di
    sub e
    db $e4
    rst $20
    or $97
    cp d
    ei
    push af
    sub a
    ld d, [hl]
    rst $38
    xor d
    rst $18

jr_0fe_7c96:
    dec hl
    rst $38
    db $dd
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld c, d
    rst $38
    call c, $d5ff
    rst $38
    xor d
    rst $38
    jp z, $95ff

    rst $38
    and c
    cp a
    adc d
    rst $38
    sub b
    sbc a
    add b
    rst $38
    adc b
    adc a
    ld b, c
    ld a, a
    ld b, $07
    ld [hl+], a
    ld a, $01
    ld bc, $1e1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub b
    ld [hl], b
    nop
    nop
    ret z

    jr c, jr_0fe_7ce7

jr_0fe_7ce7:
    nop
    add sp, $18
    nop
    nop
    db $e4
    inc e
    nop
    nop
    call nc, Call_000_003c
    nop
    ld [c], a
    ld a, $00
    nop
    jp nc, Jump_000_007e

    nop
    and d
    ld a, [hl]
    nop
    nop
    call nc, Call_000_007c
    nop
    and h
    ld a, h
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld e, b
    ld hl, sp+$00
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    xor b
    ld hl, sp+$00
    nop
    ld d, b
    ld hl, sp+$00
    nop
    inc l
    db $fc
    nop
    nop
    ld d, a
    rst $38
    add b
    add b
    ld a, [hl+]
    rst $38
    cp h
    db $fc
    dec b
    rst $38
    ld d, [hl]
    cp $02
    rst $38
    xor d
    cp $80
    rst $38
    dec d
    rst $38
    ldh [rIE], a
    xor e
    rst $38
    ld e, c
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $15
    rst $38
    ld b, d
    cp $00
    rst $38
    inc b
    db $fc
    add b
    rst $38
    jr @-$06

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $00
    nop
    inc de
    inc e
    nop
    nop
    rla
    jr jr_0fe_7ddd

jr_0fe_7ddd:
    nop
    daa
    jr c, jr_0fe_7de1

jr_0fe_7de1:
    nop
    daa
    inc a
    nop
    nop
    ld c, e
    ld a, h
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    ld c, e
    ld a, [hl]
    nop
    nop
    dec h
    ld a, $20
    jr nz, jr_0fe_7e1a

    ld a, $20
    jr nz, jr_0fe_7e20

    ccf
    ld [hl], b
    ld d, b
    ld [de], a
    rra
    ld [hl], b
    ld d, b
    dec d
    rra
    ld [hl], b
    ld d, b
    ld a, [bc]
    rrca
    di
    sub e
    db $ed
    rst $28
    or $97
    cp d
    ei
    push af
    sub a
    ld d, [hl]
    rst $38
    xor d
    rst $18
    dec hl
    rst $38
    db $dd
    rst $38

jr_0fe_7e1a:
    dec d
    rst $38
    xor d
    rst $38
    ld c, d
    rst $38

jr_0fe_7e20:
    call c, $d5ff
    rst $38
    xor d
    rst $38
    jp z, $95ff

    rst $38
    and c
    cp a
    adc d
    rst $38
    sub b
    sbc a
    add b
    rst $38
    adc b
    adc a
    ld b, c
    ld a, a
    ld b, $07
    ld [hl+], a
    ld a, $01
    ld bc, $1e1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub b
    ld [hl], b
    nop
    nop
    ret z

    jr c, jr_0fe_7e97

jr_0fe_7e97:
    nop
    add sp, $18
    nop
    nop
    db $e4
    inc e
    nop
    nop
    call nc, Call_000_003c
    nop
    ld [c], a
    ld a, $00
    nop
    jp nc, Jump_000_007e

    nop
    and d
    ld a, [hl]
    nop
    nop
    call nc, Call_000_007c
    nop
    and h
    ld a, h
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld e, b
    ld hl, sp+$00
    nop
    cp h
    db $fc
    nop
    nop
    ld d, a
    rst $38
    ret nz

    ret nz

    ld a, [hl+]
    rst $38
    cp h
    db $fc
    dec b
    rst $38
    ld d, [hl]
    cp $02
    rst $38
    xor d
    cp $80
    rst $38
    dec d
    rst $38
    ldh [rIE], a
    xor e
    rst $38
    ld e, c
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    and d
    cp $15
    rst $38
    ld b, d
    cp $00
    rst $38
    inc b
    db $fc
    add b
    rst $38
    jr @-$06

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
