SECTION "ROM Bank $069", ROMX[$4000], BANK[$69]

    pop de
    rst $28
    ld hl, sp-$01
    or $f9
    db $76
    ld sp, hl
    ld a, d
    pop af
    ld [hl], d
    ld sp, hl
    db $76
    ld sp, hl
    ld [hl], e
    db $fc
    db $fd
    ld hl, sp-$03
    ld a, [$fafc]
    db $fc
    ld a, b
    db $fc
    ld [hl], b
    cp [hl]

jr_069_401b:
    ld a, c
    db $fd
    cp [hl]
    sbc [hl]
    dec a
    adc a
    inc e
    inc a
    rst $38
    ld e, $ff
    xor d
    rra
    add b
    rra
    inc bc
    adc a
    ld b, a
    adc a
    push af
    rrca
    ldh [rIF], a
    db $e4
    rrca
    dec h
    adc [hl]
    db $f4
    rrca
    rst $30
    rrca
    ld a, a
    add a
    ld [hl], a
    adc a
    ld bc, $80fe
    rst $38
    ret


    cp $8f
    ldh a, [$d7]
    ldh [$de], a
    ldh [rIE], a
    ret nz

    rst $18
    ldh [$dc], a
    db $e3
    add b
    rst $38
    jr c, jr_069_401b

    cp h
    jp $837c


    ld [hl], c
    adc a
    ld b, l
    cp a
    dec h
    rst $18
    inc h
    rst $18
    ld hl, $96de
    ld hl, sp-$49
    ld hl, sp-$51
    ldh a, [$ef]
    ldh a, [$ee]
    pop af
    adc $f1
    jp nc, $c0ed

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    or $f9
    di
    db $fc
    ld a, h
    add a
    dec sp
    rst $00
    rst $20
    dec de
    xor a
    inc de
    add a
    inc sp
    add e

jr_069_408b:
    inc sp
    ld [de], a
    rst $20
    adc e
    add $81
    adc $08
    rst $00
    ld b, b
    add a
    ld d, b
    adc a
    ld hl, $c39f
    ccf
    ld [bc], a
    ld a, a
    jp nz, Jump_069_497f

    rst $30
    jr jr_069_408b

    ld d, $e8
    sbc h
    ld [c], a
    dec l
    jp nc, $d027

    rla
    ldh [$f9], a
    and $f7
    adc e
    rst $30
    sbc e
    rra
    di
    dec a
    jp nc, $f51a

    ld e, $f1
    inc a
    ld a, b
    ld a, c
    db $fc
    sub a
    ld a, c
    rst $10
    dec sp
    rst $18
    ccf
    rst $08

jr_069_40c7:
    ccf
    call z, $f83f
    ccf
    jp hl


    ccf
    dec [hl]
    rst $08
    ccf
    rst $00
    ld a, a
    add a
    ld a, a
    add a
    ld l, a
    add a
    ld l, a
    add a
    call c, $d007
    rrca
    ld a, b
    add a
    ld l, c
    sbc [hl]
    ld hl, sp+$3c
    ld h, c
    cp $4a
    ldh a, [rHDMA5]
    ldh [$0a], a
    ret nz

    inc b
    sbc b
    ld h, [hl]
    sbc b
    call z, $9530
    ld h, b
    ld a, [de]
    db $e4
    dec bc
    db $e4

Call_069_40f8:
    ld c, e
    and h
    inc d
    db $eb
    db $10
    rst $28
    jr c, jr_069_40c7

    cp b
    rst $00
    and [hl]
    rst $08
    ld d, a
    xor a
    rra
    rst $28
    cp h
    rst $38
    ld [hl-], a
    db $fd
    jr nz, @+$01

    daa
    ld hl, sp-$04
    ld [hl], d
    ldh a, [$64]
    ldh [rSVBK], a
    ldh [$31], a
    pop hl
    jr nc, jr_069_413e

    call c, $6996
    ld a, [hl-]
    push de
    adc d
    ld [hl], c
    dec b
    ei
    sub a
    dec bc
    rla
    dec bc
    sub e
    ld a, a
    ld a, [$39ff]
    cp $2c
    db $db
    nop
    ld sp, hl
    nop
    or c
    nop
    ld sp, hl
    ldh a, [$f9]
    ldh a, [$f9]
    ret nz

    ld sp, hl
    ld e, h
    add c

jr_069_413e:
    adc [hl]
    nop
    rst $00
    and a
    rst $00
    ld [hl], $9f
    ld l, a
    rra
    rst $28
    ld c, a
    cp a
    xor a
    ld d, a
    rst $38
    rlca
    rst $38
    rra
    ld b, b
    cp l
    ld [$00f0], sp
    rst $38
    nop
    rst $38
    add e
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    nop
    cp $e8
    rra
    add b
    ld e, a
    add d
    ld a, a
    inc hl
    rra
    jp nz, Jump_000_083f

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, d
    sbc a
    ld b, b
    cp a
    add c
    ld a, [hl]
    add e
    rst $38
    add l
    ei
    add h
    ei
    ld d, $f9
    rla
    ld hl, sp-$79
    ld a, b
    add [hl]
    ld a, b
    ld c, $f0
    ld a, h
    ret nz

    ld e, h
    ldh [$f4], a
    ret nz

    jp nz, $c0e0

    ldh [rLCDC], a
    ldh [rSTAT], a
    ldh [$8a], a
    ldh [$fd], a
    ret nz

    ccf
    ret nz

    cp [hl]
    ld b, c
    ld e, $e1
    ld b, $f9
    ld l, c
    cp $25
    cp $17
    xor $01
    cp $05
    cp $55
    cp [hl]
    or b
    ccf
    ccf
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    rst $38
    cp $ff
    cp h
    rst $38
    cp b
    rst $38
    db $fc
    rst $38
    ld a, l
    cp $fd
    cp $fd
    cp $fe
    rst $38
    cp $ff
    and $ff
    rst $38
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    nop
    rst $38
    ld e, $e1
    add hl, de
    ldh [$33], a
    ret nz

    jp $c300


    nop
    add d
    ld bc, $0186
    ld bc, $0807
    rlca
    ld e, c
    rlca
    pop af
    rrca
    jp $d70f


    rrca
    adc a
    rra
    rra
    ccf
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    inc a
    ld hl, sp-$18

Call_069_4203:
    ldh a, [$e8]
    pop af
    ld [$e0f1], sp
    jr nc, jr_069_426b

    or b
    ld b, b
    or b
    ld d, b
    jr nc, @+$7a

    inc [hl]
    ld hl, sp+$7e
    db $fc
    dec sp

jr_069_4216:
    db $fc
    ld a, a
    rst $28
    inc e
    rst $28
    dec e
    rst $38
    rrca
    rst $38
    rrca
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    db $fc
    ld a, e
    ldh [$63], a
    add b
    rst $30
    nop
    rst $30
    nop
    db $e3
    inc e
    ld sp, hl
    add [hl]
    jp hl


    sub [hl]
    rst $20
    ret c

    rst $08
    ldh a, [$c3]
    db $fd
    pop de
    xor [hl]
    pop af
    call c, $f881
    inc a
    ei
    db $fd
    ld a, a
    or a
    ld a, a
    jr nz, jr_069_42c9

    ld [$2c7f], sp
    dec sp
    inc hl
    jr c, jr_069_42b0

    jr c, jr_069_4216

    inc a
    jp nz, $e83c

    ld d, $ec
    inc de
    ld l, $d1
    dec h
    ret c

    dec [hl]
    ret z

    jr nz, @-$36

    ld d, $e8
    ld d, e
    db $ec
    jp $c8fc


    rst $30
    and d

jr_069_426b:
    ld a, a
    add c
    ld a, [hl]
    ld de, $113e
    cp $01
    cp $00
    rst $38
    add b
    ld a, a
    ld [$08f7], sp
    rst $30
    adc h
    di
    inc c
    di
    push af
    ld a, [$fed0]
    ld a, [c]
    db $fd
    pop hl
    rst $38
    set 6, a
    bit 6, a
    add a
    ld l, a
    ld b, a
    xor a
    rra
    ld l, [hl]
    inc c
    ld a, [hl]
    rst $18
    ld a, h
    ei
    ld a, h
    ld a, $f9
    rst $30
    ld a, b
    sbc $30
    ret c

    inc h
    add b

Jump_069_42a1:
    ld a, h
    inc d
    ld hl, sp+$2c
    ldh a, [$92]
    ld h, b
    xor a
    ld b, b
    ld b, a
    add b
    sbc a
    nop
    adc b
    rlca

jr_069_42b0:
    rrca
    rst $20
    adc a
    ccf
    rra
    add e
    sbc a
    daa
    xor a
    rst $00
    rst $20
    adc a
    adc a
    rst $00
    rst $08
    adc a
    rra
    adc a
    adc a
    rra
    or a
    ld c, $0f
    ld [hl], $4c

jr_069_42c9:
    ld [hl], $0c
    jp nz, $ee1c

    inc e
    add sp, -$28
    inc a
    ld hl, sp-$68
    ret c

    cp b
    ldh a, [$df]
    ld hl, sp-$29
    ldh a, [$f7]
    ldh a, [$f7]
    ldh [$f7], a
    ld d, [hl]
    pop hl
    adc $e1
    cp $e1
    rst $38
    ldh [$ef], a
    ldh a, [$fe]
    ldh a, [$f4]
    ld hl, sp-$06
    db $fd
    rst $38
    rst $38
    ei
    rst $38
    ld a, [$f5ff]
    cp $ed
    or $fa
    call nz, $c4ba

jr_069_42fe:
    cp h
    ld b, b
    sbc h
    db $fc
    adc h
    db $fc
    adc h
    ld a, h
    ld c, h
    or h
    ld b, h
    inc a
    inc b
    ld a, b
    jr z, jr_069_42fe

    ld bc, $3bf8
    dec e
    rra
    daa
    rrca
    ccf
    rrca
    ld a, a
    rra
    rst $38
    sbc a
    rst $38
    rst $18
    cp e
    rst $18
    inc l
    rst $28
    ld d, b
    add $f9
    call nz, $c4d8
    ldh a, [$c0]
    db $e4
    ret nc

    xor $e2
    adc b
    ldh [$ce], a
    cp d
    ld b, b
    adc l
    ld [hl], d
    ld [bc], a
    ld a, a
    ld a, $7f
    xor $7f
    ld b, e
    rst $38
    ld h, e
    rst $18
    ccf
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    cp a
    rst $18
    sub a
    rst $18
    cp a
    rst $18
    ld a, $df
    ld c, a
    rst $38
    rra
    rst $28
    rla
    rst $28
    sub l
    ld l, a
    sbc [hl]
    ld h, l
    inc b
    rst $30
    inc de
    rst $20
    rla
    db $e3
    inc sp
    ld c, a
    db $d3
    rrca
    db $d3
    rrca
    xor a
    inc de
    ld [hl], l
    inc bc
    ld sp, hl
    inc bc
    rlca
    ld sp, hl
    inc sp
    db $fd
    cp a
    ld a, a
    rst $10
    ccf
    rst $00
    rra
    rlca
    rra
    inc bc
    rra
    ld hl, $881f
    rra
    db $d3
    inc c
    db $d3
    inc c
    sbc e
    inc c
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
    jr jr_069_43b3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_069_43c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_069_43d3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_069_43e3

    ld [hl-], a

jr_069_43b3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_069_43f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, b

jr_069_43c3:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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

jr_069_43d3:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, b
    ld b, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

Jump_069_43e1:
    ld e, b
    ld e, c

jr_069_43e3:
    ld e, d
    ld e, e
    ld e, h
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

jr_069_43f3:
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld b, b
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
    ld b, d
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
    ld b, b
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld b, b
    and l
    and [hl]
    and a
    ld b, b
    xor b
    ld b, b
    ld b, b
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
    ld b, b
    ld b, b
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
    jp nz, $c340

    call nz, $c6c5
    rst $00
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
    inc d
    dec d
    ld d, $17
    jr jr_069_44c6

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_069_44d6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_069_44e6

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop

jr_069_44c6:
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
    ld bc, $0000
    nop
    nop
    nop

jr_069_44d6:
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop

jr_069_44e6:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    ld bc, $0004
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0401
    nop
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
    nop
    ld bc, $0004
    nop
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
    ld bc, $0004
    nop
    nop
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
    ld bc, $0101
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
    ld bc, $0001
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
    ld bc, $0001
    ld bc, $0002
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
    ld bc, $0200
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    inc b
    inc b
    ld bc, $0401
    ld bc, $0401
    inc b
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, HeaderLogo
    ld bc, $0101
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_069_45f9:
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    add hl, bc
    db $e3
    rst $38
    ld h, e
    rst $38
    and b
    ld a, a
    db $10
    rst $28
    cp $c1
    cp [hl]
    pop bc
    ld a, $c1
    ccf
    pop bc
    cp a
    ld b, c

jr_069_4612:
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $28
    ld de, $b9c7
    dec bc
    push af
    dec e
    db $e3
    add c
    rst $38
    dec b
    ei
    add l
    ei
    and a
    ei
    or e
    rst $38
    rst $38
    rst $38
    jp hl


    ld d, $9d
    ld [bc], a
    sub [hl]
    inc bc
    and $03
    nop
    rst $18
    ld hl, sp-$31
    rst $18
    rst $08
    rst $00
    rst $08
    ld l, a
    rst $00
    ld c, e
    rst $20
    ld d, l
    db $eb
    push de
    ld l, e
    rst $18
    ld h, e
    ld c, a
    ld h, a
    ld [hl], e
    ld h, a
    ld a, c
    ld h, a
    dec [hl]
    ld h, e
    push af
    dec hl
    db $e3
    ccf
    rst $38
    ccf
    sub h
    ccf
    db $10
    ld l, h
    call z, Call_000_2f70
    ld [hl], b
    ld a, a
    jr nc, jr_069_46b6

    jr nc, jr_069_4670

    jr c, jr_069_4612

    jr jr_069_46d4

    jr jr_069_45f9

    ld a, l

jr_069_4670:
    dec hl
    inc e
    rra
    cp $59
    cp $62
    db $fd
    db $fd
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fc
    cp $f5
    cp $ff
    cp $ff
    cp $fe
    rst $38
    ld a, [$ffff]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp $7f
    ld hl, sp+$6f
    ldh a, [$5f]
    ldh [$5f], a
    ldh [$7f], a
    ldh [rIE], a
    ld h, b
    rst $28
    ld [hl], b
    xor a
    ld [hl], b

jr_069_46b6:
    rst $38
    jr nc, jr_069_46b6

    ld [hl-], a
    inc a
    di
    cp l
    ld a, [c]
    or h
    ei
    inc a
    ei
    adc b
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @-$12

    add b
    ld hl, sp-$80
    pop af
    ld a, $c1
    rra
    add b

jr_069_46d4:
    ld c, $00
    dec b
    ld [bc], a
    rst $18
    nop
    ld b, l
    cp b
    inc bc
    ld hl, sp+$00
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    ld b, a
    ccf
    dec b
    ld a, [bc]
    add b
    ld b, $e0
    nop
    ldh a, [rP1]
    ld sp, hl
    nop
    inc c
    ldh a, [$fa]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $20
    ldh [$c0], a
    pop hl
    sbc b
    ldh [$86], a
    nop
    ld [hl-], a
    ret nz

    ld e, [hl]
    and b
    ld a, a
    add b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ret z

    rst $30
    ret nz

    rst $38
    and c
    rst $38
    db $e3
    rst $38
    or $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rlca
    rst $20
    rra
    daa
    rst $18
    ld a, b
    add a
    call z, Call_069_4203
    db $ed
    rst $08
    ldh [$e6], a
    ldh [$e2], a
    ldh [$e5], a
    ldh [$f6], a
    ldh [$b4], a
    ld [c], a
    and $f3
    or $f3
    rst $38
    di
    ld [hl], l
    ei
    ld d, l
    ei
    rst $38
    ei
    db $fd
    ei
    ld [$2ffd], a
    ret nc

    rrca
    ldh a, [rP1]
    rra
    nop
    ccf
    inc bc
    rrca
    inc bc
    rra
    inc bc
    rra
    dec b

jr_069_476b:
    rra
    dec b
    ccf
    jr z, @-$1f

    pop de
    ld c, $e6
    rra
    ld a, [hl]
    rra
    ccf
    rst $38
    db $f4
    rst $38
    call nz, $99ff

