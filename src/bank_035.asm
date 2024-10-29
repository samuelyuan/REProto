SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    db $ec
    db $ec
    rst $38
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
    ld a, a
    rlca
    rlca
    add b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld e, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    jr nc, jr_035_4089

    ret nz

    rst $38
    ld [bc], a
    db $fd
    ld c, $f1
    ld a, $c1
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    ld a, [c]
    rst $38
    jp nz, $44ff

    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    adc l
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld bc, $01ff
    rst $38
    nop
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

jr_035_4089:
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ei
    rst $38
    ld a, [$faff]
    rst $38
    cp $ff
    cp $ff
    db $f4
    rst $38
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
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    db $fc
    inc bc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld c, $0e
    inc c
    inc c
    db $fc
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
    ccf
    ccf
    ld bc, $c001
    nop
    cp $00
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
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
    di
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ld hl, sp-$04
    rst $38
    cp h
    cp h
    ld e, $1e
    rst $38
    rst $38
    ld e, a
    ld e, a
    ld l, e
    ld l, e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $10
    rst $10
    push de
    push de
    ld sp, hl
    ld sp, hl
    ei
    ei
    ld a, [$fafa]
    ld a, [$fcfc]
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    rrca
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    ld de, $f1ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIF]
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    adc h
    adc h
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_035_41be:
    rra
    rst $38
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $20
    nop
    rst $20
    nop
    rst $08
    nop
    sbc [hl]
    ld bc, $011e
    inc a
    inc bc
    ld a, h
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    nop
    nop
    cp $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh a, [rIF]
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
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld a, b
    ld hl, sp-$08
    db $fc
    db $fc
    sbc h
    sbc h
    cp [hl]
    cp [hl]
    ccf
    ccf
    ccf
    ccf
    ld h, a
    ld h, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, e
    ld c, e
    ret


    ret


    sub e
    sub e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $e6
    db $ec
    db $ec
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, [hl]
    add c
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    and $e6
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$79
    ld a, a
    inc bc
    rst $38
    rlca
    cp $07
    cp $0f
    db $fc
    rrca
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh [rP1], a
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0106
    rlca
    ld bc, $0106
    dec c
    inc bc
    dec c
    ld [bc], a
    ld c, $07
    ld a, [de]
    rlca
    ld e, $03
    dec de
    rlca
    add hl, de
    nop
    ccf
    nop
    ccf
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a

jr_035_42f7:
    rst $38
    add b

jr_035_42f9:
    ld a, a
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    jr nz, jr_035_42f7

    jr nz, jr_035_42f9

    db $10
    rst $28
    db $10
    rst $28
    ld [$08f7], sp
    rst $30
    ld [$04f7], sp
    ei
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $01fe
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
    ld hl, sp+$07
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    ld h, a
    ld h, a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $f1f1
    rst $38
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
    ld a, a
    rlca
    rlca
    add b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_035_43d4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_035_43f9

    nop
    nop
    nop
    nop

jr_035_43d4:
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_440e

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4423

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_035_43f9:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_035_440e:
    ld d, [hl]
    ld d, a
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    ld h, h

jr_035_4423:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    nop
    add b
    add c
    add d
    add e
    nop
    nop
    nop
    nop
    add h
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add a
    adc b
    adc c
    nop
    nop
    nop
    nop
    adc d
    adc e
    adc h
    nop
    nop
    nop
    nop
    nop
    adc l
    adc [hl]
    adc a
    nop
    nop
    nop
    nop
    sub b
    sub c
    sub d
    sub e
    sub h

Call_035_447f:
    sub l
    nop
    nop
    nop
    sub [hl]
    sub a
    sbc b
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld [hl], $b0
    or c
    nop
    nop
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    nop
    nop
    cp d
    cp e
    cp h
    cp l
    add l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    nop
    nop
    add $c7
    ret z

    ld [hl], $c9
    jp z, $cccb

    call $cfce
    ret nc

    ld h, d
    pop de
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    nop
    dec b
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    dec b
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    dec b
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
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
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    dec b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b
    inc b
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1e01
    rra
    ldh [rIE], a
    nop
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    inc a
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
    cp a
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, e
    rst $38
    inc sp
    rst $38
    inc a
    rst $38
    db $db
    db $fc
    inc a
    db $db
    call z, $063f
    ld b, $06
    ld b, $83
    add e
    add e
    add e
    pop bc
    pop bc
    rst $00
    rst $00
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    add b
    add a
    rlca
    ccf
    ccf
    ld hl, sp-$01
    ret nz

    nop
    nop
    nop

jr_035_4683:
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr c, jr_035_46cb

    rst $00
    rst $38
    jr c, @+$01

    rst $00
    rst $38
    inc b
    rst $38
    db $e4
    rst $38
    dec h
    rst $38
    ld h, $ff
    ld hl, $c7fe
    ld sp, hl
    ccf
    rst $00
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    call nz, Call_000_1afb
    push hl
    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_035_4683

    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [$f405]
    dec bc
    ldh a, [rIF]
    db $f4
    dec bc
    nop
    nop
    nop
    nop
    rrca
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop

jr_035_46cb:
    rst $38
    rra
    ldh [rIE], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp $ff
    and $ff
    di
    rst $38
    di
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    db $fc
    cp $ff
    cp $7f
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ret nz

    jp Jump_000_1f03


    inc e
    db $fc
    ldh [$e0], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    db $e3
    rst $38
    inc e

jr_035_4729:
    rst $38
    db $e3
    rst $38
    inc c
    rst $38
    ret z

    rst $38
    ld c, c
    rst $38
    ld c, [hl]
    rst $38
    ld b, b

jr_035_4735:
    rst $38
    rst $00
    ld hl, sp+$3f
    rst $00
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [c]
    db $fd
    adc b
    rst $30
    db $10
    rst $28
    nop
    rst $38
    jr nz, jr_035_4729

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$d22d], a
    jr nz, jr_035_4735

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
    rlca
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    adc h
    rst $38
    ld c, $ff
    rrca
    rst $30
    ld a, a
    add a
    rst $38
    add e
    rst $38
    sbc a
    rst $38
    db $e3
    rst $38
    rst $08
    pop af
    pop af
    rst $08
    ld h, c
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    jr @+$01

    sbc a
    sbc a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff

jr_035_47ac:
    pop af
    cp $8f
    pop af
    ld c, $7e
    ld [hl], b
    ldh a, [$80]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    inc c
    ld [hl], e
    ld a, [hl]
    adc h
    rst $38
    ld [hl], e
    rst $38
    adc l
    rst $38
    ld de, $91ff
    rst $38
    sub [hl]
    rst $38
    sbc b
    rst $38
    add a
    ld hl, sp+$1f
    rst $20
    rst $38
    rra
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$9f], a
    ld h, b
    rst $18
    jr nz, jr_035_47ac

    ld b, b
    ld hl, sp+$07
    ld h, b
    sbc a
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
    inc b
    ei
    dec bc
    db $f4
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
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$7f
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
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    sbc b
    rst $38
    rst $38
    dec e
    cp $1f
    db $ec
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    ld a, $ff
    rst $00
    cp $1e
    rst $20
    and $1f
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop bc
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
    ldh a, [$f0]
    add e
    add b
    ccf
    inc bc
    ld hl, sp+$38
    ret nz

    ret nz

    nop
    nop
    ld bc, $0100
    nop
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
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    jr c, @-$3e

    ld hl, sp+$38
    db $fc
    ld hl, sp-$08
    db $fc
    ld [c], a
    db $fc
    add d
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, [hl]
    add c
    cp $01
    db $fc
    inc bc
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [$09f7], sp
    or $4a
    or l
    add a
    ld a, b
    ld c, a
    or b
    xor h
    ld d, e
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    inc bc
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    jp $ffff


    rst $38
    db $e3
    rst $38
    ld h, c
    rst $38
    ld a, a
    rst $38
    ld [hl], c
    rst $38
    or a
    ld hl, sp+$38
    rst $30
    ldh a, [$3f]
    jr @+$01

    jr jr_035_490a

    jr jr_035_490c

    jr @+$1a

    rrca
    rrca
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e1], a
    ld bc, $0c0f
    ld a, l
    ld h, c
    ld [c], a

jr_035_490a:
    inc bc
    inc c

jr_035_490c:
    rlca
    jr c, jr_035_491e

    ldh a, [$f0]
    nop
    pop hl
    ld bc, $0fce
    pop af
    ccf
    adc $3f
    pop af
    ccf
    add $3f

