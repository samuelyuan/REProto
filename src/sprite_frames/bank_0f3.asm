SECTION "ROM Bank $0f3", ROMX[$4000], BANK[$f3]

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
    jr nz, jr_0f3_404f

    nop
    nop
    jr nz, jr_0f3_4053

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    inc bc
    ld [bc], a
    rst $38
    ccf
    inc bc
    ld [bc], a
    ld [c], a
    ccf
    ld [bc], a
    inc bc
    ld [c], a

jr_0f3_404f:
    ccf
    ld [bc], a
    inc bc
    ld h, d

jr_0f3_4053:
    cp a
    inc bc
    ld [bc], a
    rst $38
    ccf
    inc bc
    ld [bc], a
    ldh [$3f], a
    inc bc
    ld [bc], a
    ldh [$3f], a
    inc bc
    inc bc
    add sp, -$01
    inc bc
    inc bc
    add sp, -$01
    inc bc
    inc bc
    rst $20
    rst $18
    inc bc
    inc bc
    jp nz, $01ff

    ld bc, $ff02
    nop
    nop
    jp nz, Jump_000_00ff

    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
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
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
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
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    dec a
    dec a
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
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

Call_0f3_40c0:
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_40d8:
    ldh a, [$f0]
    nop
    nop

jr_0f3_40dc:
    or b
    ldh a, [rP1]
    nop

jr_0f3_40e0:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_40d8

    jr c, @+$01

    jr nz, jr_0f3_40dc

Jump_0f3_40fc:
    jr nz, @+$01

    jr nz, jr_0f3_40e0

    inc hl
    db $fc
    ret nz

    ld b, b
    rst $38
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    dec c
    cp $c0
    ld b, b
    inc c
    rst $38
    ret nz

    ld b, b
    rst $38
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ld h, b
    and b
    rrca
    rst $38
    ld h, b
    and b
    rrca
    rst $38
    ldh [$e0], a
    ld a, [bc]
    ei
    ld b, b
    ret nz

    add hl, bc
    ld sp, hl
    add b
    add b
    ld [$00f8], sp
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
    ld bc, $0001
    nop
    ld b, $07
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
    ld a, a
    ld a, a
    nop
    nop
    ei
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $fb01
    rst $38
    ld bc, $7a01
    rst $38
    ld [bc], a
    inc bc
    ld a, [de]
    rst $38
    dec b
    ld b, $12
    rst $38
    rlca
    inc b
    ld [hl-], a
    rst $38
    rlca
    inc b
    rst $28
    ld a, a
    inc b
    rlca
    and c
    ld a, a
    ld [bc], a
    inc bc
    ld [hl], c
    cp a
    ld bc, $5101
    cp a
    ld bc, $3f01
    rst $18
    nop
    nop
    ldh a, [rIE]
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
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f3_423b

    nop
    nop
    jr nz, jr_0f3_423f

    nop
    nop
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    ld e, [hl]
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
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf

jr_0f3_423b:
    ccf
    nop
    nop
    ccf

jr_0f3_423f:
    ccf
    ldh a, [$f0]
    nop
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
    inc c
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f3_425c:
    ret c

    ld hl, sp+$00
    nop

jr_0f3_4260:
    ld hl, sp-$28
    nop
    nop
    call c, Call_000_00fc
    nop
    ld e, a
    cp a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    ld a, $ff
    jr nz, jr_0f3_425c

    ld e, $ff
    jr nz, jr_0f3_4260

    inc b
    rst $38
    ldh [rNR41], a
    dec b
    cp $c0
    ld b, b
    db $fd
    cp $c0
    ld b, b
    dec b
    cp $c0
    ld b, b
    dec b
    cp $c0
    ld b, b
    ld sp, hl
    cp $c0
    ld b, b
    inc bc
    db $fc
    add b
    add b
    inc bc
    db $fc
    add b
    add b
    inc bc
    db $fc
    add b
    add b
    inc bc
    db $fc
    add b
    add b
    rlca
    rst $38
    add b
    add b
    rlca
    cp $80
    add b
    rlca
    rst $38
    add b
    add b
    add a
    ld hl, sp-$80
    add b
    add e
    db $fc
    add b
    add b
    add b
    rst $38
    add b
    add b
    jp $80ff


    add b
    rst $38
    rst $38
    add b
    add b
    db $fc
    rst $38
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

    sub b
    sbc a
    ld b, b
    ret nz

    sub b
    sbc a
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
    rrca
    rrca
    ret nz

    ret nz

    adc a
    adc a
    ldh [$e0], a
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
    jr nz, jr_0f3_434f

    nop
    nop
    jr nz, jr_0f3_4353

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $9f01
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, d

jr_0f3_434f:
    ld a, a
    nop
    nop
    ld b, d

jr_0f3_4353:
    ld a, a
    nop
    nop
    ld e, a
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
    ld h, h
    ld e, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    inc hl
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
    db $10
    rra
    nop
    nop
    jr nz, jr_0f3_43bb

    nop
    nop
    jr nz, jr_0f3_43bf

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f3_43c7

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
    ld [hl], c
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld hl, sp-$08
    ld bc, $3801
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    ld a, [hl]

jr_0f3_43bb:
    ld a, [hl]
    nop
    nop
    ld b, [hl]

jr_0f3_43bf:
    ld a, [hl]
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]

jr_0f3_43c7:
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_43d8:
    ldh a, [$f0]
    nop
    nop

jr_0f3_43dc:
    or b
    ldh a, [rP1]
    nop

jr_0f3_43e0:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_43d8

    jr c, @+$01

    jr nz, jr_0f3_43dc

    jr nz, @+$01

    jr nz, jr_0f3_43e0

    ld hl, $e0fe
    jr nz, @-$01

    cp $e0
    jr nz, jr_0f3_440d

    rst $38
    and b
    ld h, b
    dec b

jr_0f3_440d:
    cp $c0
    ld b, b
    dec c
    cp $c0
    ld b, b
    db $fd
    cp $c0
    ld b, b
    rrca
    rst $38
    ret nz

    ld b, b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    rlca
    ei
    ret nz

    ret nz

    jp Jump_0f3_40fc


    ret nz

    add e
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
    ld b, c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
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
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
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
    add b
    add b
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
    jr nz, jr_0f3_44cf

    nop
    nop
    jr nz, jr_0f3_44d3

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $bf01
    rst $18
    nop
    nop
    or d
    rst $18
    nop
    nop
    or d

jr_0f3_44cf:
    rst $18
    nop
    nop
    or d

jr_0f3_44d3:
    rst $18
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    db $e4
    cp a
    nop
    nop
    and h
    rst $18
    nop
    nop
    ld h, e
    ld a, a
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
    inc b
    rlca
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
    add hl, bc
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
    rrca

jr_0f3_4530:
    nop
    nop
    rrca
    rrca
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
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_4558:
    ldh a, [$f0]
    nop
    nop

jr_0f3_455c:
    or b
    ldh a, [rP1]
    nop

jr_0f3_4560:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_4558

    jr c, @+$01

    jr nz, jr_0f3_455c

    jr nz, @+$01

    jr nz, jr_0f3_4560

    jr nz, @+$01

    ldh [rNR41], a
    db $fc
    rst $38
    ldh [rNR41], a
    inc b
    rst $38
    ld h, b
    and b
    inc b
    rst $38
    ldh [rNR41], a
    inc b
    rst $38
    ldh [rNR41], a
    db $fc
    rst $38
    ldh [rNR41], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    inc bc
    db $fd
    ldh [$e0], a
    pop bc
    cp $e0
    jr nz, jr_0f3_4530

    rst $38
    ret nz

    ret nz

    add d
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
    add d
    cp $00
    nop
    cp $fe
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
    ld hl, sp-$08
    nop
    nop
    cp b
    cp b
    nop
    nop
    cp b
    cp b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    rst $38
    rst $38
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
    jr nz, jr_0f3_464f

    nop
    nop
    jr nz, jr_0f3_4653

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $7f01
    sbc a
    ld bc, $7201
    sbc a
    ld bc, $3201

jr_0f3_464f:
    rst $18
    ld bc, $3201

jr_0f3_4653:
    rst $18
    ld bc, $ff01
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e401
    ld a, a
    ld bc, $6401
    sbc a
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld de, $001f
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    ld b, $07
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
    ld b, $07
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
    ld bc, $0001
    nop
    ld bc, $e001
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_46d8:
    ldh a, [$f0]
    nop
    nop

jr_0f3_46dc:
    or b
    ldh a, [rP1]
    nop

jr_0f3_46e0:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop

jr_0f3_46e8:
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_46d8

    jr c, @+$01

    jr nz, jr_0f3_46dc

    jr nz, @+$01

    jr nz, jr_0f3_46e0

    jr nz, @+$01

    ldh a, [rNR10]
    db $fc
    rst $38
    ldh a, [rNR10]
    ld b, $ff
    jr nc, jr_0f3_46dc

    ld b, $ff
    ld [hl], b
    sub b
    dec b
    db $fd
    ld [hl], b
    sub b
    db $fd
    db $fd
    jr nc, jr_0f3_46e8

    dec b
    db $fd
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    cp $f0
    ldh a, [$82]
    rst $38
    ldh a, [rNR10]
    dec b
    db $fd
    ldh [$e0], a
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
    inc c
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
    rst $38
    rst $38
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
    jr nz, jr_0f3_47cf

    nop
    nop
    jr nz, jr_0f3_47d3

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    rst $38
    ccf
    ld [bc], a
    inc bc
    ld a, [c]
    ccf
    ld [bc], a
    inc bc
    ld a, [c]