jr_069_477d:
    rst $20
    adc l
    di
    call c, Call_000_1ce3
    db $e3
    inc e
    db $e3
    ld c, $f1
    adc d
    ld [hl], l
    add [hl]
    add hl, sp
    adc $31
    ld c, [hl]
    ld bc, $037c
    ld [hl], c
    rrca
    add sp, $1f
    db $db
    inc a
    or e
    ld a, h
    rst $38
    ld hl, sp-$15
    db $fc
    and a
    db $fc
    add c
    cp $db
    and $5f
    ldh [$3f], a
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    or e
    ld c, h
    jp $a73c


    ld a, b
    rst $00
    jr c, jr_069_476b

    ld a, c
    or c
    ld a, a
    rra
    rst $38
    rst $18
    ccf
    adc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    pop af
    cp $c4
    rst $38
    pop hl
    rst $38
    ld d, b
    cp c
    adc h
    ld a, h
    and $ff
    add c
    rst $08
    ld bc, $00ba
    ld a, b
    nop
    ld a, [c]
    nop
    rst $20
    nop
    rst $38
    ldh [$fe], a
    rst $38
    rst $38
    and [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    adc e
    ccf
    adc $39
    ld d, b
    jr c, jr_069_47f9

    jr nc, jr_069_477d

    ld [hl], b
    db $e3
    db $fc
    call Call_000_3bf0
    ret nz

    sbc a
    ldh [$e1], a

jr_069_47f9:
    cp $7d
    cp $06
    rst $38
    ld [hl], a
    rst $38
    sub c
    rrca
    adc c
    rlca
    adc c
    rlca
    call Call_069_7d03
    add e
    ld c, l
    di
    ld a, c
    sbc a
    ld a, a
    sbc a
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rla
    rla
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $cdcc
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    cp h
    cp a
    jr jr_069_4857

    ld [$000b], sp
    inc bc
    ld hl, sp-$05
    ret nz

    jp Jump_000_2320


    nop
    ld bc, $1110
    nop
    ld bc, $0202
    nop
    nop
    ld c, $ff
    cp $ff
    cp $ff
    ei

jr_069_4857:
    rst $38
    ld c, a
    cp a
    ld l, b
    sbc a
    or e
    inc c
    rst $38
    nop
    ld h, a
    sbc b
    dec sp
    call nz, $e41b
    ccf

jr_069_4867:
    ret nz

    ld h, $d9
    nop
    rst $38
    add b
    ld a, a
    sbc $21
    cp $01
    rst $38
    inc bc
    di
    rrca
    rst $00
    ccf
    jp $c23f


    ccf
    inc bc
    db $fc
    inc c
    di
    jr nz, @+$01

    ld [hl], h
    ei
    db $10
    rst $38
    jr nc, jr_069_4867

    db $e3
    rra
    jp $c33f


    ccf
    rst $28
    rra
    rst $08
    ccf
    ld c, a
    cp a
    rra
    rst $38
    ld e, a
    rst $38
    rst $18
    ld a, a
    rst $08
    ld a, a
    adc e
    ld [hl], a
    adc e
    ld [hl], a
    db $db
    daa
    db $db
    daa
    jp $e73f


    rra
    rst $20
    rra
    rst $20
    rra
    rst $00
    ccf
    rst $28
    rra
    db $d3
    ccf
    inc sp
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$10
    ld hl, sp-$03
    ldh a, [rOBP1]
    ldh a, [$ce]
    ld bc, $00c7
    ld b, c
    add b
    add b
    nop
    nop
    nop
    inc hl
    nop
    db $fd
    rst $38
    ld [hl], e
    rst $38
    ld e, h
    and e
    ld l, [hl]
    sub e
    inc b
    dec hl
    nop
    ldh [rNR10], a
    and b
    add b
    ldh [rLCDC], a
    ldh [$f0], a
    db $fc
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
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
    inc c
    db $10
    rrca
    nop
    rst $28
    ld b, b
    cp a
    add e
    rst $38
    rst $28
    rst $38
    rst $08

Call_069_4903:
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
    sbc a
    rst $38
    add e
    rst $38
    db $e4
    ei
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
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
    rst $38
    ld a, a
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    scf
    rst $30
    scf
    rst $30
    scf
    rst $30
    ld [hl], $f6
    scf
    rst $30
    scf
    rst $30
    scf
    rst $30
    ccf
    rst $38
    scf
    rst $30
    rra
    rst $38
    dec sp
    ei
    rra
    rst $38
    dec sp
    ld a, e
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    ld e, a
    ld a, a
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    ccf
    ccf
    ccf
    ccf
    ccf

Jump_069_497f:
    ccf
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    cpl
    rst $38
    rlca
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
    db $fc
    rst $38
    set 7, h
    add h
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$30], a
    ldh [$73], a
    db $fc
    inc bc
    rst $38
    adc b
    rst $30
    jp nz, Jump_000_183d

    rlca
    daa
    nop
    cp b
    nop
    cp d
    inc b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    push hl
    dec de
    ld h, e
    rra
    dec sp
    rra
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    inc e
    rst $38
    daa
    rst $18
    pop hl
    rra
    add b
    ld a, a
    jr nz, jr_069_49fb

    ld [$0707], sp
    nop
    ld h, c
    inc e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    daa
    rra
    ld b, a
    inc bc
    ld de, $4103
    ccf
    rst $08
    ccf
    adc $3d
    add sp, $3c
    inc a
    ld hl, sp-$0c

jr_069_49fb:
    ld hl, sp-$08
    ldh a, [$e8]
    ldh a, [rIE]
    rst $38

jr_069_4a02:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rra
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    add sp, -$01
    dec sp
    call nz, $c639
    db $ec
    inc bc
    ld [hl], b
    rrca
    cp c
    rrca
    ld c, b
    rra
    and a
    jr jr_069_4a02

    nop
    ld sp, hl
    add [hl]
    db $ed
    ld a, [c]
    ld [hl], c
    rst $38
    ld h, b
    rst $38
    rst $00
    jr c, jr_069_4a6c

    ld b, $0e
    nop
    call nz, Call_000_1038
    ld hl, sp+$2b
    ldh a, [$57]
    ldh [$df], a
    ldh [$2a], a
    ret nz

    ld a, b
    add b
    db $fc
    rst $38
    db $fd
    rst $38
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38

jr_069_4a6c:
    cp a
    rst $38
    scf
    rst $38
    ld a, [de]
    ld a, a
    xor a
    rra
    rst $10
    rst $28
    rst $30
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    ld hl, sp-$08
    db $f4
    ld hl, sp-$0f
    cp $f0
    rst $38
    ldh a, [rIE]
    or e
    ld a, h
    dec [hl]
    ld c, $0b
    rlca
    rlca
    nop
    ld b, $00
    jp $cbff


    rst $38
    set 7, a
    dec sp
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $fc
    cp a
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
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
    and $ff
    ld [c], a
    db $fd
    inc a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    inc bc
    cp $01
    sub a
    ld l, b
    or d

jr_069_4b17:
    ld a, l
    ld e, $ff
    nop
    rst $38
    sub c
    rst $28
    ld c, h
    rst $38
    rlca
    rst $38

jr_069_4b22:
    xor l
    ld [hl], e
    sbc a
    ld h, b
    rra
    ldh [$df], a
    ldh [$1f], a
    ldh [$f9], a
    ld b, $9f
    nop
    rst $38
    nop
    jr jr_069_4b3b

    ld a, [de]
    rlca
    jr nz, jr_069_4b17

    ld a, h
    add c
    ccf

jr_069_4b3b:
    ret nz

    add b
    ld a, a
    ld l, a
    rra
    ld a, e
    add a
    ldh [rIE], a
    db $fc
    rst $38
    cp $ff
    rst $00
    rst $38
    ret


    rst $30
    sbc [hl]
    pop hl
    and c
    ret nz

    and b
    ret nz

    db $e4
    add b
    ld c, c
    add b
    ld l, c
    add b
    db $fc
    inc bc
    jp Jump_000_383c


    nop
    jr nz, jr_069_4b60

jr_069_4b60:
    jr c, jr_069_4b22

    call z, $fff2
    di
    rra
    rlca
    rlca
    add hl, bc
    add c
    db $e4
    ld b, c
    or b
    ld [$fd3c], sp
    cp $df
    db $fc
    set 7, h
    set 7, h
    ret nz

    rst $38
    nop
    rst $38
    ld a, [hl+]
    db $fd
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld sp, hl
    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    add sp, -$09
    ld [c], a
    db $fd
    cp $ff
    rst $30
    rst $38
    db $eb
    rst $30
    ld [$ecf7], a
    rst $30
    add sp, -$09
    add sp, -$09
    cp $e1
    cp $e1
    cp $e1
    rst $18
    ldh [$ec], a
    di
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

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
    rst $38
    rst $38
    db $e3
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
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ei
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld h, d
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    ld bc, $60ff
    sbc a
    inc e
    db $e3
    pop af
    rst $38
    jr c, @+$01

    or a
    ld hl, sp-$10
    rst $38
    ld [hl], e
    db $fc
    ld b, l
    cp d
    ld [hl], a
    ld hl, sp-$04
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
    jp c, $c43f

    ccf
    cp h
    ld a, a
    ei
    ld a, h
    or $f9
    ld l, $f1
    ld hl, sp+$07
    nop
    rst $38
    ld a, $ff
    or d
    rst $38
    inc sp
    db $fc
    sbc a
    ldh [rLCDC], a
    add b
    rst $00
    add b
    ld a, a
    add b
    ld e, $e0
    ld a, h
    ldh [$9f], a
    ldh [$e5], a
    add d
    ld h, c
    add b
    ld h, b
    add b
    add b
    nop
    nop
    nop
    sbc a
    nop
    rst $20
    nop
    rrca
    ldh a, [rNR41]
    rra
    inc e
    inc bc
    inc bc
    nop
    ld a, a
    nop
    ld b, a
    jr c, jr_069_4cda

    cp $e0
    rst $38
    db $e3
    rst $38
    dec de
    rst $20
    ld c, e
    add b
    add b
    nop
    inc e
    db $e3
    inc e
    db $e3
    sbc l
    ld h, d
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld a, $ff
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
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and e
    rst $38
    ld h, [hl]
    ld sp, hl
    ld h, $f9
    ld c, $f1
    ld b, $f9
    xor e
    db $f4
    ld hl, $30fe
    rst $38
    ld [hl], b
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, b
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
    and a
    rst $38
    ld b, e
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    di
    rst $38
    rst $38
    rst $38

jr_069_4cda:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $38
    di
    rst $38
    add c
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    rst $38
    rst $38
    jp $40ff


    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    add h
    ld a, a
    sub [hl]
    ld a, a
    inc d
    rst $38
    dec c
    cp $c6
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld c, [hl]
    pop af
    ld e, $e1
    ld e, $e1
    ld e, a
    and b
    inc a
    jp $9b64


    ld [hl-], a
    call $817e
    rst $38
    nop
    cp $01
    rrca
    ldh a, [$a1]
    ld a, a
    db $fd
    inc bc
    db $fd
    inc bc
    add e
    rlca
    rrca
    rlca
    rrca
    rlca
    sub $0f
    pop hl
    ld e, $7d
    add b
    sbc h
    ld h, b
    ld [hl], h
    ld [$0ff6], sp
    ld [hl], b
    adc e
    ld b, $e1
    ld [de], a
    ldh [$5b], a
    ldh [$7e], a
    add b
    nop
    nop
    ld a, b
    nop
    db $d3
    inc a
    ld c, e
    ccf
    db $10
    rrca
    inc bc
    inc a
    ld e, b
    and b
    ld a, [bc]
    nop
    nop
    nop
    or a
    ld a, b
    sub e
    ld a, h
    adc d
    ld a, l
    call z, $f43f
    rrca
    jp nz, $013f

    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    push af
    ei
    db $e4
    ei
    and $f9
    add $f9
    and $f9
    add $f9
    call nz, $86fb
    ld sp, hl
    and d
    db $fd
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    jp hl


    rst $38
    db $ec
    rst $38
    add $ff
    add $ff
    push hl
    rst $38
    call $efff
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [$60ff], sp
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
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
    rra
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    add $ff
    ld [hl], b
    rst $38
    ld [hl-], a
    rst $38
    di
    rst $38
    ld a, $ff
    inc e
    rst $38
    ld c, b
    cp a
    add b
    rst $38
    call nz, $eeff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld [hl], h
    rst $38
    ld h, a
    rst $38
    di
    rst $38
    ld a, l
    jp nz, $807f

    sbc b
    rst $20
    push af
    cp $f9
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    add $00
    ld a, a
    nop
    inc c
    inc bc
    add hl, de
    ld b, $1d
    cp $f0
    cp $2d
    ldh a, [rSVBK]
    add c
    pop bc
    ld bc, $0103
    ld b, b
    inc bc
    ld b, c
    rlca
    push hl
    rra
    rst $10
    rst $28
    rlca
    rst $28
    add h
    ld a, b
    ret nc

    jr c, jr_069_4eb5

    db $10
    jr nz, jr_069_4e60

    add h
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld h, $ff
    inc b
    rst $38
    ld b, $ff
    ld c, $ff
    rst $38
    rst $38

jr_069_4e60:
    di
    rst $38
    rst $30
    rst $38
    pop hl
    rst $38
    inc bc
    rst $38
    sbc b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [$6af5], a
    push af
    db $10
    rst $28
    ld sp, $05cf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    inc l
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    inc e
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    cp $ff
    ccf
    rst $38
    rra
    rst $38
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld c, h
    rst $38
    jp $dfff


    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $18
    rst $38
    ld a, a

jr_069_4eb5:
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
    cp a
    rst $38
    sbc a
    rst $38
    ld d, a
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
    ld a, a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld bc, $1fff
    rst $38
    inc e
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    ld a, c
    rst $30
    ld h, e
    rst $38
    ld d, e
    rst $38
    jp $03ff


    rst $38
    ld b, $ff
    add b
    rst $38
    add e
    ld a, h
    rlca
    ld hl, sp-$55
    ld d, h
    rlca
    rst $38
    db $fc
    rst $38
    rst $30
    ld hl, sp-$49
    ld a, b
    sbc b
    ld [hl], b
    ld h, d
    ldh a, [$6e]
    ldh a, [$6d]
    ldh a, [$79]
    db $e4
    and h
    ld hl, sp-$40
    jr c, jr_069_4f6a

    ld b, b
    ldh a, [$7f]
    ld e, a
    rst $38
    sub a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld c, a
    cp a
    rst $08
    ccf
    dec bc
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $20
    rra
    ld bc, $0100
    nop
    ld bc, $0e00
    add hl, bc
    ld b, $01
    ld b, $01
    ld b, $01
    rlca
    ld bc, $0106
    ld c, $09
    ld c, $09
    adc $c9
    and $e1
    rst $00
    pop bc
    add $c1
    ld d, [hl]
    ld d, c

jr_069_4f6a:
    rlca
    ld bc, $0106
    rlca
    ld bc, $090e
    ld b, [hl]
    ld b, c
    xor $e9
    cp $f9
    rst $08
    ret


    rst $08
    ret


    rst $18
    reti


    ccf
    add hl, sp
    ld l, a
    ld l, c
    ld c, a
    ld c, c
    ld [hl], a
    ld [hl], c
    rra
    add hl, de
    ccf
    add hl, sp
    ccf
    add hl, sp
    ccf
    add hl, sp
    cp a
    cp c
    ccf
    add hl, sp
    cp $f9
    cp l
    cp e
    ld sp, hl
    rst $38
    db $fd
    ei
    db $fd
    ei
    ld a, l
    ld a, e
    add hl, de
    rra
    ld sp, hl
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    db $fd
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    ei
    ld sp, hl
    rst $38
    ei
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
    rst $38
    rst $38
    adc a
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
    rst $38
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    add sp, -$01
    pop af
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $3fff
    ret nz

    db $fc
    inc bc
    rst $00
    ccf
    ld a, a
    rst $38
    ret nz

    rst $38
    ld a, a
    add b
    ld a, [$be01]
    ld b, c
    cp h
    inc bc
    ld [hl], b
    rrca
    ld hl, sp+$07
    ld e, b
    rlca
    pop hl
    rra
    ld e, [hl]
    ld bc, $0033
    ld [hl], e
    nop
    dec de
    pop hl
    inc bc
    rst $38
    adc l
    rst $38
    di
    rst $38
    cp $ff
    or $ff
    xor $ff
    db $e4
    rst $38
    pop af
    rst $28
    ret nc

    rst $28
    ldh a, [$cf]
    db $f4
    rst $08
    call nz, $a8ff
    rst $18
    add b
    rst $38
    ld a, d
    sbc l
    sbc e
    inc a
    db $e3
    inc a
    rst $38
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $28
    rst $28
    rst $38
    rst $38
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
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    add $ff
    rrca
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    jr @+$01

    rra
    rst $38
    cp $ff
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    db $fd

jr_069_50c6:
    ld a, a
    ldh [$bf], a
    ret nz

    ld b, b
    cp a
    add $ff
    inc e
    rst $38
    ld h, b
    rst $38
    db $eb
    db $f4
    db $e3
    db $fc
    add [hl]
    rst $38
    ld b, h
    cp e
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld l, [hl]
    pop af
    sbc $e1
    rra
    ldh [$1f], a
    ldh [rNR31], a
    ldh [$3f], a
    ret nz

    or a
    ret nz

    dec a
    ret nz

    rlca
    ldh a, [$cf]
    jr nc, jr_069_50c6

    jr nc, jr_069_5140

    cp b
    add a
    ld a, b
    dec [hl]
    jp z, $ff00

    push bc
    dec sp
    push af
    ei
    push af
    ei
    or a
    cp e
    scf
    dec sp
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    ei
    rst $30
    ei
    rst $30
    rst $38
    di
    rst $30
    ei
    rst $30
    ei
    ei
    rst $30
    ei
    rst $30
    dec bc
    rst $30
    swap a
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    and $fe
    ld h, a
    ld a, a
    ld [c], a
    cp $f2
    cp $f7
    rst $38