jr_035_491e:
    db $f4
    ccf
    ld [hl], l
    rra
    db $76
    rra
    ld [hl], e
    inc e
    ld a, a
    inc de
    ccf
    rra
    rra
    rra
    inc e
    rrca
    db $10
    rrca
    add hl, de
    ld b, $08
    rlca
    dec c
    ld [bc], a
    inc c
    inc bc
    inc bc
    inc b
    rlca
    nop
    jp $c300


    inc b
    pop de
    nop
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    ld bc, $8857
    ld c, b
    or b
    ld [hl], c
    add b
    ccf
    ret nz

    jr c, @-$37

    inc bc
    db $fc
    jp hl


    ld d, $f5
    ld a, [bc]
    db $fd
    ld [bc], a
    sbc [hl]
    ld h, c
    call c, $ef23
    stop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $3ffe
    ret nz

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
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc c
    rst $38
    rrca
    db $fc
    ld a, a
    adc [hl]
    rst $38
    add a
    rst $38
    sbc [hl]
    rst $38
    and $ff
    adc a
    or $f6
    adc a
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    db $e3
    db $e3
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add a
    ld hl, sp+$07
    ld a, $3f
    ldh a, [rIE]
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
    rlca
    jr c, jr_035_4a01

jr_035_49c2:
    rst $00
    rst $38

jr_035_49c4:
    jr c, @+$01

    jp $0cff


    rst $38
    ret z

    rst $38
    ld c, e
    rst $38
    ld c, h
    rst $38
    add a
    ld hl, sp+$7f
    add a
    rst $38
    ld a, a
    cp $ff
    ld a, [c]
    db $fd
    sbc b
    rst $20
    ld l, b
    sub a
    db $e3
    inc e
    rst $08
    jr nc, @-$73

    ld [hl], h
    dec hl
    call nc, $807f
    ld a, a
    add b
    ccf
    ret nz

    inc a
    jp Jump_035_5fa0


    add d
    ld a, l
    adc l
    ld [hl], d
    ret z

    scf
    jp $c73c


    jr c, jr_035_49c2

    jr c, jr_035_49c4

    jr c, jr_035_4a3e

    ret nz

    ld a, a

jr_035_4a01:
    add b
    xor a
    ld d, b
    rst $38
    nop
    ei
    inc b
    or $09
    rst $38
    nop
    rst $28
    db $10
    ld a, a
    add b
    nop
    nop
    rlca
    rlca
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld h, e
    rst $38
    ld a, a
    db $e3
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    ld a, c
    rst $38

jr_035_4a3e:
    pop af
    rst $38
    ccf
    pop af
    pop af
    ccf
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_035_4a56:
    ld hl, sp-$08
    ldh [$e3], a
    inc bc
    rra
    jr jr_035_4a56

    db $fc
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    ld [hl], c
    ld a, a
    adc [hl]
    rst $38
    ld [hl], c
    rst $38
    adc a
    rst $38
    ld de, $93ff
    rst $38
    sbc h
    rst $38
    add e
    db $fc
    rra
    db $e3
    rst $38
    rra
    cp $ff
    di
    db $fc
    adc e
    db $f4
    jr nc, @-$2f

    jr nz, @-$1f

    ret c

    daa
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [$1f], a
    inc bc
    db $fc
    inc bc
    db $fc
    db $76
    adc c
    inc sp
    call z, $e41b
    sbc e
    ld h, h
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    db $ed
    db $10
    ld a, [$0000]
    nop
    nop
    nop
    rrca
    rrca
    ld [$0b0f], sp
    inc c
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [$fa0f]
    rrca
    ld a, [$fa0f]
    rrca
    ld a, [$fa0f]
    rrca
    ld a, [$fa0f]
    rrca
    ld a, d
    ld a, a
    adc e
    rst $38
    inc b
    rst $38
    dec b
    cp $c5
    ccf
    push bc
    ccf
    push bc
    ccf
    push bc
    cp a
    push bc
    push bc
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push af
    push af
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    db $e4
    rst $38
    db $e4
    rst $38
    db $fd
    rst $38
    xor $ff
    ldh a, [rIE]
    db $e3
    db $fc
    db $fc
    db $e3
    ldh a, [rIE]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
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
    rst $18
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    cpl
    ld a, a
    rla
    ccf
    rla
    rra
    dec bc
    ccf
    dec sp
    rst $08
    ei
    ccf
    db $fd
    rst $00
    db $fd
    ccf
    cp $26
    cp $25
    rst $38
    add hl, sp
    rst $38
    rlca
    ld sp, hl
    ccf
    rst $00
    rst $38
    ccf
    rst $38
    ld hl, sp-$29
    add sp, -$01
    nop
    cp $00
    cp $00
    ld a, [hl]
    add b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    pop bc
    ld a, $07
    ld hl, sp+$3f
    ret nz

    call Call_035_6a32
    sub l
    dec a
    jp nz, $827d

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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    ld l, a
    add b
    ld [hl], a
    add b
    xor e
    ld b, b
    sub h
    ld b, b
    rlca
    rlca
    ld hl, sp-$01
    inc bc
    db $fc
    ld [hl], h
    adc e
    sub h
    ld l, a
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    rla
    rst $28
    ldh a, [rIE]
    rlca
    ld hl, sp+$74
    adc a
    sub h
    ld l, a
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    rla
    rst $28
    ld [hl], b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    rrca
    ldh a, [rSVBK]
    adc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $28
    cpl
    rst $28
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    ld a, a
    db $db
    ld a, e
    ld c, e
    ei
    xor a
    ld a, a
    xor a
    ld a, a
    rst $10
    ccf
    ld d, a
    cp a
    adc e
    ld a, a
    dec bc
    rst $38
    add hl, bc
    rst $38
    dec b
    add l
    dec b
    add l
    ld [bc], a
    adc [hl]
    ld c, $f2
    ld l, a
    sub c
    cp a
    ld b, c
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
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $dd
    nop
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rIE]
    rla
    ld hl, sp-$2c
    ccf
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, a
    cp a
    ret nc

    rst $38
    rla
    ld hl, sp+$54
    or a
    call nc, Call_035_5417
    sbc a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, l
    cp a
    ld d, [hl]
    cp a
    ret nc

    rst $38
    db $10
    rst $38
    rla
    rst $38
    ld a, b
    rst $38
    add c
    cp $1e
    pop hl
    ldh [$1f], a
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
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    db $fc
    db $fc
    or $f6
    ld a, [$fbfa]
    ei
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    rst $20
    rst $20
    db $fc
    db $fc
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    and $e6
    rst $20
    rst $20
    rst $28
    rst $28
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
    rst $38
    rst $38
    rst $30
    rst $30
    pop af
    ld [hl], c
    di
    ld [hl], e
    rst $30
    scf
    rst $28
    ccf
    rst $38
    rra
    or $1e
    or $1e
    ld a, [$fb0e]
    dec bc
    db $ed
    dec b
    db $fd
    dec b
    db $fd
    dec b
    ld h, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    sbc e
    ld bc, $01b7
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    ld e, $e1
    jp nc, Jump_035_523d

    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld e, [hl]
    cp a
    pop bc
    rst $38
    dec e
    db $e3
    push de
    dec sp
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld e, l
    cp a
    pop bc
    rst $38
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    inc bc
    db $fc
    inc a
    jp $3fc0


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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
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
    rst $28
    rst $28
    ld l, a
    rst $28
    ld a, a
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add e
    add e
    sbc h
    sbc a
    ldh [rIE], a
    add b
    rst $38
    and a
    ld hl, sp-$41
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$30], a
    rst $28
    jr nz, @+$01

    nop
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp+$78
    add a
    add b
    ld a, a
    nop
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
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
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    inc bc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add c
    cp $0e
    pop af
    ldh a, [rIF]
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
    inc bc
    db $fc
    inc c
    di
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
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
    nop
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
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
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
    db $fc
    inc bc
    ret nz

    ccf
    nop
    rst $38
    ld bc, $1eff
    rst $38
    ldh [rIE], a
    inc bc
    db $fc
    inc e
    db $e3
    ldh [$1f], a
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
    inc bc
    db $fc
    inc c
    di
    ld [hl], b
    adc a
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
    add b
    ld a, a
    add c
    ld a, a
    ld b, c
    cp a
    ld hl, $21df
    rst $18
    ld de, $08ef
    rst $30
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp+$38
    rst $00
    ret nz

    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, a
    sbc a
    adc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    ld b, a
    cp a
    ld b, e
    cp a
    inc hl
    rst $18
    ld de, $09ef
    rst $30
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $3e01
    ccf
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    db $fc
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
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    rrca
    ldh a, [rSVBK]
    adc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fd
    db $fd
    pop af
    pop af
    pop hl
    pop hl
    ld h, e
    ld h, e
    jp $c7c3


    rst $00
    rst $18
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    rst $00
    rst $38
    jp $81ff


    rst $38
    add c
    rst $38
    jp $e3ff


    rst $38
    or $ff
    db $fc
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rst $38
    adc a
    ld a, a
    add a
    ld a, a
    ld b, a
    cp a
    inc hl
    rst $18
    ld de, $10ef
    rst $28
    ld [$00f7], sp
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop

