SECTION "ROM Bank $0ab", ROMX[$4000], BANK[$ab]

    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    pop af
    cp $e0
    db $fc
    ret nz

    ld hl, sp+$00
    pop af
    db $20, $c3
    nop
    add a
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
    ld [bc], a
    rst $38
    ld b, $ff
    dec bc
    rst $38
    dec b
    rst $38
    rla
    rst $38
    dec hl
    rst $38
    ld a, l
    rst $38
    add b
    add b
    ldh [$c0], a
    ld [hl], b
    ld h, b
    inc a
    jr @+$10

    inc c
    rlca
    inc bc
    ld bc, $0001
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
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
    ld [$0000], sp
    nop
    nop
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
    inc e
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop

jr_0ab_409d:
    nop
    db $fc
    nop
    nop
    nop
    ld a, a
    nop
    ld a, [c]
    rrca
    db $fc
    rst $38
    dec c
    ld a, [c]
    rst $38
    nop
    rst $10
    jr z, jr_0ab_409d

    ld de, $11ee
    call c, Call_0ab_6c23
    sub b
    ret nz

    nop
    ld bc, $4006
    inc a
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

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

jr_0ab_40d0:
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    nop
    rst $38
    dec b
    ld a, [$45ba]
    ld d, l
    xor d
    rst $28
    db $10
    dec b
    nop
    cp [hl]
    ld bc, $9f60
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
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
    ld a, a
    rst $20
    rra
    ret nz

    ld bc, $00c0
    ld a, a
    add b
    inc b
    ld hl, sp+$01
    ldh a, [rP1]
    db $e3
    ld b, b
    add a
    add b
    rrca
    nop
    rra
    ld h, b
    inc bc
    rlca
    ld hl, sp-$02
    ldh a, [$fb]
    ldh [$aa], a
    pop bc
    ld d, l
    add e
    dec bc
    add [hl]
    ld b, $8c
    jr @-$62

    jr c, jr_0ab_40d0

    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    pop bc
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
    ret nz

    add b
    ldh [$60], a
    jr c, @+$32

    inc c
    sbc h
    and $c7
    pop af
    di
    db $fc
    ld hl, sp-$01
    cp $ff
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
    ld d, [hl]
    xor c
    adc d
    ld bc, $0180
    add c
    nop
    add l
    nop
    nop
    add b
    add b
    ld b, b
    ld b, h
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $10
    ldh [$c1], a
    nop
    ld c, $00
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
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$fa05]
    ld b, $f9
    dec b
    ld a, [$e817]
    dec hl
    push de
    rra
    pop hl
    ld a, a
    add e
    cp a
    ld b, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    add c
    ld a, a
    inc bc
    rst $38
    rla
    rst $38
    rrca
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
    cp $fc
    db $fc
    ld sp, hl
    ld hl, sp-$0d
    ldh [$e5], a
    ret nz

    adc a
    nop
    dec de
    ld bc, $032f
    rra
    add $06
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    db $10
    rst $38
    or b
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0303
    ld [bc], a
    ld b, $0e
    inc b
    inc e
    ld [$1810], sp
    jr nc, jr_0ab_423a

    ld h, c
    ld h, b
    ld b, e
    ret nz

    rst $00
    add b
    ld a, h
    jr c, jr_0ab_428f

    ld a, b
    ld a, h
    jr c, jr_0ab_4233

    jr @+$0e

    ld [$0c0e], sp
    ld c, $04
    ld b, $04
    inc b
    inc b
    ld b, $04
    ld b, $04
    add d
    add b
    ld [c], a
    jp nz, Jump_000_2262

    add d
    nop
    ld [c], a
    jp nz, $c2f2

    ld [bc], a

jr_0ab_4233:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0ab_423a:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rlca
    ei
    rlca
    rst $38
    add a
    ei
    rst $38
    cp $ff
    cp $ff
    ld c, $fe
    inc b
    ld a, $1c
    ccf
    inc a
    ccf
    ccf
    ccf
    ccf
    inc c
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0106
    nop
    inc bc
    inc b
    inc bc
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    cp a
    ld h, a
    sbc a
    dec hl
    rst $10
    inc de
    rst $28
    ld bc, $16fe
    jp hl


    inc de
    db $ec
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $01fe
    cp $04
    ei
    ld bc, $00fe

jr_0ab_428f:
    rst $38
    rra
    cp $ff
    and $07
    cp $15
    xor $07
    cp $0f
    or $0c
    rst $30
    inc l
    rst $10
    rlca
    nop
    rrca
    nop
    ld [bc], a
    dec b
    ld [$1807], sp
    rlca
    jr nc, jr_0ab_42bb

    ld [hl-], a
    dec c
    ld h, d
    dec e
    ld h, e
    inc e
    ld b, e
    inc a
    sbc a
    ld a, h
    cp a
    ld a, h
    rra
    db $fc
    ld e, a

jr_0ab_42bb:
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld sp, hl
    ldh a, [$e7]
    db $e3
    rst $08
    rst $00
    sbc a
    add hl, bc
    dec h
    ld [hl-], a
    ld l, c
    ld b, [hl]
    dec h
    sbc d
    dec e
    ld h, d
    cp [hl]
    ret nz

    ld a, $c0
    sbc $f8
    ld a, e
    ldh a, [$73]
    ld [hl], c
    ld sp, hl
    ld [hl], e
    ld [hl], e
    rst $38
    ld sp, $30ff
    rst $38
    jr nc, @+$01

    ld a, [hl-]
    rst $38
    jr c, @+$01

    inc a
    add hl, de
    ccf
    dec e
    ccf
    ccf
    ccf
    ld h, a
    db $e3
    ld b, a
    add a
    jp $818f


    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    db $fc
    nop
    ld hl, sp+$00
    pop af
    nop
    ld a, [c]
    ld bc, $03e4
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld bc, $1f1f
    rra
    rlca
    rra
    rlca
    ccf
    inc b
    inc e
    nop
    inc d
    nop
    inc e
    nop
    inc e
    inc d
    inc e
    jr jr_0ab_434f

    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc a
    inc e
    inc a
    inc e
    inc a

jr_0ab_434f:
    inc e
    inc a
    ld e, $1c
    ld a, $3c
    ld e, $3c
    ld a, $3e
    ld a, h
    ld a, b
    db $fc
    ldh a, [$e0]
    pop af
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    db $fd
    rra
    inc a
    db $10
    rrca
    inc b
    inc bc
    ld b, $01
    ld b, $01
    ld c, $01
    ld c, $01
    ld c, $01
    inc c
    inc bc
    add b
    rrca
    nop
    rra
    nop
    rra
    ld bc, $001f
    ccf
    rlca
    ld hl, sp+$1c
    db $e3
    ld [hl], e
    adc a
    dec d
    ccf
    inc bc
    db $fd
    rlca
    ld sp, hl
    add l
    ei
    ld [$0dff], sp
    ld a, [$fa3d]
    ld a, d
    db $fd
    ei
    db $fd
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd

jr_0ab_43b9:
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    and $ff
    cp [hl]
    db $db
    ccf
    rst $20
    cpl
    rst $18
    or b
    ld a, a
    ldh [rIE], a
    ld bc, $02fe
    db $fc
    inc b
    ld sp, hl
    dec de
    pop hl
    ld [hl], a
    add e
    rst $08
    daa
    rst $18
    rrca
    rra
    rra
    ld a, a
    rra
    rst $38
    rra
    ld a, l
    adc a
    ld a, [c]
    adc a
    cp $87
    db $e4
    adc a
    jp c, $768d

    sbc c
    pop af
    ld a, $a1
    ld a, [hl]
    ld d, [hl]
    jp hl


    jr c, jr_0ab_43b9

    ld a, b
    add [hl]
    ldh a, [$0c]
    pop af
    ld [$8370], sp
    ld h, c
    add [hl]
    ld d, a
    and b
    add h
    ld h, e
    ld c, b
    add [hl]
    sub b
    inc c
    jr nz, jr_0ab_441e

    ld b, b
    ld sp, $6182
    inc b
    jp $840a


    db $10
    inc c
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ab_441e:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    ld l, a
    rst $38
    ld a, a
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
    rra
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, $fc
    ld l, d
    pop af
    ld l, $c7
    ld a, $1f
    ei
    ld a, a
    push hl
    rst $38
    dec d
    rst $38
    ld [hl], $fd
    push hl
    cp e
    dec de
    rst $20
    ld l, l
    sbc a
    call c, $ca3b
    ld [hl], a
    ld [hl], e
    rst $08
    rst $18
    ccf
    rra
    rst $38
    ld a, $ff
    rst $30
    rst $38
    rst $18
    rst $38
    scf
    rst $38
    ld a, a
    cp $7f
    db $fc
    cp a
    ld sp, hl
    cp a
    di
    rst $38
    rst $20
    rst $28
    rst $08
    ld e, a
    sbc a
    cp a
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    cp $e3
    db $fc
    rst $00
    ld sp, hl
    add e
    cp $06
    db $fc
    inc de
    ld sp, hl
    ld b, $f3
    inc l
    add $d5
    ld [$11ba], sp
    ld [hl], $63
    db $ec
    add $98
    adc h
    jr nc, jr_0ab_44fb

    ld [hl], e
    ld hl, $42e5
    adc $84
    sbc h
    ld [$1029], sp
    ld d, d
    ld hl, $100b
    add hl, bc
    jr nc, jr_0ab_4505

    ld h, c
    inc h
    jp $8641


    add b
    inc c
    inc b

jr_0ab_44fb:
    jr jr_0ab_4505

    jr nc, jr_0ab_4530

    ld b, b
    cp a
    rst $20
    ld a, e
    or a
    rra

jr_0ab_4505:
    dec sp
    ld a, e
    rra
    adc l
    rra
    rst $10
    adc a
    rst $08
    rst $00
    jp $f3e7


    ld h, e
    di
    ld [hl], c
    ld sp, hl
    pop af
    ld sp, hl
    ret c

    db $dd
    adc h
    rst $08
    add $e7
    rst $20
    rst $30
    ld [c], a
    ei
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    cp $ff
    rst $38
    ld l, h
    rst $18

jr_0ab_4530:
    ret


    rst $18
    ret z

    rst $18
    rst $10
    call c, $ffff
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
    db $d3
    rst $28
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ld e, a
    sbc a
    rst $38
    ld a, a
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
    ldh a, [$df]
    ei
    rst $18
    rst $08
    rst $10
    rst $08
    rst $18
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $18
    rst $18
    rst $18
    cp a
    cp a
    ld a, a
    rst $18
    ld a, a
    rst $18
    rst $38
    sbc $ff
    rst $18
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    ei
    db $ed
    or $eb
    db $dd
    sbc [hl]
    di
    ld [hl], l
    xor $af
    reti


    sbc $33
    push de
    ld l, [hl]
    adc d
    db $dd
    sbc a
    inc sp
    inc sp
    ld h, [hl]
    ld h, [hl]
    call z, $990c
    ld sp, $3233
    ld h, a
    daa
    call z, $984d
    ld e, e
    jr nc, jr_0ab_45de

    ld h, d
    ld h, l
    add $c3
    adc h
    add a
    jr jr_0ab_45cc

    jr c, jr_0ab_45c6

    ld [hl], b
    cp a
    ld b, b
    rrca
    ret nz

    rra
    add b
    rra
    nop
    ld a, $c0
    dec hl
    add b
    dec l
    nop

jr_0ab_45c6:
    jr z, jr_0ab_45c8

jr_0ab_45c8:
    ld b, h
    nop
    ld b, b
    nop

jr_0ab_45cc:
    nop
    nop
    nop
    nop
    rst $08
    adc a
    rst $08
    adc a
    adc a
    adc a
    rst $08
    adc a
    adc a
    adc a
    rst $18
    adc a
    adc a
    adc a

jr_0ab_45de:
    rst $08
    adc a
    adc a
    adc a
    rst $08
    adc a
    adc a
    adc a
    rst $08
    adc a
    rst $08
    adc a
    adc a
    rrca
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    adc a
    add e
    rst $08
    adc e
    adc $00
    nop
    nop
    nop
    nop
    rst $18
    rrca
    adc a
    rrca
    adc a
    rrca
    rst $38
    ccf
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
    cp a
    rst $18
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    inc sp
    rst $38
    and a
    rst $38
    rst $28
    cp a
    rst $28
    cp a
    xor a
    rst $38
    cp a
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    cp a
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
    cp a
    rst $38
    db $db
    rst $38
    or h
    rst $38
    ld c, c
    rst $38
    or e
    rst $38
    ld l, l
    rst $38
    cp l
    ld l, a
    ld l, c
    rst $18
    sbc e
    rst $30
    ld a, h
    rst $20
    ld hl, sp-$31
    ld d, b
    cp a
    ldh [$3f], a
    ld [hl], b
    rst $08
    ldh [$9f], a
    ret nz

    ccf
    nop
    ld a, a
    ld b, b
    rst $38
    and b
    rst $18
    ld [$fef7], sp
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    jp hl


    ld d, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    nop
    push af
    nop
    sbc l
    nop
    ld d, d
    nop
    jr z, jr_0ab_4698

jr_0ab_4698:
    jr nz, jr_0ab_469a

jr_0ab_469a:
    add b
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld hl, sp-$1f
    ld hl, sp-$0f
    ld hl, sp-$1f
    ld hl, sp-$1f
    ld hl, sp-$17
    ldh a, [$d9]
    ldh [$f9], a
    add b
    ld sp, hl
    add b
    pop af
    add b
    pop af
    add b
    pop af
    add b
    ldh a, [$80]
    pop hl
    add b
    ldh [$80], a
    pop hl
    add b
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ld bc, $0000
    nop
    ld bc, $f900
    ld hl, sp-$07
    ld hl, sp-$08
    ld sp, hl
    pop hl
    ld hl, sp-$1f
    ld hl, sp-$0f
    ldh [$e1], a
    ret nz

    or c
    ret nz

    or c
    ret nz

    cp c
    ret nz

    sbc c
    ldh [$99], a
    ldh [$c8], a
    ldh a, [$c0]
    ld hl, sp-$38
    pop af
    ret z

    pop af
    ldh [$f9], a
    ldh [$f9], a
    ldh [$f9], a
    ldh a, [$f9]
    ld hl, sp-$07
    ldh a, [$f9]
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    db $dd
    db $eb
    rst $38
    ld sp, hl
    cp $f9
    rst $38
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $30
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    cp $fd
    cp $fb
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0a
    ldh a, [$08]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIF]
    ld hl, sp+$50
    xor a
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    cp $00
    cp $00
    ld [$dc00], a
    nop
    ld c, e
    nop
    ld d, c
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld hl, sp+$07
    cp $01
    ld hl, sp+$07
    db $f4
    dec bc
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
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $00
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    cp $00
    db $fc
    nop
    cp $00
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    add e
    ld a, h
    rrca
    ldh a, [$3f]
    ret nz

    rra
    ldh [$0b], a
    db $f4
    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $10fe
    rst $38
    inc e
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    xor $3f
    and l
    ld a, a
    ld [hl+], a
    ld a, a
    and l
    ld a, a
    ld d, d
    ld a, a
    ld d, b
    cpl
    nop
    nop
    add b
    nop
    rrca
    ldh a, [$fb]
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
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    nop
    jp z, $aa00

    nop
    sbc d
    nop
    ld b, b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc d
    ld [hl], l
    ld hl, $c4de
    dec sp
    ld h, d
    sbc l
    sub b
    ld l, a
    ld h, b
    sbc a
    ld de, $c8ee
    scf
    dec d
    ld [$c639], a
    db $ec
    inc de
    ret nc

    cpl
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    push af
    nop
    ret z

    nop
    cp a
    nop
    nop
    nop
    add b
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
    ld bc, $ff00
    nop
    db $fc
    nop
    call nc, $ff00
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld b, a
    cp b
    dec [hl]
    jp z, $f40b

    dec h
    ld a, [$ffda]
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld a, [$f9fd]
    cp $f5
    ld a, [$f4eb]
    db $eb
    db $f4
    ccf
    ret nz

    cp a
    ret nz

    jp hl


    or $5f
    rst $38
    xor a
    rst $38
    ld c, e
    rst $38
    sub l
    rst $38
    ld c, e
    rst $38
    add d
    rst $38
    dec b
    rst $38
    cpl
    nop
    nop
    nop
    add b
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor l
    nop
    db $f4
    nop
    xor b
    nop
    add b
    nop
    jr z, jr_0ab_4906