jr_0f3_47cf:
    ccf
    ld [bc], a
    inc bc
    ld a, [c]

jr_0f3_47d3:
    ccf
    rlca
    rlca
    ccf
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rrca
    dec bc
    ldh [rIE], a
    ld c, $09
    db $e4
    rst $38
    rlca
    ld b, $e4
    ld a, a
    ld bc, $a301
    cp a
    nop
    nop
    ld de, $001f
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
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
    rlca
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
    rrca
    rrca
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
    inc de
    rra
    nop
    nop
    rrca
    rrca
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_4858:
    ldh a, [$f0]
    nop
    nop

jr_0f3_485c:
    or b
    ldh a, [rP1]
    nop

jr_0f3_4860:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_4858

jr_0f3_4878:
    jr c, @+$01

    jr nz, jr_0f3_485c

    jr nz, @+$01

    jr nz, jr_0f3_4860

    jr nz, @+$01

    ldh a, [rNR10]
    cp $ff
    ld [hl], b
    sub b
    ld [bc], a
    rst $38
    ld [hl], b
    sub b
    dec b
    db $fd
    jr jr_0f3_4878

    dec b
    db $fd
    jr c, jr_0f3_485c

    db $fc
    db $fc
    cp b
    ret z

    inc b
    db $fc
    sbc b
    ld hl, sp+$04
    db $fc
    ld hl, sp-$08
    ld [bc], a
    cp $e8
    ld hl, sp+$02
    cp $f8
    ld hl, sp-$7e
    cp $a8
    ret c

    inc c
    db $fc
    ld [hl], b
    ld [hl], b
    inc c
    db $fc

jr_0f3_48b2:
    nop
    nop
    inc c
    db $fc

jr_0f3_48b6:
    nop
    nop
    jr jr_0f3_48b2

jr_0f3_48ba:
    nop
    nop
    jr jr_0f3_48b6

    nop
    nop
    jr jr_0f3_48ba

jr_0f3_48c2:
    nop
    nop
    add sp, -$08
    nop
    nop
    jr c, jr_0f3_48c2

    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
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
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    dec sp
    dec sp
    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    nop
    nop
    cp [hl]
    cp [hl]
    nop
    nop
    db $fc
    db $fc
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
    jr nz, jr_0f3_494f

    nop
    nop
    jr nz, jr_0f3_4953

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $7f01
    sbc a
    ld bc, $7201
    sbc a
    ld bc, $3201

jr_0f3_494f:
    rst $18
    ld bc, $3201

jr_0f3_4953:
    rst $18
    ld bc, $ff01
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $e201
    ld a, a
    nop
    nop
    ld [c], a
    sbc a
    nop
    nop
    ld h, c
    ld a, a
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
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    rrca
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
    dec bc
    rrca
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
    inc de
    rra
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
    rlca
    rlca
    nop
    nop
    inc b
    rlca
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_49d8:
    ldh a, [$f0]
    nop
    nop

jr_0f3_49dc:
    or b
    ldh a, [rP1]
    nop

jr_0f3_49e0:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop

jr_0f3_49e8:
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_49d8

    jr c, @+$01

    jr nz, jr_0f3_49dc

    jr nz, @+$01

    jr nz, jr_0f3_49e0

    jr nz, @+$01

    ldh a, [rNR10]
    db $fc
    rst $38
    ldh a, [rNR10]
    ld [bc], a
    rst $38
    jr nc, jr_0f3_49dc

    ld b, $ff
    ld [hl], b
    sub b
    dec b
    db $fd
    ld [hl], b
    sub b
    db $fd
    db $fd
    jr nc, jr_0f3_49e8

    dec b
    db $fd
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    cp $f0
    ldh a, [$c2]
    rst $38
    ldh a, [rNR10]
    add e
    rst $38
    ldh [$e0], a
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
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
    inc c
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
    db $10
    ldh a, [rP1]
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld a, b
    ld hl, sp+$00
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
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f3_4ad3

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $ff01
    ccf
    nop
    nop
    jp nc, Jump_000_00bf

    nop
    jp nc, Jump_000_00bf

    nop
    sub d

jr_0f3_4ad3:
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    db $e4
    cp a
    nop
    nop
    and h
    rst $18
    nop
    nop
    ld h, e
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
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f3_4b4f

    nop
    nop
    jr nz, jr_0f3_4b53

    nop
    nop
    jr nz, jr_0f3_4b57

    nop
    nop
    jr nz, jr_0f3_4b5b

    nop
    nop
    jr nz, jr_0f3_4b5f

    nop
    nop
    jr nz, jr_0f3_4b63

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
    inc bc
    inc bc

jr_0f3_4b30:
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
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp

jr_0f3_4b4f:
    nop
    jr @-$06

    nop

jr_0f3_4b53:
    nop
    ldh a, [$f0]
    nop

jr_0f3_4b57:
    nop

jr_0f3_4b58:
    ldh a, [$f0]
    nop

jr_0f3_4b5b:
    nop

jr_0f3_4b5c:
    or b
    ldh a, [rP1]

jr_0f3_4b5f:
    nop

jr_0f3_4b60:
    ldh a, [$b0]
    nop

jr_0f3_4b63:
    nop
    cp a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_4b58

    jr c, @+$01

    jr nz, jr_0f3_4b5c

    jr nz, @+$01

    jr nz, jr_0f3_4b60

    jr nz, @+$01

    ldh [rNR41], a
    db $fc
    rst $38
    ldh [rNR41], a
    nop
    rst $38
    ld h, b
    and b
    inc b
    rst $38
    ldh [rNR41], a
    inc b
    rst $38
    ldh [rNR41], a
    db $fc
    rst $38
    ldh [rNR41], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    inc bc
    db $fd
    ldh [$e0], a
    pop bc
    cp $e0
    jr nz, jr_0f3_4b30

    rst $38
    ret nz

    ret nz

    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ccf
    rst $38
    add b
    add b
    ld hl, $80ff
    add b
    ldh [rIE], a
    add b
    add b
    ldh [rIE], a
    add b
    add b
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
    ld b, c
    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    ld a, $fe
    nop
    nop
    ld a, [hl]
    cp $00
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
    inc e
    db $fc
    nop
    nop
    add $fe
    nop
    nop
    ld hl, sp-$08
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
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f3_4c53

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $df01
    ccf
    nop
    nop
    jp nc, Jump_000_00bf

    nop
    jp nc, Jump_000_00bf

    nop
    ld d, d

jr_0f3_4c53:
    ld a, a
    nop
    nop
    ld e, a
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
    ld h, h
    ld e, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    jr nz, jr_0f3_4caf

    nop
    nop
    jr nz, jr_0f3_4cb3

    nop
    nop
    jr nz, jr_0f3_4cb7

    nop
    nop
    jr nz, jr_0f3_4cbb

    nop
    nop
    jr nz, jr_0f3_4cbf

    nop
    nop
    jr nz, jr_0f3_4cc3

    nop
    nop
    jr nz, jr_0f3_4cc7

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
    jr nz, jr_0f3_4ce7

    nop
    nop
    rra
    rra
    nop
    nop
    rlca

jr_0f3_4caf:
    rlca
    nop
    nop
    rlca

jr_0f3_4cb3:
    rlca
    nop
    nop
    rrca

jr_0f3_4cb7:
    rrca
    nop
    nop
    rra

jr_0f3_4cbb:
    rra
    nop
    nop
    rra

jr_0f3_4cbf:
    rra
    ldh [$e0], a
    nop

jr_0f3_4cc3:
    nop
    db $10
    ldh a, [rP1]

jr_0f3_4cc7:
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_4cd8:
    ldh a, [$f0]
    nop
    nop

jr_0f3_4cdc:
    or b
    ldh a, [rP1]
    nop

jr_0f3_4ce0:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop

jr_0f3_4ce7:
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_4cd8

    jr c, @+$01

    jr nz, jr_0f3_4cdc

    jr nz, @+$01

jr_0f3_4cfe:
    jr nz, jr_0f3_4ce0

    ld hl, $e0fe
    jr nz, jr_0f3_4cfe

    cp $e0
    jr nz, jr_0f3_4d11

    rst $38
    and b
    ld h, b
    add hl, bc
    cp $c0
    ld b, b
    add hl, bc

jr_0f3_4d11:
    cp $c0
    ld b, b
    ld sp, hl
    cp $c0
    ld b, b
    rlca
    rst $38
    ret nz

    ld b, b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    rlca
    ei
    ret nz

    ret nz

    jp Jump_0f3_40fc


    ret nz

    add c
    rst $38
    add b
    add b

jr_0f3_4d30:
    ld b, c
    rst $38
    nop
    nop

jr_0f3_4d34:
    ld b, b
    rst $38
    add b
    add b