jr_035_5027:
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0e01
    rrca
    ldh a, [rIE]
    ld bc, $01ff
    rst $38
    inc sp
    adc $e3
    ld e, $e3
    ld e, $e3
    ld e, $c7
    inc a
    rst $00
    inc a
    rst $00
    inc a
    rst $00
    inc a
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$0d
    db $fc
    inc c
    rst $38
    ld [bc], a
    rst $38
    pop bc
    ccf
    jr nc, jr_035_5027

    ld [$06f7], sp
    ld sp, hl
    ld bc, $00fe
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    ei
    ei
    db $e3
    db $e3
    add d
    add d
    add d
    add d
    rlca
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    db $fc
    rst $08
    di
    inc a
    rst $08
    ld hl, sp+$30
    db $fc
    ld b, b
    and $98
    di
    call z, $e7f8
    db $fc
    di
    ld hl, sp-$01
    cp $fd
    cp $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    sbc c
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    ld h, b

jr_035_5101:
    ldh [rNR23], a
    ld hl, sp+$06
    cp $c1
    ccf
    ldh a, [rIF]
    db $fc

jr_035_510b:
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    sbc a
    ldh [rBGP], a
    ld hl, sp+$33
    db $fc
    ld [$06ff], sp
    rst $38
    pop bc
    ccf
    jr nz, jr_035_5101

    jr jr_035_510b

    inc b
    ei
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0f01
    rrca
    ccf
    ccf
    rst $38
    rst $38
    cp $fe
    db $ec
    db $ec
    adc h
    adc h
    ld [$1908], sp
    add hl, de
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ldh a, [$cf]
    jp $0c3f


    cp $30
    cp $c0
    cp a
    nop
    ld a, [hl]
    ld bc, $03fc
    ld a, b
    rlca
    db $10
    ld c, $01
    ld [$0186], sp
    ld c, l
    add d
    ld a, c
    add [hl]
    ld h, e
    sbc h
    ld a, l
    add d
    ei
    inc b
    rst $20
    jr @-$1f

    and b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    ccf
    rst $38
    ld h, a
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rP1], a
    cp $00
    ldh a, [rP1]
    ldh [rP1], a
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
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$07
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
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
    ldh [$c7], a
    ld hl, sp+$31
    cp $08
    rst $38
    ld b, $ff
    add c
    ld a, a
    ld h, b
    sbc a
    db $10
    rst $28
    inc c
    di
    nop
    nop
    nop
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
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    pop af
    pop af
    ld [hl-], a
    ld [hl-], a
    ld h, $26
    ld h, a
    ld h, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ldh a, [$cf]
    jp $0c3c


    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    nop
    rst $38
    ld e, $fd
    ccf
    sbc $3f
    rrca
    ld a, a
    rlca
    cp a
    ld b, e
    ld a, a
    add c
    rst $38
    nop
    rst $38

Jump_035_523d:
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
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
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
    inc bc
    ld bc, $f906
    rlca
    pop af
    rrca
    di
    rrca
    db $e3

jr_035_5287:
    rra
    db $e3
    rra

jr_035_528a:
    pop hl
    rra
    ldh a, [rIF]
    cp $c1
    jr c, jr_035_528a

    ld b, $fe
    ld bc, $c0ff
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
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
    ldh [$c7], a
    ld hl, sp+$21
    cp $18
    rst $38
    inc b
    rst $38
    add e
    ld a, a
    ld b, b
    cp a
    jr nc, jr_035_5287

    ld [$06f7], sp
    ld sp, hl
    ld bc, $00fe
    rst $38
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $ec
    db $ec
    adc c
    adc c
    sbc c
    sbc c
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    pop af
    ldh a, [$cf]
    pop bc
    ld a, $0e
    ldh a, [$30]
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
    ld b, b
    add b
    db $10
    ldh [$80], a
    ld a, b
    ret nz

    cp h
    pop af
    adc $f8
    rst $30
    db $fc
    ei
    cp $7d
    rst $38
    ld a, $ff
    rra
    cp a
    ld c, a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    rst $38
    ret nz

    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $0202
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $0f
    ld [bc], a
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $17
    jr jr_035_535d

    add hl, de
    ld a, [de]

jr_035_535d:
    dec de
    inc e
    dec e
    nop
    nop
    nop
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, $00
    rra
    ld [bc], a
    jr nz, jr_035_538e

    ld [hl+], a
    inc hl
    ld [bc], a
    nop
    nop
    nop
    inc h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec h
    ld h, $27
    ld [bc], a
    jr z, jr_035_53a6

    ld a, [hl+]
    dec hl
    ld [bc], a
    inc l
    nop
    nop
    dec l
    ld [bc], a
    ld [bc], a
    ld l, $2c
    cpl
    jr nc, @+$04

    ld sp, $3332

jr_035_538e:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_53cd

    ld [bc], a
    ld [bc], a
    ld a, [hl-]
    dec sp
    inc a
    ld [bc], a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [bc], a
    ld [bc], a

jr_035_53a6:
    ld [bc], a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld a, $3e
    ld a, $4b
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    ld [bc], a
    ld c, a
    ld d, b
    ld d, c
    ld [bc], a
    ld [bc], a
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, b
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
    ld [bc], a

jr_035_53cd:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $3e
    ld a, $62
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld e, h
    nop
    nop
    ld h, a
    ld h, c
    ld l, b
    ld e, d
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
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], l
    halt
    nop
    ld [hl], a
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, $7c
    ld a, l
    ld a, [hl]
    ld a, a
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    add b
    ld a, e
    ld a, $81
    add d
    add e
    add h
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_5417:
    add [hl]
    ld a, e
    ld a, $3e
    add a
    adc b
    adc c
    adc d
    adc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    adc h
    adc l
    adc [hl]
    ld a, $8f
    sub b
    sub c
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    adc h
    adc l
    adc [hl]
    ld a, $3e
    sub e
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    adc h
    adc l
    adc [hl]
    ld a, $3e
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
    ld e, l
    sub l
    sub [hl]
    sub a
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
    sbc b
    sub l
    sbc c
    sub a
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
    inc bc
    ld bc, $0101
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
    nop
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
    nop
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_035_54c9

jr_035_54c9:
    nop
    nop
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    nop
    nop
    dec b
    dec b
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
    inc b
    dec b
    dec b
    nop
    dec b
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
    inc b
    dec b
    dec b
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
    inc b
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
    inc b
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
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $7f
    cp $bf
    cp $3f
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rrca
    ccf
    rrca
    rst $38
    ccf
    rst $38
    rst $00
    rst $08
    rlca
    adc a
    rlca
    add a
    inc bc
    rst $00
    add e
    rst $00
    add e
    db $e3
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld a, l
    rst $38
    pop hl
    pop af
    jr nz, @-$28

    db $10
    sub $10
    rst $10
    db $10
    ld [$6908], a
    add hl, bc
    sbc [hl]
    sbc a
    ldh [rIE], a
    add b
    rst $38
    ccf
    ret nz

    rst $38
    nop
    or $09
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
    ld a, a
    nop
    rst $18
    nop
    cp l
    nop
    cp c
    nop
    ld [hl], b
    nop
    db $f4
    nop
    ld [hl], c
    nop
    ld [$1f00], sp
    nop
    pop af
    nop
    inc bc
    nop
    ld [bc], a
    nop
    add h
    nop
    add h
    nop
    dec c
    nop
    inc b
    nop
    ld a, [hl+]
    nop
    jp $f300


    nop
    ccf
    rrca
    rst $38
    ld a, a
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
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [$fe]
    ldh [$f4], a
    add b
    ld [$d400], a
    nop
    add sp, $00
    call nc, $ea00
    nop
    push de
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld a, [$ff00]
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    ld a, [hl]
    adc e
    ld [hl], h
    ld a, a
    add b
    ld a, [$fe05]
    ld bc, $00ff
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
    cp $01
    rst $38
    nop
    db $db
    nop
    push de
    nop
    call $ef00
    nop
    rst $38
    nop
    pop de
    nop
    add l
    nop
    ld hl, $0f00
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    xor [hl]
    nop
    rst $00
    ld bc, $3fff
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    add b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    push af
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    cp $7c
    add e
    ldh [$1f], a
    ld [$81f7], sp
    ld a, [hl]
    or $09
    db $fc
    inc bc
    ld a, a
    add b
    cp $01
    ld a, a
    add b
    rst $28
    db $10
    db $d3
    inc l
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub a
    nop
    dec sp
    nop
    ld l, l
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    ccf
    ld bc, $0007
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld d, b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    db $fd
    pop de
    ld l, $92
    ld l, l
    ld de, $24ee
    db $db
    ld [de], a
    db $ed
    or [hl]
    ld c, c
    ld a, [$7d05]
    add d
    xor d
    ld d, l
    ld [hl], l
    adc d
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
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [bc], a
    rst $10
    nop
    rst $10
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
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$02
    ldh a, [$f8]
    ldh [$f0], a
    ldh [$e0], a
    ld h, b
    ldh [rNR41], a
    ld h, b
    jr nz, jr_035_5830

    jr nz, jr_035_5832

    db $10
    jr nc, jr_035_5825

    db $10
    db $10
    db $10
    db $10
    jr jr_035_5833

    jr jr_035_5835

    jr jr_035_5837

    jr jr_035_5839

    jr jr_035_5842

    rra
    rst $38