jr_0ab_4906:
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    add b
    ld a, [bc]
    push bc
    ld [bc], a
    call $c807
    ld c, $c1
    ld [$8dc7], sp
    ld b, d
    ret


    ld b, $48
    add a
    rlc h
    rst $08
    nop
    ld c, a
    add b
    rst $08
    nop
    rst $08
    nop
    adc e
    inc b
    adc a
    nop
    rst $08
    nop
    push bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    adc l
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    nop
    nop
    nop
    nop
    adc d
    nop
    jp nc, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld e, a
    and b
    ld l, d
    sub l
    add hl, hl
    sub $55
    xor [hl]
    ld b, l
    cp $2b
    cp $fc
    rst $38
    cp $ff
    cp $ff
    ld [bc], a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    sub a
    cp $00
    rst $38
    ld a, $c0
    jp nc, $be2c

    ld b, b
    cp $00
    cp $00
    and $00
    add $00
    ret c

    nop
    sub b
    nop
    db $f4
    nop
    ret nz

    nop
    ldh [rP1], a
    rst $38
    ld hl, sp-$0d
    pop af
    reti


    ldh [rIE], a
    ld hl, sp-$13
    di
    jp hl


    rst $38
    and $fb
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
    cp $ff
    rst $30
    rst $38
    rst $28
    rst $38
    sbc d
    rst $38
    sub l
    rst $38
    dec bc
    rst $38
    or $df
    push hl
    cp a
    and b
    ld e, a
    nop
    nop
    nop
    nop
    jr nz, jr_0ab_49d6

jr_0ab_49d6:
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, [$e800]
    nop
    ld d, b
    nop
    add sp, $00
    jr nz, jr_0ab_49ea

jr_0ab_49ea:
    nop
    nop
    nop
    nop
    ld b, b
    nop
    rrca
    sbc a
    adc a
    rra
    adc a
    rra
    ld c, $9f
    ld c, $9f
    rrca
    sbc a
    rra
    sbc a
    rra
    sbc a
    sbc a
    ld e, $9f
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    dec de
    sbc a
    rra
    sbc a
    rra
    rra
    ld a, [de]
    rra
    inc e
    rra
    ld e, $9f
    ld d, $9f
    ld e, $1e
    ld c, $1e
    ld [de], a
    ld d, $02
    ld l, $02
    jr z, jr_0ab_4a28

    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc b
    ld [bc], a

jr_0ab_4a28:
    inc b
    ld [bc], a
    nop
    ld b, $06
    ld [$0218], sp
    ld [$0402], sp
    ld [bc], a
    inc e
    ld [bc], a
    inc a
    ld [bc], a
    jr c, jr_0ab_4a40

    ld a, [hl-]
    inc b
    ld a, [hl+]
    inc d
    ld a, [hl-]
    inc b

jr_0ab_4a40:
    ld a, d
    inc b
    ld a, d
    inc b
    ld a, [de]
    inc h
    ld a, d
    inc b
    ld l, d
    inc d
    ld l, d
    inc d
    ld l, d
    inc d
    ld [hl+], a
    ld e, h
    daa
    ld e, b
    inc hl
    ld e, h
    inc sp
    ld e, h
    or e
    ld e, h
    and e
    ld e, h
    or a
    ld c, b
    scf
    ret z

    db $ec
    ld e, e
    dec de
    rst $28
    dec bc
    rst $38
    ld bc, $0bff
    db $fd
    dec bc
    db $fd
    ld b, e
    db $fd
    ld c, e
    db $fd
    jp c, $de7f

    rst $38
    rst $38
    cp $fd
    cp $ff
    db $fc
    rst $30
    db $fc
    push af
    ld a, [hl]
    push af
    cp $f1
    cp $71
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $e9
    cp $9b
    xor $b8
    rst $28
    add sp, -$41
    cp c
    rra
    cp c
    rra
    jp hl


    rra
    ret


jr_0ab_4a99:
    ccf
    cp c
    ld a, a
    ld sp, hl
    ccf
    ei
    cp a
    jp c, $faff

    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    ei
    ld e, c
    rst $38
    cp [hl]
    db $fd
    dec l
    cp $1b
    cp $93
    cp $b4
    rst $38
    dec a
    rst $28
    call c, Call_000_0003
    nop
    nop
    nop
    nop
    nop
    call z, $9000
    ld [$0810], sp
    inc c
    nop
    ld [de], a
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
    jr nz, jr_0ab_4ade

jr_0ab_4ade:
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    nop
    nop
    ld b, h
    nop
    stop
    sbc a
    adc [hl]
    rst $18
    adc [hl]
    rst $18
    adc [hl]
    sbc a
    sbc [hl]
    sbc [hl]
    inc d
    sbc h
    jr jr_0ab_4a99

    sbc b
    sbc b
    sbc b
    sbc h
    sub b
    sbc h
    add b
    sbc h
    add h
    cp [hl]
    adc h
    rst $38
    sbc b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh [$c3], a
    db $fc
    ld b, e
    db $fc
    ld b, [hl]
    ld a, c
    ld b, c
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, a
    ld a, [hl]
    ld e, a
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, c
    ld a, [hl]
    dec e
    ld e, [hl]
    dec de
    inc c
    ld bc, $410e
    ld c, $43
    inc c
    ld b, c
    ld c, $83
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    and c
    inc c
    and b
    dec c
    and c
    inc c
    and b
    dec c
    add b
    dec l
    dec b
    jr z, @+$27

    ld [$2807], sp
    inc bc
    jr z, jr_0ab_4b8a

    ld a, [hl+]
    ld b, c
    ld a, [hl+]
    ld b, c
    ld a, [hl+]
    ld b, h
    ld a, [hl+]
    ld h, h
    ld a, [hl+]
    inc e
    ld h, d
    jr z, jr_0ab_4bcc

    jr c, jr_0ab_4bce

    jr c, jr_0ab_4bd0

    ld a, b
    db $76
    ld l, b
    db $76
    ld l, h
    db $76
    db $e4
    ld a, $24
    cp $34
    xor $2c
    and $2c
    and $6c
    and $e4
    and $ec
    and $f4
    and $76
    db $e4
    db $76
    db $e4
    db $76
    db $e4
    ld d, [hl]
    db $e4
    ld d, [hl]
    db $e4
    ld d, [hl]
    db $e4
    sub [hl]
    db $e4
    add h
    db $f4
    add h
    db $f4
    db $e4
    or h
    db $e4
    or h
    db $e4
    or h

jr_0ab_4b8a:
    push af
    or h
    push af
    or h
    dec [hl]
    db $f4
    ld hl, $f5f4
    ld [hl], h
    ld sp, hl
    ld [hl], h
    ld sp, hl
    ld [hl], h
    ld sp, hl
    ld [hl], h
    ld a, l
    ldh a, [$75]
    ld hl, sp+$74
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, [hl-]
    ld sp, hl
    cp d
    ld sp, hl
    sbc d
    ld sp, hl
    jp z, $c0f9

    ei

jr_0ab_4bb0:
    ei
    ldh [$fb], a
    ldh [$fb], a
    ldh [$fb], a
    ldh [$fb], a
    ld h, b
    di
    jr nz, jr_0ab_4bb0

    ld [hl+], a
    di
    nop
    ld a, e
    ld [bc], a
    inc sp
    ld [bc], a
    inc de
    inc bc
    inc de
    inc bc
    inc sp
    inc bc
    rlca
    inc bc

jr_0ab_4bcc:
    rrca
    rlca

jr_0ab_4bce:
    rrca
    nop

jr_0ab_4bd0:
    inc c
    ld [$0038], sp
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0800
    nop
    ld [bc], a
    nop
    ret nz

    add b
    ret nz

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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0301
    ld bc, $0202
    add a
    ld bc, $0287
    adc [hl]
    inc b
    add a
    dec b
    add a
    inc bc
    adc a
    ld b, $87
    rlca
    rlca
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    dec b
    nop
    dec b
    inc b
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    nop
    rlca
    nop
    dec b
    ld bc, $0101
    inc bc
    ld bc, $000f
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $0007
    rlca
    ld [bc], a
    ld c, $03
    dec bc
    ld [bc], a
    ld a, [bc]
    inc bc
    ld b, $0b
    rrca
    dec bc
    dec bc
    rrca
    inc bc
    rrca
    dec bc
    rlca
    rrca
    rlca
    dec b
    rrca
    dec b
    rrca
    add hl, de
    rlca
    add hl, bc
    rla
    ld a, [de]
    rla
    ld b, $1f
    rlca
    rra
    rla
    rrca
    rla
    rrca
    rra
    rrca
    ccf
    rrca
    ld b, e
    rra
    daa
    rra
    and a
    rra
    ld h, l
    rra
    dec a
    rra
    cp a
    rra
    and a
    rra
    and $1f
    rst $28
    ld e, $ef
    ld e, $ce
    ccf
    rst $08
    ccf
    db $eb
    ccf
    jp hl


    ccf
    ld sp, hl
    ccf
    db $dd
    ccf
    ret


    ccf
    call c, $8c2f
    ld a, a
    xor h
    ld e, a
    adc $3d
    dec e
    rst $38
    ld d, d
    rst $38
    ld a, [de]
    rst $30
    rra
    rst $30
    ld d, $ef
    ld a, [hl-]
    rst $08
    dec sp
    sbc $6b
    sbc [hl]
    ld [$7bbf], sp
    xor l
    dec c
    ei
    dec c
    di
    rla
    push hl
    ccf
    push bc
    cp a
    push bc
    dec e
    rst $10
    ld a, a
    sub [hl]
    cp [hl]
    ld d, $f6
    inc e
    ld e, e
    xor b
    ld l, d
    or e
    or $a3
    rst $28
    and e
    xor e
    ld c, a
    adc l
    ld e, a
    dec c
    ccf
    push de
    ccf
    ld d, l
    ld a, $3c
    dec e
    sbc a
    add hl, bc
    ld e, a
    inc bc
    rrca
    rlca
    ld b, $07
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0102
    add c
    nop
    ld b, $00
    ld l, l
    nop
    ld l, b
    nop
    cp b
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld d, $00
    inc b
    nop
    pop hl
    ld bc, $02e2
    db $e4
    add h
    reti


    add b
    or e
    add c
    ld h, a
    rlca
    rst $08
    rrca
    sbc a
    dec de
    ld a, a
    dec a
    db $fc
    db $f4
    cp $f4
    db $fc
    sub $f9
    add $a7
    ld c, h
    jp $736d


    call z, $cc33
    ld a, $d1
    or h
    ld [hl], e
    push de
    dec sp
    call $cc33
    inc sp
    ld c, e
    or h
    add c
    ld a, h
    ld c, b
    rst $38
    rst $18
    call c, $dced
    adc b
    db $fd
    xor b
    rst $38
    cp e
    rst $28
    xor a
    rst $30
    rst $38
    ld [hl], a
    pop af
    ld a, a
    inc sp
    add sp, -$1e
    xor b
    jp c, $fda0

    add b
    ld a, [hl]
    add h
    ld d, d
    call z, $c8fe
    and c
    sbc $56
    rst $38
    ld [hl], a
    xor $fe
    rst $28
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ld d, a
    rst $38
    ld [hl], l
    rst $38
    scf
    rst $38
    cp a
    ei
    cp e
    rst $38
    dec sp
    rst $38
    sub c
    rst $38
    rst $18
    db $fd
    rst $18
    db $fd
    rst $18
    db $fd
    db $fc
    rst $38
    xor $ff
    xor $ff
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    cp a
    xor e
    rst $38
    cp l
    ei
    sbc l
    ei
    jp c, $dbff

    rst $38
    rst $18
    db $fd
    dec e
    rst $38
    ld e, l
    rst $28
    ld b, c
    rst $38
    ld d, d
    rst $28
    ld l, a
    cp $65
    cp $5a
    rst $30
    inc de
    rst $38
    sub e
    rst $38
    scf
    rst $38
    or l
    ld a, a
    rrca
    ld sp, hl
    xor l
    db $db
    add c
    rst $38
    jp hl


    rst $10
    jp c, $9ee5

    pop af
    cp l
    ei
    rst $38
    ld a, l
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, a
    rst $30
    and a
    rst $38
    or a
    rst $18
    rst $10
    cp a
    ld [hl], a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    db $db
    rst $38
    sbc $ff
    ld sp, hl
    rst $18
    pop af
    rst $38
    ld [hl], l
    rst $28
    db $dd
    ld l, a
    ld l, a
    rst $18
    rst $28
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    or a
    rst $38
    db $fd
    rst $38
    push af
    ei
    di
    rst $38
    rst $28
    rst $38
    rst $18
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    or e
    inc bc
    and a
    ld b, $0c
    ld [$1019], sp
    inc sp
    ld hl, $4767
    rst $08
    adc a
    rra
    rra
    ccf
    ld a, $ff
    ld a, l
    db $e4
    db $dd
    db $eb
    db $ed
    di
    and c
    pop af
    and e
    adc d
    ld [hl], e
    jr nz, jr_0ab_4e83

    rst $38
    ld [hl], c
    dec l
    push af
    or $6c
    ld a, [hl]
    ld l, [hl]
    ld d, e
    ld l, [hl]
    ret


    ld e, $ae
    dec e
    ld h, [hl]
    sbc l
    ld a, [$6c9d]
    sbc e
    rst $38
    ld c, e
    ei
    ld h, a
    ld [hl], e
    rst $20
    ld [hl], a
    rst $30
    rst $38
    rst $20
    ei
    rst $28
    rst $28
    db $db
    cp $db
    ld e, l
    db $fc
    sbc [hl]
    ld a, l
    ld a, l
    ld a, $01
    cp $59
    xor b
    ret


    add hl, bc
    add hl, de
    ld b, c
    nop
    ld d, b
    ret nc

    nop
    jp $b320


    ld h, c
    db $e3
    ld d, c
    ld [c], a
    ld d, e
    sbc e
    or $b4
    rst $38
    ld [hl], l
    ei
    ld sp, hl
    ld a, e
    ld a, c
    rst $38
    ld a, l
    rst $38
    ld [hl], a
    db $fd
    cp l
    rst $38
    xor [hl]
    rst $38
    rst $18
    cp [hl]
    rst $38
    sbc $df
    rst $38
    rst $18
    rst $38
    adc [hl]
    rst $38
    ld [hl], h
    rst $28
    db $f4
    rst $28
    jp hl


    rst $38
    db $eb
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    db $eb
    rst $38
    ld a, e
    rst $38
    ld e, e
    rst $38
    dec sp
    rst $38
    db $fd
    cp a
    cp a
    db $fd
    dec e

