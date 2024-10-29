SECTION "ROM Bank $09c", ROMX[$4000], BANK[$9c]

    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0301
    inc bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc

jr_09c_4057:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    pop af
    ld c, $f3
    inc c
    pop hl
    ld e, $c6
    jr c, jr_09c_4057

    jr nz, @-$50

    ld d, b
    ld a, h
    add b
    db $fd
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
    or h
    dec bc
    ld hl, $d71e
    jr z, @-$77

    ld a, b
    xor l
    ld d, b
    ld a, [$dc00]
    nop
    adc [hl]
    ld bc, $018e
    ld e, l
    ld [bc], a
    ld e, $01
    dec e
    ld [bc], a
    dec de
    inc b
    rra
    nop
    ld [hl-], a
    nop
    jr nc, jr_09c_40aa

jr_09c_40aa:
    ld l, b
    nop
    ld [bc], a
    nop
    ld hl, $2500
    nop
    ld bc, $0b00
    nop
    inc bc
    nop
    rla
    nop
    daa
    nop
    daa
    nop
    ld c, a
    nop
    rrca
    nop
    rra
    nop
    scf
    nop
    daa
    nop
    ld c, a
    nop
    rra
    nop
    ld e, $01
    ld d, $01
    rla
    nop
    ld b, a
    nop
    ld l, $01
    ld e, $01
    ld e, $01
    inc a
    inc bc
    inc a
    inc bc
    ld a, h
    inc bc
    ld a, b
    rlca
    ld a, b
    rlca
    jp nc, $d22d

    dec l
    pop de
    ld l, $c1
    ld a, $d9
    ld h, $d2
    dec h
    or e
    ld b, h
    or a
    ld b, b
    xor [hl]
    ld b, b
    ld l, l
    nop
    ld l, h
    nop
    ld a, [hl]
    nop
    ld a, l
    nop
    inc l

Call_09c_40ff:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    stop
    stop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    ld b, $00
    ld b, h
    add d
    ld b, h
    adc b
    ld b, h
    sbc c
    ld b, e
    cp b
    ld b, d
    or h
    ld e, b
    and h
    ld e, [hl]
    and c
    ld e, a
    and b
    ld de, $0bee
    db $f4
    rra
    ldh [$0b], a
    db $f4
    dec a
    jp nz, $d629

    dec d
    ld [$d12e], a
    ld d, a
    xor b
    ld l, d
    sub l
    ld b, c
    cp [hl]
    ld b, d
    cp l
    dec h
    jp c, $da25

jr_09c_414a:
    ld e, c
    and [hl]
    ld e, c
    and [hl]
    ld d, b
    xor a
    ld d, c
    xor [hl]
    inc sp
    call z, $cc33
    ld [hl], l
    adc d
    ld a, b
    add a
    ld a, e
    add h
    xor [hl]
    ld d, c
    db $dd
    ld [hl+], a
    xor b
    ld d, a
    pop de
    ld l, $b1
    ld c, [hl]
    ld d, c
    xor [hl]
    xor b
    ld d, a
    ld l, c
    sub [hl]
    and d
    ld e, l
    db $e3
    inc e
    swap h
    ld hl, sp+$07
    call z, $8d03
    ld [bc], a

jr_09c_4178:
    adc a
    nop
    ld c, [hl]
    nop
    sbc l
    nop
    cp l
    nop
    db $76
    add hl, bc
    ld a, l
    ld [bc], a
    pop af
    ld c, $c2
    dec a
    push hl
    jr jr_09c_4178

    db $10
    db $dd
    jr nz, jr_09c_414a

    nop
    ld a, e
    nop
    scf
    ld b, b
    or $01
    ld l, [hl]
    add c
    ld l, h
    add e
    call c, $bc03
    inc bc

jr_09c_419e:
    cp $01
    db $fc
    inc bc
    ret c

    daa
    db $f4
    dec bc
    db $f4
    dec bc
    pop af
    ld c, $f1
    ld c, $e0
    rra
    pop hl
    ld e, $e1
    ld e, $c1
    ld a, $c3
    inc a
    jp $c33c


    inc a
    add a
    ld a, b
    add e
    ld a, h
    add e
    ld a, h
    inc de
    db $ec
    adc a
    ld [hl], b
    cpl
    ret nc

    cpl
    ret nc

    ld c, a
    or b
    ld e, a
    and b
    rst $10
    jr z, jr_09c_419e

    jr nc, jr_09c_41e0

    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld l, a
    sub b

jr_09c_41e0:
    ld a, a
    add b
    ld a, e
    add h
    rst $38
    nop
    or a
    ld c, b
    rst $38
    nop
    ld l, a
    add b
    ld e, a
    add b
    cp a
    nop
    cp [hl]
    nop
    ld [hl], h
    nop
    rst $30
    nop
    ld c, a
    and b
    ld c, [hl]
    add b

jr_09c_41fa:
    adc $00
    sbc [hl]
    nop
    dec e
    nop
    dec a
    nop
    dec de
    nop
    rra
    nop
    ld a, $00
    ld a, $00
    sbc [hl]
    nop
    rra
    nop
    ld e, $00
    dec c
    db $10
    dec e
    nop
    dec sp
    nop
    dec sp
    nop
    ld a, e
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld e, a
    jr nz, jr_09c_42a4

    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    xor $11
    cp [hl]
    ld b, c
    sbc $21
    cp h
    ld b, e
    call c, $ad23
    ld d, d
    ld e, a
    and b
    xor c
    ld d, [hl]
    ld e, e
    and h
    xor a
    ld d, b
    ld e, l
    and d
    xor l
    ld d, d
    ld d, a
    xor b
    xor a
    ld d, b
    push de
    ld a, [hl+]
    ld l, e
    sub h
    rst $10
    jr z, jr_09c_41fa

    ld d, [hl]
    ld a, a
    add b
    xor c
    ld d, [hl]
    dec a
    jp nz, Jump_09c_5aa5

    ld [hl], a
    adc b
    and [hl]
    ld e, c
    ld d, [hl]
    xor c
    adc b
    ld [hl], a
    ld c, l
    or d
    adc c
    db $76
    ld [hl], a
    adc b
    xor c
    ld d, [hl]
    ld d, l
    xor d
    db $ed
    ld [de], a
    rra
    ldh [rNR30], a
    pop hl
    ld c, $f1
    db $10
    rst $28
    db $10
    rst $28
    add hl, sp
    add $d3
    inc c
    or l
    ld c, d
    ld hl, sp+$07
    pop bc
    ld e, $21
    sbc [hl]
    db $e3
    inc e
    add $39
    add h
    ld a, d
    ret z

    ld [hl], $52
    xor h
    xor l
    ld d, b
    ld a, [$d801]
    ld [hl+], a
    and [hl]
    ld d, b
    ld b, l
    adc b
    ld a, l
    add b
    ld l, e
    add h
    rst $30
    nop
    ld a, [c]
    ld [$005d], sp
    add hl, sp
    nop

jr_09c_42a4:
    di
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    call c, $dc03
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    db $fd
    nop
    ld sp, hl
    nop
    rst $10
    nop
    ld [hl], a
    nop
    ei
    nop
    ei
    nop
    db $fc
    nop
    xor $00
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ld l, a
    nop
    xor $00
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp l
    nop
    db $fd
    nop
    push af
    nop
    rst $30
    nop
    rst $30
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    xor $00
    sbc $00
    sbc l
    nop
    ei
    nop
    rst $38
    nop
    rst $38

jr_09c_4311:
    nop
    db $eb
    inc d
    rst $28
    db $10
    rst $30
    ld [$28d7], sp
    cp $01
    cp l
    ld b, d
    cp l
    ld b, d
    cp $01
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    or a
    ld c, b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    cp [hl]
    ld b, c
    cp $01
    cp $01
    xor l
    ld d, d
    ld [hl], a
    adc b

Jump_09c_433c:
    ld a, a
    add b
    ld l, a
    sub b
    ld l, l
    sub d
    ld e, a
    and b
    ld [hl], d
    adc l
    ld e, a
    and b
    jr c, jr_09c_4311

    ld e, h
    and e
    sbc c
    ld h, [hl]
    dec hl
    call nc, $d52a
    ld a, [hl]
    add c
    xor b
    ld d, a
    call c, Call_000_2223
    db $dd
    db $76
    adc c
    ld [hl+], a
    db $dd
    call nc, $802b
    ld a, a
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $e1
    ld [$18f7], sp
    rst $20
    scf
    ret nz

    and l
    ld b, d
    ld [c], a
    dec b
    add $01
    call nz, $8403
    inc bc
    dec h
    ld [de], a
    ld a, e
    inc b
    ld l, a
    db $10
    ld a, a
    nop
    ld l, a
    db $10
    ld e, [hl]
    ld bc, $005f
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    push af
    ld [bc], a
    db $fd
    ld [bc], a
    ld [hl], a
    ld [$08f3], sp
    ld l, a
    db $10

jr_09c_43ac:
    xor $11
    jp hl


    ld [de], a
    rst $18
    nop
    ld a, a
    add b
    rst $18
    jr nz, jr_09c_43ac

    nop
    ccf
    nop
    rst $38
    nop
    xor a
    ld d, b
    rst $30
    nop
    db $76
    adc c
    cp $01
    ld a, a
    nop
    cp $01
    db $ed
    ld [bc], a
    xor l
    ld [bc], a
    db $fd
    ld [bc], a
    cp a
    nop
    db $db
    jr nz, @-$4f

    ld b, b
    xor [hl]
    ld b, c
    rst $00
    ld [$01fe], sp
    dec a
    add d
    rst $38
    nop
    ld a, l
    ld [bc], a
    db $76
    add hl, bc
    cp l
    ld [bc], a
    or $01
    ld l, l
    ld [bc], a
    sbc $01
    rst $18
    nop
    ld a, [$f505]
    ld a, [bc]
    cp $01
    db $fd
    ld [bc], a
    ld [$fd15], a
    ld [bc], a
    sbc $01
    db $dd
    ld [bc], a
    jp c, $fd05

    ld [bc], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, d
    dec b
    push af
    ld a, [bc]
    cp $01
    db $fd
    ld [bc], a
    ld a, [$7d05]
    add d
    ld a, d
    add l
    db $fd
    ld [bc], a
    ld [$fd15], a
    ld [bc], a
    ret c

    daa
    ld [hl], l
    adc d
    xor d
    ld d, l
    ld d, c

jr_09c_441f:
    xor [hl]
    and [hl]
    ld e, c
    ld b, l
    cp d
    ld [$5515], a
    xor d
    ld a, [$7705]
    adc b
    ld a, [hl+]

jr_09c_442d:
    push de
    ld a, c
    add [hl]
    cp d
    ld b, l
    ld [hl], l
    adc d
    rst $38
    nop
    db $fd
    ld [bc], a
    swap h
    push de
    ld a, [hl+]
    xor e
    ld d, h
    ld e, h
    and e
    xor d
    ld d, l
    ld [hl], h
    adc e
    xor h
    ld d, e
    ld e, b
    and a
    and b
    ld e, a
    db $10
    rst $28
    jr nz, jr_09c_442d

    jr nc, jr_09c_441f

    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    db $10
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
    ccf
    ret nz

    db $76
    add b
    db $ed
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ld a, e
    add b
    ld [hl], a
    add b