jr_0f3_4d38:
    ld b, b
    rst $38
    add b
    add b

jr_0f3_4d3c:
    ld b, b
    rst $38
    add b
    add b

jr_0f3_4d40:
    ld a, a
    rst $38
    ret nz

    ret nz

jr_0f3_4d44:
    ld h, b
    rst $38
    ld b, b
    ret nz

    ret nc

    rst $18
    ld b, b
    ret nz

    ret nc

    rst $18
    jr nz, jr_0f3_4d30

    ld d, b
    rst $18
    jr nz, jr_0f3_4d34

    ld d, b
    rst $18
    jr nz, jr_0f3_4d38

    ld d, b
    rst $18
    jr nz, jr_0f3_4d3c

    ld d, b
    rst $18
    jr nz, jr_0f3_4d40

    ld d, b
    rst $18
    jr nz, jr_0f3_4d44

    adc a
    adc a
    ret nz

    ret nz

    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    ld hl, sp-$08
    add e
    add e
    ldh a, [$f0]
    jp $c0c3


    ret nz

    ldh [$e0], a
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
    jr nz, jr_0f3_4dcf

    nop
    nop
    jr nz, jr_0f3_4dd3

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld bc, $df01
    cp a
    nop
    nop
    ld d, d
    ld a, a
    nop
    nop
    ld d, d

jr_0f3_4dcf:
    ld a, a
    nop
    nop
    ld [hl-], a

jr_0f3_4dd3:
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f3_4e1b

    nop
    nop
    jr nz, jr_0f3_4e1f

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
    inc hl
    ccf
    nop
    nop
    ld hl, $003f
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f3_4e37

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
    add e
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    ld [bc], a

jr_0f3_4e1b:
    cp $02
    inc bc
    inc b

jr_0f3_4e1f:
    db $fc
    ld bc, $0401
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    ld bc, $f001

jr_0f3_4e37:
    ldh a, [rSB]
    ld bc, $f838
    nop
    nop
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_4e58:
    ldh a, [$f0]
    nop
    nop

jr_0f3_4e5c:
    or b
    ldh a, [rP1]
    nop

jr_0f3_4e60:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_4e58

    jr c, @+$01

    jr nz, jr_0f3_4e5c

    jr nz, @+$01

    jr nz, jr_0f3_4e60

    inc hl
    db $fc
    ld b, b
    ret nz

    ei
    db $fc
    add b
    add b
    ld b, $f9
    add b
    add b
    rlca
    ld sp, hl
    nop
    nop
    rlca
    ld sp, hl
    nop
    nop
    rst $30
    ld sp, hl
    nop
    nop
    add hl, bc
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    adc [hl]
    ld a, [c]
    nop
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
    pop bc
    rst $38
    nop
    nop

jr_0f3_4ebc:
    ret nz

    rst $38
    add b
    add b

jr_0f3_4ec0:
    pop bc
    rst $38
    add b
    add b
    ccf
    ccf
    add b
    add b
    jr nz, jr_0f3_4f09

    add b
    add b
    jr nz, jr_0f3_4f0d

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
    jr nz, jr_0f3_4ebc

    db $10
    rra
    jr nz, jr_0f3_4ec0

    ld [$200f], sp
    ldh [$08], a
    rrca
    ld b, b
    ret nz

    rlca
    rlca
    add b
    add b
    inc bc
    inc bc
    cp b
    cp b
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
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

jr_0f3_4f09:
    nop
    nop
    nop
    nop

jr_0f3_4f0d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
    nop
    nop
    db $76
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    add hl, hl
    ccf
    nop
    nop
    jr z, jr_0f3_4fb7

    nop
    nop
    jr z, jr_0f3_4fbb

    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f3_4fc7

    nop
    nop
    jr nz, jr_0f3_4fcb

    nop
    nop
    jr nz, jr_0f3_4fcf

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
    ld [$030f], sp
    inc bc
    adc b
    adc a
    rlca
    rlca
    ld hl, sp-$01
    inc b
    rlca
    and $ff
    inc b
    rlca
    pop hl
    rst $38
    rlca
    rlca
    ldh [rIE], a
    inc b
    rlca
    add b

jr_0f3_4fb7:
    rst $38
    rlca
    rlca
    ret nz

jr_0f3_4fbb:
    rst $38
    inc b
    rlca
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f3_4fc7:
    nop
    nop
    nop
    nop

jr_0f3_4fcb:
    nop
    nop
    nop
    nop

jr_0f3_4fcf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    add b
    add b
    cp h
    rst $38
    ld b, b
    ret nz

    ld a, [$40ff]
    ret nz

    or $fd
    add b
    add b
    dec a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    scf
    rst $38
    add b
    add b
    ld h, c
    rst $38
    nop
    nop
    ld b, b
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
    ld l, a
    ld hl, sp-$80
    add b
    ccf
    ld hl, sp-$80
    add b
    dec hl
    db $ec
    add b
    add b
    rst $20
    db $e4
    add b
    add b
    rla
    db $f4
    ld b, b
    ret nz

    cpl
    call c, Call_0f3_40c0
    dec e
    xor $a0
    ld h, b
    dec sp
    ld a, [$20e0]
    ld a, [hl-]
    ei
    ldh [rNR41], a
    add hl, de
    ld sp, hl
    ldh [$e0], a
    add hl, bc
    ld sp, hl
    ldh [$e0], a
    dec bc
    ld a, [$e0e0]
    inc de
    ld a, [c]
    ldh [$e0], a
    ld hl, $e0e1
    jr nz, jr_0f3_508e

    pop hl
    ret nz

    ld b, b
    and b
    ldh [$80], a
    add b
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
    ld bc, $e001
    ldh [rTMA], a
    rlca

jr_0f3_508e:
    db $10
    ldh a, [$08]
    rrca
    ld [$10f8], sp
    rra
    ld [$20f8], sp
    ccf
    ld [$20f8], sp
    ccf
    jr c, @-$06

    db $10
    rra
    ld hl, sp-$08
    rra
    rra
    cp b
    ld hl, sp+$0f
    rrca
    ei
    cp e
    rrca
    rrca
    db $fd
    sbc $0b
    rrca
    rst $00
    ld hl, sp+$0f
    rrca
    add e
    db $fc
    ld e, $1f
    inc bc
    db $fd
    inc e
    rra
    ld [bc], a
    cp $1c
    rra
    rlca
    rst $38
    inc e
    rra
    sbc e
    rst $38
    inc e
    rra
    db $76
    cp $1c
    rra
    inc c
    db $fc
    rra
    rra
    ld hl, sp-$08
    inc c
    rrca
    ld [$0cf8], sp
    rrca
    ld [$0ff8], sp
    rrca
    ld hl, sp-$08
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$0cf8], sp
    rrca
    inc b
    db $fc
    inc c
    rrca
    inc b
    db $fc
    inc c
    rrca
    inc b
    db $fc
    ld a, [bc]
    rrca
    ld [bc], a
    cp $05
    rlca
    ld [bc], a
    cp $02
    inc bc
    add d
    cp $01
    ld bc, $ff41
    nop
    nop
    and c
    rst $38
    nop
    nop
    or b
    rst $38
    nop
    nop
    and b
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ret nz

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
    ld h, c
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
    jr c, jr_0f3_5170

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
    inc bc
    inc bc
    add b
    add b
    dec c
    ld c, $c0
    ld b, b
    rla
    jr jr_0f3_5193

    ret nz

    ld l, $31

jr_0f3_5156:
    add b
    add b
    daa
    dec sp
    nop
    nop
    daa
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp [hl]
    sbc $00
    nop
    ld a, h
    adc h
    nop
    nop
    add sp, $18
    nop
    nop

jr_0f3_5170:
    sub b
    ld [hl], b
    nop
    nop
    jr nz, jr_0f3_5156

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

jr_0f3_5193:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rTMA]
    rlca
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    db $10
    rra
    inc b
    db $fc
    db $10
    rra
    inc c
    db $fc
    rra
    rra
    ld hl, sp-$08
    rra
    rra
    ld hl, sp-$08
    rra
    rra
    ret c

    ld hl, sp+$0f
    rrca
    ld hl, sp-$28
    rrca
    rrca
    ld hl, sp-$28
    dec bc
    rrca
    ret c

    ld hl, sp+$0f
    rrca
    rst $38
    rst $38
    ld e, $1f
    ld bc, $1cfe
    rra
    ld bc, $1cfe
    rra
    ld bc, $1dfe
    rra
    ld bc, $1cff
    rra
    cp $fe
    inc e
    rra
    inc c
    db $fc
    rra
    rra
    ld hl, sp-$08
    inc c
    rrca
    ld [$0cf8], sp
    rrca
    ld [$0ff8], sp
    rrca
    ld hl, sp-$08
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$0cf8], sp
    rrca
    inc b
    db $fc
    inc c
    rrca
    inc b
    db $fc
    inc c
    rrca
    inc b
    db $fc
    ld a, [bc]
    rrca
    ld [bc], a
    cp $05
    rlca
    ld [bc], a
    cp $02
    inc bc
    add d
    cp $01
    ld bc, $ff41
    nop
    nop
    and c
    rst $38
    nop
    nop
    or b
    rst $38
    nop
    nop
    and b
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ret nz

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
    ld h, c
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
    jr c, jr_0f3_52f0

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f3_52e3:
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ldh [$e0], a
    inc h
    dec sp
    ld [hl], b
    sub b