jr_035_5825:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_035_5830:
    rst $38
    rst $38

jr_035_5832:
    rst $38

jr_035_5833:
    rst $38
    add b

jr_035_5835:
    rst $38
    add b

jr_035_5837:
    ld a, a
    nop

jr_035_5839:
    rst $38

jr_035_583a:
    add d
    ld a, l
    ld [de], a
    db $ed
    nop
    rst $38
    ld [hl+], a
    db $dd

jr_035_5842:
    ld sp, $64ce
    sbc e
    inc [hl]
    bit 6, h
    adc e
    inc [hl]
    set 1, d
    dec [hl]
    db $ec
    inc de
    ld l, $d1
    rst $28
    db $10
    db $eb
    inc d
    add e
    ld a, h
    rst $18
    jr nz, jr_035_583a

    jr nz, jr_035_583a

    ld [hl+], a
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp e
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    ld d, l
    rra
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
    ld hl, sp-$01
    add b
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    rla
    rrca
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
    cp $ff
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
    di
    inc c
    push hl
    ld a, [de]
    ld a, [c]
    dec c
    ld [hl], c
    adc [hl]
    or b
    ld c, a
    ld [de], a
    db $ed
    di
    inc c
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    ld [$f715], a
    ld [$01fe], sp
    cp h
    ld b, e
    cp b
    ld b, a
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $00
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    dec bc
    nop
    dec d
    nop
    dec hl
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
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
    rra
    rst $38
    inc bc
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
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
    rst $38
    rst $38
    ld hl, sp-$01
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
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    or d
    ld c, l
    push de
    ld a, [hl+]
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, d
    sbc l
    and c
    ld e, a
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
    di
    rst $38
    push af
    dec bc
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
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
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
    jr @+$01

    jr @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
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
    ccf
    rst $38
    rra
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
    rlca
    rst $38
    rlca
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ldh a, [rIE]
    nop
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
    rst $38
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
    ld sp, hl
    add $f9
    add [hl]
    ld sp, hl
    add [hl]
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rrca
    rst $30
    rrca
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $e3
    dec e
    jp $d73d


    add hl, hl
    sbc e
    ld h, l
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $01fe
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
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    rst $38
    ld b, c
    rst $38
    ld h, b
    rst $18
    ld [hl], b
    rst $08
    ld a, b
    rst $00
    ld a, h
    jp $c17e


    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$8f], a
    ldh a, [$87]
    ld hl, sp-$39
    ld hl, sp+$43
    db $fc
    ld h, e
    db $fc
    or c
    ld a, [hl]
    or b
    ld a, a
    ld e, b
    cp a
    ld e, b
    cp a
    inc l
    rst $18
    inc h
    rst $18
    ld d, $ef
    dec de
    rst $20
    dec bc
    rst $30
    dec c
    di
    dec b
    ei
    ld b, $f9
    ld [bc], a
    db $fd
    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    db $fd
    nop
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld [$f400], a
    nop
    ld [$d400], a
    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    call nc, $e800
    nop
    call nc, $ea00
    nop
    db $f4
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld a, [$00fd]
    cp $80
    rst $38
    ret nz

    ld a, [hl]
    ldh [$3f], a
    ldh a, [$1f]
    db $fc
    rrca
    cp $07
    rst $38
    add e
    ld a, a
    pop bc
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$3d
    db $fc
    ld h, c
    cp $61
    cp $30
    rst $38
    or b
    ld a, a
    sbc b
    ld a, a
    ret c

    ccf
    ld c, h
    cp a
    ld l, [hl]
    sbc a
    ld [hl], $cf
    inc sp
    rst $08
    dec de
    rst $20
    add hl, bc
    rst $30
    dec c
    di
    inc b
    ei
    ld b, $f9
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $01fe
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
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor b
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
    nop
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ret nc

    nop
    xor b
    call nc, $e880
    ret nz

    db $f4
    ldh [$7a], a
    ldh a, [$3d]
    ld hl, sp+$1e
    db $fc
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    pop bc
    cp $e0
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    sbc b
    ld a, a
    ret c

    ccf
    call z, Call_035_6e3f
    sbc a
    ld h, [hl]
    sbc a
    scf
    rst $08
    inc sp
    rst $08
    add hl, de
    rst $20
    add hl, de
    rst $20
    inc c
    di
    inc c
    di
    ld b, $f9
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $c0fe
    add b
    ldh [$c0], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [$38]
    ld hl, sp+$1c
    db $fc
    ld c, $fe
    rlca
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add c
    cp $c1
    cp $c0
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    cp b
    ld a, a
    sbc h
    ld a, a
    call z, $ce3f
    ccf
    and $1f
    ld h, e
    sbc a
    inc sp
    rst $08
    inc sp
    rst $08
    add hl, de
    rst $20
    inc e
    db $e3
    inc c
    di
    ld c, $f1
    ld b, $f9
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $ff
    add b
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp+$1f
    db $fc
    rrca
    cp $07
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $81fe
    cp $c0
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    sbc h
    ld a, a
    sbc h
    ld a, a
    adc $3f
    add $3f
    rst $20
    rra
    ld h, e
    sbc a
    ld [hl], e
    adc a
    add hl, sp
    rst $00
    add hl, sp
    rst $00
    inc e
    db $e3
    inc e
    db $e3
    ld c, $f1
    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp+$1f
    db $fc
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $80fe
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, @+$01

    inc e
    rst $38
    sbc h
    ld a, a
    adc [hl]
    ld a, a
    adc $3f
    nop
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp+$3f
    db $fc
    rra
    cp $0f
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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
    nop
    nop
    nop
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
    ret nz

    ret nz

    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_5f99

    ld [hl+], a
    inc hl
    ld d, $24
    dec h
    ld h, $00
    daa
    jr z, jr_035_5fab

    ld a, [hl+]
    dec hl
    ld e, $2c
    dec l
    ld l, $2f
    jr nc, jr_035_5fbc

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5fcd

    ld e, $3a
    nop
    dec sp
    inc a

jr_035_5f99:
    dec a
    ld a, $3f
    ld b, b
    nop
    ld b, c
    ld b, d

Jump_035_5fa0:
    nop
    nop
    nop
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b

jr_035_5fab:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h

jr_035_5fbc:
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    ld h, b

jr_035_5fcd:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    nop
    nop
    add b
    add c
    add d
    add e
    add h
    add l
    nop
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    nop
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    nop
    nop
    nop
    nop
    sub h
    ld e, $95
    sub [hl]
    nop
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    xor d
    xor e
    ld e, $ac
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    inc d
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    cp a
    ret nz

    ld e, $c1
    jp nz, $c4c3

    push bc
    add $1e
    rst $00
    nop
    nop
    nop
    nop
    nop
    ret z

    ret


    ld e, $ca
    set 1, h
    call $cfce
    ret nc

    pop de
    nop
    nop
    nop
    nop
    nop
    nop
    jp nc, Jump_000_1e1e

    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    nop
    nop
    nop
    nop
    nop
    nop
    jp c, Jump_000_1edb

    call c, $dedd
    rst $18
    ldh [rNR14], a
    inc d
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    dec b
    dec b
    nop
    nop
    nop
    inc b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0505
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0501
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0505
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0400
    inc b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0001
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    nop
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    dec b
    ld bc, $0603
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    dec b
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    dec b
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
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
    rra
    rra
    ldh a, [rIE]
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rst $08
    ccf
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
    cp $fe
    cp $fe
    cp $fe
    di
    di
    db $e3
    db $e3
    pop bc
    pop bc
    pop hl
    pop hl
    ld h, b
    ld h, b
    jr nc, jr_035_6262

    ld sp, $1931
    add hl, de
    dec de
    dec de
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_035_6262:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, $1f
    ld e, $1f
    rlca
    rra
    inc bc
    adc e
    add e
    rlca
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38

jr_035_6285:
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ldh [rIE], a
    add e
    db $fc
    inc b
    ei
    jr jr_035_6285

    ld h, b
    sbc a
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
    nop
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
    ld bc, $7fff
    ret nz

    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, $ff
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
    cp $fe
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$f0]
    or b
    or b
    jr @+$1a

    jr @+$1a

    inc c
    inc c
    dec c
    dec c
    rlca
    rlca
    rrca
    rrca
    adc a
    adc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

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
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    ld bc, $03ff
    rst $38
    rrca
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
    db $fc
    rst $38
    ldh a, [rIE]
    pop bc
    cp $86
    ld sp, hl
    ld [$30f7], sp
    rst $08
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ccf
    rlca
    jr c, jr_035_6384

    dec de
    dec b
    dec de
    inc b
    ld a, [de]