jr_0ab_4e83:
    cp $8e
    rst $38
    db $fc
    rst $08
    add sp, -$21
    db $db
    rst $38
    rst $00
    rst $38
    rst $30
    rst $28
    rst $28
    rst $38
    ld b, a
    rst $38
    sub a
    rst $38
    scf
    rst $18
    or a
    ld a, e
    ld h, c
    ei
    ld c, [hl]
    cp e
    ld e, a
    cp d
    sbc c
    db $fc
    reti


    cp a
    or l
    cp $b7
    db $fc
    db $dd
    xor $f6
    rst $08
    add [hl]
    rst $38
    ld b, $ff
    xor [hl]
    ld a, a
    cpl
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    or $ff
    db $f4
    rst $38
    di
    db $fd
    ld [hl], c
    rst $38
    ld l, a
    rst $38
    ld e, e
    rst $38
    cp e
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

jr_0ab_4ecf:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rra
    ld a, a
    ccf
    rst $38
    ld a, l
    rst $38
    db $fd
    cp $fd
    db $fc
    cp e
    db $fc
    sbc e
    rst $10
    add e
    and l
    rst $00
    dec [hl]
    rst $00
    daa
    db $e3
    ld a, e
    db $e3
    jp hl


    db $d3
    db $ec
    reti


    db $fc
    sbc h
    call c, $f9be
    cp [hl]
    ld l, d
    or l
    ld b, d
    dec a
    jp z, Jump_000_0c3d

    ld a, e
    ld d, a
    ld a, b
    db $dd
    ld [hl-], a
    sbc c
    or [hl]
    ld [hl], b
    adc a
    ld [de], a
    rst $08
    ld a, e
    rst $08
    ld c, e
    rst $28
    sub e
    rst $28
    rst $38
    or a
    cp [hl]
    rst $30
    ld a, [c]
    ld a, a
    ld a, b
    ld sp, hl
    ld a, c
    db $fd
    ei
    db $fd
    ld sp, hl
    cp $76
    sbc d
    di
    db $10
    inc hl
    ld sp, $2133
    ret


    jr nz, jr_0ab_4ecf

    nop
    and l
    add b
    push hl
    add e
    ld b, a
    jp $47e2


    sbc a
    ld h, [hl]
    inc a
    rst $28
    rst $38
    db $ed
    jp hl


    rst $30
    di
    rst $30
    di
    rst $38
    rst $28
    ei
    rst $28
    ei
    ret


    rst $38
    rst $18
    db $fd
    cp a
    db $fd
    ld a, $ff
    ld a, [hl]
    ld a, [hl]
    ld a, a
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    call z, $3fbf
    call z, $dfe8
    ld a, [c]
    rst $18
    di
    rst $08
    rst $28
    rst $28
    rst $38
    rst $28
    rst $00
    rst $38
    or a
    rst $38
    ccf
    rst $30
    ld [hl], a
    rst $38
    ei
    rst $38
    rst $38
    ei
    ld sp, hl
    rst $38
    ld a, [hl]
    db $fd
    cp [hl]
    ld a, l
    cp b
    rra
    di
    ld a, [de]
    ccf
    ld a, [c]
    and c
    rst $38
    call $bfbf
    rst $18
    rst $18
    rst $38
    ld c, a
    rst $38
    rst $08
    ld a, a
    xor a
    ccf
    and a
    rst $38
    di
    rst $20
    ld h, a
    db $d3
    ld a, [$dd57]
    db $76
    dec [hl]
    ld hl, sp+$7a
    ld sp, hl
    jp hl


    rst $38
    db $eb
    db $fc
    ld c, [hl]
    db $fc
    rst $38
    inc e
    ld e, l
    cp [hl]
    sbc h
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc $ff
    db $ec
    rst $38
    jp hl


    rst $38
    ei
    rst $20
    rst $10
    rst $38
    or a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp a
    cp $fa
    rst $38
    add $ff
    rst $08
    rst $38
    ld a, a
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc b
    dec b
    ld b, $01
    ld bc, $0101
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld bc, $1615
    rla
    jr jr_0ab_501a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ab_502a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ab_5014

    add hl, hl
    ld a, [hl+]
    dec hl

jr_0ab_5014:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ab_504b

jr_0ab_501a:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ab_505b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_0ab_502a:
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
    ld c, [hl]
    ld c, a
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
    ld e, l
    ld bc, $5e01
    ld e, a
    ld h, b

jr_0ab_504b:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld bc, $0101
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_0ab_505b:
    ld bc, $6f6e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld bc, $0177
    ld a, b
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld bc, $8c01
    adc l
    ld bc, $0101
    ld bc, $8f8e
    sub b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $9291
    sub e
    sub h
    ld a, l
    sub l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $9683

Jump_0ab_50af:
    ld a, e
    ld bc, $9701
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld bc, $0101
    ld bc, $9e01
    ld a, e
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
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    nop
    nop
    ld b, $06
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
    ld b, $03
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
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $00
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ab_51e3

jr_0ab_51e3:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ret nz

    add b
    ldh a, [$e0]
    ld a, h
    jr c, jr_0ab_5286

    ld c, $c7
    add c
    ldh a, [$e0]
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ab_5286:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7e
    ld e, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    rrca
    nop
    ldh [rP1], a
    rlca
    nop
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$04
    pop hl
    ldh a, [$e1]
    jp Jump_000_0f87


    inc a
    rra
    ld sp, $c27f
    rst $38
    add b
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, [hl]
    rst $38
    inc bc
    rst $38
    dec h
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld b, c
    ld a, [bc]
    adc $21
    jr nc, jr_0ab_5306

jr_0ab_5306:
    dec bc
    nop
    call nz, Call_0ab_6081
    ldh a, [rNR23]
    inc a
    ld b, $0f
    db $e3
    pop bc
    ld hl, sp-$10
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    ccf
    inc c
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ld a, l
    nop
    ld e, d
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    scf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    rrca
    nop
    add b
    nop
    rra
    nop
    ret nz

    nop
    rra
    nop
    ret nz

    nop
    nop
    nop
    rra
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
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fc
    cp $fe
    db $fc
    ld a, [$fffc]
    ld hl, sp-$05
    db $fc
    db $fd
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
    cp $fc
    ld hl, sp-$10
    di
    pop hl
    rst $00
    add a
    rrca
    rra
    ld a, a
    ccf
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $ff
    db $fc
    db $fd
    cp $ff
    db $fc
    ei
    db $fc
    rst $38
    pop af
    rst $38
    db $e3
    sub b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$3e]
    inc e
    ld c, a
    add a
    di
    pop hl
    db $fc
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    add b
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc c
    ei
    ld [bc], a
    db $fd
    db $10
    rst $28
    ld a, [hl+]
    push af
    ld l, $20
    ld [$0c00], sp
    nop
    jr z, jr_0ab_5438

jr_0ab_5438:
    jr nz, jr_0ab_545a

    jr nz, jr_0ab_543c

jr_0ab_543c:
    jr nz, jr_0ab_543e

jr_0ab_543e:
    jr nc, jr_0ab_5440

jr_0ab_5440:
    nop
    nop
    nop
    nop
    stop
    ld b, $18
    ld [bc], a
    rra
    nop
    rra
    db $10
    rrca
    ld e, $01
    ld [$0117], sp
    rra
    sub b
    rrca
    ld bc, $821f
    rra

jr_0ab_545a:
    inc d
    rrca
    sbc d
    rrca
    dec d
    rrca
    sub b
    rrca
    db $10
    rrca
    sub b
    rrca
    nop
    rrca
    add b
    rrca
    nop
    rrca
    add b
    rrca
    ld b, l
    rrca
    ld [hl], a
    adc b
    db $fc
    inc bc
    inc e
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    db $fc
    rst $38
    ld hl, sp-$11
    ldh a, [$ef]
    ldh [$dc], a
    ldh [$82], a
    ret nz

    or h
    add b
    ld c, c
    add b
    ld e, d
    nop
    jr nz, jr_0ab_5490

jr_0ab_5490:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28

jr_0ab_5497:
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    ld l, c
    sub [hl]
    nop
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    db $fc
    ldh [$f1], a
    ld [c], a
    rst $00
    sbc h
    rrca
    add hl, de
    ld a, $7c
    rst $38
    rst $38
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    push af
    ld a, [$f5ea]
    push de
    ld [$a45b], a
    cp a
    ld b, b
    rst $28
    ld de, $03ff
    rst $38
    ld b, $ff
    inc c
    rst $18
    jr c, jr_0ab_5497

    ld [hl], c
    ld e, h
    db $e3
    cp b
    rst $00
    ldh a, [rIF]
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$c0], a
    ld hl, sp+$70
    ld a, $1c
    rst $20
    rst $00
    ld sp, hl
    ldh a, [$fe]
    db $fc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nz, jr_0ab_5512

jr_0ab_5512:
    jr nz, jr_0ab_5514

jr_0ab_5514:
    jr nz, jr_0ab_5536

    ld h, b
    jr nz, jr_0ab_5598

    ld [hl], b
    ld a, a
    scf
    ld a, a
    scf
    ld a, a
    scf

jr_0ab_5520:
    ld a, a
    add hl, sp
    ld a, c
    jr nc, jr_0ab_5520

    jr c, @+$01

jr_0ab_5527:
    jr c, jr_0ab_5527

    ld hl, sp-$01
    ld a, [hl]
    rst $38
    ld a, [hl]
    ccf
    ld e, $0e
    ld bc, $010e
    ld e, $01

jr_0ab_5536:
    inc e
    inc bc
    db $fc
    inc bc
    inc e
    db $e3
    jr nz, @+$01

    ld de, $02ff
    rst $38
    ld bc, $f9ff
    rst $38
    db $f4
    rst $38
    or $ff
    ld e, e
    rst $38
    add e
    rst $38
    ld c, c
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    ld b, l
    rst $38
    ld b, [hl]
    rst $38
    ld a, [hl+]
    rst $38
    inc bc
    rst $38
    ld bc, $60fe
    add b
    ldh [rNR34], a
    rst $28
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    cp $00
    cp $00
    dec b
    ld a, [$a45b]
    rst $10
    jr z, jr_0ab_55f6

    add b
    cp a
    ld b, b
    rst $28
    db $10
    ld a, a
    add b
    rst $30
    ld [$0003], sp
    rrca
    nop
    ld a, h
    inc bc
    ld hl, sp+$07
    ld [hl], b
    adc a
    ret nz

    ccf
    ld bc, $27ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $fc

jr_0ab_5598:
    pop af
    ld hl, sp-$39
    db $e3
    rst $00
    adc a
    ccf
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    ld bc, $03ff
    rst $38
    rla
    xor $ec
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    dec b
    ei
    ld d, e
    xor a
    ld d, [hl]
    xor a
    xor a
    ld e, h
    sbc $39
    inc l
    di
    ld e, b
    rst $20
    or b
    rst $08
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
    add e
    ld a, h
    rlca
    ld sp, hl
    dec bc
    rst $30
    dec b
    cp $1c
    ld hl, sp+$03
    ld bc, $0103
    inc bc
    ld bc, $0103
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

jr_0ab_55f6:
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
    jr nz, jr_0ab_561a

jr_0ab_561a:
    ldh [$e0], a
    di
    ldh [$f3], a
    ldh a, [rIE]
    ldh a, [$df]
    rra
    rst $18
    rrca
    rst $18
    nop
    rrca
    ld bc, $0081
    add e
    ld bc, $01c1
    pop bc
    ld bc, $00c0
    ret nz

    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ld b, b
    rst $18
    ret nz

    rst $08
    ret nz

    jp $c2c0


    ret nz

    ld b, d
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    reti


    ret nz

    ld b, b
    ldh [$e0], a
    ldh a, [$f2]
    ld hl, sp+$70
    ld hl, sp-$0e
    ld hl, sp-$76
    ldh a, [$e8]
    nop
    add b
    ld h, b
    rst $38
    ld [hl], b
    ccf
    ldh a, [$5f]
    or e
    cp a
    ld [hl], e
    ld a, a
    or e
    adc a
    ld [hl], e
    ld c, [hl]
    or c
    ld b, c
    cp a
    inc [hl]
    rrca
    nop
    ccf
    nop
    ccf
    jr nc, jr_0ab_56b7

    ld bc, $137f
    ld l, a
    ld de, $10ef
    rst $28
    add a
    ld l, a
    rlca
    rst $28
    rlca
    rst $28
    daa
    rst $28
    rst $30
    rst $28
    rst $38
    rst $20
    rst $00
    rst $20
    rst $20
    rst $20
    rst $00
    rst $20
    rst $08
    add a
    adc a
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $30
    rst $38
    rst $30
    rst $28
    rst $30
    db $d3
    and $77
    ldh [$c5], a
    di
    inc c
    rst $30
    push hl
    rra
    ld l, a
    sbc a
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    sub e
    rst $38
    ld a, [c]

jr_0ab_56b7:
    rst $38
    ei
    rst $38
    dec sp
    rst $38
    inc hl
    rst $38
    jp nc, $a2ef

    rst $18
    ld a, [bc]
    rst $38
    jp nz, Jump_000_033f

    rst $38
    dec b
    cp $0b
    db $fc
    dec bc
    pop af
    inc de
    rst $20
    ld d, l
    adc [hl]
    cp b
    inc e
    cp d
    ld [hl], c
    ld d, a
    db $e3
    or a
    adc $ea
    inc e
    ld d, c
    jr c, jr_0ab_5751

    pop hl
    jp $c780


    add e
    rst $00
    add e
    rst $00
    add e
    rst $00
    add e
    rst $00
    add e
    rst $00
    ld [bc], a
    ld h, a
    ld [bc], a
    inc bc
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
    ld bc, $0300
    nop
    ld bc, $0302
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $0123
    di
    ld bc, $01f7
    sub a
    ld h, e
    jp hl


    di
    rst $20
    di
    ld h, e
    di
    rst $30
    db $e3
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ab_572f:
    rst $38

jr_0ab_5730:
    rst $38
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    ld l, a
    rra
    ld a, c
    rlca
    ld [hl], b

jr_0ab_5751:
    adc a
    jr c, @-$37

    ld [hl], b
    adc a
    jr jr_0ab_57bf

    jr c, jr_0ab_57a1

    db $10
    rst $28
    db $10
    ld l, a
    jr nc, jr_0ab_572f

    ld sp, $30cf
    rst $08
    ld h, c
    sbc a
    ld h, b
    sbc a
    pop hl
    jr jr_0ab_5730

    inc bc
    cpl
    rra
    ld e, e
    rst $38
    rla
    ei
    rra
    di
    ld [de], a
    rst $38
    ld d, $ff
    cp h
    rst $30
    pop af
    rst $38
    di

jr_0ab_577d:
    rst $38
    di
    rst $38
    or $ff
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
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
    cp $ff
    rst $38
    db $fc
    push af
    ei
    db $eb
    rst $30
    rst $38
    rst $08
    rra

jr_0ab_57a1:
    cp a
    ccf
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
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fd
    cp $da
    db $fd
    dec l