jr_0f3_52f0:
    daa
    jr c, jr_0f3_52e3

    db $10
    rst $20
    ld hl, sp-$10
    db $10
    rst $28
    rra
    ldh [$e0], a
    rst $30
    rrca
    add b
    add b
    rst $30
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rTMA]
    rlca
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    db $10
    rra
    inc b
    db $fc
    db $10
    rra
    inc c
    db $fc
    rra
    rra
    ld hl, sp-$08
    rra
    rra
    ld hl, sp-$08
    rra
    rra
    ret c

    ld hl, sp+$0f
    rrca
    ld hl, sp-$28
    rrca
    rrca
    ld hl, sp-$28
    dec bc
    rrca
    ret c

    ld hl, sp+$0f
    rrca
    ld hl, sp-$08
    ld e, $1f
    inc c
    db $fc
    inc e
    rra
    inc bc
    rst $38
    inc e
    rra
    ld [bc], a
    db $fd
    dec e
    rra
    inc bc
    db $fc
    inc e
    rra
    add a
    ld hl, sp+$1c
    rra
    ld h, c
    cp $1f
    rra
    db $fc
    rst $38
    inc c
    rrca
    dec bc
    ei
    inc c
    rrca
    ld [$0ff8], sp
    rrca
    ld hl, sp-$08
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$0cf8], sp
    rrca
    inc b
    db $fc
    inc c
    rrca
    inc b
    db $fc
    inc c
    rrca
    inc b
    db $fc
    ld a, [bc]
    rrca
    ld [bc], a
    cp $05
    rlca
    ld [bc], a
    cp $02
    inc bc
    add d
    cp $01
    ld bc, $ff41
    nop
    nop
    and c
    rst $38
    nop
    nop
    or b
    rst $38
    nop
    nop
    and b
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ret nz

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
    ld h, c
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
    jr c, jr_0f3_5470

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f3_5470:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, c
    add b
    add b
    rst $28
    inc [hl]
    ld b, b
    ret nz

    cpl
    or $a0
    ld h, b
    cp $ff
    ret nc

    jr nc, jr_0f3_54b6

    dec de
    ld d, b
    or b
    ld b, $06
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

jr_0f3_54b6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_0f3_5557

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
    inc e
    inc de
    nop
    nop
    rra
    ld de, $0000
    ld [de], a
    dec e
    nop
    nop
    rrca
    ld [$0000], sp
    dec bc

jr_0f3_5557:
    inc c
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
    ld de, $001f
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
    rrca
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
    ld [$000f], sp
    nop
    ld [$000f], sp
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca

jr_0f3_55b8:
    nop
    nop
    rlca
    rlca

jr_0f3_55bc:
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
    rrca
    rrca
    add b
    add b
    jr nc, jr_0f3_5611

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f3_55b8

    add b
    rst $38
    jr nz, jr_0f3_55bc

    add b
    rst $38
    ld h, b
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    xor $d2
    rst $38
    cp $d7
    ld sp, hl
    cp $ff
    ld sp, hl
    rst $38

jr_0f3_55f4:
    ld a, $ff
    ld a, [hl]
    cp $1f
    rst $38
    sbc $fe
    inc e
    rst $38
    cp h
    call nz, $ff30
    ld [hl], h
    call z, $ff50
    ld a, b
    ret z

    sub b
    rst $38
    add sp, -$68
    ld a, c
    rst $38
    ret nc

    jr nc, jr_0f3_5620

jr_0f3_5611:
    rst $38
    jr nz, jr_0f3_55f4

    add a
    ld a, a
    ret nz

    ret nz

jr_0f3_5618:
    add $fe
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop

jr_0f3_5620:
    or d
    ld l, [hl]
    nop
    nop
    ld a, [c]
    adc $00
    nop
    ld l, c
    sbc a
    nop
    nop
    jr nc, @+$01

    add b
    add b

jr_0f3_5630:
    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, jr_0f3_5618

    jr nz, @+$01

    db $10
    ldh a, [rNR10]
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    db $10
    ldh a, [rIE]
    rst $38
    ldh a, [$f0]
    ldh a, [rIE]
    ldh a, [$f0]
    jr nz, @+$01

    jr nz, jr_0f3_5630

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    add b
    add b
    ld hl, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    inc h
    db $fc
    nop
    nop
    ld h, h
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
    jr jr_0f3_56cf

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
    inc e
    inc de
    nop
    nop
    rra
    ld de, $0000
    ld [de], a
    dec e
    nop
    nop
    rrca
    ld [$0000], sp
    dec bc

jr_0f3_56cf:
    inc c
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
    ld de, $001f
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
    add hl, bc
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
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

jr_0f3_5730:
    nop
    nop
    inc bc
    inc bc

jr_0f3_5734:
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
    nop
    nop
    rrca
    rrca
    add b
    add b
    jr nc, jr_0f3_5789

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f3_5730

    add b
    rst $38
    jr nz, jr_0f3_5734

    add b
    rst $38
    ld h, b
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    xor $d2
    rst $38
    cp $d7
    ld sp, hl
    cp $ff
    ld sp, hl
    rst $38

jr_0f3_576c:
    ld a, $ff
    ld a, [hl]
    cp $1f
    rst $38
    sbc $fe
    inc e
    rst $38
    cp h
    call nz, $ff30
    ld [hl], h
    call z, $ff50
    ld a, b
    ret z

    sub b
    rst $38
    add sp, -$68
    ld a, c
    rst $38
    ret nc

    jr nc, jr_0f3_5798

jr_0f3_5789:
    rst $38
    jr nz, jr_0f3_576c

    add a
    ld a, a
    ret nz

    ret nz

    add $fe
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop

jr_0f3_5798:
    or d
    ld l, [hl]
    nop
    nop
    ld a, [c]
    adc $00
    nop
    ld h, d
    sbc [hl]
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
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
    rst $38
    rst $38
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    ld l, b
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    pop bc
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld bc, $03ff
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ei
    rst $38
    ld bc, $ff01
    ei
    ld bc, $ff01
    ei
    ld bc, $7b01
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    inc bc
    inc bc
    add d
    rst $38
    inc bc
    inc bc
    add d
    rst $38
    inc bc
    inc bc
    and d
    rst $38
    inc bc
    inc bc
    and d
    rst $38
    inc bc
    inc bc
    xor l
    di
    inc bc
    inc bc
    rst $28
    di
    ld bc, $8f01
    di
    inc bc
    inc bc
    db $eb
    rst $30
    rlca
    rlca
    rst $28
    ldh a, [rTAC]
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    add c
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $4001
    rst $38
    nop
    nop
    and b
    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr z, jr_0f3_58c3

    nop
    nop
    inc d
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
    rla
    rra
    nop
    nop
    jr jr_0f3_58b7

    nop
    nop
    jr jr_0f3_58bb

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
    inc c
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

jr_0f3_58b7:
    rlca
    nop
    nop
    rrca

jr_0f3_58bb:
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop

jr_0f3_58c3:
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $0e
    ret nz

    ret nz

    dec a
    inc sp
    ld a, a
    rst $38
    jp c, Jump_0f3_7ee6

    pop bc
    ld h, h
    sbc h
    adc a
    cp $d8

jr_0f3_590b:
    jr c, jr_0f3_590b

    rst $38
    ld a, b
    ld hl, sp-$01
    rst $38
    ldh a, [$f0]
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    xor h
    ld a, h
    nop
    nop
    cp b
    ld a, b

jr_0f3_5922:
    nop
    nop
    ldh a, [$f0]

jr_0f3_5926:
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

jr_0f3_593e:
    nop
    nop
    jr nz, jr_0f3_5922

jr_0f3_5942:
    nop
    nop
    jr nz, jr_0f3_5926

jr_0f3_5946:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
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
    jr nz, jr_0f3_593e

    nop
    nop
    jr nz, jr_0f3_5942

    nop
    nop
    jr nz, jr_0f3_5946

    nop
    nop
    jr nz, @-$1e

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
    rrca
    rrca
    nop
    nop
    jr nc, @+$41

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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    pop af
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    xor $f1
    nop
    nop
    xor $f1
    nop
    nop
    db $fd
    di
    nop
    nop
    ld a, l
    ld [hl], e
    nop
    nop
    ld a, l
    ld [hl], e
    nop
    nop
    ld a, a
    ld [hl], b
    nop
    nop
    ld b, a
    ld a, b
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
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr z, jr_0f3_5a3b

    nop
    nop
    inc d
    rra
    nop
    nop
    ld a, [bc]
    rrca
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
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld b, $07
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
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop

jr_0f3_5a32:
    ld bc, $0001
    nop

jr_0f3_5a36:
    ld bc, $0001
    nop
    inc bc

jr_0f3_5a3b:
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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f3_5a32

    nop
    nop
    jr nz, jr_0f3_5a36

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
    ldh [$e0], a
    nop
    nop
    or b
    ldh a, [rP1]
    nop
    sbc b
    ld hl, sp+$00
    nop
    sbc b
    ld hl, sp+$00
    nop
    sub h
    db $fc