jr_069_5140:
    rst $30
    rst $38
    rlca
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
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
    cp $ff
    cp $ff
    ld a, [$f9ff]
    rst $38
    ei
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $20
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rrca
    rst $38
    dec a
    rst $38
    db $10
    rst $38
    rrca
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld e, $ff
    inc e
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    ld bc, $f7ff
    rst $38
    ld b, $ff
    reti


    ccf
    pop bc
    ccf
    ld d, e
    cp a
    sbc a
    rst $38
    ld e, $ff
    ld e, $ff
    add h
    ld a, a
    pop hl
    rra
    add c
    ld a, a
    ld hl, sp-$79
    ret c

    rst $20
    add sp, -$09
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    sbc a
    ld a, a
    rst $08
    ccf
    db $e3
    rra
    rst $30
    rrca
    di
    rrca
    di
    rrca
    dec hl
    rst $10
    ld sp, hl
    rlca
    jp $c73f


    ccf
    ldh [$1f], a
    ld a, h
    add e
    rst $28
    ld sp, hl
    cp $f9
    ld a, [$fffd]
    db $fc
    ei
    db $fc
    ei
    db $fc
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    and a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
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
    scf
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
    rst $38
    cpl
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ld a, $ff
    cp h
    rst $38
    db $fd
    cp $fe
    rst $38
    db $fd
    cp $fd
    cp $10
    rst $38
    ld a, [bc]
    push af
    inc b
    ei
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    rst $20
    rst $38
    sbc c
    and $73
    adc h
    inc de
    db $ec
    ld [de], a
    db $ec
    rra
    db $e4
    inc d
    rst $28
    dec b
    cp $17
    db $ec
    inc sp
    call z, $8e71
    ld [hl], b
    adc a
    ld sp, $3cce
    adc $2e
    rst $18
    dec bc
    db $fc
    rst $38
    db $fc
    ld sp, hl
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    rst $38
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    cp $fc
    cp $fd
    cp $7c
    cp $3d
    cp $fd
    cp $dd
    and $d1
    xor $d9
    cp $d9
    cp $fd
    ld a, [$fa4d]
    ld bc, $64fe
    cp a
    ld h, l
    cp a
    ld e, h
    xor a
    ld e, l
    xor [hl]
    ld e, a
    xor [hl]
    ld b, a
    cp [hl]
    ld b, $ff
    ld b, a
    cp [hl]
    add $bf
    ld b, $ff
    ld b, $ff
    inc hl
    rst $18
    db $e3
    ld e, a
    ld a, [c]
    ld c, a
    db $d3
    ld l, [hl]
    rst $10
    ld l, d
    dec d
    ld [$fe89], a
    or a
    cp $a1
    cp $8f
    ldh a, [$ef]
    ldh a, [$d6]
    ld sp, hl
    pop de
    cp $e3
    cp $c5
    cp $95
    cp $81
    cp $a1
    sbc $d3
    db $fc
    add a
    db $fc
    rst $00
    db $fc
    sub [hl]
    db $fd
    ld e, $f5
    ld a, [hl+]
    push af
    adc a
    ldh a, [$a7]
    ld hl, sp-$1a
    ld hl, sp-$15
    db $fc
    ret


    cp $8d
    ld a, [$ea91]
    sbc e
    ldh [$09], a
    or $18
    or $11
    ld a, [c]
    inc sp
    ret nc

    dec hl
    ret nc

    push hl
    ret c

    or e
    call z, $d9a6
    sub $f9
    or $f9
    or h
    ei
    db $e4
    ei
    db $e3
    db $fd
    sbc $ed
    adc e
    db $fd
    cp [hl]
    ld sp, hl
    db $76
    ld sp, hl
    ld c, $f1
    cp [hl]
    pop hl
    sbc a
    pop hl
    rst $18
    and c
    call c, $79a3
    add a
    ld [hl], c
    adc a
    ld [hl], c
    adc a
    ld [hl], a
    adc a
    scf
    rst $08
    rla
    rst $28
    ld b, a
    cp a
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ld c, $ff
    sbc d
    rst $38
    jp c, $cdff

    cp $cf
    cp $47
    cp $77
    cp $d7
    cp $df
    or $8d
    or $8c
    rst $30
    sub [hl]
    rst $38
    ld b, $ff
    dec b
    rst $38
    inc h
    rst $38
    dec h
    rst $38
    dec b
    rst $38
    add c
    rst $38
    xor h
    rst $38
    inc e
    rst $28
    sbc d
    ld l, l
    di
    ld c, h
    rst $38
    ret nz

    ld a, $c1
    sbc [hl]
    ld h, c
    ld e, a
    and c
    rra

jr_069_53ad:
    pop hl
    add hl, de
    ld h, e
    db $dd
    inc hl
    adc $33
    adc d
    ld [hl], a
    sbc d
    ld [hl], a
    add hl, de
    db $76
    ld c, l
    ld [hl], $0b
    inc [hl]
    inc l
    rla
    and c
    ld e, $c6
    rst $38
    inc l
    rst $18
    ld d, a
    ld c, $04
    rst $08
    add c
    ld c, [hl]
    dec bc
    call z, $8c5b
    inc bc
    jp $c101


    nop
    ret nz

    ld b, d
    sub d
    ld bc, $00c1
    ldh [rSB], a
    pop hl
    ld c, b
    db $e4
    ld h, $fc
    ld e, h

jr_069_53e3:
    db $fd
    inc d
    db $fd
    inc [hl]
    db $dd
    sub l
    db $fc
    sub a
    db $fc
    sub h
    db $fc
    sbc h
    db $fc
    ld [c], a
    inc e
    db $e4
    ld a, [de]
    or a
    ld c, d
    or a
    ld c, e
    and l
    ld e, e
    add l
    ld a, e
    pop bc
    ld a, a
    db $d3
    ld a, a
    sub d
    ld a, l
    bit 7, h
    ld d, a
    ld hl, sp-$75
    ld [hl], b
    call z, $a433
    ld d, e
    or e
    ld b, b
    adc h
    ld b, b
    ld b, b
    rst $10
    add c
    jp Jump_000_0191


    ld bc, $0013
    inc de
    jr nz, jr_069_53ad

    add b
    ei
    inc bc
    ld sp, hl
    jr nz, jr_069_53e3

    and d
    pop bc
    inc de
    pop bc
    adc [hl]
    ld [hl], c
    ld a, h
    rst $38
    db $fd
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, [c]
    ld a, a
    push hl

jr_069_543b:
    ld a, d
    ld c, e
    ldh a, [$df]
    ldh [$d1], a
    xor $d6
    add sp, -$0f
    adc $b2
    call $8d73
    pop af
    rrca
    ret nc

    rrca
    db $d3
    ld c, $0e
    jp $eb06


    pop bc
    xor $e5
    ld a, [$fee3]
    or $ff
    db $f4
    cp $ee
    db $fc
    sub b
    db $ec
    or h
    ret z

jr_069_5464:
    or b
    ret z

    ld a, b
    ret nz

    ld [hl], b
    ret nz

    db $10
    ldh [$d8], a
    ldh [$d8], a
    ldh [$58], a
    ldh [$d8], a
    ld h, b
    sbc b
    ld h, b
    ret c

    jr nz, jr_069_543b

    ld sp, $31cb
    ld c, l
    inc sp
    db $ed
    inc sp
    adc $33
    xor b
    ld d, a
    sub $39
    add [hl]
    ld a, c
    sub $39
    pop de
    add hl, sp
    sbc e
    ld [hl], c
    ld c, a
    or c
    ld d, c
    and e
    dec d
    db $e3
    dec sp
    pop bc
    dec l
    jp $c3b9


    ld sp, hl
    add e
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld [hl], e
    add a
    cp $87
    cp [hl]
    rst $00
    xor h
    rst $00
    ld l, a
    adc [hl]
    ld a, [hl]
    adc a
    ld l, [hl]
    sbc a
    cp $9f
    ld a, $df
    ld a, $df
    ld e, l
    cp $7d
    cp $bd
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    db $fc
    ld a, $df
    inc a
    ret c

    inc a
    jp c, $de3c

    jr c, jr_069_5464

    ld a, b
    sub a
    ld a, b
    nop
    sbc a
    nop
    rst $08
    ld [bc], a
    ld c, l
    jr z, jr_069_54df

    ld a, [bc]
    dec h
    ld d, e
    inc h
    jp nz, $0625

jr_069_54df:
    ld h, c
    add $61
    ld b, e
    pop hl
    db $e3
    pop hl
    ret nz

    pop hl
    ld h, d
    pop bc
    and b
    ld b, e
    ld [hl+], a
    ld b, c
    ld d, d
    ld hl, $6031
    xor c
    ld [hl], b
    and b
    ld a, h
    inc a
    db $fc
    ldh a, [$fc]
    inc a
    db $fc
    cp b
    db $fc
    sbc h
    ld hl, sp-$48
    ld hl, sp-$2f
    ld hl, sp-$07
    call c, $dc33
    inc [hl]
    jp nc, $9064

    ld d, h
    add b
    nop
    db $e4
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    add b
    db $fc
    add b
    cp h
    ret nz

    call c, $ec80
    add b
    xor h
    ret nz

    cp l
    ret nz

    adc l
    ldh a, [$ed]
    ldh a, [$9e]
    ld h, c
    sub e
    ld l, c
    sbc c
    db $e3
    rst $00
    ei
    xor $d3
    ld [$fed7], a
    jp $e3de


    rst $18
    ld [c], a
    ld e, a
    ld [c], a
    call nc, $d163
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld h, h
    and $74
    db $ec
    jr nz, jr_069_55c6

    ld a, h
    jr c, @+$3a

    ld e, [hl]
    ld l, b
    inc a
    ld b, b
    jr c, jr_069_5582

    ld a, b
    ld sp, $7159
    sbc e
    inc de
    ldh a, [rSCX]
    jr nc, jr_069_557e

    ld h, a
    ld h, $62
    ld h, [hl]
    ret z

    ld d, h
    xor $72
    db $ec
    ld h, d
    db $fc
    ld b, b
    db $fc
    add $78
    add h
    ld a, b
    add l
    ld a, b
    add a
    ld a, b
    ld [$1571], sp
    ldh [$09], a
    ld [hl], a
    inc hl
    ld b, c
    ld bc, $83f3
    di
    add e
    rst $20

jr_069_557e:
    jp $d8e7


    rst $00

jr_069_5582:
    ldh [$e6], a
    ldh [$f6], a
    ldh a, [$fe]
    db $fc
    cp $fc
    cp $fe
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $20
    sub a
    pop hl
    pop bc
    di
    pop af
    db $e3
    pop hl
    sub e
    pop bc
    add e
    ldh [$83], a
    ret nz

    add c
    pop bc
    add b
    ret nz

    add e
    ld b, e
    sub b
    ld b, c
    add b
    add b
    ld bc, $0102
    dec b
    inc bc
    dec c
    inc bc
    ld b, e
    rrca
    db $d3
    rrca
    ld [bc], a
    rra
    and a
    rra
    ld c, a
    ccf

jr_069_55c6:
    ld e, l
    ccf
    rra
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    ld hl, sp-$10
    ld hl, sp-$0f
    ld hl, sp+$71
    ld hl, sp-$0a
    ld a, c
    db $10
    rst $38
    ld [hl], $ff
    ld a, h
    cp $77
    ld hl, sp+$38
    ldh a, [$98]
    ldh a, [$fc]
    ldh a, [$38]
    ldh a, [$f0]
    ld hl, sp-$40
    ld hl, sp-$08
    ldh [$f5], a
    ld hl, sp-$13
    ldh a, [$eb]
    ldh a, [$7d]
    ldh [$f5], a
    ldh [$c6], a
    pop hl
    call z, $dce3
    db $e3
    ldh [$c3], a
    pop bc
    jp $c381


    inc bc
    pop hl
    nop
    ld h, e
    inc bc
    ld h, h
    ld h, e
    inc h
    inc bc
    ld h, h
    inc b
    ld l, b
    dec b
    ld l, b
    rrca
    ld h, b
    rrca
    ld h, c
    dec c
    ld b, e
    rrca
    ld b, e
    rlca
    ld c, e
    rlca
    rst $18
    rra
    add a
    rra
    and l
    ld [de], a
    and c
    scf
    add b
    inc a
    push bc
    dec [hl]
    db $ed
    add hl, sp
    xor h
    cp e
    ld l, h
    ld a, a
    add hl, hl
    ld [hl], h
    dec hl
    rra
    ld h, b
    ld b, e
    add sp, $43
    ldh a, [rSTAT]
    ld [hl], b
    ld b, c
    ld l, b
    ld sp, hl
    ld h, b
    ld h, c
    pop hl
    ld b, c
    pop af
    ld [hl], c
    add c
    ld b, c
    di
    ld [hl], c
    jp Jump_069_43e1


    and e
    jp $a3c3


    daa
    jp $8347


    inc bc
    add a
    ld [bc], a
    rlca
    inc c
    rlca
    ld [$0707], sp
    ld [$0c12], sp
    ld c, $3e
    inc e
    ld a, $1c
    inc a
    inc a
    dec e
    inc a
    ld a, h

jr_069_566a:
    ld a, h
    cp h
    jr nz, jr_069_566a

    ld l, b
    db $fc
    ld [$80f8], sp
    ld hl, sp-$10
    adc b
    add b
    ld hl, sp-$80
    pop de
    add b
    or c
    nop
    sub b
    nop
    add b
    nop
    add d
    add b
    ld b, d
    nop
    add h
    nop
    ld b, b
    nop
    rlc d
    add h
    inc b
    add [hl]
    inc b
    adc [hl]
    sbc e
    inc b
    pop de
    ld c, $f2
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ld h, e
    sbc a
    adc e
    rst $38
    adc e
    rst $38
    xor l
    rst $38
    ld c, l
    rst $38
    pop bc
    rst $38
    ldh [$fb], a
    ld b, d
    rst $38
    db $ec
    rst $38
    ld l, c
    cp $65
    ld a, [$fe60]
    add sp, -$02
    add b
    cp $fd
    cp $fc
    cp $fb
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    ld l, a
    db $fc
    push hl
    cp $6d
    or $b6
    db $fc
    cp $fc
    pop af
    cp $fd
    cp $fd
    cp $3e
    inc b
    inc e
    inc b
    call z, $b83c
    ld a, h
    ld a, b
    db $fc
    call nc, Call_069_40f8
    add b
    add h
    nop
    inc c
    nop
    adc [hl]
    nop
    rrca
    nop
    inc d
    nop
    ld h, [hl]
    nop
    ld h, h
    nop
    ld h, $00
    ld [hl], a
    nop
    ld d, a
    jr nz, jr_069_570d

    ld h, b
    db $ec
    ld [hl], b
    or $78
    ld [hl], e
    inc a
    ldh a, [$3f]
    db $d3
    ld a, $fe
    inc e
    ld a, l
    cp h
    add sp, -$44
    ld sp, hl
    ldh [$f9], a
    ld h, b
    ld hl, sp+$41
    add sp, $40
    jp hl


jr_069_570d:
    ld b, b
    ld l, e
    add b
    db $eb
    add c
    db $db
    add e
    rst $38
    add d
    rst $38
    add d
    rst $08
    add b
    ld c, $84
    db $ec
    ld d, $fe
    inc b
    adc a
    ret nz

    adc $80
    sbc $80
    rst $38
    add b
    rst $38
    ret nz

    ldh a, [$c0]
    or c
    ret nz

    rst $38
    add b
    add b
    rst $38
    add b
    rst $38
    inc bc
    cp $c5
    ld a, [$faf5]
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    and $f8
    rst $00
    ld hl, sp-$3c
    ld hl, sp-$38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$ec], a
    ldh a, [$ea]
    ldh a, [$cc]
    ldh a, [$c8]
    ldh a, [$ac]
    ldh a, [rNR32]
    ldh [rTMA], a
    ld hl, sp+$0f
    ldh a, [$2e]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$bf], a
    ld b, b
    dec sp
    ret nz

    dec sp
    ret nz

    adc [hl]
    ld b, c
    ld e, [hl]
    add c
    ld [hl], d
    add c
    ld [hl], h
    add e
    scf
    add e
    ld a, [hl-]
    add a
    ld a, e
    add a
    xor $07
    or [hl]
    rrca
    db $db
    rrca
    jp nz, $e31f

    ld e, $80
    ld a, $cf
    inc a
    rst $00
    inc a
    ret


    inc a
    sbc e

jr_069_5789:
    ld l, h
    ld a, [bc]
    db $fc
    dec b
    ld a, [$709f]
    rra
    ldh a, [$6f]
    or b
    ccf
    ldh [$7f], a
    ret nz

    db $76
    ret nz

    ld d, e
    call nz, $c0bd
    db $f4
    add d
    nop
    add b
    ld c, b
    add b
    ld [hl], b
    add b
    ret nz

    ld h, b
    ld c, d
    ret nz

    add sp, -$40
    ld b, b
    ldh [$f7], a
    ld h, b
    rst $10
    ld l, b
    xor $70
    cp $70
    ld l, $70
    ld [hl], h
    ldh [$0d], a
    ldh a, [rNR13]
    ldh [rOBP0], a
    ldh a, [rOCPS]
    ldh a, [$6c]
    ldh a, [rSCY]
    ld hl, sp-$1c
    ld a, b
    ld sp, hl
    ld a, h
    cp $7c
    sbc l
    ld a, [hl]
    sbc [hl]
    ld a, a
    rla
    inc bc
    rrca
    inc bc
    rst $10
    ld [bc], a
    rrca
    nop
    add a
    ld [bc], a
    adc a
    inc bc
    adc a
    nop
    adc a
    ld [bc], a