jr_0ab_57bf:
    di
    ld d, a
    xor $6b
    sbc h
    rst $30
    add hl, sp
    ld b, h
    cp e
    cp a
    ld [hl], c
    ld e, a
    db $e3
    or l
    adc $ba
    inc e
    ld a, d
    ld sp, $e37f
    or a
    adc $6e
    sbc h
    push de
    jr c, jr_0ab_577d

    ld [hl], c
    inc b
    db $e3
    dec c
    add $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rra
    cp a
    ld a, a
    rst $18
    ccf
    ld c, a
    scf
    ld d, d
    daa
    ld [hl-], a
    dec b
    dec d
    ld h, $7b
    daa
    ld h, l
    inc hl
    ld b, a
    inc hl
    rlca
    ld h, e
    ld b, a
    inc hl
    daa
    ld h, e
    inc hl
    ld h, e
    ld [hl], a
    inc hl
    ld [hl], a
    inc hl
    ld [hl], a
    inc hl
    ld [hl], a
    inc hl
    scf
    ld h, e
    ld h, a
    inc sp
    ld [hl], a
    inc hl
    ld h, l
    inc sp
    push hl
    inc sp
    cp a
    di
    ei
    rst $30
    ei
    rst $30
    ei
    rst $30
    or e
    rst $38
    xor e
    rst $30
    and $ff
    add a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    db $fc
    pop af
    db $fc
    cp $fd
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
    db $ed
    di
    rst $28
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    ld [hl], e
    rst $38
    adc a
    rst $38
    dec a
    rst $38
    ld [hl], e
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $38
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
    db $fc
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    ld e, a
    cp a
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
    db $fc
    rst $38
    ld sp, hl
    rst $38
    xor $f7
    call z, $35ff
    ei
    ld l, d
    rst $30
    xor h
    rst $18
    ld d, c
    cp a
    db $eb
    ld [hl], a
    push af
    adc $7b
    sbc h
    cp l
    ld [hl], e
    ld e, d
    rst $20
    cp l
    adc $de
    add hl, sp
    ld h, h
    sbc e
    cp b
    rra
    ld a, b
    scf
    ld a, b
    rst $20
    or b
    rst $08
    ld h, b
    sbc a
    ld b, b
    ccf
    adc b
    ld [hl], a
    ld b, l
    cp d
    dec [hl]
    jp z, Jump_0ab_50af

    ld a, a
    add b
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $20
    db $e3
    db $e3
    di
    pop af
    ld sp, hl
    ld hl, sp-$04
    db $fc
    cp $fe
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    cp h
    cp $9e
    cp $bf
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
    cp a
    rst $38
    xor a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    rlca
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    adc $ff
    sbc c
    rst $38
    ei
    ld [hl], a
    rst $18
    rst $28
    sbc c
    rst $38
    inc sp
    rst $38
    rst $10
    rst $28
    xor l
    rst $18
    rst $38
    ccf
    push hl
    ld a, a
    ret nz

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
    ld b, h
    cp e
    xor e
    ld d, h
    ld e, d
    and l
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    sbc [hl]
    rst $28
    sbc $df
    xor $e7
    rst $38
    di
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    cp $7f
    ld a, a
    ld a, $3f
    ld e, $9f
    ld c, $cf
    adc [hl]
    rst $20
    add $f6
    ld h, d
    ld a, [hl]
    jr nc, jr_0ab_59dd

    inc e
    sbc a
    adc [hl]
    cp $ce
    rst $38
    cp $fe
    cp $ff
    db $fc
    db $fc
    ld hl, sp-$03
    ld hl, sp-$01
    rst $28
    ret nz

    xor [hl]
    add l
    ld [$efc4], a
    db $fc
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld sp, hl
    rst $38
    rst $38

jr_0ab_59dd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    xor h
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_0ab_5a23:
    rst $38
    dec b
    ld a, [$da25]
    ld e, d
    and l
    ld [$7e15], a
    add c
    db $fd
    ld [bc], a
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
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ccf
    ccf
    ld h, $7f
    ld a, $3f
    nop
    ld bc, $1f00
    ld bc, $7fff
    ccf
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
    cp $ff
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld c, a
    rst $38
    sbc a
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld l, a
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
    db $fd
    rst $38
    ld a, e
    rst $38
    ld a, [de]
    rst $38
    add b
    rst $38
    cp a
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    nop
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
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    ld c, d
    or l
    ld [hl], b
    adc a
    rst $28
    db $10
    ei
    inc b
    rst $38
    rst $38
    rst $38
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
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    rst $38
    rra
    ld e, a
    cp a
    ld e, a
    cp a
    ei
    rra
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld a, e
    sbc a
    db $db
    ccf
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    cp a
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
    rst $38
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $18
    rst $38
    ld b, [hl]
    rst $38
    and c
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, h
    cp e
    ld d, d
    xor l
    xor [hl]
    ld d, c
    rst $38
    rst $38
    rst $38
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
    rst $38
    rla
    rst $38
    ld l, c
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc b
    ei
    ld d, h
    xor e
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
    cp $ff
    cp $ff
    ld a, a
    rst $38
    rst $10
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ee
    cp $fe
    cp $de
    cp $7e
    cp [hl]
    xor $be
    xor [hl]
    cp $cf
    cp $ee
    cp $fe
    cp $fc
    cp $fd
    cp $ff
    cp $fe
    cp $ff
    cp $fd
    cp $fc
    cp $fc
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $f5
    cp $f3
    db $fc
    ld sp, hl
    cp $f6
    rst $38
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
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
    nop
    add b
    nop
    add b
    nop
    add b
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
    add c
    nop
    add c
    nop
    ld bc, $0080
    add c
    nop
    add c
    add b
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    add c
    add c
    add c
    add c
    ld bc, $8181
    add c
    add c
    add c
    ld bc, $0181
    add c
    ld bc, $7581
    add e
    ld l, c
    add e
    ld d, c
    add e
    ld hl, $01c7
    rlc c
    rst $10
    ld bc, $01cb
    db $d3
    ld b, c
    add e
    ret


    inc bc
    ld [hl], l
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, e
    add a
    ld a, e
    add a
    ld l, d
    sub a
    ld d, e
    xor a
    inc bc
    rst $38
    ld [bc], a
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
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    dec sp
    rst $38
    dec de
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    add hl, bc
    ccf
    inc hl
    ccf
    inc bc
    ccf
    rlca
    ccf
    daa
    ccf
    rrca
    ld a, a
    rrca
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    ld e, $7f
    ld a, $7f
    ccf
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    di
    rst $28
    rst $10
    rst $28
    ld h, c
    rst $18
    ld l, l
    rra
    dec l
    ld e, a
    cpl
    ld e, a
    dec e
    ld a, a
    or l
    ld a, a
    db $f4
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    rst $38
    ld h, $ff
    rra
    rst $38
    sbc d
    rst $38
    ld a, [hl-]
    rst $38
    ld l, [hl]
    rst $38
    ld c, e
    cp a
    adc e
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    db $fc
    rst $38
    or $fd
    push af
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    or $ff
    or $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fd
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $30
    rst $38
    push af
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    set 7, a
    set 7, a
    ei
    rst $38
    ld sp, hl
    rst $38
    push de
    rst $38
    cp a
    rst $38
    ld h, d
    rst $38
    rst $20
    rst $38
    sub $ff
    push af
    rst $38
    rst $00
    db $fd
    rst $38
    rst $38
    ret z

    rst $38
    cp a
    rst $38
    or b
    rst $38
    rst $18
    rst $38
    pop hl
    rst $38
    db $fd
    rst $38
    ld h, e
    rst $38
    rst $38
    rst $38
    adc [hl]
    rst $38
    xor $ff
    rst $38
    rst $38
    sbc b
    rst $38
    ld a, [$1fff]
    rst $38
    or c
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld d, l
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    add a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld e, l
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fc
    db $fc
    db $fd
    db $fc
    rst $38
    rst $30
    cp $ff
    cp $ee
    rst $38
    rst $08
    rst $38
    rst $28
    rst $18
    xor a
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $30
    ld [hl], a
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    ei
    ld a, a
    ld a, e
    rst $38
    cp l
    ei
    cp l
    ei
    cp c
    rst $38
    cp l
    rst $38
    sbc h
    rst $38
    sbc [hl]
    db $fd
    call c, $dcff
    rst $38
    rst $18
    cp $de
    cp $de
    rst $38
    xor $ff
    rst $38
    rst $28
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    cp $70
    rst $38
    jp z, Jump_000_1ff7

    ld a, [c]
    jp $febe


    cp e
    cp e
    rst $38
    cp e
    rst $38
    ei
    rst $38
    xor d
    rst $38
    cp $ff
    cp $dd
    rst $38
    db $dd
    db $dd
    rst $38
    db $fd
    rst $38
    sbc $ff
    cp $ff
    ld [$feff], a
    rst $38
    ld l, [hl]
    rst $38
    db $76
    rst $28
    and $ff
    ld a, a
    rst $38
    or a
    rst $38
    cp e
    rst $30
    di
    rst $38
    rst $30
    cp $b6
    rst $38
    or [hl]
    rst $38
    cp l
    rst $38
    rst $38
    ei
    cp a
    ei
    ei
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    call $d5ff
    rst $28
    push hl
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $28
    cp $2e
    rst $38
    ld l, $ff
    sbc [hl]
    rst $38
    ld c, $ff
    sbc d
    rst $38
    sub e
    rst $38
    cp l
    di
    db $fd
    di
    or l
    ei
    rst $20
    ld sp, hl
    and l
    ei
    db $db
    rst $38
    db $db
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    db $db
    rst $38
    ld e, d
    rst $38
    ld a, d
    rst $38
    ld e, a
    db $fd
    ld a, l
    rst $38
    dec a
    rst $38
    db $dd
    rst $38
    dec [hl]
    rst $38
    ld [hl], l
    rst $28
    rst $30
    rst $28
    ld c, a
    rst $38
    jp $9fff


    rst $38
    jp Jump_000_3ebf


    rst $38
    ld [de], a
    rst $38
    or [hl]
    rst $38
    ld d, $ff
    or $ff
    dec a
    rst $38
    ld e, [hl]
    db $fd
    ei
    db $fd
    ld [hl], e
    rst $38
    ld h, b
    rst $38
    add sp, -$01
    db $eb
    rst $18
    add b
    rst $38
    cp b
    rst $38
    sbc e
    ld a, a
    inc h
    rst $38
    jr nz, @+$01

    db $fd
    rst $38
    xor l
    ld a, e
    ld a, [hl+]
    db $fd
    inc l
    db $fc
    ccf
    ld a, h
    ld e, [hl]
    ld a, $df
    ld a, $1c
    rst $38
    cp l
    rst $18
    ld a, a
    sbc a
    pop bc
    ccf
    ccf
    ld a, e
    dec sp
    rst $38
    ei
    cp a
    or a
    rst $38
    or a
    rst $38
    sub a
    rst $38
    rst $20
    rst $18
    rst $18
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    ld [c], a
    rst $38
    jp $dffe


    or $9c
    rst $30
    cp b
    rst $30
    or d
    ld sp, hl
    ld sp, hl
    ei
    ld a, a
    ei
    ld a, c
    rst $38
    ld a, a
    db $fd
    ld [hl], a
    db $fd
    ld [hl], l
    rst $38
    db $f4
    ld a, a
    rst $28
    ld a, [hl]
    xor e
    ld a, [hl]
    ld a, e
    and $09
    and $d3
    xor c
    xor e
    sub c
    ld b, [hl]
    or e
    adc a
    ld a, [c]
    rst $28
    sub $ec
    rst $18
    ld a, l
    rst $18
    ld c, l
    rst $38
    ld c, c
    rst $38
    ld l, e
    rst $38
    ei
    rst $28
    db $e3
    rst $28
    rst $28
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    db $d3
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    cp a
    ei
    dec sp
    rst $38
    cp c
    ld a, a
    db $fc
    ld a, l
    ld a, a
    db $fc
    ld a, $fd
    db $fc
    cp a
    db $db
    cp [hl]
    cp a
    ld a, [$fabd]
    or [hl]
    ei
    or e
    rst $38
    sub a
    rst $38
    rst $28
    rst $18
    rst $28
    rst $18
    rst $38
    rst $18
    rst $18
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    ld a, a
    ld b, a
    rst $38
    sbc $f7
    cp $f7
    db $fc
    rst $30
    ld a, [c]
    db $fd
    ld a, [$7df9]
    ei
    ld a, e
    rst $38
    ld l, e
    rst $38
    ld l, c
    rst $38
    ld c, l
    rst $38
    ld l, l
    rst $18
    call $ad9f
    sbc a
    ld h, a
    sbc l
    ld h, h
    sbc e
    ld a, [hl+]
    rst $18
    sbc [hl]
    rst $38
    rst $18
    cp $ca
    cp $fe
    rst $08
    rst $18
    rst $28
    adc $ff
    call z, $deff
    db $fd
    ld [$e9fd], a
    rst $38
    di
    rst $28
    ei
    rst $20
    add $ff
    sub $ff
    or [hl]
    rst $38
    or [hl]
    ld a, a
    or a
    ld a, a
    ld [hl], a
    rst $38
    scf
    rst $38
    sub a
    ld a, a
    ld a, a
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    ld a, e
    rst $38
    sbc e
    rst $38
    adc e
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    cp l
    db $fc
    or d
    db $fc
    ld a, l
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    db $fd
    ei
    di
    rst $38
    ld [hl], e
    rst $38
    ei
    ld [hl], a
    rst $30
    ld a, a
    rst $20
    ld a, a
    scf
    rst $28
    cp a
    adc a
    sub a
    sbc a
    sbc a
    rst $18
    rst $18
    rst $18
    sbc e
    rst $28
    and l
    db $eb
    or c
    rst $28
    dec sp
    rst $20
    ld a, [hl-]
    rst $30
    di
    db $76
    db $fd
    ld [hl], d
    ld [hl], c
    ld hl, sp+$39
    ld sp, hl
    ld a, c
    db $fd
    ld a, l