jr_0f3_5a8a:
    nop
    nop
    ld a, e
    rst $20

jr_0f3_5a8e:
    db $fc
    db $fc
    db $fc
    rst $38

jr_0f3_5a92:
    ld [bc], a
    cp $ff
    db $fc
    cp $02
    rst $28
    rst $30
    xor h
    call c, $77ef
    ldh a, [$f0]
    rst $38
    ld a, a
    ldh [$e0], a
    ld a, b
    ld hl, sp+$00
    nop
    jr nz, jr_0f3_5a8a

    nop
    nop
    jr nz, jr_0f3_5a8e

    nop
    nop
    jr nz, jr_0f3_5a92

    nop
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    add h
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
    inc e
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
    ld [$00f8], sp
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
    rlca
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    rra
    rra
    nop
    nop
    jr c, jr_0f3_5b6f

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
    sub a
    rst $38
    nop
    nop
    cp e
    db $fc
    nop
    nop
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    ld hl, sp+$00
    nop
    adc $f9
    nop
    nop
    ld h, a
    ld a, b
    nop
    nop
    ld h, e
    ld a, h
    nop
    nop
    ld a, a
    ld a, [hl]
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
    ld h, b

jr_0f3_5b6f:
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    jr z, jr_0f3_5bbb

    nop
    nop
    inc d
    rra
    nop
    nop
    ld a, [bc]
    rrca
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
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld b, $07
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
    inc bc

jr_0f3_5bbb:
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
    ldh a, [$f0]
    nop
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
    or h
    db $ec
    nop
    nop
    ld hl, sp-$48

jr_0f3_5be2:
    nop
    nop
    cp b
    add sp, $00
    nop
    ld hl, sp-$18

jr_0f3_5bea:
    nop
    nop
    ld l, b
    ld hl, sp+$00
    nop
    jr nc, jr_0f3_5be2

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    jr nc, jr_0f3_5bea

    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    ld e, b
    ld hl, sp+$00
    nop
    sbc b
    ld hl, sp+$00
    nop
    jr z, @-$06

    nop
    nop
    add sp, -$28
    nop
    nop
    db $fc
    db $fc

jr_0f3_5c12:
    nop
    nop
    ld a, e
    rst $38
    add b
    add b
    cp a
    ld a, b
    ld h, b
    ldh [$b9], a
    ld a, [hl]
    ret c

    jr c, jr_0f3_5c9f

    ld sp, hl
    adc h
    ld [hl], h
    ld a, c
    rst $00
    sub $aa
    ccf
    rst $38
    add [hl]
    ld a, [$e121]
    db $fc
    db $fc
    jr nz, jr_0f3_5c12

    nop
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    add h
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
    inc e
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
    ld [$00f8], sp
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

jr_0f3_5c9f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f3_5d03

    nop
    nop
    jr nz, jr_0f3_5d07

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
    rra
    nop
    nop
    rst $30
    rst $38
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    ld [bc], a
    inc bc
    ld h, d
    rst $38
    inc bc
    ld [bc], a
    rst $38
    ccf
    inc bc
    ld [bc], a
    ld [c], a
    ccf
    ld [bc], a
    inc bc
    ld [c], a

jr_0f3_5d03:
    ccf
    ld [bc], a
    inc bc
    ld h, d

jr_0f3_5d07:
    cp a
    inc bc
    ld [bc], a
    rst $38
    ccf
    inc bc
    ld [bc], a
    ldh [$3f], a
    inc bc
    ld [bc], a
    ldh [$3f], a
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    rst $28
    rst $18
    rrca
    rrca
    jp nz, Jump_000_1eff

    rra
    ld [hl], d
    rst $38
    inc de
    rra
    sbc a
    rst $38
    inc de
    rra
    jr @+$01

    rra
    rra
    ld a, b
    rst $38
    daa
    ccf
    jr c, @+$01

    ccf
    ccf
    ld hl, sp-$01
    ld h, $3f
    jr nc, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f3_5d8c:
    ldh a, [$f0]
    nop
    nop

jr_0f3_5d90:
    or b
    ldh a, [rP1]
    nop

jr_0f3_5d94:
    ldh a, [$b0]
    nop
    nop
    cp a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f3_5d8c

    jr c, @+$01

    jr nz, jr_0f3_5d90

    jr nz, @+$01

    jr nz, jr_0f3_5d94

    inc hl
    db $fc
    ret nz

    ld b, b
    rst $38
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    dec c
    cp $c0
    ld b, b
    inc c
    rst $38
    ret nz

    ld b, b
    rst $38
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    ld c, a
    rst $38
    ret nz

    ret nz

    adc a
    rst $38
    ld h, b
    and b
    rrca
    rst $38
    ld h, b
    and b
    rrca
    rst $38
    ldh [$e0], a
    ld a, [bc]
    ei
    ld b, b
    ret nz

    adc c
    ld sp, hl

jr_0f3_5dea:
    add b
    add b
    ld c, b
    ld hl, sp+$00
    nop
    jr z, jr_0f3_5dea

jr_0f3_5df2:
    nop
    nop
    jr c, @-$06

jr_0f3_5df6:
    nop
    nop
    jr c, jr_0f3_5df2

    nop
    nop
    jr c, jr_0f3_5df6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr c, jr_0f3_5e7f

    nop
    nop
    jr c, @+$41

    nop
    nop
    dec sp
    inc a
    nop
    nop
    ccf
    jr c, jr_0f3_5e4d

jr_0f3_5e4d:
    nop
    ccf
    jr c, jr_0f3_5e51

jr_0f3_5e51:
    nop
    ccf
    jr c, jr_0f3_5e55

jr_0f3_5e55:
    nop
    dec de
    inc e
    nop
    nop
    jr jr_0f3_5e7b

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
    ld a, [bc]
    rrca
    nop
    nop
    dec b

jr_0f3_5e7b:
    rlca
    nop
    nop
    ld [bc], a

jr_0f3_5e7f:
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
    ld hl, sp-$08
    nop
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
    pop af
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ld [$00fe], a
    nop
    db $ec
    db $fc
    nop
    nop
    xor h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    inc l
    db $fc
    nop
    nop
    ld h, $fe
    nop
    nop
    and [hl]
    ld a, [hl]
    ret nz

    ret nz

    xor l
    ld a, l
    ldh [rNR41], a
    ccf
    rst $38
    ld [hl], b
    sub b
    rst $38
    ccf
    sub b
    ldh a, [rIE]
    ccf
    ldh [$e0], a
    inc bc
    rst $38
    ret nz

    ret nz

    or $fe
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
    ld b, c
    rst $38
    nop
    nop
    and c
    rst $38
    nop
    nop
    or b
    rst $38
    add b
    add b
    and b
    rst $38
    add b
    add b
    cp a
    rst $38
    add b
    add b
    jp $80ff


    add b
    ret nz

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
    ld h, c
    ld a, a
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
    jr c, jr_0f3_5fae

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
    rra
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop

jr_0f3_5fae:
    dec de
    rra
    nop
    nop
    dec a
    ld a, $00
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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
    ld d, h
    ld a, a
    nop
    nop
    ld d, h
    ld a, a
    nop
    nop
    inc a
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    sbc $fe
    nop
    nop
    rst $38
    reti


    nop
    nop
    pop de
    rst $38
    add b
    add b
    cp a
    ld a, a
    add b
    add b
    ld hl, sp-$01
    ldh [$e0], a
    ldh a, [rIE]
    ldh a, [$d0]
    ldh [rIE], a
    ld [hl], b
    sub b
    ld b, b
    rst $38
    ld [hl], b
    sub b
    ld c, h
    di
    ldh a, [$90]
    ld e, [hl]
    pop hl
    ldh a, [$90]
    ld e, l
    db $e3
    ldh a, [$90]
    ei
    db $e4
    ldh a, [$f0]
    rlca
    ld hl, sp+$58
    ld hl, sp+$00
    rst $38
    ret c

    ld hl, sp-$01
    rst $38
    ldh a, [$f0]
    ld [bc], a
    cp $e0
    ldh [rSC], a
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
    dec b
    rst $38
    nop
    nop
    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, b
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    jr nz, @+$01

    add b
    add b
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
    add d
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
    rrca
    rrca
    nop
    nop
    jr nc, jr_0f3_6147

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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    sbc $ff
    ld bc, $ed01
    di
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    and a
    rst $38
    inc bc
    inc bc
    and d
    rst $38
    ld [bc], a
    inc bc
    and d
    rst $38
    ld [bc], a
    inc bc
    and d
    rst $38
    ld bc, $e201

jr_0f3_6147:
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, @+$41

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
    jr nz, jr_0f3_61ab

    nop
    nop
    ld e, $1f
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
    ld e, $1f
    nop
    nop
    rla
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f3_61d3

    nop
    nop
    jr nz, jr_0f3_61d7

    nop
    nop
    jr nz, jr_0f3_61db

    nop
    nop
    jr nz, jr_0f3_61df

    nop
    nop
    jr nz, jr_0f3_61e3

    nop
    nop
    inc e
    rra
    nop
    nop