Jump_069_57e0:
    ld a, l
    add d
    ld a, b
    add a
    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    jr nz, jr_069_5789

jr_069_57ea:
    nop
    cp a
    call c, Call_000_1423
    db $eb

jr_069_57f0:
    inc bc
    jr nc, jr_069_5806

    jr nz, jr_069_57f8

    call nc, $9403

jr_069_57f8:
    nop
    ccf
    jr nc, jr_069_583b

    inc e
    ld a, $bc
    ld a, $9e
    ccf
    sbc [hl]
    ccf
    sbc [hl]
    ccf

jr_069_5806:
    sbc a
    ccf
    ld d, a
    cp a
    inc b
    cp a
    dec d
    xor a
    adc e
    scf
    ld a, e
    add a
    dec bc
    rst $20
    adc [hl]

jr_069_5815:
    ld h, e
    ld b, l
    ld [c], a
    push hl
    ld b, d
    or a
    ld b, b
    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld d, b
    ldh [$58], a
    ldh [rOBP0], a
    ldh [$38], a
    ret nz

    jr nc, jr_069_57ea

    ld a, b
    ret nz

    db $10
    ret nz

    jr c, jr_069_57f0

    ld a, b
    add b
    jp hl


    nop
    pop hl
    nop
    ld d, c
    nop
    ld de, $8700

jr_069_583b:
    nop
    add d
    ld bc, $0102
    nop
    inc bc
    ld b, l
    ld [bc], a
    ld bc, $0502
    ld [bc], a
    rlca
    nop
    ld a, [hl+]
    dec b
    ld a, [hl+]
    dec b
    ld c, c
    dec b
    ld h, a
    add hl, bc
    dec c
    inc bc
    sub a
    dec bc
    add a
    dec de
    xor e
    rla
    adc e
    scf
    rst $28
    scf
    daa
    ld a, a
    rst $30
    rrca
    cp a
    ld c, a
    ld l, a
    adc a
    ld l, a
    sbc a
    ld [de], a
    rst $18
    sub b
    db $ec
    jr jr_069_5815

    and h
    rra
    ld l, a
    rst $18
    rra
    rst $08
    ld e, a
    adc a
    sbc e
    add a
    sbc b

jr_069_5879:
    inc bc
    cp l
    nop
    inc [hl]
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    cp b
    ld b, b
    db $fc
    nop
    db $fc
    nop
    ccf
    ld b, b
    and l
    ld b, d
    ret c

    ld [hl+], a
    ld a, [hl-]
    nop
    ld c, c
    nop
    ld c, $c0
    rlca
    ldh a, [$ed]
    nop
    rst $18
    nop
    adc l
    nop
    rst $30
    nop
    ld a, [hl]
    ld bc, $0cf2
    rst $20
    jr jr_069_5879

    add hl, hl
    ld a, [$fe01]
    ld bc, $04fb
    db $fc
    inc bc
    ld hl, sp+$07
    nop
    adc e
    nop
    adc l
    inc b
    ld c, $04
    adc a
    add b
    rrca
    ld [bc], a
    ld b, a
    nop
    rlca
    ld [bc], a
    rlca
    inc bc
    nop
    ld b, e
    nop
    ld [bc], a
    ld bc, $0003
    nop
    ld bc, $0102
    ld c, b
    ld bc, $0100
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
    jr jr_069_5903

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_069_5913

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_069_5923

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_069_5933

    ld [hl-], a

jr_069_5903:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_069_5943

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_069_5913:
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
    ld d, c

jr_069_5923:
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
    ld h, c

jr_069_5933:
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
    ld l, a
    ld [hl], b
    ld [hl], c

jr_069_5943:
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
    inc d
    dec d
    ld d, $17
    jr jr_069_5a04

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_069_5a14

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_069_5a04:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $04
    inc b
    inc b
    inc b