jr_09c_4480:
    ld [hl], a
    add b
    ld l, a
    add b
    ld l, [hl]
    add b
    xor $00
    rst $18

jr_09c_4489:
    jr nz, jr_09c_4489

    nop
    db $fd
    nop
    db $fd
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_09c_44f8

    and b
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
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_09c_4480

    ld d, b
    ld d, a
    xor b
    cp a
    ld b, b
    ld d, a
    xor b
    ei
    inc b
    ld e, a
    and b
    xor e
    ld d, h
    ld d, a
    xor b
    db $eb
    inc d
    push de
    ld a, [hl+]
    cp e
    ld b, h
    push de
    ld a, [hl+]
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld e, l
    and d
    cp d
    ld b, l
    ld d, a
    xor b
    xor a
    ld d, b
    ld d, a
    xor b

jr_09c_44f8:
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld d, a
    xor b
    xor a
    ld d, b
    ld d, l
    xor d
    cp e
    ld b, h
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, l
    xor d
    xor a
    ld d, b
    ld d, l
    xor d
    cp d
    ld b, l
    ld d, a
    xor b
    cp $01
    ld d, l
    xor d
    rst $28
    inc d
    ld e, a
    and h
    xor a
    ld d, d
    ld d, a
    xor d
    xor a
    ld d, e
    ld d, a
    xor c
    adc a
    ld [hl], c
    ld e, a
    and c
    rst $08
    ld sp, $c937
    xor a
    ld d, c
    ld d, l
    xor e
    adc c
    ld [hl], a
    ld d, l
    xor e
    adc c
    ld [hl], a
    ld e, [hl]
    and c
    ld a, [hl+]
    push de
    dec d
    db $eb
    dec l
    db $d3
    dec e
    db $e3
    dec e
    db $e3
    add hl, de
    rst $20
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
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    pop af
    nop
    di
    nop
    rst $30
    nop
    rst $38
    and $00
    ld b, h
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, d
    nop
    ei
    nop
    ld a, d
    ld bc, $00eb
    ld l, d
    ld bc, $00ef
    and $01
    ld sp, hl
    ld [bc], a
    cp $01
    db $ec
    inc bc
    ld a, [$f501]
    ld [bc], a
    or $01
    push af
    ld [bc], a
    rst $28
    nop
    db $ed
    ld [bc], a
    xor $01
    db $fd
    ld [bc], a
    ld a, [$df05]
    nop
    jp c, $d705

    ld [$05fa], sp
    push af
    ld a, [bc]
    xor $11
    rst $38
    nop
    ld a, [$fd05]
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f705]
    ld [$15ea], sp
    rst $30
    ld [$05fa], sp
    rst $30
    ld [$05fa], sp
    push af
    ld a, [bc]
    ld a, [$fd05]
    ld [bc], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld [$ff15], a
    nop
    jp hl


    ld d, $f7
    ld [$11ee], sp
    push de
    ld a, [hl+]
    ld [$d515], a
    ld a, [hl+]
    db $eb
    inc d
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    push af
    ld a, [bc]
    xor d
    ld d, l
    db $dd
    ld [hl+], a
    and d
    ld e, l
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor e
    ld d, h
    call nc, $ab2b
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, h
    xor e
    adc b
    ld [hl], a
    ld b, h
    cp e
    ret z

    scf
    ld d, h
    xor e
    add d
    ld a, l
    ld d, l
    xor d
    ret


    ld [hl], $54
    xor e
    call nz, $d43b
    dec hl
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ld h, c
    sbc a
    ld [c], a
    rra
    ld b, d
    cp a

jr_09c_4610:
    call nz, $c43f
    ccf
    ld c, h
    cp a
    ld c, b
    cp e
    ld [$00fb], sp
    di
    add d
    di
    and $f7
    ld h, d
    di
    ld b, d
    db $d3
    rst $00
    rst $00
    add e
    jp Jump_000_0901


    add c
    db $fd
    add c
    push af
    pop hl
    rst $30
    add c
    add d
    add c
    ld [c], a
    ld bc, $83ea
    db $eb
    rst $38
    rst $38
    xor a
    rst $38
    add [hl]
    rst $38
    sub $ff
    sub $ff
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld a, b
    rst $38
    ld l, b
    rst $38
    ld l, b
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    sbc a
    ld [hl], b
    ld e, a
    or b
    sbc a
    ld [hl], b
    ld e, a
    or b
    sbc a
    ld [hl], b
    ld e, a
    or b
    sbc a
    ld [hl], b
    rst $18
    jr nc, jr_09c_4610

    ld [hl], b
    ld e, a
    or b
    sbc a
    ld [hl], b
    ld e, a
    or b
    sbc a
    ld [hl], b
    ld e, a
    or b
    sbc a
    ld [hl], b
    ld e, a
    or b
    rst $18
    jr nc, jr_09c_46a2

    ldh a, [$8f]
    ld a, b
    ld c, a
    cp b
    rst $08
    jr c, jr_09c_46da

    cp b
    adc a
    ld a, b
    ld c, a
    cp b
    adc $38
    adc $38
    ld c, $f8
    xor [hl]
    ld e, b
    xor $18
    adc $38
    xor [hl]
    ld e, b
    adc $38
    xor a
    ld e, b

jr_09c_46a2:
    ld c, [hl]
    cp c
    adc l
    ld a, d
    jp $833c


    ld a, h
    ld b, e
    cp h
    add e
    ld a, h
    inc bc
    db $fc
    jp Jump_09c_433c


    cp h
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    inc bc
    db $fc
    ld b, e
    cp h
    jp Jump_09c_433c


    cp h
    jp Jump_09c_433c


    cp h
    jp Jump_09c_433c


    cp h
    jp $833c


    ld a, h
    add e
    ld a, h
    jp $833c


    ld a, h

jr_09c_46da:
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp-$79
    ld a, b
    add a
    ld a, b
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, a
    cp b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$27
    ld hl, sp+$24
    rst $38
    ld [$08ff], sp
    rst $38
    ld de, $10ff
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    ld [$00f7], sp
    rst $38
    daa
    ret c

    nop
    rst $38
    nop
    rst $38
    nop
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
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    inc a
    rra
    rra
    inc e
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
    rst $18
    rra
    sbc a
    rrca
    add hl, de
    rrca
    add hl, de
    rrca
    ld de, $130f
    rrca
    inc de
    rrca
    rra
    dec bc
    cpl
    inc de
    ld e, a
    inc hl
    cp a
    ld b, a
    ld a, a
    add [hl]
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    db $eb
    nop
    db $eb
    nop
    db $eb
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, a
    nop
    xor $00
    cp $00
    inc a
    nop
    db $ec
    nop
    ld sp, hl
    nop
    add sp, $00
    add sp, $00
    add sp, $00
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    call nc, $dd00
    nop
    adc l
    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    adc b
    nop
    add h
    nop
    call nz, $c400
    nop
    and h
    nop
    xor $00
    xor $00
    ld a, [$fa00]
    nop
    ld a, [$ea00]
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld b, c
    cp [hl]
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, $f8ce
    rlca
    nop
    rst $38
    rra
    ldh [rIF], a
    ldh a, [rSVBK]
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    ld a, b
    ld [bc], a
    ret nz

    ld [bc], a
    nop
    ld [bc], a
    nop
    jp nz, $ffc0

    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    di
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
    add b
    cp a
    ret nz

    rst $18
    and b
    rst $28
    ld l, [hl]
    ld h, c
    adc a
    and b
    adc a
    and b
    rrca
    and b
    rrca
    and b
    rrca
    and b
    adc a
    and b
    rrca
    and b
    nop
    xor a
    xor a
    and b
    cpl
    and b
    xor a
    and b
    xor a
    and b
    xor a
    and b
    cpl
    and b
    xor a
    and b
    and b
    and b
    cp a
    or h
    rst $18
    sbc a
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rla
    nop
    dec d
    nop
    ld b, c
    nop
    ld c, d
    nop
    sbc e
    nop
    cp e
    nop
    cp e
    nop
    or d
    nop
    sub d
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
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
    nop
    nop
    nop
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
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    call $cd00
    nop
    ld d, [hl]
    nop
    or $00
    db $f4
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09c_4911:
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
    sbc a
    nop
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    ldh [$1f], a
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
    add a
    ld a, b
    jr nz, jr_09c_4911

    nop
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $ff00


    ld [bc], a
    nop
    ld b, b
    rlca
    ld [bc], a
    ld a, h
    ld [bc], a
    add b
    ld b, b
    nop
    nop
    nop
    ld b, d
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ld b, d
    nop
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    di
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
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rSB]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    ret nz

    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    ldh a, [rP1]
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    cp $00
    or $00
    db $f4
    nop
    ret nz

    nop
    ret nz

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
    sub b
    nop
    pop de
    nop
    ld [hl], c
    nop
    ld l, c
    nop
    ld l, c
    nop
    ld c, d
    nop
    ld c, d
    nop
    rst $38
    inc bc
    jr c, @+$01

    ld c, l
    rst $38
    rst $38

jr_09c_49db:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, [hl]
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
    inc bc
    rst $38
    nop
    rst $38
    jr jr_09c_49db

    ldh [$1f], a
    add b
    ld a, a
    inc b
    ei
    db $10
    rst $28
    ld b, b
    cp a
    nop
    rst $38
    ld bc, $0178
    ret nz

    ld bc, $4100
    nop
    dec b
    nop
    ld b, l
    nop
    dec b
    nop
    ld b, l
    nop
    or d
    ld c, l
    or d
    ld c, l
    ld [hl+], a
    db $dd
    ld a, [$fffd]
    rst $38
    rst $38
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
    rst $20
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
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
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], $00
    ld e, $00
    inc e
    nop
    inc e
    nop
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1100
    nop
    dec de
    nop
    sbc e
    nop
    and [hl]
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld b, b
    nop
    ld b, e
    nop
    db $fc
    inc bc
    pop bc
    rst $38
    and b
    rst $38
    ld de, $f0ff
    rst $38
    cp $ff
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

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
    nop
    rst $38
    and b
    rlca
    and d
    ld bc, $00a1
    and c
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and h
    nop
    ld e, e
    and h
    ld e, c
    and [hl]
    ld c, e
    or h
    ld c, e
    or h
    jp hl


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
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    cp $ff
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
    ld a, [hl]
    ld bc, $007f
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
    nop
    rrca
    nop
    ldh a, [rNR10]
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    ldh [rIE], a
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    sbc a
    nop
    rst $10
    nop
    rst $10
    nop
    rst $10
    nop
    or $00
    ld hl, sp+$00
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld h, [hl]
    nop
    ld h, d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld d, a
    nop
    dec b
    nop
    ld b, a
    nop
    ld e, a
    nop
    ld a, a
    nop