jr_035_6384:
    ld b, $18
    ld [bc], a
    inc e
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    inc c
    ld bc, $0106
    ld b, $01
    ld b, $01
    ld b, $00
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    rlca
    rlca
    db $fc
    rst $38
    nop
    rst $38
    inc bc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ret nz

    ccf
    add b
    rst $38
    rst $00
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    ld hl, sp-$04
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $db
    db $db
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    ld bc, $07ff
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
    pop af
    rst $38
    pop bc
    rst $38
    ld bc, $03ff
    rst $38
    adc a
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
    cp $ff
    ld hl, sp-$01
    pop hl
    cp $c2
    db $fd
    inc c
    di
    jr nc, @-$2f

    ld b, b
    cp a
    add b
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
    ld bc, $0301
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
    rrca
    nop
    rst $38
    rrca
    ldh a, [rIE]
    inc bc
    rst $38
    db $fc
    ld b, l
    ld a, $10
    and c
    dec sp
    sbc a
    dec de
    inc c
    bit 5, l
    ld l, e
    dec l
    rst $20
    ld sp, $f8a8
    cp l
    dec c
    cp a
    ld h, c
    cp c
    ld a, [hl]
    add b
    ld l, a
    ld a, [c]
    ld hl, $20e7
    ld hl, sp+$07
    nop
    rst $38
    nop
    cp $00
    ret nz

    nop
    nop
    rra
    rra
    ldh a, [rIE]
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ret nz

    rst $38
    rrca
    ldh a, [$f0]
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ei
    rst $38
    pop bc
    rst $38
    ld bc, $03ff
    rst $38
    adc a
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
    db $fc
    rst $38
    ldh a, [rIE]
    jp $8cfc


    di
    db $10
    rst $28
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_035_651d:
    rst $38
    nop
    rst $38
    ld bc, $0701
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
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
    ld hl, sp+$00
    ld hl, sp-$20
    jr jr_035_651d

    ret c

    ldh [$5c], a
    ldh a, [$4c]
    or b
    inc c
    or b
    adc h
    ldh a, [$ec]
    ldh a, [rNR32]
    cp b
    ld b, [hl]
    adc b
    db $76
    ld l, b
    or $a8
    add $d8
    ld [hl], $b4
    ld a, [de]
    ld l, h
    ld h, e
    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    inc bc
    inc bc
    cp $ff
    add b
    rst $38
    ld bc, $7ffe
    add b
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp-$08
    rlca
    nop
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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    cp a
    cp a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38

jr_035_65b9:
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_035_65bf:
    inc bc
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
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$01
    pop hl
    cp $c6
    ld sp, hl
    jr jr_035_65bf

    jr nz, jr_035_65b9

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    rrca
    rrca
    ld hl, sp-$01
    nop
    rst $38
    rlca
    ld hl, sp-$01
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
    ldh a, [rIF]
    nop
    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp+$78
    add a
    add b

jr_035_662b:
    ld a, a
    nop
    rst $38
    nop
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
    add b
    add b
    add b
    add b
    add b

jr_035_663f:
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nz, jr_035_662b

    db $10
    rst $28
    inc c
    di
    add d
    db $fd
    pop bc
    cp $e0
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $e6
    ld sp, hl
    adc b
    rst $30
    jr nc, jr_035_663f

    ret nz

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
    nop
    nop
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
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ld hl, sp-$01
    ld hl, sp-$01
    inc e
    rst $38
    rra
    db $fc
    ld c, $ff
    ld c, $f7
    scf
    rst $08
    ld b, a
    cp a
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
    nop
    ld bc, $3f01
    ccf
    ldh [rIE], a
    ld bc, $1ffe
    ldh [rIE], a

jr_035_66d7:
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
    ldh a, [rIF]
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    inc a
    jp $3fc0


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
    ld b, b
    cp a
    jr nc, jr_035_66d7

    ld [$04f7], sp
    ei
    inc bc
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    inc c
    di
    db $10
    rst $28
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_035_6720:
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
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
    adc $ff
    adc [hl]
    rst $38
    rrca
    cp $0f
    rst $38
    rrca
    rst $30
    rla
    rst $28
    ld h, a
    sbc a
    add a
    ld a, a
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, h

jr_035_675e:
    nop
    ld a, h

jr_035_6760:
    nop
    inc a

jr_035_6762:
    nop
    inc a

jr_035_6764:
    nop
    jr c, jr_035_6767

jr_035_6767:
    jr c, jr_035_6769

jr_035_6769:
    jr c, jr_035_676b

jr_035_676b:
    jr jr_035_676d

jr_035_676d:
    jr jr_035_676f

jr_035_676f:
    jr jr_035_6789

    nop
    jr jr_035_6774

jr_035_6774:
    jr jr_035_6776

jr_035_6776:
    jr jr_035_6778

jr_035_6778:
    jr jr_035_677a

jr_035_677a:
    jr jr_035_677c

jr_035_677c:
    ld hl, sp-$10
    ld c, $fe
    inc bc
    rst $38
    adc b
    ld a, a
    adc h
    ld a, e
    adc a
    ld a, b
    adc a

jr_035_6789:
    ld a, b
    adc a
    ld a, b
    rst $08
    jr c, jr_035_675e

    jr c, jr_035_6760

    jr c, jr_035_6762

    jr c, jr_035_6764

    jr c, jr_035_67a2

    db $fc
    nop
    rst $38
    ld a, [hl]
    rst $38
    jp Jump_000_00ff


    rst $38
    jr c, jr_035_6769

jr_035_67a2:
    add $39
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
    add c
    ld a, a
    ld bc, $0101
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
    ld bc, $0301
    inc bc
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    xor $ff
    adc $ff
    rrca
    cp $0f
    rst $38
    rrca
    rst $30
    rla
    rst $28
    daa
    rst $18
    rst $00
    ccf
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    cp $ff
    db $fd
    cp $00
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
    ret nz

    ret nz

    ld a, h
    db $fc
    rlca
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_035_6831:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$87], a
    ld hl, sp-$1f
    cp $38
    rst $38
    ld c, $ff
    add e
    ld a, a
    ld h, b
    sbc a
    jr jr_035_6831

    ld b, $f9
    ld bc, $00fe
    rst $38
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld d, $16
    rra
    rra
    cpl
    cpl
    rst $28
    rst $28
    rst $28
    rst $28
    rst $18
    rst $18
    xor a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld a, a
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
    cp $fe
    ld sp, hl
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$df], a
    pop bc
    ld a, $03
    db $fd
    ld c, $f3
    inc e
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
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add d
    add e
    ld a, [c]
    di
    ld e, $ff
    ld [bc], a
    rst $38
    add c
    ld a, a
    pop af
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl

jr_035_68e9:
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    add hl, sp
    rst $00
    add hl, bc
    rst $30
    add c
    rst $38
    pop hl
    rst $38
    add hl, sp
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    ld h, b
    sbc a
    jr jr_035_68e9

    rlca
    ld hl, sp+$00
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

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ei
    ei
    rst $30
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
    ei
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    ei
    db $eb
    rst $30
    di
    rst $28
    db $e3
    db $e3
    rst $20
    rst $20
    rst $28
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
    cp $fe
    db $fd
    db $fc
    ei
    ld hl, sp-$19
    ldh [$df], a
    pop bc
    cp [hl]
    add e
    ld a, h
    rlca
    ld hl, sp+$0f
    db $fc
    inc sp
    ret c

    ld h, a
    rst $18
    and b
    ld a, a
    add b
    rst $28
    db $10
    rst $28
    db $10
    ei
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
    ldh [$e0], a
    rra
    rst $38
    ldh [$1f], a
    sbc e
    db $e4
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    adc d
    rst $30
    jp z, $7af7

    rst $30
    dec bc
    ld a, a
    ld h, b
    rra
    ld e, d
    push hl
    ld c, e
    or $4a
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld c, d
    rst $30
    ld a, [hl-]
    rst $30
    jp z, $33ff

    rst $38
    inc c
    rst $38
    jp $303f


    rst $08
    inc c
    di
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
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
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ret c

    rst $38
    sbc c
    cp $1e
    ld sp, hl
    jr @+$01

    jr @+$01

    ld a, e
    sbc a
    sbc a
    ld a, a
    rra
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
    cp $fe
    ld sp, hl
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$df], a
    pop bc
    ld a, $07
    ld sp, hl
    ld c, $f4
    dec de
    add sp, $37
    jp nz, $817d

    cp $40
    cp a
    add l
    ld a, d

jr_035_6a20:
    ld c, $f1

jr_035_6a22:
    ld c, $f1

jr_035_6a24:
    ld h, a
    sbc b

jr_035_6a26:
    di
    inc c

jr_035_6a28:
    cp $01

jr_035_6a2a:
    db $fd
    ld [bc], a

jr_035_6a2c:
    ei
    inc b