jr_069_5a14:
    inc b
    nop
    inc b
    nop
    inc b
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
    ld bc, HeaderLogo
    inc b
    inc b
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0404
    nop
    nop
    inc b
    nop
    ld bc, $0001
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0404
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
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0400
    inc b
    nop
    inc b
    ld bc, $0401
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
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
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
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
    inc b
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
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0400
    nop
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
    ld [$0c0c], sp
    ld [$0c08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    ld [$0c08], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp

jr_069_5b41:
    ld [$0808], sp
    ld [$0c0c], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    ld [$00f6], sp
    ld b, h
    nop
    ld b, b
    nop
    inc b
    inc bc
    add a
    inc bc
    rst $00
    inc bc
    push de
    inc bc
    db $fd
    inc bc
    add e
    ld a, a
    ld [hl], $cb
    db $fd
    ld [bc], a
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rrca
    ldh a, [$f3]
    db $fc
    nop
    rst $38
    xor b
    ld d, a
    dec [hl]
    jp nz, $8374

    jr nz, jr_069_5b41

    ld d, b
    rst $00
    ld b, a
    jp $4387


    db $e4
    ld b, e
    and b
    ld b, a
    ld h, $81
    ld b, [hl]
    add c
    add $00
    ret nz

    inc b
    ld h, b

jr_069_5b8d:
    inc b
    db $e4
    nop
    jp nz, $d204

    inc b
    and b
    inc b
    db $fc
    nop
    inc a
    nop
    and $1c
    rra
    cp $fc
    cp $fc
    cp $ec
    cp $dc
    cp $3c

jr_069_5ba7:
    rst $38
    cp $ff
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    sub b
    add h
    ei
    add l
    ld a, [$c2bd]
    ld b, l
    add d
    ld c, [hl]
    add c
    adc l
    ld [bc], a
    ld sp, hl
    ld [bc], a
    jr jr_069_5ba7

    nop
    rst $00
    inc bc
    rst $30
    inc bc
    ld [hl], a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop hl
    pop af
    pop hl
    ei
    rst $28
    pop af
    rst $30
    jp hl


    jp $39fd


    rst $38
    dec l
    rst $38
    ld [hl], e
    rst $38
    ld [hl], d
    rst $38
    jr nz, @+$68

    nop
    ld l, $04
    xor a
    ld [$187f], sp
    cp [hl]
    ld [$00f8], sp
    sub b
    nop
    add b
    inc c
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, b
    cp a
    sbc a
    ldh [$fc], a
    add e
    rst $38
    inc bc
    ld a, [hl]
    add e
    jr c, jr_069_5b8d

    ld a, h
    add e
    ld [hl], h
    adc e
    push af
    adc e
    jp $c7bf


    cp a
    rst $00
    cp a
    cp a
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    ld h, d
    rst $38
    ld [c], a
    rst $38
    ld a, [$c8ff]
    rst $38
    ret z

    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    adc d
    push af
    add b
    rst $38
    add e
    db $fc
    add c
    cp $83
    db $fc
    add c
    rst $38
    db $e3
    rst $38
    adc $ff
    db $fc
    rst $38
    db $fd
    cp $fc
    cp $38
    db $fc
    ld [hl], b
    db $fc
    ld a, b
    ld hl, sp+$78
    db $fd
    rst $30
    rst $38
    rst $00
    rst $20
    rlca
    adc a
    ld [bc], a
    inc sp
    inc bc
    inc bc
    ld [bc], a
    add e
    add c
    ld [bc], a
    add c
    ld [c], a
    add l
    ld a, [c]
    adc e
    call nc, $ec03
    rrca
    ldh [rIF], a
    jr nc, jr_069_5c6c

    jr c, @+$05

    ld a, h
    ld bc, $0676
    ld l, b

jr_069_5c6c:
    inc b
    ld a, e
    ld b, $79
    inc bc
    db $fc
    rlca
    ld hl, sp+$0c
    ld h, e
    nop
    ei
    nop
    rst $38
    ldh [rIE], a
    di
    rst $38
    adc a
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    jr nz, jr_069_5ca5

    jr nz, jr_069_5ca7

    nop
    rra
    nop
    rra
    ld hl, $211e
    ld e, $3f
    ld a, $1c
    ld a, $4c
    ld a, $4c
    inc a
    call z, $b038
    ld e, b
    inc e
    ld hl, sp+$3a
    call c, Call_000_1cea
    adc h
    ld a, a
    rst $00

jr_069_5ca5:
    jr c, @-$46

jr_069_5ca7:
    nop
    and b
    nop
    ld b, b
    add b
    add b
    ret nz

    nop
    ret nz

    ld [hl], $c9
    and $09
    db $ec
    inc bc
    db $e4
    dec bc
    and $09
    and $09
    xor $01
    xor [hl]
    ld b, c
    ld [$c605], a
    dec l
    ld d, a
    xor h
    ld e, c
    and [hl]
    sbc l
    ld [c], a
    push af
    ld [c], a
    db $ed
    ld a, [c]
    ld sp, hl
    cp $fe
    ld a, [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    sbc a
    nop
    cp e
    ld bc, $90e1
    db $e3
    sbc b
    db $e3
    reti


    dec e
    pop bc
    ld e, l
    pop bc
    db $dd
    jp $c319


    dec de
    add e
    dec bc
    ld h, a
    inc b
    adc a
    add hl, bc
    adc [hl]
    add b
    rst $28
    and a

jr_069_5cf3:
    ld hl, sp-$31
    ldh a, [$ad]
    ldh a, [$f1]
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp-$71
    ldh a, [$ad]
    ldh a, [rIF]
    ldh a, [rNR13]
    db $fc
    inc de
    db $fc
    sub d
    db $fd
    call c, $fdff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38

jr_069_5d20:
    ld a, $ff
    cp $3f
    cp $3f
    sbc $3f
    sbc $3f
    sbc $3f
    rst $18
    ccf
    ld e, a
    cp a
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $10
    rst $38
    adc a
    rst $30
    ld b, [hl]
    cp c
    call z, $d933
    daa
    rrca
    ld e, a
    rra
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ccf
    ret nz

    db $fd
    nop
    ld a, l
    add b
    rst $38
    nop
    cp $00
    and $00
    ld h, b
    add b
    jr nc, jr_069_5d20

    ld a, h
    add b
    ld a, $c0
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIE]
    nop
    dec sp
    ret nz

    rrca
    ldh a, [$e0]
    jr jr_069_5cf3

    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    pop af
    ccf
    ret nz

    ld c, $81
    add [hl]
    nop
    add [hl]
    nop
    and [hl]

jr_069_5d89:
    nop
    inc bc

jr_069_5d8b:
    nop
    rlca
    nop
    ld b, $00
    ld de, $210e
    ld e, $1d
    ld [bc], a
    inc b
    ld [bc], a
    ld b, $00
    ld b, $00
    ld b, $00
    ld a, [bc]
    inc b
    db $fd
    ld b, $f0
    rst $38
    ret


    jr nc, jr_069_5d8b

    jr jr_069_5d89

    inc e
    and c
    ld e, $d0
    rrca
    di
    inc c
    ld de, $f100
    nop
    ret nz

    db $10
    ld a, [$fa00]
    nop
    ei
    nop
    db $fc
    nop
    cp $00
    ld a, $c0
    dec [hl]
    jp nz, Jump_069_42a1

    and h
    ld b, e
    and b
    ld b, e
    ld h, b
    inc bc
    ld hl, $1142
    ld h, d
    adc $73
    or [hl]
    ld h, e
    sub h
    ld h, e
    adc h
    ld [hl], e
    adc c
    db $76
    xor c
    db $76
    and a
    ld a, h
    or l
    ld l, [hl]
    nop
    ld de, $0800
    inc c
    adc a
    sbc a
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld a, e
    db $fd
    ld a, a
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    ld a, a
    ld hl, sp+$7e
    ld sp, hl
    db $f4
    ld a, c

jr_069_5df8:
    push af
    ld a, b

jr_069_5dfa:
    cp h
    ld a, b
    or b
    ld a, b
    inc sp
    ld a, b
    db $f4
    jr c, jr_069_5dfa

    jr c, jr_069_5df8

    jr c, jr_069_5e3e

    ld hl, sp+$36
    ld sp, hl
    ld [hl], $f9
    ld [hl], d
    db $fd
    ld hl, sp-$01
    ld a, h
    rst $38
    ld l, $fd
    cp l
    ld a, a
    rst $38
    ccf
    sbc l
    ld a, a
    sbc [hl]
    ld a, a
    xor h
    ld a, a
    xor $3f
    ld d, a
    cp a
    ld c, l
    cp a
    push bc
    ccf
    jp Jump_069_6e3f


    sbc a
    ld l, h
    sbc a
    ld c, h
    cp h
    nop
    or $a4
    ldh a, [$c3]
    ldh [$b0], a
    rst $00
    add a
    rst $08
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff

jr_069_5e3e:
    ldh [rIE], a
    adc b
    rst $30
    add e
    rst $38
    add $ff
    ret nz

    rst $38
    ret z

    rst $38
    db $ec
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld b, h
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    add d
    nop
    ret nc

    nop
    db $fc
    nop
    db $fc
    nop

jr_069_5e6e:
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld [hl-], a
    nop
    ret nz

    nop
    jr jr_069_5e86

jr_069_5e86:
    ld [bc], a
    nop
    nop
    nop
    ld c, $00
    inc a
    nop
    inc a
    nop
    ld e, b
    nop
    ld [$1800], sp
    nop
    add b
    nop
    ld b, b
    nop
    ld e, b
    nop
    ld e, c
    nop
    ld e, e
    jr nz, jr_069_5f10

    db $10
    ld a, a
    nop
    rst $08
    jr nc, jr_069_5eb1

    ld [hl], l
    ld h, b
    rra
    ld c, $00
    rrca
    nop
    rrca
    nop
    sbc c

jr_069_5eb1:
    ld b, $88
    rla
    add b
    rra
    sub h
    dec bc
    inc b
    dec de
    inc de
    inc c
    ld bc, $171e
    ld [$1f2b], sp
    dec hl
    rra
    xor a
    rra
    xor a
    rra
    xor a
    rra
    pop bc
    ld e, $c4
    jr jr_069_5e6e

    ld [$0897], sp
    db $e3
    inc c
    db $d3
    inc c
    di
    inc c
    adc h
    ld a, a
    cp l
    ld a, [hl]
    cp a
    ld a, [hl]
    rst $38
    ld a, a
    dec e
    ld a, a
    ld a, l
    ld a, a
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fd
    rst $38
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, e
    db $fc
    inc a
    rst $38
    inc a
    rst $38
    ei
    ld a, a
    ei
    ld a, a
    cp [hl]
    ld a, a
    ld a, $ff
    ld a, b
    rst $38
    ld l, c
    or $7d
    ld [c], a
    ld a, l
    ld [c], a
    inc e
    db $e3
    rra
    pop hl
    xor c
    push af

jr_069_5f10:
    ld e, a
    and c
    ld sp, $7bef
    db $ed

jr_069_5f16:
    ld [hl], c
    rst $28
    ld h, b
    rst $38
    ld h, e
    db $fd
    ldh a, [rIE]
    ldh [$fe], a
    jp nz, $81fe

    ret nc

    rlca
    ldh [rTAC], a
    ret nz

    ld b, b
    ldh [$30], a
    ld sp, hl
    nop
    dec de
    db $10
    inc c
    dec c
    nop
    add b

Call_069_5f33:
    jr nz, jr_069_5f37

    rst $38
    nop

jr_069_5f37:
    sbc [hl]
    nop
    ldh [$f7], a
    ld hl, sp+$79
    ld a, h
    ld a, $ff
    rst $08
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, jr_069_5fcb

    dec sp
    db $fc
    ld a, [hl+]
    pop bc
    nop
    ret nz

    jr nz, jr_069_5f16

    ld [hl], b
    add b
    db $10
    add b
    inc c
    add b
    adc d
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
    jr nz, jr_069_5f6e

jr_069_5f6e:
    nop
    nop
    jr nz, jr_069_5f72

jr_069_5f72:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop hl
    nop
    jp $f700


    nop
    rst $38
    nop
    rst $38
    nop
    ld b, a
    nop
    ld b, c
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, d
    nop
    adc e
    ld [hl], b
    adc $30
    or $00
    ld h, $d0
    ld [hl], $c0
    inc b

jr_069_5fa5:
    ldh [$2c], a
    ret nz

    dec h
    ret nz

    add hl, bc
    ld b, $31
    inc c
    sbc l
    nop
    ld bc, $0300
    add b
    inc b
    add b
    nop
    add b
    nop
    add b
    ld d, b
    add b
    ld c, [hl]
    sub b
    dec c
    ret nc

    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, jr_069_5fa5

    inc l
    db $d3
    ld h, d
    add c
    inc bc

jr_069_5fcb:
    nop
    ld a, $00
    ccf
    nop
    dec [hl]
    ld [$304f], sp
    db $e4
    dec de
    cp a
    ld b, b
    ld l, $40
    sbc l
    ld h, b
    db $76
    pop hl
    adc c
    rst $30
    ld bc, $48f7
    or a
    inc hl
    sbc h
    ld h, h
    sbc a
    ld c, l
    cp [hl]
    ld e, h
    and a
    add hl, de
    rst $20
    ld sp, $1bef
    rst $20
    inc de
    rst $28
    inc de
    rst $28
    daa
    rst $18
    xor a
    rst $18
    and a
    sbc a
    or e
    rst $08
    or a
    swap h
    res 3, h
    ld h, e
    ld a, h
    add e
    cp $03
    ei
    rlca
    inc sp

jr_069_600b:
    rst $08
    ld [hl], d
    adc a
    db $76
    adc d
    ld [$fbba], sp
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    ld a, [$02ff]
    rlca
    ld hl, sp+$02
    ld e, a
    nop
    ei
    nop
    rst $08
    jr nc, jr_069_600b

    ld e, $9d
    ld c, $7f
    add [hl]
    pop bc
    rst $38
    ld [bc], a
    db $fd
    push hl
    ld a, [de]
    jr @-$17

    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld l, $df
    rst $30
    rrca
    rra
    rlca
    ld c, a
    add a
    db $db
    jp $f1f4


    nop
    ldh a, [rP1]
    rst $30
    ld b, b
    ei
    ld bc, $20ef
    rst $28
    or l
    ld l, d
    inc c
    nop
    adc b
    nop
    and d
    nop
    ld b, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    rst $08
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, b
    add a
    ld [hl], b
    adc a
    rrca
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    scf
    nop
    dec [hl]
    nop
    or c
    nop
    jr nz, jr_069_6090

jr_069_6090:
    inc h
    nop

jr_069_6092:
    xor h
    nop
    xor h
    nop
    cp h
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld a, [c]
    dec c
    cp h
    inc bc
    and l
    ld [bc], a
    dec l
    ld [bc], a
    dec sp
    inc b
    cp [hl]
    nop
    cp a
    nop
    cp [hl]
    ld bc, $1fe0
    ld a, c
    ldh a, [$f7]
    ld hl, sp-$0a
    ld sp, hl
    ld [hl], h
    ei
    sub h
    ld a, e
    sub $39
    db $e3
    jr jr_069_6092

    ld [$0c93], sp
    ld sp, hl
    ld b, $8d
    ld [hl], e
    adc l
    ld [hl], e
    sub [hl]
    ld a, c
    ld a, $f9
    db $fc
    rst $38
    cp l
    cp $bd
    cp $bd
    ld a, [hl]
    ld a, [hl]
    cp a
    ld a, a
    cp a
    ld a, $ff
    inc a
    rst $38
    inc h
    rst $38
    db $f4
    rst $28
    xor [hl]
    rst $38
    inc a
    rst $38
    inc [hl]
    rst $38
    ld h, d
    rst $38
    ld a, d
    rst $38
    jp Jump_000_2f7f


    rst $10
    db $eb
    rla
    di
    rra
    ld [c], a
    rra
    call z, $8633
    ld a, c
    xor a
    pop de
    jp hl


    rrca
    sbc $2f
    xor b
    rrca
    rst $38
    rst $38
    ei
    ldh a, [$f7]
    ld hl, sp+$36
    ld sp, hl
    jr nc, jr_069_6119

    rra
    nop
    ld e, [hl]
    nop
    cp $00
    ld a, [$9804]
    ld h, a
    sbc a
    ld a, a
    db $fd
    ccf
    xor a

jr_069_6119:
    rra
    rst $28
    rra
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0085
    add b
    nop
    add b
    inc bc
    ldh [rTAC], a
    rlca
    nop

jr_069_6132:
    inc bc
    add b
    ld bc, $31f8
    ld hl, sp+$21
    ld hl, sp-$18
    ld hl, sp+$18
    db $fc
    ld h, l
    ld e, $79
    nop
    ld bc, $0300
    nop
    ld bc, $0100
    nop
    ld l, h
    inc bc
    ld [hl-], a
    dec c
    rlca
    nop
    ld bc, $0f00
    nop
    ld [$0400], sp
    nop
    nop
    nop
    inc b
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0700
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
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop

jr_069_6174:
    ld bc, $0300
    nop
    inc bc
    nop
    add e
    nop
    add a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    and $19
    cp a
    nop
    or a
    ld [$003f], sp
    rra
    jr nz, jr_069_61f2

    jr nz, jr_069_6174

    jr nz, jr_069_6132

    ld h, h
    dec de
    db $e4
    dec bc
    db $f4
    add d
    ld a, l
    rst $20
    jr @+$01

    nop
    call nc, Call_000_322b
    dec c
    ld a, [hl]
    ld bc, $013e
    and [hl]
    add hl, de
    and $19
    xor $11
    ld [$7a15], a
    add l
    ld a, [hl+]
    push de
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, l
    add e
    ld [hl], l
    adc e
    ld b, l
    cp e
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    adc e
    ld a, a
    xor l
    ld e, e
    and l
    ld e, e
    add a
    ld a, e
    dec bc
    rst $38
    ld a, d
    rst $38
    cp $ff
    xor $ff
    ld l, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    db $ec
    rst $30
    ld l, h
    rst $30
    db $76
    rst $38
    ld b, e
    rst $38
    cp l
    jp $ab45


jr_069_61f2:
    dec de
    rst $20
    inc sp
    rst $08
    jp nz, $f8ff

    rst $38
    cp [hl]
    rst $38
    ld b, [hl]
    nop
    ld a, h
    nop
    add a
    nop
    rst $30
    nop
    adc [hl]
    nop
    dec e
    nop
    ld sp, hl
    nop
    add c
    ld a, [hl]
    ld bc, $597e
    ld [hl+], a
    ld h, b
    ld [hl], b
    ld [hl], b
    ld hl, sp+$00
    ldh [rP1], a
    ld hl, sp+$1f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $ec
    rst $38
    nop
    rst $38
    inc c
    ldh [$e2], a
    ldh a, [rSVBK]
    ld a, b
    cp [hl]
    ccf
    rst $18
    rra
    rst $20
    rrca
    call nz, $8007
    ld c, $00
    ld [$3e08], sp
    inc a
    ccf
    cp [hl]
    ccf
    cp [hl]
    ld a, a
    pop bc
    ld a, $c2
    ccf
    add b
    ld a, a
    sub b
    ld l, a
    db $ec
    inc bc
    inc bc

jr_069_624b:
    nop
    add b
    nop
    ld [c], a
    db $10
    inc a
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    rra
    nop

jr_069_625e:
    rla
    nop

jr_069_6260:
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld hl, sp+$07
    db $f4
    dec bc
    jr c, jr_069_624b

    cp d
    ld b, l
    cp d
    ld b, l
    ld a, h
    add e
    or h
    ld c, e
    call nz, $c43b
    dec sp
    ret nz

    ccf
    ld b, b
    cp a
    jp nz, $c73d

    jr c, jr_069_6260

    jr c, jr_069_625e

    inc a
    ld bc, $c0fe
    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    inc b
    ei
    ld h, e
    sbc h
    nop
    rst $38
    nop
    rst $38
    ld d, $ef
    adc a
    rst $38
    inc a
    rst $38
    adc l
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    dec l
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    and $ff
    adc [hl]
    rst $38
    add a
    rst $38
    and a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld h, d
    rst $38
    ld [c], a
    rst $38
    ld [hl], e
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    cp h
    ld a, a
    jp $81ff


    rst $38
    add b
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    jp c, $86ff

    rst $38
    ld c, $ff
    adc $ff
    ccf
    rst $38
    rra
    ccf
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $ed
    di
    jp Jump_069_57e0


    add sp, $65
    sbc e
    pop bc
    ccf
    ld d, $89
    db $ec
    add a
    dec a
    adc $fc
    rrca
    adc a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    db $fc
    nop
    db $fc
    add b
    ld a, h
    ld a, [$3c04]
    jp Jump_000_00ff


    sub e
    nop
    db $fd
    nop
    dec a
    ret nz

    rrca
    ldh a, [rSB]
    cp $21
    inc e
    ld [$f205], sp
    dec b
    ld hl, sp+$07
    ld [hl], b
    adc a
    ld [hl], c

jr_069_633f:
    adc [hl]
    db $e3
    nop
    and $01
    rst $30
    nop
    ld hl, sp+$00
    cp c
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $010a
    rrca
    nop
    ld b, e
    nop
    ld sp, hl
    nop
    pop bc
    nop
    db $fc
    inc bc
    pop af
    ld c, $d7
    jr z, jr_069_633f

    rra
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $e3
    inc e
    call z, $be33
    ld b, c
    cp a
    ld b, b
    ld l, $d1
    adc [hl]
    ld [hl], c
    ld [$c0f7], sp
    ccf
    pop af
    ld c, $f0
    rrca
    ldh [$1f], a
    db $10
    rst $28
    ld e, h
    and e
    rla
    add sp, $01
    cp $01
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
    add d
    ld a, l
    add [hl]
    ld a, c
    add a
    ld a, b
    adc d
    ld [hl], b
    sbc e
    ld h, b
    dec c
    ld a, [c]
    rra
    ldh a, [rNR34]
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld l, [hl]
    pop af
    ld h, [hl]
    ld sp, hl
    or $f9
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    cp $fb
    db $fc
    rst $38
    ld hl, sp-$0a
    ld sp, hl
    ld hl, sp-$01
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    sub e
    rst $38
    jp nz, $77ff

    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    ld b, l
    rst $38
    and $ff
    rst $00
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $00
    rst $38
    ld [$33f7], sp
    ret nz

    di
    nop
    ret z

    ld sp, $c138
    ld l, b
    add c
    ld h, b
    adc a
    inc de

Jump_069_63ff:
    db $ec
    ld hl, sp-$06
    ld a, [c]
    ld a, [$f1a4]
    inc h
    ld sp, hl
    and b
    jr nc, jr_069_641b

    ld b, c
    db $10
    ret nz

    rlca
    ret z

    sbc $e0
    rst $08
    ldh a, [$83]
    ld a, h
    ld a, a
    add b
    ldh a, [$e0]
    ld a, [bc]

jr_069_641b:
    ldh a, [$0e]
    ldh a, [rTIMA]
    cp $c0
    inc c
    ldh a, [rTAC]
    ld a, [$6307]
    rst $30
    ld a, a
    rst $38
    ld e, $3f
    inc e
    cp a
    add hl, sp
    rst $38
    ld e, $fe
    ld c, $3e
    ldh a, [$f0]
    ld a, [c]
    ld hl, sp-$1a
    ldh a, [$ce]
    ldh [$ef], a
    ldh [$df], a
    jr nz, jr_069_6442

    nop

jr_069_6442:
    sbc h
    inc bc
    inc c
    inc bc
    ld h, b
    rra
    add b
    ld a, a
    ld b, b
    ccf
    cp $00
    pop hl
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rra
    ldh [rIF], a
    ldh a, [$fe]
    ld bc, $0ff0
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add b
    ld a, a
    nop
    rst $38
    ld b, d
    cp a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    jp $c33c


    inc a
    pop bc
    ld a, $88
    ld [hl], a
    ret nz

    ccf
    add $39
    call nz, $c63b
    add hl, sp
    add b
    ld a, a
    ld b, c
    cp a
    reti


    scf
    pop de
    ccf
    sub c
    ld a, a
    ld d, l
    dec sp
    ld d, c
    ccf
    rst $10
    dec sp
    dec [hl]
    ei
    add h
    ld a, e
    and a
    ld a, e
    ld sp, $35ff
    ei
    ld [hl], $f9
    ld hl, $30ff
    rst $38
    inc sp
    rst $38
    ldh a, [rIE]
    ld a, [$72fd]
    rst $38
    ld [hl], h
    ei
    inc [hl]
    ei
    ld [hl], $f9
    ld [hl], c
    rst $38
    ld a, $ff
    cp $ff
    or d
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl-]
    db $fd
    add hl, sp
    cp $fa
    db $fd
    pop af
    rst $38
    or e
    rst $38
    ccf
    rst $38
    dec e
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    ld sp, hl
    rst $38
    dec a
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld c, $ff
    db $fd
    rst $38
    sbc a
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    ldh a, [$fd]
    add b
    ei
    add b
    rst $18
    add h
    add $80
    db $fd
    adc h
    rst $38
    ld [bc], a
    ld b, $d2
    cpl
    inc c
    rst $38
    adc a
    rst $38
    adc h
    rst $38
    ld bc, $9fff
    rst $38
    scf
    adc b
    or e
    inc c
    add b
    ld a, a
    cp a
    ld a, a
    db $fc
    ld a, a
    rst $38
    rst $38
    cp a
    ld a, a
    ld a, a
    ccf
    ld a, $7f
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    di
    db $fc
    db $f4
    ld hl, sp-$37
    ldh a, [$b8]
    pop bc
    inc a
    jp Jump_000_0067


    rst $00
    nop
    or h
    inc bc
    add sp, $07
    ld d, c
    adc [hl]
    di
    inc c
    sbc c
    ld h, [hl]
    nop
    rst $38
    ld [hl], b
    rrca
    ld [$0707], sp
    nop
    dec e
    nop
    ld [hl], b
    nop
    ld e, b
    add b
    ld hl, sp+$00
    cp d
    ld b, b
    nop
    ld c, c
    nop
    nop
    nop
    di
    or b
    ld a, a
    add e
    ld a, h
    sub e
    ld a, h
    add [hl]
    ld a, c
    ld [hl], $f9
    rlca
    ld hl, sp+$01
    cp $0c
    rst $38
    inc b
    rst $38
    ld b, b
    cp a
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    scf
    rst $38
    rla
    rst $38
    jr @+$01

    dec bc
    rst $38
    ld c, $ff
    jr @+$01

    ld bc, $f2fe
    dec c
    db $fd
    inc bc
    add hl, bc
    rst $30
    rra
    rst $38
    ld b, d
    cp a
    jp nz, $f63f

    rrca
    rst $28
    rra
    sbc a
    rst $38
    ld e, h
    cp a
    ld e, h
    cp a
    call c, Call_000_1f3f
    rst $38
    db $10
    rst $38
    inc d
    ei
    db $10
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    dec l
    rst $38
    ld d, c
    cp a
    nop
    rst $38
    or b
    rst $38
    ld a, $ff
    ld e, $ff
    jr nc, @+$01

    jr nz, @+$01

    sbc h
    rst $38
    ld e, a
    cp a
    ld a, $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    dec sp
    rst $38
    ld a, $ff
    ld [hl-], a
    rst $38
    sub [hl]
    ld a, a
    ld b, e
    cp h
    ld h, c
    cp $11
    cp $00
    rst $38
    ld hl, sp-$01
    db $10
    rst $38
    and a
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ldh [$fd], a
    ld hl, sp-$03
    ld a, [$00ff]
    di
    ld h, e
    rst $38
    ld h, e
    rst $30
    ld [bc], a
    rst $20
    ld [bc], a
    adc a
    ld [bc], a
    rlca
    nop
    rra
    inc bc
    scf
    dec de
    inc bc
    ld h, $07
    ld b, a
    rst $38
    add a
    rlca
    inc b
    rrca
    nop
    ld a, [hl]
    nop
    add a
    db $10
    ld a, a
    cp a
    rst $38
    ld c, $ff
    inc e
    ld a, $70
    db $fc
    add b
    ld sp, hl
    ld bc, $ffff
    rst $38
    ld a, a
    rst $38
    ld hl, $01ff
    rst $28
    ld bc, $095b
    adc a
    ld bc, $2f2f
    rst $38
    ld e, l
    cp a
    cp [hl]
    cp a
    ld a, $bf
    sbc $3f
    cp $1f
    ld a, a
    sbc a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    add a
    ld a, b
    jr c, jr_069_664a

jr_069_664a:
    nop
    nop
    ld bc, $1e00
    nop
    nop
    nop
    nop
    inc b
    ld b, b
    rst $30
    dec e
    rst $38
    rst $08
    ccf
    adc b
    ld a, a
    sbc l
    ld l, [hl]
    inc b
    rst $38
    jr @+$01

    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp e
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    add a
    ld a, a
    inc de
    rst $28
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
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
    ccf
    rst $38
    dec de
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $10
    rst $38
    inc a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    add hl, sp
    rst $38
    rst $20
    ld a, a
    adc h
    ld a, a
    sbc a
    ld a, a

jr_069_66d0:
    dec e
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    inc c
    sbc a
    nop
    call z, $fec0
    add c
    rst $20
    nop
    adc b
    nop
    ld h, b
    nop
    add a
    rra
    ccf
    rst $38
    rst $38
    sbc $ff
    ld c, $ff
    db $10
    rlca
    ldh a, [rIE]
    db $e3
    ldh a, [rBCPS]
    nop
    nop
    rra
    ld [$c0fc], sp
    di
    pop bc
    rst $30
    add e
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    ldh a, [$f8]
    rst $08
    ldh [$b7], a
    ret nz

    adc $01
    db $dd
    inc bc
    and c
    rra
    ld h, b
    ccf
    ld a, $7f
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld e, $ff
    inc c
    rra
    ld b, b
    jr jr_069_66d0

    db $10
    pop bc
    ld [$0f06], sp