jr_09c_4b7c:
    ld l, a
    nop
    rst $28
    nop
    cp a
    nop
    cp a
    nop
    cp b
    rlca
    cp d
    dec b
    ld a, [$ff05]
    dec b
    ld a, a
    dec b
    ccf
    rlca
    ccf
    nop
    rst $38

jr_09c_4b93:
    nop
    nop
    rst $38
    ld e, h
    rst $38
    add hl, sp
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    dec b
    rst $38
    sbc l
    rst $38
    rrca
    rst $38
    jr @+$01

    add b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_09c_4b93

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $00de
    rst $38
    rrca
    ldh a, [rP1]
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
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$8f], a
    jr nc, jr_09c_4b7c

    inc e
    cp c
    ld b, $9c
    inc bc
    dec e
    nop
    ld l, d
    sub l
    ld a, [$7a05]
    add l
    ld a, [$3a05]
    push bc
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
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
    ccf
    ret nz

    ret nz

    ccf
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    daa
    nop
    ld b, a
    nop
    ld e, e
    nop
    db $db
    nop
    rlc b
    ld c, c
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    nop
    inc l
    nop
    jr nz, jr_09c_4c4a

jr_09c_4c4a:
    dec l
    nop
    inc l
    nop
    inc c
    nop
    cp l
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    ld c, a
    nop
    rst $30
    nop
    rst $38
    nop
    inc bc
    db $fc
    xor e
    ld d, h
    xor e
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    push af
    rst $38
    rra
    rst $38
    ret nz

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
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
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
    ld hl, $00de
    rst $38
    ld hl, sp+$07
    ld a, a
    add b
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    or a
    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    and h
    rst $38
    sub l
    rst $38
    add h
    ld a, a
    add b
    ccf
    pop de
    adc a
    db $f4
    and a
    cp b
    sub c
    sbc [hl]
    cp h
    xor a
    cp [hl]
    sub a
    rst $38
    xor e
    rst $38
    sub l
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
    ldh a, [rSB]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    nop
    db $fc
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
    rrca
    nop
    ldh a, [rP1]
    rst $38
    pop af
    rst $38
    rrca
    rst $38
    ld a, [c]
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ret c

    nop
    call nc, Call_09c_5400
    nop
    ld c, h
    nop
    ld e, h
    nop
    ld l, l
    nop
    db $ec
    nop
    ld l, h
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    adc b
    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret nz

    nop
    ldh [rP1], a
    pop hl
    nop
    db $e3
    nop
    jp nc, $d700

    nop
    push de
    nop
    ret c

    nop
    ld c, b
    nop
    ld h, e
    nop
    ld hl, $ff00
    nop
    nop
    rst $38
    rst $10
    rst $38
    ret nz

    rst $38
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
    add b
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    ld a, $07
    ld hl, sp+$07
    ld hl, sp-$40
    ccf
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    ld a, c
    rst $38
    di
    rst $38
    rst $38
    ld a, l

Call_09c_4db2:
    rst $38
    push af
    rst $38
    ccf
    rst $38
    ld a, e
    ccf
    rst $38
    sbc a
    rst $30
    cp $7f
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    rst $38
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rst $38
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
    rlca
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
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
    rst $18
    rlca
    rst $18
    inc bc
    xor a
    inc bc
    xor a
    inc bc
    ld l, a
    inc bc
    ld l, a
    inc bc
    rst $28
    inc bc
    rst $28
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    sbc a
    inc bc
    sbc a
    inc bc
    sbc a
    inc bc
    rst $38
    inc bc
    ld a, a
    ld bc, $017f
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ff01
    jp hl


    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    ld bc, $40fe
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    ld c, h
    rst $38
    add h
    rst $38
    dec d
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub b
    rst $38
    rst $38
    ld bc, $80ff
    rst $38
    nop
    ld hl, sp-$69
    ret nz

    ccf
    rlca
    ld sp, hl
    ccf
    ret nc

    rst $38
    dec d
    rst $38
    sub b
    rst $38
    push af
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    ld sp, hl
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
    add b
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    jp nz, $c0fd

    rst $38
    pop de
    cp $d9
    cp $d5
    cp $b9
    cp $d0
    rst $38
    add c
    cp $91
    cp $94
    rst $38
    or b
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    ret z

    rst $38
    jp c, $d9ff

    rst $38
    db $db
    rst $38
    call c, $ddff
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    ldh a, [rIE]
    db $fc
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
    ret z

    scf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    adc a
    cp $e7
    ld a, [hl-]
    pop af
    ld l, $fc
    inc hl
    cp $21
    rst $38

jr_09c_4f7d:
    jr nz, @+$01

    jr nz, jr_09c_4f7d

    inc hl
    ldh [$3f], a
    inc bc
    db $fc
    rra
    ldh a, [rIE]
    jr nc, @+$01

    jr nc, @+$01

    inc [hl]
    rst $38
    ld [hl], b
    ld [hl], d
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

jr_09c_4f9f:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $e7ff
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    ret nc

    ld e, a
    and b
    xor a
    ld d, b
    ld d, a
    xor b
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld c, d

jr_09c_4fc1:
    or l
    ld d, c
    xor [hl]
    ld [bc], a
    db $fd
    ld b, h

jr_09c_4fc7:
    cp e
    add hl, bc
    or $20
    rst $18
    inc d
    db $eb
    jr nc, jr_09c_4f9f

    and h
    ld e, e
    inc d
    db $eb
    sbc b
    ld h, a
    adc c
    db $76
    ld hl, $00de
    rst $38
    inc h
    db $db
    inc h
    db $db
    jr nz, jr_09c_4fc1

    ld bc, $30fe
    rst $08
    jr nz, jr_09c_4fc7

    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    nop
    rst $38
    add b
    rst $38
    or b
    rst $38
    or b
    rst $38
    sub h
    rst $38
    reti


    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    push hl
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    ld a, [c]
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
    scf
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ld [hl], e
    adc h
    rra
    ldh [rIE], a
    rst $38
    rst $38
    rst $18
    rst $38
    sbc $ff
    adc h
    rst $38
    adc h
    rst $38
    adc h
    sbc b
    rst $20
    add c
    cp $03
    cp $79
    sbc [hl]
    db $fc
    ld c, a
    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    jp nc, $52ff

    ld d, c
    rst $38
    ld e, c
    rst $38
    reti


    rst $38
    db $dd
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
    add d
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
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ld a, a

jr_09c_509b:
    adc a
    xor a
    ld e, a
    ld e, a
    xor a
    xor a
    ld e, a
    ld e, a
    xor a
    xor a
    ld e, a
    ld c, h
    cp a
    ld hl, $00de
    rst $38
    ld b, b

jr_09c_50ad:
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_09c_509b

    inc h
    db $db
    ld b, h
    cp e
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_09c_50ad

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $09fe
    or $08
    rst $30
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add c
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    or $ff
    db $f4
    rst $38
    db $fc
    rst $38
    push af

Call_09c_50ff:
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
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    add b
    rst $38
    ldh [rIE], a
    db $fd
    cp $3f
    rst $38
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
    rra
    ldh [$ed], a
    ld [de], a
    sbc a
    ld h, b
    ei
    inc b
    and $19
    rst $38
    nop
    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    ld sp, hl
    rst $38
    push af
    db $fc
    ld h, a
    ldh a, [$df]
    rlca
    ld a, [$d03f]
    rst $38
    ld d, d
    rst $38
    db $10
    rst $38
    ld d, b
    ld a, a
    sub d
    ccf
    jp z, $e89f

    rst $08
    ld hl, sp-$0d
    cp h
    ld hl, sp+$2f
    cp $2f
    rst $38
    dec l
    rst $38

jr_09c_5165:
    inc b
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    rst $38
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
    cp $ff
    ld hl, sp-$09
    ret z

    rst $30
    jr nc, jr_09c_5165

    ld b, h
    cp e
    inc b
    ei
    nop
    rst $38
    ld bc, $08fe
    rst $30
    sub h
    ld l, e
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    cp a
    add h
    ld a, e
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    dec sp
    call nz, Call_09c_4db2
    add b
    ld a, a
    nop
    rst $38
    ld [de], a
    db $ed
    ld b, $f9
    ld d, [hl]
    xor c
    rla
    add sp, $47
    cp b
    ccf
    ret nz

    ld a, a

jr_09c_51c7:
    add b
    db $fd
    ld [bc], a
    ld a, h
    add e
    ld [hl], h
    adc e
    inc [hl]
    bit 6, h
    adc e
    inc [hl]
    set 7, h
    inc bc
    ld h, b
    sbc a
    ld c, b
    or a
    ld b, b
    cp a
    ld b, b
    cp a
    ld [$58f7], sp
    and a
    ld e, b
    and a
    ld d, b
    xor a
    jr nz, jr_09c_51c7

    jr nc, @+$01

    ld c, b
    rst $38
    ld [$80ff], sp
    rst $38
    sub b
    rst $38
    nop
    rst $38
    ld [$d8ff], sp
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nc

    rst $38
    call c, $7fff
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
    rlca
    ld hl, sp+$01
    cp $80
    ld a, a
    ccf
    ret nz

    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    ld bc, $e0fe
    rst $38
    inc d
    rst $38
    ld bc, $00ff
    rst $38
    ld [hl], b
    adc a
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $18
    jr nz, @-$3e

    ccf
    rst $38
    rst $30
    rst $38
    rst $10
    add a
    rst $38
    rra
    rst $30
    rst $38
    add a
    rst $38
    add a
    rst $38
    sub e
    rst $38
    add e
    add e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld c, e
    rst $38
    ld b, e
    rst $38
    ld b, c
    rst $38
    ld hl, $29ff
    rst $38
    ld a, a
    and c
    ccf
    pop hl
    adc a
    pop af
    db $e3
    ld a, l
    pop af
    ld e, $fc
    sbc a
    rst $38
    sub a
    rst $38
    rst $38
    dec sp
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
    rst $38
    rst $38
    db $fc

jr_09c_5289:
    rst $38
    ldh a, [rIE]
    pop bc
    cp $01
    cp $10
    rst $28
    ld bc, $01fe
    cp $08
    rst $30
    ld l, b
    sub a
    nop
    rst $38
    ld [hl+], a
    db $dd
    adc d
    ld [hl], l
    ld [bc], a
    db $fd
    nop
    rst $38
    ld h, b
    sbc a
    ret nz

    ccf
    jr nz, jr_09c_5289

    add $39
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld b, b
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    ld h, b
    sbc a
    ld b, b
    cp a
    nop
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ldh [$1f], a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    add b
    ld a, a
    add b
    ld a, a
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    nop
    rst $38
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
    ld de, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_09c_534c

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, de
    ld a, [de]

jr_09c_534c:
    dec de
    inc e
    dec e
    add hl, bc
    ld e, $1f
    jr nz, jr_09c_5375

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld [bc], a
    ld [bc], a
    jr z, jr_09c_5387

    ld a, [hl+]
    add hl, bc
    ld [bc], a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09c_5399

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09c_5379

    ld [bc], a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a