jr_0f3_61aa:
    rrca

jr_0f3_61ab:
    rrca
    nop
    nop

jr_0f3_61ae:
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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f3_61aa

    nop
    nop
    jr nz, jr_0f3_61ae

    nop
    nop
    ld h, b
    ldh [rP1], a

jr_0f3_61d3:
    nop
    ret nz

    ret nz

    nop

jr_0f3_61d7:
    nop
    ret nz

    ret nz

    nop

jr_0f3_61db:
    nop
    ldh a, [$f0]
    nop

jr_0f3_61df:
    nop
    ld hl, sp-$38
    nop

jr_0f3_61e3:
    nop
    adc h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    add a
    cp $80
    add b
    inc bc
    db $fc
    add b
    add b
    inc bc
    db $fc
    add b
    add b
    ld h, a
    sbc h
    add b
    add b
    rst $30
    inc c
    add b
    add b
    rst $28
    inc e
    add b
    add b
    rst $18
    daa
    add b
    add b
    ld a, [hl-]
    rst $00
    ret nz

    ret nz

    ld b, $ff
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rrca
    rst $38
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
    inc [hl]
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
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, h
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    ld e, $1e
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld bc, $0f01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rrca
    rrca
    add a
    rst $38
    rra
    rra
    rst $38
    rst $38
    cpl
    ccf
    rst $38
    rst $38
    ld c, a
    ld a, a
    sub e
    rst $38
    ld b, a
    ld a, a
    sub c
    rst $38
    ld b, e
    ld a, a
    db $10
    rst $38
    ld b, b
    ld a, a
    db $10
    rst $38
    ld b, h
    ld a, a
    rra
    rst $38
    adc a
    rst $30
    ldh a, [rIE]
    sbc c
    jp hl


    db $10
    rst $38
    sbc c
    jp hl


    db $10
    rst $38
    sbc c
    jp hl


    rst $38
    rst $38
    sbc c
    jp hl


    nop
    rst $38
    ld sp, hl
    ld sp, hl
    nop
    rst $38
    ld a, [$00fb]
    rst $38
    cp $f7
    nop
    rst $38
    cp [hl]
    rst $38
    nop
    rst $38
    ld e, c
    ld l, c
    nop
    rst $38
    jr nc, @+$32

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
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    pop af
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    di
    nop
    nop
    di
    di
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ret nc

    or b
    nop
    nop
    ret nc

    or b
    add b
    add b
    ret nc

    or b
    add b
    add b
    ret nc

    or b
    add c
    add c
    ld [hl], b
    ldh a, [$81]
    add c
    ld hl, sp-$08
    cp $ff
    cp b
    ld a, b
    di
    db $fc
    or b
    ld [hl], b
    di
    db $fc

jr_0f3_6366:
    and b
    ld h, b
    di
    db $fc
    ld b, b
    ret nz

    ldh [rIE], a

jr_0f3_636e:
    add b
    add b
    db $e3
    rst $38

jr_0f3_6372:
    nop
    nop
    call c, Call_000_00fc
    nop
    jr jr_0f3_6372

    nop
    nop
    jr nc, jr_0f3_636e

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f3_6366

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
    ld b, b
    ret nz

    nop
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
    ldh a, [$f0]

jr_0f3_63c2:
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
    jr nz, jr_0f3_63c2

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $1c01
    inc e
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    ld l, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld [hl], e
    rst $38
    rst $38
    cp e
    rst $00
    db $e3
    rst $38
    add c
    rst $38
    jp nz, $43ff

    ld a, a
    jp nz, Jump_000_3cff

    inc a
    ld h, [hl]
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    add e
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
    jr nz, jr_0f3_64bf

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
    inc de
    rra
    nop
    nop
    jr nz, jr_0f3_64d3

    nop
    nop
    jr nz, jr_0f3_64d7

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
    ld a, a
    ld a, a
    nop
    nop
    add hl, sp
    add hl, sp
    nop
    nop
    ld a, c
    ld a, c
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
    ld a, a

jr_0f3_64bf:
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

jr_0f3_64d3:
    nop
    nop
    nop
    nop

jr_0f3_64d7:
    nop
    nop
    nop
    nop
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
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    ld a, b
    rst $38
    add b
    add b

jr_0f3_64f4:
    db $f4
    rst $38
    add b
    add b

jr_0f3_64f8:
    db $fd
    ei
    nop
    nop
    adc d
    cp $00
    nop
    rst $38
    rst $38
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

    ld a, a
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    jr nz, jr_0f3_64f4

    ld c, $ff
    jr nz, jr_0f3_64f8

    ld [$10ff], sp
    ldh a, [$f0]
    rst $38
    db $10
    ldh a, [$0c]
    rst $38
    ldh a, [rNR10]
    inc de
    di
    ld l, b
    sbc b
    ldh [$e0], a
    sbc b
    add sp, $20
    ldh [rPCM12], a
    ld c, [hl]
    ld d, b
    ldh a, [$5f]
    ld h, l
    ld d, b
    ldh a, [$3f]
    ccf
    ld c, b
    ld hl, sp+$3b
    ccf
    ld c, b
    ld hl, sp+$1f
    rra
    ld b, h
    db $fc
    dec bc
    dec c
    ld b, h
    db $fc
    ld a, [bc]
    dec c
    db $fc
    db $fc
    dec b
    ld b, $fc
    db $fc
    dec b
    ld b, $84
    db $fc
    dec b
    ld b, $84
    db $fc
    inc bc
    inc bc
    adc b
    ld hl, sp+$00
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
    ld a, $3e
    nop
    nop
    pop bc
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld bc, $03ff
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ei
    rst $38
    ld bc, $ff01
    ei
    nop
    nop
    ei
    rst $38
    rrca
    rrca
    or a
    rst $08
    rra
    rra
    rst $38
    rst $38
    cpl
    ccf
    sub e
    rst $38
    ld b, a
    ld a, a
    sub c
    rst $38
    ld b, e
    ld a, a
    db $10
    rst $38
    ld b, b
    ld a, a
    db $10
    rst $38
    ld b, h
    ld a, a
    rra
    rst $38
    adc a
    rst $30
    ldh a, [rIE]
    sbc c
    jp hl


    db $10
    rst $38
    sbc c
    jp hl


    db $10
    rst $38
    sbc c
    jp hl


    rst $38
    rst $38
    sbc c
    jp hl


    nop
    rst $38
    ld sp, hl
    ld sp, hl
    nop
    rst $38
    ld a, [$00fb]
    rst $38
    cp $f7
    nop
    rst $38
    cp [hl]
    rst $38
    nop
    rst $38
    ld e, c
    ld l, c
    nop
    rst $38
    jr nc, @+$32

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
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    pop af
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    di
    nop
    nop
    di
    di
    nop
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0f3_6666:
    nop
    nop
    rst $30
    ld sp, hl
    rst $38
    rst $38
    rst $30
    ld hl, sp+$7f
    ld hl, sp-$19
    ld hl, sp+$5f
    jp hl


    sub b
    rst $38

jr_0f3_6676:
    ld a, [hl]
    cp $17
    rst $38
    ld hl, sp-$08
    jr c, jr_0f3_6676

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f3_6666

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
    ld b, b
    ret nz

    nop
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
    ldh a, [$f0]

jr_0f3_66c2:
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
    jr nz, jr_0f3_66c2

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    dec c
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr c, jr_0f3_68ff

    nop
    nop
    jr c, jr_0f3_6903

    nop
    nop
    dec sp
    inc a
    nop
    nop
    ccf
    jr c, jr_0f3_68cd

jr_0f3_68cd:
    nop
    ccf
    jr c, jr_0f3_68d1

jr_0f3_68d1:
    nop
    ccf
    jr c, jr_0f3_68d5

jr_0f3_68d5:
    nop
    dec de
    inc e
    nop
    nop
    jr jr_0f3_68fb

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
    ld a, [bc]

jr_0f3_68fb:
    rrca
    nop
    nop
    dec b

jr_0f3_68ff:
    rlca
    nop
    nop
    ld [bc], a

jr_0f3_6903:
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
    ld hl, sp-$08
    nop
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
    pop af
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ld [$00fe], a
    nop
    db $ec
    db $fc
    nop
    nop
    xor h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    db $f4
    nop
    nop
    inc a
    db $e4
    nop
    nop
    ld a, $e6
    nop
    nop
    cp [hl]
    ld h, [hl]
    ret nz

    ret nz

    cp l
    ld h, l
    ldh [rNR41], a
    ccf
    rst $38
    ld [hl], b
    sub b
    rst $38
    ccf
    sub b
    ldh a, [rIE]
    ccf
    ldh [$e0], a
    rlca
    rst $38
    ret nz

    ret nz

    ld hl, sp-$08
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
    add d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld h, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    add a
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
    ld [bc], a
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld a, h
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
    ld c, $0e
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld l, d
    halt
    nop
    add c
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0301
    rst $38
    nop
    nop
    adc d
    rst $38
    nop
    nop
    rst $38
    ld a, [$0000]
    db $fd
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    add a
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    and a
    rst $38
    ld a, [bc]
    rrca
    jr nz, @+$01

    ld b, $07
    jr nz, @+$01

    inc bc
    inc bc
    db $10
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $8801
    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

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
    add b
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
    sbc e
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
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
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld de, $001f
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    nop
    nop
    dec d
    dec de
    nop
    nop
    dec bc
    dec c
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