jr_035_6a2e:
    rst $30
    ld [$00ff], sp

Call_035_6a32:
jr_035_6a32:
    rst $38
    nop

jr_035_6a34:
    rst $38
    nop

jr_035_6a36:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$08
    ld hl, sp-$18
    jr jr_035_6a6d

    ret c

    jr z, jr_035_6a20

    jr z, jr_035_6a22

    jr z, jr_035_6a24

    jr z, jr_035_6a26

    jr z, jr_035_6a28

    jr z, jr_035_6a2a

    jr z, jr_035_6a2c

    jr z, jr_035_6a2e

    jr z, @-$26

    jr z, jr_035_6a32

    jr z, jr_035_6a34

    jr z, jr_035_6a36

    xor b

jr_035_6a5f:
    ret c

    ld l, b
    ld hl, sp+$1e
    cp $d3
    ccf
    ld d, b
    cp a
    ld d, b
    cp a
    ld d, [hl]
    cp l
    ld d, a

jr_035_6a6d:
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    rst $10
    db $fc
    ld de, $d0fe
    rst $38
    inc a
    rst $38
    rlca
    rst $38
    pop bc
    ccf
    jr nc, jr_035_6a5f

    ld c, $f1
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
    nop
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
    ld bc, $0301
    inc bc
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    and $e6
    rst $00
    cp $c6
    rst $38
    adc $f7
    sub $ef
    rst $20
    rst $18
    rst $00
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_035_6ad7:
    rst $38
    cp $fe
    db $fd
    db $fc
    ei
    ld hl, sp-$19
    ldh [$df], a
    pop bc
    cp [hl]
    add e
    ld a, h
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    jr nz, jr_035_6ad7

    ld [bc], a
    db $fd
    dec c
    ld a, [c]
    dec bc
    db $f4
    scf
    ret z

    ld l, a
    sub b
    db $db
    inc h
    cp a
    ld b, b
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
    nop
    nop
    nop
    ret nz

    ret nz

    ld a, b
    ld hl, sp+$0f
    rst $38
    ld bc, $c0ff
    ccf
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$03], a
    db $fc
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    add e
    ld a, a
    ld h, b
    sbc a
    jr @-$17

    ld b, $f9
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    or e
    db $fd
    dec [hl]
    ei
    add hl, sp
    rst $30
    ld sp, $f7ff
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $f7
    ldh a, [$ef]
    ldh [$df], a
    jp Jump_000_043f


    rst $38
    rrca
    rst $30
    rra
    pop hl
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
    cp $00
    ld hl, sp+$00
    ldh [rNR10], a
    ldh [$90], a
    ld h, b
    db $fc
    nop
    and $00
    ld [c], a
    db $10
    ld hl, sp+$00
    ld hl, sp+$04
    db $fc
    ld [bc], a
    ld a, [$ed05]
    ld [de], a
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
    ldh a, [$1f]
    cp $03
    rst $38
    nop
    rst $38
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_035_6bd7:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp-$7f
    cp $e0
    rst $38
    jr c, @+$01

    ld c, $ff
    add e
    ld a, a
    ld h, b
    sbc a
    jr jr_035_6bd7

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    rst $08
    db $fc
    adc h
    rst $38
    adc h
    rst $38
    cp l
    rst $08
    rst $08
    cp a
    adc a
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
    db $fd
    db $fc
    ei
    ld hl, sp-$19
    ldh [$df], a
    pop bc
    cp a
    add d
    ld a, [hl]
    inc b
    cp $18
    db $fc
    jr nz, @-$02

    ld b, b
    ld hl, sp-$80
    ld [hl], c
    add b
    ld [hl], c
    add b
    pop hl
    nop
    db $e3
    add b
    jp $8300


    nop
    rlca
    nop
    rlca
    nop
    ld b, $01
    ld b, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    rra
    nop
    inc e
    nop
    jr c, jr_035_6c5c

jr_035_6c5c:
    ld [hl-], a
    ld bc, $0304
    ld [$1007], sp
    rrca
    add c
    ld e, $29
    ld d, $7b
    inc b
    db $76
    add hl, bc
    ld l, a
    sub b
    adc e
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
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

    ld a, h
    db $fc
    rlca
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    ccf
    pop bc
    rrca
    di
    inc bc
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    add hl, sp
    rst $38
    rrca
    rst $38
    rst $18
    ccf
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    ld a, a
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
    ldh [$e0], a
    call c, $3fc0
    nop
    rst $38
    ld c, $11
    pop af
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop

jr_035_6cd9:
    nop
    ld bc, $0706
    jr jr_035_6cee

    jr nc, jr_035_6cd9

    ld [$1ee6], sp
    pop hl
    ccf
    sub b
    ld a, a
    call z, $e27f
    ld a, a
    reti


    ld a, a

jr_035_6cee:
    call nz, Call_035_447f
    rst $38
    ld h, h
    rst $38
    sub h
    ld a, a
    call z, $f4bf
    rst $08
    ld hl, sp-$09
    ld a, h
    ei
    ccf
    db $fc
    ld e, a
    cp a
    daa
    rst $18
    inc de
    rst $28
    inc a
    jp Jump_035_41be


    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    rra
    rst $38
    ld bc, $00ff
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
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
    jr nc, @+$01

    ld a, b
    rst $38
    db $fc
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop af
    rst $38
    db $fd
    di
    db $e3
    db $fd
    db $e3
    rst $38
    db $e3
    rst $38
    jp $c6ff


    rst $38
    add $ff
    add $ff
    and $ff
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $00
    ccf
    add c
    pop af
    ld h, b
    ld a, h
    db $10
    ld e, $0c
    rrca
    inc sp
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $8101
    add c
    ld h, c
    pop hl
    ld de, $0df1
    db $fd
    jp Jump_000_21ff


    rst $38
    pop de
    rst $38
    xor l
    rst $38
    sub e
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    ret


    rst $38
    add hl, hl
    rst $38
    sbc d
    ld a, a
    jp z, $f2bf

    rst $08
    ld a, [$7ef7]
    ei
    ld a, $ff
    sbc $3f
    db $e4
    rra
    ld a, [$fd07]
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$3f], a
    db $fc
    rlca
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
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
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    ld h, a
    sbc a
    ld e, $e7
    ld b, $ff
    dec c
    cp $0c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    inc e
    jr jr_035_6e1c

    sbc b
    sbc b
    ld hl, sp-$08
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    adc a
    inc bc
    db $e3
    pop bc
    ld sp, hl

jr_035_6e1c:
    ldh [$7c], a
    ld hl, sp-$01
    rst $00
    cp $c3
    db $fd
    cp b
    add $be
    pop bc
    rst $38
    add b
    rst $38
    add b
    rst $28
    sub b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    dec de
    db $e4
    ld [bc], a
    db $fd
    nop

Call_035_6e3f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr @+$01

    call z, $423f
    cp a
    ld bc, $ffff
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
    ret nz

    ld a, a
    ld hl, sp+$0f
    rst $38
    ld bc, $00ff
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
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
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

jr_035_6e85:
    rst $38
    rra
    rst $38

jr_035_6e88:
    sbc a
    ld a, a
    ld a, c
    sbc a
    jr c, jr_035_6e85

    scf
    ld hl, sp+$30
    jr nc, @+$32

    jr nc, jr_035_6f05

    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
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
    rra
    rst $38
    rst $00
    rlca
    pop hl
    ld bc, $c0f8
    cp [hl]
    jr nc, jr_035_6e88

    inc c
    and e
    ld b, d
    pop af
    ld bc, $00f8
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    ld a, a
    add e
    cpl
    rst $10
    rlca
    rst $38
    ld b, $ff
    ld c, $ff
    ld c, $ff
    dec e
    rst $38
    inc e
    rst $38
    dec sp
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl-], a
    rst $38
    ld [hl], h
    rst $38
    ld h, h
    rst $38
    di
    rst $28
    db $fc
    di
    rst $38
    db $fc
    nop
    nop
    ldh a, [$f0]
    ld e, $fe
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01

jr_035_6f05:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    db $db
    ccf
    jr c, @-$1f

    inc a
    di
    inc sp
    db $fc
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
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
    ccf
    adc a
    rrca
    jp $f103


    add c
    ld a, h
    ld h, b
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ldh [$80], a
    ld h, b
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$c0]
    ldh a, [rNR41]
    ldh a, [$d0]
    ldh a, [rNR41]
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$80], a
    ret nz

    ld b, b
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    db $fc
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_035_6f8b:
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
    ret nz

    rst $38
    ldh a, [rIE]
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
    ccf
    rst $38
    rra
    rst $38
    db $db
    ccf
    jr c, jr_035_6f8b

    inc a
    di
    ld [hl], e
    db $fc
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add c
    add c
    pop hl
    pop hl
    ei
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
    ld a, a
    rst $38
    rra
    rra
    add a
    rlca
    pop hl
    ld bc, $c0f8
    ld a, $20
    rra
    jr jr_035_6fe4

    ld b, $01
    ld bc, $0000
    nop
    nop