jr_09c_5375:
    dec a
    ld a, $3f
    ld b, b

jr_09c_5379:
    inc d
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, e

jr_09c_5387:
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
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld d, [hl]
    ld d, a

jr_09c_5399:
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
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
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
    add hl, bc
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
    add hl, bc
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    add hl, bc
    add hl, bc
    sub [hl]
    sub a
    sbc b
    sbc c
    ld c, c
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
    ld c, c
    sbc d
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b

Call_09c_5400:
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
    jp nz, Jump_000_14c3

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    inc d
    ret nc

    pop de
    jp nc, $d4d3

    push de
    inc d
    inc d
    sub $d7
    ret c

    reti


    jp c, $dcdb

    inc d
    inc d
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eb14], a
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    inc d
    db $f4
    push af
    or $f7
    ld hl, sp+$14
    db $e4
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0214
    inc bc
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    nop
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    ld b, $00
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld h, $00
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    ld bc, $0909
    add hl, bc
    add hl, bc
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
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, $ff
    ld c, $ff
    ld [bc], a

jr_09c_55e5:
    rst $38
    nop

jr_09c_55e7:
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
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
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
    jr nz, jr_09c_55e5

    jr nz, jr_09c_55e7

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
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, [$55f5]
    xor d
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
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
    cp a
    ld b, b
    ld e, a
    and b
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    and d
    ld e, l
    ld b, c
    cp [hl]
    ld a, [hl+]
    push de
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
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    cpl
    rst $38
    call c, $bfff
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
    rst $38
    rst $38
    ld hl, sp-$01
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$bf]
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
    rst $38

jr_09c_56e7:
    nop
    rst $38
    nop
    rst $38
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
    cp a
    ld b, b
    ld d, a
    xor b
    xor e
    ld d, h
    dec d
    ld [$55aa], a
    ld d, b
    xor a
    jr nz, jr_09c_56e7

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
    rst $38
    rst $38
    rst $38
    rst $38
    rlca

jr_09c_571d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38

Call_09c_5730:
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec d
    rst $38
    ld d, $ff
    scf
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
    cp $f1
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld a, [$ff05]
    nop
    ld a, [$ff05]
    nop
    ei
    inc b
    or $09
    ld [$e415], a
    dec de
    db $fc
    inc bc
    rst $10
    jr z, jr_09c_571d

    ld d, l
    ld a, c
    add [hl]
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $e3
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
    and l
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
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
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
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
    cp a
    rst $38
    cp a
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
    ldh a, [rIE]
    xor b
    ld d, a
    ld d, h
    xor e
    ld a, [$d505]
    ld a, [hl+]
    xor b
    ld d, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub h
    ld l, e
    nop
    rst $38
    ld sp, hl
    rlca
    or $0f
    jp c, $e83f

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0a
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0a
    ld hl, sp-$01
    ldh a, [$fc]
    ldh a, [$fd]
    ldh a, [$fe]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add c
    cp $80
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
    nop
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
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
    xor d
    rst $38
    ld d, h
    rst $38
    ld [$45ff], sp
    rst $38
    ld l, $ff
    ld [hl], l
    rst $38
    or d
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    nop
    nop
    call nc, $e000
    nop
    add b
    nop
    sub b
    nop
    stop
    or b
    nop
    ldh [rP1], a
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    and b
    nop
    jr nc, jr_09c_595a

jr_09c_595a:
    or b
    nop
    jr nz, jr_09c_595e

jr_09c_595e:
    add b
    nop
    stop
    sub b
    nop
    sub b
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    and b
    nop
    or c
    nop
    xor c
    nop
    sbc c
    nop
    ld hl, sp+$00
    ld a, [$ee00]
    nop
    and $00
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $f4
    nop
    db $f4
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    call nz, $d000
    nop
    ld sp, hl
    nop
    ld a, [$fb00]
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ld hl, sp+$00
    db $fc
    nop
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
    db $fc
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $d3
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    jr z, @+$01

    dec b
    rst $38
    nop
    rst $38
    dec d
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    adc [hl]
    rst $38
    ld e, h
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld b, a
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    inc b
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0aff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    and b
    nop
    and b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_09c_5a5a

jr_09c_5a5a:
    jr nz, jr_09c_5a5c

jr_09c_5a5c:
    ld l, b
    nop
    ld [hl], b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld l, b
    nop
    add sp, $00
    add sp, $00
    cp b
    nop
    cp b

jr_09c_5a6d:
    nop
    ld a, [de]
    nop
    ld c, d
    nop
    ld d, e
    nop
    ld d, e
    nop
    ld d, e
    nop
    ld b, c
    nop
    ld b, l
    nop
    dec d
    nop
    ld d, $00
    ld d, $00
    ld [de], a
    nop
    or d
    nop
    or d
    nop
    or c
    nop
    pop af
    nop
    push af
    nop
    or $00
    or $00
    or $00
    or $00
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    adc a
    ld [hl], b
    adc a

Jump_09c_5aa5:
    ld [hl], b
    add a
    ld a, b
    rst $00
    jr c, jr_09c_5a6d

    dec a
    nop
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    ld l, a
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, b
    rst $38
    and a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    xor b
    rst $38
    inc d
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    xor d
    rst $38
    ld d, b
    rst $38
    add d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld de, $2aff
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_09c_5b0e

jr_09c_5b0e:
    jr nz, jr_09c_5b10

jr_09c_5b10:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09c_5b18

jr_09c_5b18:
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    jr nz, jr_09c_5b20

jr_09c_5b20:
    stop
    ld c, b
    nop
    ret nz

    nop
    ret nc

    nop
    ret nc

    nop
    ld d, b
    nop
    nop
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
    ld b, b
    nop
    ld l, b
    nop
    ld e, b
    nop
    sbc h
    nop
    cp l
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIF], a
    ldh a, [rSC]
    db $fd
    rst $38
    rst $38
    call z, Call_09c_50ff
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    and d
    rst $38
    ld c, a
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
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $10
    rst $38
    xor d
    rst $38
    ld bc, $a8ff
    rst $38
    ld d, h
    rst $38
    ld [$40ff], sp
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    cp a
    nop
    cpl
    nop
    cp a
    nop
    ld e, e
    nop
    rla
    nop
    add a
    nop
    rlca
    nop
    ld b, l
    nop
    ld e, c
    nop
    inc de
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    add hl, de
    nop
    inc bc
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    rrca
    nop
    cp a
    nop
    cpl
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    di
    inc c
    or b
    ld c, a
    rst $38
    rst $38
    add hl, sp
    rst $38
    adc a
    rst $38
    dec hl
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, l
    rst $38
    ld a, [c]
    rst $38
    call nc, $faff
    rst $38
    push af
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38

jr_09c_5c1c:
    ld a, a
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$19
    jr jr_09c_5c1c

    inc e
    db $e3
    inc e
    db $e3
    inc e
    pop hl
    ld e, $e1
    ld e, $e0
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh a, [$1f]
    ld [hl], b
    rra
    ld [hl], b
    rra
    ld [hl], b
    rra
    ld [hl], b
    rra
    ld [hl], b
    rra
    jr c, jr_09c_5c8b

    jr nc, jr_09c_5c8d

    jr nc, @+$21

    jr nc, @+$21

    jr c, @+$21

    jr c, @+$21

    inc a
    rra
    jr c, @+$21

    jr @+$21

    inc a
    rra
    ld e, b
    rra
    ld e, b
    rra
    jr c, @+$21

    inc a
    rra
    inc a
    rra
    inc e
    rra
    inc a

jr_09c_5c8b:
    rra
    inc a

jr_09c_5c8d:
    rra
    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr @+$21

    jr jr_09c_5cb9

    jr jr_09c_5cbb

    jr jr_09c_5cbd

    jr c, jr_09c_5cbf

    jr c, jr_09c_5cc1

    jr nc, jr_09c_5cc3

    jr nc, jr_09c_5cc5

    jr nc, @+$21

    jr nc, @+$21

    jr nc, @+$21

    jr nc, @+$21

    jr nc, jr_09c_5ccf

    jr nc, jr_09c_5cd1

    jr nc, jr_09c_5cd3

    jr nc, jr_09c_5cd5

    jr nc, @+$21

    ld [hl], b

jr_09c_5cb9:
    rra
    ld [hl], b

jr_09c_5cbb:
    rra
    ld [hl], b

jr_09c_5cbd:
    rra
    ld [hl], b

jr_09c_5cbf:
    rra
    ld [hl], b

jr_09c_5cc1:
    rra
    ld [hl], b

jr_09c_5cc3:
    rra
    ld [hl], b

jr_09c_5cc5:
    rra
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    and b

jr_09c_5ccf:
    rra
    and b

jr_09c_5cd1:
    rra
    and b

jr_09c_5cd3:
    rra
    and b

jr_09c_5cd5:
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ret nc

    ccf
    sbc b
    ld a, a
    sbc b
    ld a, a
    dec e
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    cp $ff
    push af
    rst $38
    ld [$55ff], a
    rst $38
    xor d
    rst $38
    ld c, h
    rst $38
    and d
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld h, h
    rst $38
    adc h
    rst $38
    pop de
    rst $38
    db $fc
    rst $38
    push hl
    rst $38
    ld e, $ff

jr_09c_5d10:
    dec d
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    and b
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld b, e
    rst $38
    xor d
    rst $38
    ld bc, $2aff
    rst $38
    dec e
    rst $38
    nop
    rst $38
    cp $f9
    cp $81
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
    cp $00
    ld a, h
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    jr nz, jr_09c_5d10

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    ld bc, $01fc
    cp $01
    cp $01
    cp $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc c
    ld sp, hl
    ld c, $f8
    rrca
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $00ff
    cp a
    ld b, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    add a
    ld a, b
    add e
    ld a, h
    ld a, [hl]
    push hl
    ld a, a
    jp nz, $c17f

    ld a, a
    ret nc

    ld a, a
    ret nc

    ld a, a
    jp nc, $d27f

    ld a, a
    jp nc, $d27f

    ld a, a
    jp nc, $d27f

    ld a, a
    jp nz, $c07f

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

    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    db $fc
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    call z, $feff
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    add [hl]
    rst $38
    jr nz, @+$01

    add b
    rst $38
    inc b
    rst $38
    jr nc, @+$01

    ld b, $ff
    add h
    rst $38
    jp c, $84ff

    rst $38
    ld e, b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld b, d
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    add hl, bc
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    db $10
    rra
    jr jr_09c_5e55

    jr jr_09c_5e57

    inc c
    rrca
    ld c, $0f
    rrca
    rlca
    rra
    rlca
    ccf
    rlca
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    ld a, a
    add a
    ld a, a

jr_09c_5e55:
    adc a
    ld a, a