Call_0ab_6081:
    db $fd
    ld sp, hl
    cp $f6
    cp $f6
    cp $ff
    or $e7
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $20
    ret


    pop de
    ret


    add c
    pop de
    ld d, b
    and c
    ld h, c
    ld bc, $4301
    add c
    ld b, a
    ld b, c
    adc a
    db $eb
    sbc a
    adc $bf
    rst $18
    cp [hl]
    adc l
    cp $fc
    rst $18
    ld l, [hl]
    db $dd
    ld a, b
    rst $18
    call $e5fb
    db $eb
    di
    rst $20
    rst $28
    rst $30
    rst $28
    rst $30
    rst $38
    rst $30
    db $d3
    rst $38
    rst $18
    ei
    sbc a
    ei
    sbc a
    ei
    cp l
    ei
    add hl, sp
    rst $38
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    db $fd
    cp $ff
    cp $fe
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld c, h
    rst $38
    ld e, [hl]
    db $ed
    db $db
    ld a, h
    db $fd
    ld a, b
    or $79
    ld [hl], l
    ei
    dec sp
    rst $30
    rst $20
    cp a
    rst $10
    xor a
    adc a
    rst $18
    cp a
    rst $18
    rst $38
    rst $18
    ld a, a
    rst $18
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    ld a, a
    rst $28
    rst $28
    ccf
    rst $00
    ccf
    ld e, a
    or a
    rst $38
    rst $30
    rst $18
    rst $30
    ei
    rst $30
    rst $30
    ei
    cp $fb
    ld sp, hl
    db $fc
    rst $38
    ld hl, sp-$0e
    db $fd
    rst $30
    db $fd
    rst $20
    db $fd
    call nc, $e4ef
    rst $18
    xor a
    sbc $4f
    ld a, $0f
    ld a, $8e
    scf
    ld [c], a
    scf
    dec de
    rst $30
    ccf
    rst $38
    sbc a
    rst $38
    rst $30
    sbc c
    ldh a, [$99]
    db $fd
    sbc b
    xor a
    ret c

    xor [hl]
    reti


    ld l, c
    rst $18
    ld l, a
    rst $18
    ld l, a
    rst $18
    rst $18
    rst $38
    sbc $ff
    call $ebfe
    db $fc
    rst $30
    add sp, -$0b
    ld [c], a
    adc c
    or $1a
    rst $30
    ld e, $f7
    cp a
    ld [hl], a
    di
    ld a, a
    db $e3
    jp hl


    pop af
    db $e3
    db $e3
    di
    di
    ld sp, hl
    pop af
    db $fd
    db $f4
    db $fd
    and $fc
    or $ee
    or $ee
    rst $18
    rst $20
    rst $20
    rst $08
    di
    rst $08
    add l
    db $db
    db $ed
    sub e
    call $5db3
    and e
    add c
    ld a, a
    add c
    ld a, a
    pop bc
    ld a, a
    ld h, e
    rst $38
    ld h, e
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $fd
    cp $fe
    db $fd
    ld a, d
    db $fd
    cp $79
    ld d, [hl]
    ld a, b
    db $f4
    jr jr_0ab_61a9

    or b
    add b
    sub b
    add b
    add b
    ret nc

    ret nz

    ldh [$c0], a
    adc b
    pop hl
    xor [hl]
    pop hl
    ld a, c
    and [hl]
    or h
    ld [hl], a
    or [hl]
    ld [hl], a
    ld a, [$7b77]
    ei
    ld a, e

jr_0ab_61a9:
    ei
    ld e, $f9
    ld e, e
    cp l
    db $fd
    db $fd
    cp $fd
    db $fc
    cp $ff
    cp $ff
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ei
    db $fd
    rst $38
    ld sp, hl
    push af
    ei
    ld sp, hl
    rst $30
    db $eb
    rst $30
    db $e3
    rst $38
    rst $30
    rst $28
    rst $00
    rst $38
    rst $28
    rst $18
    cpl
    rst $18
    rra
    ccf
    rra
    ld a, a
    ld a, a
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    rst $08
    cp a
    rst $18
    xor a
    jp nz, $a9bf

    ret nc

    ldh [$d0], a
    db $fd
    ret nc

    ldh a, [$df]
    set 7, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $20
    rst $38
    or $f7
    ld sp, hl
    or $f9
    ld hl, sp-$08
    ei
    jp hl


    ei
    db $eb
    db $fd
    rst $18
    db $ed
    xor a
    db $dd
    xor [hl]
    db $dd
    ld e, h
    cp a
    rst $18
    ld a, $bf
    ld e, $8f
    ld e, $4e
    rlca
    rst $00
    inc bc
    rst $00
    ei
    rst $00
    rst $38
    db $fd
    db $e3
    ld hl, sp-$0f
    db $fc
    ld sp, hl
    db $fd
    cp $fe
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ld a, a
    ccf
    rst $38
    ld a, a
    cp a
    cp [hl]
    cp a
    cp l
    cp [hl]
    sbc e
    cp h
    rst $18
    ld hl, sp-$15
    ret nc

    ret z

    pop bc
    dec a
    ret nz

    sub h
    ld l, b
    or e
    ld l, h
    ld a, b
    rst $28
    inc sp
    rst $28
    add sp, $37
    db $db
    ld [hl], $59
    or [hl]
    ld e, d
    or a
    jr @-$07

    ld [de], a
    rst $38
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
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ab_6285

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ab_6295

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ab_62a5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ab_62b5

    ld [hl-], a

jr_0ab_6285:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ab_62c5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0ab_6295:
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

jr_0ab_62a5:
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

jr_0ab_62b5:
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

jr_0ab_62c5:
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
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    nop
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
    jp nc, $d300

    call nc, $d6d5
    rst $10
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
    rst $30
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    ld de, $f712
    rst $30
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0ab_638b

    nop
    nop
    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    rst $30
    jr nz, jr_0ab_639f

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl

jr_0ab_638b:
    inc l
    dec l
    ld l, $2f
    jr nc, @+$03

    ld bc, $0101
    nop
    nop
    ld bc, $0100
    ld bc, $0200
    ld b, $02
    ld [bc], a

jr_0ab_639f:
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    nop
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc bc
    ld [bc], a
    inc b
    rlca
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    nop
    inc b
    inc bc
    inc bc
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0403
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0100
    nop
    inc b
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    inc b
    inc b
    nop
    ld [bc], a
    nop
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
    ld b, $00
    nop
    ld bc, $0000
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld bc, $0101
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
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $03
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0909
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld [$0008], sp
    nop
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld bc, $0901
    add hl, bc
    nop
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0700], sp
    nop
    inc [hl]
    nop
    ld c, a
    nop
    ld e, e
    nop
    ld [hl], e
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, e
    nop
    ccf
    nop
    ld a, a
    nop
    ld hl, sp+$00
    ret nz

    nop
    ld b, $00

jr_0ab_650c:
    jr nc, jr_0ab_651c

    sbc l
    ld h, d
    call c, $fc03
    inc bc
    ld sp, hl
    rlca
    pop de
    cpl
    adc e
    ld a, h
    jr c, jr_0ab_650c

jr_0ab_651c:
    and b
    ret nz

    dec e
    nop
    ret nz

    rlca
    ld bc, $1107
    rrca
    ld b, l
    ccf
    rst $20
    rra
    adc a
    ld a, a
    inc sp
    rst $38
    or a
    rst $38
    and b
    rst $18
    add d
    rst $38
    call nz, $c4fb
    ei
    pop hl
    rst $38
    db $e3
    rst $38
    rst $38
    cp $fa
    db $fd
    di
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$f8fc]
    ldh a, [$c0]
    ldh [$c0], a
    add b
    nop
    nop
    nop
    nop
    add e
    nop
    rla
    ldh [$c4], a
    ei
    adc c
    rst $38
    rst $20
    rra
    rla
    nop
    rra
    nop
    ld a, a
    nop
    ld a, [c]
    dec c
    ld [hl], c
    adc [hl]
    ld bc, $00fe
    rst $38

jr_0ab_656e:
    inc bc
    db $fc
    ld h, l
    ld a, [de]
    ld b, $01
    nop
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_0ab_65bc

    jr c, jr_0ab_656e

    ld c, $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    ei
    ld a, a
    db $fd
    ccf
    rst $30
    ccf
    db $ed
    ld a, a
    ld bc, $0301
    add e
    ld b, a
    db $e3
    rla
    ccf
    ld b, $3f
    nop
    inc b
    nop
    ld bc, $0000
    add b
    add b
    or $f8
    ld hl, sp-$3c
    add [hl]
    add c
    sub c
    nop
    ld b, e
    nop
    or l
    ret nz

    rst $20
    ld hl, sp-$07
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38

jr_0ab_65bc:
    rst $30
    rst $38
    db $dd
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f00
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ab_65d3:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    and a
    nop
    or l
    nop
    ccf
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    jr z, jr_0ab_65d3

    sub d
    ld a, b
    cp b

Jump_0ab_65ff:
    ld a, h
    rst $38
    ld a, [hl]
    cp [hl]
    ld a, a
    sbc a
    rst $38
    adc a
    rra
    rra
    rrca
    sub a
    rrca
    ld a, e
    rlca
    ei
    inc bc
    di
    rrca
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    ld [hl], a
    ei
    rst $10

jr_0ab_6629:
    rst $28
    cp $9f
    rst $30
    ld a, a
    db $e3
    rst $38
    db $fd
    rst $38
    db $fc
    db $fc
    pop af
    pop hl
    and [hl]
    and $99
    jr jr_0ab_6642

    inc b
    rrca
    nop
    inc e
    inc bc
    inc a
    inc bc

jr_0ab_6642:
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, a
    add b
    ld a, a
    sub a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $cffe
    jr nc, jr_0ab_6629

    jr nz, jr_0ab_667d

    nop
    inc h
    nop
    adc d
    jr nz, @-$7e

    ld [hl], c
    ld a, [bc]
    pop af
    pop bc
    dec sp
    rra
    inc hl
    inc b
    dec bc
    ld bc, $0100
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    cp $7f
    db $fc

jr_0ab_667d:
    rst $38
    ld hl, sp-$01
    add sp, -$09
    ret nz

    rst $20
    xor b
    rst $00
    sub [hl]
    db $e3
    rst $00
    rst $38
    scf
    ld a, a
    ld e, a
    rst $18
    rrca
    rra
    ccf
    rrca
    add a
    rlca
    inc hl
    rlca
    rlca
    di
    ld h, b
    jp Jump_000_11ea


    rst $30
    rrca
    cp $01
    ld sp, hl
    ld b, $7f
    add b
    rst $18
    ldh [$e3], a
    db $fc
    db $fd
    cp $fe
    rst $38
    cp l
    cp $fe
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
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld [de], a
    nop
    ld d, a
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
    nop
    nop
    nop
    nop
    jr z, jr_0ab_66e6

jr_0ab_66e6:
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
    db $d3
    jr c, @+$17

    ldh [$86], a
    ld b, $16
    ld c, $b4
    ld c, [hl]
    or [hl]
    inc c
    db $fc
    nop
    or b
    ld b, b
    ld b, h
    add b
    db $10
    add b
    add d
    add b
    call z, $9880
    db $e4
    ret c

    rst $20
    push hl
    rst $38
    xor $fc
    ld hl, sp-$10
    ldh [$c0], a
    add b
    nop
    nop
    nop
    inc bc
    ld bc, $03bf
    xor h
    inc bc
    ld a, l
    add b
    pop af
    add b
    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    nop
    ld h, b
    nop
    sub a
    cp b
    or a
    adc a
    ei
    rlca
    ld h, c
    rra
    pop bc
    ccf
    add a
    ld a, a
    sbc a
    ld a, a
    ldh [$1f], a
    push bc
    ccf
    ret nz

    ccf
    ld b, c
    cp a
    and [hl]
    ld e, c
    ld b, $f9
    dec c
    ld a, [c]
    scf
    ret z

    dec l
    jp nc, $c936

    ld e, c
    and [hl]
    inc bc
    ld a, a
    inc bc
    ld a, a
    db $10
    ld a, a
    adc b
    ld a, a
    ld d, $ff
    ld a, [hl+]
    rst $38
    ld d, h
    rst $38
    jp nz, $f5ff

    rst $38
    ccf
    rst $38
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    jp $c2fc


    db $fd
    call nz, $84fb
    ei
    jp z, $f1f5

    rst $28
    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    ld sp, hl
    db $fd
    ei
    cp $ff
    rst $38
    cp $7e
    rst $38
    sbc a
    cp $e7
    db $fc
    rst $38
    cp $fc
    db $fd
    db $fc
    rst $38
    rst $38
    cp $ff
    cp $fe
    rst $38
    ld a, a
    rst $38
    dec hl

jr_0ab_679d:
    rst $38
    ei
    rst $30
    or l
    ld [hl], e
    di
    jr jr_0ab_679d

    ld [$08f4], sp
    or h
    nop
    ld sp, hl
    rlca
    ccf
    ld a, a
    rst $38
    ld a, a
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld b, $00
    ld [bc], a
    nop
    dec d
    nop
    ld b, a
    nop
    ld d, e
    nop
    ld [hl], a
    nop
    and e
    nop
    ld [hl], a
    nop
    ld e, a
    nop
    ld [hl], a
    nop
    ld e, e
    nop
    db $dd
    nop
    ei
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    ld a, h
    add e
    ld [hl], b
    adc a
    ld l, d
    ld bc, $00ae
    rst $28
    nop
    or a
    nop
    rst $08
    nop
    xor a
    nop
    cp $01
    cp [hl]
    ld bc, $ff03
    rlca
    db $fc
    rrca
    ldh a, [$7f]
    add b
    cp h
    inc bc
    jr jr_0ab_6803

    dec bc
    rlca
    dec de
    rlca
    rlca
    rra
    rlca

jr_0ab_6803:
    rra
    rlca
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    sbc a
    inc bc
    add a
    add c
    ld b, a
    nop
    inc c
    nop
    rlca
    add hl, bc
    inc [hl]
    dec c
    and a
    ld a, h
    call $bbf0
    ret nz

    rra
    add c
    rlca
    ld bc, $0102
    rlca
    ld [bc], a
    rlca
    rrca
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    rst $38
    ld l, a
    rst $38
    rst $10
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rrca
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
    ld a, a
    rst $38
    cp a
    ccf
    rst $38
    ld a, a
    rst $30
    rst $38
    rst $38
    di
    rst $08
    adc a
    rst $30
    ld [$08ff], sp
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    adc a
    ld a, a
    add h
    ld a, a
    ld de, $836e
    call z, $c8e9
    dec a
    add sp, $7d
    db $fc
    db $f4
    cp $d8
    ld a, [$86c1]
    add hl, bc
    add d
    add hl, bc
    ld b, $c2
    xor a
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld c, a
    rst $18
    inc bc
    inc bc
    nop
    rlca
    nop
    inc c
    jr jr_0ab_6896

    db $10
    db $10
    ccf
    ldh [$e3], a
    inc a
    ld hl, sp+$47

jr_0ab_6896:
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [$7f], a
    jp $c7ff


    rst $38
    scf
    db $fc
    rrca
    rst $38
    inc hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_0ab_68b1:
    inc bc
    ld bc, $0200
    ld bc, $0100
    nop

jr_0ab_68b9:
    ld bc, $0100
    nop
    nop
    inc b
    ld bc, $0001
    inc b
    nop
    dec h
    nop
    inc de
    nop
    add hl, hl
    nop
    dec d
    nop
    dec bc
    nop
    rra
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    jr nz, jr_0ab_68b9

    nop
    rst $38
    ld [bc], a
    pop af
    add b
    nop
    nop
    nop
    add l
    inc bc
    call c, $7e03
    add b
    ld h, h
    add b
    ld h, c
    add b
    jr nc, jr_0ab_68b1

    ld a, $c1
    adc a
    nop
    inc b
    inc bc
    jr jr_0ab_68fd

    db $ec
    rra
    add b
    ld a, a
    pop bc
    cp $d7