jr_069_674e:
    rlca
    rrca
    ld b, a
    ccf
    ld c, $3f
    jr nc, jr_069_674e

    db $f4
    rst $38
    rst $00
    rst $38
    add sp, $1f
    ldh [$1f], a
    rra
    rst $38
    jr nc, @+$01

    jr @+$01

    cp [hl]
    rst $38
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
    ld [hl], a
    rst $38
    rla
    rst $38
    daa
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
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
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    ei
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $ff
    sbc $ff
    adc a
    rst $18
    sbc a
    rst $38
    add e
    rst $38
    add a
    rst $38
    inc hl
    ld [hl], a
    jr nz, jr_069_686a

jr_069_67f8:
    jr nz, jr_069_67f8

    jr nc, jr_069_67f8

    ldh [$f8], a
    ld h, b
    ldh a, [$f0]
    ldh a, [$f0]
    db $fc
    nop
    ld a, [$e300]
    inc bc
    add a
    ld [de], a
    rst $38
    ld bc, $0133
    ccf
    dec sp
    rst $38
    dec sp
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    or $d0
    db $fc
    call c, $cffe
    rst $18
    xor h
    rst $18
    or b
    rst $08
    cp b
    ret nz

    cp a
    ret nz

    rst $18
    ret nz

    rst $08
    rst $38
    sbc $ff
    ld [hl], e
    call c, $702f
    nop
    ld h, b
    inc bc
    rst $20
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, d
    ld a, a
    inc a
    ld a, a
    adc h
    rst $38
    ld a, [bc]
    rst $10
    xor b
    rst $10
    dec l
    db $d3
    ld e, c
    add a
    cp h
    rlca
    sbc b
    scf
    ld d, b
    cp a
    sbc l
    ei
    nop
    ld sp, hl
    call nz, Call_000_0039
    db $fd
    ld [$c1e7], sp
    ld h, $61
    add d
    ld [hl+], a
    pop bc
    ld [hl+], a
    pop bc
    ld [hl+], a
    pop bc
    inc hl
    ret nz

    cpl
    ret nz

    ld hl, $6dca
    add d

jr_069_686a:
    ld l, e
    add h
    ld [hl], d
    adc l
    nop
    rst $38
    inc bc
    rst $38
    or e
    di
    pop hl
    pop af
    pop hl
    pop af
    ld h, c
    pop af
    pop bc
    rst $30
    pop bc
    rst $30
    jp nz, $cff7

    rst $30
    add $ff
    rst $10
    rst $28
    xor $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    db $fc
    cp $f8
    cp $f8
    db $fc
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    ld a, [$faff]
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$feff]
    cp $fe
    cp $fe
    cp $fc
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $fd
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
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld c, $0f
    ld c, $0f
    add hl, bc
    rra
    nop
    ccf
    nop
    daa
    nop
    rrca
    ld bc, $01bf
    sbc l
    pop bc
    rst $38
    ld bc, $07f7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, d
    add l
    ld a, b
    add a
    ldh a, [rIF]
    call nz, Call_069_4903
    add [hl]
    ld b, $f8
    ld hl, sp+$10
    ldh a, [rP1]
    nop
    nop
    nop
    push de
    ldh a, [$f0]
    ldh [$c0], a
    pop bc
    nop
    ld e, $00
    ret nz

    nop
    adc [hl]
    ldh a, [rIE]
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    rlca
    rst $28
    ld a, b
    add a
    cp l
    ld b, b
    ld [bc], a
    ccf
    ld c, $3f
    rra
    ld e, a
    ld e, $5f
    rra
    ld e, a
    rra
    rst $18
    rrca
    sbc a
    rra
    sbc a
    rra
    rst $18
    rrca
    ld e, a
    rrca
    ld e, a
    dec bc
    rst $08
    rlca
    adc a
    rlca
    and a
    inc bc
    and a
    inc bc
    db $e3
    inc bc
    inc de
    inc bc
    ld b, e
    ld bc, $014f
    daa
    ld bc, $0327
    rrca
    rlca
    ccf
    rrca
    rra
    rlca
    sbc a
    ld [bc], a
    sbc a
    and b
    rst $18
    sbc b
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    ld e, h
    ei
    call z, $db7b
    ld a, h
    ld e, d
    db $fd
    ld e, d
    db $fd
    dec de

Call_069_6987:
    db $fc
    ld a, [bc]
    db $fc

jr_069_698a:
    jr z, jr_069_698a

    inc c
    cp $44
    cp a
    rst $08
    and a
    and l
    rst $00
    call Call_069_6987
    sub a
    ld b, e
    db $fd
    xor e
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    call c, $da23
    dec h
    ld [c], a
    dec e
    sub e
    inc l
    sbc e
    inc h
    sbc e
    inc h
    ld [hl], e
    adc h
    db $10
    rst $28
    ld [bc], a
    ld l, e
    inc bc
    ld l, e
    inc bc
    db $eb
    dec bc
    db $eb
    dec bc
    cp a
    nop
    adc a
    ld bc, $000b
    inc bc
    nop
    stop
    ld e, b
    nop
    ld e, h
    nop
    ld c, h
    inc b
    call z, $cc88
    call z, $dcec
    cp $d8
    cp $c0
    ld a, [$fec0]
    call c, $9cde
    rst $38
    sbc [hl]
    rst $18
    ret c

    db $db
    add d
    rst $18
    jp $93f7


    db $d3
    sub e
    ei
    ld h, e
    ei
    ld [hl], e
    ei
    ld a, e
    ei
    dec de
    rst $38
    dec de
    rst $38
    dec de
    cp a
    dec e
    cp a
    rra
    ccf
    scf
    ccf
    ld sp, $313b
    add hl, sp
    jr c, @+$3f

    db $10
    ld a, h
    add hl, sp
    ccf
    dec sp
    rst $38
    di
    rst $38
    db $e3
    rst $30
    pop hl
    rst $30
    and c
    di
    pop hl
    db $e3
    ldh [$f3], a
    ld [hl], b
    ld sp, hl
    jr z, @-$03

    ld [$72fb], sp
    ei
    ld a, [c]
    rst $38
    ld a, [c]
    rst $30
    add [hl]
    scf
    ld h, $27
    ld l, a
    daa
    daa
    ld l, a
    ld h, a
    rst $28
    scf
    rst $28
    dec de
    dec a
    rrca
    add hl, de
    rrca
    add hl, bc
    rrca
    dec c
    inc d
    inc c
    inc d
    inc c
    sbc $ff
    cp $ff
    cp a
    rst $38
    cp $ff
    inc b
    ld a, [$0078]
    ei
    inc bc
    cpl
    jp $e315


    dec e
    db $e3
    ld hl, $11df
    rst $38
    db $ed
    rst $38
    cp l
    rst $38
    dec d
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    cp d
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    cp $9e
    cp $9c
    rst $38
    sbc $ff
    db $fc
    rst $38
    db $fc
    db $fc
    call c, $dcfe
    cp $ce
    rst $38
    adc $ff
    and $ff
    add [hl]
    rst $38
    inc bc
    ccf
    jp $c73f


    ccf
    jp $fe3f


    inc de
    call c, Call_069_7533
    sbc e
    ld a, c
    sbc a
    dec [hl]
    rst $18
    ld [hl], d
    db $dd
    ld b, a
    ret c

    inc b
    ld e, d
    ld [hl], $48
    dec [hl]
    ld c, d
    inc [hl]
    set 2, l
    set 2, d
    db $ed
    jp nz, $ace8

    ld a, [$feb9]
    inc a
    rst $38
    nop
    jp $c100


    dec h
    db $d3
    ld [hl], e
    add c
    ld [hl], e
    add c
    or d
    ld c, c
    ret c

    add hl, bc
    ld l, a
    sbc b
    ld l, e
    sbc h
    cpl
    sbc h
    nop
    inc c
    inc c
    ld c, $ec
    cp $f8
    db $fc
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f2], a
    ldh [$f2], a
    adc h
    ld [hl], d
    adc l
    ld [hl], d
    nop
    ld a, a
    nop
    ld a, a
    ld [$4877], sp
    scf
    ld a, [bc]
    dec [hl]
    ld a, [hl+]
    dec d
    ld c, $51
    adc [hl]
    ld de, $10e3
    ld [bc], a
    pop af
    inc de
    ldh [rNR12], a
    pop hl
    ld de, $31e4
    ret nz

    ret nz

    call nz, $d888
    adc b
    ret c

    adc h
    call c, $df86
    add c
    rst $18
    sub c
    ei
    add e
    rst $18
    add e
    jp $c383


    add e
    jp $c383


    add e
    jp $c383


    add e
    jp $e342


    ld [bc], a
    db $e3
    add d
    rst $00
    add c
    rst $00
    rlca
    add a
    rlca
    rlca
    ld b, $6f
    ld h, $6f
    ld l, $2e
    ld l, $2e
    ld l, $3e
    inc e
    ld a, [hl]
    inc e
    ld a, [hl]
    inc c
    ld e, [hl]
    inc c
    ld e, [hl]
    inc c
    call z, $cc0c
    ld c, b
    call z, $df48
    ld c, b
    rst $18
    ret z

    rst $18
    ld d, b

jr_069_6b29:
    sbc $10
    cp $30
    ld sp, hl
    jr jr_069_6b29

    jr nc, @+$7d

    jr nz, @+$01

    ld b, h
    rst $28
    ld b, h
    rst $28
    db $ec
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, $fd
    cp h
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    jp $c3ff


    rst $38
    jp $c3df


    rst $18
    add e
    rst $08
    rlca
    rst $08
    add e
    rst $38
    jp $e7ff


    rst $38
    ld h, a
    rst $38
    inc hl
    ld a, a
    inc hl
    rst $38
    inc hl
    rst $30
    ld [hl+], a

jr_069_6b63:
    rst $30
    ld [hl-], a
    rst $30

jr_069_6b66:
    jr nc, jr_069_6b63

    jr c, jr_069_6be7

    jr c, jr_069_6be9

    inc a
    dec a
    inc b
    db $fd
    inc b
    rrca
    ret nz

    ld c, $40
    add [hl]
    ret nz

    add d
    ldh [$82], a
    and b
    jp nz, $c3e0

    ret nz

    pop hl
    ldh a, [$e1]

jr_069_6b82:
    ld sp, $3ae1
    rst $20
    sub [hl]
    cpl
    add hl, de
    ld a, $35
    nop
    ld [hl], c
    and b
    di
    ldh [$ec], a
    di
    inc e
    di
    sbc d
    scf
    ei
    rla
    ld b, e
    sbc a
    rlca
    rst $08
    ld h, a
    rst $08
    ld e, $e7
    ld a, [$b027]
    cpl
    ld [de], a
    cpl
    sub h
    cpl
    sub h
    cpl
    sub h
    cpl
    ld c, $3f
    ld b, d
    ccf
    dec a
    ld [bc], a
    ld [hl], l
    ld a, [bc]
    dec h
    ld e, d
    add hl, hl
    ld d, [hl]
    inc l
    ld d, e
    ld l, h
    inc de
    ld l, [hl]
    ld de, $5328
    inc l
    ld d, e
    db $ec

jr_069_6bc3:
    inc de
    ld l, b
    sub e
    ld l, h
    sub e
    ld h, h
    sub e
    ld b, l
    or d
    ret nc

    daa
    jp nz, $9425

    ld l, a
    or h
    ld c, a
    ld [hl], h
    rst $08
    inc e
    rst $08
    ld l, $dd
    ld a, $dd
    ld [hl-], a
    db $dd
    sub e
    db $fc
    add sp, $10
    adc c
    jr nc, jr_069_6b66

    jr nc, jr_069_6b82

jr_069_6be7:
    jr nz, jr_069_6bc3

jr_069_6be9:
    ld hl, $a350
    inc b
    di
    inc c
    di
    db $e3
    rst $30
    pop hl
    rst $38
    rst $30
    rst $38
    sbc $ff
    sbc a
    cp $ee
    sbc a
    ld c, $9f
    ld l, $9f
    rra
    rrca
    rra
    rrca
    rrca
    rra
    adc a
    rra
    sbc a
    rra
    ccf
    rra
    ccf
    rra
    ld a, a
    ccf
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $7f
    cp $7f
    cp $7f
    cp $7e
    rst $38
    ld a, a
    cp $7f
    cp $7c
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    jp $c1e3


    jp $cbc1


    pop bc
    db $e3
    add c
    ld sp, hl
    add c
    ld sp, hl
    add b
    pop af
    adc b
    db $fd
    add b
    call c, $c480
    add b
    adc $c0
    add $c0
    and $c0
    xor $c0
    db $e4
    ldh [$e2], a
    ldh [$f3], a
    ld h, b
    di
    ld [hl], b

jr_069_6c65:
    ld sp, hl
    jr nc, jr_069_6c65

    jr @+$01

    add hl, sp
    rst $38
    inc e
    ccf
    inc e
    cp a
    sbc [hl]
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $18

jr_069_6c87:
    ccf
    cpl
    rra
    add b
    rrca
    adc h
    nop
    pop hl
    nop
    jr z, jr_069_6c87

    inc l
    di
    ld [hl+], a
    db $fd
    inc d
    db $eb
    adc e
    db $fd
    ld sp, hl
    or a
    pop af
    dec e
    db $fd
    add hl, de
    dec de
    db $fd
    dec de
    db $fd
    ld c, e
    db $fd
    ld e, a
    jp hl


    rla
    jp hl


    sbc a
    pop hl
    cp e
    pop hl
    ccf
    pop hl
    add b
    ld h, c
    ldh [$03], a
    ldh a, [$03]
    ld h, b
    add e
    ret nz

    inc bc
    ld b, h
    add e
    ld b, b
    add a
    nop
    add a
    add b
    rlca
    adc b
    rlca
    adc b
    rlca
    adc b
    rlca
    adc b
    rlca
    ret nc

    rrca
    ld d, b
    adc a
    and b
    rra
    ld e, a
    cp a
    rst $38
    ccf
    and $3f
    xor a
    ld [hl], b
    db $fc
    ld h, b
    adc $70
    ld b, a
    ld hl, sp+$6f
    ret nc

    ret nz

    ld e, b
    add b
    push hl
    add d
    db $dd
    add b
    ld h, a
    add l
    dec sp
    add hl, de
    rst $20
    ld de, $1faf
    rst $20
    xor h
    add e
    ld hl, sp-$79
    sub [hl]
    jp hl


    ld a, [hl]
    pop bc
    ld a, [hl-]
    pop bc
    inc l
    jp $c17e


    ld e, [hl]
    pop hl
    and $f9
    ld [hl], d
    db $fd
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    di
    ld a, a
    scf
    rst $38
    rrca
    rst $30
    sbc [hl]
    ld h, a
    sbc a
    ld h, a
    db $f4
    rrca
    db $ed
    rra
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ei
    ld a, a
    rst $38
    ld a, a
    di
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    ld bc, $01ff
    rst $38
    add c
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
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
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $20
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
    cp $ff
    ldh a, [rIE]
    db $eb
    push af
    ld bc, $5fff
    ld bc, $01b7
    jp hl


    inc bc
    xor c
    inc bc
    db $ed
    inc de
    add e
    ld a, a
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld h, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld a, $ff
    cp $ff
    rst $30
    cp $4e
    cp $cc
    cp $15
    cp $3f
    cp $3e
    cp $7f
    cp $7e
    rst $38
    cp $ff
    cp $ff
    sbc $3f
    ld e, a
    ccf
    ld l, l
    ld a, $5c
    ld a, $7c
    ld c, $ed
    inc e
    dec de
    db $fc
    ld e, $f8
    ld a, $f8
    sub c
    ld a, b
    or l
    ld a, b
    ld [hl], l
    ld hl, sp-$30
    ld sp, hl
    jp nc, $f0fd

    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld [hl], a
    rst $38
    ld sp, hl
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    or a
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
    cp $ff
    ld sp, hl
    cp $ff
    ld hl, sp-$09
    ld hl, sp+$6e
    pop af
    ld l, b
    rst $30
    ld l, c
    rst $30
    db $fd
    db $e3
    reti


    rst $20
    reti


    rst $20
    pop bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    daa
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

Jump_069_6e3f:
    rst $38
    db $eb
    rst $38