jr_09c_5e57:
    sbc a
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$81], a
    ldh [$9f], a
    cp $9f
    cp $fe
    rst $38
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, [$ff00]
    nop
    cp $00
    rst $38
    nop
    add b
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    inc e
    rst $38
    ld b, b
    rst $38
    call nc, Call_000_05ff
    cp $e1
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    dec b
    rst $38
    jr c, @+$01

    ld [bc], a
    rst $38
    inc c
    rst $38
    ld [hl+], a
    rst $38
    ld bc, $55ff
    rst $38
    xor h
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    rst $38
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
    db $fc
    nop
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
    rst $38
    rst $38
    add b
    rst $38
    cp a
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    cp $be
    cp $a0
    rst $38
    cp a
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    cp a
    rst $38
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld d, a
    nop
    add d
    nop
    stop
    xor d
    nop
    rst $38
    nop
    nop
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    rra
    ldh [rTAC], a
    ld hl, sp+$15
    ld [$54ab], a
    ld d, a
    xor b
    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    ld b, l
    cp d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    adc b
    rst $38
    or c
    rst $38
    ld a, [bc]
    rst $38
    ld d, h
    rst $38
    xor c
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$03]
    ld hl, sp+$01
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp-$04
    ld hl, sp-$02
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
    db $fc
    rst $38
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
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $28
    xor a
    rst $28
    and c
    rst $38
    cp a
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    rst $38
    rst $38
    and b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    ld e, a
    ld [$00ff], sp
    rst $38
    inc bc
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ldh a, [$1f]
    ld d, l
    xor e
    xor b
    ld d, a
    sub $2b
    ld [$f615], a
    dec bc
    ld a, [$dd05]
    ld [hl+], a
    xor d
    ld d, l

jr_09c_6090:
    ld d, b
    xor a
    dec d
    rst $38
    inc a
    rst $38
    ld bc, $98ff
    rst $38

jr_09c_609a:
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    add b

jr_09c_60a1:
    rst $38

jr_09c_60a2:
    nop
    rst $38
    ld [hl], b
    rst $38
    inc bc
    rst $38

jr_09c_60a8:
    ld h, b
    rst $38

jr_09c_60aa:
    ld [bc], a
    rst $38
    ld [$58ff], sp
    rst $38
    reti


    ld h, $d7
    jr z, jr_09c_6090

    inc h
    rst $18
    jr nz, @-$1f

    jr nz, @-$21

    ld [hl+], a
    rst $18
    jr nz, jr_09c_609a

    inc h
    rst $10
    jr z, jr_09c_60a1

    ld hl, $24db
    rst $18
    jr nz, jr_09c_60a8

    jr nz, jr_09c_60a2

    jr z, jr_09c_60aa

    ld [hl+], a
    db $dd
    ld [hl+], a
    ld e, a
    jr nz, jr_09c_60ee

    inc h
    ld a, [bc]
    dec [hl]
    dec c
    ld [hl-], a
    dec c
    ld [hl-], a
    ld c, $31
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    adc a
    db $10
    rst $08
    db $10
    rst $28
    db $10
    rst $28
    db $10

jr_09c_60ee:
    db $ec
    inc de
    db $ed
    ld [de], a
    rst $28
    db $10
    rst $28
    db $10
    xor $11
    xor $91
    db $ec
    db $d3
    db $ed
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $10
    ld c, $11
    ld c, $11
    ld c, $11
    rrca
    db $10

jr_09c_6112:
    inc c
    inc de
    inc c
    inc de
    inc c
    inc de
    inc c
    inc de
    dec c
    ld [de], a
    rrca
    db $10
    dec c
    ld [de], a
    add hl, bc
    ld d, $0d
    ld [de], a
    rrca
    db $10
    dec c
    ld [de], a
    dec c
    ld [de], a
    inc c
    inc de
    dec c
    ld [de], a
    dec b
    ld a, [de]
    jr jr_09c_6112

    ret c

    ldh [$58], a
    ldh [$59], a
    ldh [$59], a
    ldh [$59], a
    ldh [$59], a
    ldh [$59], a
    ldh [$58], a
    ldh [$5c], a
    ldh [$5c], a
    ldh [$5c], a
    ldh [$5c], a
    ldh [$5c], a
    ldh [$5c], a
    ldh [$5c], a
    ldh [$5d], a
    ldh [$5d], a
    ldh [$5d], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh a, [$5f]
    ldh a, [$f0]
    rst $18
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $c7ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    db $10
    rst $28
    add b
    ld a, a
    nop
    rst $38

jr_09c_618e:
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $87ff
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld a, [de]
    rst $38

jr_09c_61aa:
    pop bc
    rst $38
    dec b
    rst $38
    nop
    rst $38
    rst $38
    ccf
    ld a, a
    cp a
    rst $38
    ccf
    ld a, a
    cp [hl]
    rst $38
    ld a, $7f
    cp [hl]
    cp a
    ld a, [hl]
    rst $38
    ld e, $bf
    ld e, h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    ld a, a
    sbc b
    cp a
    ld e, b
    rst $38
    jr jr_09c_618e

    ld b, b
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09c_61e8:
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
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
    ld a, a
    add b
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_09c_61e8

    jr nz, jr_09c_61aa

    ld h, b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    ccf
    ret nz

    cp a
    ld b, b
    rra
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [$2f]
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    daa
    ret c

    rlca
    ld hl, sp+$47
    cp b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    adc a
    ld [hl], b
    rst $38
    nop
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    sub b
    daa
    ret c

    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add e
    db $fc
    pop bc
    cp $e1
    cp $e1
    cp $f0
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38

jr_09c_627e:
    rrca
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

jr_09c_6290:
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rlca
    rst $38
    and c
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $20
    jr jr_09c_6290

    jr jr_09c_627e

    inc l
    sbc a
    ld h, b
    ei
    inc b
    ld l, e
    sub h
    ld c, d
    or l
    adc $31
    adc $31
    rst $08
    jr nc, @+$01

    nop
    rst $30
    ld [$00ff], sp
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    ld c, b
    cp a
    ld b, b
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rst $38
    nop
    sbc [hl]
    ld h, c
    cp d
    ld b, l
    cp e
    ld b, h
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
    or a
    ld c, b
    rst $30
    ld [$0df2], sp
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc d
    db $e3
    inc d
    db $e3
    inc d
    pop bc
    ld [hl], $c1
    ld [hl-], a
    ldh [rNR13], a
    ldh [rNR13], a
    ld [c], a
    ld de, $10e3
    jp nz, $c031

    inc sp
    pop bc
    inc sp
    jr nz, @+$59

    nop
    scf
    add h
    scf
    add h
    rra
    call z, $8e1f
    ld c, a
    ld b, $c9
    ld [$04e7], sp
    rst $28
    nop
    rst $28
    ld bc, $04ef
    rst $38
    add h
    ld a, l
    add c
    ld a, e
    jp nz, $4037

    and b
    ld d, d
    and b
    ld c, l
    ret nz

    rst $38
    rst $38
    ccf
    dec bc
    db $fd
    add b
    ld a, [$d1c4]
    xor $f9
    rst $28
    pop af
    rst $38
    ld sp, hl
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    sbc $21
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, @-$3f

    ld b, b
    rst $38

jr_09c_638b:
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    sbc a
    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$bf], a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $08
    jr nc, jr_09c_641e

    sub b

jr_09c_63b0:
    rst $38
    nop
    rst $18
    jr nz, jr_09c_63b0

    inc b
    xor e
    ld d, h
    rst $28
    db $10
    rst $08
    jr nc, jr_09c_638b

    ld sp, $629d
    rst $38
    nop
    or e
    ld c, h
    push de
    ld a, [hl+]
    ld h, [hl]
    sbc c
    cp d
    ld b, l
    xor h
    ld d, e
    cp a
    ld b, b
    cp $01
    rst $28
    db $10
    add sp, $17
    ld hl, sp+$07
    ld sp, hl
    ld b, $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    add sp, -$15
    call c, $bcdb
    sbc a
    ld a, h
    dec a
    cp $3d
    cp $3f
    cp $3e
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rra
    rra
    sbc a

jr_09c_641e:
    ld e, a
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    cp a
    rst $38
    daa
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    ld l, e
    rst $38
    ld c, e
    rst $38
    ld e, h
    rst $38
    sbc $ff
    sbc [hl]
    rst $38
    pop de
    cp $f0
    rst $38
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38

jr_09c_644a:
    cp $ff
    cp $ff
    rra
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
    ld [$e915], a
    ld d, $ff
    nop
    ld e, a
    and b
    ei
    inc b
    rst $38
    nop
    rst $18
    jr nz, jr_09c_644a

    ld [hl+], a
    sbc a
    ld h, b
    sub a
    ld l, b
    ld a, e
    add h
    ld e, e
    and h
    cp a
    ld b, b
    cp l
    ld b, d
    cp l
    ld b, d
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
    ld a, e
    add h
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    ld a, [$f105]
    ld c, $f3
    inc c
    rst $30
    ld [$01fe], sp
    rst $30
    ld [$02fd], sp
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a

jr_09c_64a6:
    db $fd
    ld [bc], a

jr_09c_64a8:
    db $fd
    ld [bc], a

jr_09c_64aa:
    rst $38
    nop
    cp $01
    cp $01
    ld a, h
    add e
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, l
    add d
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop

jr_09c_64cc:
    ld a, a
    add b
    rrca
    ldh a, [$2f]
    ret nc

    cpl
    ret nc

    rst $08
    jr nc, jr_09c_64a6

    jr nc, jr_09c_64a8

    jr nc, jr_09c_64aa

    jr nc, jr_09c_64cc

    db $10
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
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$0b
    ld a, [$fcfb]
    ei
    db $fc
    pop af
    cp $f7
    ld hl, sp-$09
    ld hl, sp-$1b
    ld a, [$f3cc]
    jp z, $caf5

    push af
    add sp, -$09
    add sp, -$09
    ld [c], a
    db $fd
    jp z, $b2f5

    call $cd32
    adc b
    ld [hl], a
    or b
    ld c, a
    ld b, b
    cp a
    nop
    rst $38
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
    rst $38
    xor [hl]
    ld d, c
    and [hl]
    ld e, c
    or $09
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp $01
    cp d
    ld b, l
    cp d
    ld b, l
    cp [hl]
    ld b, c
    cp h
    ld b, e
    cp $01

jr_09c_6546:
    cp $01
    cp $01
    xor $11
    ld a, [$da05]
    dec h
    cp d
    ld b, l
    ld a, d
    add l
    ei
    inc b
    db $db
    inc h
    ld a, [$ba05]
    ld b, l
    ld b, $f9
    sub [hl]
    ld l, c
    sub [hl]
    ld l, c
    or [hl]
    ld c, c
    and a
    ld e, b
    ld c, [hl]
    or c
    ld a, [hl]
    add c
    rst $18
    jr nz, @+$01

    nop
    or a
    ld c, b
    rst $30
    ld [$28d7], sp
    rst $00
    jr c, jr_09c_6546

    jr nc, @+$59

    xor b
    ld d, a
    xor b
    sub a
    ld l, b
    sbc e
    ld h, h
    db $fd
    ld [bc], a
    push de
    ld a, [hl+]
    dec [hl]
    jp z, $da25

    ld h, l
    sbc d
    ld l, l
    sub d
    ld l, l
    sub d
    jp hl


    ld d, $ef
    db $10
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    or c
    ld c, [hl]
    rst $38
    nop
    ld sp, hl
    ld b, $ff
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $28
    db $10
    rst $28
    db $10
    ei
    inc b
    and $19
    db $e3
    inc e
    cp $01
    or $09
    cp h
    ld b, e
    rst $38
    nop
    or l
    ld c, d
    push af
    ld a, [bc]