jr_0ab_68fd:
    ld hl, sp-$22
    pop hl
    ld hl, sp-$19
    db $fc
    di
    db $fc
    ei
    ld a, [hl]
    db $fd
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $7f
    cp $fe
    sbc a
    ld a, [hl]
    and b
    db $fd
    ld a, h
    cp $7f
    cp a
    cp b
    or [hl]
    add hl, de
    ld d, a
    inc de
    ld [c], a
    and b
    ret nz

    ld b, b
    ret nz

    ret nz

    db $e3
    ret nz

    db $ec
    ld b, c
    db $db
    ld h, h
    ld sp, hl
    db $76
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ld b, l
    cp a
    ld sp, $a8df
    rst $18
    dec hl
    db $db
    ld h, [hl]
    sbc e
    ret c

    xor a
    or h
    rst $38
    ld a, [c]
    rst $38
    ld a, [$ffff]
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    ld e, b
    rst $20
    ld sp, hl
    rst $20
    cp e
    rst $00
    or d
    rst $08
    and $1f
    ld l, l
    sbc [hl]
    add hl, bc
    cp $3b
    db $fc
    cp e
    ld a, h
    db $d3
    db $fc
    ld de, $10fe
    rst $38
    jr @+$01

    jr c, @+$01

    sbc b
    rst $38
    sbc h
    rst $38
    cp [hl]
    rst $38
    ld e, c
    ld h, [hl]
    cp b
    rst $00
    ld hl, sp-$79
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, h
    add e
    ld a, [hl]
    ld bc, $011e
    rst $38
    inc hl
    rst $38
    add hl, sp
    rst $38
    ld a, b
    ccf
    ret nc

    jp $e03c


    rst $38
    db $fc
    jp $c0ff


    rst $38
    add c
    rst $38
    ei
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    db $fd
    ei
    ld a, $ff
    sbc $ff
    rst $38
    rst $38
    rst $18
    db $fc
    ld a, a
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    adc a
    ld a, a
    rra
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, a
    dec [hl]
    rrca
    rlca
    rra
    rlca
    ld d, l
    inc sp
    rra
    pop af
    rra
    rst $38
    add b
    ld a, a
    ld bc, $07fe
    ld hl, sp+$1c
    db $e3
    ld a, d
    add l
    db $f4
    dec bc
    cp d
    ld b, l
    add hl, hl
    sub $3f
    ret nz

    xor [hl]
    ld d, c
    ld c, l
    or e
    scf
    rst $08
    ld l, a
    sbc a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    ld a, l
    ldh a, [$c6]
    ld h, b
    ld b, [hl]
    add b
    ret nz

    nop
    jp nz, Jump_000_0080

    add b
    nop
    nop
    nop
    ld bc, $0285
    ld d, $89
    daa
    ret c

    ld b, e
    cp l
    rlca
    rst $38
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$12
    ld sp, hl
    db $fd
    db $eb
    rst $20
    rst $38

jr_0ab_6a3c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add d
    rst $38
    add [hl]
    rst $38
    ei
    rst $38
    daa
    rst $38
    ld c, $ff
    adc h
    rst $38
    sbc h
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    rst $30
    ld hl, sp-$01
    ldh [$31], a
    adc $e5
    sbc b
    push de
    ld [hl+], a
    cp d
    ld b, h
    ld e, [hl]
    and b
    ld [hl], h
    add b
    ret c

    nop
    add sp, $00
    rst $38
    jr nz, @-$3f

    ld d, b
    rst $38
    rra
    rst $00
    ccf
    ld a, a
    add b
    jr c, jr_0ab_6a3c

    ld de, $0fe8
    ldh a, [$c0]
    nop
    ld b, b
    add b
    ld [hl], b
    add b
    ld e, [hl]
    and b
    dec a
    jp nz, $e817

    dec c
    ld a, [c]
    inc bc
    db $fc
    ld a, a
    rst $38
    ccf
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $38
    rra
    ld a, a
    db $e3
    pop hl
    sbc [hl]
    cp b
    ld l, a
    cp a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp $7f
    rst $38
    sbc a
    ld a, a
    add b
    ccf
    add b
    ccf
    and b
    rra
    ldh [$1f], a
    add b
    rlca
    ret nz

    rlca
    and b
    rlca
    ret nz

    rlca
    and a
    rlca
    rst $00
    rlca
    and a
    rlca
    rst $00
    rlca
    rst $38
    adc a
    rst $18
    adc a
    rst $18
    adc a
    rst $08
    adc a
    rst $38
    rst $00
    rst $28
    rst $00
    rst $28
    rst $00
    rst $28
    rst $00
    rst $28
    rst $00
    rst $28
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    ei
    rst $20
    ei
    rst $20
    ei
    rst $20
    ei
    rst $20
    rst $28
    di
    rst $38
    db $e3
    rst $28
    ld a, [c]
    xor $f0
    rst $38
    ldh a, [$fd]
    ld a, [hl-]
    rrca
    ld a, [$ff3c]
    ld a, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rrca
    and a
    dec de
    daa
    dec hl
    add a
    scf
    rrca
    ld h, e
    rra
    ld b, a
    dec sp
    adc a
    ld [hl], a
    ld l, [hl]
    sbc [hl]
    ld e, [hl]
    cp [hl]
    db $fc

jr_0ab_6b25:
    ld a, [hl]
    or $f8
    xor $f0
    sbc $e2
    rst $18
    add [hl]
    xor a
    rra
    cp a
    rra
    inc sp
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

jr_0ab_6b3e:
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rra
    db $fc
    rrca
    cp $1f
    cp $3f
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
    ld sp, hl
    add a
    add b
    nop
    inc b
    ld hl, sp-$39
    ld [bc], a
    jr nc, jr_0ab_6b25

    jr z, jr_0ab_6b3e

    jr z, jr_0ab_6b68

jr_0ab_6b68:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld a, [hl]
    nop
    db $fc
    db $10
    ld hl, sp-$40
    ldh [rP1], a
    and b
    nop
    ld bc, $0700
    nop
    ld e, h
    inc bc
    pop de
    ld l, $00
    rst $38
    ld de, $55ff
    rst $38
    rst $28
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
    call z, Call_000_1cff
    rst $38
    rlca
    cp $e5
    cp $f7
    db $fd
    rst $38
    ld sp, hl
    ei
    dec b
    inc de
    db $ec
    rlca
    ld hl, sp-$19
    jr @+$01

    ld c, b
    rst $38
    ld [$98ff], sp
    rst $28
    db $fc
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    rlc b
    ld a, [$0105]
    xor $05
    ld a, [$fe41]
    add d
    db $fd
    and b
    rst $38
    sub $fb
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    ret


    rst $38
    inc hl
    rst $38
    ld a, l
    rst $38
    inc de
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh [$e1], a
    add c
    add a
    rlca
    rra
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $38
    ld e, a
    rst $38
    rst $18
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld c, a
    rst $38
    ld h, b
    sbc [hl]
    ld b, h
    cp b
    adc b
    ldh a, [$88]
    ldh a, [$c8]
    ldh a, [$80]
    ldh a, [$c1]
    di
    sub $e1
    reti


    ldh [$cb], a
    cp l
    cp $ff
    db $fc

Call_0ab_6c23:
    rst $38
    db $fd
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    adc a
    ldh a, [$1f]
    ldh [$cf], a
    ldh a, [$ee]
    ldh a, [$f6]
    ld hl, sp-$21
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
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
    ld a, [c]
    db $fd
    pop af
    xor $ef
    ret nc

    call c, Call_0ab_7ea0
    add b
    push af
    nop
    ld b, b
    add b
    ld h, b
    add b
    and b
    ret nz

    ret nc

    ldh [$c0], a
    ld hl, sp+$73
    inc a
    db $f4
    rra
    ret c

    rrca
    ld [hl], $8f
    rrca
    add a
    rrca
    add a
    adc d
    rlca
    adc a
    inc bc
    inc c
    inc bc
    rrca
    inc bc
    rra
    inc bc
    rra
    inc bc
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    ld d, $7f
    sub [hl]
    ld a, a
    cp h
    ld [hl+], a
    db $dd
    dec bc
    ld sp, hl
    rlca
    ei
    daa
    di
    ld d, [hl]
    rst $20
    ld c, [hl]
    rst $20
    adc [hl]
    rst $08
    cp a
    ld e, a
    dec a
    sbc a
    cp $3f
    ld a, b
    ccf
    ld [hl], h
    ld a, a
    ldh [$7f], a
    ret z

    rst $38
    ret z

    rst $38
    sbc b
    rst $38
    di
    rrca
    ei
    rlca
    or a
    ld c, a
    rst $18
    ld l, a
    ldh a, [$a0]
    ldh [rP1], a
    ret nz

    nop
    add b
    add b
    nop
    nop
    ld bc, $0300
    nop
    nop
    nop
    rlca
    nop
    inc de
    nop
    ld a, [hl-]
    ld bc, $00bd
    ldh [rP1], a
    ret nc

    inc h
    jp nz, $803c

    ld a, $c0
    ld a, $05
    cp $36
    rst $38
    ld h, $ff
    ldh [rIE], a
    ld h, b
    rst $38
    ld hl, sp-$01
    inc c
    rst $38
    ld [hl], c
    rst $38
    dec sp
    rst $38
    add e
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $3f
    ld a, h
    ld a, a
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    jp $c0ff


    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    rra
    rst $38
    ld a, a
    rst $38
    db $ed
    rst $38
    adc a
    rst $38
    add e
    sbc a
    add c
    rlca
    inc bc
    ld bc, $0001
    inc hl
    inc [hl]
    ld [hl], c
    ld [hl], h
    dec e
    ld a, d
    ld a, $1f
    cpl
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    db $eb
    db $f4
    ld c, $f0
    push de
    ldh [rNR10], a
    ldh [$38], a
    ldh a, [$9b]
    ld a, h
    db $dd
    ld a, $ff
    inc e
    or $0f
    db $fc
    inc bc
    ld [c], a
    ld bc, $00e1
    ld [hl], e
    add b
    sbc a
    ldh [rLCDC], a
    rst $38
    ld [hl], b
    rst $38
    cp b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rrca
    rst $28
    inc de
    db $d3
    add hl, bc
    ld c, b
    ld bc, $01fe
    cp $01
    cp $01
    xor $01
    ld c, b
    rlca
    add hl, sp
    ld b, $e1
    ld e, $a2
    ld e, l
    db $fd
    ld bc, $02f9
    db $d3
    ld hl, $d927
    ld e, e
    and e
    di
    rlca
    rst $30
    rlca
    rst $28
    rra
    ld c, $cf
    ld a, l
    sbc a
    ld a, [hl]
    sbc a
    ccf
    ccf
    db $fd
    ccf
    ld l, b
    ld a, a
    ldh [$7f], a
    db $d3
    rst $38
    rst $30
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    ld b, [hl]
    cp $c2
    ldh a, [$80]
    ldh [$80], a
    ret nz

    ld b, b
    rst $28
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_0ab_6d94:
    ld a, [$01ff]
    add b
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    ld [$f87f], sp
    rst $30
    ld hl, sp-$01
    ldh a, [$6f]
    ldh a, [$1f]
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rlca
    nop
    rlca
    db $fc
    or $fd
    jr nz, jr_0ab_6d94

    adc c
    nop
    ld [$0280], sp
    inc b
    jr nz, jr_0ab_6dc0

jr_0ab_6dc0:
    daa
    rst $38
    ld a, [hl]
    rst $38
    push af
    cp $55
    cp $33
    cp $fc
    rst $38

jr_0ab_6dcc:
    db $ec
    rst $38
    cp l
    cp $d5
    cp $a5
    cp $8d
    cp $cf
    cp $4b
    cp $4b
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    dec sp
    rst $38
    ld h, b
    rst $38
    ret nz

    cp $be
    db $fc
    jr jr_0ab_6dcc

    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    ld a, [$e5e5]
    ld a, [$f7e8]
    di
    rst $28
    db $fc
    rst $38
    ldh a, [rIE]
    rst $08
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
    db $f4
    inc b
    rst $28
    ld b, $ff
    add a
    rst $38
    rst $38
    cp l
    pop af
    sbc a
    ldh [$7c], a
    add b
    cp h
    ld b, b
    cp $00
    ccf
    nop
    ld h, $19
    ld d, h
    dec sp
    ldh a, [$3f]
    call c, $fe3f
    ccf
    db $fc
    ccf
    ld a, [hl]
    cp a
    ccf
    cp $3e
    rst $18
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    cp $fd
    ei
    db $fd
    rst $38
    ei
    rst $38
    di
    rst $30
    rst $30
    rst $30
    rst $28
    rst $28
    rst $28
    rst $08
    rst $18
    cp a
    rst $18
    cp a
    cp a
    rst $38
    ccf
    ccf
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $30
    adc b
    ldh a, [$90]
    ldh [$90], a
    ld [c], a
    cpl
    rst $18
    ld e, a
    rst $38
    ld b, b
    ldh a, [$80]
    ret nz

    add b
    pop bc
    ld [bc], a
    rst $18
    ld a, h
    rst $38
    db $fc
    rst $38
    add b
    rst $20
    nop
    add a
    nop
    rrca
    nop
    ccf
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    cp $02
    dec a
    ld bc, $053e
    ld a, [hl-]
    ld a, [bc]
    ld [hl], l
    xor c
    sub $aa
    nop
    call nc, $6a00
    nop
    jr z, jr_0ab_6e98

jr_0ab_6e98:
    jr nz, jr_0ab_6e9a

jr_0ab_6e9a:
    ld bc, $0000
    nop
    ld b, c
    nop
    ld l, c
    sub h
    or e
    ld b, h
    and l
    ld c, d
    ld [hl], a
    adc b
    dec sp
    nop
    sbc $00
    ld d, d
    nop
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    ld a, b
    cp a
    rra
    ldh [$c0], a
    rst $38
    nop
    rst $38
    ld d, $01
    add hl, bc
    ld [bc], a
    ld d, $01
    add hl, bc
    ld [bc], a
    sub [hl]
    ld bc, $e0f8
    rst $28
    ld hl, sp-$11
    ldh a, [rIE]
    ldh [$cc], a
    ldh a, [rNR32]
    ldh [$fa], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [$dd]
    cp $5f
    db $fc
    sbc a
    db $fc
    inc a
    add $d0
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$7c
    ld hl, sp-$3e
    db $fc
    ret nz

    cp $e0
    cp $e1
    cp $e0
    rst $38
    ld [c], a
    db $fc
    jp $c8fc


    ldh a, [$c0]
    ld b, b
    ldh [$c0], a
    rst $38
    ret nz

    and [hl]
    reti


    ld c, l
    or d
    rst $30
    ld [$3f0f], sp
    ld a, a
    ccf
    sbc a
    ld a, a
    sub a
    ld a, a
    or a
    ld a, a
    ld l, a
    rst $30
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    adc a
    rst $08
    or a
    ld c, a
    rla
    rst $28
    or $e9
    or $f9
    cp $f1
    db $fc
    ld a, [c]
    db $fc
    ld hl, sp-$01
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e1], a
    cp $ff
    cp $ff
    ret nz

    pop hl
    add b
    add e
    db $fc
    rst $38
    ld hl, sp-$01
    ret nz

    rst $20
    nop
    adc a
    db $10
    ccf
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc h
    ld h, e
    ld a, [hl-]
    push bc
    cp h
    ld b, e
    ld hl, sp+$07
    ld sp, hl
    ld b, $fa
    dec b
    cp l
    ld b, d
    push af
    ld a, [bc]
    ld e, h
    inc bc
    cp a
    nop
    rst $18
    nop
    ld [hl], a
    nop
    cp a
    nop
    rst $28
    nop
    cp d
    nop
    db $ed
    nop
    sub $00
    ld l, e
    nop
    xor d
    nop
    xor a
    nop
    or d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, d
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    ld [hl], b
    ld [bc], a
    ldh [rP1], a
    ld a, [c]