jr_069_6e42:
    db $eb
    rst $38
    pop af
    rst $38
    push af
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
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
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    add sp, -$09
    rst $20
    ld sp, hl
    pop hl
    rst $38
    push af
    ei
    pop af
    rst $38
    ldh a, [rIE]
    db $d3
    rst $38
    daa
    rst $18
    rst $20
    rra
    rst $20
    rra
    and a
    ld e, a
    rlca
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld e, $e1
    pop hl
    rst $38
    db $e3
    rst $38
    rst $28
    rst $00
    rst $00
    rst $18
    sub e
    rst $08
    add e
    rst $08
    jp $829f


    sbc a
    add d
    sbc a
    add d
    sub e
    add e
    sub d
    sub d
    add c
    add d
    sbc l
    add d
    sbc l
    add l
    sbc l
    add l
    cp a
    inc sp
    add h
    xor c
    add h
    jr nc, jr_069_6e42

    inc sp
    adc h
    or b
    rrca
    xor b
    rra
    dec c
    ccf
    ld a, a
    ccf
    dec e
    ld a, a
    sbc h
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    adc $3f
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    ld e, a
    cp a
    rst $38
    ccf
    ccf
    ld a, a
    inc a
    ld a, a
    dec a
    ld a, [hl]
    sbc h
    ld a, [hl]
    ld e, l
    ld a, $0d
    ld e, $ef
    ld e, $ef
    ld e, $ef
    ld e, $ef
    ld e, $ee
    rra
    ld c, a
    sbc a
    daa
    rst $18
    scf
    rst $08
    ccf
    rst $08
    rst $08
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    xor [hl]
    rst $38
    cp $ff
    ld a, [$f9ff]
    cp $f9
    cp $39
    cp $b1
    ld a, [hl]
    ld a, e
    cp $75
    cp $7e
    rst $38
    or $ff
    add $ff
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    sub e
    rst $28
    add hl, de
    rst $20
    add hl, sp
    rst $00
    add hl, sp
    rst $00
    ld a, l
    add e
    ld e, l
    add e
    ld a, d
    add c
    inc b
    ld hl, sp-$03
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
    jr jr_069_6f73

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_069_6f83

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_069_6f93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_069_6fa3

    ld [hl-], a

jr_069_6f73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_069_6fb3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_069_6f83:
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

jr_069_6f93:
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

jr_069_6fa3:
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

jr_069_6fb3:
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
    ld [$0909], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    add hl, bc
    ld d, $17
    jr jr_069_7075

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_069_7075

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_069_70a6

jr_069_7075:
    ld [hl-], a
    inc sp
    add hl, bc
    add hl, bc
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_069_70b8

    ld a, [hl-]
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
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    nop
    nop

jr_069_70a6:
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
    ld bc, $0000

jr_069_70b8:
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0000
    ld bc, $0404
    inc b
    inc b
    inc b
    nop
    inc b
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $0004
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    ld bc, $0101
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
    ld bc, $0001
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
    ld bc, $0001
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$ff1f], sp
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    sbc $3f
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ccf
    cp $bd
    ld a, [hl]
    db $fd
    ld a, $be
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $f8
    rst $38
    db $fc
    rst $38
    reti


    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ld h, b
    rst $18
    ld d, d
    rst $28
    add hl, de
    rst $20
    cp $01
    inc de
    ldh [$d0], a
    rst $28
    daa
    rst $38
    sbc a
    rst $38
    db $d3
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
    sbc a
    rst $38
    inc hl
    rst $18
    ld a, e
    add a
    ld [$9095], a
    rst $38
    adc l
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    db $fc
    db $fd
    cp $fe
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    di
    db $fc
    db $fc
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
    cp $ff
    db $f4
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    cp $ff
    cp $ff
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    cp $bd
    adc $a7
    call z, $c483
    add h
    jp $8c77


    rst $28
    ldh a, [rPCM34]
    ld hl, sp-$44
    ld a, a
    ccf
    rst $38
    db $f4
    rst $38
    db $fd
    ret nz

    sbc a
    ldh [$6e], a
    pop af
    ld l, h
    di
    ld l, [hl]
    pop af
    ld c, h
    di
    inc c
    di
    db $fc
    inc bc
    ld a, h
    add e
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, b
    rlca
    ld [hl], b
    rrca
    and $1f
    ld a, [c]
    rst $38
    ei
    rst $38
    db $ec
    rst $38
    ldh [rIE], a
    call nz, $98fb
    rst $38
    cp h
    rst $38
    ld [hl-], a
    rst $38
    ld [hl+], a
    rst $38
    and [hl]
    ld a, a
    ld l, $ff
    ld a, h
    rst $38
    add hl, de
    cp $99
    ld a, [hl]
    ld sp, hl
    ld a, $38
    rst $38
    ld a, [$ffff]
    rst $38
    ld a, [$79ff]
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    ret z

    scf
    jr nz, @+$01

    inc [hl]
    ei
    sub [hl]
    ld a, c
    cpl
    ret c

    dec hl
    call c, $f897
    or $f8
    ld a, [$fdfc]
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
    add a
    ei
    ld bc, $c0ff
    ccf
    ld l, c
    sub [hl]
    xor b
    rst $10
    jp $e7fc


    ld hl, sp+$17
    ld hl, sp-$6a
    ld a, c
    cp b
    rst $38
    ld a, [c]
    rst $38
    db $d3
    rst $38
    or e
    rst $18
    rst $20
    rra
    ld [hl], c
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
    jp Jump_069_73ff


    adc a
    ld sp, $b1cf
    rst $08
    cp c
    rst $00
    dec a
    jp $8779


    ld b, c
    cp a
    sbc l
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    adc a
    rst $38
    add [hl]

jr_069_7369:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_069_7373:
    rst $38
    nop
    rst $38
    ld bc, $3bff
    rst $00
    call nz, $f0ff
    rst $38
    ldh a, [rIE]
    sbc b
    rst $20
    inc hl
    jp $c326


    ld a, [bc]
    rst $00
    ld a, $c7
    dec c
    cp $58
    cp a
    ld sp, hl
    rlca
    add a
    ld a, a
    sub d
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    jr nc, jr_069_7369

    ldh a, [rIF]
    add c
    ld a, [hl]
    add hl, bc
    or $30
    rst $08
    jr nc, jr_069_7373

    di
    rrca
    or e
    ld c, a
    ld a, [hl-]
    rst $00
    dec sp
    rst $00
    db $10
    rst $28
    ldh [$1f], a
    db $e3
    inc e
    ld h, e
    sbc h
    ld h, e
    sbc h
    add hl, bc
    rst $38
    ld bc, $08ff
    rst $30
    dec bc
    rst $30
    rst $38

jr_069_73bf:
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $00
    rst $38
    ld c, e
    rst $30
    ret z

    rst $30
    db $ec
    di
    db $fd
    db $e3
    db $dd
    db $e3
    call nc, $c4e3
    db $e3
    xor $c1
    db $ec
    jp $c3fc


    db $ec
    db $d3
    xor e
    rst $10
    ld a, [hl+]
    rst $10
    ld c, $f3
    dec bc
    rst $30
    rra
    db $e3
    sbc e
    rst $20
    add e
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    inc hl
    rst $18
    jr z, jr_069_73bf

    inc a
    db $e3
    xor a
    ld [hl], b
    db $eb
    jr nc, @-$23

Jump_069_73ff:
    jr nc, jr_069_7437

    ld sp, hl
    or [hl]
    ld a, c
    adc b
    ld a, a
    inc c
    rst $38
    sbc $ff
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    cp a
    ld a, a
    adc $3f
    xor $1f
    rst $30
    rrca
    rst $30
    rrca
    adc a
    ld a, a
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    cp $fd
    cp $fe
    rst $38
    rst $38

jr_069_7437:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    dec de
    rst $20
    sbc a
    rst $20
    rst $10
    rst $28
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    ret


    rst $38
    ret z

    rst $38
    call z, $c4ff
    rst $38
    db $d3
    rst $28
    ld d, l
    db $eb
    ld e, l
    db $e3
    db $ed
    di
    ld [hl], e

jr_069_7471:
    rst $38
    ld a, a
    rst $38
    call $8ef3
    pop af
    db $e3
    db $fc
    ld a, [$e9fc]
    db $fc
    ld d, [hl]
    jp hl


    pop bc
    rst $10
    add c
    rst $28
    add e
    db $dd
    inc bc
    call c, Call_069_7b07
    dec bc
    rst $20
    rrca
    rst $30
    rst $38

jr_069_748f:
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    add b
    ld a, a
    ld h, $df
    cp a
    ld a, a
    cp e
    ld a, a
    sub b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr jr_069_748f

    jr c, jr_069_7471

    inc a
    jp $c13e


    ld a, [hl]
    add c
    pop hl
    rra
    cp a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add a
    ld hl, sp-$40
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    or c
    rst $38
    inc d
    ei
    xor l
    ld d, e
    add l
    ld a, e
    adc h
    ld [hl], e

jr_069_74d8:
    call z, Call_000_2433
    jp $c234


    ld [hl], c
    add b
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    cp $80
    sbc [hl]
    ldh [$f5], a
    ld a, [$fefd]
    rst $38
    cp $fe
    cp $fc
    cp $7c
    cp $fc
    db $fc
    db $fc
    cp $74
    cp $20
    cp $40
    db $fc
    ld b, h
    cp $3e
    ret nz

    cp d
    ret nz

    jr z, jr_069_74d8

    or [hl]
    ret z

    ld sp, hl
    cp $df
    cp $f1
    ld c, $a7
    jr @-$1d

    ld e, $40
    cp a
    ccf
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
    cp a
    ld a, a
    ld d, e
    cp a
    adc a
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf

Call_069_7533:
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    call nz, $c0ff
    rst $38
    ldh [$df], a
    ret nc

    rst $28
    pop hl
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    or e
    rst $38
    ei
    rst $38
    db $d3
    rst $38
    sbc e
    rst $38
    adc c
    rst $38
    call $ffff
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
    ld a, [$e3fd]
    db $fc
    add d
    db $fc
    dec b
    ei
    cp a
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
    call $f0f3
    rst $28
    ret nz

    ldh [$c0], a
    pop af
    ret nz

    cp $e0
    rst $38
    dec a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, $c1
    dec c
    di
    inc de
    rst $38
    jr c, @+$01

    add b
    rst $38
    inc c
    di
    add b
    ld a, a
    sub h
    ld l, a
    ld d, d
    cp a
    inc de
    rst $38
    dec bc
    rst $38
    adc b
    rst $38
    jp nz, $f0ff

    rst $38
    call nc, $ecff
    rst $38
    push af
    ld a, [$e0df]
    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, l
    rst $38
    ld a, b
    rst $38
    ld a, d
    db $fd
    ld [hl], h
    ld sp, hl
    sub $f9
    cp h
    ei
    ld [hl], b
    rst $38
    ld [hl], d
    rst $38
    db $fd
    di
    push af
    db $e3
    rst $20
    db $e3
    rst $30
    jp $c3d6


    add $c3
    call nz, $e4c3
    add e
    ld c, b
    add a
    ld b, c
    add [hl]
    ld d, a
    add b
    ld b, $80
    ld b, $80
    ld b, $00
    ld b, $00
    inc b
    ld [bc], a
    db $10
    rrca
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    inc bc
    nop
    ccf
    nop
    ld a, a
    nop
    ld c, l
    nop
    ld a, $01
    cp $01
    cp d
    dec b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld e, e
    nop
    add hl, de
    nop
    ld [de], a
    ld bc, $01fe
    ld [hl], a
    add b
    ld b, e
    add b
    ld b, $81
    adc a
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    and l
    ret c

    and h
    ret nc

    ret nc

    add sp, -$40
    ldh [$80], a
    ret nz

    ret nz

    ret nz

    ldh a, [$c0]
    pop bc
    ret nz

    ei
    ret nz

    rst $38
    reti


    ld d, b
    rst $28
    nop
    rst $38
    jr z, @+$01

    inc a
    rst $38
    ld a, b
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
    ld hl, sp-$01
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$09
    rst $30
    ldh [$f7], a
    ldh [$f6], a
    pop hl
    ld a, [c]
    pop hl
    pop af
    ret nz

    ld [hl], h
    add c
    rst $08
    ld sp, $5fbe
    cp [hl]
    ld a, a
    ld a, l
    rst $38
    db $fc
    rst $38
    di
    db $fc
    db $fd
    ld a, [$f8f7]
    call $f4f0
    ld hl, sp-$1c
    ld hl, sp-$21
    ldh [$5f], a
    ldh [$37], a
    ldh [$8f], a
    ld [hl], b
    and a
    ld a, b
    pop hl
    ld a, [hl]
    ld [hl], l
    cp $7b
    db $fc
    db $db
    db $fc
    ld sp, hl
    cp $fa
    rst $38
    ret


    cp $43
    db $fc
    rla
    ld hl, sp+$07
    ld hl, sp+$08
    rst $38
    dec a
    cp $f9
    cp $f5
    cp $ff
    cp $0e
    rst $38
    rrca
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $20
    rra
    rst $10
    rrca
    or $0f
    ld b, b
    cp a
    add l
    jp $c385


    or a

jr_069_76c5:
    jp $c7bb


    cp c
    rst $00
    cp c
    rst $00
    di
    rst $18
    ccf
    rst $38
    ld [hl], e
    cp a
    adc a
    di
    xor c
    db $d3
    cp c
    rst $00
    db $dd
    add e
    add hl, de
    rst $20
    jr jr_069_76c5

    inc b
    ei
    add b
    ld a, a
    ld a, h
    inc bc
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
    ld bc, $0602
    nop
    adc c
    db $76
    ld b, [hl]
    ld bc, $0047
    ld c, a
    nop
    xor e
    nop
    rst $00
    nop
    rst $00
    nop
    ld a, [$9e01]
    ld bc, $09f6
    adc h
    ld [hl], e
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    cp h
    inc bc
    cp h
    inc bc
    ld a, h
    inc bc
    db $ec
    inc bc
    ld a, [hl]
    ld bc, $0083
    or d
    ld b, c
    call $cd63
    ld [hl], e
    ld [hl], e
    rst $38
    ei
    rst $38
    set 7, a
    ld e, a
    rst $38
    ld [hl], a
    rst $38
    adc c
    rst $38
    di
    rrca
    inc d
    dec bc
    sbc h
    inc bc
    ld bc, $019f
    ld e, a
    ld bc, $031f
    ccf
    inc bc
    ccf
    inc hl
    ld a, a
    ld b, e
    rst $38
    db $e3
    rst $18
    ld [hl+], a
    db $dd
    ld c, $f1
    sub e
    rst $28
    ld a, a
    rst $38
    rst $00
    ld a, a
    ld l, e
    rst $30
    ld sp, hl
    rst $38
    xor $f1
    db $ec
    di
    xor $f1
    rst $28
    ldh a, [$ee]
    pop af
    ld l, [hl]
    pop af
    ld a, [hl]
    pop hl
    cp $e1
    jp hl


    rst $30
    rst $08
    rst $38
    add sp, -$21
    ld a, [$e6fd]
    ld sp, hl
    db $e4
    ei
    ld l, b
    rst $30
    add h
    ld a, e
    add $f9
    ld a, b
    add a
    jp hl


    ld d, $af
    db $10
    ld a, h
    add e
    db $ed
    inc de
    xor $11
    rst $38
    nop
    add [hl]
    add hl, bc
    jr nc, jr_069_7791

    rst $00
    ccf
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $20

jr_069_7791:
    rra
    rst $28
    rra
    reti


    daa
    ccf
    ret nz

    rst $38
    add b
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    db $fc
    inc bc
    add sp, $17
    ld a, [c]
    dec c
    ld [hl], c
    adc a
    rst $30
    rrca
    or a
    ld c, a
    ld [hl], a
    adc a
    ld a, a
    adc a
    cp a
    rst $18
    adc a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    dec b
    ld a, [$fe01]
    ld h, b
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld a, [c]
    rst $38
    jr @+$01

    ld e, $ff
    add hl, sp
    rst $38
    and l
    cp $af
    db $f4
    db $db
    db $e4
    rst $28
    ldh a, [$e8]
    ldh a, [$7d]
    ldh a, [$79]
    db $fc
    ld a, l
    cp $7e
    rst $38
    ld a, a
    rst $38
    ei
    ld a, a
    ldh [$7f], a
    di
    ld a, h
    xor c
    db $76
    xor c
    db $76
    add a
    ld a, b
    add a
    ld a, b
    rst $08
    jr nc, jr_069_7832

    ldh [$0b], a
    db $f4
    sbc c
    ld h, [hl]
    add b
    ld a, a
    ret nz

    ccf
    ld sp, hl
    rla
    xor $11
    ld a, [hl+]
    call nc, $fc02
    jp Jump_069_7bfc


    db $fc
    ret nc

    rst $38
    inc e
    rst $38
    ld [hl], c
    cp $04
    rst $38
    ld [$48f7], sp
    or a
    ret z

    scf
    rst $00
    jr c, jr_069_7880

    sbc b
    rla
    ld hl, sp-$48
    rst $38
    cp a
    rst $38
    ld sp, hl
    cp $f5
    ld a, [$fef9]
    jp nc, Jump_000_13ff

    rst $38
    ld [$0af7], sp
    rst $30
    adc d
    rst $30
    ldh [rIE], a

jr_069_7832:
    jr nc, @+$01

    ccf
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    adc a
    rst $38
    jr z, @+$01

    jr nz, @+$01

    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    ld a, a
    rst $38
    ld e, a
    rst $38
    jr @+$01

    ld [$77ff], sp
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    cp l
    cp $b3
    db $fc
    nop
    rst $38
    ld h, b
    sbc a
    db $10
    rst $38
    ld c, $ff
    ld d, $ef
    add b
    ld a, a
    ld e, [hl]
    and c
    ld l, h
    sub e
    ld a, b
    add a
    add sp, $07
    cp h
    ld a, a