jr_0f3_6ad8:
    adc l
    adc e
    ret nz

    ld b, b
    add a
    add a
    ld b, b
    ret nz

    rlca
    rlca
    ret nz

    ret nz

    add l
    add [hl]
    ret nz

    ld b, b
    add l
    add [hl]
    ldh [rNR41], a
    push hl
    and $e0
    jr nz, @+$01

    db $fc
    ldh [rNR41], a
    ei
    db $fc
    jr nz, jr_0f3_6ad8

    pop bc
    cp $c0
    ld b, b
    add b
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld b, [hl]
    cp $00
    nop
    db $fc
    db $fc

jr_0f3_6b0e:
    nop
    nop
    jr z, @-$06

jr_0f3_6b12:
    nop
    nop
    jr z, jr_0f3_6b0e

    nop
    nop
    jr z, jr_0f3_6b12

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
    add h
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
    add d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    cp c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, a
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add d
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
    adc b
    ld hl, sp+$00
    nop
    ldh a, [$f0]
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
    dec b
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
    add hl, bc
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld de, $001f
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    dec c
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
    rra
    rra
    rrca
    rrca
    db $e3
    rst $38
    inc de
    rra
    ldh [rIE], a
    inc de
    rra
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    inc de
    rra
    db $10
    rra
    inc de
    rra
    rrca
    rrca
    ld [de], a
    ld e, $00
    nop
    inc d
    inc e
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

jr_0f3_6dab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    inc c
    rrca
    db $10
    ldh a, [rNR10]
    rra
    ld [$20f8], sp
    ccf
    ld [$20f8], sp
    ccf
    jr @-$06

    ccf
    ccf
    ldh a, [$f0]
    ccf
    ccf
    ldh a, [$f0]
    ccf
    ccf
    cp b
    ld hl, sp+$7f
    ld a, a
    db $fc
    cp h
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    ret z

    rst $38
    pop bc
    rst $38
    sub b
    rst $38
    ld bc, $f0ff
    rst $38
    db $76
    adc d
    ld c, a
    rst $38
    inc e
    db $e4
    add b
    rst $38
    ld hl, sp-$78
    add c
    rst $38
    ld hl, sp-$78
    inc bc
    rst $38
    ldh a, [rNR10]
    rst $20
    rst $38
    ldh a, [$d0]
    rra
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ret nc

    ldh a, [rSC]
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ret nc

    jr nc, jr_0f3_6dab

    cp $e0
    ldh [rSCY], a
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
    pop bc
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld h, c
    rst $38
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
    ld a, [hl]
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
    ld a, [hl]
    ld a, [hl]
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
    ld bc, $0001
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
    ccf
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld h, d
    ld e, a
    nop
    nop
    ld h, h
    ld e, a
    nop
    nop
    inc h
    ccf
    nop
    nop
    jr z, jr_0f3_6f0f

    nop
    nop
    ld a, $3f
    nop
    nop
    ld hl, $003f
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
    jr nz, jr_0f3_6f27

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc c
    rrca
    nop
    nop
    ld b, $07
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
    inc hl
    ccf
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld [hl-], a
    ccf
    nop
    nop
    ld a, h

jr_0f3_6f0f:
    ld a, a
    nop
    nop
    db $fc
    rst $38
    ld bc, $f401
    rst $30
    inc bc
    inc bc
    db $fc
    rst $38
    inc b
    rlca
    ld a, b
    rst $38
    inc bc
    inc bc
    jr @+$01

    nop
    nop
    rst $00

jr_0f3_6f27:
    rst $38

jr_0f3_6f28:
    nop
    nop
    scf
    ccf
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld bc, $0701
    rlca
    ret nz

    ret nz

jr_0f3_6f44:
    jr jr_0f3_6f65

    jr nz, jr_0f3_6f28

    jr nz, jr_0f3_6f89

    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    jr nc, jr_0f3_6f44

    ld a, a
    ld a, a
    ldh [$e0], a
    ld a, a
    ld a, a
    ldh [$e0], a
    ld a, a
    ld a, a
    ld h, b
    ldh [rIE], a
    rst $38
    ldh a, [rSVBK]
    rst $38

jr_0f3_6f65:
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    adc h
    db $fc
    rst $08
    rst $38
    add h
    db $fc
    ld b, a
    rst $38
    inc b
    db $fc
    add b
    rst $38
    inc b
    db $fc
    add b
    rst $38
    add sp, $18
    ld a, c
    cp $e8
    jr jr_0f3_6f8c

    cp $e8
    jr jr_0f3_6f98

jr_0f3_6f89:
    cp $a8
    ld e, b

jr_0f3_6f8c:
    add hl, de
    ld sp, hl
    ld hl, sp+$08
    jr nc, @-$0e

    db $fc
    cp h
    ldh a, [$f0]
    db $e4
    db $fc

jr_0f3_6f98:
    db $10
    ldh a, [$e6]
    ld a, [$f010]
    ld a, h
    ld a, h
    db $10
    ldh a, [$3c]
    inc h
    ld [$18f8], sp
    jr @+$0a

    ld hl, sp+$00
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08

jr_0f3_6fc6:
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
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0f3_6fc6

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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    cp b
    rst $38
    nop
    nop
    sbc a
    rst $38
    ld bc, $6201
    cp a
    ld bc, $4401
    cp a
    nop
    nop
    add h
    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ld a, $3f
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
    ld b, c
    ld a, a
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $1e01
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    ld b, $ff
    ld [$0a0f], sp
    ei
    dec bc
    rrca
    ld [de], a
    di
    rlca
    rlca
    ld [c], a
    db $e3
    rra
    rra
    add c
    add c
    ccf
    ccf
    nop
    nop
    ld b, a
    ld a, a
    ld bc, $2301
    ccf
    add c
    add c
    ld de, $811f
    add c
    ld [$c10f], sp
    pop bc
    inc b
    rlca
    ld b, b
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
    add b
    add b
    ld bc, $80ff
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ei
    rst $38
    nop
    nop
    rst $38
    ei
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]

jr_0f3_70e8:
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    jr jr_0f3_70e8

    adc a
    rst $38
    ld [$86f8], sp
    rst $38
    ld [$00f8], sp
    rst $38
    ld [$fff8], sp
    db $fc
    ret nc

    jr nc, jr_0f3_710e

    cp $a0
    ld h, b
    dec c
    cp $d0
    jr nc, @+$1f

    cp $f0
    jr nc, jr_0f3_713f

    di

jr_0f3_710e:
    ld a, b
    ld hl, sp-$0f
    pop af
    db $ec
    db $fc
    ld h, b
    ldh [$dc], a
    db $f4
    ld h, b
    ldh [$78], a
    ld l, b
    ld h, b
    ldh [$30], a
    jr nc, jr_0f3_7181

    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp

jr_0f3_713f:
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

jr_0f3_7181:
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    or b
    rst $08
    ld bc, $7f01
    adc a
    ld bc, $6101
    sbc a
    ld bc, $6201
    sbc a
    ld bc, $5201
    cp a
    ld bc, $5401
    cp a
    ld bc, $7f01
    sbc a
    ld bc, $e001
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $c001
    ld a, a
    nop
    nop
    ldh [rIE], a
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
    jr nz, @+$41

    nop
    nop
    ld a, b
    ld a, a
    ld bc, $8701
    rst $38
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    rlca
    rlca
    inc b
    rst $38
    ccf
    ccf
    add h
    rst $38
    ld a, a
    ld a, a
    inc e
    rst $38
    adc [hl]
    cp $e4
    rst $20
    ld c, h
    ld a, h
    ld [bc], a
    inc bc
    ld b, [hl]
    ld a, [hl]
    ld bc, $2601
    ld a, $01
    ld bc, $1818
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
    ld a, $3e
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
    add b
    add b
    ld bc, $80ff
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ei
    rst $38
    nop
    nop
    rst $38
    ei
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a

jr_0f3_7268:
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    jr jr_0f3_7268

    ccf
    rst $38
    ld [$4ef8], sp
    rst $38
    ld [$46f8], sp
    rst $38
    ld [$81f8], sp
    cp $c8
    jr c, @-$01

    cp $d0
    jr nc, @+$07

    cp $d8
    jr c, jr_0f3_728e

    cp $d4
    inc l
    inc c
    rst $38

jr_0f3_728e:
    or $0e
    ld a, [de]
    ei
    ld [hl], a
    adc l
    ld sp, hl
    ld sp, hl
    dec b
    rst $38
    ld [hl], b
    ldh a, [$fe]
    cp $60
    ldh [rP1], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    ld l, $3f
    nop
    nop
    inc l
    inc sp
    nop
    nop
    ld e, a
    ld h, e
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
    cp b
    rst $00
    nop
    nop
    or l
    rst $08
    nop
    nop
    rst $38
    rst $38
    ld bc, $c801
    cp a
    ld bc, $f401
    ld e, a
    ld bc, $e801
    ld a, a
    nop
    nop
    add sp, -$61
    nop
    nop
    ld [hl], h
    ld a, a
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
    ld de, $001f
    nop
    ld sp, $0f3f
    rrca
    rst $08
    rst $38
    ld de, $e01f
    rst $38
    ld de, $e01f
    rst $38
    add hl, bc
    rrca
    ldh [rIE], a
    ld de, $bf1f
    cp a
    ld de, $a01f
    cp a
    ld de, $201f
    ccf
    ld de, $201f
    ccf
    ld c, $0e
    jr nz, jr_0f3_73df

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
    rra
    rra
    nop
    nop
    ld h, b
    ld a, a
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b