jr_09c_65b8:
    rst $38
    nop
    rst $38

jr_09c_65bb:
    nop
    rst $38
    nop
    rst $38

jr_09c_65bf:
    nop
    rst $38

jr_09c_65c1:
    nop
    rst $38

jr_09c_65c3:
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
    rst $20
    jr jr_09c_65b8

    jr jr_09c_65b8

    ld a, [de]
    call $8832
    ld [hl], a
    xor b
    ld d, a
    jr nz, jr_09c_65bb

    nop
    rst $38
    db $10
    rst $28
    jr nz, jr_09c_65c1

    jr nz, jr_09c_65c3

    add b
    ld a, a
    jr z, jr_09c_65bf

    ld [$00f7], sp
    rst $38
    ld b, b
    cp a
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
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    nop
    dec c
    ld c, $03
    inc bc
    rrca
    db $10
    rlca
    rlca
    nop
    ld de, $1312
    inc de
    inc de
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_09c_6646

    ld a, [de]
    dec de
    rlca
    nop
    inc e
    inc de
    inc de
    dec e
    ld e, $13
    rra
    jr nz, jr_09c_665b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_09c_6656

    add hl, hl
    ld a, [hl+]
    dec hl

jr_09c_6646:
    inc de
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09c_667e

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    dec [hl]
    inc de
    ld [hl], $37
    inc de

jr_09c_6656:
    jr c, jr_09c_6658

jr_09c_6658:
    add hl, sp
    ld a, [hl-]
    dec sp

jr_09c_665b:
    nop
    inc a
    rlca
    dec a
    ld a, $00
    ccf
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
    nop
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

jr_09c_667e:
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
    ld l, d
    ld l, e
    ld l, h
    rlca
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
    add e
    add h
    add l
    inc bc
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
    inc bc
    sub b
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    sbc a
    and b
    and c
    and d
    and e
    inc de
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    inc bc
    inc bc
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
    inc bc
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
    inc de
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
    ld [$ebac], a
    db $ec
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0003
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0001
    dec b
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld b, $00
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld b, $06
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
    ld b, $06
    nop
    nop
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_09c_6885:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_09c_688f:
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
    rra
    ldh [$3f], a
    ret nz

    daa
    ret c

    dec de
    db $e4
    ld b, c
    cp [hl]
    jr nz, jr_09c_6885

    jr jr_09c_688f

    inc b
    ei
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
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, d
    rst $38
    ld l, b
    rst $38
    db $f4
    rst $38
    ld a, l
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
    ei
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
    rst $38
    rst $38
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
    db $fc
    nop
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    call z, $e000
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld d, a
    xor b
    rra
    ldh [$03], a
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    jp nz, $71ff

    rst $38
    or b
    rst $38
    xor d
    rst $38
    push af
    rst $38
    cp $ff
    cp $ff
    push af
    rst $38
    cp $ff
    ei
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $00
    and $00
    jp nz, $c000

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
    nop
    nop
    nop
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
    jr nz, jr_09c_69c4

jr_09c_69c4:
    add b
    nop
    ret nc

    nop
    ld [c], a
    nop
    pop af
    nop
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
    nop
    nop
    ld bc, $0300
    nop
    rrca
    ldh [$1f], a
    ccf
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
    ei
    ld a, a
    ei
    ld a, a
    db $fd
    ccf
    db $fd
    ccf
    cp $1f
    cp $1f
    rst $38
    rrca
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    add b
    rst $38
    ld c, b
    rst $38
    or b
    rst $38
    ld b, h
    rst $38
    and $ff
    or e
    rst $38
    reti


    rst $38
    xor h
    rst $38
    call nc, $deff
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    or $00
    ld a, [c]
    nop
    sub b
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
    ld bc, $0701
    rlca
    rra
    rra
    ccf
    ccf
    ld a, $3e
    ld a, $3e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    ld bc, $0300
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, h
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    ld a, a
    ei
    ld a, a
    ei
    ccf
    db $fd
    ccf
    db $fd
    rra
    cp $1f
    cp $0f
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    or b
    rst $38
    ret z

    rst $38
    ld l, b
    rst $38
    ld [hl], h
    rst $38
    ld [hl], d
    rst $38
    or [hl]
    rst $38
    rst $18
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    daa
    nop
    jr nz, jr_09c_6b06

jr_09c_6b06:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    ld hl, sp-$07
    ldh [$e3], a
    add b
    adc a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    inc c
    nop
    nop
    nop
    ld bc, $0600
    add b
    adc b
    or b
    or b
    ret nz

    ret nz

    ld bc, $0300
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    db $10
    rst $38
    jr nc, jr_09c_6b90

    ret nz

    ld a, a
    add b
    rst $38

jr_09c_6b55:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    jr nz, jr_09c_6b55

    rra
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc

jr_09c_6b90:
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    ld a, a
    rst $30
    ld a, a
    ei
    ccf
    ei
    ccf
    db $fd
    rra
    db $fd
    rrca
    cp $0f
    cp $07
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $feff
    and c
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    db $e4
    rst $38
    or $ff
    cp a
    rst $38
    rst $38
    rst $38
    nop
    scf
    nop
    rlca
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$08
    ldh [$e2], a
    ret nz

    adc $00
    ld e, $00
    ld a, [hl]
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rrca
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
    jr nz, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $18
    and b
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    cp l
    cp $db
    db $fc
    rst $10
    ld hl, sp-$11
    ld hl, sp-$11
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ret nz

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
    nop
    ccf
    nop
    ld a, a
    nop
    rra
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    nop
    jr nz, jr_09c_6c99

jr_09c_6c99:
    jr nz, jr_09c_6c9b

jr_09c_6c9b:
    jr nz, jr_09c_6c9d

jr_09c_6c9d:
    jr nz, jr_09c_6c9f

jr_09c_6c9f:
    jr nz, jr_09c_6ca1

jr_09c_6ca1:
    jr nz, jr_09c_6ca3

jr_09c_6ca3:
    jr nz, jr_09c_6ca5

jr_09c_6ca5:
    jr nz, jr_09c_6ca7

jr_09c_6ca7:
    jr nz, jr_09c_6ca9

jr_09c_6ca9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_09c_6cce:
    rst $38
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    rst $18
    ld hl, $20df
    rst $18
    jr nz, @-$1f

    jr nz, jr_09c_6cce

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$09f7], sp
    ei
    dec b
    ei
    dec b
    ei
    dec b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ef
    di
    nop
    ei
    nop
    ei
    nop
    di
    nop
    di
    nop
    rst $30
    nop
    rst $20
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    db $fc
    rst $30
    ld hl, sp-$11
    rst $18
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    cp $00
    db $fd
    nop
    inc b
    ei
    nop
    rst $38
    dec b
    ld a, [$fd02]
    ld bc, $03fe
    db $fc
    dec b
    ld a, [$fc03]
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    cpl
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    cpl
    nop
    inc hl
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    dec bc
    nop
    inc hl
    nop
    inc de
    ld bc, $0003
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
    db $fd
    ld [bc], a
    ld hl, sp+$0f
    ld sp, hl
    ld e, $fd
    ld a, $fd
    ld a, [hl]
    db $fd
    cp $fd
    cp $fd
    cp $f9
    cp $f9
    cp $fb
    db $fc
    di
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$01
    ldh [rIE], a
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
    ccf
    nop
    sbc a
    nop
    rst $08
    nop
    rst $20
    nop
    rst $30
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld hl, $21ff
    rst $38
    ld [de], a
    rst $38
    dec d
    cp $1b
    cp $17
    db $fc
    scf
    ld hl, sp+$6f
    ldh a, [$df]
    ldh a, [$df]
    ldh [$bf], a
    ld a, a
    ret nz

    rst $38
    add b
    cp $80
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
    nop
    push af
    nop
    ld de, $09ee
    or $15
    ld [$f50a], a
    ld b, l
    cp d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$dd22], a
    rra
    ldh [$bf], a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    ld b, a
    cp a
    ld b, h
    cp a
    add c
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    sub c
    ld l, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    rst $08
    jr nc, jr_09c_6ea4

    ld hl, sp+$07
    ld hl, sp-$08
    rlca
    ld hl, sp+$07

jr_09c_6ea4:
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fd
    inc hl
    db $fd
    inc hl
    cp $23
    db $fc
    daa
    db $fc
    cpl
    ld hl, sp+$2f
    ldh a, [$5f]
    ldh a, [$5f]
    ldh [$bf], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fd
    dec b
    ld a, [$e01f]
    rra
    ldh [$7f], a
    add b
    ld e, a
    and b
    ld [hl], $c8
    ld e, a
    and b
    rrca
    ldh a, [rHDMA5]
    xor d
    ld a, [bc]
    push af
    ld e, l
    and d
    xor d
    ld d, l
    ld a, l
    add d
    cp a
    ld b, b
    ld a, a
    add b
    rst $30
    nop
    db $fd
    nop