jr_069_7880:
    ld a, [hl]
    rst $38
    db $fd
    cp $fd
    cp $fe
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, $ff
    adc d
    ld a, l
    ld d, c
    cp $df
    ldh a, [$ad]
    ld a, [c]
    cpl
    ldh a, [$7d]
    cp $ff
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    db $eb
    rst $38
    db $ed
    rst $38
    call nz, $c0ff
    rst $38
    sub c
    cp $91
    cp $f1
    rst $38
    ldh a, [rIE]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    xor a
    rst $18
    add e
    rst $38
    add hl, sp
    rst $00
    cp e
    ld b, a
    cp c
    ld b, a
    sbc a
    ld h, b
    ld a, l
    nop
    add $38
    rst $30
    jr c, jr_069_7914

    ld hl, sp+$4c
    ld hl, sp-$4e
    call z, $dea5
    sub h
    rst $28
    ld h, b
    sbc $bb
    ld a, [hl]
    ccf
    rst $38
    cp [hl]
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    db $fc
    ccf
    cp $3f
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    inc a
    rst $38
    rst $38
    ld a, a
    cp [hl]
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38

jr_069_7914:
    rst $18
    rst $38
    ld e, a
    rst $38
    cp a
    ld a, a
    ld a, $ff
    ld hl, $e7ff
    rst $38
    ld l, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, l
    cp a
    ld e, l
    cp a
    ld e, c
    cp a
    ld bc, $f1ff
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    db $ed
    di
    sub a
    jp hl


    adc h
    di
    dec sp
    call nz, $f48a
    add a
    ldh a, [$d2]
    pop hl
    db $fc
    jp $cfe7


    pop hl
    rst $00
    ldh [$c0], a
    add b
    xor $5f
    ldh [$d2], a
    pop hl
    add l
    jp $83f1


    ld a, a
    add e
    add b
    ld a, a
    rst $18
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ld a, d
    add a
    db $fd
    inc bc
    rst $20
    jr jr_069_79e2

    sbc h
    ld l, e
    sbc h
    dec de
    db $fc
    dec e
    cp $22
    rst $38
    ld a, b
    add a
    cp b
    rlca
    ld hl, sp+$07
    inc de
    xor $fe
    rst $38
    di
    rst $38
    db $ed
    di
    db $ec
    di
    ret nz

    rst $38
    inc c
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    cp $01
    ld a, a
    add b
    rst $08
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    add h
    rst $38
    adc [hl]
    rst $38
    rra
    rst $38
    rst $30
    rrca
    ei
    rlca
    ei
    rlca
    sbc a
    rst $38
    and a
    rst $18
    ld [hl], a
    adc a
    ld [hl], e
    adc a
    ld [hl], $c9
    ld a, [hl-]
    call nz, $b748
    inc hl
    rst $18
    or b
    rst $08
    db $db
    db $e4
    add sp, -$10
    ld h, h
    ld hl, sp-$27
    ld a, $0e
    rra
    ld c, $1c
    nop
    ld bc, $0709

jr_069_79e2:
    jr nc, jr_069_79f3

    ld bc, $bf7e
    ld b, b
    ld d, b
    xor a
    db $fc
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $38
    cp $fe

jr_069_79f3:
    rst $38
    ei
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ei
    rst $30
    ld d, e
    rst $38
    dec bc
    rst $30
    inc hl
    rst $38
    and a
    ld a, a
    ld a, a
    rst $38
    ld h, e
    rst $38
    inc bc
    rst $38
    ld bc, $10ff
    rst $28
    inc b
    rst $38
    rst $38
    rst $38
    add [hl]
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    jp Jump_069_63ff


    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    cp [hl]
    ld a, a
    dec hl
    inc e
    ld c, h
    ccf
    ld a, [hl+]
    db $fd
    add a
    ldh a, [$be]
    pop bc
    cp [hl]
    pop bc
    ld c, a
    add b
    ldh [rTAC], a
    ld d, l
    inc hl
    and $19
    ld [hl], a
    sbc b
    add d
    db $fc
    ld c, a
    or b
    or a
    ret z

    scf
    ret z

    and $f9
    db $fd
    rst $38
    pop hl
    rst $38
    ld h, b
    rst $38
    and c
    sbc $47
    ld hl, sp-$45
    ld a, h
    call nc, $c63f
    add hl, sp
    or e
    ld a, h
    cp c
    ld a, [hl]
    inc a
    rst $38
    inc hl
    db $fc
    rst $18
    jr nz, @+$01

    nop
    ld a, e
    add h
    add h
    cp $dc
    rst $38
    nop
    rst $38
    cpl
    ret nc

    rlca
    ld hl, sp+$2b
    call c, $8f74
    sub b
    rst $28
    or a
    ld a, b
    call nc, $e33b
    rra
    ld b, a
    cp a
    nop
    rst $38
    ld a, [bc]
    db $fd
    cpl
    ldh a, [$fc]
    db $e3
    ret c

    rst $20
    ldh a, [$cf]
    and b
    rst $18
    ret nz

    cp a
    scf
    rst $38
    ldh a, [rIF]
    ld bc, $0ffe
    ldh a, [$cc]
    di
    ret nz

    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $e3
    rst $38
    jp Jump_000_3fff


    rst $08
    ld e, c
    and $87
    ld hl, sp-$62
    ld sp, hl
    ld a, e
    cp a
    ld e, a
    ccf
    ld e, a
    ccf
    call $c733
    ld hl, sp-$03
    ld c, $fe
    rst $38
    rst $00
    rst $38
    sub a
    rst $28
    or a
    rst $08
    inc [hl]
    rst $08
    ld d, a
    adc h
    ld d, e
    adc h
    dec l
    sub b
    ld [hl], e
    add b
    and [hl]
    ld bc, $ff21
    rst $28
    rst $38
    rst $00
    rst $28
    rst $08
    rst $20
    db $e3
    rst $08
    and a
    rst $08
    xor a
    rst $00
    jp hl


    add a
    inc sp
    rst $08
    inc de
    rst $28
    ld [de], a

Call_069_7b07:
    rst $28
    add d
    rst $38
    add d
    rst $38
    db $eb
    rst $38
    rra
    ei
    dec de
    rst $38
    and a
    ld a, a
    ld a, c
    rst $38
    add hl, sp
    rst $38
    ld a, [de]
    db $fd
    inc h
    db $db
    ld a, [hl+]
    rst $00
    dec a
    add $8c
    rst $38
    db $fd
    rst $38
    adc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rla
    rst $28
    ld c, a
    cp a
    db $fc
    ccf
    ld l, h
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    cpl
    rst $18
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    rrca
    ld a, $f6
    rrca
    ld b, e
    sbc a
    db $e3
    jr jr_069_7bab

    inc l
    rrca
    ldh a, [$fa]

jr_069_7b5d:
    pop af
    db $f4
    rst $38
    ld a, $fd
    and $19
    ld b, [hl]
    jr c, jr_069_7b5d

    jr jr_069_7b90

    ret c

    and a
    ret c

    add $f8
    cp a
    ret nz

    sbc [hl]
    pop bc
    ld a, $c1
    call z, $e73f
    rra
    ld h, e
    sbc a
    rrca
    rst $38
    ld c, $ff
    adc [hl]

jr_069_7b7f:
    ld a, a
    adc [hl]
    ld a, a
    sbc $07
    ld a, $07
    rst $18
    rlca
    xor a
    rlca
    cp b
    rlca
    rst $38
    nop
    ld a, b
    add a

jr_069_7b90:
    ld l, h
    sbc a
    cp l
    ld a, [hl]
    di
    db $fc
    ld e, $e1
    db $fd
    inc bc
    jp Jump_000_033f


    rst $38
    or c
    rst $38
    adc h
    di
    ld e, [hl]
    and c
    ld a, b
    add a
    adc a
    ld [hl], b
    inc e
    db $e3
    ld [hl+], a

jr_069_7bab:
    rst $18
    nop

jr_069_7bad:
    rst $38
    ld bc, $87ff
    rst $38
    add h
    rst $38
    ld a, a
    add b
    ld hl, sp+$07
    nop
    rst $38
    rla
    rst $28
    rlca
    rst $38
    ld a, a
    rst $38
    ld d, e
    rst $38
    add e
    rst $38
    jr jr_069_7bad

    ld hl, sp-$19
    di
    rst $38
    pop hl
    cp $59
    ldh [$82], a
    ld a, l
    add l
    ld a, b
    ld e, d
    db $e4
    ld b, e
    db $ec
    sub l
    db $e3
    or c
    rrca
    add hl, sp
    rrca
    ccf
    rrca
    adc e
    ld a, a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    sub e
    ld a, h
    rst $10
    jr c, jr_069_7b7f

    ld a, e
    ld sp, $fbfe
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    ld a, [c]
    db $fd
    ld hl, sp-$09

Jump_069_7bfc:
    db $fc
    di
    ldh a, [rIE]
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    ldh [$1f], a
    push hl
    ld a, [de]
    pop hl
    ld e, $99
    ld a, [hl]
    inc e
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld c, $ff
    inc l
    rst $38
    xor e
    ld e, l
    ld b, a
    cp c
    ld h, a
    sbc c
    dec bc
    db $fd
    ld sp, hl
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    call nz, $37fb
    set 3, [hl]
    inc hl
    and d
    ld e, a
    or b
    rst $38
    add sp, -$01
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ei
    db $fc
    ld a, [$f8fd]
    rst $38
    cp a
    rst $38
    inc e
    rst $38
    jr c, @+$01

    sbc b
    rst $38
    dec e
    cp $a1
    cp $47
    cp b
    add a
    ld a, b
    ldh a, [rIE]
    add $f9
    rst $38
    ld b, b
    cp e
    ld b, h
    ld l, b
    ldh a, [$a0]
    ld b, c
    pop af
    nop
    and c
    ret nc

    ld [hl], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nc, @-$2a

    ccf
    xor l
    ld e, $93
    inc c
    xor $11
    jr nz, @+$01

    rst $38
    db $fc
    push hl
    ld hl, sp-$31
    ldh a, [$0e]
    pop af
    ld c, h
    or e
    adc $31
    ld h, l
    sbc e
    ld b, e
    cp a
    ld a, a
    rst $38
    rst $00
    rst $38
    dec bc
    rst $30
    rlca
    rst $38
    sbc e
    ld a, a
    inc de
    rst $38
    ld c, a
    cp a
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    cp a
    rst $18
    ccf
    cp h
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
    ld [hl], h
    rst $38
    ld a, h
    rst $38
    ld h, c
    rst $38
    pop bc
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    inc a
    jp $fe01


    ret nz

    rst $38
    call c, $dce3
    inc hl
    inc bc
    db $fc
    ld e, a
    and b
    sbc l
    ld h, e
    ld a, a
    inc bc
    sbc a
    ld h, b
    rst $08
    ldh [$fe], a
    ldh [$9f], a
    ldh a, [$f1]
    rst $38
    pop af
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp e
    ld a, a
    ld e, $ff
    sbc e
    ld a, a
    add e
    ld a, a
    pop de
    ld a, a
    push af
    ei
    add l
    ei
    add hl, de
    rst $38
    ld a, l
    rst $38
    inc bc
    rst $38
    ld bc, $21ff
    rst $38
    dec h
    rst $38
    push af
    rst $38
    rst $38

Call_069_7d03:
    rst $38
    reti


    rst $38
    sbc c
    rst $38
    dec d
    ei
    dec l
    db $d3
    db $ed
    inc de
    ret nc

    ccf
    db $10
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    daa
    sbc $26
    rst $18
    cp $ff
    cp $ff
    db $fd
    rst $38
    call $c5fb
    ei
    inc de
    rst $38
    adc a
    ld a, a
    ld e, a
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld l, a
    rst $38
    dec c
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ei
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    cp [hl]
    ld a, a
    ld l, b
    rst $38
    dec c
    db $e3
    inc a
    jp $0793


    daa
    sbc a
    ld d, a
    adc [hl]
    xor $1f
    ld hl, sp+$3f
    add $3f
    ld l, h
    rra
    ret nc

    ccf
    ld [$e3ff], sp
    inc e
    ld e, $e1
    inc bc
    rst $38
    ld hl, $c9ff
    ccf
    add a
    ld a, a
    dec h
    rst $18
    inc l
    rst $18
    ld b, b
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    pop af
    cp $e7
    ld hl, sp-$40
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
    rst $38
    rst $38
    ret nz

    rst $38
    ld bc, $f8fe
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $e1fe
    rst $38
    ld sp, hl
    cp $e6
    ld sp, hl
    call nz, Call_000_02fb
    rst $38
    ld bc, $00fe
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
    db $e3
    rst $38
    jp nz, $67fd

    ld hl, sp+$31
    cp $07
    ld hl, sp-$10
    rst $38
    rst $38
    rst $38
    ret c

    rst $20
    di
    db $fc
    db $fc
    rst $38
    db $76
    ld sp, hl
    rrca
    ldh a, [$cd]
    nop
    db $e3
    rra
    sbc a
    rst $38
    adc a
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
    adc a
    rst $38
    rla
    rst $28
    ld bc, $d7ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    reti


    rst $38
    jp $cfff


    rst $30
    rst $30
    rst $38
    add a
    rst $38
    pop af
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    ld l, l
    rst $38
    sbc a
    ld a, a
    ld d, a
    cp a
    rrca
    rst $38
    ld c, $ff
    inc e
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    add c
    rst $38
    pop hl
    rst $38
    pop af
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
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    rra
    rst $38
    dec e
    rst $38
    ld [hl], c
    adc a
    ld h, c
    rra
    cp b
    ld a, a
    ld a, [hl]
    add c
    ld a, [hl+]
    db $dd
    adc d
    db $fc
    ld c, $81
    rst $20
    rra
    ccf
    rst $38
    add hl, de
    and $78
    add a
    jp nc, $013d

    rst $38
    ld c, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    call c, $3ce3
    jp Jump_000_1fe0


    db $fc
    ccf
    ld [bc], a
    db $fd
    pop af
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    pop bc
    ld a, $fa
    dec b
    ret nz

    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rra
    inc sp
    rst $08

jr_069_7ea0:
    ld bc, $9dff
    db $e3
    ld a, c
    add a
    rst $08
    ccf
    adc l
    ld a, [c]
    db $fc
    inc bc
    nop
    rst $38
    ld [$0fff], sp
    rst $38
    ccf
    rst $38
    reti


    rst $38
    ld bc, $83fe
    ld a, h
    ld a, [de]
    push hl
    and $f9
    db $fc
    rst $38
    ld sp, hl
    db $fc
    rst $38
    ld sp, hl
    ccf
    ld sp, hl
    and a
    ld a, c
    daa
    ld sp, hl
    ld l, e
    pop af
    ldh a, [$fb]
    dec bc
    ld a, [c]
    adc [hl]
    ld [hl], b
    ld d, l
    ldh [$9c], a
    ldh [$34], a
    add b
    jr nz, jr_069_7ea0

    ld l, d
    push af
    or $fd
    db $fc
    rst $38
    ld hl, sp-$05
    ld a, [c]
    ld sp, hl
    ldh a, [$f9]
    ldh a, [$f9]
    and h
    ld sp, hl
    ret nz

    db $fd
    ret nc

    db $ed
    ldh [rIE], a
    reti


    rst $38
    dec de
    db $fd
    ld b, b
    cp l
    and e
    call c, $fcc3
    pop de
    xor $ea
    push af
    pop af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $10
    rst $38
    db $e3
    rst $38
    di
    rst $38
    and e
    rst $38
    add e
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    and a
    rst $38
    cp d
    rst $38
    cp d
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    ld [hl-], a
    rst $38
    ld a, $ff
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ld a, $ff
    inc a
    rst $38
    rra
    cp $1e
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    sbc [hl]
    rst $38
    ld b, h
    ei
    ld c, h
    add c
    ld [c], a
    dec e
    ld d, c
    jr nz, jr_069_7fd0

    add b
    ld [hl], d
    adc h
    cp $01
    inc l
    pop bc
    ldh a, [$80]
    ld h, a
    add b
    scf
    rst $08
    add e
    db $fc
    cp a
    ret nz

    dec de
    ldh [rSVBK], a
    rst $38
    or b
    ld a, a
    db $e4
    dec de
    ldh [$1f], a
    ld a, c
    cp $0e
    rst $38
    rst $38
    rst $38
    ld a, [$f8ff]
    rst $38
    ld [hl], b
    rst $38
    ld [hl], e
    db $fc
    db $fc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    cp $ff
    ldh a, [rIE]
    ld b, $f9
    adc a
    ldh a, [$f0]
    rst $38
    adc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    inc l
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld c, $ff
    dec de
    rst $38
    ld c, a
    cp a
    ret


    cp a
    adc c
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a

jr_069_7fd0:
    ld h, h
    ccf
    ld h, b
    ccf
    ld h, d
    dec a
    sbc [hl]
    ld h, c
    sbc a
    ld h, c
    cp l
    ld h, e
    and h
    ld [hl], e
    inc l
    di
    db $fd
    ld a, [c]
    di
    cp $b7
    ld a, [hl]
    ld a, a
    ld a, $d0
    ccf
    ret nz

    ccf
    ld a, e
    rrca
    ld d, e
    cpl
    sub a
    ld l, e
    or l
    ld l, e
    add hl, bc
    rst $30
    db $db
    push hl
    scf
    jp hl


    sbc b
    ld h, a
    and h
    ld [hl], e
    db $cc
    inc sp