jr_0ab_6fa6:
    ld b, b
    cp c
    db $db
    jr nz, jr_0ab_6fa6

    nop
    pop af
    nop
    rst $20
    nop
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
    add b
    ld a, a
    inc bc
    db $fc
    ld a, h
    add e
    add c
    nop
    ld b, c
    add b
    add c
    nop
    inc hl
    add b
    jp $7f00


    add a
    rlca
    rst $38
    pop hl
    rra
    adc a
    rrca
    rra
    rrca
    rra
    rlca
    rst $20
    rlca
    sbc e
    ld h, e
    ld sp, $5101
    ld hl, $21d1
    pop de
    ld hl, $21c1
    add e
    ld bc, $0305
    add e
    rlca
    ld b, a
    rrca
    ld e, a
    rrca
    ld e, a
    rra
    ld c, a
    ccf
    ld e, [hl]
    ld hl, $7887
    inc a
    jp $0380


    rlca
    add d
    adc a
    rlca
    add e
    rrca
    cp h
    ld h, a
    add [hl]
    ld a, a
    dec l
    cp $83
    ld c, $00
    adc [hl]
    cp $0f
    rst $38
    inc e
    ld [c], a
    rst $28
    ret nc

    add sp, -$0a
    rst $08
    ret z

    ldh a, [$f4]
    rst $38
    and b
    rst $38
    add c
    db $e3
    cp e
    rst $38
    add d

jr_0ab_701f:
    jp $ffbb


    add b
    add a
    ld [bc], a
    rrca
    or $ff
    ld a, [c]
    rst $38
    nop
    rra
    jr nz, @+$41

    ldh [rIE], a
    nop
    ld a, a
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a

jr_0ab_7039:
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    xor c
    ld d, [hl]
    di
    ld c, $f8
    rrca
    ld [hl], b
    adc a
    ldh [$1f], a
    ret nz

    ccf
    ld [c], a
    dec e
    rst $10
    jr z, jr_0ab_701f

    ld sp, $7788
    add h
    ld a, e
    ld [bc], a
    db $fd
    add [hl]
    ld a, c
    inc [hl]
    bit 7, [hl]
    add c
    ld a, a
    add b
    cpl
    ret nc

    ld e, [hl]
    and c
    ld a, a
    add b
    xor $11
    rst $20
    jr jr_0ab_7039

    ld sp, $3fc0
    ldh [$1f], a
    db $10
    rst $28
    add b
    ld a, a
    di
    ld c, $fe
    ld bc, $02fd
    db $fd
    ld [bc], a
    rst $28
    nop
    or a
    nop
    db $db
    nop
    ld [hl], l
    nop
    xor e
    nop
    ld e, l
    nop
    xor d
    nop
    dec c
    nop
    add [hl]
    nop
    ld [bc], a
    nop
    nop
    ld b, c
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $01fe
    cp $80
    ld a, h
    add b
    ld a, d
    ld bc, $0092
    ld [hl], d
    nop
    ld a, [bc]
    inc bc
    ret nz

    rst $08
    rst $38
    ld h, e
    rst $38
    jr @+$01

    nop
    rst $38
    inc b
    rst $38
    ld d, h
    rst $38
    ld d, a
    ld a, a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_0ab_70c8:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    ldh [$cf], a
    ld c, a
    add b
    dec d
    jr nz, jr_0ab_70f9

    nop
    add b

jr_0ab_70f9:
    nop
    ldh [rP1], a
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    jr nz, jr_0ab_70c8

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    add b
    nop
    db $ec
    nop
    ld a, a
    add b
    rst $30
    ld [$07f8], sp
    rst $20
    rra
    ld e, h
    cp e
    jp c, Jump_000_193d

    cp $7c
    cp e
    ld a, [hl+]
    push de
    or d
    ld l, a
    add e
    ld a, [hl]
    inc h
    rst $38
    ld a, l
    add d
    cp d
    push bc
    ld [hl], a
    adc b
    xor [hl]
    ld d, c
    ld e, d
    or l
    cp [hl]
    ld a, a
    cp h
    rst $38
    ld a, $ff
    sub h
    ld a, a
    xor h
    ld d, a
    ld e, b
    and a
    and b
    ld e, a
    cp b
    ld b, a
    cp h
    ld b, a
    inc l
    rst $10
    cp b
    ld c, a
    cp b
    ld c, a
    add hl, de
    rst $28
    dec c
    rst $38
    dec a
    rst $18
    ld e, a
    cp a
    dec sp
    rst $08
    ld [hl], a
    adc b
    rst $28
    db $10
    pop de
    ld l, $a0
    ld e, a
    pop bc
    ccf
    pop bc
    ccf
    jp hl


    rla
    push de
    cpl
    dec hl
    rst $10
    dec e
    db $e3
    adc c
    ld [hl], a
    rla
    ld [$fd12], a
    dec de
    xor $f7
    xor $97
    ld a, a
    di
    rrca

jr_0ab_717c:
    cp e
    ld b, h
    or $09
    rst $18
    jr nz, jr_0ab_717c

    ld b, $fe
    ld bc, $23dc
    ld a, [$7f05]
    nop
    or l
    ld a, [bc]
    ld a, [$5705]
    ld [$04bb], sp
    rst $10
    ld [$012e], sp
    rrca
    nop
    ld bc, $0904
    nop
    nop
    nop
    and b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld c, b
    add b
    ret nc

    nop
    ld d, b
    add b
    ld [hl], e
    add b
    ld d, a
    and b
    ld [$06e0], sp
    jr z, jr_0ab_71bc

    ld [$3807], sp
    rlca
    jr c, jr_0ab_71c2

    cp b

jr_0ab_71bc:
    rlca
    ld hl, sp-$7e
    db $fd
    ld a, b
    rst $38

jr_0ab_71c2:
    ld hl, sp-$01
    inc hl
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    ei
    rst $38
    db $d3
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    sbc h
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
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
    db $db
    nop
    ld a, a
    add b
    add e
    db $fc
    pop af
    rst $38
    db $f4
    ld a, a
    ld e, [hl]
    rst $38
    cp a
    ld a, a
    adc a
    ld a, a
    ei
    rra
    ld d, h
    xor e
    ld sp, $7efe
    rst $38
    ld d, $ff
    nop
    rst $38
    sub b
    rst $28
    ld [hl+], a
    rst $18
    ld l, b
    rst $10
    add hl, de
    and $08
    rst $30
    ld b, [hl]
    cp c
    ld c, d
    push af
    ld l, b
    rst $38
    ld e, d
    rst $38
    db $ec
    rst $38
    ld [c], a
    rst $38
    ldh a, [rIE]
    xor b
    rst $38
    ldh a, [rIE]
    ld d, b
    rst $38
    jp c, $a4fd

    rst $38
    call c, $f2ff
    rst $38
    ei
    rst $38
    dec hl
    rst $38
    inc hl
    rst $18
    ld l, d
    rst $10
    xor [hl]
    ld [hl], e
    db $fc
    ld [hl], e
    pop af
    rst $38
    pop hl
    rst $38
    jp $8bff


    rst $38
    ld e, h
    xor a
    adc a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    call c, $80bf
    rst $38
    and b
    rst $38
    ld [hl], b
    rst $38
    xor a
    ld e, a
    ld h, b
    sbc a
    ret nz

    ccf
    or b
    ld c, a
    ldh [$1f], a
    and b
    ld e, a
    ld [hl], b
    adc a
    ld e, b
    and a
    and b
    ld e, a
    add sp, $17
    ld [hl], b
    adc a
    ret c

    daa
    add sp, $17
    ld a, b
    add a
    db $fc
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    nop
    nop
    nop

jr_0ab_7293:
    nop
    xor d
    ld a, h
    cp [hl]
    ld h, b
    add b
    ld b, b
    nop
    nop
    ld bc, $0300
    nop
    ld bc, $3002
    inc bc
    inc e
    ld h, e
    dec b
    ld a, [$f50a]
    jr jr_0ab_7293

    dec c
    ld a, [c]
    ld [bc], a
    db $fd
    nop
    rst $38
    adc e
    rst $38
    sbc a
    cp $1f
    rst $38
    dec de
    cp $8f
    cp $df
    ld hl, sp-$01
    pop af
    rst $38
    ld hl, sp-$0f
    cp [hl]
    db $eb
    or $8f
    cp $9f
    ld a, h
    ld a, a
    ld sp, hl
    rst $38
    rst $28
    ld a, [hl]
    ld a, [$febe]
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
    nop
    rst $38
    nop
    rst $38
    pop bc
    ld a, $39
    ld b, $01
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $02
    cp $05
    db $fd
    dec b
    db $fd
    dec b
    db $fd
    inc b
    inc bc
    ld b, $03
    adc a
    ld [bc], a
    rst $00
    ld [bc], a
    ld [hl], a
    adc d
    inc bc
    cp $00
    cp $04
    db $fc
    add h
    db $fc
    ret nz

    db $fc
    pop bc
    cp $c0
    cp $c0
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld c, $ff
    db $76
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    add h
    ld a, a
    inc b
    rst $38
    adc b
    ld a, a
    ld hl, sp+$1f
    or b
    ld e, a
    ld d, c
    cp a
    ld a, c
    rst $30
    ld sp, $72ff
    rst $38
    or $fb
    ld [hl], d
    rst $38
    db $fd
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $e4
    ei
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    db $fd
    ldh [rIE], a
    db $e4
    ei
    ldh [rIE], a
    ldh [rIE], a
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
    ld bc, $01ff
    rst $38
    ld bc, $04fe
    cp $00
    cp $00
    cp $32
    cp $7b
    cp $f9
    cp $f1
    cp $77
    db $fc
    cp $fc
    or $fc
    ld a, [c]
    db $fc
    ld [c], a
    db $fc
    add [hl]
    ld hl, sp+$7a
    db $fc
    or [hl]
    ld hl, sp-$44
    ld hl, sp-$34
    ld hl, sp-$7c
    ld hl, sp+$10
    ld hl, sp+$3c
    ldh a, [$f8]
    ldh a, [$c8]
    ldh a, [$6c]
    ldh a, [$c8]
    ldh a, [$58]
    ldh [$d0], a
    ldh [$d8], a
    ldh [$90], a
    ldh [rP1], a
    nop
    nop
    rrca
    ld [$880f], sp
    adc a
    add sp, -$01
    ldh [$f7], a
    ldh [$f7], a
    ret nz

    rst $30
    ret nz

    rst $30
    ret nz

    ei
    ret nz

    ld sp, hl
    pop de
    db $f4
    or b
    or $b5
    or $84
    add [hl]
    ld b, $06
    ld b, $06
    ld b, $04
    ld b, $0c
    call $c6fc
    pop af
    call nz, $c4f3
    di
    jp c, $d4e7

    rst $28
    rlca
    call nz, $c407
    rrca
    adc b
    rrca
    adc b
    rrca
    adc b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    adc d
    dec a
    pop de
    ld a, $d5
    ld a, [hl-]
    sub c
    ld a, [hl]
    and d
    ld a, l
    and l
    ld a, d
    jr nz, @+$01

    ld b, d
    db $fd
    or a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    cp a
    ld b, b
    xor a
    ld d, b
    xor a
    ld d, b
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

jr_0ab_745c:
    rra
    ldh [$2f], a
    ret nc

    ccf
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, l
    add d
    ld a, a
    add b
    ld a, a
    add b
    cp $01
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
    or $09
    ld a, l
    add d
    call c, Call_0ab_5a23
    and l

jr_0ab_7486:
    xor d
    ld d, l
    ld d, l
    xor d
    ld c, d
    or l
    ld d, l
    xor d
    ld d, d
    xor l
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    ret nz

    nop
    ret nz

    nop
    jr nz, jr_0ab_745c

    ldh [rNR41], a
    add b
    ld h, b
    and b
    ld b, b
    and c
    ld b, b

jr_0ab_74a4:
    pop bc
    ld b, b
    pop bc
    nop
    jp nz, $c701

    inc bc
    jp $c201


    ld bc, $00c5
    push de
    dec b
    pop de
    dec b
    pop af
    dec c
    db $dd
    ld bc, $03fb
    ld a, [$ef03]
    ld [de], a
    rst $38
    nop
    rst $10
    jr z, jr_0ab_74a4

    jr nz, jr_0ab_7486

    ld b, b
    cp a
    ld b, b
    cpl
    ld b, b
    ld [hl], a
    nop
    dec c
    add b
    ld e, a
    nop
    cpl
    nop
    ld a, a
    ld b, b
    rst $18
    add b
    ld [hl], a
    nop
    rra
    nop
    ld [hl], a
    ld b, b
    ld c, a
    nop
    ld a, a
    ld b, b
    ld a, a
    nop
    ld a, a
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    jr jr_0ab_74fe

jr_0ab_74fe:
    stop
    inc l
    nop
    jr nc, jr_0ab_7504

jr_0ab_7504:
    jr jr_0ab_7506

jr_0ab_7506:
    ld d, b
    nop
    jr nz, jr_0ab_750a

jr_0ab_750a:
    ld [hl-], a
    nop
    stop
    jr nz, jr_0ab_7510

jr_0ab_7510:
    inc h
    nop
    ld h, h
    nop
    jr nz, jr_0ab_7516

jr_0ab_7516:
    jr nz, jr_0ab_7518

jr_0ab_7518:
    ld d, h
    nop
    and c
    nop
    ld [de], a
    nop
    sub c
    nop
    sub l
    nop
    inc hl
    nop
    and l
    nop
    daa
    nop
    ld b, l
    nop
    ld b, a
    nop
    rrca
    nop
    adc a
    nop
    sub a
    nop
    adc a
    nop
    rra
    nop
    rla
    nop
    rla
    nop
    sbc a
    nop
    sub a
    nop
    sbc a
    nop
    cpl
    nop
    ccf
    nop
    cp a
    nop
    rst $18
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld a, l
    add d
    cp a
    ld b, b
    ld a, e
    add h
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld l, a
    sub b
    sbc a
    ld h, b
    ld e, a
    and b
    sbc a
    ld h, b
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
    cp $00
    rst $38
    nop
    db $fd
    add b
    db $fd
    add b
    db $fd
    add b
    ld a, b
    add b
    ld a, h
    add b
    ld hl, sp+$00
    add sp, $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $00
    add sp, $00
    add sp, $00
    add sp, $00
    add sp, $00
    add sp, $00
    db $f4
    nop
    ret c

    nop
    db $ec
    nop
    cp b
    nop
    ld a, [$f900]
    nop
    ld a, [$ff00]
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
    ld de, $0500
    nop
    ld e, $00
    dec hl
    nop
    ccf
    nop
    ld e, a
    nop

Jump_0ab_75f0:
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
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    cp $01
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
    cp $01
    rst $18