jr_09c_6f3a:
    rst $38
    nop
    ld e, a
    and b
    rrca
    ldh a, [$57]
    xor b
    xor e
    ld d, h
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    rst $18
    jr nz, jr_09c_6f3a

    db $10
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
    rst $30
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rlca
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
    rra
    rst $38
    rra
    rst $38
    rrca
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
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    inc a
    rst $38
    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_09c_6fee:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    ld a, [bc]
    push af
    dec d
    ld [$dd22], a
    inc d
    db $eb
    ld [bc], a
    db $fd
    pop de
    ld l, $ab
    ld d, h
    ld d, l
    xor d
    cp d
    ld b, l
    rst $20
    jr jr_09c_6fee

    jr nz, @+$01

    nop
    xor $00
    rst $38
    nop
    or $00
    rst $38
    nop
    call Call_09c_5730
    xor b
    xor e
    ld d, h
    push af
    ld a, [bc]
    rst $38
    nop
    ld a, [hl]
    nop
    rst $30
    nop
    inc bc
    nop
    rlca
    nop
    jp nz, $9100

    nop
    rst $20
    nop
    rst $38
    nop
    ld a, h
    add b
    rst $30
    nop
    rst $08
    nop
    ld c, b
    nop
    db $fc
    nop
    and b
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fc]
    ldh a, [$fd]
    ldh a, [$f8]
    ldh a, [$f9]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f4]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$fc]
    ldh a, [$f9]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$ef]
    ld [$f4f5], a
    db $eb
    add sp, -$09
    db $f4
    db $eb
    add sp, -$09
    ldh a, [$ef]
    ldh [rIE], a
    ldh a, [$ef]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
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
    ld [$55f7], sp
    xor d
    xor d
    ld d, l
    ld b, l
    cp d
    xor d
    ld d, l
    ld a, a
    add b
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, [$7c00]
    add b
    ld l, a
    add b
    cp $00
    ld e, a
    and b
    xor a
    ld d, b
    push af
    ld a, [bc]
    cp $01
    ccf
    nop
    inc bc
    nop
    sbc h
    nop
    cp $00
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    ld a, a
    nop
    rst $38
    nop
    dec sp
    nop
    ei
    nop
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    dec e
    nop
    di
    nop
    cp a
    nop
    rlc b
    dec bc
    nop
    dec e
    nop
    rst $38
    nop
    sub $00
    rst $30
    nop
    rst $08
    nop
    add a
    nop
    daa
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
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
    stop
    ld de, $1000
    nop
    ld de, $1700
    nop
    sub e
    nop
    rst $38
    nop
    ld [hl], a
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
    ret nz

    rst $38
    db $fc
    ld a, a
    rst $38
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
    cp $00
    cp $00
    rst $38
    inc b
    ei
    xor d
    ld d, l
    ld b, l
    cp d
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    push af
    ld a, [bc]
    db $ec
    inc de
    rst $38
    nop
    db $ed
    nop
    dec sp
    nop
    jp z, Jump_000_0d00

    nop
    rst $38
    nop
    cp e
    nop
    rst $28
    nop
    rst $38
    nop
    ei
    inc b
    ld a, l
    add d
    ld [$7515], a
    ld a, [bc]
    ld a, $01
    rst $18
    nop
    and $00
    ret nz

    nop
    cp [hl]
    ld b, b
    sub a
    ld l, b
    db $eb
    inc d
    push af
    ld a, [bc]
    cp d
    ld b, l
    ld e, l
    and d
    ld [$fd15], a
    ld [bc], a
    cp $01
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
    db $fc
    nop
    db $ec
    nop
    xor $00
    cp $00
    ld a, [hl]
    nop
    cp $00
    ld a, [hl]
    nop
    rst $38
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
    ld bc, $0300
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    rlca
    ld bc, $0207
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    add hl, bc
    rra
    add hl, bc
    rra
    ret


    rst $18
    add sp, -$01
    add sp, -$01
    rra
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
    nop
    rst $38
    nop
    db $fc
    nop
    and $00
    adc h
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    rst $00
    nop
    pop af
    nop
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
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    add sp, $17
    db $fd
    ld [bc], a
    ld e, h
    inc bc
    ccf
    nop
    xor $01
    ld [hl], a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $28
    db $10
    rst $30
    ld [$14eb], sp
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    push de
    ld a, [hl+]
    ld a, d
    dec b
    cp l
    ld [bc], a
    adc $01
    dec e
    ld [bc], a
    rst $38
    nop
    rst $30
    nop
    cp $01
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld e, a
    and b
    ld e, $e1
    adc l
    ld [hl], d
    xor d
    ld d, l
    ld h, l
    sbc d
    ld [$5515], a
    xor d
    xor d
    ld d, l
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    adc a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, b
    rst $38
    ld b, a
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld c, a
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
    add b
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    ld bc, $81ff
    ld a, a
    ld sp, hl
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
    rst $00
    nop
    ld bc, $0000
    nop
    ld [$0e00], sp
    nop
    ld sp, $6100
    nop
    ld h, b
    nop
    add c
    nop
    inc bc
    nop
    cp h
    nop
    add b
    nop
    ldh a, [rP1]
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
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    sub b
    ld l, a
    and b
    ld e, a
    ret nc

    cpl
    xor b
    ld d, a
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, b
    xor a
    and d
    ld e, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    ld d, h
    xor e
    and d
    ld e, l
    ld d, h
    xor e
    xor d
    ld d, l
    dec d
    ld [$56a9], a
    ld d, c
    xor [hl]
    add hl, hl
    sub $53
    xor h
    xor e
    ld d, h
    ld d, e
    xor h
    and e
    ld e, h
    ld d, a
    xor b
    daa
    ret c

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    sub c
    rst $38
    ld [hl], c
    cp a
    inc de
    cp e
    ld [de], a
    cp e
    or d
    ei
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    ld a, b
    rst $38
    rla
    rst $38
    db $10
    rst $38
    and b
    ld a, a
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
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    sbc a
    nop
    rra
    nop
    rrca
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $03
    cp $02
    rst $38
    inc b
    rst $38
    rlca
    db $fc
    rlca
    db $fc
    ld b, $fd
    inc c
    ei
    add hl, bc
    cp $0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3e], a
    pop bc
    add hl, sp
    add $34
    sra e

jr_09c_745d:
    call nc, $b847
    ld e, [hl]
    and c
    ld a, [hl]
    add c
    db $fc
    inc bc
    ld hl, sp+$07
    pop af
    ld c, $f0
    rrca
    ld [c], a
    dec e
    call nc, $c02b
    ccf
    dec b
    ld a, [$fd02]
    add h
    ld a, e
    ret z

    scf
    sub b
    ld l, a
    jr nz, jr_09c_745d

    ld b, c
    cp [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld bc, $0100
    nop
    pop bc
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
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    add b
    rst $38
    ld a, c
    rst $38
    rlca
    rst $38
    ld bc, $f1ff
    rst $38
    ld c, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38

jr_09c_74e3:
    sub b
    rst $38
    ld [hl], c
    rst $38
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    ld a, [$fe07]
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $07
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rra
    ld hl, sp+$1e
    ld hl, sp+$1e
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7d], a
    ld [c], a

jr_09c_751a:
    ld a, e
    call nz, $c07f
    rst $30
    ret z

    adc $f1
    adc l
    ld a, [c]
    rst $38
    add b
    cp $81
    cp $81
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $38
    nop
    or e
    ld c, h
    ld l, a
    sub b
    ld a, e
    add h
    rst $20
    jr jr_09c_751a

    jr nz, jr_09c_74e3

    ld e, c
    inc e
    db $e3
    ld a, l
    add d
    ei
    inc b
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    cp d
    ld b, l
    cp [hl]
    ld b, c
    ldh a, [rIF]
    add sp, $17
    cp b
    ld b, a
    pop af
    ld c, $80
    ld a, a
    ld h, b
    sbc a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    ld hl, $04de
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    inc b
    ei
    ld b, b
    cp a
    add e
    ld a, h
    ld [hl-], a
    call Call_000_39c6
    inc l
    db $d3
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    nop

jr_09c_7596:
    rst $38
    nop

jr_09c_7598:
    rst $38
    ld hl, sp-$01
    ld [$10ff], sp
    rst $38
    ld de, $11ff
    rst $38
    ld hl, $22ff
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    add h
    cp $89
    cp $89
    cp $09
    db $fc
    dec bc
    db $fc
    inc de
    db $fc
    inc de
    ld hl, sp+$17
    daa
    ld hl, sp+$27
    ld hl, sp+$2f
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [$5e]
    ldh [$5e], a
    ldh [$9e], a
    ldh [$bc], a
    ret nz

    cp h
    ret nz

    jr c, jr_09c_7596

    ld a, b
    add b
    ld [hl], b
    add b
    ld [hl], b

jr_09c_75db:
    add b
    ldh a, [rP1]
    ret nz

    nop
    ld a, e
    add b
    ld [hl], d
    add c
    db $f4
    inc bc
    and $01
    db $ed
    ld [bc], a
    rst $08
    nop
    xor $01
    sub d
    dec c
    cp l
    ld [bc], a
    dec a
    ld [bc], a
    ld a, e
    inc b
    push af
    ld a, [bc]
    ld h, a
    sbc b
    rst $38
    nop
    cp $01
    db $fc

jr_09c_75ff:
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    pop hl
    ld e, $d1
    ld l, $ca
    dec [hl]
    ld h, b
    sbc a
    jp $cf3c


    jr nc, jr_09c_7598

    ld a, b
    adc a
    ld [hl], b
    rra
    ldh [$36], a
    ret


    dec l
    jp nc, $cb34

    swap h
    rst $18
    jr nz, jr_09c_75db

jr_09c_7621:
    ld b, l
    db $f4
    dec bc
    ldh [$1f], a
    jr z, jr_09c_75ff

    pop de
    ld l, $d0
    cpl
    and b
    ld e, a
    ldh [$1f], a
    pop bc
    ld a, $a0
    ld e, a
    add d
    ld a, l
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_09c_7621

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    ld b, d
    cp l
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $4ffe
    or b
    ld l, a
    sub b
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
    rlca
    nop
    rrca
    nop

jr_09c_767e:
    rrca
    nop
    ld e, $01
    ld e, $01
    ld a, $01
    ld a, h
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    ld a, b
    add a
    nop
    rst $38
    rlca
    ld hl, sp-$32
    ldh a, [$4e]
    ldh a, [$8f]
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$3e], a
    ret nz

    ld a, $c0
    dec a
    ret nz

    ld a, h
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld [hl], h
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    rra
    ldh [$0e], a
    ldh a, [rNR32]
    ldh [$0d], a
    ldh a, [$29]
    ret nc

    dec de
    ldh [$33], a
    ret nz

    ld [hl], e
    add b
    ld h, e
    add b
    ld h, a
    add b
    ld b, a
    add b
    rst $08
    nop
    rst $08
    nop
    sbc a
    nop
    sbc a
    nop
    ccf
    nop
    ld a, $01
    ld a, a
    nop
    ld a, a
    nop
    cp $01
    cp $01
    or $09
    db $fd
    ld [bc], a
    cp h
    ld b, e
    ld a, h
    add e
    ld hl, sp+$07
    ldh a, [rIF]
    db $e4
    dec de
    pop hl
    ld e, $eb
    inc d
    db $e3
    inc e
    rst $20
    jr @-$37

    jr c, jr_09c_767e

    ld [hl], h
    add [hl]
    ld a, c
    dec c
    ld a, [c]
    rra
    ldh [$3f], a
    ret nz

    ld a, l
    add d
    scf
    ret z

    ld a, a
    add b
    cp l
    ld b, d
    ld a, [$7705]
    adc b
    call c, $f623
    add hl, bc
    db $ec
    inc de
    xor b
    ld d, a
    ret c

    daa
    cp b
    ld b, a
    ld a, [c]
    dec c
    ld h, d
    sbc l
    add h
    ld a, e
    adc b
    ld [hl], a
    nop
    rst $38
    ld [$10f7], sp
    rst $28
    nop
    rst $38
    ld bc, $80fe
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$15]
    ld [$f50a], a
    inc sp
    call z, $c837
    ld h, $d9
    ld c, a
    or b
    dec d
    ld [$d22d], a
    ei
    inc b
    ld a, [de]
    push hl
    ld [hl], $c9
    cpl
    ret nc

    ld l, h
    sub e
    sbc $21
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add l
    ld a, d
    dec b
    ld a, [$fc03]
    dec bc
    db $f4
    dec bc
    db $f4
    rlca
    ld hl, sp+$1f
    ldh [rNR22], a
    add sp, $1f
    ldh [$2e], a
    ret nc

    ld e, $e0
    sbc h
    ld h, b
    inc a
    ret nz

    inc a
    ret nz