jr_0f3_73df:
    add b
    db $fd
    rst $38
    add b
    add b
    rst $38
    db $fd
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    db $fc
    db $fc
    rra
    rst $38
    adc h
    db $fc
    daa
    rst $38
    add h
    db $fc
    inc hl
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    inc b
    db $fc
    ld a, a
    rst $38
    ld l, b
    sbc b
    add c
    rst $38
    ld l, b
    sbc b
    add c
    rst $38
    ld d, h
    xor h
    inc bc
    rst $38
    db $76
    adc d
    add $fe
    ld a, [c]
    adc [hl]
    ld a, $fe
    add h
    db $fc
    inc c
    db $fc
    ld a, b
    ld a, b
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
    db $e4
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    db $fc

jr_0f3_7446:
    nop
    nop
    inc e
    db $fc
    nop
    nop
    jr jr_0f3_7446

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
    ccf
    ccf
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
    db $fc
    rst $38
    nop
    nop
    cp b
    rst $38
    ld bc, $6001
    sbc a
    ld [bc], a
    inc bc
    rst $38
    rra
    ld [bc], a
    inc bc
    jp Jump_000_023f


    inc bc
    call nz, Call_000_023f
    inc bc
    and h
    ld a, a
    ld [bc], a
    inc bc
    xor b
    ld a, a
    ld [bc], a
    inc bc
    cp $3f
    inc bc
    inc bc
    pop bc
    rst $38
    inc bc
    inc bc
    sub b
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $2001
    rst $38
    ld bc, $5001
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0501
    db $fd
    inc bc
    inc bc
    ld a, [$03fb]
    inc bc
    ld a, [$02fb]
    inc bc
    inc c
    rst $38
    ld [bc], a
    inc bc
    dec bc
    rst $38
    ld [bc], a
    inc bc
    rlca
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    inc b
    rlca
    rra
    rst $38
    inc b
    rlca
    inc hl
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    add $c7
    inc bc
    inc bc
    pop bc
    pop bc
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
    ld bc, $fc01
    db $fc
    ld a, h
    ld a, h
    nop
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    inc bc
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    or $fe
    nop
    nop

jr_0f3_7560:
    rst $38
    rst $30
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    cp $ff
    jr nc, jr_0f3_7560

    ld a, [hl]
    rst $38
    db $10
    ldh a, [$9c]
    rst $38
    db $10
    ldh a, [$8c]
    rst $38
    db $10
    ldh a, [$03]
    db $fc
    sub b
    ld [hl], b
    ei
    db $fc

jr_0f3_7582:
    and b
    ld h, b
    dec bc
    db $fc

jr_0f3_7586:
    or b
    ld [hl], b
    dec bc
    db $fc
    xor b
    ld e, b
    add hl, de
    cp $ec
    inc e
    inc [hl]
    rst $30
    xor $1a
    ld a, [c]
    di
    ld a, [bc]
    cp $61
    pop hl
    db $fc
    db $fc
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f3_7582

    nop
    nop
    jr nz, jr_0f3_7586

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
    and b
    ldh [rP1], a
    nop
    ld b, b
    ld b, b

jr_0f3_75d6:
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
    jr nc, jr_0f3_75d6

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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld l, $3f
    nop
    nop
    daa
    ccf
    nop
    nop
    ld e, b
    ld l, a
    nop
    nop
    ld d, c
    ld l, a
    nop
    nop
    ld hl, $003f
    nop
    ld a, [de]
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
    jr nz, @+$41

    nop
    nop
    inc h
    ccf
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld d, [hl]
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    jr nz, jr_0f3_76af

    nop
    nop
    jr nz, jr_0f3_76b3

    nop
    nop
    jr nc, jr_0f3_76b7

jr_0f3_7678:
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    add [hl]
    cp $01
    ld bc, $fe02
    ld [bc], a
    inc bc
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$16
    rra
    db $10
    ldh a, [rIF]
    rrca
    jr nz, jr_0f3_7678

    ccf
    ccf
    ld b, b
    ret nz

    ld a, [hl]
    ld a, [hl]
    add b
    add b
    sbc [hl]
    cp $00
    nop
    ld c, a
    ld a, a
    nop
    nop

jr_0f3_76a8:
    daa
    ccf
    nop
    nop

jr_0f3_76ac:
    inc de
    rra
    add b

jr_0f3_76af:
    add b
    add hl, bc
    rrca
    add b

jr_0f3_76b3:
    add b
    ld b, $06
    nop

jr_0f3_76b7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0f3_7701

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f3_76a8

    add b
    rst $38
    jr nz, jr_0f3_76ac

    add b
    rst $38
    ld h, b
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    cp $ff
    ret nz

    ret nz

    rst $38
    cp $f0
    ldh a, [rIE]
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    add $fe
    inc hl
    rst $38
    jp nz, Jump_000_21fe

    rst $38
    add d
    cp $c0
    rst $38
    ld [bc], a
    cp $bf
    rst $38
    db $f4
    inc c
    inc bc

jr_0f3_7701:
    rst $38
    ld l, b
    sbc b
    inc bc
    rst $38
    ld [hl], h
    adc h
    rlca
    rst $38
    ld a, h
    adc h
    adc h
    db $fc

jr_0f3_770e:
    sbc [hl]
    cp $7c
    db $fc
    ld a, e
    ld a, a
    jr jr_0f3_770e

    scf
    dec a
    ld [$1ef8], sp
    ld a, [de]
    ld [$0cf8], sp
    inc c
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
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    jr c, jr_0f3_777d

    add b
    add b
    jr nz, jr_0f3_7781

    add b
    add b
    jr nz, jr_0f3_7785

    add b
    add b
    jr nz, jr_0f3_7789

    add b
    add b
    jr nz, jr_0f3_778d

    add b
    add b
    db $10
    rra
    add b
    add b
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

jr_0f3_777d:
    nop
    nop
    nop
    nop

jr_0f3_7781:
    nop
    nop
    nop
    nop

jr_0f3_7785:
    nop
    nop
    nop
    nop

jr_0f3_7789:
    nop
    nop
    nop
    nop

jr_0f3_778d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    daa
    ccf
    nop
    nop
    ld sp, $002f
    nop
    ld [hl-], a
    cpl
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc [hl]
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f3_7817

    nop
    nop
    ld b, b
    ld a, a
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
    adc b
    rst $38
    nop
    nop
    ld d, a
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f3_7833

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
    inc a
    ccf
    nop
    nop
    jp $01ff


    ld bc, $ff01
    ld [bc], a
    inc bc
    ld bc, $05ff
    rlca
    jp nz, Jump_000_1ffe

    rra
    call nz, $2ffc
    ccf
    ret z

jr_0f3_7817:
    ld hl, sp+$47
    ld a, a
    or b
    ldh a, [rNR43]
    ld a, $40
    ld b, b
    inc hl
    ccf
    nop
    nop
    ld de, $001f
    nop

jr_0f3_7828:
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

jr_0f3_7833:
    nop
    nop
    nop
    nop
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

jr_0f3_7844:
    jr jr_0f3_7865

    jr nz, jr_0f3_7828

    jr nz, jr_0f3_7889

    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    jr nc, jr_0f3_7844

    ld a, a
    ld a, a
    ldh [$e0], a
    ld a, a
    ld a, a
    ldh [$e0], a
    ld a, a
    ld a, a
    ld h, b
    ldh [rIE], a
    rst $38
    ldh a, [rSVBK]
    rst $38

jr_0f3_7865:
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    adc h
    db $fc
    rst $20
    rst $38
    add h
    db $fc
    inc hl
    rst $38
    inc b
    db $fc
    ld b, b
    rst $38
    inc b
    db $fc
    ret nz

    rst $38
    add sp, $18
    dec a
    cp $e8
    jr @+$05

    cp $e8
    jr jr_0f3_7890

jr_0f3_7889:
    cp $a8
    ld e, b
    dec c
    db $fd
    ld hl, sp+$08

jr_0f3_7890:
    jr @-$06

    db $fc
    cp h
    ld hl, sp-$08
    db $e4
    db $fc
    jr nc, @-$0e

    and $fa
    ld [$7cf8], sp
    ld a, h
    ld [$3cf8], sp
    inc h
    inc b
    db $fc
    jr jr_0f3_78c0

    inc b
    db $fc
    nop
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
    ld e, a
    rst $38
    nop
    nop
    ccf
    cp a
    nop
    nop

jr_0f3_78c0:
    and c
    cp a
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
    ld b, c
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
    rra
    rra
    ldh [$e0], a
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_0f3_7ee6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