jr_035_6fe4:
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    inc c
    dec c
    ld c, $0a
    add hl, bc
    rrca
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    ld [de], a
    inc c
    inc c
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_035_7029

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    inc c
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_7040

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc h
    inc c
    dec h

jr_035_7029:
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    dec l
    ld [bc], a
    inc c
    ld l, $2f
    jr nc, jr_035_706d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_035_7040:
    nop
    nop
    nop
    nop
    nop
    ld [hl], $0c
    inc c
    inc de
    scf
    jr c, jr_035_7085

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    ld a, $0c
    dec de
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
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
    dec [hl]

jr_035_706d:
    ld d, c
    ld d, d
    ld d, e
    nop
    nop
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
    nop
    nop
    ld h, d
    ld h, e
    ld h, h

jr_035_7085:
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
    nop
    nop
    ld [hl], b
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
    inc c
    ld a, h
    nop
    nop
    nop
    nop
    ld a, $0c
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
    nop
    nop
    nop
    nop
    add a
    inc c
    adc b
    adc c
    adc d
    adc e
    dec [hl]
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    nop
    nop
    nop
    sub c
    sub d
    inc c
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    inc c
    inc c
    inc c
    sbc c
    nop
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    add hl, bc
    sbc [hl]
    sbc a
    and b
    add hl, bc
    and c
    and d
    inc c
    inc c
    and e
    and h
    and l
    inc c
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    add hl, bc
    add hl, bc
    xor l
    xor [hl]
    inc c
    inc c
    xor a
    or b
    or c
    or d
    add hl, bc
    add hl, bc
    add hl, bc
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    add hl, bc
    cp c
    cp d
    or d
    add hl, bc
    cp e
    cp h
    cp l
    add hl, bc
    add hl, bc
    add hl, bc
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_09c3

    call nz, $c6c5
    rst $00
    inc c
    ret z

    ret


    jp z, $0909

    add hl, bc
    set 1, h
    nop
    call Call_000_09ce
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    dec b
    ld b, d
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    dec b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0001
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0006
    nop
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
    ld bc, $0000
    nop
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
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
    ld [hl], b
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
    ccf
    rst $38
    ld a, a
    sbc a
    sbc a
    ld a, a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    add b
    rst $38
    rst $00
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    di
    db $fc
    db $fc
    di
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rra
    rra
    ldh [rIE], a
    nop
    rst $38
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    inc a
    jp $3fc7


    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    jr c, @+$01

    jr @+$01

    inc e
    inc e
    inc c
    inc c
    ld c, $0e
    rlca
    rlca
    add a
    add a
    add e
    add e
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    pop hl
    cp $c6
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$38
    ld sp, hl
    ret z

    ld sp, hl
    ret z

    ld sp, hl
    ret z

    ld sp, hl
    ret z

    ld sp, hl
    ret z

    ld sp, hl
    ret z

    ld sp, hl
    ret z

    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    rlca
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    ldh [$1f], a
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    inc a
    jp $3fc7


    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    inc c
    inc c
    ld c, $0e
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $1f1f
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    nop
    rst $38
    rlca
    ld hl, sp+$38
    jp Jump_000_1ec1


    rrca
    jr nc, jr_035_7485

    rlca
    ld a, a
    ld [$c4ff], sp
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    inc de
    rst $38
    db $10
    rst $38
    ld h, c
    cp $9f
    pop hl
    ld a, a
    sbc a
    ld a, a
    rst $38
    db $fc
    ld a, a
    inc sp
    ld a, h
    ld b, d
    dec a
    or b
    rrca
    ret nz

jr_035_7485:
    rra
    ld d, b
    rrca
    ld l, b
    rlca
    jr c, jr_035_7493

    ld e, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop

jr_035_7493:
    nop
    nop
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
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    db $fc
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
    ldh [$1f], a
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    inc a
    jp $3fcf


    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    inc e
    inc e
    inc c
    inc c
    ld c, $0e
    ld b, $06
    ld b, $06
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    cp a
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
    db $fc
    rst $38
    ret nz

    rst $38
    ld bc, $0eff
    rst $38
    ld a, b
    and a
    cp h
    db $76
    dec a
    jp c, $0aff

    rst $38
    jp hl


    rst $38
    dec h
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    add hl, bc
    rst $38
    add hl, sp
    rst $38
    jp Jump_000_3ffc


    jp Jump_000_3fff


    cp $ff
    pop af
    cp $8f
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    ld a, a
    add b
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

    ld a, a
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    inc a
    jp $3fcf


    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    inc e
    inc e
    inc e
    inc e
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld b, $06
    rlca
    rlca
    ld a, a
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
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    rlca
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    nop
    add sp, $17
    ldh [$1f], a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
    rst $38
    ld b, h
    rst $38
    ld h, d
    rst $38
    and e
    rst $38
    sbc h
    rst $38
    push hl
    ld a, [$c13e]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3e01
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3d
    jp $3fdf


    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    jr c, @+$01

    jr @+$01

    jr jr_035_75fa

    jr @+$1a

    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    rra
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
    db $fc

jr_035_75fa:
    rst $38
    ldh [rIE], a
    ld bc, $0efe
    ldh a, [rSVBK]
    add b
    add b
    ld hl, sp+$10
    or c
    ld e, a
    sub c
    ld a, a
    add hl, de
    rst $38
    add hl, de
    rst $38
    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    db $e4
    ei
    add h
    ei
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$93], a
    ld l, h
    jp $e13c


    ld e, $f5
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld a, [c]
    dec c
    add a
    ld a, b
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    dec a
    jp $3fdf


    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    jr nc, jr_035_769a

    jr c, jr_035_76a4

    jr c, jr_035_76a6

    jr c, jr_035_76a8

    jr jr_035_768a

    jr jr_035_768c

    dec de
    dec de
    ccf
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

jr_035_7681:
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    rlca

jr_035_768a:
    ld hl, sp+$38

jr_035_768c:
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
    add b
    nop
    ld h, b
    ret nz

jr_035_769a:
    ld d, b
    ldh [$38], a
    ld hl, sp-$5c
    ld hl, sp-$64
    db $e4
    db $fc
    sbc h

jr_035_76a4:
    db $fc
    db $fc

jr_035_76a6:
    cp $fc

jr_035_76a8:
    pop af
    cp $8d
    ld a, [c]
    ld c, $f1
    db $10
    rst $28
    jr nc, jr_035_7681

    ld [hl], b
    adc a
    ld a, c
    add [hl]
    scf
    ret z

    ld h, a
    sbc b
    dec hl
    call nc, $936c
    pop af
    ld c, $f4
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [$de05]
    ld hl, $5da2
    nop
    rst $38
    ld de, $00ee
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    ld h, b
    ld a, a
    ld h, a
    ld a, b
    db $f4
    ccf
    db $f4
    ccf
    db $f4
    ccf
    ld a, [c]
    ccf
    ld a, [c]
    ccf
    ld a, [c]
    ccf
    ld a, [c]
    ccf
    ld a, [c]
    ccf
    ld a, [$fa1f]
    rra
    ld a, [$f91f]
    rra
    ld sp, hl
    rra
    ld sp, hl
    rra
    ld sp, hl
    rra
    db $fd
    rra
    dec c
    rrca
    dec a
    ccf
    call z, $0cff
    cp $0c
    cp $8c
    ld a, a
    adc [hl]
    ld a, a
    add [hl]
    ld a, a
    add $3f
    add $3f
    add $3f
    add $3f
    rst $00
    ccf
    rst $00
    ccf
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    ccf
    rst $08
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld a, a
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
    cp $ff
    ldh [rIE], a
    ld bc, $0efe
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
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add c
    nop
    ret nz

    ld bc, $00c1
    pop bc
    nop
    ld b, c
    add b
    pop bc
    nop
    and $00
    ret nz

    nop
    add b
    nop
    add b
    nop
    db $dd
    nop
    inc e
    add b
    ld h, c
    add b
    ld e, [hl]
    add c
    ld e, h
    add e
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    ld b, $f9
    ld a, [$0205]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $1f
    rst $38
    ldh [rIE], a
    nop
    ld a, a
    rra
    ld h, b
    pop hl
    ld e, $81
    cp $81
    cp $81
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld b, b
    and b
    and b
    ldh [$e0], a
    rst $20
    rst $20
    ld hl, sp-$08
    ldh a, [$f0]
    di
    di
    db $fc
    db $fc
    ldh a, [rIE]
    di
    db $fc
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    rlca
    ld hl, sp+$38
    ret nz

    pop bc
    ld bc, $0603
    rlca
    nop
    rrca
    inc e
    rra
    inc h
    rra
    inc b
    ccf
    ld b, h
    ld a, a
    ld e, h
    rst $38
    ld h, e
    db $fc
    rra
    db $e3
    ld a, a
    sbc a
    rst $38
    ld a, a
    ld hl, sp+$7f
    nop
    ld a, a
    or b
    ld c, a
    db $fc
    inc bc
    jp c, $f425

    dec bc
    cp a
    ld b, b
    push af
    ld a, [bc]
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
    cp b
    ld b, a
    jr nc, jr_035_78b9

    add b
    ld a, a
    ret nz

    ccf
    jp nz, $c13d

    ld a, $c1
    ld a, $c0
    ccf
    pop hl
    ld e, $63
    inc e
    add a
    ld a, b
    inc c
    di
    ld b, $f9
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    ret nz

    rst $38
    rra
    ldh [rNR10], a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rla
    rla
    jr @+$01

    nop
    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    db $10