jr_09c_7784:
    ld [hl], h
    adc b
    ld l, c
    sub b
    ld sp, hl
    nop
    db $d3
    jr nz, jr_09c_7784

    nop
    or a
    ld b, b
    ld h, l
    add d
    ld c, a
    add b
    rst $08
    nop
    sbc a
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    di
    inc c
    push af
    ld a, [bc]
    ld a, [c]
    dec c
    jp nc, $a02d

    ld e, a
    and b
    ld e, a
    ret nz

    ccf
    call nz, $a13b
    ld e, [hl]
    and c
    ld e, [hl]
    adc e
    ld [hl], h
    ld b, a
    cp b
    rlca
    ld hl, sp+$05
    ld a, [$f40b]
    adc a
    ld [hl], b
    rra
    ldh [rNR34], a
    pop hl
    ccf
    ret nz

    ld a, $c1
    ld [hl], h
    adc e
    ld l, b

jr_09c_77d3:
    sub a
    cp $01
    db $fd
    ld [bc], a
    db $db
    inc h
    rst $30
    ld [$51ae], sp
    ld e, [hl]
    and c
    db $ec
    inc de
    sbc h
    ld h, e
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38

jr_09c_77f8:
    inc b
    ei
    jr z, jr_09c_77d3

    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    sub d
    ld l, l
    ld [bc], a
    db $fd
    nop
    cp $00
    cp $00
    cp $01
    db $fc
    dec b
    ld hl, sp+$43
    cp b
    add [hl]
    ld a, c
    add h
    ld a, d
    ld c, $f0
    dec c
    ldh a, [rNR14]
    add sp, $19
    ldh [rNR23], a
    pop hl
    ld [hl-], a
    pop bc
    and a
    ld d, b
    dec sp
    call nz, $9c63
    ld d, a
    xor b
    ld c, a
    or b
    cp $00
    db $fc
    nop
    ld hl, sp+$04
    ld hl, sp+$00
    cp c
    ld b, b
    inc sp
    ret nz

    ld [hl], a
    add b
    ld sp, hl
    ld b, $cf
    jr nc, jr_09c_77f8

    ld b, h
    adc a
    ld [hl], b
    rst $38
    nop
    cp h
    ld b, e
    cp b
    ld b, a
    call c, $b023
    ld c, a
    db $fd
    ld [bc], a
    ldh a, [rIF]
    xor b
    ld d, a
    ld h, c
    sbc [hl]
    db $f4
    dec bc
    ld h, l
    sbc d

jr_09c_7856:
    add sp, $17
    add h
    ld a, e
    sub l
    ld l, d
    xor c
    ld d, [hl]
    and e
    ld e, h

jr_09c_7860:
    ld hl, sp+$00
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    nop
    pop hl
    nop
    push bc
    nop
    jp $c300


    nop
    add a
    nop
    adc a
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    scf
    ld [$003f], sp
    ld a, a
    nop
    ld [hl], a
    ld [$50af], sp
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop

jr_09c_7890:
    rst $38
    nop
    rst $30
    ld [$9867], sp
    rst $18
    jr nz, jr_09c_7856

    ld b, d
    ld l, e
    sub h
    rst $30
    ld [$2ad5], sp
    inc sp
    call z, $9867
    rst $30
    ld [$40bf], sp
    dec hl
    call nc, $d12e
    dec a
    jp nz, $c23d

    ld a, e
    add h

jr_09c_78b2:
    ld a, a
    add b

jr_09c_78b4:
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $08
    jr nc, jr_09c_7890

    jr nc, jr_09c_78b2

    db $10
    db $db
    inc h
    di
    inc c
    ld [hl], a
    adc b
    xor a
    ld d, b
    rst $28
    db $10
    ld c, a

jr_09c_78cf:
    or b
    ld c, a
    or b
    rst $08
    jr nc, jr_09c_7860

    ld [hl], h
    and e
    ld e, h
    ld d, a
    xor b
    ld c, [hl]
    or b
    inc h
    jp c, $dc22

    ld b, $f8
    ld c, $f0
    ld [$10f0], sp
    ldh [$50], a
    and b
    db $10
    ldh [rNR10], a
    ldh [$90], a
    ld h, b
    jr nz, jr_09c_78b2

    jr nz, jr_09c_78b4

    ld b, b
    add b
    ld c, b
    add b
    and b
    nop

jr_09c_78fa:
    add b
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
    ld b, b
    nop
    ret nz

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
    xor b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ret nz

    jr nz, jr_09c_791d

jr_09c_791d:
    ret nz

    ld b, b
    add b
    ret nz

    nop
    sub d
    nop
    add a
    nop
    daa
    nop
    rrca
    nop
    cpl
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rra
    ldh [$5f], a
    and b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, e
    add h
    ld h, e
    sbc h
    rlca
    ld hl, sp-$35
    inc [hl]
    rst $10
    jr z, jr_09c_78cf

    ld a, c
    inc c
    di
    adc b
    ld [hl], a
    dec d
    ld [$d629], a
    sub e
    ld l, h
    rlca
    ld hl, sp+$63
    sbc h
    rst $00
    jr c, jr_09c_78fa

    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $00
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_09c_7997

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09c_79a7

    ld [hl+], a
    inc hl
    inc h
    inc h
    inc h
    dec h
    ld h, $27
    jr z, jr_09c_79b9

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    inc l
    inc h
    inc h

jr_09c_7997:
    inc h
    inc h
    inc h
    inc h
    dec l
    ld l, $2f
    jr nc, jr_09c_79d1

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_09c_79a7:
    inc h
    inc h
    inc h
    inc h
    ld [hl], $37
    jr c, jr_09c_79e8

    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc h

jr_09c_79b9:
    inc h
    inc h
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
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
    ld b, h
    ld a, [hl+]

jr_09c_79d1:
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
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
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_09c_79e8:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, [hl+]
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
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, [hl+]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld bc, $7e00
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    ld a, [hl+]
    adc b
    adc c
    adc d
    adc e
    nop
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
    ld a, [hl+]
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    sbc d
    sbc e
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
    nop
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
    cp c
    cp d
    cp e
    cp h
    cp l
    ld a, [hl+]
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $24
    inc h
    inc h
    inc h
    rst $00
    ret z

    ret


    ld a, [hl+]
    jp z, Jump_000_2acb

    call z, $cecd
    rst $08
    inc h
    inc h
    inc h
    inc h
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
    or $24
    rst $30
    ld hl, sp-$07
    inc h
    inc h
    inc h
    inc h
    jp hl


    ld [hl+], a
    rst $20
    add sp, -$06
    ei
    inc h
    ei
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0105
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0507
    ld bc, $0601
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    dec b
    ld bc, $0606
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    dec b
    ld bc, $0606
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0606
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    ld bc, $0601
    ld b, $00
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0105
    ld bc, $0606
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    dec b
    ld bc, $0001
    ld b, $01
    ld bc, $2201
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0600
    ld b, $02
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0601
    ld b, $02
    ld [bc], a
    ld bc, $0001
    ld b, $02
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    ld bc, $0404
    inc bc
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    dec b
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    dec b
    ld bc, $0101
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
    inc b
    nop
    dec b
    dec b
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
    ld b, b
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    rst $38
    rla
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    ld b, h
    rst $38
    ld h, h
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    sub h
    rst $38
    call c, Call_000_1aff
    rst $38
    ld c, e
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl+]
    rst $38
    add hl, hl
    rst $38
    add hl, bc
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $93ff
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    sub d
    rst $38
    pop de
    rst $38
    pop de
    rst $38
    call nz, $c4ff
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld c, l
    rst $38
    ld c, c
    rst $38
    jr z, @+$01

    inc h
    rst $38
    inc b
    rst $38
    ld b, l
    rst $38
    dec b
    rst $38
    sub a
    rst $38
    add [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
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
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    cp $ff
    ccf
    rst $38
    ret nz

    rst $38
    inc b
    rst $38
    add b
    rst $38
    jr nc, @+$01

    add h
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    sub d
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld b, l
    rst $38
    ld c, b
    rst $38
    inc c
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    jr z, @+$01

    jr z, @+$01

    ld l, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld l, d
    rst $38
    ld l, b
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld b, c
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    and c
    rst $38
    xor c
    rst $38
    add c
    rst $38
    add c
    rst $38
    sub c
    rst $38
    ld de, $93ff
    rst $38
    add e
    rst $38
    add a
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $c3
    cp $cb
    cp $cb
    cp $c3
    cp $c3
    cp $4b
    cp $5b
    cp $7b
    cp $33
    cp $33
    cp $33
    db $fc
    inc sp
    db $fc
    inc hl
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    add $ff
    pop af
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld hl, sp-$01
    ld [$e0ff], sp
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    db $10
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
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $c1
    cp $c1
    cp $c3
    db $fc
    jp $d3fc


    db $ec
    rst $30
    ret z

    rst $30
    ret z

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $833f
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    ld b, l
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    cp $ff
    ei
    rst $38
    call nz, Call_09c_40ff
    rst $38
    add b
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
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
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
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
    nop
    rst $38
    nop
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
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc a
    jp $c33c


    inc a
    jp $c13e


    ld a, $c1
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
    ld [hl], b
    ld a, a
    pop hl
    rst $38
    jp $87ff


    rst $38
    add a
    rst $38
    ld c, $ff
    inc e
    rst $38
    ccf
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    and b
    rst $38
    sbc b
    rst $38
    ccf
    rst $38
    ld b, c
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f00
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [de], a

jr_09c_7f05:
    db $ed
    xor h
    ld d, e
    dec l
    jp nc, $c23d

    ld a, a
    add b
    ld a, a
    add b
    ld a, [c]
    dec c
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    ld sp, hl
    ld b, $f3
    inc c
    rst $10
    jr z, jr_09c_7f05

    ld hl, $22dd
    call c, $f123
    ld c, $f5
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $30
    ld [$0ff0], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fff1
    pop hl
    rst $38
    jp $87ff


    rst $38
    adc a
    rst $38
    ld c, $ff
    rra
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
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
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
    ldh [rP1], a
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
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jp z, $ca35

    dec [hl]
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add c
    rst $28
    db $10
    cp $01
    sbc $21
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, [c]
    dec c
    di
    inc c
    cp $01
    rst $30
    ld [$0df2], sp
    ld a, [$fa05]
    dec b
    rst $30
    ld [$03fc], sp
    rst $38
    nop
    add sp, $17
    call $7b32
    add h
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    nop
    ld a, [$fe05]
    ld bc, $01fe
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rst $20
    rst $38
    adc $ff
    adc $ff
    sbc h
    rst $38
    add hl, sp
    rst $38
    inc sp
    cp $7f
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$00