jr_0ab_762d:
    jr nz, jr_0ab_762d

    ld bc, $21de
    rst $30
    ld [$817e], sp
    rst $30
    ld [$20df], sp
    ld a, a
    add b
    rst $30
    ld [$04fb], sp
    rst $28
    db $10
    db $e3
    inc e
    jp $c33c


    inc a
    pop bc
    ld a, $a2
    ld e, l
    ret nc

    cpl
    add sp, $17
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    ei
    nop
    rst $28
    nop
    push af
    nop
    ld a, [c]
    nop
    pop de
    nop
    ld l, d
    nop
    and h
    nop
    and b
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
    and b
    nop
    and b
    nop
    xor b
    nop
    call nc, $e800
    nop
    xor d
    nop
    or l
    nop
    or $00
    db $dd
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ret nc

    nop
    ld h, c
    nop
    or [hl]
    nop
    ld d, l
    nop
    ld [$ef00], a
    nop
    or $00
    rst $10
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    cp $00
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $00
    cp $01
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
    rst $30
    ld [$14eb], sp
    rst $28
    db $10
    ld a, [c]
    dec c
    db $fd
    ld [bc], a
    ld [$fa15], a
    dec b
    ld [$6915], a
    sub [hl]
    ld d, h
    xor d
    xor d
    ld d, l
    xor d
    ld d, l
    ld d, d
    xor l
    or l
    ld c, d
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, l
    ld d, l
    xor d
    ld l, c
    sub [hl]
    xor d
    ld d, l
    ld d, h
    xor e
    or l
    ld c, d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$f515], a
    ld a, [bc]
    ld a, d
    add l
    db $ed
    ld [de], a
    ld a, [$7d05]
    add d
    db $fd
    nop
    cp $00
    push af
    nop
    add sp, $00
    xor d
    nop
    ret nc

    nop
    ld b, b
    nop
    and b
    nop
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
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    add sp, $00
    ld d, d
    nop
    db $f4
    nop
    xor $00
    ei
    nop
    db $fd
    nop
    cp $00
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
    rst $38
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    nop
    ld b, b
    nop
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
    ld b, h
    add b
    ld [hl+], a
    nop
    inc d
    ld b, b
    db $10
    add l
    db $10
    ld b, c
    xor b
    ld bc, $9340
    and b
    ld d, a
    and b
    ld b, a
    ld b, b
    and a
    and b
    ld b, c
    add hl, bc
    ldh a, [$0c]
    ldh a, [rDIV]
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$02
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    cp $00
    sbc $20
    rst $38
    nop
    rst $38
    nop
    ld a, l
    add d
    rst $38
    nop
    ld a, e
    add h
    cp a
    ld b, b
    db $fd
    ld [bc], a
    cp [hl]
    ld b, c
    ld l, a
    sub b
    ld e, l
    and d
    cp a
    ld b, b
    cp l
    ld b, d
    ld a, l
    ld [bc], a
    or [hl]
    ld c, c
    ld e, e
    and h
    ld d, a
    xor b
    xor l
    ld d, d
    ld e, e
    and h
    ld l, a
    sub b
    or [hl]
    ld c, c
    xor d
    ld d, l
    ld e, e
    and h
    xor a
    ld d, b
    ld d, l
    xor d
    ld e, d
    and l
    ld l, h
    sub e
    or h
    ld c, e
    ld e, b
    and a
    db $ec
    inc de
    ld e, b
    and a
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
    jr jr_0ab_7813

    ld a, [de]
    dec de
    inc e
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ab_7834

    ld a, [hl+]
    inc e
    inc e
    dec hl
    inc l
    dec l
    ld l, $2f

jr_0ab_7813:
    jr nc, jr_0ab_7846

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc e
    ld [hl], $1c
    scf
    jr c, jr_0ab_7858

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
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
    ld c, [hl]

jr_0ab_7834:
    ld c, a
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
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_0ab_7846:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld e, e
    ld e, e
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_0ab_7858:
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
    ld e, e
    ld e, e
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

    inc e
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_000_1cc0
    inc e
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    inc e
    inc e
    inc e
    inc e
    inc e
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    inc e
    inc e
    inc e
    inc e
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ldh a, [$f1]
    ld a, [c]
    inc e
    inc e
    inc e
    di
    db $f4
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    push af
    or $1c
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    rst $30
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld hl, sp+$1c
    ld bc, $0101
    ld bc, $0306
    ld [bc], a
    inc b
    ld [bc], a
    ld b, $02
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld b, $06
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0601
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    dec b
    nop
    ld bc, $0101
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld b, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    inc b
    inc b
    inc b
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    inc b
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0101
    ld b, $01
    ld bc, $0500
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a

jr_0ab_7a2f:
    ld [bc], a
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    ld hl, $03ff
    rst $38
    rrca
    rst $38
    ld d, l
    ld hl, sp+$64
    ld hl, sp+$04
    ld hl, sp-$3c
    ld hl, sp-$38
    ldh a, [rNR10]
    ldh [$80], a
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    ret nz

    nop
    ldh [rP1], a
    db $fc
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
    ld bc, $0301
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    dec b
    inc bc
    ld b, $03
    and l
    inc bc
    dec d
    inc bc
    ld b, a
    nop
    add c
    nop
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
    rst $20
    jr jr_0ab_7a2f

    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $000f
    dec [hl]
    ld a, [bc]
    ld b, d
    cp l
    ld de, $6fef
    nop
    push af
    ld a, [bc]
    ld e, d
    and l
    ld de, $a2ea
    ld d, l
    xor b
    ld d, l
    ld a, [de]
    push hl
    ld a, [hl+]
    push de
    jp c, Jump_0ab_65ff

    rst $38
    ld [hl], $ff
    ld c, d
    rst $38
    ld l, c
    rst $38
    ld l, $ff
    rst $38
    rst $38
    ld [$ff00], a
    rst $38
    rst $38
    rst $38
    jp $07fd


    rst $38
    rst $10
    cpl
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    jp z, $3a00

    ld b, b
    adc h
    nop
    ld h, h
    sub b
    or l
    ld c, d
    db $db
    inc h
    or [hl]
    ld c, c
    ld d, h
    rst $38
    ld c, c
    rst $38
    dec h
    rst $38
    ret


    rst $38
    xor e
    rst $38
    db $fd
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
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
    cp $fe
    db $fc
    ld hl, sp-$04
    ld [$feff], sp
    rst $38
    ld d, a
    rst $38
    dec e
    inc bc
    ld c, l
    ld [bc], a
    dec a
    ld [bc], a
    db $ed
    ld [bc], a
    rra
    nop
    cp a
    nop
    rst $18
    nop
    and l
    nop
    ld b, d
    nop
    ld de, $0400
    nop
    nop
    nop
    ld [bc], a
    nop
    ldh [rLCDC], a
    ldh a, [$e0]
    ret c

    ldh a, [$c8]
    cp b
    ret z

    cp b
    ld hl, sp-$20
    db $fd
    cp $31
    rst $38
    nop
    rst $38
    inc b
    ei
    rrca
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    inc c
    di
    inc e
    db $e3
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld b, b
    cp a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [$2214], sp
    db $eb
    inc d
    ld [$04f7], sp
    rst $38
    ld l, a
    rst $38
    ld hl, sp+$02
    ret nc

    dec l
    xor d
    ld d, l
    ld c, c
    or [hl]
    add h
    ld e, c
    and l
    ld e, d
    ld c, d
    dec [hl]
    adc d
    ld d, l
    xor [hl]
    rst $38
    ld d, d
    rst $38
    or l
    rst $38
    xor c
    rst $38
    ld c, d
    rst $38
    dec [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ei
    rst $38
    push de
    rst $38
    db $eb
    rst $38
    ld sp, hl
    rst $38
    ld d, e
    rst $38
    ld bc, $03ff
    rst $38
    ld [hl], a
    xor a
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    rra
    inc hl
    inc bc
    ccf
    inc bc
    ccf
    daa
    ccf
    rlca
    ld a, a
    rlca
    ld a, a
    rrca
    ld a, a
    ld c, a
    ld a, a
    ld c, a
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
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    call z, $88ff
    rst $18
    cp c
    call c, $ff18
    db $fc
    rst $38
    rst $38
    cp $f8
    db $fc
    ld a, b
    ld hl, sp-$28
    ld hl, sp+$10
    cp b
    jr nc, jr_0ab_7c62

    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    ld c, $f8
    db $e3
    cp $b8
    rst $38
    sub a
    rst $38
    bit 7, a
    ret nz

    rst $38
    pop bc
    ld a, a
    and b
    ld e, a

jr_0ab_7c62:
    ldh a, [$1f]
    ld e, h
    rlca
    xor l
    inc bc
    ld d, a
    nop
    dec hl
    nop
    dec d
    nop
    dec bc
    nop
    ld h, [hl]
    sbc c
    inc e
    db $e3
    ld h, [hl]
    sbc c
    inc e
    db $e3
    ld h, h
    sbc e
    inc e
    db $e3
    ld h, h
    sbc e
    ld [$fdf7], sp
    inc d
    rra
    rlca
    rlca
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld [bc], a
    inc bc
    rlca
    ld b, $04
    ld b, $02
    inc c
    ld a, [bc]
    inc c
    ld a, [de]
    inc c
    ld a, [hl-]
    inc c
    ld a, [hl-]
    inc c
    dec sp
    inc c
    scf
    ld [$1c20], sp
    ld a, [hl+]
    inc e
    ld [hl], b
    ld e, $fb
    ld e, $48
    cp a
    dec e
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld d, e
    cp h
    or c
    ld e, [hl]
    sbc c
    ld a, $4a
    cp a
    sbc d
    ld c, a
    ld d, $af
    cpl
    ld d, a
    inc de
    ld l, a
    ld d, a
    xor e
    ld hl, $9adf
    ld h, l
    db $eb
    inc d
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    xor c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ccf
    rra
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    rst $38
    sbc l
    rst $38
    dec a
    rst $38
    add hl, de
    rst $38
    ld d, b
    rst $20
    jr nz, @+$01

    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $e3
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
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
    xor l
    rst $38
    ld [bc], a
    rst $38
    nop
    db $fc
    nop
    pop hl
    ld bc, $0381
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    ld c, $1f
    dec de
    inc a
    cpl
    jr nc, jr_0ab_7d6e

    ld b, b
    inc bc
    inc c
    inc b
    inc bc
    ld [bc], a
    ld bc, $1483
    rst $38
    nop
    ld a, a
    add b
    cpl
    ret nc

    adc a
    ld [hl], b
    cp b
    rst $38
    inc e
    rst $38
    ld l, $ff
    ld e, l
    rst $38
    db $fc
    rst $38
    cp $7f
    ld h, d
    ccf
    ld [c], a
    rra
    rst $20
    rra
    ld h, e
    rra
    rst $20
    rra
    ld l, e
    rra
    rst $20
    rra
    ld l, e
    rra
    ld h, a
    rra
    db $e3
    rra
    rst $28
    rra
    ret nz

    ret nz

    ccf
    ccf
    ld h, b
    ld a, a
    or b
    ret nz

    ld b, b
    add b
    add b
    nop

jr_0ab_7d6e:
    nop
    nop
    rra
    ldh [$7e], a
    add c
    cp $01
    cp $01
    jp hl


    rla
    ld [bc], a
    rst $38
    inc hl
    rst $18
    rlca
    rst $38
    nop
    inc bc
    nop
    rrca
    inc e
    and e
    xor b
    ld d, a
    ld bc, $12ff
    rst $38
    ld a, h
    rst $38
    ld a, d
    rst $38
    ld b, l
    xor d
    ld d, c
    xor d
    ld [de], a
    and l
    db $e4
    ld a, [de]
    adc d
    ld d, l
    db $10
    xor e
    ld h, d
    sub l
    xor c
    sub $e8
    push de
    call nc, $f8ea
    push af
    ld [hl], b
    db $fd
    ld a, h
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    adc [hl]
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    ldh a, [$f8]
    ret nz

    ld sp, hl
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    push af
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
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fc
    ldh a, [$f8]
    pop bc
    ldh [rSCX], a
    add b
    inc b
    nop
    ld [$2000], sp
    nop
    ld b, b
    nop
    or b
    nop
    ld l, b
    add b
    or h
    ret nz

    jp z, Jump_0ab_75f0

    ld hl, sp+$3b
    db $fc
    inc c
    cp $4d
    rst $38
    ld hl, sp+$07
    cp h
    ld b, e
    db $ec
    inc bc
    xor $01
    cp [hl]
    ld b, c
    cp h
    ld b, e
    or b
    ld c, e
    cp $01
    db $f4
    dec bc
    db $f4
    dec bc
    xor b
    ld d, a
    ld d, b
    xor [hl]
    adc h
    ld [hl], b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    nop
    inc [hl]
    dec bc
    ld a, [hl-]
    dec b
    cp l
    add d
    nop
    rlca
    ld bc, $0002
    inc bc
    ld [bc], a
    rlca
    ld b, $07
    dec bc
    inc c
    inc e
    ld [$0198], sp
    dec bc
    sub b
    sbc e
    nop
    or c
    ld [bc], a
    or b
    inc bc
    or [hl]
    inc bc
    inc bc
    inc bc
    rlca
    add e
    ld e, e
    add a
    dec hl
    rst $10
    ld a, e
    rst $18
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    jr nz, @+$01

    and b
    ld a, a
    ld [hl], b
    cp a
    sub b
    ld a, a
    db $10
    ld a, a
    cp b
    ld e, a
    ld c, l
    cp a
    daa
    sbc a
    adc a
    ld d, a
    ld b, c
    xor a
    adc b
    ld d, a
    or c
    ld c, d
    inc e
    db $e3
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
    sub c
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

Call_0ab_7ea0:
    rst $38
    rst $38
    db $ec
    db $fc
    db $f4
    db $fc
    cp $ff
    ei
    rst $38
    ld sp, hl
    db $fd
    ld hl, sp-$06
    ldh a, [$fa]
    ld hl, sp-$06
    ldh a, [$fc]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
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
    rrca
    adc a
    rlca
    rrca
    rlca
    rra
    rrca
    rst $38
    rst $30
    rst $38
    sbc e
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    cp $f0
    ld hl, sp-$10
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c2], a

jr_0ab_7ef7:
    pop bc
    add c

jr_0ab_7ef9:
    add $c6
    sbc c
    ld d, b
    xor a
    inc sp
    call z, Call_000_0078
    ldh [rP1], a
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nz, jr_0ab_7ef7

    jr nz, jr_0ab_7ef9

    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld [bc], a
    and b
    nop
    ldh [rOBP1], a
    ret nz

    db $fc
    ret nz

    or b
    ret nz

    db $f4
    ret nz

    cp l
    ret nz

    cp [hl]
    ret nz

    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    ei
    nop
    jp hl


    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    or l
    ld b, b
    add hl, bc
    ldh a, [$30]
    add hl, bc
    dec de
    db $e3
    rla
    rst $20
    scf
    rst $00
    ld d, a
    and a
    ld l, a
    adc a
    xor a
    rst $08
    xor a
    rst $08
    rst $28
    rst $08
    xor a
    adc a
    rst $08
    rst $08
    rst $08
    adc $ef
    call z, $eeff
    rst $38
    cp $ff
    cp $ff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add e
    rst $38
    ldh a, [rIE]
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [$fafd]
    db $fc
    cp $ff
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
    rst $28
    rst $38
    ld b, $0f
    nop
    rlca
    nop
    rst $28
    ldh a, [rIE]
    ei
    rst $38
    db $fd
    rst $38
    ccf
    ld a, a
    ld a, $3e
    dec e
    ld e, $0a
    rst $38
    reti


    rst $38
    inc e
    db $fc
    db $fc
    db $fc
    or h
    cp $07
    rst $38
    rst $18
    rst $38
    ld sp, hl
    rst $38
    pop hl
    pop af
    ret nz

    add b
    add b
    add b
    add b
    add b
    ldh [$80], a
    ldh [$e0], a
    ld hl, $fff9
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    cp $fc
    db $fc
    db $fc
    cp $fc
    db $fc
    db $fc
    or $f9
    ld b, a
    rst $38
    rst $10
    rst $28
    adc a
    rst $08
    sbc a
    rrca
    rrca
    rra
    inc c
    rra
    dec bc
    inc e
    ld b, $19
    ld c, b
    scf
    ld [hl+], a
    db $dd
    ld b, d
    cp l
    add hl, bc
    or $16
    jp hl


    dec h
    jp c, $a45b