jr_035_78b9:
    rst $38
    db $10
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
    sub c
    ld a, [hl]
    sub c
    ld a, [hl]
    sub c
    ld a, [hl]
    sub c
    ld a, [hl]
    sub c
    ld a, [hl]
    sub c
    ld a, [hl]
    sub a
    ld a, a
    sbc b
    ld a, a
    add b
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    inc bc
    db $fc
    ccf
    jp Jump_000_3fff


    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    adc [hl]
    adc [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add a
    add a
    rst $18
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
    cp $ff
    ldh a, [rIE]
    ld bc, $1eff
    rst $38
    db $e3
    jr c, jr_035_792f

    rst $00
    ld a, a
    jr c, @+$01

    pop bc
    rst $38
    add hl, de
    rst $38
    jp hl


    rst $38
    adc c
    rst $38
    sbc b
    rst $38
    pop hl
    cp $0f
    pop af
    ld a, a
    adc a
    rst $38
    ld a, a
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop

jr_035_792f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    ldh [$1f], a
    pop af
    ld c, $f4
    dec bc
    ret nz

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
    inc hl
    call c, $da25
    ld d, $e9
    inc e
    db $e3
    call c, $d123
    ld l, $83
    ld a, h
    rlca
    ld hl, sp+$0b
    db $f4
    ld a, $3e
    cp $fe
    ld b, $fe
    and $1e
    ld h, $de
    inc l
    call c, $dc2c
    inc l
    call c, $dc2c
    inc l
    call c, $bc4c
    ld c, h
    cp h
    ld c, h
    cp h
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, a
    cp a
    ld e, b
    cp a
    ld e, b
    cp a
    sbc c
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    sbc c
    ld a, a
    or e
    ld a, [hl]
    or e
    ld a, [hl]
    or e
    ld a, [hl]
    or e
    ld a, [hl]
    or e
    ld a, [hl]
    or e
    ld a, [hl]
    or e
    ld a, [hl]
    or e
    ld a, [hl]
    inc sp
    cp $37
    db $fc
    ld h, a
    db $fc
    ld h, a
    db $fc
    ld h, a
    db $fc
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, a
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    inc bc
    db $fc
    ccf
    jp Jump_000_3fff


    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    sbc b
    sbc b
    jr jr_035_79e2

    jr jr_035_79e4

    jr jr_035_79e6

    jr jr_035_79e8

    jr jr_035_79ea

    rra
    rra
    ccf
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
    db $fc

jr_035_79e2:
    rst $38
    ret nz

jr_035_79e4:
    rst $38
    rlca

jr_035_79e6:
    rst $38
    ccf

jr_035_79e8:
    cp $ff

jr_035_79ea:
    pop af
    rst $38
    ld c, $ff
    pop af
    rst $38
    ld [bc], a
    rst $38
    ld [hl], d
    rst $38
    sub d
    rst $38
    inc de
    rst $38
    jr nc, @+$01

    rst $00
    ld hl, sp+$3f
    rst $00
    rst $38
    ccf
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld h, b
    sbc a
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    add c
    ld a, [hl]
    nop
    rst $38
    sub b
    ld l, a
    ret z

    scf
    ret nz

    ccf
    jp nz, $e23d

    dec e
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
    ldh a, [rIF]
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    ccf
    jp Jump_000_3fff


    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld l, a
    ld l, a
    ld a, a
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
    ld hl, sp-$01
    add c
    cp $1e
    ldh [$e0], a
    add b
    nop
    ret nz

    ldh a, [$38]
    ld hl, sp-$38
    or $0c
    ld a, [c]
    and $f9
    ld h, $f9
    ld [hl+], a
    db $fd
    ld [c], a
    db $fd
    dec de
    db $e4
    ei
    inc e
    ld a, [$f6fc]
    ld hl, sp-$3a
    ld hl, sp+$04
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$04
    ld hl, sp+$0e
    ldh a, [$0e]
    ldh a, [$2c]
    ret nc

    ld c, [hl]
    or b
    ld l, [hl]
    sub b
    ccf
    ret nz

    ld a, a
    add b
    cp e
    ld b, b
    call c, Call_035_6720
    sub b
    scf
    ret nz

    scf
    ret nz

    rla
    ldh [rNR22], a
    ldh [rDIV], a
    di
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
    ld a, [hl+]
    push de
    and h
    ld e, e
    ld bc, $3e01
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$01
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
    ld hl, sp+$07
    add b
    ld a, a
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    ccf
    jp Jump_000_3fff


    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    add $ff
    call z, $cccc
    call z, $cccc
    call z, $8fcc
    adc a
    sbc a
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
    cp $ff
    ldh [rIE], a
    rlca
    ld hl, sp+$38
    ret nz

    ret nz

    nop
    nop
    rlca
    nop
    rra
    nop
    ld a, d
    ld bc, $030c
    ld [$0807], sp
    rlca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    jr nc, @+$11

    jr nc, jr_035_7b47

    ld h, b
    rra
    and b
    rra
    ld h, b
    rra
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld a, b

jr_035_7b47:
    rlca
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $3ffe
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
    ld bc, $03ff
    add e
    ld a, a
    rlca
    rst $38
    ld a, e
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ccf
    rst $00
    rst $38
    ccf
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
    ccf
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    ld hl, sp-$01
    jp Jump_000_1cfe


    ldh a, [$e0]
    add c
    nop
    ld [bc], a
    ld bc, $0305
    dec bc
    rlca
    rlca
    rrca
    rrca
    rra
    ccf
    rra
    ld e, a
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    pop hl
    ld a, a
    ld bc, $00ff
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
    and d
    ld e, l
    push bc
    ld a, [hl-]
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    rlca
    nop
    inc bc
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
    rra
    inc bc
    inc a
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$01
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
    cp $1d
    cp $7f
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    rlca
    ld sp, hl
    ccf
    rst $10
    rst $08
    ld e, a
    ccf
    cp a
    ld a, a
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    ret nz

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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    pop hl
    rst $38
    ld bc, $01ff
    rst $38
    inc sp
    rst $08
    db $e3
    rra
    db $e3
    rra
    rst $20
    rra
    rst $00
    ccf
    rst $00
    ccf
    rst $08
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
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
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
    ld h, e
    ld h, e
    ld b, [hl]
    ld b, [hl]
    add $c6
    add $c6
    call $9fcd
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
    ld hl, sp-$01
    jp Jump_000_1efd


    ld [c], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    ccf
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
    ld a, a
    ld a, a
    ccf
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
    cp $ff
    ldh a, [rIE]
    add a
    rst $38
    dec sp
    rst $38
    jp $03ff


    ld a, a
    add e
    dec sp
    rst $00
    rra
    rst $20
    scf
    rst $08
    sub a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$05
    ldh a, [$f7]
    ldh a, [$f7]
    ldh [$ef], a
    ldh [$ef], a
    ret nz

    rst $18
    ret nz

    sbc $80
    cp a
    add b
    cp [hl]
    nop
    ld a, a
    nop
    ld a, [hl]
    add b
    cp l
    ret nz

    sbc $c0
    db $dd
    ldh [$ee], a
    ldh a, [$f5]
    ld hl, sp-$06
    db $fc
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add d
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    ld a, a
    rrca
    adc a
    inc bc
    di
    nop
    db $fc
    nop
    rst $10
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
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
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    rst $18
    rrca
    ld l, a
    rlca
    sub a
    inc bc
    inc bc
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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    add hl, bc
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    db $10
    add hl, bc
    add hl, bc
    ld de, $1312
    inc d
    dec d
    ld c, $0e
    ld c, $0e
    ld c, $16
    rla
    jr @+$0b

    add hl, bc
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_7fa3

    ld hl, $0922
    add hl, bc
    add hl, bc
    add hl, bc
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_035_7fb9

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_7fd1

    ld [hl-], a
    inc sp
    inc [hl]

jr_035_7fa3:
    dec [hl]
    ld [hl], $37
    jr c, jr_035_7fb1

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_035_7fb1:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_035_7fb9:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    add hl, bc
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    add hl, bc

jr_035_7fd1:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, [hl]
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    add hl, bc
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, [hl]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
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
    add b
    add c
    add d
